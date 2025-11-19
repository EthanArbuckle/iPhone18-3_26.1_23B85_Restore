void AVE_PrepareVideoAndSequenceHeader(uint64_t a1, __CVBuffer *a2)
{
  v374 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader\n", CurrTime, 12, LevelStr);
      v7 = AVE_GetCurrTime();
      v306 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader", v7, 12, v306);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareVideoAndSequenceHeader", CurrTime, 12, LevelStr);
    }
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v11 = AVE_Log_CheckConsole(3u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.\n", v12, 3, v13, "AVE_PrepareVideoAndSequenceHeader", 1995, "imageBuffer != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: imageBuffer = NULL.");
    }

    goto LABEL_270;
  }

  v8 = *(a1 + 10808);
  v9 = *(a1 + 1336);
  v10 = a1 + 31332;
  memset(v373, 0, sizeof(v373));
  if (v8 > 7)
  {
    if (v8 == 8)
    {
      if ((v9 & 0x8000000) != 0)
      {
        v369 = xmmword_29565E270;
        v370 = unk_29565E280;
        v371 = xmmword_29565E290;
        v372 = unk_29565E2A0;
        v365 = xmmword_29565E230;
        v366 = unk_29565E240;
        v367 = xmmword_29565E250;
        v368 = unk_29565E260;
        v361 = ExplicitStillHEVCHighGainScalingList4x4_PQ;
        v362 = unk_29565E200;
        v363 = xmmword_29565E210;
        v364 = unk_29565E220;
        v14 = &ExplicitStillHEVCHighGainScalingList_PQ;
      }

      else
      {
        v369 = xmmword_29565EC30;
        v370 = unk_29565EC40;
        v371 = xmmword_29565EC50;
        v372 = unk_29565EC60;
        v365 = xmmword_29565EBF0;
        v366 = unk_29565EC00;
        v367 = xmmword_29565EC10;
        v368 = unk_29565EC20;
        v361 = ExplicitStillHEVCHighGainScalingList4x4;
        v362 = unk_29565EBC0;
        v363 = xmmword_29565EBD0;
        v364 = unk_29565EBE0;
        v14 = &ExplicitStillHEVCHighGainScalingList;
      }

      goto LABEL_16;
    }

    if (v8 != 9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v8 == 1)
    {
      *(a1 + 24856) = 1;
      goto LABEL_107;
    }

    if (v8 != 2)
    {
LABEL_9:
      *(a1 + 24856) = 0;
      goto LABEL_107;
    }
  }

  v369 = xmmword_29565F5F0;
  v370 = unk_29565F600;
  v371 = xmmword_29565F610;
  v372 = unk_29565F620;
  v365 = xmmword_29565F5B0;
  v366 = unk_29565F5C0;
  v367 = xmmword_29565F5D0;
  v368 = unk_29565F5E0;
  v361 = ExplicitScalingList4x4;
  v362 = unk_29565F580;
  v363 = xmmword_29565F590;
  v364 = unk_29565F5A0;
  v14 = &ExplicitScalingList;
LABEL_16:
  memcpy(__dst, v14, sizeof(__dst));
  v15 = 0;
  *(a1 + 24856) = 257;
  v16 = a1 + 24908;
  v17 = a1 + 25004;
  do
  {
    for (i = 0; i != 6; ++i)
    {
      *(v16 + 4 * i) = 0;
      *(v17 + i) = 1;
    }

    ++v15;
    v17 += 6;
    v16 += 24;
  }

  while (v15 != 4);
  v19 = 0;
  v20 = 1;
  do
  {
    v21 = 0;
    v22 = v20;
    v23 = a1 + 25028 + (v19 << 7);
    do
    {
      v24 = 0;
      v25 = v21 + v19;
      v26 = &byte_29565E151;
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v26 += 2;
        *(v373 + v24++) = *(&v361 + 16 * v21 + 16 * v19 + 4 * v28 + v27);
      }

      while (v24 != 16);
      v29 = 0;
      v30 = 8;
      do
      {
        v31 = *(v373 + v29);
        v32 = v31 - v30;
        if ((v31 - v30) <= 0)
        {
          v33 = 256;
        }

        else
        {
          v33 = -256;
        }

        v34 = v33 + v32;
        if ((v31 - v30) != v32)
        {
          v32 = v34;
        }

        *(v23 + 2 * v29) = v32;
        v35 = (v30 + v32);
        if (v35 != v31)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v84 = AVE_Log_CheckConsole(3u);
            v85 = AVE_GetCurrTime();
            v86 = AVE_Log_GetLevelStr(4);
            if (v84)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v85, 3, v86, "AVE_HEVC_set_default_scaling_lists", 1744, "nextCoef == ScalingList[i]", v35, v29, v31);
              v85 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d", v85, 3);
          }

          goto LABEL_107;
        }

        if (v31 <= 5)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v87 = AVE_Log_CheckConsole(3u);
            v88 = AVE_GetCurrTime();
            v89 = AVE_Log_GetLevelStr(4);
            if (v87)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v88, 3, v89, "AVE_HEVC_set_default_scaling_lists", 1745, "(nextCoef >= 6 && nextCoef <= 255)", v31);
              v88 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v88);
          }

          goto LABEL_107;
        }

        if (v32 != v32)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v90 = AVE_Log_CheckConsole(3u);
            v91 = AVE_GetCurrTime();
            v92 = AVE_Log_GetLevelStr(4);
            if (v90)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v91, 3, v92, "AVE_HEVC_set_default_scaling_lists", 1746, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 0, v25, v29, *(v23 + 2 * v29));
              v91 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
              v353 = *(v23 + 2 * v29);
            }

            else
            {
              v354 = *(v23 + 2 * v29);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v91, 3);
          }

          goto LABEL_107;
        }

        ++v29;
        v30 = v31;
      }

      while (v29 != 16);
      ++v21;
      v23 += 128;
    }

    while (v21 != 3);
    v20 = 0;
    v19 = 3;
  }

  while ((v22 & 1) != 0);
  v36 = 0;
  v37 = 1;
  do
  {
    v38 = 0;
    v39 = v37;
    v40 = a1 + 25796 + (v36 << 7);
    do
    {
      v41 = 0;
      v42 = v38 + v36;
      v43 = &byte_29565E171;
      do
      {
        v44 = *(v43 - 1);
        v45 = *v43;
        v43 += 2;
        *(v373 + v41++) = *&__dst[128 * v38 + 128 * v36 + 16 * v45 + 2 * v44];
      }

      while (v41 != 64);
      v46 = 0;
      v47 = 8;
      do
      {
        v48 = *(v373 + v46);
        v49 = v48 - v47;
        if ((v48 - v47) <= 0)
        {
          v50 = 256;
        }

        else
        {
          v50 = -256;
        }

        v51 = v50 + v49;
        if ((v48 - v47) != v49)
        {
          v49 = v51;
        }

        *(v40 + 2 * v46) = v49;
        v52 = (v47 + v49);
        if (v52 != v48)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v266 = AVE_Log_CheckConsole(3u);
          v267 = AVE_GetCurrTime();
          v268 = AVE_Log_GetLevelStr(4);
          if (v266)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v267, 3, v268, "AVE_HEVC_set_default_scaling_lists", 1783, "nextCoef == ScalingList[i]", v52, v46, v48);
            v267 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

LABEL_376:
          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d", v267, 3);
          goto LABEL_387;
        }

        if (v48 <= 5)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v269 = AVE_Log_CheckConsole(3u);
          v270 = AVE_GetCurrTime();
          v271 = AVE_Log_GetLevelStr(4);
          if (v269)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v270, 3, v271, "AVE_HEVC_set_default_scaling_lists", 1784, "(nextCoef >= 6 && nextCoef <= 255)", v48);
            v272 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v272);
            goto LABEL_387;
          }

          goto LABEL_396;
        }

        if (v49 != v49)
        {
          v10 = a1 + 31332;
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v273 = AVE_Log_CheckConsole(3u);
            v274 = AVE_GetCurrTime();
            v275 = AVE_Log_GetLevelStr(4);
            if (!v273)
            {
              v356 = *(v40 + 2 * v46);
              goto LABEL_386;
            }

            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v274, 3, v275, "AVE_HEVC_set_default_scaling_lists", 1785, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 1, v42, v46, *(v40 + 2 * v46));
            v276 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            v355 = *(v40 + 2 * v46);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v276, 3);
LABEL_387:
            v10 = a1 + 31332;
          }

          goto LABEL_107;
        }

        ++v46;
        v47 = v48;
      }

      while (v46 != 64);
      ++v38;
      v40 += 128;
    }

    while (v38 != 3);
    v37 = 0;
    v36 = 3;
  }

  while ((v39 & 1) != 0);
  v53 = 0;
  v54 = 1;
  while (2)
  {
    v55 = 0;
    v56 = v54;
    v57 = a1 + 26564 + (v53 << 7);
    while (2)
    {
      v58 = v55 + v53;
      v59 = *&__dst[128 * (v55 + v53) + 768];
      v60 = *&__dst[128 * (v55 + v53) + 768];
      *(a1 + 24860 + 4 * (v55 + v53)) = v60 - 8;
      if (v59 != v59)
      {
        v10 = a1 + 31332;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v286 = AVE_Log_CheckConsole(3u);
          v287 = AVE_GetCurrTime();
          v288 = AVE_Log_GetLevelStr(4);
          if (v286)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d\n", v287, 3, v288, "AVE_HEVC_set_default_scaling_lists", 1807, "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]", v59, 1, v58, v60);
            v289 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d", v289, 3);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d", v287, 3);
          }

          goto LABEL_387;
        }

        goto LABEL_107;
      }

      if ((v60 - 6) > 0xF9)
      {
        v10 = a1 + 31332;
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_107;
        }

        v290 = AVE_Log_CheckConsole(3u);
        v270 = AVE_GetCurrTime();
        v291 = AVE_Log_GetLevelStr(4);
        if (v290)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v270, 3, v291, "AVE_HEVC_set_default_scaling_lists", 1808, "(nextCoef >= 6 && nextCoef <= 255)", v60);
          v270 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

LABEL_396:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)", v270);
        goto LABEL_387;
      }

      v61 = 0;
      v62 = &byte_29565E171;
      do
      {
        v63 = *(v62 - 1);
        v64 = *v62;
        v62 += 2;
        *(v373 + v61++) = *&__dst[128 * v58 + 768 + 16 * v64 + 2 * v63];
      }

      while (v61 != 64);
      for (j = 0; j != 64; ++j)
      {
        v66 = *(v373 + j);
        v67 = v66 - v60;
        if ((v66 - v60) <= 0)
        {
          v68 = 256;
        }

        else
        {
          v68 = -256;
        }

        if ((v66 - v60) != v67)
        {
          v67 = v68 + v66 - v60;
        }

        *(v57 + 2 * j) = v67;
        v69 = (v67 + v60);
        if (v69 != v66)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v277 = AVE_Log_CheckConsole(3u);
          v267 = AVE_GetCurrTime();
          v278 = AVE_Log_GetLevelStr(4);
          if (v277)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v267, 3, v278, "AVE_HEVC_set_default_scaling_lists", 1831, "nextCoef == ScalingList[i]", v69, j, v66);
LABEL_391:
            v267 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          goto LABEL_376;
        }

        if (v66 <= 5)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v279 = AVE_Log_CheckConsole(3u);
          v270 = AVE_GetCurrTime();
          v280 = AVE_Log_GetLevelStr(4);
          if (v279)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v270, 3, v280, "AVE_HEVC_set_default_scaling_lists", 1832, "(nextCoef >= 6 && nextCoef <= 255)", v66);
LABEL_395:
            v270 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          goto LABEL_396;
        }

        if (v67 != v67)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v281 = AVE_Log_CheckConsole(3u);
          v282 = AVE_GetCurrTime();
          v283 = AVE_Log_GetLevelStr(4);
          if (v281)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v282, 3, v283, "AVE_HEVC_set_default_scaling_lists", 1833, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 2, v58, j, *(v57 + 2 * j));
            v284 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            v357 = *(v57 + 2 * j);
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v284, 3);
            goto LABEL_387;
          }

          v348 = j;
          v352 = *(v57 + 2 * j);
          v334 = 2;
          v336 = v58;
          v316 = 1833;
          v319 = "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)";
          v313 = v283;
          v285 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)";
          goto LABEL_403;
        }

        LOWORD(v60) = v66;
      }

      ++v55;
      v57 += 128;
      if (v55 != 3)
      {
        continue;
      }

      break;
    }

    v54 = 0;
    v53 = 3;
    if (v56)
    {
      continue;
    }

    break;
  }

  v70 = 0;
  v71 = 1;
  v10 = a1 + 31332;
LABEL_71:
  v72 = *&__dst[128 * v70 + 1536];
  v73 = v71;
  v74 = *&__dst[128 * v70 + 1536];
  *(a1 + 24884 + 4 * v70) = v74 - 8;
  if (v72 == v72)
  {
    if ((v74 - 6) <= 0xF9)
    {
      v75 = 0;
      v76 = &byte_29565E171;
      do
      {
        v77 = *(v76 - 1);
        v78 = *v76;
        v76 += 2;
        *(v373 + v75++) = *&__dst[128 * v70 + 1536 + 16 * v78 + 2 * v77];
      }

      while (v75 != 64);
      v79 = 0;
      while (1)
      {
        v80 = *(v373 + v79);
        v81 = v80 - v74;
        if ((v80 - v74) <= 0)
        {
          v82 = 256;
        }

        else
        {
          v82 = -256;
        }

        if ((v80 - v74) != v81)
        {
          v81 = v82 + v80 - v74;
        }

        *(a1 + 27332 + (v70 << 7) + 2 * v79) = v81;
        v83 = (v81 + v74);
        if (v83 != v80)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v292 = AVE_Log_CheckConsole(3u);
          v267 = AVE_GetCurrTime();
          v293 = AVE_Log_GetLevelStr(4);
          if (v292)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingList[%d] %d\n", v267, 3, v293, "AVE_HEVC_set_default_scaling_lists", 1878, "nextCoef == ScalingList[i]", v83, v79, v80);
            goto LABEL_391;
          }

          goto LABEL_376;
        }

        if (v80 <= 5)
        {
          v10 = a1 + 31332;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_107;
          }

          v294 = AVE_Log_CheckConsole(3u);
          v270 = AVE_GetCurrTime();
          v295 = AVE_Log_GetLevelStr(4);
          if (v294)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v270, 3, v295, "AVE_HEVC_set_default_scaling_lists", 1879, "(nextCoef >= 6 && nextCoef <= 255)", v80);
            goto LABEL_395;
          }

          goto LABEL_396;
        }

        if (v81 != v81)
        {
          break;
        }

        ++v79;
        LOWORD(v74) = v80;
        if (v79 == 64)
        {
          v71 = 0;
          v70 = 3;
          if (v73)
          {
            goto LABEL_71;
          }

          goto LABEL_107;
        }
      }

      v10 = a1 + 31332;
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_107;
      }

      v296 = a1 + (v70 << 7) + 27332;
      v297 = AVE_Log_CheckConsole(3u);
      v274 = AVE_GetCurrTime();
      v298 = AVE_Log_GetLevelStr(4);
      if (v297)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)\n", v274, 3, v298, "AVE_HEVC_set_default_scaling_lists", 1880, "(sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] >= -128 && sps->scaling_list_data.scaling_list_delta_coef[sizeId][matrixId][i] <= 127)", 3, v70, v79, *(v296 + 2 * v79));
        v299 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        v358 = *(v296 + 2 * v79);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v299, 3);
        goto LABEL_387;
      }

      v359 = *(v296 + 2 * v79);
LABEL_386:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix scaling_list_delta_coef[%d][%d][%d] = (%d)", v274, 3);
      goto LABEL_387;
    }

    v10 = a1 + 31332;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v304 = AVE_Log_CheckConsole(3u);
      v282 = AVE_GetCurrTime();
      v305 = AVE_Log_GetLevelStr(4);
      if (v304)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)\n", v282, 3, v305, "AVE_HEVC_set_default_scaling_lists", 1855, "(nextCoef >= 6 && nextCoef <= 255)", v74);
        v302 = AVE_GetCurrTime();
        v320 = "(nextCoef >= 6 && nextCoef <= 255)";
        v335 = v74;
        v317 = 1855;
        v314 = AVE_Log_GetLevelStr(4);
        v303 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)";
        goto LABEL_430;
      }

      v319 = "(nextCoef >= 6 && nextCoef <= 255)";
      v334 = v74;
      v316 = 1855;
      v313 = v305;
      v285 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d)";
      goto LABEL_403;
    }
  }

  else
  {
    v10 = a1 + 31332;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v300 = AVE_Log_CheckConsole(3u);
      v282 = AVE_GetCurrTime();
      v301 = AVE_Log_GetLevelStr(4);
      if (v300)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d\n", v282, 3, v301, "AVE_HEVC_set_default_scaling_lists", 1854, "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]", v72, 2, v70, v74);
        v302 = AVE_GetCurrTime();
        v348 = v70;
        v352 = v74;
        v335 = v72;
        v336 = 2;
        v317 = 1854;
        v320 = "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]";
        v314 = AVE_Log_GetLevelStr(4);
        v303 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d";
LABEL_430:
        syslog(3, v303, v302, 3, v314, "AVE_HEVC_set_default_scaling_lists", v317, v320, v335, v336, v348, v352);
        goto LABEL_387;
      }

      v348 = v70;
      v352 = v74;
      v334 = v72;
      v336 = 2;
      v316 = 1854;
      v319 = "nextCoef == LocalExplicitScalingList[sizeId-1][matrixId][0]";
      v313 = v301;
      v285 = "%lld %d AVE %s: %s:%d %s | FIG: HEVC Scaling Matrix nextCoef (%d) != ScalingListDefault[%d][%d][0] %d";
LABEL_403:
      syslog(3, v285, v282, 3, v313, "AVE_HEVC_set_default_scaling_lists", v316, v319, v334, v336, v348, v352);
      goto LABEL_387;
    }
  }

LABEL_107:
  if (*(a1 + 24836) == 3)
  {
    v93 = 63;
  }

  else
  {
    v93 = 31;
  }

  if (*(a1 + 24836) == 3)
  {
    v94 = 6;
  }

  else
  {
    v94 = 5;
  }

  v95 = *(a1 + 1440);
  *(a1 + 24696) = v95;
  *(a1 + 24704) = vshl_u32(vadd_s32(v95, vdup_n_s32(v93)), vneg_s32(vdup_n_s32(v94)));
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v97 = AVE_PixelFmt_FindByType(PixelFormatType);
  v98 = v97;
  if (v97 && (*(a1 + 1104) & 8) != 0)
  {
    v102 = *(v97 + 7);
    v103 = 1;
    if (v102 != 1)
    {
      v103 = *v10;
    }

    *v10 = v103 & 1;
    *(v10 + 24) = v102 == 1;
    *(v10 + 17) = 1;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v104 = AVE_Log_CheckConsole(0x1Eu);
      v105 = AVE_GetCurrTime();
      v106 = AVE_Log_GetLevelStr(6);
      if (v104)
      {
        printf("%lld %d AVE %s: FIG: video_full_range_flag %d\n", v105, 30, v106, *(v98 + 7) == 1);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
        v315 = *(v98 + 7) == 1;
      }

      syslog(3, "%lld %d AVE %s: FIG: video_full_range_flag %d");
    }
  }

  else if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v99 = AVE_Log_CheckConsole(0x1Eu);
    v100 = AVE_GetCurrTime();
    v101 = AVE_Log_GetLevelStr(6);
    if (v99)
    {
      printf("%lld %d AVE %s: FIG: Unknown dynamic range\n", v100, 30, v101);
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: FIG: Unknown dynamic range");
  }

  if ((*(a1 + 1104) & 0x40) != 0)
  {
    if (*(a1 + 1112) >= 1)
    {
      v109 = *(a1 + 1112);
    }

    else
    {
      v109 = 30;
    }

    v108 = 1;
    *(a1 + 14424) = 1;
    *(a1 + 14432) = 27000000;
    v110 = 0x19BFCC0 / v109;
    *(a1 + 14428) = v110;
    *(v10 + 80) = v110;
    *(v10 + 84) = 27000000;
    *(v10 + 76) = 1;
  }

  else
  {
    v107 = *(a1 + 14424);
    *(v10 + 76) = 0;
    if (v107)
    {
      v108 = 1;
    }

    else
    {
      v108 = *v10;
    }
  }

  *v10 = *(v10 + 141) | *(v10 + 44) | *(v10 + 1) | v108 & 1;
  v111 = CVBufferCopyAttachment(a2, *MEMORY[0x29EDB9568], 0);
  v112 = MEMORY[0x29EDB9588];
  if (v111)
  {
    v113 = v111;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v114 = AVE_Log_CheckConsole(0x1Eu);
      v115 = AVE_GetCurrTime();
      v116 = AVE_Log_GetLevelStr(6);
      if (v114)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!\n", v115, 30, v116);
        v117 = AVE_GetCurrTime();
        v307 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v117, 30, v307);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationTopFieldKey found!", v115, 30, v116);
      }
    }

    if (CFEqual(v113, *v112))
    {
LABEL_139:
      v118 = 0;
    }

    else if (CFEqual(v113, *MEMORY[0x29EDB9580]))
    {
      v118 = 1;
    }

    else if (CFEqual(v113, *MEMORY[0x29EDB9598]))
    {
      v118 = 2;
    }

    else if (CFEqual(v113, *MEMORY[0x29EDB9590]))
    {
      v118 = 3;
    }

    else if (CFEqual(v113, *MEMORY[0x29EDB9578]))
    {
      v118 = 4;
    }

    else
    {
      if (!CFEqual(v113, *MEMORY[0x29EDB9570]))
      {
        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v258 = AVE_Log_CheckConsole(0x1Eu);
          v259 = AVE_GetCurrTime();
          v260 = AVE_Log_GetLevelStr(5);
          if (v258)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v259, 30, v260);
            v261 = AVE_GetCurrTime();
            v311 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v261, 30, v311);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v259, 30, v260);
          }
        }

        goto LABEL_139;
      }

      v118 = 5;
    }

    *(v10 + 48) = v118;
    *(v10 + 52) = v118;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v119 = AVE_Log_CheckConsole(0x1Eu);
      v120 = AVE_GetCurrTime();
      v121 = AVE_Log_GetLevelStr(6);
      v122 = *(v10 + 48);
      v123 = *(v10 + 52);
      if (v119)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v120, 30, v121, *(v10 + 48), v123);
        v124 = AVE_GetCurrTime();
        v125 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v124, 30, v125, *(v10 + 48), *(v10 + 52));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v120, 30, v121, *(v10 + 48), v123);
      }
    }

    CFRelease(v113);
  }

  v126 = CVBufferCopyAttachment(a2, *MEMORY[0x29EDB9560], 0);
  if (v126)
  {
    v127 = v126;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v128 = AVE_Log_CheckConsole(0x1Eu);
      v129 = AVE_GetCurrTime();
      v130 = AVE_Log_GetLevelStr(6);
      if (v128)
      {
        printf("%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!\n", v129, 30, v130);
        v131 = AVE_GetCurrTime();
        v308 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v131, 30, v308);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: kCVImageBufferChromaLocationBottomFieldKey found!", v129, 30, v130);
      }
    }

    if (CFEqual(v127, *v112))
    {
LABEL_161:
      v132 = 0;
    }

    else if (CFEqual(v127, *MEMORY[0x29EDB9580]))
    {
      v132 = 1;
    }

    else if (CFEqual(v127, *MEMORY[0x29EDB9598]))
    {
      v132 = 2;
    }

    else if (CFEqual(v127, *MEMORY[0x29EDB9590]))
    {
      v132 = 3;
    }

    else if (CFEqual(v127, *MEMORY[0x29EDB9578]))
    {
      v132 = 4;
    }

    else
    {
      if (!CFEqual(v127, *MEMORY[0x29EDB9570]))
      {
        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v262 = AVE_Log_CheckConsole(0x1Eu);
          v263 = AVE_GetCurrTime();
          v264 = AVE_Log_GetLevelStr(5);
          if (v262)
          {
            printf("%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default\n", v263, 30, v264);
            v265 = AVE_GetCurrTime();
            v312 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v265, 30, v312);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: AVE FIG WARNING: kCVImageBufferChromaLocationTopFieldKey with invalid value -> use default", v263, 30, v264);
          }
        }

        goto LABEL_161;
      }

      v132 = 5;
    }

    *(v10 + 52) = v132;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v133 = AVE_Log_CheckConsole(0x1Eu);
      v134 = AVE_GetCurrTime();
      v135 = AVE_Log_GetLevelStr(6);
      v136 = *(v10 + 48);
      v137 = *(v10 + 52);
      if (v133)
      {
        printf("%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v134, 30, v135, *(v10 + 48), v137);
        v138 = AVE_GetCurrTime();
        v139 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v138, 30, v139, *(v10 + 48), *(v10 + 52));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v134, 30, v135, *(v10 + 48), v137);
      }
    }

    CFRelease(v127);
  }

  if ((*(v10 + 48) || *(v10 + 52)) && (*(a1 + 1104) & 0x10) != 0)
  {
    *v10 = 1;
    *(v10 + 44) = 1;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v140 = AVE_Log_CheckConsole(0x1Eu);
      v141 = AVE_GetCurrTime();
      v142 = AVE_Log_GetLevelStr(6);
      if (v140)
      {
        printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE\n", v141, 30, v142);
        v143 = AVE_GetCurrTime();
        v309 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v143, 30, v309);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag TRUE", v141, 30, v142);
      }
    }
  }

  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v144 = AVE_Log_CheckConsole(0x1Eu);
    v145 = AVE_GetCurrTime();
    v146 = AVE_Log_GetLevelStr(6);
    v147 = *(v10 + 44);
    v148 = *(v10 + 48);
    v149 = *(v10 + 52);
    if (v144)
    {
      printf("%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d\n", v145, 30, v146, v147, *(v10 + 48), v149);
      v150 = AVE_GetCurrTime();
      v151 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v150, 30, v151, *(v10 + 44), *(v10 + 48), *(v10 + 52));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: chroma_loc_info_present_flag %d , chroma_sample_loc_type_top_field %d, chroma_sample_loc_type_bottom_field %d", v145, 30, v146, v147, *(v10 + 48), v149);
    }
  }

  if (!*(a1 + 104628) && *(a1 + 12028) == 1 && *(v98 + 1) == 10)
  {
    *(a1 + 12028) = 2;
    *(a1 + 24264) = 2;
    *(v10 + 736) = 2;
  }

  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v152 = AVE_Log_CheckConsole(0x1Eu);
    v153 = AVE_GetCurrTime();
    v154 = AVE_Log_GetLevelStr(6);
    v155 = *(a1 + 104628);
    if (v152)
    {
      printf("%lld %d AVE %s: %s %d: pINS->eProfile=%d pINS->VPSHevcParams.PTL.eProfile=%d\n", v153, 30, v154, "AVE_PrepareVideoAndSequenceHeader", 2178, *(a1 + 104628), *(a1 + 12028));
      v153 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v156 = *(a1 + 104628);
      v321 = *(a1 + 12028);
    }

    else
    {
      v318 = *(a1 + 104628);
    }

    syslog(3, "%lld %d AVE %s: %s %d: pINS->eProfile=%d pINS->VPSHevcParams.PTL.eProfile=%d", v153);
  }

  v157 = *(a1 + 104628);
  if (!v157)
  {
    v157 = *(a1 + 12028);
  }

  if (v157 <= 5)
  {
    switch(v157)
    {
      case 1:
        v158 = (a1 + 24688);
        if (*(a1 + 24688) == 1)
        {
          *(a1 + 12033) = 257;
          *(a1 + 24269) = 257;
          v159 = 1;
          goto LABEL_277;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_270;
        }

        v178 = AVE_Log_CheckConsole(3u);
        v161 = AVE_GetCurrTime();
        v179 = AVE_Log_GetLevelStr(4);
        v180 = *v158;
        if (!v178)
        {
          v328 = *v158;
          v342 = *(a1 + 12028);
          goto LABEL_269;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v161, 3, v179, "AVE_PrepareVideoAndSequenceHeader", 2199, "false", *v158, *(a1 + 12028));
        goto LABEL_255;
      case 2:
        v158 = (a1 + 24688);
        v159 = *(a1 + 24688);
        if (v159 == 1)
        {
          *(a1 + 12034) = 1;
          *(a1 + 24270) = 1;
          goto LABEL_277;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_270;
        }

        v184 = AVE_Log_CheckConsole(3u);
        v161 = AVE_GetCurrTime();
        v185 = AVE_Log_GetLevelStr(4);
        v186 = *v158;
        if (!v184)
        {
          v330 = *v158;
          v344 = *(a1 + 12028);
          goto LABEL_269;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v161, 3, v185, "AVE_PrepareVideoAndSequenceHeader", 2213, "false", *v158, *(a1 + 12028));
        goto LABEL_255;
      case 3:
        *(a1 + 13308) = 0;
        *(a1 + 24748) = 0;
        v158 = (a1 + 24688);
        v159 = *(a1 + 24688);
        if (v159 == 1)
        {
          *(a1 + 24271) = 1;
          *(a1 + 12033) = 1;
          *(a1 + 24269) = 257;
          *(a1 + 12034) = 257;
          goto LABEL_277;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_270;
        }

        v181 = AVE_Log_CheckConsole(3u);
        v161 = AVE_GetCurrTime();
        v182 = AVE_Log_GetLevelStr(4);
        v183 = *v158;
        if (!v181)
        {
          v329 = *v158;
          v343 = *(a1 + 12028);
          goto LABEL_269;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v161, 3, v182, "AVE_PrepareVideoAndSequenceHeader", 2235, "false", *v158, *(a1 + 12028));
        goto LABEL_255;
    }

    goto LABEL_231;
  }

  if (v157 > 8)
  {
    if (v157 == 9)
    {
      v164 = (a1 + 24732);
      if (!*(a1 + 24732) && !*(a1 + 24736))
      {
        *(a1 + 12036) = 1;
        *(a1 + 24272) = 1;
        *(a1 + 12076) = 1;
        *(a1 + 24312) = 1;
        *(a1 + 24264) = 4;
        *(a1 + 12028) = 4;
        v158 = (a1 + 24688);
        v159 = *(a1 + 24688);
        if ((v159 - 1) >= 3)
        {
          if (v159)
          {
            if (!AVE_Log_CheckLevel(3u, 4))
            {
              goto LABEL_270;
            }

            v255 = AVE_Log_CheckConsole(3u);
            v161 = AVE_GetCurrTime();
            v256 = AVE_Log_GetLevelStr(4);
            v257 = *v158;
            if (!v255)
            {
              v333 = *v158;
              v347 = *(a1 + 12028);
              goto LABEL_269;
            }

            printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v161, 3, v256, "AVE_PrepareVideoAndSequenceHeader", 2302, "false", *v158, *(a1 + 12028));
            goto LABEL_255;
          }

          *(a1 + 12068) = 16843009;
          *(a1 + 12072) = 257;
          *(a1 + 12074) = 0;
          *(a1 + 24304) = 16843009;
          *(a1 + 24308) = 257;
          *(a1 + 24310) = 0;
        }

        else
        {
          *(a1 + 12068) = 257;
          *(a1 + 12070) = 1;
          *(a1 + 12071) = 0;
          *(a1 + 12075) = 0;
          *(a1 + 24304) = 257;
          *(a1 + 24306) = 1;
          *(a1 + 24307) = 0;
          *(a1 + 24311) = 0;
        }

LABEL_277:
        v199 = (a1 + 15574);
        if (*(a1 + 10928) != 1)
        {
          goto LABEL_296;
        }

        v200 = *(a1 + 1136);
        if (v200)
        {
          v201 = -1;
          v202 = 33;
          do
          {
            v203 = v200 & (v201 >> 1);
            v201 >>= 1;
            --v202;
          }

          while (v203);
          if (v202 < 8)
          {
            *(v10 + 104) = 0;
            v204 = 6;
            goto LABEL_288;
          }

          v207 = -1;
          v206 = 26;
          do
          {
            v208 = v200 & (v207 >> 1);
            v207 >>= 1;
            --v206;
          }

          while (v208);
        }

        else
        {
          v206 = 26;
        }

        *(v10 + 104) = v206;
        v204 = v206 + 6;
        if (!v200)
        {
          v205 = 28;
          goto LABEL_294;
        }

LABEL_288:
        v209 = -1;
        v210 = 33;
        do
        {
          v211 = v200 & (v209 >> 1);
          v209 >>= 1;
          --v210;
        }

        while (v211);
        if (v210 < 6)
        {
          *(v10 + 108) = 0;
          v212 = 4;
LABEL_295:
          *(v10 + 132) = v200 / (1 << v204) - 1;
          *(v10 + 136) = v200 / (1 << v212) - 1;
LABEL_296:
          v215 = *(a1 + 10556);
          if (v215 < 2)
          {
            v227 = *(a1 + 10896);
            if (v227 && !*(a1 + 10900))
            {
              *(a1 + 12008) = 1;
              *(a1 + 14528) = 1;
              *(a1 + 14531) = 0;
              *(a1 + 14532) |= 8u;
              *(a1 + 14534) = 0;
              *(a1 + 14566) = 1;
              *v199 = 1;
              *(a1 + 15576) = v227;
              *(a1 + 13392) = v227;
              *(a1 + 15639) = 0;
              *(a1 + 19738) = 1;
              *(a1 + 19740) = 1;
              *(a1 + 23835) = 0x100000001000000;
              *(a1 + 23843) = 1;
              *(a1 + 23908) = 0;
              *(a1 + 23912) = 0;
              *(a1 + 23914) = *(a1 + 1440);
              *(a1 + 23916) = *(a1 + 1444);
              *(a1 + 23918) = 1;
              v228 = *(a1 + 10916);
              if (v228 == -1)
              {
                v228 = v159;
              }

              *(a1 + 23920) = v228;
              *(a1 + 23928) = 0;
              v229 = *(a1 + 10908);
              if (v229 == -1)
              {
                v230 = *(a1 + 24732);
                v231 = *(a1 + 24736);
              }

              else
              {
                v230 = v229 - 8;
                v231 = v230;
              }

              *(a1 + 23932) = v230;
              *(a1 + 23940) = v231;
            }

            if (v159 >= 1 && (*(a1 + 10904) & 1) != 0)
            {
              *(v10 + 56) = 1;
            }

            goto LABEL_270;
          }

          v216 = *(a1 + 10900);
          v217 = v215 - 1;
          if (v216)
          {
            v218 = 3;
          }

          else
          {
            v218 = v215 - 1;
          }

          *(a1 + 12008) = v218;
          *(a1 + 12012) = 0;
          *(a1 + 12016) = 1;
          memcpy((a1 + 12448), (a1 + 12020), 0x1ACuLL);
          memcpy((a1 + 12876), (a1 + 12020), 0x1ACuLL);
          *(a1 + 12508) = *(a1 + 12080);
          *(a1 + 12884) = 5;
          *(a1 + 12889) = 0;
          *(a1 + 12894) = 1;
          if (v216)
          {
            v219 = *(a1 + 15575);
            v220 = *(a1 + 15576);
            v221 = *(a1 + 10896);
            if (v219 <= v220)
            {
              v222 = *(a1 + 15576);
            }

            else
            {
              v222 = *(a1 + 15575);
            }

            v223 = a1 + 13464;
            *(v223 + v219) = 1;
            *(v223 + v220) = 1;
            v224 = a1 + 13528;
            *(v224 + v221) = 1;
            *(v224 + v216) = 1;
            v225 = a1 + 13592;
            *(a1 + 13592 + v219) = 1;
            if (v221 <= v216)
            {
              LOBYTE(v226) = v216;
            }

            else
            {
              LOBYTE(v226) = v221;
            }

            *(v225 + v220) = 1;
            if (v222 <= v226)
            {
              v226 = v226;
            }

            else
            {
              v226 = v222;
            }

            *(a1 + 13392) = v226;
            *(a1 + 13396) = 3;
            *(v225 + v221) = 1;
            *(v225 + v216) = 1;
          }

          else
          {
            v232 = 0;
            v233 = *(a1 + 15575 + v217);
            *(a1 + 13392) = v233;
            *(a1 + 13396) = v217;
            v234 = v233 + 1;
            if ((v218 + 1) > 1)
            {
              v235 = (v218 + 1);
            }

            else
            {
              v235 = 1;
            }

            do
            {
              v236 = 0;
              do
              {
                if (v236 == *(a1 + 15575 + v232))
                {
                  *(a1 + 13464 + v236) = 1;
                }

                ++v236;
              }

              while (v234 != v236);
              ++v232;
            }

            while (v232 != v235);
          }

          *(a1 + 14528) = 1;
          v237 = *(a1 + 14532);
          *(a1 + 14532) = v237 | 2;
          *(a1 + 14534) = 2;
          *v199 = 1;
          *(a1 + 14566) = 1;
          *(a1 + 15706) = 1;
          if (!v216)
          {
            LOBYTE(v239) = *(a1 + 15576);
LABEL_333:
            *(a1 + 23920) = *(a1 + 24688);
            *(a1 + 23837) = 513;
            *(a1 + 14530) = 1;
            *(a1 + 23914) = *(a1 + 1440);
            *(a1 + 23916) = *(a1 + 1444);
            *(a1 + 23932) = *(a1 + 24732);
            *(a1 + 23918) = 1;
            *(a1 + 23940) = *(a1 + 24736);
            *(a1 + 23842) = 257;
            *(a1 + 23910) = 16777472;
            *(a1 + 24248) = 0;
            *(a1 + 24252) = 1;
            v241 = *(v10 + 1156);
            memcpy((v10 + 708), (a1 + 24236), 0x1E7CuLL);
            *(v10 + 708) = v239;
            *(v10 + 709) = 7;
            if (v241 <= 1)
            {
              v242 = 1;
            }

            else
            {
              v242 = v241;
            }

            *(v10 + 1156) = v242;
            *(v10 + 712) = 0;
            *(a1 + 39304) = 1;
            *(a1 + 39306) = 1;
            *(a1 + 39153) = 0;
            v243 = *(a1 + 10904);
            if (v243 == 1)
            {
              v244 = *(a1 + 10924);
              if (v244 != -1)
              {
                *(v10 + 710) = 1;
                *(v10 + 711) = v244;
              }
            }

            if (v216)
            {
              v245 = 0;
              v246 = 1;
              do
              {
                v247 = v246;
                v248 = *(a1 + 10916 + 4 * v245);
                if (v248 != -1)
                {
                  *(a1 + 23920 + 4 * v245) = v248;
                }

                v249 = *(a1 + 10908 + 4 * v245);
                if (v249 != -1)
                {
                  v250 = v249 - 8;
                  *(a1 + 23932 + 4 * v245) = v250;
                  *(a1 + 23940 + 4 * v245) = v250;
                }

                v246 = 0;
                v245 = 1;
              }

              while ((v247 & 1) != 0);
              if (*(a1 + 10920) != -1 && *(a1 + 10912) != -1)
              {
                *(a1 + 23841) = 1;
              }
            }

            if (v243)
            {
              v251 = 0;
              v252 = 1;
              do
              {
                v253 = v252;
                v254 = a1 + 24236 + 7804 * v251;
                if (*(v254 + 452) >= 1)
                {
                  *(v254 + 7152) = 1;
                }

                v252 = 0;
                v251 = 1;
              }

              while ((v253 & 1) != 0);
            }

            goto LABEL_270;
          }

          v238 = *(a1 + 15576);
          if (*(a1 + 15575))
          {
            v239 = *(a1 + 10896);
            v240 = (a1 + 19738);
          }

          else
          {
            v239 = *(a1 + 10896);
            v240 = (a1 + 19738);
            if (v238 == 1)
            {
              *(a1 + 15577) = v239;
              *(a1 + 15578) = v216;
              *(a1 + 14582) = 256;
              *(a1 + 14598) = 257;
              *(a1 + 14567) = 0;
              LOBYTE(v239) = 1;
              *(a1 + 15836) = 1;
LABEL_332:
              *(a1 + 14532) = v237 | 0xA;
              *(a1 + 14535) = 2;
              *v240 = 0;
              *(a1 + 23839) = 0;
              goto LABEL_333;
            }
          }

          *(a1 + 15577) = v238;
          *(a1 + 15576) = v239;
          *(a1 + 15578) = v216;
          *(a1 + 14566) = 256;
          *(a1 + 14582) = 1;
          *(a1 + 14598) = 257;
          *(a1 + 15706) = 0;
          *(a1 + 15770) = 1;
          *(a1 + 15835) = 1;
          goto LABEL_332;
        }

        v213 = -1;
        v205 = 28;
        do
        {
          v214 = v200 & (v213 >> 1);
          v213 >>= 1;
          --v205;
        }

        while (v214);
LABEL_294:
        *(v10 + 108) = v205;
        v212 = v205 + 4;
        goto LABEL_295;
      }

      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_270;
      }

      v165 = AVE_Log_CheckConsole(3u);
      v166 = AVE_GetCurrTime();
      v167 = AVE_Log_GetLevelStr(4);
      v168 = *v164;
      v169 = (a1 + 24736);
      if (v165)
      {
        printf("%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)\n", v166, 3, v167, "AVE_PrepareVideoAndSequenceHeader", 2243, "((pINS->saSPS[0].bit_depth_luma_minus8 == 0) && (pINS->saSPS[0].bit_depth_chroma_minus8 == 0))", *(a1 + 12028), *v164, *(a1 + 24736));
LABEL_238:
        v176 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        v337 = *v164;
        v349 = *v169;
        v323 = *(a1 + 12028);
        syslog(3, "%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)", v176, 3);
        goto LABEL_270;
      }

      v340 = *v164;
      v350 = *(a1 + 24736);
      v326 = *(a1 + 12028);
    }

    else
    {
      if (v157 != 10)
      {
        goto LABEL_231;
      }

      v164 = (a1 + 24732);
      if (*(a1 + 24732) == 2 && *(a1 + 24736) == 2)
      {
        *(a1 + 12036) = 1;
        *(a1 + 24272) = 1;
        *(a1 + 12076) = 1;
        *(a1 + 24312) = 1;
        *(a1 + 24264) = 4;
        *(a1 + 12028) = 4;
        v158 = (a1 + 24688);
        v159 = *(a1 + 24688);
        if (!v159)
        {
LABEL_250:
          *(a1 + 12068) = 0x10101000001;
          *(a1 + 24304) = 0x10101000001;
          goto LABEL_277;
        }

        if (v159 == 3 || v159 == 1)
        {
          *(a1 + 12068) = 257;
          *(a1 + 12070) = 0;
          *(a1 + 12074) = 0;
          *(a1 + 24304) = 257;
          *(a1 + 24306) = 0;
          *(a1 + 24310) = 0;
          goto LABEL_277;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_270;
        }

        v191 = AVE_Log_CheckConsole(3u);
        v161 = AVE_GetCurrTime();
        v192 = AVE_Log_GetLevelStr(4);
        v193 = *v158;
        if (!v191)
        {
          v332 = *v158;
          v346 = *(a1 + 12028);
          goto LABEL_269;
        }

        printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v161, 3, v192, "AVE_PrepareVideoAndSequenceHeader", 2369, "false", *v158, *(a1 + 12028));
LABEL_255:
        v190 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        v325 = *v158;
        v339 = *(a1 + 12028);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported", v190);
        goto LABEL_270;
      }

      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_270;
      }

      v173 = AVE_Log_CheckConsole(3u);
      v166 = AVE_GetCurrTime();
      v174 = AVE_Log_GetLevelStr(4);
      v175 = *v164;
      v169 = (a1 + 24736);
      if (v173)
      {
        printf("%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)\n", v166, 3, v174, "AVE_PrepareVideoAndSequenceHeader", 2311, "((pINS->saSPS[0].bit_depth_luma_minus8 == 2) && (pINS->saSPS[0].bit_depth_chroma_minus8 == 2))", *(a1 + 12028), *v164, *(a1 + 24736));
        goto LABEL_238;
      }

      v341 = *v164;
      v351 = *(a1 + 24736);
      v327 = *(a1 + 12028);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | profile (%d) bit_depth_luma_minus8 (%d) and bit_depth_chroma_minus8 (%d)", v166, 3);
    goto LABEL_270;
  }

  if ((v157 - 6) >= 2)
  {
    if (v157 == 8)
    {
      *(a1 + 12036) = 1;
      *(a1 + 24272) = 1;
      *(a1 + 12076) = 1;
      *(a1 + 24312) = 1;
      *(a1 + 24264) = 4;
      *(a1 + 12028) = 4;
      v158 = (a1 + 24688);
      v159 = *(a1 + 24688);
      if ((v159 - 1) < 2)
      {
        *(a1 + 12068) = 16777473;
        *(a1 + 12072) = 0;
        *(a1 + 24304) = 16777473;
        *(a1 + 24308) = 0;
        goto LABEL_277;
      }

      if (!v159)
      {
        goto LABEL_250;
      }

      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_270;
      }

      v187 = AVE_Log_CheckConsole(3u);
      v161 = AVE_GetCurrTime();
      v188 = AVE_Log_GetLevelStr(4);
      v189 = *v158;
      if (!v187)
      {
        v331 = *v158;
        v345 = *(a1 + 12028);
        goto LABEL_269;
      }

      printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v161, 3, v188, "AVE_PrepareVideoAndSequenceHeader", 2432, "false", *v158, *(a1 + 12028));
      goto LABEL_255;
    }

LABEL_231:
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v170 = AVE_Log_CheckConsole(3u);
      v171 = AVE_GetCurrTime();
      v172 = AVE_Log_GetLevelStr(4);
      if (v170)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: profile (%d) nit supported\n", v171, 3, v172, "AVE_PrepareVideoAndSequenceHeader", 2486, "false", *(a1 + 12028));
        v171 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v322 = *(a1 + 12028);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: profile (%d) nit supported", v171);
    }

    goto LABEL_270;
  }

  *(a1 + 12036) = 1;
  *(a1 + 24272) = 1;
  *(a1 + 12076) = 1;
  *(a1 + 24312) = 1;
  *(a1 + 24264) = 4;
  *(a1 + 12028) = 4;
  v158 = (a1 + 24688);
  v159 = *(a1 + 24688);
  if (!v159)
  {
    *(a1 + 12068) = 257;
    v177 = v157 == 6;
    *(a1 + 12070) = v177;
    *(a1 + 12071) = 65793;
    *(a1 + 12075) = 0;
    *(a1 + 24304) = 257;
    *(a1 + 24306) = v177;
    *(a1 + 24307) = 65793;
    *(a1 + 24311) = 0;
    goto LABEL_277;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v160 = AVE_Log_CheckConsole(3u);
    v161 = AVE_GetCurrTime();
    v162 = AVE_Log_GetLevelStr(4);
    v163 = *v158;
    if (v160)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported\n", v161, 3, v162, "AVE_PrepareVideoAndSequenceHeader", 2479, "false", *v158, *(a1 + 12028));
      goto LABEL_255;
    }

    v324 = *v158;
    v338 = *(a1 + 12028);
LABEL_269:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: chroma_format_idc (%d) and profile (%d) combination not supported", v161);
  }

LABEL_270:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v194 = AVE_Log_CheckConsole(0xCu);
    v195 = AVE_GetCurrTime();
    v196 = AVE_Log_GetLevelStr(7);
    if (v194)
    {
      printf("%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader\n", v195, 12, v196);
      v197 = AVE_GetCurrTime();
      v310 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader", v197, 12, v310);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PrepareVideoAndSequenceHeader", v195, 12, v196);
    }
  }

  v198 = *MEMORY[0x29EDCA608];
}

void AVE_PreparePictureHeader(_DWORD *a1)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader\n", CurrTime, 12, LevelStr);
      v5 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader", v5, 12, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PreparePictureHeader", CurrTime, 12, LevelStr);
    }
  }

  v6 = a1[2693];
  if (v6 == 1)
  {
    goto LABEL_11;
  }

  if (v6 == 2)
  {
    a1[9970] = a1[286] - 26;
    if (a1[6209] == 3)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    a1[9972] = v7;
LABEL_11:
    v8 = a1[2639];
    if (v8 >= 2)
    {
      v9 = (a1 + 9961);
      v10 = a1 + 15575;
      v11 = 1;
      v12 = 1;
      do
      {
        v13 = &v9[9632 * v12];
        v14 = *(v13 + 8);
        memcpy(v13, v9, 0x25A0uLL);
        *v13 = v10[v12];
        v13[8512] = 1;
        v13[8515] = 1;
        v13[8517] = 1;
        *(v13 + 1) = vbsl_s8(vceqz_s32(v14), vdup_n_s32(v11), v14);
        v11 = ++v12;
        *(v13 + 1) = 0;
        v13[5] = 0;
      }

      while (v8 > v12);
    }

    goto LABEL_19;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v15 = AVE_Log_CheckConsole(3u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    if (v15)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized\n", v16, 3, v17, "AVE_PreparePictureHeader", 1605, "false");
      v18 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized", v18, 3, v24, "AVE_PreparePictureHeader", 1605, "false");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: encode type unrecognized", v16, 3, v17, "AVE_PreparePictureHeader", 1605, "false");
    }
  }

LABEL_19:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v19 = AVE_Log_CheckConsole(0xCu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader\n", v20, 12, v21);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader", v22, 12, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_PreparePictureHeader", v20, 12, v21);
    }
  }
}

uint64_t AVE_ManageSessionSettings(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings\n", CurrTime, 12, LevelStr);
      v5 = AVE_GetCurrTime();
      v242 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", v5, 12, v242);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_ManageSessionSettings", CurrTime, 12, LevelStr);
    }
  }

  if (*(a1 + 1132) == 4 && !*(a1 + 10892))
  {
    *(a1 + 10892) = 10000;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v6 = AVE_Log_CheckConsole(0xCu);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters\n", v7, 12, v8);
      v9 = AVE_GetCurrTime();
      v243 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v9, 12, v243);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_PrepareRealTimeParameters", v7, 12, v8);
    }
  }

  v10 = (a1 + 10168);
  v11 = AVE_DW_Get();
  v12 = v11[20];
  if (v12 >= -1)
  {
    *(a1 + 692) = v12;
  }

  if (AVE_Log_CheckLevel(0x10u, 8))
  {
    v13 = AVE_Log_CheckConsole(0x10u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(8);
    v16 = *(a1 + 10784);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d\n", v14, 16, v15, "AVE_PrepareRealTimeParameters", 2830, *(a1 + 10892), *(a1 + 692), *(a1 + 10784), *(a1 + 1132));
      v14 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      v17 = *(a1 + 10784);
      v267 = *(a1 + 1132);
      v252 = *(a1 + 10892);
      v257 = *(a1 + 692);
    }

    else
    {
      v263 = *(a1 + 10784);
    }

    syslog(3, "%lld %d AVE %s: %s:%d usageMode %d RealTime %d bRCModeSet %d eRCMode %d", v14, 16);
  }

  if ((*(a1 + 1123) & 0x80) == 0 && *(a1 + 1132) == 8)
  {
    *(a1 + 10784) = 0;
  }

  if (*(a1 + 692) == 1)
  {
    if ((v18 = *(a1 + 1256)) == 0 && (v19 = *(a1 + 1132), v19 != 20) && v19 != 3 || *(a1 + 106464) > 0 || v18 >= 3 && *(a1 + 1260) >= 3)
    {
      if (*(a1 + 10752) != 2 && !*(a1 + 10892))
      {
        if ((*(a1 + 10784) & 1) == 0)
        {
          *(a1 + 1132) = 1;
        }

        *(a1 + 10764) = 1;
        *(a1 + 1464) = 0;
        v20 = *(a1 + 1336);
        *(a1 + 1336) = v20 | 0x30;
        v21 = *(a1 + 688);
        v22 = v21 & 0xFFFFFFFD;
        if (v11[190] < 1)
        {
          goto LABEL_46;
        }

        v23 = *(a1 + 1444) + 15;
        v24 = v23 >> 4;
        v25 = *(a1 + 1440) + 15;
        v26 = (v25 >> 4) + 31;
        v27 = v26 & 0x1FFFFFE0;
        v28 = v21 & 0xFFFFFEFD;
        v22 |= 0x100u;
        if (*(a1 + 1112) * (v23 >> 4) * (v25 >> 4) <= 0xAFC80)
        {
          v22 = v28;
        }

        *(a1 + 688) = v22;
        v29 = v20 | 0x70;
        *(a1 + 1336) = v29;
        if (v27 > 0x80 || v27 * v24 >= 0x2D01)
        {
          if (v23 > 0x44F || v25 >= 0x790)
          {
            v30 = ((((v25 >> 4) + 1) >> 1) + 31) >> 5;
            v24 = (v24 + 1) >> 1;
          }

          else
          {
            v30 = v26 >> 5;
          }

          v31 = v30 * v24;
          if (v23 <= 0xC0F && v27 <= 0x100 && v31 <= 0x120)
          {
LABEL_46:
            *(a1 + 688) = v22 | 0x100;
            goto LABEL_48;
          }

          *(a1 + 1336) = v29 & 0xFFFFFFBF;
        }
      }
    }
  }

LABEL_48:
  v32 = v11[19];
  if (v32 >= 1)
  {
    *(a1 + 11968) = v32;
  }

  v33 = (*(a1 + 1336) | v11[237] & 0x30) & (~*(v11 + 952) | 0xFFFFFFCF);
  *(a1 + 1336) = v33;
  if ((*(v11 + 769) & 0x80) != 0)
  {
    v33 |= 0x8000u;
    *(a1 + 1336) = v33;
  }

  if ((*(v11 + 777) & 0x80) != 0)
  {
    *(a1 + 1336) = v33 & 0xFFFF7FFF;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v34 = AVE_Log_CheckConsole(0xCu);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(7);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v35, 12, v36, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
      v37 = AVE_GetCurrTime();
      v244 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v37, 12, v244, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v35, 12, v36, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1);
    }
  }

  v275 = (a1 + 104624);
  v38 = AVE_DW_Get();
  Profile = HEVC_FindProfile(v38[186]);
  if (Profile)
  {
    *(a1 + 104628) = Profile;
  }

  Level = HEVC_FindLevel(v38[187]);
  if (Level)
  {
    *(a1 + 104632) = Level;
  }

  v274 = (a1 + 39884);
  v273 = (a1 + 31332);
  v41 = (a1 + 24252);
  Tier = HEVC_FindTier(v38[188]);
  v43 = a1 + 104624;
  if (Tier)
  {
    *v275 = Tier;
  }

  v44 = *(a1 + 104628);
  if (!v44)
  {
LABEL_72:
    if (*(a1 + 10772) == 2)
    {
      if (*v275)
      {
        if (AVE_Log_CheckLevel(0x1Eu, 6))
        {
          v56 = AVE_Log_CheckConsole(0x1Eu);
          v57 = AVE_GetCurrTime();
          v58 = AVE_Log_GetLevelStr(6);
          v59 = *v275;
          if (v56)
          {
            printf("%lld %d AVE %s: %s:%d tier %d -> change the default %d\n", v57, 30, v58, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 5702, *v275, *(a1 + 24260));
            v57 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
            v60 = *v275;
            v258 = *(a1 + 24260);
            v43 = a1 + 104624;
          }

          else
          {
            v253 = *v275;
          }

          syslog(3, "%lld %d AVE %s: %s:%d tier %d -> change the default %d", v57);
        }

        *(a1 + 24260) = *v43;
      }

      v66 = vshr_n_u32(vadd_s32(*(a1 + 1440), 0xF0000000FLL), 4uLL);
      if ((*(a1 + 1112) * v66.i32[0] * v66.i32[1]) >= 0x1DA9C0)
      {
        *(a1 + 24260) = 2;
        *(a1 + 12024) = 2;
      }
    }

    v67 = *(a1 + 1308) > 1 || *(a1 + 1256) || (*v10 & 0xFFFE) == 4 || *(a1 + 1324) > 1 || (*(a1 + 716) & 0x3C0) != 0;
    *(a1 + 10173) = v67;
    v68 = *(a1 + 1132);
    if (v68 == 4 || v68 == 2)
    {
      v69 = *(a1 + 10892);
      if (v69 == 37 || !v69)
      {
        *(a1 + 10892) = 10000;
        *(a1 + 688) &= ~0x100u;
        *(a1 + 10520) = 1;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
      }
    }

    v70 = v38[395];
    if (v70 <= 19)
    {
      if (!v70)
      {
        *(a1 + 10892) = 0;
        goto LABEL_174;
      }

      if (v70 == 1)
      {
        *(a1 + 10892) = 1;
LABEL_125:
        *(a1 + 1336) = 0x10000;
        *(a1 + 1132) = 20;
        *(a1 + 10784) = 1;
        *(a1 + 10764) = 0;
        *(a1 + 10205) = 0;
        *(a1 + 1240) &= ~0x100u;
        if (*(a1 + 1256) >= 1)
        {
          *(a1 + 1256) = 0x200000001;
          *(a1 + 13336) = 1;
          *(a1 + 24776) = 1;
          *(a1 + 48356) = 1;
        }

        *(a1 + 10808) = 0;
        *(a1 + 42027) = 1;
        *(a1 + 60061) = 1;
        if (*(a1 + 1296))
        {
          *(a1 + 39957) = 1;
        }

        if ((*(a1 + 1104) & 0x80) != 0)
        {
          v80 = 1;
          *v273 = 1;
          *(a1 + 31474) = 257;
          *(a1 + 31476) = 1;
          *(a1 + 31480) = xmmword_295650BB0;
          *(a1 + 31496) = 15;
        }

        else
        {
          v80 = 0;
        }

        v65 = 0;
        *(a1 + 31473) = v80;
        *(a1 + 1096) &= 0xFFFFFC40FFFFFCBFLL;
        *(a1 + 39886) = 1;
        goto LABEL_188;
      }
    }

    else
    {
      switch(v70)
      {
        case 20:
          *(a1 + 10892) = 20;
          goto LABEL_132;
        case 37:
          *(a1 + 10892) = 37;
LABEL_157:
          if ((*(a1 + 1104) & 0x80) != 0)
          {
            *v273 = 1;
            *(a1 + 31473) = 1;
            *(a1 + 31475) = 1;
            *(a1 + 31484) = xmmword_295650BA0;
          }

          *(a1 + 1112) = 60;
          *(a1 + 1264) = 0x7FFFFFFFLL;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
          *(a1 + 1088) |= 2uLL;
          *(a1 + 1336) &= ~0x40u;
          *(a1 + 1296) |= 2u;
          if (*(v43 + 1676) <= 0 && *(v43 + 16) == 1)
          {
            v89 = *(a1 + 1160);
            if (v89 >= 1)
            {
              v90 = 0;
              v91 = (a1 + 1176);
              v92 = 0x7FFFFFFF;
              do
              {
                if (v92 > (*(v91 - 1) * 8.0 / *v91))
                {
                  if (AVE_Log_CheckLevel(0x1Eu, 6))
                  {
                    v93 = AVE_Log_CheckConsole(0x1Eu);
                    v94 = AVE_GetCurrTime();
                    v95 = AVE_Log_GetLevelStr(6);
                    v96 = *(v91 - 1);
                    v97 = *v91;
                    if (v93)
                    {
                      printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v94, 30, v95, v90, *(v91 - 1), v97);
                      v94 = AVE_GetCurrTime();
                      v95 = AVE_Log_GetLevelStr(6);
                      v96 = *(v91 - 1);
                      v97 = *v91;
                    }

                    syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v94, 30, v95, v90, v96, v97);
                    v43 = a1 + 104624;
                  }

                  v92 = (*(v91 - 1) * 8.0 / *v91);
                  v89 = *(a1 + 1160);
                }

                ++v90;
                v91 += 2;
              }

              while (v90 < v89);
              if (v92 != 0x7FFFFFFF)
              {
                *(a1 + 1136) = v92;
              }
            }
          }

          v65 = 0;
          *(a1 + 1240) &= ~0x100u;
          goto LABEL_188;
        case 10000:
          *(a1 + 10892) = 10000;
          goto LABEL_103;
      }
    }

    v101 = *(a1 + 10892);
    if (v101 <= 36)
    {
      if (v101 != 1)
      {
        if (v101 != 20)
        {
          goto LABEL_174;
        }

LABEL_132:
        AVE_NewDefaultsBasedOnProfileUsageDefault(a1);
        if ((*(a1 + 1104) & 0x80) != 0)
        {
          *v273 = 1;
          *(a1 + 31473) = 1;
          *(a1 + 31475) = 1;
          *(a1 + 31484) = xmmword_295650BA0;
        }

        *(a1 + 1296) &= ~2u;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10520) = 1;
        *(a1 + 1240) &= ~0x100u;
        *(a1 + 1088) = *(a1 + 1088) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(a1 + 692) == 1));
        if (*(a1 + 1348) <= -13)
        {
          *(a1 + 1348) = 51;
        }

        if (*(a1 + 1236) <= -13)
        {
          *(a1 + 1236) = 51;
        }

        if (*(v43 + 1804) <= 0 && *(v43 + 1816) <= 0.0 && (*(v43 + 1808) & 0x80000000) != 0 && *(v43 + 1824) <= 0.0)
        {
          *(a1 + 1264) = 0x7FFFFFFFLL;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
        }

        if (*(v43 + 1676) <= 0 && *(v43 + 16) == 1)
        {
          v81 = *(a1 + 1160);
          if (v81 >= 1)
          {
            v82 = 0;
            v83 = (a1 + 1176);
            v74 = 0x7FFFFFFF;
            do
            {
              if (v74 > (*(v83 - 1) * 8.0 / *v83))
              {
                if (AVE_Log_CheckLevel(0x1Eu, 6))
                {
                  v84 = AVE_Log_CheckConsole(0x1Eu);
                  v85 = AVE_GetCurrTime();
                  v86 = AVE_Log_GetLevelStr(6);
                  v87 = *(v83 - 1);
                  v88 = *v83;
                  if (v84)
                  {
                    printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v85, 30, v86, v82, *(v83 - 1), v88);
                    v85 = AVE_GetCurrTime();
                    v86 = AVE_Log_GetLevelStr(6);
                    v87 = *(v83 - 1);
                    v88 = *v83;
                  }

                  syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v85, 30, v86, v82, v87, v88);
                  v43 = a1 + 104624;
                }

                v74 = (*(v83 - 1) * 8.0 / 1.5 / *v83);
                v81 = *(a1 + 1160);
              }

              ++v82;
              v83 += 2;
            }

            while (v82 < v81);
LABEL_154:
            if (v74 != 0x7FFFFFFF)
            {
              v65 = 0;
              *(a1 + 1136) = v74;
              goto LABEL_188;
            }
          }
        }

LABEL_181:
        v65 = 0;
        goto LABEL_188;
      }

      goto LABEL_125;
    }

    if (v101 != 37)
    {
      if (v101 == 10000)
      {
LABEL_103:
        AVE_NewDefaultsBasedOnProfileUsageDefault(a1);
        *(a1 + 1296) &= ~2u;
        *(a1 + 1464) = 0;
        *(a1 + 1336) &= ~0x40u;
        *(a1 + 10520) = 1;
        *(a1 + 1240) &= ~0x100u;
        *(a1 + 1088) = *(a1 + 1088) & 0xFFFFFFFFFFFFFFFDLL | (2 * (*(a1 + 692) == 1));
        if (*(a1 + 1348) <= -13)
        {
          *(a1 + 1348) = 51;
        }

        if (*(a1 + 1236) <= -13)
        {
          *(a1 + 1236) = 51;
        }

        if (*(v43 + 1804) <= 0 && *(v43 + 1816) <= 0.0)
        {
          *(a1 + 1264) = 120;
          *(a1 + 1272) = 0xBFF0000000000000;
          *(a1 + 1280) = 0xBFF0000000000000;
        }

        if (*(v43 + 1676) <= 0 && *(v43 + 16) == 1)
        {
          v71 = *(a1 + 1160);
          if (v71 >= 1)
          {
            v72 = 0;
            v73 = (a1 + 1176);
            v74 = 0x7FFFFFFF;
            do
            {
              if (v74 > (*(v73 - 1) * 8.0 / *v73))
              {
                if (AVE_Log_CheckLevel(0x1Eu, 6))
                {
                  v75 = AVE_Log_CheckConsole(0x1Eu);
                  v76 = AVE_GetCurrTime();
                  v77 = AVE_Log_GetLevelStr(6);
                  v78 = *(v73 - 1);
                  v79 = *v73;
                  if (v75)
                  {
                    printf("%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f\n", v76, 30, v77, v72, *(v73 - 1), v79);
                    v76 = AVE_GetCurrTime();
                    v77 = AVE_Log_GetLevelStr(6);
                    v78 = *(v73 - 1);
                    v79 = *v73;
                  }

                  syslog(3, "%lld %d AVE %s: FIG: i = %d DataRateLimitsSize %f DataRateLimitsSeconds %f", v76, 30, v77, v72, v78, v79);
                  v43 = a1 + 104624;
                }

                v74 = (*(v73 - 1) * 8.0 / 1.5 / *v73);
                v71 = *(a1 + 1160);
              }

              ++v72;
              v73 += 2;
            }

            while (v72 < v71);
            goto LABEL_154;
          }
        }

        goto LABEL_181;
      }

LABEL_174:
      v98 = *(a1 + 76);
      if (v98 <= 0x1D && ((1 << v98) & 0x2679CC00) != 0)
      {
        v99 = *(a1 + 10248);
        *(a1 + 10172) = v99 ^ 1;
        if ((v99 & 1) == 0)
        {
          *(a1 + 688) |= 0x100u;
          v100 = *(a1 + 1296);
          if ((v100 & 1) == 0 && (*(a1 + 1123) & 0x80) == 0)
          {
            *(a1 + 10200) = 1;
            *(a1 + 1296) = v100 | 1;
            *(a1 + 39957) = 1;
            *(a1 + 48356) = 1;
          }
        }
      }

      AVE_NewDefaultsBasedOnProfileUsageDefault(a1);
      goto LABEL_181;
    }

    goto LABEL_157;
  }

  *(a1 + 10800) = v44;
  if (AVE_Log_CheckLevel(0x1Eu, 6))
  {
    v45 = AVE_Log_CheckConsole(0x1Eu);
    v46 = AVE_GetCurrTime();
    v47 = AVE_Log_GetLevelStr(6);
    v48 = *(a1 + 104628);
    v49 = *(a1 + 24264);
    if (v45)
    {
      printf("%lld %d AVE %s: profile = %d -> change the default %d\n", v46, 30, v47, *(a1 + 104628), v49);
      v50 = AVE_GetCurrTime();
      v51 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v50, 30, v51, *(a1 + 104628), *(a1 + 24264));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: profile = %d -> change the default %d", v46, 30, v47, *(a1 + 104628), v49);
    }
  }

  v52 = *(a1 + 104628) - 1;
  if (v52 < 0xA && ((0x3E7u >> v52) & 1) != 0)
  {
    v53 = qword_295650D10[v52];
    v54 = dword_295650D60[v52];
    v55 = qword_295650D88[v52];
    *(a1 + v53) = v54;
    *(a1 + v55) = v54;
    goto LABEL_72;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v61 = AVE_Log_CheckConsole(3u);
    v62 = AVE_GetCurrTime();
    v63 = AVE_Log_GetLevelStr(4);
    if (v61)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed. profile (%d) unrecognized\n", v62, 3, v63, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", 5689, "false", *(a1 + 104628));
      v62 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      v64 = *(a1 + 104628);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_NewDefaultsBasedOnProfileUsageDefault failed. profile (%d) unrecognized", v62);
  }

  v65 = -12902;
LABEL_188:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v102 = AVE_Log_CheckConsole(0xCu);
    v103 = AVE_GetCurrTime();
    v104 = AVE_Log_GetLevelStr(7);
    if (v102)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v103, 12, v104, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v65);
      v105 = AVE_GetCurrTime();
      v245 = AVE_Log_GetLevelStr(7);
      v43 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v105, 12, v245, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v65);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v103, 12, v104, "AVE_SetNewEncoderDefaultBasedOnProfileUsagePropertiesPassed", a1, v65);
    }
  }

  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v106 = AVE_Log_CheckConsole(0xD1u);
    v107 = AVE_GetCurrTime();
    v108 = AVE_Log_GetLevelStr(6);
    if (v106)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v107, 209, v108, "AVE_PrepareHEVCLevel", a1);
      v109 = AVE_GetCurrTime();
      v246 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v109, 209, v246, "AVE_PrepareHEVCLevel", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v107, 209, v108, "AVE_PrepareHEVCLevel", a1);
    }
  }

  if (AVE_Log_CheckLevel(0xD1u, 7))
  {
    v110 = AVE_Log_CheckConsole(0xD1u);
    v111 = AVE_GetCurrTime();
    v112 = AVE_Log_GetLevelStr(7);
    v113 = *(v43 + 4);
    if (v110)
    {
      printf("%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d\n", v111, 209, v112, "AVE_PrepareHEVCLevel", 2970, *(a1 + 24264), *(a1 + 24316), *(v43 + 4), *(v43 + 8));
      v111 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v114 = *(a1 + 24264);
      v264 = *(a1 + 104628);
      v268 = *(a1 + 104632);
      v259 = *(a1 + 24316);
      v43 = a1 + 104624;
    }

    else
    {
      v265 = *(v43 + 4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with SPS profile %d SPS level %d profile %d level %d", v111, 209);
  }

  if (AVE_Log_CheckLevel(0xD1u, 7))
  {
    v115 = AVE_Log_CheckConsole(0xD1u);
    v116 = AVE_GetCurrTime();
    v117 = AVE_Log_GetLevelStr(7);
    v118 = *(a1 + 1112);
    if (v115)
    {
      printf("%lld %d AVE %s: %s:%d starting with %dx%d bitrate %d (RCMode %d) FrameRate %d USAGE %d\n", v116, 209, v117, "AVE_PrepareHEVCLevel", 2974, *(a1 + 1440), *(a1 + 1444), *(a1 + 1136), *(a1 + 1132), *(a1 + 1112), *(a1 + 10892));
      v116 = AVE_GetCurrTime();
      v117 = AVE_Log_GetLevelStr(7);
      v119 = *(a1 + 1440);
      v270 = *(a1 + 1112);
      v272 = *(a1 + 10892);
      v266 = *(a1 + 1136);
      v269 = *(a1 + 1132);
      v260 = *(a1 + 1444);
      v43 = a1 + 104624;
    }

    else
    {
      v271 = *(a1 + 1112);
    }

    syslog(3, "%lld %d AVE %s: %s:%d starting with %dx%d bitrate %d (RCMode %d) FrameRate %d USAGE %d", v116, 209, v117);
  }

  v120 = *(a1 + 1132);
  if (v120 < 1)
  {
    v121 = 0;
  }

  else
  {
    v121 = 0;
    if (v120 != 3 && v120 != 8)
    {
      v121 = *(a1 + 1136);
    }
  }

  v122 = HEVC_FindLevel(*(a1 + 24264), *(a1 + 24260), *(a1 + 1440), *(a1 + 1444), *(a1 + 1112), v121);
  if (v122)
  {
    v123 = v122;
    v124 = *(a1 + 24316);
    if (v124 <= v122)
    {
      v124 = v122;
    }

    *(a1 + 24316) = v124;
    *(a1 + 12080) = v124;
    v125 = *(v43 + 8);
    if (v125)
    {
      if (v125 < v124 && *(a1 + 1112) >= 1)
      {
        if (AVE_Log_CheckLevel(0xD1u, 5))
        {
          v126 = AVE_Log_CheckConsole(0xD1u);
          v127 = AVE_GetCurrTime();
          v128 = AVE_Log_GetLevelStr(5);
          v129 = *(v43 + 8);
          if (v126)
          {
            printf("%lld %d AVE %s: %s:%d level %d incompatible with other settings (min should be %d)\n", v127, 209, v128, "AVE_PrepareHEVCLevel", 3005, *(v43 + 8), *(a1 + 24316));
            v127 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
            v130 = *(a1 + 104632);
            v261 = *(a1 + 24316);
            v43 = a1 + 104624;
          }

          else
          {
            v255 = *(v43 + 8);
          }

          syslog(3, "%lld %d AVE %s: %s:%d level %d incompatible with other settings (min should be %d)", v127);
        }

        v135 = 4294966295;
        goto LABEL_239;
      }

      if (v124 != v125)
      {
        if (AVE_Log_CheckLevel(0xD1u, 6))
        {
          v136 = AVE_Log_CheckConsole(0xD1u);
          v137 = AVE_GetCurrTime();
          v138 = AVE_Log_GetLevelStr(6);
          v139 = *(v43 + 8);
          if (v136)
          {
            printf("%lld %d AVE %s: %s:%d level received (%d) is too high... consider lowering it with these settings (min should be %d)\n", v137, 209, v138, "AVE_PrepareHEVCLevel", 3013, *(v43 + 8), *(a1 + 24316));
            v137 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
            v140 = *(v43 + 8);
            v262 = *(a1 + 24316);
          }

          else
          {
            v254 = *(v43 + 8);
          }

          syslog(3, "%lld %d AVE %s: %s:%d level received (%d) is too high... consider lowering it with these settings (min should be %d)", v137);
        }

        v135 = 0;
        v141 = *(v43 + 8);
        *(a1 + 24316) = v141;
        *(a1 + 12080) = v141;
        goto LABEL_240;
      }
    }

    v135 = 0;
LABEL_239:
    v141 = *(a1 + 24316);
LABEL_240:
    if (v141 == 18)
    {
      *(a1 + 12024) = 2;
      *(a1 + 24260) = 2;
      *(a1 + 12120) = 16843009;
      *(a1 + 12124) = 257;
      *(a1 + 24356) = 16843009;
      *(a1 + 24360) = 257;
    }

    if (AVE_Log_CheckLevel(0xD1u, 7))
    {
      v142 = AVE_Log_CheckConsole(0xD1u);
      v143 = AVE_GetCurrTime();
      v144 = AVE_Log_GetLevelStr(7);
      v145 = *(a1 + 24316);
      if (v142)
      {
        printf("%lld %d AVE %s: %s:%d end with level %d (min %d)\n", v143, 209, v144, "AVE_PrepareHEVCLevel", 3034, *(a1 + 24316), v123);
        v143 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        v146 = *(a1 + 24316);
      }

      else
      {
        v256 = *(a1 + 24316);
      }

      syslog(3, "%lld %d AVE %s: %s:%d end with level %d (min %d)", v143);
      v43 = a1 + 104624;
    }

    goto LABEL_247;
  }

  if (AVE_Log_CheckLevel(0xD1u, 4))
  {
    v131 = AVE_Log_CheckConsole(0xD1u);
    v132 = AVE_GetCurrTime();
    v133 = AVE_Log_GetLevelStr(4);
    if (v131)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level\n", v132, 209, v133, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
      v134 = AVE_GetCurrTime();
      v247 = AVE_Log_GetLevelStr(4);
      v43 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v134, 209, v247, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level", v132, 209, v133, "AVE_PrepareHEVCLevel", 2990, "eLevel != HEVC_Level_Invalid");
    }
  }

  v135 = 4294966295;
LABEL_247:
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v147 = AVE_Log_CheckConsole(0xD1u);
    v148 = AVE_GetCurrTime();
    v149 = AVE_Log_GetLevelStr(6);
    if (v147)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v148, 209, v149, "AVE_PrepareHEVCLevel", a1, v135);
      v150 = AVE_GetCurrTime();
      v248 = AVE_Log_GetLevelStr(6);
      v43 = a1 + 104624;
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v150, 209, v248, "AVE_PrepareHEVCLevel", a1, v135);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v148, 209, v149, "AVE_PrepareHEVCLevel", a1, v135);
    }
  }

  if (v135)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v151 = AVE_Log_CheckConsole(3u);
      v152 = AVE_GetCurrTime();
      v153 = AVE_Log_GetLevelStr(4);
      if (v151)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareHEVCLevel failed\n", v152, 3, v153, "AVE_ManageSessionSettings", 7340, "err == 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_PrepareHEVCLevel failed");
    }

    return v135;
  }

  v154 = AVE_DW_Get();
  v155 = v154;
  v156 = *(v154 + 224);
  if ((v156 & 0x80000000) == 0)
  {
    *(a1 + 1264) = v156;
    if (v156 == 1)
    {
      *(a1 + 1252) = 0;
    }
  }

  v157 = *(v154 + 225);
  if ((v157 & 0x80000000) == 0)
  {
    *(a1 + 1268) = v157;
  }

  v158 = v154[113];
  if (v158 >= 0.0)
  {
    *(a1 + 1272) = v158;
  }

  v159 = v154[114];
  if (v159 >= 0.0)
  {
    *(a1 + 1280) = v159;
  }

  v160 = *(a1 + 716);
  v161 = *(v154 + 7);
  v162 = *(a1 + 1456) | *(v154 + 6);
  v164 = *(v154 + 4);
  v163 = *(v154 + 5);
  v165 = (*(a1 + 1448) | v164) & ~v163;
  *(a1 + 1448) = v165;
  *(a1 + 1456) = v162 & ~v161;
  v166 = v165 | v164 & 0x20;
  v167 = v165 & 0xFFFFFFFFFFFFFFDFLL;
  if ((v163 & 0x20) == 0)
  {
    v167 = v166;
  }

  if (((v163 | v164) & 0x20) != 0)
  {
    *(a1 + 1448) = v167;
  }

  if ((v167 & 0x20) == 0)
  {
    v168 = v160;
    if ((v163 & 0x20) == 0)
    {
      goto LABEL_284;
    }

LABEL_283:
    *(a1 + 716) = v168 & 0xFFFFFC3F;
    goto LABEL_284;
  }

  if (*(v154 + 1) == 1)
  {
    v169 = AVE_MCTF_Validate(*(a1 + 68), *(a1 + 64), v160, *(a1 + 10772), *(v43 + 3376));
    v170 = *(a1 + 716);
    if (v169)
    {
      v168 = v170 & 0xFFFFFC3F;
    }

    else
    {
      v168 = v170 | 0x3C0;
    }
  }

  else
  {
    v168 = v160 | 0x3C0;
  }

  *(a1 + 716) = v168;
  v167 = *(a1 + 1448);
  if ((v167 & 0x1000000) != 0)
  {
    *(a1 + 11810) = 1;
  }

  v163 = *(v155 + 5);
  if ((v163 & 0x1000000) != 0)
  {
    *(a1 + 11810) = 0;
    if ((v167 & 0x4000000) == 0)
    {
LABEL_281:
      if ((v163 & 0x4000000) == 0)
      {
        goto LABEL_282;
      }

      goto LABEL_375;
    }
  }

  else if ((v167 & 0x4000000) == 0)
  {
    goto LABEL_281;
  }

  *(a1 + 10552) = 1;
  if ((v163 & 0x4000000) == 0)
  {
LABEL_282:
    if ((v163 & 0x20) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_283;
  }

LABEL_375:
  *(a1 + 10552) = 2;
  if ((v163 & 0x20) != 0)
  {
    goto LABEL_283;
  }

LABEL_284:
  v171 = *(v155 + 272);
  if ((v171 & 0x80000000) == 0)
  {
    *(a1 + 11812) = v171;
  }

  v172 = *(v155 + 273);
  if ((v172 & 0x80000000) == 0)
  {
    *(a1 + 1396) = v172;
  }

  if ((v167 & 0x40) != 0)
  {
    *v274 = 1;
    if ((v163 & 0x40) == 0)
    {
LABEL_290:
      if ((v167 & 0x200) == 0)
      {
        goto LABEL_291;
      }

      goto LABEL_330;
    }
  }

  else if ((v163 & 0x40) == 0)
  {
    goto LABEL_290;
  }

  *v274 = 0;
  if ((v167 & 0x200) == 0)
  {
LABEL_291:
    if ((v163 & 0x200) == 0)
    {
      goto LABEL_292;
    }

    goto LABEL_331;
  }

LABEL_330:
  *(a1 + 39959) = 1;
  if ((v163 & 0x200) == 0)
  {
LABEL_292:
    if ((v167 & 0x400) == 0)
    {
      goto LABEL_293;
    }

    goto LABEL_332;
  }

LABEL_331:
  *(a1 + 39959) = 0;
  if ((v167 & 0x400) == 0)
  {
LABEL_293:
    if ((v163 & 0x400) == 0)
    {
      goto LABEL_294;
    }

    goto LABEL_333;
  }

LABEL_332:
  *(a1 + 12016) = 1;
  *v41 = 1;
  if ((v163 & 0x400) == 0)
  {
LABEL_294:
    if ((v167 & 0x20000) == 0)
    {
      goto LABEL_295;
    }

    goto LABEL_334;
  }

LABEL_333:
  *(a1 + 12016) = 0;
  *v41 = 0;
  if ((v167 & 0x20000) == 0)
  {
LABEL_295:
    if ((v163 & 0x20000) == 0)
    {
      goto LABEL_296;
    }

    goto LABEL_335;
  }

LABEL_334:
  *(a1 + 10205) = 1;
  if ((v163 & 0x20000) == 0)
  {
LABEL_296:
    if ((v167 & 0x40000) == 0)
    {
      goto LABEL_297;
    }

    goto LABEL_336;
  }

LABEL_335:
  *(a1 + 10205) = 0;
  if ((v167 & 0x40000) == 0)
  {
LABEL_297:
    if ((v163 & 0x40000) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_337;
  }

LABEL_336:
  *(a1 + 10206) = 1;
  if ((v163 & 0x40000) == 0)
  {
LABEL_298:
    if ((v167 & 0x80000) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_338;
  }

LABEL_337:
  *(a1 + 10206) = 0;
  if ((v167 & 0x80000) == 0)
  {
LABEL_299:
    if ((v163 & 0x80000) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_339;
  }

LABEL_338:
  *(a1 + 1336) |= 0x200u;
  if ((v163 & 0x80000) == 0)
  {
LABEL_300:
    if ((v167 & 0x100000) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_340;
  }

LABEL_339:
  *(a1 + 1336) &= ~0x200u;
  if ((v167 & 0x100000) == 0)
  {
LABEL_301:
    if ((v163 & 0x100000) == 0)
    {
      goto LABEL_303;
    }

    goto LABEL_302;
  }

LABEL_340:
  *(a1 + 10855) = 1;
  if ((v163 & 0x100000) != 0)
  {
LABEL_302:
    *(a1 + 10855) = 0;
  }

LABEL_303:
  v173 = *(v155 + 96);
  v174 = *(v155 + 97);
  *(a1 + 1120) = (*(a1 + 1120) | v173) & ~v174;
  if ((v173 & 0x40) != 0)
  {
    *(a1 + 1476) = 1;
    if ((v174 & 0x40) == 0)
    {
LABEL_305:
      if ((v173 & 0x10000) == 0)
      {
        goto LABEL_306;
      }

      goto LABEL_344;
    }
  }

  else if ((v174 & 0x40) == 0)
  {
    goto LABEL_305;
  }

  *(a1 + 1476) = 0;
  if ((v173 & 0x10000) == 0)
  {
LABEL_306:
    if ((v174 & 0x10000) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_345;
  }

LABEL_344:
  *(a1 + 10847) = 1;
  if ((v174 & 0x10000) == 0)
  {
LABEL_307:
    if ((v173 & 0x40000) == 0)
    {
      goto LABEL_308;
    }

    goto LABEL_346;
  }

LABEL_345:
  *(a1 + 10847) = 0;
  if ((v173 & 0x40000) == 0)
  {
LABEL_308:
    if ((v174 & 0x40000) == 0)
    {
      goto LABEL_309;
    }

    goto LABEL_347;
  }

LABEL_346:
  *(a1 + 10851) = 1;
  if ((v174 & 0x40000) == 0)
  {
LABEL_309:
    if ((v173 & 0x80000) == 0)
    {
      goto LABEL_310;
    }

    goto LABEL_348;
  }

LABEL_347:
  *(a1 + 10851) = 0;
  if ((v173 & 0x80000) == 0)
  {
LABEL_310:
    if ((v174 & 0x80000) == 0)
    {
      goto LABEL_311;
    }

    goto LABEL_349;
  }

LABEL_348:
  *(a1 + 10852) = 1;
  if ((v174 & 0x80000) == 0)
  {
LABEL_311:
    if ((v173 & 0x100000) == 0)
    {
      goto LABEL_312;
    }

    goto LABEL_350;
  }

LABEL_349:
  *(a1 + 10852) = 0;
  if ((v173 & 0x100000) == 0)
  {
LABEL_312:
    if ((v174 & 0x100000) == 0)
    {
      goto LABEL_313;
    }

    goto LABEL_351;
  }

LABEL_350:
  *(a1 + 10853) = 1;
  *(a1 + 10849) = 1;
  if ((v174 & 0x100000) == 0)
  {
LABEL_313:
    if ((v173 & 0x800000) == 0)
    {
      goto LABEL_314;
    }

LABEL_352:
    *(a1 + 1336) |= 0x4000000u;
    if ((v174 & 0x800000) == 0)
    {
      goto LABEL_316;
    }

    goto LABEL_315;
  }

LABEL_351:
  *(a1 + 10853) = 0;
  *(a1 + 10849) = 0;
  if ((v173 & 0x800000) != 0)
  {
    goto LABEL_352;
  }

LABEL_314:
  if ((v174 & 0x800000) != 0)
  {
LABEL_315:
    *(a1 + 1336) &= ~0x4000000u;
  }

LABEL_316:
  v175 = *(v155 + 242);
  if (v175)
  {
    *(a1 + 1352) |= v175;
  }

  v176 = *(v155 + 243);
  if (v176)
  {
    *(a1 + 1352) &= ~v176;
  }

  if ((v173 & 0x2000000) != 0)
  {
    *(a1 + 10846) = 1;
  }

  if ((v174 & 0x2000000) != 0)
  {
    *(a1 + 10846) = 0;
  }

  v177 = *(v155 + 230);
  if (v177)
  {
    *(a1 + 10200) = 1;
    *(a1 + 1296) |= 1u;
    *(a1 + 39957) = 1;
    *(a1 + 48356) = 1;
  }

  v178 = *(v155 + 231);
  if (v178)
  {
    *(a1 + 10200) = 0;
    v179 = *(a1 + 1296) & 0xFFFFFFFE;
    *(a1 + 39957) = 0;
    *(a1 + 48356) = 0;
  }

  else
  {
    v179 = *(a1 + 1296);
  }

  *(a1 + 1336) = ((*(a1 + 1336) | *(v155 + 237)) & ~*(v155 + 238) | *(v155 + 237) & 0x106) & (~*(v155 + 238) | 0xFFFFFEF9);
  *(a1 + 1240) = (*(a1 + 1240) | *(v155 + 218)) & ~*(v155 + 219);
  *(a1 + 1296) = (v179 | v177) & ~v178;
  v181 = *(v155 + 16);
  v180 = *(v155 + 17);
  *(a1 + 688) = (*(a1 + 688) | v181) & ~v180;
  if ((v181 & 0x400) != 0)
  {
    *(a1 + 10172) = 1;
  }

  if ((v180 & 0x400) != 0)
  {
    *(a1 + 10172) = 0;
  }

  if ((*(v155 + 412) & 8) != 0)
  {
    *(a1 + 1464) = 0x8000000;
  }

  v182 = *(v155 + 200);
  if (v182 >= 1)
  {
    *(a1 + 1136) = v182;
  }

  v183 = *(v155 + 18);
  if ((v183 - 1) <= 0x2F)
  {
    *(a1 + 11772) = v183;
  }

  v184 = *(v155 + 256);
  if (v184 >= 1)
  {
    *(a1 + 1368) = v184;
  }

  v185 = *(v155 + 259);
  if ((v185 & 0x80000000) == 0)
  {
    *(a1 + 10788) = v185;
    if (v185 >= 5)
    {
      if (AVE_Log_CheckLevel(0x10u, 4))
      {
        v188 = AVE_Log_CheckConsole(0x10u);
        v189 = AVE_GetCurrTime();
        v190 = AVE_Log_GetLevelStr(4);
        if (v188)
        {
          printf("%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)\n", v189, 16, v190, v185);
          v191 = AVE_GetCurrTime();
          v249 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)", v191, 16, v249, v185);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: SetProperty AVE_kVTCompressionPropertyKey_SAOMode not supported (%d)", v189, 16, v190, v185);
        }
      }

      LOBYTE(v186) = 0;
      LOBYTE(v187) = 0;
    }

    else
    {
      v186 = 0x101000100uLL >> (8 * v185);
      v187 = 0x101010000uLL >> (8 * v185);
    }

    *(a1 + 59393) = v186;
    *(a1 + 59394) = v187;
  }

  v192 = *(v155 + 255);
  if (AVE_DevCap_FindSearchRangeMode(*(a1 + 68), 1, 2, v192))
  {
    *v10 = v192;
  }

  v193 = *(v155 + 223);
  if (v193 >= 1)
  {
    *(a1 + 1288) = v193;
  }

  if ((*v155 & 0x80000000) == 0)
  {
    *(a1 + 11460) = *v155;
  }

  v194 = *(v155 + 190);
  if (v194 >= 1)
  {
    *(a1 + 1112) = v194;
  }

  v195 = *(v155 + 196);
  if (v195 != -13)
  {
    *(a1 + 1232) = v195;
  }

  v196 = *(v155 + 197);
  if (v196 != -13)
  {
    *(a1 + 1236) = v196;
  }

  v197 = *(v155 + 240);
  if (v197 != -13)
  {
    *(a1 + 1344) = v197;
  }

  v198 = *(v155 + 241);
  if (v198 != -13)
  {
    *(a1 + 1348) = v198;
  }

  v199 = *(v155 + 201);
  if (v199 != -13)
  {
    *(a1 + 1144) = v199;
  }

  v200 = *(v155 + 202);
  if (v200 != -13)
  {
    *(a1 + 1148) = v200;
  }

  v201 = *(v155 + 203);
  if (v201 != -13)
  {
    *(a1 + 1152) = v201;
  }

  v202 = *(v155 + 260);
  if (v202 <= 4)
  {
    *(a1 + 10860) = v202;
  }

  if (*(v155 + 262))
  {
    v203 = 0;
    v204 = a1 + 10544;
    v205 = 1;
    do
    {
      v206 = v205;
      v207 = *(v204 + 4 * v203);
      v208 = (*(v155 + 262) / 100.0 + 1.0) * v207;
      if (v208 >= 25.0 || v208 < 0.0)
      {
        v208 = v207;
      }

      *(v204 + 4 * v203) = v208;
      v203 = 1;
      v205 = 0;
    }

    while ((v206 & 1) != 0);
  }

  v210 = *(v155 + 261);
  if ((v210 & 0x80000000) == 0)
  {
    *(a1 + 10544) = v210;
    *(a1 + 10548) = v210;
  }

  v211 = *(v155 + 400);
  if (v211 >= 1)
  {
    *(a1 + 11792) = v211;
  }

  v212 = *(v155 + 401);
  if (v212 >= 1)
  {
    *(a1 + 11796) = v212;
  }

  v213 = *(v155 + 189);
  if ((v213 & 0x80000000) == 0)
  {
    *(a1 + 10808) = v213;
    *(a1 + 10845) = 1;
  }

  v214 = *(v155 + 254);
  if (v214 >= 1)
  {
    *(a1 + 10252) = v214;
  }

  v215 = *(v155 + 258);
  if (v215 <= 2)
  {
    *(a1 + 60062) = v215 != 0;
  }

  v216 = *(v155 + 123);
  if (v216)
  {
    *(a1 + 1096) |= v216;
  }

  v217 = *(v155 + 124);
  if (v217)
  {
    *(a1 + 1096) &= ~v217;
  }

  if (*(a1 + 1450))
  {
    *(a1 + 10928) = 1;
    *(a1 + 14424) = 1;
    *(a1 + 31408) = 1;
    *(a1 + 1096) |= 0x1EuLL;
  }

  if ((v217 & 0x80000000) != 0)
  {
    *(a1 + 10928) = 0;
    *(a1 + 1096) &= 0xFFFFFFFFFFFFFFE1;
  }

  v218 = *(v155 + 199);
  if (v218 >= 1)
  {
    *(a1 + 1132) = v218;
  }

  v219 = *(v155 + 200);
  if (v219 >= 1)
  {
    *(a1 + 1136) = v219;
  }

  v220 = *(v155 + 198);
  if ((v220 & 0x80000000) == 0)
  {
    *(a1 + 1128) = v220;
    *(a1 + 1120) |= 0x80000000uLL;
  }

  v221 = v155[102];
  if (v221 >= 0.0)
  {
    *(a1 + 1200) = v221;
  }

  v222 = *(v155 + 397);
  if (v222 >= 1)
  {
    *(a1 + 720) = v222;
  }

  v223 = *(a1 + 716);
  if (v160 != v223)
  {
    v224 = *(a1 + 24732) + 8;
    if (v224 <= *(a1 + 24736) + 8)
    {
      v224 = *(a1 + 24736) + 8;
    }

    if (AVE_UpdatePixelBufferDict(*(a1 + 68), *(a1 + 64), v223, 2, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v224, 0, 0x414C4C20u, *(a1 + 16)) && AVE_Log_CheckLevel(0x1Eu, 4))
    {
      v225 = AVE_Log_CheckConsole(0x1Eu);
      v226 = AVE_GetCurrTime();
      v227 = AVE_Log_GetLevelStr(4);
      if (v225)
      {
        printf("%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.\n", v226, 30, v227, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
        v228 = AVE_GetCurrTime();
        v250 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v228, 30, v250, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | update pixel buffer dictionary failed.", v226, 30, v227, "AVE_HEVC_ApplyDW", 6799, "ret == 0");
      }
    }
  }

  if ((*(a1 + 688) & 4) != 0)
  {
    v229 = *(a1 + 1112);
    if (v229 >= 1)
    {
      v230 = v229;
    }

    else
    {
      v230 = 30.0;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v231 = AVE_Log_CheckConsole(0x1Eu);
      v232 = AVE_GetCurrTime();
      v233 = AVE_Log_GetLevelStr(6);
      v234 = *(a1 + 1444);
      v235 = *(a1 + 1136);
      v236 = v230 * ((v234 * *(a1 + 1440)) * 1.5) * 0.2;
      if (v231)
      {
        printf("%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f\n", v232, 30, v233, v235, v230 * ((v234 * *(a1 + 1440)) * 1.5) * 0.2);
        v237 = AVE_GetCurrTime();
        v251 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f", v237, 30, v251, *(a1 + 1136), v230 * ((*(a1 + 1444) * *(a1 + 1440)) * 1.5) * 0.2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: PrepareMemoryUsage - br %d, thr %f", v232, 30, v233, v235, v230 * ((v234 * *(a1 + 1440)) * 1.5) * 0.2);
      }
    }

    if (v230 * ((*(a1 + 1444) * *(a1 + 1440)) * 1.5) * 0.2 > *(a1 + 1136))
    {
      *(a1 + 11804) = 50;
    }
  }

  v135 = AVE_ValidateEncoderParameters(a1);
  if (v135 && AVE_Log_CheckLevel(3u, 4))
  {
    v238 = AVE_Log_CheckConsole(3u);
    v239 = AVE_GetCurrTime();
    v240 = AVE_Log_GetLevelStr(4);
    if (v238)
    {
      printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v239, 3, v240, "AVE_ManageSessionSettings", 7360, "err == 0");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
  }

  return v135;
}

uint64_t AVE_GetPerFrameData(uint64_t a1, const __CFDictionary *a2, unint64_t *a3, unsigned int *a4, uint64_t a5)
{
  v316 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v10 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_GetPerFrameData", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v282 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v13, 12, v282);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", CurrTime, 12, LevelStr);
    }
  }

  if (a4)
  {
    v14 = a1 + 104640;
    *(a3 + 216) = *(a1 + 1136);
    *(a3 + 212) = *(a1 + 1112);
    v15 = *(a1 + 1160);
    v16 = *(a1 + 1176);
    a3[113] = *(a1 + 1192);
    *(a3 + 109) = v15;
    *(a3 + 111) = v16;
    *(a1 + 104640) = 0;
    *(a4 + 1357) = *(a1 + 10788) == 4;
    *(a4 + 1358) = *(a1 + 10848);
    *(a4 + 1359) = *(a1 + 10849);
    *(a3 + 28) = *(a1 + 688) & 2;
    a4[342] = *(a1 + 10808);
    *(a4 + 1362) = *(a1 + 10204);
    v17 = *(a1 + 106088);
    if (!v17)
    {
      v17 = *(a1 + 1440);
    }

    v18 = a4 + 133;
    a4[140] = v17;
    v19 = *(a1 + 106092);
    if (!v19)
    {
      v19 = *(a1 + 1444);
    }

    a4[141] = v19;
    *(a4 + 1356) = 0;
    if ((*(a1 + 716) & 0x3C0) == 0)
    {
      *a3 &= ~4uLL;
      goto LABEL_58;
    }

    v20 = *(a1 + 1444);
    v21 = *(a1 + 1440);
    *(a3 + 242) = *(a1 + 4 * *(a5 + 188) + 108008);
    if (*(a1 + 11810) == 1)
    {
      v22 = *(AVE_DW_Get() + 263);
      if (v22 >= 1)
      {
        v23 = *(a1 + 104648);
        if (v23 <= 3)
        {
          v24 = *a3 | 4;
          *a3 = v24;
          *(a1 + 108016) |= 4uLL;
          goto LABEL_22;
        }

        v62 = v23 % v22;
        v24 = *(a1 + 108016);
        if (!v62)
        {
          v24 = (*a3 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v24 >> 2) & 1))) ^ 4;
          *a3 = v24;
          *(a1 + 108016) = v24;
LABEL_22:
          v30 = *(a5 + 136);
          v31 = *(v30 + 56);
          v32 = 1.0;
          if (v31 == 0.0)
          {
            v31 = 1.0;
          }

          *(a4 + 175) = v31;
          v33 = *(v30 + 80);
          a4[352] = v33;
          v34 = *(a1 + 76);
          if (v34 <= 26)
          {
            if (v33 != 1)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v35 = *(v30 + 64);
            v38 = v35 == 2418 && v33 == 2 || v33 == 1;
            if (v34 < 0x1E)
            {
              if (!v38)
              {
                goto LABEL_47;
              }
            }

            else if (v35 != 2419 && !v38)
            {
              goto LABEL_47;
            }
          }

          v39 = ((v21 + 15) >> 4) * ((v20 + 15) >> 4);
          if (v39 > 3600)
          {
            if (v39 > 0x1FE0)
            {
LABEL_46:
              *(a4 + 175) = v32;
              goto LABEL_47;
            }

            if (v31 > 0.5)
            {
              goto LABEL_47;
            }
          }

          else if (v31 >= 0.39)
          {
LABEL_47:
            if (*(a1 + 104648) <= 5u)
            {
              *a3 = v24 | 4;
            }

            if (AVE_Log_CheckLevel(0x10u, 8))
            {
              v40 = AVE_Log_CheckConsole(0x10u);
              v41 = AVE_GetCurrTime();
              v42 = AVE_Log_GetLevelStr(8);
              v43 = *(a1 + 104648);
              v44 = *(*(a5 + 136) + 72);
              v45 = *a3;
              if (v40)
              {
                printf("%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx\n", v41, 16, v42, v43, *(*(a5 + 136) + 72), v45);
                v46 = AVE_GetCurrTime();
                v47 = AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v46, 16, v47, *(a1 + 104648), *(*(a5 + 136) + 72), *a3);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v41, 16, v42, v43, *(*(a5 + 136) + 72), v45);
              }
            }

            v48 = a1 + 108024;
            v49 = *(a5 + 188);
            v50 = *(a1 + 108024 + 4 * v49);
            if ((*a3 & 4) == 0)
            {
              if ((v50 - 1) > 4)
              {
                *(v48 + 4 * v49) = 0;
LABEL_58:
                *a4 = 0;
                *(a4 + 1392) = 0;
                *(a4 + 2374) = 0;
                *(a4 + 3) = 0;
                *(a4 + 30) = 0;
                v313 = a5;
                *(a5 + 64) = 0;
                *(a4 + 48) = 0;
                a4[13] = -1;
                *(a4 + 5) = 0xFFFFFFF3FFFFFFFFLL;
                *&v51 = -1;
                *(&v51 + 1) = -1;
                *(a4 + 17) = v51;
                v52 = (a4 + 17);
                *(a4 + 15) = 0;
                *(a4 + 21) = v51;
                *v18 = 0;
                a4[135] = -1;
                *(a4 + 343) = v51;
                if (!a2)
                {
                  v58 = 0;
                  a5 = v313;
                  goto LABEL_272;
                }

                v309 = a4 + 343;
                if (AVE_Log_CheckLevel(0x1Du, 6))
                {
                  v53 = AVE_Log_CheckConsole(0x1Du);
                  v54 = AVE_GetCurrTime();
                  v55 = AVE_Log_GetLevelStr(6);
                  v56 = *(a1 + 104648);
                  if (v53)
                  {
                    printf("%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d\n", v54, 29, v55, v56);
                    v57 = AVE_GetCurrTime();
                    v284 = AVE_Log_GetLevelStr(6);
                    syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v57, 29, v284, *(a1 + 104648));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v54, 29, v55, v56);
                  }
                }

                Value = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCED0]);
                v60 = MEMORY[0x29EDB8F00];
                if (Value && CFEqual(Value, *MEMORY[0x29EDB8F00]))
                {
                  if (*(a1 + 10532))
                  {
                    v61 = 3;
                  }

                  else
                  {
                    v61 = (*(a1 + 1241) & 1) != 0 ? 1 : 2;
                  }

                  *a4 = v61;
                  *(a3 + 230) |= 1u;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v63 = AVE_Log_CheckConsole(0x1Du);
                    v64 = AVE_GetCurrTime();
                    v65 = AVE_Log_GetLevelStr(6);
                    v66 = *a4;
                    v67 = *(a3 + 230);
                    if (v63)
                    {
                      printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v64, 29, v65, *a4, v67);
                      v68 = AVE_GetCurrTime();
                      v69 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v68, 29, v69, *a4, *(a3 + 230));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v64, 29, v65, *a4, v67);
                    }
                  }
                }

                v70 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEC8]);
                if (v70)
                {
                  v71 = v70;
                  TypeID = CFDataGetTypeID();
                  if (TypeID == CFGetTypeID(v71))
                  {
                    *(a3 + 232) |= 0x10u;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v73 = AVE_Log_CheckConsole(0x1Du);
                      v74 = AVE_GetCurrTime();
                      v75 = AVE_Log_GetLevelStr(6);
                      if (v73)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices\n", v74, 29, v75);
                        v76 = AVE_GetCurrTime();
                        v285 = AVE_Log_GetLevelStr(6);
                        v60 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v76, 29, v285);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v74, 29, v75);
                      }
                    }
                  }
                }

                v77 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCED8]);
                if (v77)
                {
                  if (CFEqual(v77, *v60))
                  {
                    *(a3 + 232) |= 0x10u;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v78 = AVE_Log_CheckConsole(0x1Du);
                      v79 = AVE_GetCurrTime();
                      v80 = AVE_Log_GetLevelStr(6);
                      v81 = *(a3 + 232);
                      if (v78)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x\n", v79, 29, v80, v81);
                        v82 = AVE_GetCurrTime();
                        v286 = AVE_Log_GetLevelStr(6);
                        v60 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v82, 29, v286, *(a3 + 232));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v79, 29, v80, v81);
                      }
                    }
                  }
                }

                v83 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEF8]);
                if (v83)
                {
                  if (CFEqual(v83, *v60))
                  {
                    *a3 |= 8uLL;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v84 = AVE_Log_CheckConsole(0x1Du);
                      v85 = AVE_GetCurrTime();
                      v86 = AVE_Log_GetLevelStr(6);
                      v87 = *a3;
                      if (v84)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx\n", v85, 29, v86, v87);
                        v88 = AVE_GetCurrTime();
                        v287 = AVE_Log_GetLevelStr(6);
                        v60 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v88, 29, v287, *a3);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v85, 29, v86, v87);
                      }
                    }
                  }
                }

                v89 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF18]);
                a4[8] = 0;
                *(a4 + 3) = 0;
                *(a3 + 234) &= ~0x10000u;
                if (*(a1 + 1338))
                {
                  v90 = v89;
                  if (v89)
                  {
                    a4[8] = CFDataGetLength(v89);
                    *(a4 + 3) = CFDataGetBytePtr(v90);
                    *(a3 + 234) |= 0x10000u;
                  }
                }

                v91 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF20]);
                if (v91)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v91, kCFNumberSInt32Type, &valuePtr);
                  v92 = valuePtr;
                  a4[2] = WORD1(valuePtr);
                  a4[3] = v92;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v93 = AVE_Log_CheckConsole(0x1Du);
                    v94 = AVE_GetCurrTime();
                    v95 = AVE_Log_GetLevelStr(6);
                    v96 = a4[2];
                    v97 = a4[3];
                    if (v93)
                    {
                      printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d\n", v94, 29, v95, a4[2], v97);
                      v98 = AVE_GetCurrTime();
                      v99 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v98, 29, v99, a4[2], a4[3]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v94, 29, v95, a4[2], v97);
                    }
                  }
                }

                v100 = CFDictionaryGetValue(a2, @"AttachDPB");
                if (v100 && CFEqual(v100, *v60))
                {
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v101 = AVE_Log_CheckConsole(0x1Du);
                    v102 = AVE_GetCurrTime();
                    v103 = AVE_Log_GetLevelStr(6);
                    v104 = *(a1 + 104648);
                    if (v101)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)\n", v102, 29, v103, v104);
                      v105 = AVE_GetCurrTime();
                      v288 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v105, 29, v288, *(a1 + 104648));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v102, 29, v103, v104);
                    }
                  }

                  *(a4 + 36) = 1;
                }

                v106 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF08]);
                if (v106)
                {
                  if (*(a1 + 104648))
                  {
                    v107 = v106;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v108 = AVE_Log_CheckConsole(0x1Du);
                      v109 = AVE_GetCurrTime();
                      v110 = AVE_Log_GetLevelStr(6);
                      v111 = *(a1 + 104648);
                      if (v108)
                      {
                        printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)\n", v109, 29, v110, v111);
                        v112 = AVE_GetCurrTime();
                        v289 = AVE_Log_GetLevelStr(6);
                        v60 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v112, 29, v289, *(a1 + 104648));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v109, 29, v110, v111);
                      }

                      v14 = a1 + 104640;
                      v18 = a4 + 133;
                    }

                    *(a4 + 37) = 1;
                    *(v313 + 64) = v107;
                  }

                  else
                  {
                    if (AVE_Log_CheckLevel(0x10u, 5))
                    {
                      v113 = AVE_Log_CheckConsole(0x10u);
                      v114 = AVE_GetCurrTime();
                      v115 = AVE_Log_GetLevelStr(5);
                      if (v113)
                      {
                        printf("%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true\n", v114, 16, v115);
                        v116 = AVE_GetCurrTime();
                        v290 = AVE_Log_GetLevelStr(5);
                        v60 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v116, 16, v290);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v114, 16, v115);
                      }
                    }

                    if (AVE_Log_CheckLevel(0x10u, 5))
                    {
                      v117 = AVE_Log_CheckConsole(0x10u);
                      v118 = AVE_GetCurrTime();
                      v119 = AVE_Log_GetLevelStr(5);
                      if (v117)
                      {
                        printf("%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag\n", v118, 16, v119);
                        v120 = AVE_GetCurrTime();
                        v291 = AVE_Log_GetLevelStr(5);
                        v60 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v120, 16, v291);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v118, 16, v119);
                      }
                    }
                  }
                }

                v121 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEB8]);
                if (v121 && CFEqual(v121, *v60))
                {
                  *a3 |= 0x8000uLL;
                }

                v122 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCE08]);
                if (v122)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v122, kCFNumberSInt32Type, &valuePtr);
                  if (valuePtr)
                  {
                    *a3 |= 0x10000uLL;
                  }
                }

                v123 = CFDictionaryGetValue(a2, @"MarkCurrentFrameAsLTR");
                if (v123)
                {
                  if (CFEqual(v123, *v60))
                  {
                    *(a4 + 48) = 1;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v124 = AVE_Log_CheckConsole(0x1Du);
                      v125 = AVE_GetCurrTime();
                      v126 = AVE_Log_GetLevelStr(6);
                      if (v124)
                      {
                        printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE\n", v125, 29, v126);
                        v127 = AVE_GetCurrTime();
                        v292 = AVE_Log_GetLevelStr(6);
                        v60 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v127, 29, v292);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v125, 29, v126);
                      }
                    }
                  }
                }

                v128 = CFDictionaryGetValue(a2, @"RVRADimension");
                if (v128)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v128, kCFNumberSInt32Type, &valuePtr);
                  v129 = valuePtr;
                  a4[15] = WORD1(valuePtr);
                  a4[16] = v129;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v130 = AVE_Log_CheckConsole(0x1Du);
                    v131 = AVE_GetCurrTime();
                    v132 = AVE_Log_GetLevelStr(6);
                    v133 = a4[15];
                    v134 = a4[16];
                    if (v130)
                    {
                      printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d\n", v131, 29, v132, a4[15], v134);
                      v135 = AVE_GetCurrTime();
                      v136 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v135, 29, v136, a4[15], a4[16]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v131, 29, v132, a4[15], v134);
                    }
                  }
                }

                v137 = CFDictionaryGetValue(a2, @"FrameNumForLTRToReplace");
                if (v137)
                {
                  LODWORD(valuePtr) = 0;
                  CFNumberGetValue(v137, kCFNumberSInt32Type, &valuePtr);
                  a4[13] = valuePtr;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v138 = AVE_Log_CheckConsole(0x1Du);
                    v139 = AVE_GetCurrTime();
                    v140 = AVE_Log_GetLevelStr(6);
                    v141 = a4[13];
                    if (v138)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)\n", v139, 29, v140, v141);
                      v142 = AVE_GetCurrTime();
                      v293 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v142, 29, v293, a4[13]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v139, 29, v140, v141);
                    }
                  }
                }

                v143 = CFDictionaryGetValue(a2, @"UserFrameType");
                if (v143)
                {
                  LODWORD(valuePtr) = 5;
                  CFNumberGetValue(v143, kCFNumberSInt32Type, &valuePtr);
                  a4[10] = valuePtr;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v144 = AVE_Log_CheckConsole(0x1Du);
                    v145 = AVE_GetCurrTime();
                    v146 = AVE_Log_GetLevelStr(6);
                    v147 = a4[10];
                    if (v144)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)\n", v145, 29, v146, v147);
                      v148 = AVE_GetCurrTime();
                      v294 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v148, 29, v294, a4[10]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v145, 29, v146, v147);
                    }
                  }
                }

                v149 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEF0]);
                v311 = v14;
                v312 = a3;
                if (v149)
                {
                  v150 = v149;
                  v151 = CFArrayGetTypeID();
                  if (v151 == CFGetTypeID(v150))
                  {
                    LODWORD(valuePtr) = 4;
                    AVE_Ref_RetrieveArray(v150, a4 + 17, &valuePtr);
                    *(a4 + 56) = valuePtr;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v152 = AVE_Log_CheckConsole(0x1Du);
                      v153 = AVE_GetCurrTime();
                      v154 = AVE_Log_GetLevelStr(6);
                      v155 = *(a4 + 56);
                      if (v152)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d\n", v153, 29, v154, v155);
                        v156 = AVE_GetCurrTime();
                        v295 = AVE_Log_GetLevelStr(6);
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v156, 29, v295, *(a4 + 56));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v153, 29, v154, v155);
                      }
                    }

                    if (*(a4 + 56))
                    {
                      v157 = 0;
                      do
                      {
                        if ((*v52 & 0x80000000) == 0 && AVE_Log_CheckLevel(0x1Eu, 6))
                        {
                          v158 = AVE_Log_CheckConsole(0x1Eu);
                          v159 = AVE_GetCurrTime();
                          v160 = AVE_Log_GetLevelStr(6);
                          v161 = *v52;
                          if (v158)
                          {
                            printf("%lld %d AVE %s: AVE Fig: userRefInfo_[%d].userRefFrameNumDriver = %d\n", v159, 30, v160, v157, v161);
                            v159 = AVE_GetCurrTime();
                            v160 = AVE_Log_GetLevelStr(6);
                            v161 = *v52;
                          }

                          syslog(3, "%lld %d AVE %s: AVE Fig: userRefInfo_[%d].userRefFrameNumDriver = %d", v159, 30, v160, v157, v161);
                          v14 = v311;
                          a3 = v312;
                        }

                        ++v157;
                        v52 += 2;
                      }

                      while (v157 < *(a4 + 56));
                    }

                    v60 = MEMORY[0x29EDB8F00];
                  }
                }

                v162 = CFDictionaryGetValue(a2, @"SliceTcOffsetDiv2");
                if (v162)
                {
                  v163 = (a4 + 134);
                  CFNumberGetValue(v162, kCFNumberSInt32Type, a4 + 134);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v164 = AVE_Log_CheckConsole(0x1Du);
                    v165 = AVE_GetCurrTime();
                    v166 = AVE_Log_GetLevelStr(6);
                    v167 = *v163;
                    if (v164)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)\n", v165, 29, v166, v167);
                      v168 = AVE_GetCurrTime();
                      v296 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)", v168, 29, v296, *v163);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceTcOffsetDiv2 found (%d)", v165, 29, v166, v167);
                    }
                  }
                }

                v169 = CFDictionaryGetValue(a2, @"SliceBetaOffsetDiv2");
                if (v169)
                {
                  CFNumberGetValue(v169, kCFNumberSInt32Type, v18);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v170 = AVE_Log_CheckConsole(0x1Du);
                    v171 = AVE_GetCurrTime();
                    v172 = AVE_Log_GetLevelStr(6);
                    v173 = *v18;
                    if (v170)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)\n", v171, 29, v172, v173);
                      v174 = AVE_GetCurrTime();
                      v297 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v174, 29, v297, *v18);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v171, 29, v172, v173);
                    }
                  }
                }

                if ((*(a1 + 1296) & 1) != 0 && a4[10] == 1)
                {
                  Info = AVE_WtPred_GetInfo(a2, *(a4 + 56), a4 + 25);
                  if (Info)
                  {
                    goto LABEL_187;
                  }

                  valuePtr = 0u;
                  v315 = 0u;
                  v280 = *(v14 + 8);
                  AVE_SNPrintf(&valuePtr, 32, "%llu %d", v175, v176, v177, v178, v179, *(a1 + 56));
                  AVE_WtPred_PrintInfo(a4 + 25, 0xD7u, 6, &valuePtr, 0, v180, v181, v182);
                }

                Info = 0;
LABEL_187:
                v183 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEC0]);
                if (v183)
                {
                  if (CFEqual(v183, *v60))
                  {
                    *a3 |= 2uLL;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v184 = AVE_Log_CheckConsole(0x1Du);
                      v185 = AVE_GetCurrTime();
                      v186 = AVE_Log_GetLevelStr(6);
                      if (v184)
                      {
                        printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE\n", v185, 29, v186);
                        v187 = AVE_GetCurrTime();
                        v298 = AVE_Log_GetLevelStr(6);
                        v60 = MEMORY[0x29EDB8F00];
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v187, 29, v298);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v185, 29, v186);
                      }
                    }
                  }
                }

                v188 = CFDictionaryGetValue(a2, @"ResetRCState");
                if (v188)
                {
                  v189 = CFEqual(v188, *v60);
                  *(a4 + 4) = v189 != 0;
                  if (v189)
                  {
                    v190 = *(a1 + 1132);
                    if (v190 == 1)
                    {
                      AVE_FPS::Reset(*(v14 + 64));
                      *a4 = 2;
                      if (AVE_Log_CheckLevel(0x1Du, 6))
                      {
                        v194 = AVE_Log_CheckConsole(0x1Du);
                        v195 = AVE_GetCurrTime();
                        v196 = AVE_Log_GetLevelStr(6);
                        if (v194)
                        {
                          printf("%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR\n", v195, 29, v196, *(a4 + 4));
                          AVE_GetCurrTime();
                          AVE_Log_GetLevelStr(6);
                          v197 = *(a4 + 4);
                          v60 = MEMORY[0x29EDB8F00];
                        }

                        syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR");
                      }
                    }

                    else if (v190 == 20)
                    {
                      *(a4 + 4) = 0;
                      if (AVE_Log_CheckLevel(0x1Du, 5))
                      {
                        v191 = AVE_Log_CheckConsole(0x1Du);
                        v192 = AVE_GetCurrTime();
                        v193 = AVE_Log_GetLevelStr(5);
                        if (v191)
                        {
                          printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.\n", v192, 29, v193);
                          AVE_GetCurrTime();
                          AVE_Log_GetLevelStr(5);
                          v60 = MEMORY[0x29EDB8F00];
                        }

                        syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.");
                      }
                    }

                    else
                    {
                      *(a4 + 4) = 0;
                      if (AVE_Log_CheckLevel(0x1Du, 5))
                      {
                        v198 = AVE_Log_CheckConsole(0x1Du);
                        v199 = AVE_GetCurrTime();
                        v200 = AVE_Log_GetLevelStr(5);
                        if (v198)
                        {
                          printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.\n", v199, 29, v200);
                          AVE_GetCurrTime();
                          AVE_Log_GetLevelStr(5);
                          v60 = MEMORY[0x29EDB8F00];
                        }

                        syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.");
                      }
                    }
                  }
                }

                v201 = CFDictionaryGetValue(a2, @"RPSInfo");
                if (v201)
                {
                  v202 = v201;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v203 = AVE_Log_CheckConsole(0x1Du);
                    v204 = AVE_GetCurrTime();
                    v205 = AVE_Log_GetLevelStr(6);
                    if (v203)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kRPSInfo found \n", v204, 29, v205);
                      v206 = AVE_GetCurrTime();
                      v299 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kRPSInfo found ", v206, 29, v299);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kRPSInfo found ", v204, 29, v205);
                    }
                  }

                  v207 = a4[10];
                  if (v207 <= 6 && ((1 << v207) & 0x47) != 0)
                  {
                    AVE_HEVC_Slice_ST_RPS_Retrieve(v202, a4 + 568);
                  }
                }

                v208 = *MEMORY[0x29EDBCF10];
                v209 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF10]);
                if (v209 && (v210 = v209, v211 = CFNumberGetTypeID(), v211 == CFGetTypeID(v210)))
                {
                  CFNumberGetValue(v210, kCFNumberSInt32Type, a4 + 11);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v212 = AVE_Log_CheckConsole(0x1Du);
                    v213 = AVE_GetCurrTime();
                    v214 = AVE_Log_GetLevelStr(6);
                    v215 = a4[11];
                    if (v212)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)\n", v213, 29, v214, v215);
                      v216 = AVE_GetCurrTime();
                      v300 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v216, 29, v300, a4[11]);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v213, 29, v214, v215);
                    }
                  }
                }

                else
                {
                  v217 = CFDictionaryGetValue(a2, v208);
                  if (v217)
                  {
                    v218 = v217;
                    v219 = CFArrayGetTypeID();
                    if (v219 == CFGetTypeID(v218))
                    {
                      Count = CFArrayGetCount(v218);
                      LODWORD(valuePtr) = 0;
                      if (Count >= 1)
                      {
                        v221 = Count;
                        for (i = 0; i < v221; i = (i + 1))
                        {
                          AVE_CFArray_GetSInt32(v218, i, &valuePtr);
                          if (!i)
                          {
                            a4[11] = valuePtr;
                          }

                          if (AVE_Log_CheckLevel(0x1Du, 6))
                          {
                            v223 = AVE_Log_CheckConsole(0x1Du);
                            v224 = AVE_GetCurrTime();
                            v225 = AVE_Log_GetLevelStr(6);
                            if (v223)
                            {
                              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)\n", v224, 29, v225, i, valuePtr);
                              v224 = AVE_GetCurrTime();
                              v225 = AVE_Log_GetLevelStr(6);
                            }

                            syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)", v224, 29, v225, i, valuePtr);
                          }
                        }
                      }

                      v14 = v311;
                      a3 = v312;
                      v60 = MEMORY[0x29EDB8F00];
                    }
                  }
                }

                v226 = CFDictionaryGetValue(a2, @"POCLsb");
                a5 = v313;
                if (v226)
                {
                  CFNumberGetValue(v226, kCFNumberSInt32Type, v309);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v227 = AVE_Log_CheckConsole(0x1Du);
                    v228 = AVE_GetCurrTime();
                    v229 = AVE_Log_GetLevelStr(6);
                    v230 = *v309;
                    if (v227)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)\n", v228, 29, v229, v230);
                      v231 = AVE_GetCurrTime();
                      v301 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v231, 29, v301, *v309);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v228, 29, v229, v230);
                    }
                  }
                }

                v232 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEE0]);
                if (v232)
                {
                  v233 = (a4 + 135);
                  CFNumberGetValue(v232, kCFNumberSInt32Type, a4 + 135);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v234 = AVE_Log_CheckConsole(0x1Du);
                    v235 = AVE_GetCurrTime();
                    v236 = AVE_Log_GetLevelStr(6);
                    v237 = *v233;
                    if (v234)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)\n", v235, 29, v236, v237);
                      v238 = AVE_GetCurrTime();
                      v302 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v238, 29, v302, *v233);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v235, 29, v236, v237);
                    }
                  }
                }

                v239 = CFDictionaryGetValue(a2, @"UserSaoMap");
                if (v239)
                {
                  *(a4 + 1356) = CFEqual(v239, *v60) != 0;
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v240 = AVE_Log_CheckConsole(0x1Du);
                    v241 = AVE_GetCurrTime();
                    v242 = AVE_Log_GetLevelStr(6);
                    v243 = *(a4 + 1356);
                    if (v240)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)\n", v241, 29, v242, v243);
                      v244 = AVE_GetCurrTime();
                      v303 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)", v244, 29, v303, *(a4 + 1356));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_UserSaoMap found (%d)", v241, 29, v242, v243);
                    }
                  }
                }

                v245 = CFDictionaryGetValue(a2, @"NaluType");
                if (v245)
                {
                  v246 = (a4 + 344);
                  CFNumberGetValue(v245, kCFNumberSInt32Type, a4 + 344);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v247 = AVE_Log_CheckConsole(0x1Du);
                    v248 = AVE_GetCurrTime();
                    v249 = AVE_Log_GetLevelStr(6);
                    v250 = *v246;
                    if (v247)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)\n", v248, 29, v249, v250);
                      v251 = AVE_GetCurrTime();
                      v304 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)", v251, 29, v304, *v246);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_NaluType found (%d)", v248, 29, v249, v250);
                    }
                  }
                }

                v252 = CFDictionaryGetValue(a2, @"TemporalID");
                if (v252)
                {
                  v253 = (a4 + 345);
                  CFNumberGetValue(v252, kCFNumberSInt32Type, a4 + 345);
                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v254 = AVE_Log_CheckConsole(0x1Du);
                    v255 = AVE_GetCurrTime();
                    v256 = AVE_Log_GetLevelStr(6);
                    v257 = *v253;
                    if (v254)
                    {
                      printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)\n", v255, 29, v256, v257);
                      v258 = AVE_GetCurrTime();
                      v305 = AVE_Log_GetLevelStr(6);
                      v60 = MEMORY[0x29EDB8F00];
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)", v258, 29, v305, *v253);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_TemporalID found (%d)", v255, 29, v256, v257);
                    }
                  }
                }

                v259 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF00]);
                if (v259)
                {
                  if (CFEqual(v259, *v60))
                  {
                    *(a4 + 1392) = 1;
                    if (AVE_Log_CheckLevel(0x1Du, 6))
                    {
                      v260 = AVE_Log_CheckConsole(0x1Du);
                      v261 = AVE_GetCurrTime();
                      v262 = AVE_Log_GetLevelStr(6);
                      v263 = *(a4 + 1392);
                      if (v260)
                      {
                        printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)\n", v261, 29, v262, v263);
                        v264 = AVE_GetCurrTime();
                        v306 = AVE_Log_GetLevelStr(6);
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v264, 29, v306, *(a4 + 1392));
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v261, 29, v262, v263);
                      }
                    }
                  }
                }

                v265 = a3 + 100;
                if ((*(a1 + 1337) & 4) != 0)
                {
                  if (!AVE_PIP_GetInfo(a2, a3 + 200))
                  {
                    valuePtr = 0u;
                    v315 = 0u;
                    v281 = *(v14 + 8);
                    v307 = *v265;
                    AVE_SNPrintf(&valuePtr, 32, "%llu %d %d", v266, v267, v268, v269, v270, *(a1 + 56));
                    AVE_PIP_PrintInfo(a3 + 200, 50, 6, &valuePtr, 0, v271, v272, v273);
                  }
                }

                else
                {
                  *v265 = 0;
                }

                v58 = Info;
                goto LABEL_272;
              }

              *a3 |= 4uLL;
            }

            *(v48 + 4 * v49) = v50 + 1;
            goto LABEL_58;
          }

          v32 = v31 + v31;
          goto LABEL_46;
        }

LABEL_21:
        *a3 = v24;
        goto LABEL_22;
      }

      v29 = *a3;
      if (*(*(a5 + 136) + 72) > 254)
      {
        v24 = v29 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_21;
      }
    }

    else
    {
      v29 = *a3;
    }

    v24 = v29 | 4;
    goto LABEL_21;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v25 = AVE_Log_CheckConsole(0xCu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | PerFrameData = NULL\n", v26, 12, v27, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
      v28 = AVE_GetCurrTime();
      v283 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v28, 12, v283, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v26, 12, v27, "AVE_GetPerFrameData", 542, "PerFrameData != __null");
    }
  }

  v58 = 4294966295;
LABEL_272:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v274 = AVE_Log_CheckConsole(0xCu);
    v275 = AVE_GetCurrTime();
    v276 = AVE_Log_GetLevelStr(7);
    if (v274)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %d\n", v275, 12, v276, "AVE_GetPerFrameData", a1, a2, a3, a4, a5, v58);
      v277 = AVE_GetCurrTime();
      v308 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v277, 12, v308, "AVE_GetPerFrameData");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v275, 12, v276, "AVE_GetPerFrameData");
    }
  }

  v278 = *MEMORY[0x29EDCA608];
  return v58;
}

void AVE_UpdateSettingsBasedOnSNR(uint64_t a1, uint64_t a2, _DWORD *a3, double a4)
{
  v8 = AVE_DW_Get();
  if (*(a1 + 10892))
  {
    return;
  }

  v10 = (a1 + 104648);
  if (*(a1 + 76) >= 4)
  {
    v11 = v8[402];
    if (*(a1 + 10804) == 2)
    {
      if ((*(a1 + 10853) & 1) == 0 && v11 <= 0)
      {
        goto LABEL_84;
      }
    }

    else if (v11 < 1)
    {
      goto LABEL_84;
    }

    v12 = a4;
    if (*v10)
    {
      v9 = 0.25;
      v12 = (a4 + *(a1 + 104744) * 3.0) * 0.25;
    }

    v13 = *(a2 + 864);
    *(a1 + 104744) = v12;
    if (v11 >= 1)
    {
      v12 = v11;
      *(a1 + 104744) = v11;
      if (v11 <= 0x19)
      {
        *a2 |= 0x10uLL;
      }
    }

    v14 = *(a1 + 1440);
    v15 = *(a1 + 1444);
    v16 = *(a1 + 1112);
    v17 = v16;
    v18 = v15 * v14;
    v19 = (v15 * v14) >> 12 > 0x7E8;
    v20 = v16 > 120 || (v15 * v14) >> 12 > 0x7E8;
    if (v16 <= 90)
    {
      v19 = 0;
    }

    v21 = v14;
    v22 = v15;
    if (v18 > 0x8CA00)
    {
      v26 = v21 * v22;
      if (v18 > 0x15F900)
      {
        if (v18 > 0x473100)
        {
          v23 = v26 / 8294400.0;
          if (v16 < 28)
          {
            v24 = 24.0;
            v25 = 18000000.0;
            goto LABEL_43;
          }

          if (v16 < 0x2E)
          {
            v24 = 30.0;
            v25 = 22500000.0;
            goto LABEL_43;
          }

          v27 = v16 >= 0x5B;
          v25 = dbl_295650BC0[v16 < 0x5B];
          v24 = 120.0;
          v30 = 60.0;
LABEL_41:
          if (!v27)
          {
            v24 = v30;
          }

LABEL_43:
          v31 = (v25 * v17 / v24);
          if (*(a1 + 10772) == 2)
          {
            v32 = *(a1 + 24732) == 2;
            v33 = 1.1;
            if (*(a1 + 24732) != 2)
            {
              v33 = 1.0;
            }
          }

          else
          {
            v32 = 0;
            v33 = 1.0;
          }

          v34 = v23 * v31 * v33;
          if (v20)
          {
            if (v19)
            {
              if (v12 <= 8.0)
              {
                v43 = 125.0;
              }

              else
              {
                if (v12 > 18.0)
                {
                  if (v12 <= 22.0)
                  {
                    v35 = v34 * 125.0;
LABEL_102:
                    v60 = v35 / 100.0;
                    if (v60 <= v13)
                    {
                      v60 = v13;
                    }

                    v39 = v60;
                    v38 = 1;
                    goto LABEL_77;
                  }

                  goto LABEL_62;
                }

                v43 = 150.0;
              }

              v44 = v34 * v43;
            }

            else
            {
              if (v12 > 18.0)
              {
                if (v12 <= 23.0)
                {
                  v59 = 125.0;
                  if (v32)
                  {
                    v59 = 150.0;
                  }

                  v35 = v59 * v34;
                  goto LABEL_102;
                }

LABEL_62:
                v38 = 0;
                v39 = v13;
LABEL_77:
                a3[5] = v38;
                if (v39 >= 2 * v13)
                {
                  v39 = 2 * v13;
                }

                *(a2 + 864) = v39;
                *(a1 + 104760) = v39;
                if (AVE_Log_CheckLevel(0x30u, 6))
                {
                  v47 = AVE_Log_CheckConsole(0x30u);
                  CurrTime = AVE_GetCurrTime();
                  LevelStr = AVE_Log_GetLevelStr(6);
                  if (v47)
                  {
                    printf("%lld %d AVE %s: FIG: F %d SNR %f filteredSNR[%d] %f targetBitrate %d NewtargetBitrate %d\n", CurrTime, 48, LevelStr, *v10, a4, 0, *(a1 + 104744), v13, *(a2 + 864));
                    CurrTime = AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(6);
                    v50 = *(a1 + 104744);
                    v51 = *v10;
                    v61 = *(a2 + 864);
                  }

                  syslog(3, "%lld %d AVE %s: FIG: F %d SNR %f filteredSNR[%d] %f targetBitrate %d NewtargetBitrate %d", CurrTime);
                }

                goto LABEL_84;
              }

              v45 = 175.0;
              if (v32)
              {
                v45 = 200.0;
              }

              v44 = v45 * v34;
            }
          }

          else
          {
            LODWORD(v9) = *(a1 + 10560);
            v36 = v9;
            if (v12 <= 20.0)
            {
              v40 = !v32;
              v41 = 175.0;
              v42 = 200.0;
            }

            else
            {
              if (v12 > 23.0)
              {
                if (v12 <= 25.0)
                {
                  v37 = 125.0;
                  if (v32)
                  {
                    v37 = 150.0;
                  }

                  v35 = v37 * (v34 * v36);
                  goto LABEL_102;
                }

                goto LABEL_62;
              }

              v40 = !v32;
              v41 = 150.0;
              v42 = 175.0;
            }

            if (!v40)
            {
              v41 = v42;
            }

            v44 = v41 * (v34 * v36);
          }

          v46 = v44 / 100.0;
          if (v46 <= v13)
          {
            v46 = v13;
          }

          v39 = v46;
          v38 = 2;
          goto LABEL_77;
        }

        v23 = v26 / 2073600.0;
        if (v16 < 46)
        {
          v24 = 30.0;
          v25 = 7700000.0;
          goto LABEL_43;
        }

        if (v16 < 0x5B)
        {
          v24 = 60.0;
          v25 = 11700000.0;
          goto LABEL_43;
        }

        v27 = v16 >= 0xB5;
        v28 = v16 < 0xB5;
        v29 = &unk_295650BD0;
      }

      else
      {
        v23 = v26 / 921600.0;
        if (v16 < 46)
        {
          v24 = 30.0;
          v25 = 4900000.0;
          goto LABEL_43;
        }

        if (v16 < 0x5B)
        {
          v24 = 60.0;
          v25 = 8600000.0;
          goto LABEL_43;
        }

        v27 = v16 >= 0xB5;
        v28 = v16 < 0xB5;
        v29 = &unk_295650BE0;
      }
    }

    else
    {
      v23 = v21 * v22 / 307200.0;
      if (v16 < 46)
      {
        v24 = 30.0;
        v25 = 2500000.0;
        goto LABEL_43;
      }

      if (v16 < 0x5B)
      {
        v24 = 60.0;
        v25 = 4400000.0;
        goto LABEL_43;
      }

      v27 = v16 >= 0xB5;
      v28 = v16 < 0xB5;
      v29 = &unk_295650BF0;
    }

    v25 = v29[v28];
    v24 = 240.0;
    v30 = 120.0;
    goto LABEL_41;
  }

LABEL_84:
  if (AVE_Log_CheckLevel(0x30u, 6))
  {
    v52 = AVE_Log_CheckConsole(0x30u);
    v53 = AVE_GetCurrTime();
    v54 = AVE_Log_GetLevelStr(6);
    v55 = *v10;
    if (v52)
    {
      printf("%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f\n", v53, 48, v54, v55, 25.0, a4);
      v56 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v56, 48, v57, *v10, 25.0, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v53, 48, v54, v55, 25.0, a4);
    }
  }

  v58 = *(a1 + 10804);
  if (*(a1 + 692) == 1)
  {
    if (v58 != 2)
    {
      goto LABEL_94;
    }

    if (*(a1 + 10847) == 1)
    {
      a3[135] = a4 <= 25.0;
      a3[342] = *(a1 + 4 * (a4 <= 25.0) + 10808);
    }
  }

  else if (v58 != 2)
  {
    goto LABEL_94;
  }

  if ((*(a1 + 10851) & 1) == 0)
  {
LABEL_94:
    if (*(a1 + 10852) != 1)
    {
      return;
    }
  }

  if (a4 <= 25.0 || *(a1 + 10852) == 1)
  {
    *a2 |= 0x10uLL;
  }
}

uint64_t AVE_MultipassDataFetch(uint64_t a1, void *a2)
{
  v2 = a1 + 102400;
  if (!*(a1 + 104648))
  {
    v11 = a2[2];
    v12 = (a1 + 104676);
    *(a1 + 104676) = *a2;
    *(a1 + 104684) = a2[1];
    *(a1 + 104692) = v11;
    if (AVE_Log_CheckLevel(0xD8u, 6))
    {
      v13 = AVE_Log_CheckConsole(0xD8u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v16 = *(v2 + 2248);
      if (v13)
      {
        printf("%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d\n", CurrTime, 216, LevelStr, v16);
        v17 = AVE_GetCurrTime();
        v50 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d", v17, 216, v50, *(v2 + 2248));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: AVE_MultipassDataFetch : Frame %d", CurrTime, 216, LevelStr, v16);
      }
    }

    if (AVE_Log_CheckLevel(0xD8u, 6))
    {
      v26 = AVE_Log_CheckConsole(0xD8u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(6);
      v29 = *(a2 + 3);
      if (v26)
      {
        printf("%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v27, 216, v28, *a2, *(a2 + 2), *(a2 + 3), a2[2]);
        v27 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
        v30 = *a2;
        v54 = *(a2 + 3);
        v57 = a2[2];
        v52 = *(a2 + 2);
      }

      else
      {
        v55 = *(a2 + 3);
      }

      syslog(3, "%lld %d AVE %s: PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v27);
    }

    v31 = *(v2 + 2256);
    v64 = *v12;
    v69 = *(v2 + 2292);
    v32 = *(v2 + 2268);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v33 = AVE_Log_CheckConsole(3u);
      v34 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      v36 = *a2;
      if (v33)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d\n", v34, 3, v35, "AVE_MultipassDataFetch", 6975, "err == noErr", *(v2 + 2248), *a2, *(a2 + 2));
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        v59 = *a2;
        v60 = *(a2 + 2);
        v56 = "err == noErr";
        v58 = *(v2 + 2248);
        v53 = 6975;
      }

      else
      {
        v59 = *a2;
        v60 = *(a2 + 2);
        v58 = *(v2 + 2248);
        v53 = 6975;
        v56 = "err == noErr";
      }

      v51 = v35;
      v37 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed. F %d PTS %lld ts %d";
    }

    else
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v38 = AVE_Log_CheckConsole(3u);
      v34 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      v40 = *a2;
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d\n", v34, 3, v39, "AVE_MultipassDataFetch", 6976, "data != __null", *(v2 + 2248), *a2, *(a2 + 2));
        v34 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
        v59 = *a2;
        v60 = *(a2 + 2);
        v56 = "data != __null";
        v58 = *(v2 + 2248);
        v53 = 6976;
      }

      else
      {
        v59 = *a2;
        v60 = *(a2 + 2);
        v58 = *(v2 + 2248);
        v53 = 6976;
        v56 = "data != __null";
      }

      v51 = v39;
      v37 = "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp data == NULL. F %d PTS %lld ts %d";
    }

    syslog(3, v37, v34, 3, v51, "AVE_MultipassDataFetch", v53, v56, v58, v59, v60);
    return 4294954394;
  }

  v3 = *(a1 + 104656);
  v4 = (a1 + 104676);
  v61 = *(a1 + 104676);
  v66 = *(a1 + 104692);
  v5 = *MEMORY[0x29EDBCF78];
  if (VTMultiPassStorageGetTimeStamp())
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v6 = AVE_Log_CheckConsole(3u);
      v7 = AVE_GetCurrTime();
      v8 = AVE_Log_GetLevelStr(4);
      if (!v6)
      {
LABEL_20:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.");
        return 4294954394;
      }

      v9 = 7030;
LABEL_6:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageGetTimeStamp failed.\n", v7, 3, v8, "AVE_MultipassDataFetch", v9, "err == noErr");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      goto LABEL_20;
    }

    return 4294954394;
  }

  v18 = *(v2 + 2256);
  if ((*(v2 + 2288) & 0x1D) == 1)
  {
    v62 = *v4;
    v67 = *(v4 + 2);
    v19 = *(v2 + 2268);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v20 = AVE_Log_CheckConsole(3u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        v23 = 7035;
LABEL_15:
        printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.\n", v21, 3, v22, "AVE_MultipassDataFetch", v23, "err == noErr");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294954394;
    }

    v44 = AVE_Log_CheckConsole(3u);
    v45 = AVE_GetCurrTime();
    v46 = AVE_Log_GetLevelStr(4);
    if (v44)
    {
      v47 = 7036;
LABEL_50:
      printf("%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.\n", v45, 3, v46, "AVE_MultipassDataFetch", v47, "d != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      goto LABEL_54;
    }

    goto LABEL_54;
  }

  v63 = *v4;
  v68 = *(v4 + 2);
  v24 = *MEMORY[0x29EDBCF80];
  if (!VTMultiPassStorageGetTimeStamp())
  {
    if ((*(v2 + 2288) & 0x1D) != 1)
    {
      return 0;
    }

    v41 = *(v2 + 2256);
    v65 = *v4;
    v70 = *(v4 + 2);
    v42 = *(v2 + 2268);
    if (VTMultiPassStorageCopyDataAtTimeStamp())
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        return 4294954394;
      }

      v43 = AVE_Log_CheckConsole(3u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v43)
      {
        v23 = 7060;
        goto LABEL_15;
      }

LABEL_45:
      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp failed.");
      return 4294954394;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294954394;
    }

    v49 = AVE_Log_CheckConsole(3u);
    v45 = AVE_GetCurrTime();
    v46 = AVE_Log_GetLevelStr(4);
    if (v49)
    {
      v47 = 7061;
      goto LABEL_50;
    }

LABEL_54:
    syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTMultiPassStorageCopyDataAtTimeStamp d == NULL.");
    return 4294954394;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v25 = AVE_Log_CheckConsole(3u);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(4);
    if (!v25)
    {
      goto LABEL_20;
    }

    v9 = 7055;
    goto LABEL_6;
  }

  return 4294954394;
}

uint64_t AVE_Session_HEVC_Process(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const __CFDictionary *a7)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v14 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Process", a1, a2, a3, a4, a5, a6, a7);
      v17 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v17, 12, v36, "AVE_Session_HEVC_Process", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Process", a1);
    }
  }

  if (a1 && a3 && a4 && a5 && a6)
  {
    if (a7 && CFDictionaryContainsKey(a7, @"SessionIndicator"))
    {
      AVE_TimeStats_Restart(*(a1 + 104712));
    }

    if (*(a1 + 104648))
    {
      goto LABEL_14;
    }

    v23 = AVE_SEI::SetSEIBits(*(a1 + 104736), *(a1 + 1096));
    if (!v23)
    {
      v33 = *(a1 + 104712);
      v34 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v33, 5u, v34);
      if (*(a1 + 1112) >= 1)
      {
        v35 = *(a1 + 1112);
      }

      else
      {
        v35 = 30;
      }

      AVE_FPS::Update(*(a1 + 104704), v35, 0, 0);
LABEL_14:
      v18 = AVE_HEVC_Encode();
      goto LABEL_24;
    }

    v18 = v23;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v24 = AVE_Log_CheckConsole(3u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v25, 3, v26, "AVE_Session_HEVC_Process", 8159, "ret == 0");
        v27 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v27, 3, v38, "AVE_Session_HEVC_Process", 8159, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v25, 3, v26, "AVE_Session_HEVC_Process", 8159, "ret == 0");
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v19 = AVE_Log_CheckConsole(0xCu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v20, 12, v21, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1, a2, a3, a4, a5, a6, a7);
        v22 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v22, 12, v37, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v20, 12, v21, "AVE_Session_HEVC_Process", 8145, "pINS != __null && pPixelBuf != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }
    }

    v18 = 4294966295;
  }

LABEL_24:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v28 = AVE_Log_CheckConsole(0xCu);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(7);
    if (v28)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v29, 12, v30, "AVE_Session_HEVC_Process", a1, a2, a3, a4, a5, a6, a7, v18);
      v31 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v31, 12, v39, "AVE_Session_HEVC_Process", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v29, 12, v30, "AVE_Session_HEVC_Process", a1, a2);
    }
  }

  return v18;
}

uint64_t AVE_Session_HEVC_ProcessMultiFrame(uint64_t a1, const void *a2, OpaqueCMTaggedBufferGroup *a3, const void *a4, const void *a5, const void *a6, const void *a7)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v12 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2, a3, a4, a5, a6, a7);
      v15 = AVE_GetCurrTime();
      v80 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v15, 12, v80, "AVE_Session_HEVC_ProcessMultiFrame", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_ProcessMultiFrame", a1);
    }
  }

  v93 = a7;
  v94 = a6;
  if (a1 && a3 && a4 && a5 && a6)
  {
    if (a7 && CFDictionaryContainsKey(a7, @"SessionIndicator"))
    {
      AVE_TimeStats_Restart(*(a1 + 104712));
    }

    if (!*(a1 + 104648))
    {
      v33 = AVE_SEI::SetSEIBits(*(a1 + 104736), *(a1 + 1096));
      if (v33)
      {
        v34 = v33;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v35 = AVE_Log_CheckConsole(3u);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(4);
          if (v35)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v36, 3, v37, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
            v38 = AVE_GetCurrTime();
            v82 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v38, 3, v82, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v36, 3, v37, "AVE_Session_HEVC_ProcessMultiFrame", 8210, "ret == 0");
          }
        }

        goto LABEL_79;
      }

      v55 = *(a1 + 104712);
      v56 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v55, 5u, v56);
      if (*(a1 + 1112) >= 1)
      {
        v57 = *(a1 + 1112);
      }

      else
      {
        v57 = 30;
      }

      AVE_FPS::Update(*(a1 + 104704), v57, 0, 0);
    }

    if (*(a1 + 10556) == 2)
    {
      v92 = a2;
      Count = CMTaggedBufferGroupGetCount(a3);
      v17 = Count;
      if (*(a1 + 10556) > Count)
      {
        if (AVE_Log_CheckLevel(0xCu, 4))
        {
          v18 = AVE_Log_CheckConsole(0xCu);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          if (v18)
          {
            printf("%lld %d AVE %s: %s:%d %s | no enough buffers %d %d\n", v19, 12, v20, "AVE_Session_HEVC_ProcessMultiFrame", 8225, "num >= pINS->VideoParams.iLayerNum", v17, *(a1 + 10556));
            v21 = AVE_GetCurrTime();
            v22 = AVE_Log_GetLevelStr(4);
            v87 = v17;
            v89 = *(a1 + 10556);
            v85 = 8225;
            v86 = "num >= pINS->VideoParams.iLayerNum";
            v81 = v22;
            v23 = "%lld %d AVE %s: %s:%d %s | no enough buffers %d %d";
LABEL_74:
            syslog(3, v23, v21, 12, v81, "AVE_Session_HEVC_ProcessMultiFrame", v85, v86, v87, v89, p_tagBuffer);
          }

          else
          {
            v90 = *(a1 + 10556);
            syslog(3, "%lld %d AVE %s: %s:%d %s | no enough buffers %d %d", v19);
          }
        }

LABEL_77:
        v34 = 4294965288;
        goto LABEL_78;
      }

      if (Count < 1)
      {
        v34 = 0;
LABEL_78:
        a2 = v92;
        goto LABEL_79;
      }

      v39 = 0;
      v40 = a1 + 15575;
      v41 = Count & 0x7FFFFFFF;
      v42 = MEMORY[0x29EDB9390];
      while (2)
      {
        v43 = 0;
        v44 = v42;
        v98 = *v42;
        tagBuffer = v98;
        numberOfTagsCopied = 0;
        do
        {
          TagCollectionAtIndex = CMTaggedBufferGroupGetTagCollectionAtIndex(a3, v43);
          TagsWithCategory = CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_VideoLayerID, &tagBuffer, 1, &numberOfTagsCopied);
          if (TagsWithCategory || numberOfTagsCopied != 1)
          {
            if (!AVE_Log_CheckLevel(0xCu, 4))
            {
              goto LABEL_77;
            }

            v58 = AVE_Log_CheckConsole(0xCu);
            v59 = AVE_GetCurrTime();
            v60 = AVE_Log_GetLevelStr(4);
            if (v58)
            {
              printf("%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p\n", v59, 12, v60, "AVE_Session_HEVC_ProcessMultiFrame", 8245, "ret == 0 && numOfTags == 1", TagsWithCategory, numberOfTagsCopied, &tagBuffer);
              v21 = AVE_GetCurrTime();
              v61 = AVE_Log_GetLevelStr(4);
              v89 = numberOfTagsCopied;
              p_tagBuffer = &tagBuffer;
              v86 = "ret == 0 && numOfTags == 1";
              v87 = TagsWithCategory;
              v85 = 8245;
              v81 = v61;
              v23 = "%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p";
              goto LABEL_74;
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | invalid VideoLayerID in taggedBuffer %d %d %p", v59, 12);
            goto LABEL_77;
          }

          ++v43;
        }

        while (CMTagGetSInt64Value(tagBuffer) != *(v40 + v39) && v43 < v41);
        if (!*(a1 + 10556))
        {
LABEL_71:
          if (!AVE_Log_CheckLevel(0xCu, 4))
          {
            goto LABEL_77;
          }

          v62 = AVE_Log_CheckConsole(0xCu);
          v63 = AVE_GetCurrTime();
          v64 = AVE_Log_GetLevelStr(4);
          SInt64Value = CMTagGetSInt64Value(tagBuffer);
          if (v62)
          {
            printf("%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer\n", v63, 12, v64, "AVE_Session_HEVC_ProcessMultiFrame", 8279, "storedLayerID != -1", SInt64Value);
            v21 = AVE_GetCurrTime();
            v66 = AVE_Log_GetLevelStr(4);
            v86 = "storedLayerID != -1";
            v87 = CMTagGetSInt64Value(tagBuffer);
            v85 = 8279;
            v81 = v66;
            v23 = "%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer";
            goto LABEL_74;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | mismatch VideoLayerID %lld in taggedBuffer", v63);
          goto LABEL_77;
        }

        v48 = 0;
        while (1)
        {
          v49 = *(a1 + 10900) ? v48 << (*(a1 + 15770) == 1) : v48;
          v50 = *(v40 + v49);
          if (CMTagGetSInt64Value(tagBuffer) == v50)
          {
            break;
          }

          if (++v48 >= *(a1 + 10556))
          {
            goto LABEL_71;
          }
        }

        v51 = *(a1 + 15640 + v48);
        if (!CMTagCollectionGetTagsWithCategory(TagCollectionAtIndex, kCMTagCategory_StereoView, &v98, 1, &numberOfTagsCopied) && numberOfTagsCopied == 1)
        {
          FlagsValue = CMTagGetFlagsValue(v98);
          v53 = 11808;
          if (FlagsValue != 1)
          {
            v53 = 11809;
          }

          v54 = *(a1 + v53);
          if (v51 != v54)
          {
            if (AVE_Log_CheckLevel(0xCu, 4))
            {
              v76 = AVE_Log_CheckConsole(0xCu);
              v77 = AVE_GetCurrTime();
              v78 = AVE_Log_GetLevelStr(4);
              if (v76)
              {
                printf("%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d\n", v77, 12, v78, "AVE_Session_HEVC_ProcessMultiFrame", 8294, "storedViewID == curViewID", 0, v51, v54);
                v79 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d", v79, 12);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | left/right ViewID not matching in taggedBuffer %d %d %d", v77, 12);
              }
            }

            v34 = 4294965287;
            goto LABEL_78;
          }
        }

        if (CMTaggedBufferGroupGetCVPixelBufferForTag(a3, tagBuffer, 0))
        {
          a2 = v92;
          v34 = AVE_HEVC_Encode();
          if (!v34)
          {
            ++v39;
            v42 = v44;
            if (v39 != v41)
            {
              continue;
            }
          }
        }

        else
        {
          a2 = v92;
          if (AVE_Log_CheckLevel(0xCu, 4))
          {
            v72 = AVE_Log_CheckConsole(0xCu);
            v73 = AVE_GetCurrTime();
            v74 = AVE_Log_GetLevelStr(4);
            if (v72)
            {
              printf("%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer\n", v73, 12, v74, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
              v75 = AVE_GetCurrTime();
              v84 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer", v75, 12, v84, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get CVPixelBuffer in taggedBuffer", v73, 12, v74, "AVE_Session_HEVC_ProcessMultiFrame", 8302, "pBuf != __null");
            }
          }

          v34 = 4294965288;
        }

        break;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v29 = AVE_Log_CheckConsole(0xCu);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        if (v29)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid number of video layers %d\n", v30, 12, v31, "AVE_Session_HEVC_ProcessMultiFrame", 8220, "pINS->VideoParams.iLayerNum > 1 && pINS->VideoParams.iLayerNum <= ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", *(a1 + 10556));
          v30 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v32 = *(a1 + 10556);
        }

        else
        {
          v88 = *(a1 + 10556);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid number of video layers %d", v30);
      }

      v34 = 4294965291;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v24 = AVE_Log_CheckConsole(0xCu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v25, 12, v26, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1, a2, a3, a4, a5, a6, a7);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v27, 12, v28, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v25, 12, v26, "AVE_Session_HEVC_ProcessMultiFrame", 8195, "pINS != __null && taggedBufferGroup != __null && pRect != __null && pPTS != __null && pDuration != __null", a1);
      }
    }

    v34 = 4294966295;
  }

LABEL_79:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v67 = AVE_Log_CheckConsole(0xCu);
    v68 = AVE_GetCurrTime();
    v69 = AVE_Log_GetLevelStr(7);
    if (v67)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v68, 12, v69, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2, a3, a4, a5, v94, v93, v34);
      v70 = AVE_GetCurrTime();
      v83 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v70, 12, v83, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v68, 12, v69, "AVE_Session_HEVC_ProcessMultiFrame", a1, a2);
    }
  }

  return v34;
}

uint64_t AVE_Session_HEVC_Complete(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: Enter %s %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Complete", a1);
      v5 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: Enter %s %p", v5, 12, v24, "AVE_Session_HEVC_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Enter %s %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Complete", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 104712);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 6u, v7);
    if (*(a1 + 104644) == 30568)
    {
      v27 = AVE_GetCurrTime();
      v8 = AVE_USL_Drv_Complete(*(a1 + 120), &v27);
      if (v8 && AVE_Log_CheckLevel(0xCu, 4))
      {
        v9 = AVE_Log_CheckConsole(0xCu);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        v12 = *(a1 + 56);
        if (v9)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d\n", v10, 12, v11, "AVE_Session_HEVC_Complete", 8341, "ret == 0", a1, *(a1 + 56), v8);
          v10 = AVE_GetCurrTime();
          v11 = AVE_Log_GetLevelStr(4);
          v13 = *(a1 + 56);
        }

        else
        {
          v26 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d", v10, 12, v11);
      }
    }

    else
    {
      v8 = 0;
    }

    v17 = *(a1 + 104712);
    v18 = AVE_GetCurrTime();
    AVE_TimeStats_AddEndTime(v17, 6u, v18);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v14 = AVE_Log_CheckConsole(0xCu);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 12, v16, "AVE_Session_HEVC_Complete", 8329, "pINS != __null", 0);
        v15 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v19 = AVE_Log_CheckConsole(0xCu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: Exit %s %p %d\n", v20, 12, v21, "AVE_Session_HEVC_Complete", a1, v8);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v22, 12, v25, "AVE_Session_HEVC_Complete", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v20, 12, v21, "AVE_Session_HEVC_Complete", a1, v8);
    }
  }

  return v8;
}

uint64_t AVE_Session_HEVC_GetPropertyDict(uint64_t a1, void *a2)
{
  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
      v7 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v25, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_GetPropertyDict", a1, a2);
    }
  }

  if (a1 && a2)
  {
    *a2 = 0;
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = (a1 + 8 * v8 + 80);
    }

    else
    {
      v9 = (a1 + 88);
    }

    v10 = *v9;
    if (*v9)
    {
      v11 = CFGetRetainCount(*v9);
      if (v11 != 1 && AVE_Log_CheckLevel(0xCu, 5))
      {
        v12 = AVE_Log_CheckConsole(0xCu);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(5);
        v15 = *(a1 + 56);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d\n", v13, 12, v14, "AVE_Session_HEVC_GetPropertyDict", 8384, a1, *(a1 + 56), v11);
          v13 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(5);
          v16 = *(a1 + 56);
        }

        else
        {
          v26 = *(a1 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d property dictionary reference count %p %lld %d", v13, 12);
      }

      CFRetain(v10);
      v20 = 0;
    }

    else
    {
      v20 = 4294966288;
    }

    *a2 = v10;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v17 = AVE_Log_CheckConsole(0xCu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v18, 12, v19, "AVE_Session_HEVC_GetPropertyDict", 8364, "pINS != __null && ppDict != __null", a1, a2);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v18, 12);
    }

    v20 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v21 = AVE_Log_CheckConsole(0xCu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(8);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v22, 12, v23, "AVE_Session_HEVC_GetPropertyDict", a1, a2, v20);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v22);
  }

  return v20;
}

uint64_t AVE_Session_HEVC_GetProperty(const void *a1, const void *a2, __CFString *a3, const void *a4)
{
  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v8 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_GetProperty", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p", CurrTime, 12);
  }

  if (a1 && a3 && a4)
  {
    Property = AVE_Prop_HEVC_GetProperty(a1, a2, a3, a4);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v12 = AVE_Log_CheckConsole(0xCu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p\n", v13, 12, v14, "AVE_Session_HEVC_GetProperty", 8411, "pINS != __null && pKey != __null && pValue != __null", a1, a2, a3, a4);
        v15 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v15, 12, v21, "AVE_Session_HEVC_GetProperty");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p", v13, 12, v14, "AVE_Session_HEVC_GetProperty");
      }
    }

    Property = 4294966295;
  }

  if (AVE_Log_CheckLevel(0xCu, 8))
  {
    v16 = AVE_Log_CheckConsole(0xCu);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(8);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d\n", v17, 12, v18, "AVE_Session_HEVC_GetProperty", a1, a2, a3, a4, Property);
      v19 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v19, 12, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d", v17, 12, v18);
    }
  }

  return Property;
}

uint64_t AVE_Session_HEVC_Prepare()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v33 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v1 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v1)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Prepare", v0);
      v4 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v4, 12, v26, "AVE_Session_HEVC_Prepare", v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_Prepare", v0);
    }
  }

  if (v0)
  {
    if (*(v0 + 104644) != 30566)
    {
      goto LABEL_20;
    }

    bzero(v30, 0x8C8uLL);
    v5 = AVE_ManageSessionSettings(v0);
    if (v5)
    {
      v6 = v5;
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v7 = AVE_Log_CheckConsole(0xCu);
        v8 = AVE_GetCurrTime();
        v9 = AVE_Log_GetLevelStr(4);
        if (v7)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld\n", v8, 12, v9, "AVE_Session_HEVC_Prepare", 8443, "err == 0", v0, *(v0 + 56));
          v8 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v10 = *(v0 + 56);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to manage settings %p %lld", v8, 12);
      }

      goto LABEL_26;
    }

    *(v0 + 10760) = 1;
    v14 = AVE_GetCurrTime();
    v28 = *(v0 + 104712);
    v29 = *(v0 + 104728);
    v30[281] = v0 + 12000;
    v30[282] = v0 + 24236;
    v30[284] = v0 + 39844;
    v30[283] = v0 + 32040;
    v30[285] = v0 + 49476;
    v30[286] = v0 + 59112;
    v30[287] = v0 + 80600;
    memcpy(v31, (v0 + 106112), sizeof(v31));
    v32 = v14;
    v15 = *(v0 + 120);
    if (!AVE_USL_Drv_Prepare())
    {
LABEL_20:
      v6 = 0;
      *(v0 + 104644) = 30567;
      goto LABEL_26;
    }

    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v16 = AVE_Log_CheckConsole(0xCu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld\n", v17, 12, v18, "AVE_Session_HEVC_Prepare", 8455, "err == noErr", v0, *(v0 + 56));
        v17 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        v19 = *(v0 + 56);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %p %lld", v17, 12);
    }

    v6 = 4294966296;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v11 = AVE_Log_CheckConsole(0xCu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v12, 12, v13, "AVE_Session_HEVC_Prepare", 8432, "pINS != __null", 0);
        v12 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v12);
    }

    v6 = 4294966295;
  }

LABEL_26:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v20 = AVE_Log_CheckConsole(0xCu);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(6);
    if (v20)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v21, 12, v22, "AVE_Session_HEVC_Prepare", v0, v6);
      v23 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 12, v27, "AVE_Session_HEVC_Prepare", v0, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v21, 12, v22, "AVE_Session_HEVC_Prepare", v0, v6);
    }
  }

  v24 = *MEMORY[0x29EDCA608];
  return v6;
}

uint64_t AVE_Session_HEVC_StartTileSession(uint64_t a1, unsigned int *a2)
{
  v90 = *MEMORY[0x29EDCA608];
  cf = 0;
  v88 = 0u;
  v89 = 0u;
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v4 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_StartTileSession", a1, a2);
      v7 = AVE_GetCurrTime();
      v76 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 12, v76, "AVE_Session_HEVC_StartTileSession", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_StartTileSession", a1, a2);
    }
  }

  if (a1 && a2)
  {
    if (*a2 < 1 || a2[1] <= 0)
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v26 = AVE_Log_CheckConsole(0xCu);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v29 = *a2;
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d\n", v27, 12, v28, "AVE_Session_HEVC_StartTileSession", 8842, "pDim->iWidth > 0 && pDim->iHeight > 0", a1, *(a1 + 56), *a2, a2[1]);
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          v30 = *(a1 + 56);
          v81 = *a2;
          v83 = a2[1];
        }

        else
        {
          v82 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | resolution is out of range %p %lld %dx%d", v27, 12, v28);
      }

      Mutable = 0;
      v31 = 4294965295;
      goto LABEL_49;
    }

    v8 = a1 + 104644;
    v9 = *(a1 + 104712);
    v10 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v9, 3u, v10);
    v11 = *a2;
    v12 = a2[1];
    *(a1 + 1440) = *a2;
    *(a1 + 1444) = v12;
    *(a1 + 11452) = v11;
    *(a1 + 11456) = v12;
    *(a1 + 764) = 2;
    MinResolution = AVE_Enc_GetMinResolution(*(a1 + 68), 1, 2);
    AVE_PrepareCropParams(a1);
    v14 = *(a1 + 1440);
    v15 = MinResolution[1];
    if (v14 <= *MinResolution)
    {
      v16 = *MinResolution;
    }

    else
    {
      v16 = v14;
    }

    v17 = *(a1 + 1444);
    if (v17 <= v15)
    {
      v18 = v15;
    }

    else
    {
      v18 = v17;
    }

    AVE_SetEncoderDefault(a1);
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v84 = v18;
      v19 = AVE_Log_CheckConsole(0xCu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      if (v19)
      {
        printf("%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault\n", v20, 12, v21);
        v22 = AVE_GetCurrTime();
        v77 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v22, 12, v77);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_SetEncoderTileDefault", v20, 12, v21);
      }

      v8 = a1 + 104644;
      v18 = v84;
    }

    *(a1 + 10752) = 2;
    *(a1 + 10764) = 1;
    *(a1 + 10855) = *(a1 + 76) > 3;
    *(a1 + 10788) = 4;
    *(a1 + 59393) = 257;
    *(a1 + 39892) = 2;
    *(a1 + 39924) = 2;
    *(a1 + 10808) = 1;
    *(a1 + 1464) = 0;
    *(a1 + 1252) = 1;
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    v33 = *(a1 + 1240);
    *(a1 + 10176) = 2;
    *(a1 + 1132) = 3;
    *(a1 + 1144) = 0xF0000000FLL;
    *(a1 + 1152) = 15;
    *(a1 + 1112) = 0;
    *(a1 + 1352) = 30;
    *(a1 + 1448) |= 0x10000000uLL;
    v34 = *(a1 + 1336);
    *(a1 + 1120) |= 0x200000000uLL;
    *(a1 + 1356) |= 2u;
    *(a1 + 1336) = v34 & 0xFEFF7E89 | 0x1000000;
    *(a1 + 688) |= 0x100u;
    *(a1 + 10796) = 0x100000000;
    *(a1 + 1096) = 0;
    *(a1 + 42028) = 0;
    *(a1 + 60062) = 1;
    *(a1 + 39886) = 1;
    *(a1 + 10522) = 0;
    *(a1 + 1240) = v33 & 0xFFFFFAFF;
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v35 = v18;
      v36 = v16;
      v37 = v8;
      v38 = AVE_Log_CheckConsole(0xCu);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(7);
      if (v38)
      {
        printf("%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault\n", v39, 12, v40);
        v41 = AVE_GetCurrTime();
        v78 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v41, 12, v78);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_SetEncoderTileDefault", v39, 12, v40);
      }

      v8 = v37;
      v16 = v36;
      v18 = v35;
    }

    if (AVE_PixelBuf_CreateAttrDict(*(a1 + 68), *(a1 + 64), 62, 2, *a2, a2[1], v16, v18, 0x414C4C20u))
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v42 = AVE_Log_CheckConsole(0xCu);
        v43 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        v45 = *(a1 + 56);
        if (v42)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d\n", v43, 12, v44, "AVE_Session_HEVC_StartTileSession", 8878, "err == noErr", a1, *(a1 + 56), 0);
          v43 = AVE_GetCurrTime();
          v44 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create pixel buffer attribute %p %lld %d", v43, 12, v44, "AVE_Session_HEVC_StartTileSession", 8878, "err == noErr", a1, *(a1 + 56), 0);
      }

LABEL_47:
      Mutable = 0;
LABEL_48:
      v31 = 4294966296;
LABEL_49:
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_53;
    }

    if (*(a1 + 16) == 1)
    {
      if (AVE_Log_CheckLevel(0xCu, 7))
      {
        v54 = AVE_Log_CheckConsole(0xCu);
        v55 = AVE_GetCurrTime();
        v56 = AVE_Log_GetLevelStr(7);
        if (v54)
        {
          printf("%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK\n", v55, 12, v56);
          v57 = AVE_GetCurrTime();
          v79 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v57, 12, v79);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: FIG: session = FIGINTERNALSESSIONMARK", v55, 12, v56);
        }
      }
    }

    else
    {
      if (VTTileEncoderSessionSetTileAttributes())
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v46 = AVE_Log_CheckConsole(3u);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(4);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.\n", v47, 3, v48, "AVE_Session_HEVC_StartTileSession", 8895, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: VTTileEncoderSessionSetTileAttributes failed.");
        }

        goto LABEL_47;
      }

      if (*(a1 + 76) >= 4)
      {
        v85 = 2;
        valuePtr = 2;
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (!Mutable)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v72 = AVE_Log_CheckConsole(3u);
            v73 = AVE_GetCurrTime();
            v74 = AVE_Log_GetLevelStr(4);
            if (v72)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.\n", v73, 3, v74, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
              v75 = AVE_GetCurrTime();
              v80 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v75, 3, v80, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: CFDictionaryCreateMutable failed.", v73, 3, v74, "AVE_Session_HEVC_StartTileSession", 8905, "TileRequirements");
            }
          }

          v31 = 4294966293;
          goto LABEL_49;
        }

        v58 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBD1C8], v58);
        if (v58)
        {
          CFRelease(v58);
        }

        v59 = CFNumberCreate(0, kCFNumberSInt32Type, &v85);
        CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBD1D0], v59);
        if (v59)
        {
          CFRelease(v59);
        }

        if (*(a1 + 76) >= 12)
        {
          CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBD1C0], *MEMORY[0x29EDB8F00]);
        }

        v60 = *(a1 + 16);
        if (VTTileEncoderSessionSetTileEncodeRequirements())
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v61 = AVE_Log_CheckConsole(3u);
            v62 = AVE_GetCurrTime();
            v63 = AVE_Log_GetLevelStr(4);
            if (v61)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.\n", v62, 3, v63, "AVE_Session_HEVC_StartTileSession", 8930, "err == noErr", "AVE_Session_HEVC_StartTileSession", 8930);
              v62 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: %s:%d failed.", v62, 3);
          }

          goto LABEL_48;
        }

LABEL_77:
        *v8 = 30566;
        if (*(a1 + 16) == 1)
        {
          v64 = 1;
        }

        else
        {
          v64 = 3;
        }

        v65 = AVE_SEI::Init(*(v8 + 92), *(a1 + 56), 0, 0, 2, v64);
        if (v65)
        {
          v31 = v65;
          if (AVE_Log_CheckLevel(0xCu, 4))
          {
            v66 = AVE_Log_CheckConsole(0xCu);
            v67 = AVE_GetCurrTime();
            v68 = AVE_Log_GetLevelStr(4);
            if (v66)
            {
              printf("%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu\n", v67, 12, v68, "AVE_Session_HEVC_StartTileSession", 8948, "ret == 0", a1, *(a1 + 56));
              v67 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
              v69 = *(a1 + 56);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to initialize SEI instance %p %llu", v67, 12);
          }
        }

        else
        {
          v70 = *(v8 + 68);
          v71 = AVE_GetCurrTime();
          AVE_TimeStats_AddEndTime(v70, 3u, v71);
          v31 = 0;
        }

        goto LABEL_49;
      }
    }

    Mutable = 0;
    goto LABEL_77;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v23 = AVE_Log_CheckConsole(0xCu);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(4);
    if (v23)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v24, 12, v25, "AVE_Session_HEVC_StartTileSession", 8838, "pINS != __null && pDim != __null", a1, a2);
      v24 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v24, 12);
  }

  v31 = 4294966295;
LABEL_53:
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v49 = AVE_Log_CheckConsole(0xCu);
    v50 = AVE_GetCurrTime();
    v51 = AVE_Log_GetLevelStr(6);
    if (v49)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v50, 12, v51, "AVE_Session_HEVC_StartTileSession", a1, a2, v31);
      v50 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v50);
  }

  v52 = *MEMORY[0x29EDCA608];
  return v31;
}

uint64_t AVE_Session_HEVC_ProcessTile()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v140 = v1;
  theDict = v2;
  v4 = v3;
  v139 = v5;
  v7 = v6;
  v9 = v8;
  v142 = v0;
  v183 = *MEMORY[0x29EDCA608];
  pixelBuffer = v6;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v10 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v11 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_HEVC_ProcessTile", v142, v9, v7, v139, v140, v4, theDict);
      v14 = AVE_GetCurrTime();
      v121 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v14, 12, v121, "AVE_Session_HEVC_ProcessTile", v142);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_Session_HEVC_ProcessTile", v142);
    }
  }

  if (v4 && v140 && v142 && pixelBuffer)
  {
    v15 = (v142 + 104644);
    if (theDict && CFDictionaryContainsKey(theDict, @"SessionIndicator"))
    {
      AVE_TimeStats_Restart(*(v142 + 104712));
    }

    if (!*(v142 + 104648))
    {
      v28 = AVE_SEI::SetSEIBits(*(v142 + 104736), *(v142 + 1096));
      if (v28)
      {
        v29 = v28;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v30 = AVE_Log_CheckConsole(3u);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v31, 3, v32, "AVE_Session_HEVC_ProcessTile", 9013, "ret == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration");
        }

        goto LABEL_97;
      }

      v56 = *(v142 + 104712);
      v57 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v56, 5u, v57);
    }

    v138 = AVE_GetCurrTime();
    if (*(v142 + 1112) >= 1)
    {
      v16 = *(v142 + 1112);
    }

    else
    {
      v16 = 30;
    }

    v17 = (v142 + 106096);
    AVE_Time_Gen(v16, v142 + 106096);
    if (AVE_Log_CheckLevel(0x33u, 7))
    {
      v18 = AVE_Log_CheckConsole(0x33u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(7);
      v21 = *v17;
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d\n", v19, 51, v20, "AVE_Session_HEVC_ProcessTile", 9025, *(v142 + 56), *(v142 + 104648), *v17, *(v142 + 106104));
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(7);
        v134 = *v17;
        v137 = *(v142 + 106104);
        v129 = *(v142 + 56);
        v131 = *(v142 + 104648);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v22, 51, v23);
      }

      else
      {
        v135 = *v17;
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld / %d", v19, 51, v20);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v142 + 108000) = PixelFormatType;
    if (!*(v142 + 104648))
    {
      v166 = *(v142 + 1440);
      v34 = AVE_PixelFmt_FindByType(PixelFormatType);
      if (!v34)
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_96;
        }

        v58 = AVE_Log_CheckConsole(3u);
        v53 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(4);
        v60 = *(v142 + 56);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v53, 3, v59, "AVE_Session_HEVC_ProcessTile", 9040, "pPixelFmt != __null", v142, *(v142 + 56), *(v142 + 108000));
          v53 = AVE_GetCurrTime();
          v59 = AVE_Log_GetLevelStr(4);
        }

        v133 = *(v142 + 56);
        v136 = *(v142 + 108000);
        v130 = "pPixelFmt != __null";
        v132 = v142;
        v128 = 9040;
        v123 = v59;
        v55 = "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x";
        goto LABEL_77;
      }

      if (v10[420])
      {
        v35 = v10 + 420;
      }

      else
      {
        v35 = 0;
      }

      AVE_Dump_Init(*(v142 + 104720), v35, *(v142 + 64), *(v142 + 10772), *(v10 + 103), *(v10 + 104), &v166, 1, *(v34 + 3), *(v34 + 1), *(v142 + 1136));
      AVE_Dump_WriteInput(*(v142 + 104720), -1, pixelBuffer);
    }

    v36 = *v15;
    if (*v15 == 30566)
    {
      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v47 = 1;
      }

      else
      {
        v47 = 2;
      }

      *(v142 + 10804) = v47;
      v48 = AVE_ManageSessionSettings(v142);
      if (v48)
      {
        v29 = v48;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v49 = AVE_Log_CheckConsole(3u);
          v50 = AVE_GetCurrTime();
          v51 = AVE_Log_GetLevelStr(4);
          if (v49)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v50, 3, v51, "AVE_Session_HEVC_ProcessTile", 9134, "err == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed");
        }

        goto LABEL_97;
      }

      v43 = (v142 + 106096);
      v44 = v9;
      AVE_UpdateCropParams(v142, pixelBuffer);
      if (AVE_HEVC_VerifyImageBuffer(v142, &pixelBuffer, &v160, &v159, &v158 + 1, &v158, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v67 = AVE_Log_CheckConsole(3u);
          v38 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(4);
          if (!v67)
          {
LABEL_95:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.");
            goto LABEL_96;
          }

          v40 = v4;
          v41 = v9;
          v42 = 9144;
LABEL_73:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_HEVC_VerifyImageBuffer failed.\n", v38, 3, v39, "AVE_Session_HEVC_ProcessTile", v42, "err == noErr");
          AVE_GetCurrTime();
          v4 = v40;
          v9 = v41;
          AVE_Log_GetLevelStr(4);
          goto LABEL_95;
        }

LABEL_93:
        v29 = 4294966296;
        v9 = v44;
        goto LABEL_97;
      }

      AVE_SetEncoderBasedOnFirstFrame(v142, *(v142 + 10804) == 2);
      if (AVE_ValidateEncoderParameters(v142))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_93;
        }

        v73 = AVE_Log_CheckConsole(3u);
        v62 = AVE_GetCurrTime();
        v63 = AVE_Log_GetLevelStr(4);
        if (v73)
        {
          v64 = v4;
          v65 = v9;
          v66 = 9154;
          goto LABEL_92;
        }

LABEL_139:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        goto LABEL_96;
      }

      v68 = v4;
      AVE_PrepareVideoAndSequenceHeader(v142, pixelBuffer);
      AVE_PreparePictureHeader(v142);
      bzero(v171, 0x8C8uLL);
      v166 = v142 + 672;
      v167 = v142 + 1440;
      v169 = *(v142 + 104712);
      v170 = *(v142 + 104728);
      v168 = v142 + 10752;
      v173 = v142 + 12000;
      v174 = v142 + 24236;
      v176 = v142 + 39844;
      v175 = v142 + 32040;
      v177 = v142 + 49476;
      v178 = v142 + 59112;
      v179 = v142 + 80600;
      memcpy(v180, (v142 + 106112), sizeof(v180));
      v181 = v138;
      if (theDict && CFDictionaryContainsKey(theDict, @"ReconstructedPixelBuffer"))
      {
        *(v166 + 624) |= 0x100u;
      }

      if (AVE_USL_Drv_Start(*(v142 + 120), &v166, v142 + 128, *(v142 + 16), *(v142 + 112), *(v142 + 104652), *(v142 + 104656), v142 + 160, (v142 + 11772), (v142 + 11464)))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_96;
        }

        v80 = AVE_Log_CheckConsole(3u);
        v70 = AVE_GetCurrTime();
        v71 = AVE_Log_GetLevelStr(4);
        if (v80)
        {
          v72 = 9189;
          goto LABEL_113;
        }

LABEL_181:
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
        goto LABEL_96;
      }
    }

    else
    {
      if (v36 != 30567)
      {
        if (v36 == 30568)
        {
          if (AVE_HEVC_VerifyImageBuffer(v142, &pixelBuffer, &v160, &v159, &v158 + 1, &v158, 0))
          {
            if (AVE_Log_CheckLevel(3u, 4))
            {
              v37 = AVE_Log_CheckConsole(3u);
              v38 = AVE_GetCurrTime();
              v39 = AVE_Log_GetLevelStr(4);
              if (!v37)
              {
                goto LABEL_95;
              }

              v40 = v4;
              v41 = v9;
              v42 = 9059;
              goto LABEL_73;
            }

LABEL_96:
            v29 = 4294966296;
LABEL_97:
            if (v160 == 1 && pixelBuffer)
            {
              CVPixelBufferRelease(pixelBuffer);
            }

            ++*(v142 + 104648);
            goto LABEL_101;
          }

LABEL_115:
          *v15 = 30568;
          bzero(v162, 0x1738uLL);
          v156 = 0u;
          v157 = 0u;
          *&v153[16] = 0u;
          v154 = 0;
          v152 = 0u;
          *v153 = 0u;
          v150 = 0u;
          v151 = 0u;
          v149 = 0u;
          v148 = 0u;
          v147 = 0u;
          memset(v143, 0, sizeof(v143));
          *v144 = 0u;
          v145 = 0;
          bzero(&v166, 0x4A40uLL);
          v81 = pixelBuffer;
          v146[0] = v9;
          v146[1] = pixelBuffer;
          v155 = v162;
          *&v156 = v138;
          DWORD2(v156) = *(v142 + 104668);
          *&v153[8] = *v17;
          v154 = &v166;
          if (*(v142 + 10804) == 2)
          {
            AVE_ISP_GetMetadata(pixelBuffer, v143);
            AVE_Dump_WriteISPMetadata(*(v142 + 104720), *(v142 + 104668), *(v142 + 104648), v143);
            v81 = pixelBuffer;
          }

          *&v153[24] = v143;
          v82 = CMGetAttachment(v81, *MEMORY[0x29EDBFF98], 0);
          if (v82)
          {
            AVE_SEI::SetISPMetadata(*(v142 + 104736), *(v142 + 104648), v82);
          }

          AVE_SEI::SetDriverVersion(*(v142 + 104736), *(v142 + 104648));
          AVE_SEI::SetSessionID(*(v142 + 104736), *(v142 + 104648), *(v142 + 56));
          AVE_SEI::SetExposureTime(*(v142 + 104736), *(v142 + 104648), *&v143[1]);
          AVE_SEI::SetSNR(*(v142 + 104736), *(v142 + 104648), *v143);
          AVE_SEI::SetLuxLevel(*(v142 + 104736), *(v142 + 104648), v144[1]);
          AVE_SEI::SetPTS(*(v142 + 104736), *(v142 + 104648), v140[2], *v140);
          if (AVE_Log_CheckLevel(0xCu, 7))
          {
            v83 = AVE_Log_CheckConsole(0xCu);
            v84 = AVE_GetCurrTime();
            v85 = AVE_Log_GetLevelStr(7);
            if (v83)
            {
              printf("%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData\n", v84, 12, v85);
              v86 = AVE_GetCurrTime();
              v125 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v86, 12, v125);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: ENTER AVE_GetPerTileData", v84, 12, v85);
            }
          }

          v171[1301] = *(v142 + 10788) == 4;
          v87 = *(v142 + 10808);
          v171[1305] = *(v142 + 10845);
          *(v142 + 10845) = 0;
          v171[1306] = *(v142 + 10204);
          v172 = v87;
          DWORD2(v169) = 0;
          *&v169 = 0;
          if (theDict)
          {
            if (CFDictionaryContainsKey(theDict, @"SessionIndicator"))
            {
              AVE_TimeStats_Restart(*(v142 + 104712));
            }

            Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCF18]);
            DWORD2(v169) = 0;
            *&v169 = 0;
            v165 &= ~0x10000u;
            if (*(v142 + 1338))
            {
              v89 = Value;
              if (Value)
              {
                DWORD2(v169) = CFDataGetLength(Value);
                *&v169 = CFDataGetBytePtr(v89);
                v165 |= 0x10000u;
              }
            }

            v90 = CFDictionaryGetValue(theDict, @"ForceNonRefFrame");
            v91 = MEMORY[0x29EDB8F00];
            if (v90 && CFEqual(v90, *MEMORY[0x29EDB8F00]))
            {
              v164 |= 2u;
            }

            else
            {
              v92 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCED0]);
              if (v92 && CFEqual(v92, *v91))
              {
                if (*(v142 + 10532))
                {
                  v93 = 3;
                }

                else
                {
                  v93 = (*(v142 + 1241) & 1) != 0 ? 1 : 2;
                }

                LODWORD(v166) = v93;
                v163 |= 1u;
                if (AVE_Log_CheckLevel(0x1Du, 6))
                {
                  v94 = AVE_Log_CheckConsole(0x1Du);
                  v95 = AVE_GetCurrTime();
                  v96 = AVE_Log_GetLevelStr(6);
                  if (v94)
                  {
                    printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v95, 29, v96, v166, v163);
                    v95 = AVE_GetCurrTime();
                    v96 = AVE_Log_GetLevelStr(6);
                  }

                  syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v95, 29, v96, v166, v163);
                }
              }
            }

            if (*(v142 + 1297))
            {
              v97 = CFDictionaryGetValue(theDict, @"ReconstructedPixelBuffer");
              if (!v97)
              {
                if (AVE_Log_CheckLevel(3u, 4))
                {
                  v115 = AVE_Log_CheckConsole(3u);
                  v116 = AVE_GetCurrTime();
                  v117 = AVE_Log_GetLevelStr(4);
                  if (v115)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | AVE ERR: failed to get ReconstructedPixelBuffer %p\n", v116, 3, v117, "AVE_GetPerTileData", 8560, "pUseReconBuffer != __null", 0);
                    v116 = AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: failed to get ReconstructedPixelBuffer %p", v116);
                }

                v98 = 0;
LABEL_150:
                if (AVE_Log_CheckLevel(0xCu, 7))
                {
                  v99 = AVE_Log_CheckConsole(0xCu);
                  v100 = AVE_GetCurrTime();
                  v101 = AVE_Log_GetLevelStr(7);
                  if (v99)
                  {
                    printf("%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData\n", v100, 12, v101);
                    v102 = AVE_GetCurrTime();
                    v126 = AVE_Log_GetLevelStr(7);
                    syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v102, 12, v126);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: FIG: EXIT AVE_GetPerTileData", v100, 12, v101);
                  }
                }

                if (v98)
                {
                  if (AVE_GetTileInfo(v142, &v166, v139))
                  {
                    if (AVE_Log_CheckLevel(3u, 4))
                    {
                      v103 = AVE_Log_CheckConsole(3u);
                      v104 = AVE_GetCurrTime();
                      v105 = AVE_Log_GetLevelStr(4);
                      if (v103)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.\n", v104, 3, v105, "AVE_Session_HEVC_ProcessTile", 9266, "err == noErr");
                        AVE_GetCurrTime();
                        AVE_Log_GetLevelStr(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetTileInfo failed.");
                    }
                  }

                  else
                  {
                    *(&v157 + 1) = *(v142 + 104648);
                    if (v159)
                    {
                      v109 = pixelBuffer;
                    }

                    else
                    {
                      v109 = 0;
                    }

                    *(&v149 + 1) = v109;
                    v110 = AVE_USL_Drv_Process(*(v142 + 120), v146);
                    v29 = v110;
                    if (!v110)
                    {
                      goto LABEL_97;
                    }

                    if (v110 == -536870173)
                    {
                      if (AVE_Log_CheckLevel(0x10u, 5))
                      {
                        v111 = AVE_Log_CheckConsole(0x10u);
                        v112 = AVE_GetCurrTime();
                        v113 = AVE_Log_GetLevelStr(5);
                        if (v111)
                        {
                          printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v112, 16, v113);
                          v114 = AVE_GetCurrTime();
                          v127 = AVE_Log_GetLevelStr(5);
                          syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame", v114, 16, v127);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame", v112, 16, v113);
                        }
                      }

                      v29 = 0;
                      goto LABEL_97;
                    }

                    if (AVE_Log_CheckLevel(3u, 4))
                    {
                      v118 = AVE_Log_CheckConsole(3u);
                      v119 = AVE_GetCurrTime();
                      v120 = AVE_Log_GetLevelStr(4);
                      if (v118)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v119, 3, v120, "AVE_Session_HEVC_ProcessTile", 9290, "err == noErr");
                        AVE_GetCurrTime();
                        AVE_Log_GetLevelStr(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
                    }
                  }
                }

                else if (AVE_Log_CheckLevel(3u, 4))
                {
                  v106 = AVE_Log_CheckConsole(3u);
                  v107 = AVE_GetCurrTime();
                  v108 = AVE_Log_GetLevelStr(4);
                  if (v106)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerTileData failed.\n", v107, 3, v108, "AVE_Session_HEVC_ProcessTile", 9261, "err == noErr");
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_GetPerTileData failed.");
                }

                goto LABEL_96;
              }

              v182 = v97;
            }
          }

          v98 = 1;
          goto LABEL_150;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_96;
        }

        v52 = AVE_Log_CheckConsole(3u);
        v53 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v53, 3, v54, "AVE_Session_HEVC_ProcessTile", 9196, "false", *v15);
          v53 = AVE_GetCurrTime();
          v54 = AVE_Log_GetLevelStr(4);
          v130 = "false";
          v132 = *v15;
          v128 = 9196;
        }

        else
        {
          v132 = *v15;
          v128 = 9196;
          v130 = "false";
        }

        v123 = v54;
        v55 = "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.";
LABEL_77:
        syslog(3, v55, v53, 3, v123, "AVE_Session_HEVC_ProcessTile", v128, v130, v132, v133, v136);
        goto LABEL_96;
      }

      v43 = (v142 + 106096);
      v44 = v9;
      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }

      *(v142 + 10804) = v45;
      AVE_UpdateCropParams(v142, pixelBuffer);
      if (AVE_HEVC_VerifyImageBuffer(v142, &pixelBuffer, &v160, &v159, &v158 + 1, &v158, 1))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v46 = AVE_Log_CheckConsole(3u);
          v38 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(4);
          if (!v46)
          {
            goto LABEL_95;
          }

          v40 = v4;
          v41 = v9;
          v42 = 9076;
          goto LABEL_73;
        }

        goto LABEL_93;
      }

      AVE_SetEncoderBasedOnFirstFrame(v142, *(v142 + 10804) == 2);
      if (AVE_ValidateEncoderParameters(v142))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_93;
        }

        v61 = AVE_Log_CheckConsole(3u);
        v62 = AVE_GetCurrTime();
        v63 = AVE_Log_GetLevelStr(4);
        if (v61)
        {
          v64 = v4;
          v65 = v9;
          v66 = 9084;
LABEL_92:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v62, 3, v63, "AVE_Session_HEVC_ProcessTile", v66, "err == noErr");
          AVE_GetCurrTime();
          v4 = v64;
          v9 = v65;
          AVE_Log_GetLevelStr(4);
          goto LABEL_139;
        }

        goto LABEL_139;
      }

      v68 = v4;
      AVE_PrepareVideoAndSequenceHeader(v142, pixelBuffer);
      AVE_PreparePictureHeader(v142);
      bzero(v171, 0x8C8uLL);
      v166 = v142 + 672;
      v167 = v142 + 1440;
      v169 = *(v142 + 104712);
      v170 = *(v142 + 104728);
      v168 = v142 + 10752;
      v173 = v142 + 12000;
      v174 = v142 + 24236;
      v176 = v142 + 39844;
      v175 = v142 + 32040;
      v177 = v142 + 49476;
      v178 = v142 + 59112;
      v179 = v142 + 80600;
      memcpy(v180, (v142 + 106112), sizeof(v180));
      v181 = v138;
      if (theDict && CFDictionaryContainsKey(theDict, @"ReconstructedPixelBuffer"))
      {
        *(v166 + 624) |= 0x100u;
      }

      if (AVE_USL_Drv_Start(*(v142 + 120), &v166, v142 + 128, *(v142 + 16), *(v142 + 112), *(v142 + 104652), *(v142 + 104656), v142 + 160, (v142 + 11772), (v142 + 11464)))
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_96;
        }

        v69 = AVE_Log_CheckConsole(3u);
        v70 = AVE_GetCurrTime();
        v71 = AVE_Log_GetLevelStr(4);
        if (v69)
        {
          v72 = 9120;
LABEL_113:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v70, 3, v71, "AVE_Session_HEVC_ProcessTile", v72, "err == noErr");
          AVE_GetCurrTime();
          v4 = v68;
          v9 = v44;
          AVE_Log_GetLevelStr(4);
          goto LABEL_181;
        }

        goto LABEL_181;
      }
    }

    v17 = v43;
    goto LABEL_115;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v24 = AVE_Log_CheckConsole(0xCu);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(4);
    if (v24)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v25, 12, v26, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v142, v9, pixelBuffer, v139, v140, v4, theDict);
      v27 = AVE_GetCurrTime();
      v122 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v27, 12, v122, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v142);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v25, 12, v26, "AVE_Session_HEVC_ProcessTile", 8999, "pINS != __null && imageBuffer != __null && pPTS != __null && pDuration != __null", v142);
    }
  }

  v29 = 4294966295;
LABEL_101:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v74 = AVE_Log_CheckConsole(0xCu);
    v75 = AVE_GetCurrTime();
    v76 = AVE_Log_GetLevelStr(7);
    if (v74)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v75, 12, v76, "AVE_Session_HEVC_ProcessTile", v142, v9, pixelBuffer, v139, v140, v4, theDict, v29);
      v77 = AVE_GetCurrTime();
      v124 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v77, 12, v124, "AVE_Session_HEVC_ProcessTile", v142, v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v75, 12, v76, "AVE_Session_HEVC_ProcessTile", v142, v9);
    }
  }

  v78 = *MEMORY[0x29EDCA608];
  return v29;
}

uint64_t AVE_GetTileInfo(int32x2_t *a1, uint64_t a2, unsigned int *a3)
{
  v6 = &a1[1271] + 3;
  v7 = *a3;
  v8 = *(a3 + 2);
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v9 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v12 = a1[1358].u32[1];
    v13 = a1[1359].i32[0];
    if (v9)
    {
      printf("%lld %d AVE %s: FIG: Pixelbuffer width %d height %d\n", CurrTime, 12, LevelStr, a1[1358].i32[1], v13);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: FIG: Pixelbuffer width %d height %d", v14, 12, v15, a1[1358].i32[1], a1[1359].i32[0]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: Pixelbuffer width %d height %d", CurrTime, 12, LevelStr, a1[1358].i32[1], v13);
    }
  }

  v16 = v6[684];
  v17 = *a3;
  if (v6[684])
  {
    v18 = a3[1];
    goto LABEL_7;
  }

  if (v17 != ((v17 + 63) & 0xFFFFFFC0))
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294966296;
    }

    v29 = AVE_Log_CheckConsole(3u);
    v26 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned\n", v26, 3, v30, "AVE_GetTileInfo", 8588, "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))", *a3);
      v26 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      v107 = "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))";
      v110 = *a3;
      v104 = 8588;
    }

    else
    {
      v110 = *a3;
      v104 = 8588;
      v107 = "pRect->iX == (((pRect->iX) + (64) - 1) & ~((64) - 1))";
    }

    v100 = v30;
    v28 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x = %d not aligned";
    goto LABEL_66;
  }

  v18 = a3[1];
  if (v18 != ((v18 + 15) & 0xFFFFFFF0))
  {
    if (!AVE_Log_CheckLevel(3u, 4))
    {
      return 4294966296;
    }

    v25 = AVE_Log_CheckConsole(3u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(4);
    if (v25)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned\n", v26, 3, v27, "AVE_GetTileInfo", 8591, "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))", a3[1]);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      v107 = "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))";
      v110 = a3[1];
      v104 = 8591;
    }

    else
    {
      v110 = a3[1];
      v104 = 8591;
      v107 = "pRect->iY == (((pRect->iY) + (16) - 1) & ~((16) - 1))";
    }

    v100 = v27;
    v28 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y = %d not aligned";
LABEL_66:
    syslog(3, v28, v26, 3, v100, "AVE_GetTileInfo", v104, v107, v110);
    return 4294966296;
  }

LABEL_7:
  v19 = vadd_s32(v8, v7);
  v20 = *&vadd_s32(v8, 0xF0000000FLL) & 0xFFFFFFF0FFFFFFF0;
  *(a2 + 552) = v17;
  *(a2 + 556) = v18;
  v132 = v20;
  if (a1[9].i32[1] < 12)
  {
    *(a2 + 560) = *(v6 + 697);
    v24 = v19.i32[0];
    v23 = v19.u32[1];
  }

  else if (v16)
  {
    v21 = vceq_s32(a1[180], v20);
    v22 = *(v6 + 697);
    *(a2 + 560) = vbsl_s8(v21, v22, vmin_u32(v19, v22));
    v23 = v22.u32[1];
    v24 = v22.i32[0];
  }

  else
  {
    v31 = a1[1358].u32[1];
    if (v19.i32[0] <= v31)
    {
      v32 = a3[2];
    }

    else
    {
      v32 = v31 - v17;
    }

    *(a2 + 560) = v32;
    v24 = v32 + v17;
    v33 = a1[1359].u32[0];
    if (v19.i32[1] <= v33)
    {
      v34 = a3[3];
    }

    else
    {
      v34 = v33 - v18;
    }

    *(a2 + 564) = v34;
    v23 = v34 + v18;
  }

  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v35 = AVE_Log_CheckConsole(0xCu);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(7);
    v38 = a1[180].u32[0];
    if (v35)
    {
      printf("%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n\n", v36, 12, v37, v38, a1[180].i32[1], a1[1358].i32[1], a1[1359].i32[0], v132, HIDWORD(v132), *(a2 + 560), *(a2 + 564), v24, v23);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(7);
      v122 = *(a2 + 560);
      v127 = *(a2 + 564);
      v108 = a1[1358].u32[1];
      v111 = a1[1359].u32[0];
      v105 = a1[180].u32[1];
      syslog(3, "%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n", v39, 12, v40, a1[180].u32[0]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: Tile: %d %d | %u %u | %d %d | %d %d | %d %d\n", v36, 12, v37, v38);
    }
  }

  if (v6[33] != 1)
  {
    if (*v6)
    {
      v52 = a1[1274].i32[0] == 10;
      if ((v24 << v52) > a1[1358].i32[0])
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          return 4294966296;
        }

        v53 = AVE_Log_CheckConsole(3u);
        v54 = AVE_GetCurrTime();
        v55 = AVE_Log_GetLevelStr(4);
        v56 = a3[2];
        if (v53)
        {
          v57 = 8711;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v54, 3, v55, "AVE_GetTileInfo", 8711, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], a1[1358].i32[0]);
LABEL_47:
          v54 = AVE_GetCurrTime();
          v60 = AVE_Log_GetLevelStr(4);
          v116 = a3[2];
          v120 = a1[1358].u32[0];
          v109 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
          v112 = *a3;
          v106 = v57;
          v102 = v60;
          v61 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
          goto LABEL_98;
        }

        v116 = a3[2];
        v120 = a1[1358].u32[0];
        v112 = *a3;
        v99 = 8711;
        goto LABEL_97;
      }

      if (v23 > a1[1359].i32[0])
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          return 4294966296;
        }

        v66 = AVE_Log_CheckConsole(3u);
        v54 = AVE_GetCurrTime();
        v67 = AVE_Log_GetLevelStr(4);
        v68 = a3[3];
        if (v66)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)\n", v54, 3, v67, "AVE_GetTileInfo", 8716, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], a1[1359].i32[0]);
          v54 = AVE_GetCurrTime();
          v67 = AVE_Log_GetLevelStr(4);
          v116 = a3[3];
          v120 = a1[1359].u32[0];
          v109 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
          v112 = a3[1];
          v106 = 8716;
        }

        else
        {
          v116 = a3[3];
          v120 = a1[1359].u32[0];
          v112 = a3[1];
          v106 = 8716;
          v109 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        }

        v102 = v67;
        v61 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height (%u)";
LABEL_98:
        syslog(3, v61, v54, 3, v102, "AVE_GetTileInfo", v106, v109, v112, v116, v120, v121, v126, v131);
        return 4294966296;
      }

      result = 0;
      v73 = a3[1];
      v74 = *a3 << v52;
    }

    else
    {
      if (((2 * ((2863311531u * (v24 + 2)) >> 32)) & 0xFFFFFFFC) > a1[1358].i32[0])
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          return 4294966296;
        }

        v58 = AVE_Log_CheckConsole(3u);
        v54 = AVE_GetCurrTime();
        v55 = AVE_Log_GetLevelStr(4);
        v59 = a3[2];
        if (v58)
        {
          v57 = 8691;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)\n", v54, 3, v55, "AVE_GetTileInfo", 8691, "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride", *a3, a3[2], a1[1358].i32[0]);
          goto LABEL_47;
        }

        v116 = a3[2];
        v120 = a1[1358].u32[0];
        v112 = *a3;
        v99 = 8691;
LABEL_97:
        v106 = v99;
        v109 = "stride <= pINS->VideoParamsDriver.pixelBuffer.Stride";
        v102 = v55;
        v61 = "%lld %d AVE %s: %s:%d %s | AVE ERR: x(%d) + width(%d) > buffer stride(%u)";
        goto LABEL_98;
      }

      if (v23 > a1[1359].i32[0])
      {
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          return 4294966296;
        }

        v69 = AVE_Log_CheckConsole(3u);
        v54 = AVE_GetCurrTime();
        v70 = AVE_Log_GetLevelStr(4);
        v71 = a3[3];
        if (v69)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height(%u)\n", v54, 3, v70, "AVE_GetTileInfo", 8696, "height <= pINS->VideoParamsDriver.pixelBuffer.Height", a3[1], a3[3], a1[1359].i32[0]);
          v54 = AVE_GetCurrTime();
          v70 = AVE_Log_GetLevelStr(4);
          v116 = a3[3];
          v120 = a1[1359].u32[0];
          v109 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
          v112 = a3[1];
          v106 = 8696;
        }

        else
        {
          v116 = a3[3];
          v120 = a1[1359].u32[0];
          v112 = a3[1];
          v106 = 8696;
          v109 = "height <= pINS->VideoParamsDriver.pixelBuffer.Height";
        }

        v102 = v70;
        v61 = "%lld %d AVE %s: %s:%d %s | AVE ERR: y(%d) + height(%d) > buffer height(%u)";
        goto LABEL_98;
      }

      result = 0;
      v73 = a3[1];
      v74 = (*a3 / 48) << 6;
    }

    *(a2 + 544) = v74;
    *(a2 + 548) = v73;
    return result;
  }

  if (a1[9].i32[1] < 12)
  {
LABEL_103:
    result = 0;
    *(a2 + 544) = 0;
    return result;
  }

  v41.i32[0] = a1[1358].i32[1];
  v41.i32[1] = *(a2 + 560);
  v42 = vadd_s32(v41, 0x1F0000001FLL);
  v43.i32[0] = a1[1359].i32[0];
  v43.i32[1] = *(a2 + 564);
  v44 = vadd_s32(v43, 0x1F0000001FLL);
  v45 = vand_s8(vmin_u32(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v44, 5uLL))), vbic_s8(vsub_s32(0x2000000020, vclz_s32(vsra_n_u32(-1, v42, 5uLL))), vcgt_u32(0x4000000040, v42))), vcgt_u32(v44, 0x3F0000003FLL));
  v46 = v45.i32[1];
  v47 = v45.i32[0];
  if (v45.i32[0] == v45.i32[1])
  {
    if (AVE_Log_CheckLevel(0xCu, 7))
    {
      v48 = AVE_Log_CheckConsole(0xCu);
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(7);
      if (v48)
      {
        printf("%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d\n", v49, 12, v50, v47, v47);
        v51 = AVE_GetCurrTime();
        v101 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d", v51, 12, v101, v47, v47);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsLuma %d uiEncodedRegionTwiddleBitsLuma %d", v49, 12, v50, v47, v47);
      }
    }

    v75 = a1[3086].i32[0];
    if (v75 > 3)
    {
      v78 = 0;
      v77 = 0;
    }

    else
    {
      v76 = (&gc_iaAVE_SubC + 8 * v75);
      v78 = *v76;
      v77 = v76[1];
    }

    v79 = a1[1358].i32[1] / v78 + 15;
    v80 = 32 - __clz((v79 >> 4) - 1);
    if (v79 >= 0x20)
    {
      v81 = v80;
    }

    else
    {
      v81 = 0;
    }

    v82 = a1[1359].i32[0] / v77 + 15;
    v83 = 32 - __clz((v82 >> 4) - 1);
    if (v83 < v81)
    {
      v81 = v83;
    }

    if (v82 <= 0x1F)
    {
      v84 = 0;
    }

    else
    {
      v84 = v81;
    }

    v85 = *(a2 + 560) / v78 + 15;
    v86 = 32 - __clz((v85 >> 4) - 1);
    if (v85 >= 0x20)
    {
      v87 = v86;
    }

    else
    {
      v87 = 0;
    }

    v88 = *(a2 + 564) / v77 + 15;
    v89 = 32 - __clz((v88 >> 4) - 1);
    if (v89 < v87)
    {
      v87 = v89;
    }

    if (v88 <= 0x1F)
    {
      v90 = 0;
    }

    else
    {
      v90 = v87;
    }

    if (v84 == v90)
    {
      if (AVE_Log_CheckLevel(0xCu, 7))
      {
        v91 = AVE_Log_CheckConsole(0xCu);
        v92 = AVE_GetCurrTime();
        v93 = AVE_Log_GetLevelStr(7);
        if (v91)
        {
          printf("%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d\n", v92, 12, v93, v84, v84);
          v94 = AVE_GetCurrTime();
          v103 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d", v94, 12, v103, v84, v84);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: uiPixelBufferTwiddleBitsChroma %d uiEncodedRegionTwiddleBitsChroma %d", v92, 12, v93, v84, v84);
        }
      }

      goto LABEL_103;
    }

    if (AVE_Log_CheckLevel(3u, 4))
    {
      v95 = AVE_Log_CheckConsole(3u);
      v63 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(4);
      v96 = *(a2 + 564);
      if (v95)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d \n", v63, 3, v64, "AVE_GetTileInfo", 8677, "uiPixelBufferTwiddleBitsChroma == uiEncodedRegionTwiddleBitsChroma", a1[1358].i32[1], a1[1359].i32[0], v84, *(a2 + 560), *(a2 + 564), v90);
        goto LABEL_94;
      }

      v130 = *(a2 + 564);
      v125 = *(a2 + 560);
      v115 = a1[1358].u32[1];
      v119 = a1[1359].u32[0];
      goto LABEL_105;
    }
  }

  else if (AVE_Log_CheckLevel(3u, 4))
  {
    v62 = AVE_Log_CheckConsole(3u);
    v63 = AVE_GetCurrTime();
    v64 = AVE_Log_GetLevelStr(4);
    v65 = *(a2 + 564);
    if (v62)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d \n", v63, 3, v64, "AVE_GetTileInfo", 8663, "uiPixelBufferTwiddleBitsLuma == uiEncodedRegionTwiddleBitsLuma", a1[1358].i32[1], a1[1359].i32[0], v47, *(a2 + 560), *(a2 + 564), v46);
LABEL_94:
      v97 = AVE_GetCurrTime();
      v98 = AVE_Log_GetLevelStr(4);
      v128 = *(a2 + 564);
      v123 = *(a2 + 560);
      v113 = a1[1358].u32[1];
      v117 = a1[1359].u32[0];
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d ", v97, 3, v98);
      return 4294966296;
    }

    v129 = *(a2 + 564);
    v124 = *(a2 + 560);
    v114 = a1[1358].u32[1];
    v118 = a1[1359].u32[0];
LABEL_105:
    syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERR: Encoded region of compressed buffer is not within correct size. (%d ,%d)%d | (%d, %d)%d ", v63, 3, v64);
  }

  return 4294966296;
}

uint64_t AVE_Session_HEVC_Create(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 104636;
  v5 = (a1 + 760);
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xCu, 6))
  {
    v7 = AVE_Log_CheckConsole(0xCu);
    v8 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p 0x%llx\n", v8, 12, LevelStr, "AVE_Session_HEVC_Create", a1, a2);
      v10 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v10, 12, v26, "AVE_Session_HEVC_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p 0x%llx", v8, 12, LevelStr, "AVE_Session_HEVC_Create", a1, a2);
    }
  }

  v11 = AVE_DW_Get();
  *(a1 + 64) = 1;
  *v4 = 2;
  *(a1 + 1256) = -1;
  *(a1 + 10772) = 2;
  *(a1 + 10556) = 0x100000001;
  *(a1 + 776) = 1;
  *v5 = xmmword_295650C00;
  *(a1 + 712) = v11[103];
  v12 = AVE_USL_Drv_Create(1, 2);
  if (!v12)
  {
    *(a1 + 68) = AVE_USL_Drv_GetDevID(*(a1 + 120));
    *(a1 + 72) = AVE_USL_Drv_GetDevRevision(*(a1 + 120));
    *(a1 + 56) = AVE_USL_Drv_GetClientID(*(a1 + 120));
    *(a1 + 76) = *(AVE_DevCap_Find(*(a1 + 68)) + 1);
    AVE_Prop_Cfg_HEVC_Init(a1 + 106112, *(a1 + 56));
    operator new();
  }

  v13 = v12;
  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v14 = AVE_Log_CheckConsole(0xCu);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d\n", v15, 12, v16, "AVE_Session_HEVC_Create", 9358, "ret == 0", a1, 0, v13);
      v17 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d", v17, 12, v27);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to open HEVC %p %lld %d", v15, 12, v16);
    }
  }

  v18 = *(v4 + 68);
  if (v18)
  {
    AVE_FPS::~AVE_FPS(v18);
    MEMORY[0x29C24E920]();
    *(v4 + 68) = 0;
  }

  v19 = *(v4 + 100);
  if (v19)
  {
    AVE_SEI::~AVE_SEI(v19);
    MEMORY[0x29C24E920]();
    *(v4 + 100) = 0;
  }

  v20 = AVE_GetCurrTime() - CurrTime;
  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v21 = AVE_Log_CheckConsole(0xCu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d\n", v22, 12, v23, "AVE_Session_HEVC_Create", a1, a2, 0, v20, v13);
      v24 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v24, 12, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p 0x%llx %lld %lld %d", v22, 12, v23);
    }
  }

  return v13;
}

void AVE_NewDefaultsBasedOnProfileUsageDefault(uint64_t a1)
{
  v2 = AVE_DW_Get();
  v3 = v2[221];
  if (v3 <= 3)
  {
    *(a1 + 1256) = v3;
  }

  v4 = v2[220];
  if ((v4 & 0x80000000) == 0)
  {
    *(a1 + 1252) = v4;
  }

  v5 = v2[223];
  if (v5 >= 1)
  {
    *(a1 + 1288) = v5;
  }

  v6 = v2[232];
  if (v6 >= 1)
  {
    *(a1 + 1308) = v6;
  }

  v7 = v2[233];
  if (v7 >= 1)
  {
    *(a1 + 1312) = v7;
  }

  if (*(a1 + 1256) < 1)
  {
    *(a1 + 1256) = 0x100000000;
    *(a1 + 1288) = 1;
    *(a1 + 1240) &= ~0x400u;
    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v12 = AVE_Log_CheckConsole(0x1Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      if (v12)
      {
        printf("%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF\n", CurrTime, 30, LevelStr);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: FIG: FIGAllowFrameReordering OFF");
    }
  }

  else
  {
    if (*(a1 + 1132) != 20)
    {
      *(a1 + 10764) = 1;
    }

    if (AVE_Log_CheckLevel(0x1Eu, 6))
    {
      v8 = AVE_Log_CheckConsole(0x1Eu);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(6);
      v11 = *(a1 + 1256);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)\n", v9, 30, v10, "AVE_HEVCNewDefaultsBasedOnProfileUsageDefault", 5512, *(a1 + 1256), *(a1 + 107716));
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d AllowFrameReordering ON -> B will be = %d (NumberOfBFrames %d)", v9, 30, v10, "AVE_HEVCNewDefaultsBasedOnProfileUsageDefault", 5512, *(a1 + 1256), *(a1 + 107716));
    }
  }

  *(a1 + 39880) = *(a1 + 1144) - 26;
  if (*(a1 + 1338))
  {
    *(a1 + 39886) = 1;
    *(a1 + 10205) = 0;
  }

  if (*(a1 + 39959) == 1)
  {
    *(a1 + 1132) = 3;
    *(a1 + 10764) = 1;
    *(a1 + 1464) = 0;
    *(a1 + 1352) = 0;
    *(a1 + 1240) &= ~0x400u;
    v15 = *(a1 + 24732);
    *(a1 + 39886) = 0;
    v15 *= -6;
    *(a1 + 1348) = v15;
    *(a1 + 1344) = v15;
    *(a1 + 1152) = v15;
    *(a1 + 1148) = v15;
    *(a1 + 1144) = v15;
    *(a1 + 1232) = *(a1 + 1344);
    *(a1 + 1336) = 0;
    *(a1 + 10604) = 0;
  }
}

void H9EncoderRegister()
{
  v0 = AVE_UC_Verify();
  if (!v0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v2 = Mutable;
      v3 = *MEMORY[0x29EDB8F00];
      CFDictionaryAddValue(Mutable, *MEMORY[0x29EDBD1E0], *MEMORY[0x29EDB8F00]);
      CFDictionaryAddValue(v2, *MEMORY[0x29EDBD1E8], v3);
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v2);
      if (MutableCopy)
      {
        v5 = MutableCopy;
        CFDictionaryAddValue(v2, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.hevc");
        v0 = VTRegisterVideoEncoderWithInfo();
        if (!v0)
        {
          CFDictionaryAddValue(v5, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.ohvc");
          CFDictionaryAddValue(v5, *MEMORY[0x29EDBD1D8], v3);
          v0 = VTRegisterVideoEncoderWithInfo();
        }

        CFRelease(v2);
      }

      else
      {
        v0 = 0;
        v5 = v2;
      }

      CFRelease(v5);
    }

    else
    {
      v0 = 0;
    }
  }

  if (AVE_Log_CheckLevel(2u, 5))
  {
    v6 = AVE_Log_CheckConsole(2u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(5);
    if (v6)
    {
      printf("%lld %d AVE %s: Register HEVC video encoder of AVE %d\n", CurrTime, 2, LevelStr, v0);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: Register HEVC video encoder of AVE %d", v9, 2, v10, v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Register HEVC video encoder of AVE %d", CurrTime, 2, LevelStr, v0);
    }
  }
}

uint64_t AVE_MCTF_Retrieve(const __CFArray *a1, _DWORD *a2)
{
  v57[0] = 0;
  v56 = 0;
  v55 = 0;
  Count = CFArrayGetCount(a1);
  if (a1 && a2)
  {
    v5 = 0;
    v6 = Count >> 1;
    *(a2 + 6) = 0u;
    *(a2 + 7) = 0u;
    *(a2 + 4) = 0u;
    *(a2 + 5) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
    v7 = 1;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    while (1)
    {
      v8 = v7;
      v9 = v5 * v6;
      if (!AVE_CFArray_GetChar(a1, (v5 * v6), &v55))
      {
        break;
      }

      *a2 = v55;
      if (!AVE_CFArray_GetChar(a1, (v9 + 1), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v39 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v39)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 94, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[1] = v55;
      if (!AVE_CFArray_GetChar(a1, (v9 + 2), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v40 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 99, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[2] = v55;
      if (!AVE_CFArray_GetChar(a1, (v9 + 3), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v41 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v41)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 104, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[3] = v55;
      if (!AVE_CFArray_GetChar(a1, (v9 + 4), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v42 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v42)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 109, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[4] = v55;
      if (!AVE_CFArray_GetChar(a1, (v9 + 5), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v43 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 114, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[5] = v55;
      if (!AVE_CFArray_GetChar(a1, (v9 + 6), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v44 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 119, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[6] = v55;
      if (!AVE_CFArray_GetChar(a1, (v9 + 7), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v45 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 124, "ret != 0", a1, a2, v55);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      a2[7] = v55;
      if (!AVE_CFArray_GetSInt16(a1, (v9 + 8), &v56))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v46 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 129, "ret != 0", a1, a2, v56);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        goto LABEL_81;
      }

      a2[8] = v56;
      if (!AVE_CFArray_GetChar(a1, (v9 + 9), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v47 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v47)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 134, "ret != 0", a1, a2, v55);
LABEL_80:
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        goto LABEL_81;
      }

      a2[9] = v55;
      if (!AVE_CFArray_GetChar(a1, (v9 + 10), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v48 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v48)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 139, "ret != 0", a1, a2, v55);
        goto LABEL_80;
      }

      a2[10] = v55;
      if (!AVE_CFArray_GetChar(a1, (v9 + 11), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v49 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v49)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 144, "ret != 0", a1, a2, v55);
        goto LABEL_80;
      }

      a2[11] = v55;
      if (!AVE_CFArray_GetChar(a1, (v9 + 12), &v55))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v50 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v50)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 149, "ret != 0", a1, a2, v55);
        goto LABEL_80;
      }

      a2[12] = v55;
      if (!AVE_CFArray_GetSInt32(a1, (v9 + 13), v57))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v51 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v51)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 154, "ret != 0", a1, a2, v57[0]);
        goto LABEL_80;
      }

      a2[13] = v57[0];
      if (!AVE_CFArray_GetSInt32(a1, (v9 + 14), v57))
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v52 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v52)
        {
          goto LABEL_81;
        }

        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 159, "ret != 0", a1, a2, v57[0]);
        goto LABEL_80;
      }

      a2[14] = v57[0];
      SInt32 = AVE_CFArray_GetSInt32(a1, (v9 + 15), v57);
      if (!SInt32)
      {
        if (!AVE_Log_CheckLevel(0x10u, 4))
        {
          return 0;
        }

        v53 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v53)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 164, "ret != 0", a1, a2, v57[0]);
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      v11 = SInt32;
      a2[15] = v57[0];
      if (AVE_Log_CheckLevel(0x10u, 7))
      {
        v12 = AVE_Log_CheckConsole(0x10u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(7);
        v15 = *a2;
        v16 = a2[1];
        v17 = a2[2];
        v18 = a2[3];
        v19 = a2[4];
        v20 = a2[5];
        v21 = a2[6];
        v22 = a2[7];
        v23 = a2[8];
        v24 = a2[9];
        v25 = a2[10];
        v26 = a2[11];
        v27 = a2[12];
        v28 = a2[13];
        v29 = a2[14];
        v30 = a2[15];
        if (v12)
        {
          printf("%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d\n", v13, 16, v14, v5, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, a2[14], v30);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v31, 16, v32, v5, *a2, a2[1], a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], a2[8], a2[9], a2[10], a2[11], a2[12], a2[13], a2[14], a2[15]);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: MCTF Pop [%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v13, 16, v14, v5, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, a2[14], v30);
        }
      }

      v7 = 0;
      a2 += 16;
      v5 = 1;
      if ((v8 & 1) == 0)
      {
        return v11;
      }
    }

    if (!AVE_Log_CheckLevel(0x10u, 4))
    {
      return 0;
    }

    v36 = AVE_Log_CheckConsole(0x10u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v36)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_Retrieve", 89, "ret != 0", a1, a2, v55);
      goto LABEL_80;
    }

LABEL_81:
    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 16, LevelStr);
    return 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v33 = AVE_Log_CheckConsole(0x10u);
      v34 = AVE_GetCurrTime();
      v35 = AVE_Log_GetLevelStr(4);
      if (v33)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v34, 16, v35, "AVE_MCTF_Retrieve", 81, "pArray != __null && pMCTF != __null", a1, a2);
        v34 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v34, 16);
    }

    return 4294966295;
  }
}

uint64_t AVE_MCTF_Make(char *a1, __CFArray *a2)
{
  if (a1 && a2)
  {
    v4 = 0;
    v5 = (a1 + 32);
    v6 = 1;
    do
    {
      v7 = v6;
      v8 = AVE_CFArray_AddChar(*(v5 - 32), a2);
      v9 = AVE_CFArray_AddChar(*(v5 - 28), a2);
      v10 = AVE_CFArray_AddChar(*(v5 - 24), a2);
      v11 = AVE_CFArray_AddChar(*(v5 - 20), a2);
      v12 = AVE_CFArray_AddChar(*(v5 - 16), a2);
      v13 = AVE_CFArray_AddChar(*(v5 - 12), a2);
      v54 = AVE_CFArray_AddChar(*(v5 - 8), a2);
      v53 = AVE_CFArray_AddChar(*(v5 - 4), a2);
      v52 = AVE_CFArray_AddSInt16(*v5, a2);
      v51 = AVE_CFArray_AddChar(*(v5 + 4), a2);
      v50 = AVE_CFArray_AddChar(*(v5 + 8), a2);
      v49 = AVE_CFArray_AddChar(*(v5 + 12), a2);
      v48 = AVE_CFArray_AddChar(*(v5 + 16), a2);
      v47 = AVE_CFArray_AddSInt32(*(v5 + 5), a2);
      v46 = AVE_CFArray_AddSInt32(*(v5 + 6), a2);
      v45 = AVE_CFArray_AddSInt32(*(v5 + 7), a2);
      if (AVE_Log_CheckLevel(0x10u, 7))
      {
        v43 = v13;
        v44 = v11;
        v14 = v12;
        v15 = v10;
        v16 = v9;
        v17 = v8;
        v18 = AVE_Log_CheckConsole(0x10u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v21 = *(v5 - 8);
        v22 = *(v5 - 7);
        v23 = *(v5 - 6);
        v24 = *(v5 - 5);
        v25 = *(v5 - 4);
        v26 = *(v5 - 3);
        v27 = *(v5 - 2);
        v28 = *(v5 - 1);
        v29 = *v5;
        v30 = *(v5 + 1);
        v31 = *(v5 + 2);
        v32 = *(v5 + 3);
        v33 = *(v5 + 4);
        v34 = *(v5 + 5);
        v35 = *(v5 + 6);
        v36 = *(v5 + 7);
        if (v18)
        {
          printf("%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d\n", CurrTime, 16, LevelStr, v4, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, *(v5 + 6), v36);
          v37 = AVE_GetCurrTime();
          v38 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", v37, 16, v38, v4, *(v5 - 8), *(v5 - 7), *(v5 - 6), *(v5 - 5), *(v5 - 4), *(v5 - 3), *(v5 - 2), *(v5 - 1), *v5, *(v5 + 1), *(v5 + 2), *(v5 + 3), *(v5 + 4), *(v5 + 5), *(v5 + 6), *(v5 + 7));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: MCTF Make Ref[%d]: %d | %d %d %d - %d %d %d - %d %d %d %d %d %d %d %d %d", CurrTime, 16, LevelStr, v4, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, *(v5 + 6), v36);
        }

        v8 = v17;
        v9 = v16;
        v10 = v15;
        v12 = v14;
        v13 = v43;
        v11 = v44;
      }

      v6 = 0;
      v5 += 32;
      v4 = 1;
    }

    while ((v7 & 1) != 0);
    return (v9 + v8 + v10 + v11 + v12 + v13 + v54 + v53 + v52 + v51 + v50 + v49 + v48 + v47 + v46 + v45);
  }

  else
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v40 = AVE_Log_CheckConsole(0x10u);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v41, 16, v42, "AVE_MCTF_Make", 196, "pMCTF != __null && pArray != __null", a1, a2);
        v41 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v41, 16);
    }

    return 4294966295;
  }
}

uint64_t H264VideoEncoderFrameReceiver::H264VideoEncoderFrameReceiver(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 137792;
  v5 = a1 + 25784;
  AVE_MultiPass::AVE_MultiPass((a1 + 16));
  *(a1 + 29328) = *(a2 + 16);
  *(v5 + 3552) = *a2;
  *(a1 + 29352) = *(a2 + 32);
  *(a1 + 29312) = *(a2 + 72);
  *(v4 + 16) = *(a2 + 204);
  *(v4 + 12) = *(a2 + 200);
  *(v4 + 24) = *(a2 + 208);
  *a1 = 0;
  *(a1 + 8) = 0;
  *v4 = *(a2 + 216);
  v6 = *(a2 + 40);
  *(a1 + 29296) = *(a2 + 56);
  *(a1 + 29280) = v6;
  v7 = *(a2 + 80);
  if (v7)
  {
    memcpy((a1 + 29368), v7, 0x300uLL);
  }

  v8 = *(a2 + 88);
  if (v8)
  {
    memcpy((a1 + 30136), v8, 0x2460uLL);
  }

  memcpy((a1 + 39448), *(a2 + 96), 0x4E0uLL);
  v9 = *(a2 + 96);
  *(a1 + 40696) = *(a2 + 104);
  v10 = *(v9 + 20);
  if (v10 == 2)
  {
    v16 = *(a2 + 144);
    if (v16)
    {
      memcpy((a1 + 45152), v16, 0x2FCCuLL);
    }

    v17 = 0;
    v18 = 1;
    do
    {
      v19 = v18;
      v20 = *(a2 + 152 + 8 * v17);
      if (v20)
      {
        memcpy((a1 + 57388 + 7804 * v17), v20, 0x1E7CuLL);
      }

      v21 = *(a2 + 168 + 8 * v17);
      if (v21)
      {
        memcpy((a1 + 72996 + 9632 * v17), v21, 0x25A0uLL);
      }

      v18 = 0;
      v17 = 1;
    }

    while ((v19 & 1) != 0);
    v22 = *(a2 + 184);
    if (v22)
    {
      memcpy((a1 + 92264), v22, 0x53F0uLL);
    }

    v13 = *(a2 + 192);
    if (v13)
    {
      v14 = (a1 + 113752);
      v15 = 24024;
      goto LABEL_25;
    }
  }

  else if (v10 == 1)
  {
    v11 = *(a2 + 120);
    if (v11)
    {
      memcpy((a1 + 40712), v11, 0x6B4uLL);
    }

    v12 = *(a2 + 128);
    if (v12)
    {
      memcpy((a1 + 42428), v12, 0x180uLL);
    }

    v13 = *(a2 + 136);
    if (v13)
    {
      v14 = (a1 + 42812);
      v15 = 2340;
LABEL_25:
      memcpy(v14, v13, v15);
    }
  }

  else if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    if (AVE_Log_CheckConsole(0x2Eu))
    {
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      printf("%lld %d AVE %s: codectype not recognized! %d\n", CurrTime, 46, LevelStr, *(*(a2 + 96) + 20));
    }

    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: codectype not recognized! %d", v25, 46, v26, *(*(a2 + 96) + 20));
  }

  *(a1 + 29100) = 0;
  *(a1 + 29084) = 0u;
  *(a1 + 29112) = 0u;
  bzero((a1 + 28032), 0x418uLL);
  *(v5 + 3488) = -1;
  *(v5 + 3492) = 0;
  *(a1 + 29360) = 0;
  *v5 = 0;
  *(a1 + 143688) = 0;
  *(a1 + 25792) = 0u;
  *(a1 + 25808) = 0u;
  *(a1 + 25824) = 0u;
  *(a1 + 25840) = 0u;
  *(a1 + 25856) = 0u;
  *(a1 + 25872) = 0u;
  *(a1 + 25888) = 0u;
  *(a1 + 25904) = 0u;
  *(a1 + 25920) = 0u;
  *(a1 + 25936) = 0u;
  *(a1 + 25952) = 0u;
  *(a1 + 25968) = 0u;
  *(a1 + 25984) = 0u;
  *(a1 + 26000) = 0u;
  *(a1 + 26016) = 0u;
  *(a1 + 26032) = 0u;
  *(a1 + 26048) = 0u;
  *(a1 + 26064) = 0u;
  *(a1 + 26080) = 0u;
  *(a1 + 26096) = 0u;
  *(a1 + 26112) = 0u;
  *(a1 + 26128) = 0u;
  *(a1 + 26144) = 0u;
  *(a1 + 26160) = 0u;
  *(a1 + 26176) = 0u;
  *(a1 + 26192) = 0u;
  *(a1 + 26208) = 0u;
  *(a1 + 26224) = 0u;
  *(a1 + 26240) = 0u;
  *(a1 + 26256) = 0u;
  *(a1 + 26920) = 0u;
  *(a1 + 26936) = 0u;
  *(a1 + 26888) = 0u;
  *(a1 + 26904) = 0u;
  *(a1 + 26856) = 0u;
  *(a1 + 26872) = 0u;
  *(a1 + 26824) = 0u;
  *(a1 + 26840) = 0u;
  *(a1 + 26792) = 0u;
  *(a1 + 26808) = 0u;
  *(a1 + 26760) = 0u;
  *(a1 + 26776) = 0u;
  *(a1 + 26728) = 0u;
  *(a1 + 26744) = 0u;
  *(a1 + 26696) = 0u;
  *(a1 + 26712) = 0u;
  *(a1 + 26664) = 0u;
  *(a1 + 26680) = 0u;
  *(a1 + 26632) = 0u;
  *(a1 + 26648) = 0u;
  *(a1 + 26600) = 0u;
  *(a1 + 26616) = 0u;
  *(a1 + 26568) = 0u;
  *(a1 + 26584) = 0u;
  *(a1 + 26536) = 0u;
  *(a1 + 26552) = 0u;
  *(a1 + 26504) = 0u;
  *(a1 + 26520) = 0u;
  *(a1 + 26472) = 0u;
  *(a1 + 26488) = 0u;
  bzero((a1 + 27072), 0x3C0uLL);
  *(a1 + 143680) = 0;
  *(a1 + 143664) = 0u;
  *(a1 + 143696) = *(a2 + 232);
  return a1;
}

void H264VideoEncoderFrameReceiver::~H264VideoEncoderFrameReceiver(H264VideoEncoderFrameReceiver *this)
{
  v2 = -240;
  do
  {
    v3 = this + v2;
    v4 = *(this + v2 + 26272);
    if (v4)
    {
      IOSurfaceUnlock(v4, 0, 0);
      CFRelease(*(v3 + 3284));
      *(v3 + 3284) = 0;
    }

    v5 = *(v3 + 3369);
    if (v5)
    {
      IOSurfaceUnlock(v5, 0, 0);
      CFRelease(*(v3 + 3369));
      *(v3 + 3369) = 0;
    }

    v6 = this + v2;
    v7 = *(this + v2 + 27552);
    if (v7)
    {
      IOSurfaceUnlock(v7, 0, 0);
      CFRelease(*(v6 + 3444));
      *(v6 + 3444) = 0;
    }

    v8 = *(v6 + 3504);
    if (v8)
    {
      IOSurfaceUnlock(v8, 0, 0);
      CFRelease(*(v6 + 3504));
      *(v6 + 3504) = 0;
    }

    v2 += 8;
  }

  while (v2);
  if (*(this + 3670))
  {
    FigFormatDescriptionRelease();
    *(this + 3670) = 0;
  }

  v9 = *(this + 3639);
  if (v9)
  {
    free(v9);
    *(this + 3639) = 0;
    *(this + 7280) = 0;
  }

  std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](this + 3181);
  std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](this + 3175);
  v10 = *(this + 3171);
  if (v10)
  {
    *(this + 3172) = v10;
    operator delete(v10);
  }
}

uint64_t H264VideoEncoderFrameReceiver::CreateVideoFormatDesc(uint64_t a1, const void *a2, char *a3, unsigned int *a4, unsigned int *a5)
{
  v150[0] = 0;
  v148 = 0;
  v149 = 0;
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v9 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %p %p %p\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5);
      v12 = AVE_GetCurrTime();
      v118 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", v12, 46, v118);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %p %p %p", CurrTime, 46, LevelStr);
    }
  }

  if (a5 && *a5)
  {
    v143 = a1 + 39252;
    if (AVE_Log_CheckLevel(0x2Eu, 8))
    {
      v13 = AVE_Log_CheckConsole(0x2Eu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(8);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d\n", v14, 46, v15, "AVE_FrameRecv", "CreateVideoFormatDesc", 244, *a5);
        v14 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
        v16 = *a5;
      }

      else
      {
        v124 = *a5;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d sPSInfo.iNum %d", v14);
    }

    v145 = a2;
    v141 = (a1 + 30136);
    v142 = a1;
    v147 = a5;
    if (*a5 >= 1)
    {
      v27 = 0;
      v28 = (a5 + 4);
      do
      {
        if (AVE_Log_CheckLevel(0x2Eu, 8))
        {
          v29 = AVE_Log_CheckConsole(0x2Eu);
          v30 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(8);
          v32 = *(v28 - 3);
          v33 = *(v28 - 2);
          v34 = *(v28 - 1);
          v35 = *v28;
          if (v29)
          {
            printf("%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d\n", v30, 46, v31, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v27, v32, v33, *(v28 - 1), v35);
            v30 = AVE_GetCurrTime();
            v31 = AVE_Log_GetLevelStr(8);
            v32 = *(v28 - 3);
            v33 = *(v28 - 2);
            v34 = *(v28 - 1);
            v35 = *v28;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d", v30, 46, v31, "AVE_FrameRecv", "CreateVideoFormatDesc", 249, v27, v32, v33, v34, v35);
          a5 = v147;
        }

        ++v27;
        v28 += 4;
      }

      while (v27 < *a5);
    }

    v36 = (a1 + 39448);
    v37 = *(a1 + 39468);
    if (v37 == 1)
    {
      v46 = (a1 + 40712);
      avcC_Dict = AVE_PS_Make_avcC_Dict(0, a3, a5, (a1 + 40712), &v149);
      a2 = v145;
      if (v149)
      {
        if (*(a1 + 41808))
        {
          CFDictionarySetValue(v149, *MEMORY[0x29EDB92C0], *MEMORY[0x29EDB8F00]);
        }

        v47 = *v141;
        v48 = *(a1 + 40748);
        if (v48 > 3)
        {
          v50 = 0;
        }

        else
        {
          v49 = (&gc_iaAVE_SubC + 8 * v48);
          v51 = *v49;
          v50 = v49[1];
          v47 -= v51 * *(a1 + 41896);
        }

        v60 = *(a1 + 30140) - *(a1 + 41904) * v50;
        if (AVE_Log_CheckLevel(0x2Eu, 8))
        {
          v61 = AVE_Log_CheckConsole(0x2Eu);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(8);
          v64 = *(a1 + 41896);
          if (v61)
          {
            printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v62, 46, v63, "AVE_FrameRecv", "CreateVideoFormatDesc", 277, *(a1 + 30136), *(a1 + 30140), v47, v60, *(a1 + 41896), *(a1 + 41904));
            v62 = AVE_GetCurrTime();
            v63 = AVE_Log_GetLevelStr(8);
            v133 = *(a1 + 41896);
            v138 = *(a1 + 41904);
            v125 = *v141;
            v127 = *(a1 + 30140);
          }

          else
          {
            v134 = *(a1 + 41896);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v62, 46, v63);
          a2 = v145;
        }

        if (*v36 == 2)
        {
          VideoFormatDescription = VTTileEncoderSessionCreateVideoFormatDescription();
        }

        else
        {
          VideoFormatDescription = VTEncoderSessionCreateVideoFormatDescription();
        }

        v69 = VideoFormatDescription;
        if (!VideoFormatDescription)
        {
          v20 = 0;
LABEL_139:
          a5 = v147;
          goto LABEL_17;
        }

        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v70 = AVE_Log_CheckConsole(0x2Eu);
          v71 = AVE_GetCurrTime();
          v72 = AVE_Log_GetLevelStr(4);
          if (v70)
          {
            a2 = v145;
            printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d\n", v71, 46, v72, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr", *v36, v145, v47, v60, v149, (a1 + 29360), v69);
            v71 = AVE_GetCurrTime();
            v72 = AVE_Log_GetLevelStr(4);
            v128 = *v36;
          }

          else
          {
            a2 = v145;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %p %p %d", v71, 46, v72, "AVE_FrameRecv", "CreateVideoFormatDesc", 305, "res == noErr");
        }

        v20 = 0;
LABEL_110:
        avcC_Dict = 4294966296;
        goto LABEL_139;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v56 = AVE_Log_CheckConsole(0x2Eu);
        v57 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(4);
        if (v56)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d\n", v57, 46, v58, "AVE_FrameRecv", "CreateVideoFormatDesc", 261, "pCFDict != __null", a3, a5, v46, &v149, avcC_Dict);
          v59 = AVE_GetCurrTime();
          v120 = AVE_Log_GetLevelStr(4);
          a5 = v147;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v59, 46, v120, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make avcC dictionary %p %p %p %p %d", v57, 46, v58, "AVE_FrameRecv", "CreateVideoFormatDesc", 261);
        }
      }

      v20 = 0;
    }

    else
    {
      a2 = v145;
      v38 = a1;
      if (v37 == 2)
      {
        v39 = *(a1 + 30144);
        v40 = AVE_SEI::EstimateSEISize(*(v142 + 143696), a4[10], 64);
        if (v40 >= 1)
        {
          v41 = v40;
          v42 = malloc_type_malloc(v40, 0x100004077774924uLL);
          if (!v42)
          {
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v65 = AVE_Log_CheckConsole(0x2Eu);
              v66 = AVE_GetCurrTime();
              v67 = AVE_Log_GetLevelStr(4);
              if (v65)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d\n", v66, 46, v67, "AVE_FrameRecv", "CreateVideoFormatDesc", 323, "piSEIData != __null", v41);
                v66 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to allocate SEI buffer %d", v66, 46);
            }

            v20 = 0;
            goto LABEL_116;
          }

          v20 = v42;
          if (AVE_Log_CheckLevel(0x2Eu, 7))
          {
            v43 = AVE_Log_CheckConsole(0x2Eu);
            v44 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(7);
            if (v43)
            {
              printf("%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment\n", v44, 46, v45, "AVE_FrameRecv", "CreateVideoFormatDesc", 326, v41);
              v44 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v38 = v142;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d allocated %d bytes for ambient viewing environment", v44);
            a5 = v147;
          }

          v73 = AVE_SEI::Generate(*(v38 + 143696), a4[10], 64, v20, v41, v150);
          if (v73)
          {
            avcC_Dict = v73;
            if (!AVE_Log_CheckLevel(0x2Eu, 4))
            {
              goto LABEL_17;
            }

            v74 = AVE_Log_CheckConsole(0x2Eu);
            v75 = AVE_GetCurrTime();
            v76 = AVE_Log_GetLevelStr(4);
            if (v74)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d\n", v75, 46, v76, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0", v41, v20, v36, a4, v150, avcC_Dict);
              v77 = AVE_GetCurrTime();
              a2 = v145;
              v121 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v77, 46, v121, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add SEI %d %p %p %p %p %d", v75, 46, v76, "AVE_FrameRecv", "CreateVideoFormatDesc", 334, "ret == 0");
            }

            goto LABEL_139;
          }

          if (v150[0])
          {
LABEL_84:
            if (*v143 >= 2u)
            {
              v78 = *(v143 + 1252);
              v79 = *(v143 + 1253);
              MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults = VTEncoderSessionCreateMVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults();
              if (AVE_Log_CheckLevel(0x2Eu, 4))
              {
                v94 = AVE_Log_CheckConsole(0x2Eu);
                v95 = AVE_GetCurrTime();
                v96 = AVE_Log_GetLevelStr(4);
                if (v94)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d\n", v95, 46, v96, "AVE_FrameRecv", "CreateVideoFormatDesc", 354, "pSEI3D != __null", v145, *(v143 + 1252), *(v143 + 1253), &v148, MVHEVCThreeDimensionalReferenceDisplaysInfoSEIWithDefaults);
                  v95 = AVE_GetCurrTime();
                  v96 = AVE_Log_GetLevelStr(4);
                  v97 = *(v143 + 1252);
                  v131 = *(v143 + 1253);
                  a5 = v147;
                }

                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create SEI %p %d %d %p %d", v95, 46, v96, "AVE_FrameRecv", "CreateVideoFormatDesc");
              }

LABEL_116:
              avcC_Dict = 4294966293;
              goto LABEL_17;
            }

            avcC_Dict = AVE_PS_Make_hvcC_Dict(0, a3, v147, v20, v150[0], 0, 0, (v38 + 57388), &v149);
            v81 = v149;
            if (v149)
            {
              if (*v143 < 2u)
              {
                a2 = v145;
                a5 = v147;
              }

              else
              {
                a5 = v147;
                avcC_Dict = AVE_PS_Add_lhvC_Dict(1, a3, v147, (v38 + 57388), v149);
                v81 = v149;
                a2 = v145;
                if (!v149)
                {
                  if (AVE_Log_CheckLevel(0x2Eu, 4))
                  {
                    v82 = AVE_Log_CheckConsole(0x2Eu);
                    v83 = AVE_GetCurrTime();
                    v84 = AVE_Log_GetLevelStr(4);
                    if (v82)
                    {
                      a5 = v147;
                      printf("%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d\n", v83, 46, v84, "AVE_FrameRecv", "CreateVideoFormatDesc", 373, "pCFDict != __null", a3, v147, (v38 + 57388), v149, avcC_Dict);
                      v85 = AVE_GetCurrTime();
                      v122 = AVE_Log_GetLevelStr(4);
                      a2 = v145;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v85, 46, v122, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }

                    else
                    {
                      a5 = v147;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to add lhvC dictionary %p %p %p %p %d", v83, 46, v84, "AVE_FrameRecv", "CreateVideoFormatDesc", 373);
                    }
                  }

                  goto LABEL_17;
                }
              }

              if (*(v38 + 64508))
              {
                CFDictionarySetValue(v81, *MEMORY[0x29EDB92C0], *MEMORY[0x29EDB8F00]);
              }

              if ((v39 & 0x800) != 0)
              {
                avcC_Dict = AVE_Crypto_MakeSINF(a2, (v38 + 40676), *(v143 + 216), v149);
                if (avcC_Dict)
                {
                  if (!AVE_Log_CheckLevel(0x2Eu, 4))
                  {
                    goto LABEL_17;
                  }

                  v91 = AVE_Log_CheckConsole(0x2Eu);
                  v92 = AVE_GetCurrTime();
                  v93 = AVE_Log_GetLevelStr(4);
                  if (v91)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d\n", v92, 46, v93, "AVE_FrameRecv", "CreateVideoFormatDesc", 392, "ret == 0", a2, (v38 + 40676), *(v143 + 216), v149, avcC_Dict);
                    v92 = AVE_GetCurrTime();
                    v93 = AVE_Log_GetLevelStr(4);
                    v130 = *(v143 + 216);
                    a2 = v145;
                  }

                  else
                  {
                    v132 = *(v143 + 216);
                  }

                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create crypto SINF %p %p %d %p %d", v92, 46, v93, "AVE_FrameRecv", "CreateVideoFormatDesc", 392);
                  goto LABEL_139;
                }

                v90 = 1902671459;
              }

              else
              {
                v90 = 1752589105;
              }

              v144 = v90;
              v98 = *v141;
              v99 = *(v38 + 57840);
              if (v99 > 3)
              {
                v101 = 0;
              }

              else
              {
                v100 = (&gc_iaAVE_SubC + 8 * v99);
                v102 = *v100;
                v101 = v100[1];
                v98 -= v102 * *(v38 + 57872);
              }

              v103 = v141[1] - *(v38 + 57880) * v101;
              if (AVE_Log_CheckLevel(0x2Eu, 8))
              {
                v104 = AVE_Log_CheckConsole(0x2Eu);
                v140 = AVE_GetCurrTime();
                v105 = AVE_Log_GetLevelStr(8);
                v106 = *(v38 + 57872);
                if (v104)
                {
                  printf("%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d\n", v140, 46, v105, "AVE_FrameRecv", "CreateVideoFormatDesc", 403, *v141, v141[1], v98, v103, *(v38 + 57872), *(v38 + 57880));
                  v107 = AVE_GetCurrTime();
                  v108 = AVE_Log_GetLevelStr(8);
                  v135 = *(v38 + 57872);
                  v139 = *(v38 + 57880);
                  v126 = *v141;
                  v129 = v141[1];
                  v38 = v142;
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v107, 46, v108);
                }

                else
                {
                  v136 = *(v38 + 57872);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d for FIG coded: %d - %d, passed %d - %d, crop %d - %d", v140, 46, v105);
                }
              }

              v109 = (v38 + 29360);
              if (*v36 == 2)
              {
                v110 = VTTileEncoderSessionCreateVideoFormatDescription();
              }

              else
              {
                v110 = VTEncoderSessionCreateVideoFormatDescription();
              }

              v111 = v110;
              if (v110)
              {
                if (AVE_Log_CheckLevel(0x2Eu, 4))
                {
                  v112 = AVE_Log_CheckConsole(0x2Eu);
                  v113 = AVE_GetCurrTime();
                  v114 = AVE_Log_GetLevelStr(4);
                  v115 = *v36;
                  if (v112)
                  {
                    v137 = v98;
                    a2 = v145;
                    printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d\n", v113, 46, v114, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v115, v145, v144, v137, v103, v149, v109, v111);
                    v116 = AVE_GetCurrTime();
                    v117 = AVE_Log_GetLevelStr(4);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v116, 46, v117, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", *v36);
                  }

                  else
                  {
                    a2 = v145;
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %d %p %d %d %d %p %p %d", v113, 46, v114, "AVE_FrameRecv", "CreateVideoFormatDesc", 431, "res == noErr", v115);
                  }

                  goto LABEL_110;
                }

                avcC_Dict = 4294966296;
              }
            }

            else if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v86 = AVE_Log_CheckConsole(0x2Eu);
              v87 = AVE_GetCurrTime();
              v88 = AVE_Log_GetLevelStr(4);
              if (v86)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d\n", v87, 46, v88, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v147, v20, v150[0], 0, 0, (v38 + 57388), &v149, avcC_Dict);
                v89 = AVE_GetCurrTime();
                a5 = v147;
                v123 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v89, 46, v123, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v147, v20);
              }

              else
              {
                a5 = v147;
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to make hvcC dictionary %p %p %p %d %p %d %p %p %d", v87, 46, v88, "AVE_FrameRecv", "CreateVideoFormatDesc", 365, "pCFDict != __null", a3, v147, v20);
              }

              a2 = v145;
              goto LABEL_17;
            }

            a2 = v145;
            goto LABEL_139;
          }

          free(v20);
        }

        v20 = 0;
        goto LABEL_84;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v52 = AVE_Log_CheckConsole(0x2Eu);
        v53 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.\n", v53, 46, v54, "AVE_FrameRecv", "CreateVideoFormatDesc", 437, "false", *(a1 + 39468));
          v53 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v55 = *(a1 + 39468);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | encode type %d not recognized.", v53, 46);
      }

      v20 = 0;
      avcC_Dict = 4294966281;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x2Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p\n", v18, 46, v19, "AVE_FrameRecv", "CreateVideoFormatDesc", 241, "(psInfo != __null) && (psInfo->iNum != 0)", a5);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p", v18, 46);
    }

    v20 = 0;
    avcC_Dict = 4294966295;
  }

LABEL_17:
  if (v149)
  {
    CFRelease(v149);
    v149 = 0;
  }

  if (v20)
  {
    free(v20);
  }

  if (v148)
  {
    CFRelease(v148);
    v148 = 0;
  }

  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v22 = AVE_Log_CheckConsole(0x2Eu);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(7);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %p %p %p %d\n", v23, 46, v24, "AVE_FrameRecv", "CreateVideoFormatDesc", a2, a3, a4, a5, avcC_Dict);
      v25 = AVE_GetCurrTime();
      v119 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v25, 46, v119, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %p %p %p %d", v23, 46, v24, "AVE_FrameRecv");
    }
  }

  return avcC_Dict;
}