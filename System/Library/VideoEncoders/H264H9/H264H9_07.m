void H264H9EncoderRegister()
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
      CFDictionaryAddValue(v2, @"CMClassImplementationID", @"com.apple.videotoolbox.videoencoder.h264");
      v0 = VTRegisterVideoEncoderWithInfo();
      CFRelease(v2);
    }

    else
    {
      v0 = 0;
    }
  }

  if (AVE_Log_CheckLevel(2u, 5))
  {
    v4 = AVE_Log_CheckConsole(2u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(5);
    if (v4)
    {
      printf("%lld %d AVE %s: Register AVC video encoder of AVE %d\n", CurrTime, 2, LevelStr, v0);
      v7 = AVE_GetCurrTime();
      v8 = AVE_Log_GetLevelStr(5);
      syslog(3, "%lld %d AVE %s: Register AVC video encoder of AVE %d", v7, 2, v8, v0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Register AVC video encoder of AVE %d", CurrTime, 2, LevelStr, v0);
    }
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

uint64_t H264VideoEncoderFrameReceiver::CopyEncodedFrameIntoExternalBuffer(void *a1, unsigned int *a2, int a3, char *a4)
{
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v8 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", a1, a1[17227], a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v11 = a1[17227];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %d %p", CurrTime, 46, LevelStr, "AVE_FrameRecv");
  }

  if (!a2 || a3 < 1 || !a4)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x2Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p\n", v21, 46, v22, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709, "(psEncFrameInfo != __null) && (iSize > 0) && (piFinalBuf != __null)", a1, a1[17227], a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
      }

      v36 = a1[17227];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %d %p", v21, 46, v22, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 709);
    }

    goto LABEL_34;
  }

  v12 = *a2;
  if (v12 < 1)
  {
    v13 = 0;
    goto LABEL_23;
  }

  v13 = 0;
  v14 = 6;
  do
  {
    v13 += a2[v14];
    v14 += 8;
    --v12;
  }

  while (v12);
  if (v13 != a3)
  {
LABEL_23:
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v23 = AVE_Log_CheckConsole(0x2Eu);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong total size %p %lld %p %d %p %d\n", v24, 46, v25, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 717, "size == iSize", a1, a1[17227], a2, a3, a4, v13);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
      }

      v37 = a1[17227];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong total size %p %lld %p %d %p %d", v24, 46, v25, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 717, "size == iSize");
    }

    goto LABEL_34;
  }

  v15 = 0;
  v16 = a2 + 4;
  v17 = a4;
  while (*v16)
  {
    v18 = v16[2];
    if (v18 <= 0)
    {
      break;
    }

    memcpy(v17, *v16, v18);
    *(v16 + 2) = v17;
    v17 += v16[2];
    ++v15;
    v16 += 8;
    if (v15 >= *a2)
    {
      v19 = 0;
      goto LABEL_35;
    }
  }

  if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v26 = AVE_Log_CheckConsole(0x2Eu);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(4);
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p %d\n", v27, 46, v28, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 727, "(psEncFrameInfo->saEntry[i].sBuf.pBuf != __null) && (psEncFrameInfo->saEntry[i].sBuf.iSize > 0)", a1, a1[17227], a2, v16, v16[2]);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
    }

    v39 = v16[2];
    v38 = a1[17227];
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p %d", v27, 46, v28, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", 727);
  }

LABEL_34:
  v19 = 4294966295;
LABEL_35:
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v29 = AVE_Log_CheckConsole(0x2Eu);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(7);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d\n", v30, 46, v31, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer", a1, a1[17227], a2, a3, a4, v19);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(7);
      v35 = a1[17227];
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d", v32, 46, v33, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d %p %d", v30, 46, v31, "AVE_FrameRecv", "CopyEncodedFrameIntoExternalBuffer");
    }
  }

  return v19;
}

uint64_t H264VideoEncoderFrameReceiver::SendPS(uint64_t a1, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v4 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendPS", a2);
      v7 = AVE_GetCurrTime();
      v82 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v7, 46, v82, "AVE_FrameRecv", "SendPS", a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendPS", a2);
    }
  }

  if (!*(a1 + 29352))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x2Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | nobody wants this SPS PPS header. dump it\n", v23, 46, v24, "AVE_FrameRecv", "SendPS", 757, "m_pSession != __null");
        v23 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | nobody wants this SPS PPS header. dump it", v23);
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v25 = AVE_Log_CheckConsole(0x2Eu);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter psFrameInfo == NULL\n", v26, 46, v27, "AVE_FrameRecv", "SendPS", 760, "psFrameInfo != __null");
        v26 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter psFrameInfo == NULL", v26);
    }

    goto LABEL_33;
  }

  v8 = *(a2 + 3180);
  if (v8 >= 0x1E)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v28 = AVE_Log_CheckConsole(0x2Eu);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v29, 46, v30, "AVE_FrameRecv", "SendPS", 764, "0 <= psFrameInfo->PlaneNumber && psFrameInfo->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
        v29 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      v87 = *(a2 + 3180);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v29, 46);
    }

LABEL_33:
    v34 = 4294966295;
    goto LABEL_34;
  }

  v9 = a1 + 143664;
  v10 = *(a1 + 8 * v8 + 27072);
  if (v10)
  {
    v11 = v10 + 45056;
    v12 = (v10 + 45392);
    v13 = *(v10 + 45392);
    if (v13 > 0)
    {
      v14 = v10 + 16 * (v13 - 1) + 45396;
      v15 = *(v14 + 8);
      LODWORD(v14) = *(v14 + 12);
      v16 = __OFADD__(v14, v15);
      LODWORD(v14) = v14 + v15;
      *(a1 + 143680) = v14;
      if ((v14 < 0) ^ v16 | (v14 == 0))
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v42 = AVE_Log_CheckConsole(0x2Eu);
          v43 = AVE_GetCurrTime();
          v44 = AVE_Log_GetLevelStr(4);
          if (v42)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong PS size %d\n", v43, 46, v44, "AVE_FrameRecv", "SendPS", 777, "m_iPSSize > 0", *(a1 + 143680));
            v43 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            v45 = *(a1 + 143680);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong PS size %d", v43, 46);
        }

        v34 = 4294966281;
        goto LABEL_60;
      }

      v96 = v10;
      v97 = (v10 + 45392);
      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v17 = AVE_Log_CheckConsole(0x2Eu);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(7);
        v20 = *v12;
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d codec %d PSInfo num %d size %d\n", v18, 46, v19, "AVE_FrameRecv", "SendPS", 780, *(a1 + 39468), *v12, *(a1 + 143680));
          v18 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(7);
          v21 = *(a1 + 39468);
          v86 = *v12;
          v92 = *(a1 + 143680);
        }

        else
        {
          v88 = *v12;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d codec %d PSInfo num %d size %d", v18, 46);
      }

      v46 = *(a2 + 2552);
      Buffer = H264VideoEncoderFrameReceiver::CreateBuffer(a1, *(a1 + 143680), (a1 + 143672));
      *v9 = Buffer;
      if (!Buffer)
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v53 = AVE_Log_CheckConsole(0x2Eu);
          v54 = AVE_GetCurrTime();
          v55 = AVE_Log_GetLevelStr(4);
          if (v53)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p\n", v54, 46, v55, "AVE_FrameRecv", "SendPS", 785, "m_piPSOutput != __null", *(a1 + 143680), (a1 + 143672), *(a1 + 143672));
            v54 = AVE_GetCurrTime();
            v55 = AVE_Log_GetLevelStr(4);
            v56 = *(a1 + 143672);
            v90 = *(a1 + 143680);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create buffer. %d %p %p", v54, 46, v55, "AVE_FrameRecv");
        }

        v34 = 4294966293;
        goto LABEL_60;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v48 = AVE_Log_CheckConsole(0x2Eu);
        v49 = AVE_GetCurrTime();
        v50 = AVE_Log_GetLevelStr(7);
        v51 = *(a1 + 143680);
        if (v48)
        {
          printf("%lld %d AVE %s: %s::%s:%d create buffer %p %d %p\n", v49, 46, v50, "AVE_FrameRecv", "SendPS", 788, *v9, *(a1 + 143680), *(a1 + 143672));
          v49 = AVE_GetCurrTime();
          v50 = AVE_Log_GetLevelStr(7);
          v52 = *v9;
          v89 = *(a1 + 143680);
          v93 = *(a1 + 143672);
        }

        else
        {
          v91 = *(a1 + 143680);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d create buffer %p %d %p", v49, 46, v50);
      }

      v95 = (a1 + 143664);
      if (*v12 >= 1)
      {
        v58 = 0;
        v59 = (v11 + 352);
        do
        {
          if (AVE_Log_CheckLevel(0x2Eu, 8))
          {
            v60 = AVE_Log_CheckConsole(0x2Eu);
            v61 = AVE_GetCurrTime();
            v62 = AVE_Log_GetLevelStr(8);
            v63 = *(v59 - 3);
            v64 = *(v59 - 2);
            v65 = *(v59 - 1);
            v66 = *v59;
            if (v60)
            {
              printf("%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d\n", v61, 46, v62, "AVE_FrameRecv", "SendPS", 793, v58, v63, v64, *(v59 - 1), v66);
              v61 = AVE_GetCurrTime();
              v62 = AVE_Log_GetLevelStr(8);
              v63 = *(v59 - 3);
              v64 = *(v59 - 2);
              v65 = *(v59 - 1);
              v66 = *v59;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d i %d eType %d iLayerID %d iOffset %d iSize %d", v61, 46, v62, "AVE_FrameRecv", "SendPS", 793, v58, v63, v64, v65, v66);
            v12 = v97;
          }

          ++v58;
          v59 += 4;
        }

        while (v58 < *v12);
      }

      v9 = a1 + 143664;
      memcpy(*(a1 + 143664), (v96 + 45732), *(a1 + 143680));
      if (AVE_Log_CheckLevel(0x2Eu, 8))
      {
        v67 = AVE_Log_CheckConsole(0x2Eu);
        v68 = AVE_GetCurrTime();
        v69 = AVE_Log_GetLevelStr(8);
        v70 = *(a1 + 39448);
        if (v67)
        {
          printf("%lld %d AVE %s: %s::%s:%d %d %p\n", v68, 46, v69, "AVE_FrameRecv", "SendPS", 800, *(a1 + 39448), *(a1 + 29352));
          v68 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(8);
          v71 = *(a1 + 29352);
          v83 = *(a1 + 39448);
          v12 = v97;
        }

        else
        {
          v84 = *(a1 + 39448);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %d %p", v68, 46);
      }

      v72 = *(a1 + 29352);
      if (v72 == 1)
      {
        if (*(a1 + 29288) && *(a1 + 29280))
        {
          if (AVE_Log_CheckLevel(0x2Eu, 7))
          {
            v78 = AVE_Log_CheckConsole(0x2Eu);
            v79 = AVE_GetCurrTime();
            v80 = AVE_Log_GetLevelStr(7);
            if (v78)
            {
              printf("%lld %d AVE %s: %s::%s:%d calling emitEncodedFrame on %d bytes (SPS PPS)\n", v79, 46, v80, "AVE_FrameRecv", "SendPS", 810, *(a1 + 143680));
              v79 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(7);
              v81 = *(a1 + 143680);
            }

            else
            {
              v85 = *(a1 + 143680);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d calling emitEncodedFrame on %d bytes (SPS PPS)", v79);
          }

          (*(a1 + 29288))(*(a1 + 29280), *(a1 + 143664), *(a1 + 143680), 0, *(a1 + 39468));
        }

        *(a1 + 25784) = 1;
      }

      else
      {
        if (*(a1 + 39252) >= 2u)
        {
          AVE_PS_Compose_general_profile_compatibility_flag(a1 + 57388, a1 + 137776, 4);
          AVE_PS_Compose_general_constraint_indicator_flags(a1 + 57388, (a1 + 137780), 6);
          v72 = *(a1 + 29352);
        }

        VideoFormatDesc = H264VideoEncoderFrameReceiver::CreateVideoFormatDesc(a1, v72, *v95, a2, v12);
        if (VideoFormatDesc)
        {
          v34 = VideoFormatDesc;
          if (AVE_Log_CheckLevel(0x2Eu, 4))
          {
            v74 = AVE_Log_CheckConsole(0x2Eu);
            v75 = AVE_GetCurrTime();
            v76 = AVE_Log_GetLevelStr(4);
            if (v74)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d\n", v75, 46, v76, "AVE_FrameRecv", "SendPS", 831, "ret == 0", *(a1 + 29352), *v95, a2, v34);
              v75 = AVE_GetCurrTime();
              v76 = AVE_Log_GetLevelStr(4);
              v77 = *(a1 + 29352);
              v94 = *v95;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create format descriptor %p %p %p %d", v75, 46, v76, "AVE_FrameRecv", "SendPS");
          }

          goto LABEL_60;
        }
      }

      AVE_Dump_WriteOutput(*(a1 + 40704), *(a2 + 20), *(a1 + 143664), *(a1 + 143680));
      v34 = 0;
      goto LABEL_34;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v39 = AVE_Log_CheckConsole(0x2Eu);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(4);
      if (v39)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong PS number %p %d\n", v40, 46, v41, "AVE_FrameRecv", "SendPS", 772, "psPSInfo->iNum > 0", v12, *v12);
        v40 = AVE_GetCurrTime();
        v41 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong PS number %p %d", v40, 46, v41, "AVE_FrameRecv", "SendPS", 772, "psPSInfo->iNum > 0", v12, *v12);
    }
  }

  else if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v31 = AVE_Log_CheckConsole(0x2Eu);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | m_CodedBuffPointerDataHeader[%d] == NULL\n", v32, 46, v33, "AVE_FrameRecv", "SendPS", 768, "codedHeader != __null", *(a2 + 3180));
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | m_CodedBuffPointerDataHeader[%d] == NULL", v32, 46, v33, "AVE_FrameRecv", "SendPS", 768, "codedHeader != __null", *(a2 + 3180));
  }

  v34 = 4294966296;
LABEL_60:
  *(v9 + 16) = 0;
  if (*v9)
  {
    H264VideoEncoderFrameReceiver::DeleteBuffer(a1, *v9);
    *v9 = 0;
  }

  v57 = *(v9 + 8);
  if (v57)
  {
    CFRelease(v57);
    *(v9 + 8) = 0;
  }

LABEL_34:
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v35 = AVE_Log_CheckConsole(0x2Eu);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(7);
    if (v35)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v36, 46, v37, "AVE_FrameRecv", "SendPS", a2, v34);
      v36 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v36);
  }

  return v34;
}

void H264VideoEncoderFrameReceiver::DeleteBuffer(H264VideoEncoderFrameReceiver *this, unsigned __int8 *a2)
{
  if (a2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v4 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (v4)
      {
        printf("%lld %d AVE %s: H264FrameRec: DeleteBuffer %p\n", CurrTime, 46, LevelStr, a2);
        v7 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DeleteBuffer %p", v7, 46, v15, a2);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DeleteBuffer %p", CurrTime, 46, LevelStr, a2);
      }
    }

    v12 = *(this + 34451);
    if (*(this + 3669) != 1)
    {
      if (v12 != 2)
      {
        if (*(this + 9862) == 2)
        {
          v13 = *(this + 3664);

          CFAllocatorDeallocate(v13, a2);
        }

        return;
      }

      goto LABEL_16;
    }

    if (v12 == 2)
    {
LABEL_16:
      if (!CVPixelBufferUnlockBaseAddress(a2, 0))
      {
        CVPixelBufferRelease(a2);
        v14 = *(this + 3663);

        MEMORY[0x2A1C5E1D8](v14);
      }

      return;
    }

    free(a2);
  }

  else if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v8 = AVE_Log_CheckConsole(0x2Eu);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(4);
    if (v8)
    {
      printf("%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.\n", v9, 46, v10);
      v11 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.", v11, 46, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: Trying to free a buffer that is NULL.", v9, 46, v10);
    }
  }
}

uint64_t H264VideoEncoderFrameReceiver::ProcessAndEmitLrmeStats(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a1 + 39224);
  v5 = 3758097084;
  v256[0] = 0;
  if (*(a1 + 39224))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v17 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.\n", CurrTime, 3, LevelStr, "ProcessAndEmitLrmeStats", 996, "false");
        AVE_GetCurrTime();
        LODWORD(v5) = -536870212;
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with Frame == NULL.");
    }

    goto LABEL_27;
  }

  if (*(a1 + 137804) != 2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v20 = AVE_Log_CheckConsole(3u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.\n", v21, 3, v22, "ProcessAndEmitLrmeStats", 998, "false");
        AVE_GetCurrTime();
        LODWORD(v5) = -536870212;
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec WARNING: ProcessAndEmitLrmeStats called with AVE_ClientType_LRME == false.");
    }

LABEL_27:
    H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v2, 0);
    v31 = 0;
    v29 = 0;
    goto LABEL_28;
  }

  if (*(a2 + 2456) != 3)
  {
    v23 = 26432;
    if (!*(a1 + 39227))
    {
      v23 = 26392;
    }

    v24 = *(a1 + v23 + 4 * *(a2 + 3180));
    if (!v24)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v31 = AVE_Log_CheckConsole(3u);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        if (!v31)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
          v29 = 0;
          goto LABEL_68;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.\n", v37, 3, v38, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        LODWORD(v5) = -536870212;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats with statsMapCSID == NULL.", v39, 3, v40, "ProcessAndEmitLrmeStats", 1005, "statsMapCSID != 0");
      }

      v29 = 0;
LABEL_39:
      v31 = 0;
LABEL_68:
      H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v2, 0);
      goto LABEL_28;
    }

    v25 = (a1 + 30136);
    v26 = *(a1 + 30136);
    v27 = *(a1 + 30140);
    v28 = IOSurfaceLookup(v24);
    if (v28)
    {
      v29 = v28;
      v30 = IOSurfaceLock(v28, 0, 0);
      if (v30)
      {
        v31 = v30;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v32 = AVE_Log_CheckConsole(3u);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.\n", v33, 3, v34, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
            v35 = AVE_GetCurrTime();
            v229 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.", v35, 3, v229, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: IOSurfaceLock statSurfaceRef failed.", v33, 3, v34, "ProcessAndEmitLrmeStats", 1011, "lockErr == 0");
          }
        }

        LODWORD(v5) = v31;
        goto LABEL_68;
      }

      v255 = v29;
      if (v4[3])
      {
        if (*(a1 + 137808) < 30)
        {
          v51 = v4[3];
          v52 = (IOSurfaceGetAllocSize(v29) >> 1) * ((v51 & 1) == 0);
        }

        else if (v4[3])
        {
          v52 = ((2 * (*v25 << v6) + 254) & 0xFFFFFF00) * (((*(a1 + 30140) << v6) + 127) >> 7);
        }

        else
        {
          v52 = 0;
        }
      }

      else
      {
        v52 = 0;
      }

      BaseAddress = IOSurfaceGetBaseAddress(v255);
      if (BaseAddress)
      {
        v251 = v2;
        v54 = v26 << v6;
        v55 = v27 << v6;
        v244 = v54;
        v247 = v54 + 15;
        v56 = (v54 + 15) >> 4;
        v249 = v55 + 15;
        v57 = (v55 + 15) >> 4;
        v254 = &BaseAddress[v52];
        AllocSize = IOSurfaceGetAllocSize(v255);
        v59 = *(a1 + 137808);
        if (v59 <= 8)
        {
          v10 = 0;
          v7 = 0;
          v60 = *(v4 + 309);
          if (v60 > 1)
          {
            if (v60 != 2)
            {
              v2 = v251;
              if (v60 == 3)
              {
                v5 = 3758097084;
                if (AVE_Log_CheckLevel(0x2Eu, 5))
                {
                  v94 = AVE_Log_CheckConsole(0x2Eu);
                  v95 = AVE_GetCurrTime();
                  v96 = AVE_Log_GetLevelStr(5);
                  if (v94)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported yet \n\n", v95, 46, v96);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(5);
                    v5 = 3758097084;
                  }

                  syslog(3, "%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported yet \n");
                }
              }

              else
              {
                v5 = 3758097084;
                if (v60 != 4)
                {
                  v8 = 0;
                  v9 = 0;
                  goto LABEL_8;
                }

                if (AVE_Log_CheckLevel(0x2Eu, 5))
                {
                  v61 = AVE_Log_CheckConsole(0x2Eu);
                  v62 = AVE_GetCurrTime();
                  v63 = AVE_Log_GetLevelStr(5);
                  if (v61)
                  {
                    printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported yet \n\n", v62, 46, v63);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(5);
                    v5 = 3758097084;
                  }

                  syslog(3, "%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported yet \n");
                }
              }

              v7 = 0;
              v8 = 0;
              v9 = 0;
              v10 = 0;
              goto LABEL_8;
            }

            v2 = v251;
            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v91 = AVE_Log_CheckConsole(0xDu);
              v92 = AVE_GetCurrTime();
              v93 = AVE_Log_GetLevelStr(4);
              v29 = v255;
              if (v91)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_STATISTICS_ONLY is not supported in video toolbox path\n", v92, 13, v93, "ProcessAndEmitLrmeStats", 1236, "bVTOF == false");
                AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_STATISTICS_ONLY is not supported in video toolbox path");
LABEL_216:
              LODWORD(v5) = 0;
              v31 = 4294954394;
              goto LABEL_68;
            }

LABEL_125:
            LODWORD(v5) = 0;
            v31 = 4294954394;
            goto LABEL_126;
          }

          if (v60)
          {
            if (v60 == 1)
            {
              v2 = v251;
              if (AVE_Log_CheckLevel(0xDu, 4))
              {
                v70 = AVE_Log_CheckConsole(0xDu);
                v71 = AVE_GetCurrTime();
                v72 = AVE_Log_GetLevelStr(4);
                v29 = v255;
                if (v70)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v71, 13, v72, "ProcessAndEmitLrmeStats", 1193, "bVTOF == false");
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path");
                goto LABEL_216;
              }

              goto LABEL_125;
            }

            goto LABEL_181;
          }

          v250 = AllocSize;
          v97 = *(v251 + 2552);
          Buffer = H264VideoEncoderFrameReceiver::CreateBuffer(a1, 4 * v56 * v57, v256);
          v99 = CVPixelBufferGetBaseAddress(Buffer);
          v252 = Buffer;
          if (v99)
          {
            v7 = v99;
            v100 = v55 + 31;
            v253 = 4 * v56 * v57;
            bzero(v99, v253);
            BytesPerRow = CVPixelBufferGetBytesPerRow(Buffer);
            if (*v4)
            {
              v102 = 0;
            }

            else
            {
              v102 = 2;
            }

            if (v100 >= 0x20)
            {
              v103 = 0;
              v104 = 0;
              v105 = 0;
              v106 = v244 + 31;
              v107 = (v244 + 31) >> 5;
              v248 = BytesPerRow >> 3;
              v108 = (96 * v107 + 63) & 0xFFFFFFC0;
              v109 = v56 * v57 - 1;
              v110 = 2 * v107;
              v111 = 2 * (BytesPerRow >> 3);
              v112 = 8 * v107;
              v113 = 8 * (BytesPerRow >> 3);
              v114 = v111;
              v115 = 2 * v107;
              do
              {
                if (v106 >= 0x20)
                {
                  v116 = 0;
                  v117 = v105 * v108;
                  do
                  {
                    if (v104 + v116 <= v109)
                    {
                      v118 = &v254[v117];
                      if (v116 < v56)
                      {
                        _S0 = (*v118 << 25 >> 25 << v102);
                        __asm { FCVT            H0, S0 }

                        v124 = &v7[4 * v103 + 4 * v116];
                        *v124 = LOWORD(_S0);
                        _S0 = (*v118 << 19 >> 26 << v102);
                        __asm { FCVT            H0, S0 }

                        *(v124 + 1) = LOWORD(_S0);
                      }

                      if (v116 + 1 < v56)
                      {
                        _S0 = (v118[9] << 25 >> 25 << v102);
                        __asm { FCVT            H0, S0 }

                        v127 = &v7[4 * v103 + 4 + 4 * v116];
                        *v127 = LOWORD(_S0);
                        _S0 = (v118[9] << 19 >> 26 << v102);
                        __asm { FCVT            H0, S0 }

                        *(v127 + 1) = LOWORD(_S0);
                      }

                      if (v115 + v116 <= v109 && ((4 * v105) | 1u) < v57)
                      {
                        if (v116 < v56)
                        {
                          _S0 = (v118[18] << 25 >> 25 << v102);
                          __asm { FCVT            H0, S0 }

                          v130 = &v7[4 * v114 + 4 * v116];
                          *v130 = LOWORD(_S0);
                          _S0 = (v118[18] << 19 >> 26 << v102);
                          __asm { FCVT            H0, S0 }

                          *(v130 + 1) = LOWORD(_S0);
                        }

                        if (v116 + 1 < v56)
                        {
                          _S0 = (v118[27] << 25 >> 25 << v102);
                          __asm { FCVT            H0, S0 }

                          v133 = &v7[4 * v114 + 4 + 4 * v116];
                          *v133 = LOWORD(_S0);
                          _S0 = (v118[27] << 19 >> 26 << v102);
                          __asm { FCVT            H0, S0 }

                          *(v133 + 1) = LOWORD(_S0);
                        }
                      }
                    }

                    v117 += 96;
                    v116 += 2;
                  }

                  while (v110 != v116);
                }

                ++v105;
                v115 += v112;
                v104 += v112;
                v114 += v113;
                v103 += v113;
              }

              while (v105 != ((v100 >> 5) + 1) >> 1);
              if (v100 >= 0x40)
              {
                v166 = 0;
                v167 = v100 >> 6;
                v9 = 4 * v56 * v57;
                v168 = 4 * v248;
                v169 = 6 * v107;
                v170 = 4 * v107;
                v171 = v111 + 4 * v248;
                v8 = v252;
                do
                {
                  if (v106 >= 0x20)
                  {
                    v172 = 0;
                    v173 = v166 * v108;
                    do
                    {
                      if (v170 + v172 <= v109)
                      {
                        v174 = &v254[(v250 >> 1) + v173];
                        if (v172 < v56)
                        {
                          _S0 = (*v174 << 25 >> 25 << v102);
                          __asm { FCVT            H0, S0 }

                          v176 = &v7[4 * v168 + 4 * v172];
                          *v176 = LOWORD(_S0);
                          _S0 = (*v174 << 19 >> 26 << v102);
                          __asm { FCVT            H0, S0 }

                          *(v176 + 1) = LOWORD(_S0);
                        }

                        if (v172 + 1 < v56)
                        {
                          _S0 = (v174[9] << 25 >> 25 << v102);
                          __asm { FCVT            H0, S0 }

                          v179 = &v7[4 * v168 + 4 + 4 * v172];
                          *v179 = LOWORD(_S0);
                          _S0 = (v174[9] << 19 >> 26 << v102);
                          v8 = v252;
                          __asm { FCVT            H0, S0 }

                          *(v179 + 1) = LOWORD(_S0);
                        }

                        v9 = 4 * v56 * v57;
                        if (v169 + v172 <= v109 && ((4 * v166) | 3u) < v57)
                        {
                          if (v172 < v56)
                          {
                            _S0 = (v174[18] << 25 >> 25 << v102);
                            __asm { FCVT            H0, S0 }

                            v182 = &v7[4 * v171 + 4 * v172];
                            *v182 = LOWORD(_S0);
                            _S0 = (v174[18] << 19 >> 26 << v102);
                            v8 = v252;
                            __asm { FCVT            H0, S0 }

                            *(v182 + 1) = LOWORD(_S0);
                            v9 = 4 * v56 * v57;
                          }

                          if (v172 + 1 < v56)
                          {
                            _S0 = (v174[27] << 25 >> 25 << v102);
                            __asm { FCVT            H0, S0 }

                            v185 = &v7[4 * v171 + 4 + 4 * v172];
                            *v185 = LOWORD(_S0);
                            _S0 = (v174[27] << 19 >> 26 << v102);
                            __asm { FCVT            H0, S0 }

                            *(v185 + 1) = LOWORD(_S0);
                          }
                        }
                      }

                      v173 += 96;
                      v172 += 2;
                    }

                    while (v110 != v172);
                  }

                  ++v166;
                  v169 += v112;
                  v170 += v112;
                  v171 += v113;
                  v168 += v113;
                }

                while (v166 != v167);
                goto LABEL_243;
              }
            }

            goto LABEL_281;
          }

          if (AVE_Log_CheckLevel(3u, 4))
          {
            v162 = AVE_Log_CheckConsole(3u);
            v163 = AVE_GetCurrTime();
            v164 = AVE_Log_GetLevelStr(4);
            v2 = v251;
            v8 = Buffer;
            if (v162)
            {
              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.\n", v163, 3, v164, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
              v165 = AVE_GetCurrTime();
              v235 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.", v165, 3, v235, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: MvStatsBuffer = NULL.", v163, 3, v164, "ProcessAndEmitLrmeStats", 1077, "MvStatsBuffer != __null");
            }

            v10 = 0;
          }

          else
          {
            v10 = 0;
            v2 = v251;
            v8 = Buffer;
          }

LABEL_278:
          v5 = 3758097084;
          goto LABEL_47;
        }

        if (v4[3])
        {
          if (*v4)
          {
            _H8 = COERCE_UNSIGNED_INT(4.0);
          }

          else
          {
            _H8 = COERCE_UNSIGNED_INT(1.0);
          }

          v245 = -64;
          v69 = 63;
          goto LABEL_100;
        }

        v73 = *(v4 + 309);
        if (v59 >= 0x1E && !v73)
        {
          if (*v4)
          {
            _H8 = COERCE_UNSIGNED_INT(1.0);
          }

          else
          {
            _H8 = COERCE_UNSIGNED_INT(0.25);
          }

          v245 = -128;
          v69 = 127;
LABEL_100:
          v243 = v69;
          v74 = *v25;
          v75 = v56 * v57;
          v76 = *(v251 + 2552);
          v77 = H264VideoEncoderFrameReceiver::CreateBuffer(a1, 4 * v56 * v57, v256);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v77, 0);
          if (BaseAddressOfPlane)
          {
            v79 = BaseAddressOfPlane;
            v241 = v74;
            bzero(BaseAddressOfPlane, (4 * v75));
            BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v77, 0);
            v5 = 3758097084;
            v252 = v77;
            v253 = (4 * v75);
            v242 = v56 * v57;
            if (v4[1240] != 1)
            {
              v82 = 0;
              LODWORD(v83) = 0;
              goto LABEL_152;
            }

            v239 = BytesPerRowOfPlane;
            if (CVPixelBufferGetPlaneCount(v77) != 2)
            {
              v82 = 0;
              LODWORD(v83) = 0;
              goto LABEL_151;
            }

            v81 = CVPixelBufferGetBaseAddressOfPlane(v77, 1uLL);
            if (v81)
            {
              v82 = v81;
              v83 = CVPixelBufferGetBytesPerRowOfPlane(v77, 1uLL) >> 1;
LABEL_151:
              BytesPerRowOfPlane = v239;
LABEL_152:
              v135 = BytesPerRowOfPlane >> 2;
              if (AVE_Log_CheckLevel(0xDu, 7))
              {
                v240 = AVE_Log_CheckConsole(0xDu);
                v136 = AVE_GetCurrTime();
                v137 = AVE_Log_GetLevelStr(7);
                if (v240)
                {
                  printf("%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v136, 13, v137, v56, v57, v253, v135);
                  v238 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v238);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v136);
                }
              }

              if (v249 >= 0x10)
              {
                v139 = 0;
                v140 = 0;
                v138 = 0;
                __asm { FCVT            S0, H8 }

                do
                {
                  if (v247 >= 0x10)
                  {
                    v142 = 0;
                    v143 = &v254[(((v241 << v6) + v243) & v245) * v140];
                    v144 = 4 * v140 * v83;
                    v145 = 4 * v140 * v135;
                    do
                    {
                      v146 = 4;
                      v147 = v139;
                      v148 = v144;
                      v149 = v145;
                      do
                      {
                        if (v147 < v57)
                        {
                          _S1 = ((*v143 << 21) >> 21) / _S0;
                          __asm { FCVT            H1, S1 }

                          v151 = &v79[4 * v149];
                          *v151 = LOWORD(_S1);
                          _S1 = ((*v143 << 11) >> 22) / _S0;
                          __asm { FCVT            H1, S1 }

                          *(v151 + 1) = LOWORD(_S1);
                          if (v82)
                          {
                            _D1 = (2048.0 - (*v143 >> 21)) * 0.00048828125;
                            __asm { FCVT            H1, D1 }

                            v82[v148] = LOWORD(_D1);
                          }

                          if ((*v143 & 0x1FFFFF) != 0)
                          {
                            ++v138;
                          }
                        }

                        v143 += 4;
                        v149 += v135;
                        v148 += v83;
                        ++v147;
                        --v146;
                      }

                      while (v146);
                      ++v142;
                      ++v145;
                      ++v144;
                    }

                    while (v142 != v56);
                  }

                  ++v140;
                  v139 += 4;
                }

                while (v140 != (v57 + 3) >> 2);
              }

              else
              {
                v138 = 0;
              }

              if (AVE_Log_CheckLevel(0xDu, 7))
              {
                v154 = AVE_Log_CheckConsole(0xDu);
                v155 = AVE_GetCurrTime();
                v156 = AVE_Log_GetLevelStr(7);
                v8 = v252;
                if (v154)
                {
                  printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n\n", v155, 13, v156, "ProcessAndEmitLrmeStats", v242, v138);
                  v157 = AVE_GetCurrTime();
                  v233 = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n", v157, 13, v233, "ProcessAndEmitLrmeStats", v242, v138);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_nonzero = %d\n", v155, 13, v156, "ProcessAndEmitLrmeStats", v242, v138);
                }

                v7 = 0;
                v10 = 0;
                v2 = v251;
                goto LABEL_282;
              }

              goto LABEL_280;
            }

            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v187 = AVE_Log_CheckConsole(0xDu);
              v85 = AVE_GetCurrTime();
              v188 = AVE_Log_GetLevelStr(4);
              v2 = v251;
              v8 = v77;
              if (v187)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MVCostBuffer is NULL\n", v85, 13, v188, "ProcessAndEmitLrmeStats", 1326, "psMVCostBuffer != __null", "ProcessAndEmitLrmeStats");
                v85 = AVE_GetCurrTime();
                v237 = "psMVCostBuffer != __null";
                v236 = 1326;
                v5 = 3758097084;
                v232 = AVE_Log_GetLevelStr(4);
              }

              else
              {
                v237 = "psMVCostBuffer != __null";
                v236 = 1326;
                v232 = v188;
              }

              v87 = "%lld %d AVE %s: %s:%d %s | OF: %s: MVCostBuffer is NULL";
LABEL_183:
              syslog(3, v87, v85, 13, v232, "ProcessAndEmitLrmeStats", v236, v237, "ProcessAndEmitLrmeStats");
              v10 = 0;
              goto LABEL_47;
            }
          }

          else
          {
            v5 = 3758097084;
            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v84 = AVE_Log_CheckConsole(0xDu);
              v85 = AVE_GetCurrTime();
              v86 = AVE_Log_GetLevelStr(4);
              v2 = v251;
              v8 = v77;
              if (v84)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v85, 13, v86, "ProcessAndEmitLrmeStats", 1309, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                v85 = AVE_GetCurrTime();
                v237 = "MvStatsBuffer != __null";
                v236 = 1309;
                v5 = 3758097084;
                v232 = AVE_Log_GetLevelStr(4);
              }

              else
              {
                v237 = "MvStatsBuffer != __null";
                v236 = 1309;
                v232 = v86;
              }

              v87 = "%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL";
              goto LABEL_183;
            }
          }

          v10 = 0;
          v2 = v251;
          v8 = v77;
          goto LABEL_47;
        }

        v10 = 0;
        v7 = 0;
        if (v73 <= 1)
        {
          if (!v73)
          {
            if (*v4)
            {
              v195 = 0;
            }

            else
            {
              v195 = 2;
            }

            v196 = *(v251 + 2552);
            v253 = 4 * v56 * v57;
            v197 = H264VideoEncoderFrameReceiver::CreateBuffer(a1, v253, v256);
            v198 = CVPixelBufferGetBaseAddress(v197);
            if (!v198)
            {
              v8 = v197;
              if (AVE_Log_CheckLevel(0xDu, 4))
              {
                v203 = AVE_Log_CheckConsole(0xDu);
                v204 = AVE_GetCurrTime();
                v205 = AVE_Log_GetLevelStr(4);
                if (v203)
                {
                  printf("%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL\n", v204, 13, v205, "ProcessAndEmitLrmeStats", 1387, "MvStatsBuffer != __null", "ProcessAndEmitLrmeStats");
                  v204 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: %s: MvStatsBuffer is NULL", v204);
              }

              v10 = 0;
              v2 = v251;
              goto LABEL_278;
            }

            v199 = v198;
            v252 = v197;
            v200 = CVPixelBufferGetBytesPerRow(v197) >> 2;
            if (AVE_Log_CheckLevel(0xDu, 7))
            {
              v201 = AVE_Log_CheckConsole(0xDu);
              v246 = AVE_GetCurrTime();
              v202 = AVE_Log_GetLevelStr(7);
              if (v201)
              {
                printf("%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n\n", v246, 13, v202, "ProcessAndEmitLrmeStats", v56, v57, v253, v200);
                v246 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
              }

              syslog(3, "%lld %d AVE %s: OF: %s: Copy LRME Best MV data: %d x %d MBs, FinalOutputSize %lu, iMBsPerRowForOutput %d\n", v246, 13);
            }

            if (*(a1 + 137808) >= 23)
            {
              v206 = v199;
              v9 = 4 * v56 * v57;
              AVE_LRME_FillFSResultsBestMV(v254, v206, v253, v56, v57, v200, *v4);
              v7 = 0;
              v10 = 0;
              v2 = v251;
              v8 = v252;
              goto LABEL_245;
            }

            bzero(v199, v253);
            if (v249 >= 0x10)
            {
              v210 = 0;
              v209 = 0;
              v208 = 0;
              v207 = 0;
              v211 = v254;
              do
              {
                if (v247 >= 0x10)
                {
                  v212 = 0;
                  do
                  {
                    v213 = 0;
                    v214 = v212 + 4 * v200 * v210;
                    v215 = v211;
                    do
                    {
                      for (i = 0; i != 7; ++i)
                      {
                        if (*&v215[2 * i] < 0)
                        {
                          break;
                        }
                      }

                      v217 = &v211[16 * v213];
                      v218 = *&v217[2 * i];
                      if (v218 < 0 && v214 < v57 * v200)
                      {
                        _S0 = (v218 << v195);
                        __asm { FCVT            H0, S0 }

                        v220 = &v199[4 * v214];
                        *v220 = LOWORD(_S0);
                        _S1 = (*&v217[2 * i] << 17 >> 25 << v195);
                        __asm { FCVT            H1, S1 }

                        *(v220 + 1) = LOWORD(_S1);
                        ++v208;
                        __asm { FCMP            H0, #0 }

                        if (_ZF)
                        {
                          v222 = 0;
                        }

                        else
                        {
                          v222 = 1;
                        }

                        __asm { FCMP            H1, #0 }

                        if (!_ZF)
                        {
                          v222 = 1;
                        }

                        v209 += v222;
                      }

                      v214 += v200;
                      ++v213;
                      v215 += 16;
                    }

                    while (v213 != 4);
                    v211 += 64;
                    ++v212;
                  }

                  while (v212 != v56);
                  v207 += 4 * v56;
                }

                ++v210;
              }

              while (v210 != (v57 + 3) >> 2);
            }

            else
            {
              v207 = 0;
              v208 = 0;
              v209 = 0;
            }

            v224 = v207;
            if (AVE_Log_CheckLevel(0xDu, 7))
            {
              v225 = AVE_Log_CheckConsole(0xDu);
              v226 = AVE_GetCurrTime();
              v227 = AVE_Log_GetLevelStr(7);
              if (v225)
              {
                printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", v226, 13, v227, "ProcessAndEmitLrmeStats", v224, v208, v209);
                v226 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(7);
              }

              syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n", v226);
            }

LABEL_280:
            v7 = 0;
LABEL_281:
            v10 = 0;
            v2 = v251;
            v8 = v252;
LABEL_282:
            v5 = 3758097084;
            v9 = v253;
            goto LABEL_8;
          }

          if (v73 == 1)
          {
            if (AVE_Log_CheckLevel(0xDu, 4))
            {
              v158 = AVE_Log_CheckConsole(0xDu);
              v159 = AVE_GetCurrTime();
              v160 = AVE_Log_GetLevelStr(4);
              if (v158)
              {
                printf("%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path\n", v159, 13, v160, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
                v161 = AVE_GetCurrTime();
                v234 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path", v161, 13, v234, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | OF: LRME_OUTPUT_ALL_MV_RESULTS is not supported in video toolbox path", v159, 13, v160, "ProcessAndEmitLrmeStats", 1443, "bVTOF == false");
              }
            }

            LODWORD(v5) = 0;
            v31 = 4294954394;
            v2 = v251;
            goto LABEL_126;
          }
        }

        else
        {
          switch(v73)
          {
            case 2:
              if (AVE_Log_CheckLevel(0x2Eu, 5))
              {
                v189 = AVE_Log_CheckConsole(0x2Eu);
                v190 = AVE_GetCurrTime();
                v191 = AVE_Log_GetLevelStr(5);
                if (v189)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n\n", v190, 46, v191);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_STATISTICS_ONLY is not supported\n");
              }

              goto LABEL_242;
            case 3:
              if (AVE_Log_CheckLevel(0x2Eu, 5))
              {
                v192 = AVE_Log_CheckConsole(0x2Eu);
                v193 = AVE_GetCurrTime();
                v194 = AVE_Log_GetLevelStr(5);
                if (v192)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n\n", v193, 46, v194);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_BEST_MV_AND_STATISTICS is not supported\n");
              }

              goto LABEL_242;
            case 4:
              if (AVE_Log_CheckLevel(0x2Eu, 5))
              {
                v88 = AVE_Log_CheckConsole(0x2Eu);
                v89 = AVE_GetCurrTime();
                v90 = AVE_Log_GetLevelStr(5);
                if (v88)
                {
                  printf("%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported\n\n", v89, 46, v90);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: LRME_OUTPUT_ALL_MV_AND_STATISTICS is not supported\n");
              }

LABEL_242:
              v7 = 0;
              v8 = 0;
              v9 = 0;
LABEL_243:
              v10 = 0;
              goto LABEL_244;
          }
        }

LABEL_181:
        v8 = 0;
        v9 = 0;
LABEL_244:
        v2 = v251;
LABEL_245:
        v5 = 3758097084;
        goto LABEL_8;
      }

      if (!AVE_Log_CheckLevel(3u, 4))
      {
        LODWORD(v5) = 0;
        v31 = 0;
LABEL_126:
        v29 = v255;
        goto LABEL_68;
      }

      v64 = AVE_Log_CheckConsole(3u);
      v65 = AVE_GetCurrTime();
      v66 = AVE_Log_GetLevelStr(4);
      v29 = v255;
      if (v64)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.\n", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
        v67 = AVE_GetCurrTime();
        v231 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v67, 3, v231, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: lrmeStat = NULL.", v65, 3, v66, "ProcessAndEmitLrmeStats", 1031, "lrmeStat != __null");
      }

      LODWORD(v5) = 0;
      goto LABEL_39;
    }

    if (AVE_Log_CheckLevel(3u, 4))
    {
      v31 = AVE_Log_CheckConsole(3u);
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(4);
      if (!v31)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
        v29 = 0;
        goto LABEL_67;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.\n", v47, 3, v48, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: statSurfaceRef IOSurfaceLookup failed.", v49, 3, v50, "ProcessAndEmitLrmeStats", 1008, "LrmeStatSurfaceRef != __null");
    }

    v29 = 0;
    v31 = 0;
LABEL_67:
    LODWORD(v5) = -536870212;
    goto LABEL_68;
  }

  v7 = 0;
  v255 = 0;
  v8 = 0;
  v9 = 0;
  v10 = -536870212;
LABEL_8:
  AVE_Dump_WriteOutput(*(v4 + 185), *(v2 + 20), v7, v9);
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v11 = v2;
    v12 = AVE_Log_CheckConsole(0x2Eu);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(7);
    v15 = *(v11 + 40);
    if (v12)
    {
      printf("%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d\n", v13, 46, v14, v15);
      v16 = AVE_GetCurrTime();
      v228 = AVE_Log_GetLevelStr(7);
      v5 = 3758097084;
      syslog(3, "%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d", v16, 46, v228, *(v11 + 40));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ARK H264FrameRec:ProcessAndEmitLrmeStats %d", v13, 46, v14, v15);
    }

    v2 = v11;
  }

  if (*(v2 + 2456) != 3)
  {
    v41 = *(a1 + 29288);
    if (!v41 || (v42 = *(a1 + 29280)) == 0)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v43 = AVE_Log_CheckConsole(3u);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped\n", v44, 3, v45, "ProcessAndEmitLrmeStats", 1522, "false");
          v46 = AVE_GetCurrTime();
          v5 = 3758097084;
          v230 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped", v46, 3, v230, "ProcessAndEmitLrmeStats", 1522, "false");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | OF: Session callbacks are not set properly, output will be dropped", v44, 3, v45, "ProcessAndEmitLrmeStats", 1522, "false");
        }
      }

      goto LABEL_47;
    }

    v41(v42, v8, v9, v2, *(v4 + 61));
  }

  v5 = 0;
LABEL_47:
  H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v2, 0);
  if (v8)
  {
    H264VideoEncoderFrameReceiver::DeleteBuffer(a1, v8);
  }

  v31 = v5;
  LODWORD(v5) = v10;
  v29 = v255;
LABEL_28:
  if (v256[0])
  {
    CFRelease(v256[0]);
    v256[0] = 0;
  }

  if (v29)
  {
    if (!v5)
    {
      IOSurfaceUnlock(v29, 0, 0);
    }

    CFRelease(v29);
  }

  return v31;
}

void AVE_LRME_FillFSResultsBestMV(char *a1, char *a2, size_t a3, int a4, int a5, int a6, int a7)
{
  bzero(a2, a3);
  if (a5)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = (a5 + 3) >> 2;
    if (a7)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }

    if (v17 <= 1)
    {
      v17 = 1;
    }

    do
    {
      if (a4)
      {
        v19 = 0;
        do
        {
          v20 = 0;
          v21 = v19 + 4 * a6 * v13;
          v22 = a1;
          do
          {
            v23 = 0;
            v24 = &a1[20 * v20];
            do
            {
              if (*&v22[2 * v23] < 0)
              {
                break;
              }

              ++v23;
            }

            while (v23 != 7);
            v25 = *&v24[2 * v23];
            if (v25 < 0 && v21 < a6 * a5)
            {
              _S0 = (v25 << v18);
              __asm { FCVT            H0, S0 }

              v31 = &a2[4 * v21];
              *v31 = LOWORD(_S0);
              _S1 = (*&v24[2 * v23] << 17 >> 25 << v18);
              __asm { FCVT            H1, S1 }

              *(v31 + 1) = LOWORD(_S1);
              ++v15;
              __asm { FCMP            H0, #0 }

              if (_ZF)
              {
                v33 = 0;
              }

              else
              {
                v33 = 1;
              }

              __asm { FCMP            H1, #0 }

              if (!_ZF)
              {
                v33 = 1;
              }

              v14 += v33;
            }

            v21 += a6;
            ++v20;
            v22 += 20;
          }

          while (v20 != 4);
          a1 += 80;
          ++v19;
        }

        while (v19 != a4);
        v16 += 4 * a4;
      }

      ++v13;
    }

    while (v13 != v17);
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
  }

  if (AVE_Log_CheckLevel(0xDu, 7))
  {
    v35 = AVE_Log_CheckConsole(0xDu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v35)
    {
      printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", CurrTime, 13, LevelStr, "AVE_LRME_FillFSResultsBestMV", v16, v15, v14);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n", CurrTime);
  }
}

uint64_t H264VideoEncoderFrameReceiver::SendOutputFrameDMV(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 6))
    {
      v4 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v7 = *(a2 + 40);
      v8 = *(a1 + 29280);
      v9 = *(a2 + 2568);
      if (v4)
      {
        printf("%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p\n", CurrTime, 46, LevelStr, v7, *(a1 + 29280), v9);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(6);
        v12 = *(a1 + 29280);
        syslog(3, "%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p", v10, 46, v11, *(a2 + 40), v12, *(a2 + 2568));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p", CurrTime, 46, LevelStr, v7, *(a1 + 29280), v9);
      }
    }

    v17 = *(a1 + 29288);
    if (v17 && (v18 = *(a1 + 29280)) != 0)
    {
      v17(v18, 0, 0, a2, *(a1 + 39468));
      v13 = 0;
    }

    else
    {
      v13 = 3758097084;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v19 = AVE_Log_CheckConsole(3u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped\n", v20, 3, v21, "SendOutputFrameDMV", 1579, "false");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped");
      }
    }
  }

  else
  {
    v13 = 3758097084;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v14 = AVE_Log_CheckConsole(3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL\n", v15, 3, v16, "SendOutputFrameDMV", 1564, "pFrame != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL");
    }
  }

  H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, a2, 0);
  return v13;
}

void *H264VideoEncoderFrameReceiver::MultiPass_EnqueueStats(uint64_t a1, const void *a2)
{
  result = AVE_MultiPass::new_stats((a1 + 16));
  if (result)
  {
    v5 = result;
    memcpy(result, a2, 0x626uLL);

    return AVE_MultiPass::enqueue_first_pass((a1 + 16), v5, 0);
  }

  return result;
}

uint64_t AVE_MultiPass::new_stats(AVE_MultiPass *this)
{
  v1 = *(this + 6330);
  if (v1)
  {
    v2 = v1 - 1;
    *(this + 6330) = v2;
    return *(this + v2 + 3149);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD8u, 4))
    {
      v4 = AVE_Log_CheckConsole(0xD8u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get free spot \n", CurrTime, 216, LevelStr, "new_stats", 56, "free_pool_available > 0");
        v7 = AVE_GetCurrTime();
        v8 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get free spot ", v7, 216, v8, "new_stats", 56, "free_pool_available > 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get free spot ", CurrTime, 216, LevelStr, "new_stats", 56, "free_pool_available > 0");
      }
    }

    return 0;
  }
}

uint64_t H264VideoEncoderFrameReceiver::Emit(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, const void *a8)
{
  if (a7)
  {
    v11 = 0;
  }

  else
  {
    v16 = a8;
    if (a8)
    {
      v11 = 0;
      v17 = 0;
      v15 = 1;
      goto LABEL_11;
    }

    v11 = -12904;
  }

  if (AVE_Log_CheckLevel(0x2Eu, 5))
  {
    v12 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(5);
    if (v12)
    {
      v15 = 3;
      printf("%lld %d AVE %s: %s::%s:%d frame drop %lld %d %lld %d 0x%x %p\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "Emit", 1764, a2, a3, a6, v11, 3, 0);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(5);
    }

    else
    {
      v15 = 3;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d frame drop %lld %d %lld %d 0x%x %p", CurrTime, 46, LevelStr, "AVE_FrameRecv", "Emit", 1764, a2, a3, a6, v11, 3, 0);
    v16 = 0;
    v17 = 4294966271;
  }

  else
  {
    v16 = 0;
    v17 = 4294966271;
    v15 = 3;
  }

LABEL_11:
  kdebug_trace();
  if (a3 == 2)
  {
    v18 = VTEncoderSessionEmitEncodedTile();
  }

  else
  {
    v18 = VTEncoderSessionEmitEncodedFrame();
  }

  v19 = v18;
  kdebug_trace();
  if (v19)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x2Eu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d\n", v21, 46, v22, "AVE_FrameRecv", "Emit", 1788, a2, a3, a6, v11, v15, v16, v19);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d", v23, 46, v24, "AVE_FrameRecv", "Emit", 1788);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d", v21, 46, v22, "AVE_FrameRecv", "Emit", 1788);
      }
    }

    return 4294966283;
  }

  return v17;
}

uint64_t H264VideoEncoderFrameReceiver::DropFrame(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 29352) && (v3 = a1 + 137804, *(a1 + 137804) != 2))
  {
    v9 = a2 + 29732;
    v10 = (a1 + 39252);
    v11 = a1 + 16 * *(a2 + 40) + 139568;
    *(v11 + 8) = *(a2 + 4608);
    v12 = *(a2 + 29732);
    v13 = (a1 + 29120);
    *v11 = 0;
    *(v11 + 4) = v12;
    v14 = AVE_Log_CheckLevel(0x2Eu, 7);
    if (v14)
    {
      v15 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v18 = *(a1 + 29272);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d\n", CurrTime, 46, LevelStr, "DropFrame", 1824, *v10, *(a2 + 44), *(a2 + 40), *(a1 + 29112), *v13, v13[38], *(a1 + 29276));
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(7);
        v19 = *(a1 + 29112);
        v53 = *(a1 + 29272);
        v55 = *(a1 + 29276);
        v52 = *v13;
        v50 = *(a2 + 44);
        v51 = *(a2 + 40);
        v49 = *v10;
      }

      else
      {
        v54 = v13[38];
      }

      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d", CurrTime, 46, LevelStr, "DropFrame");
    }

    *(a1 + 29272) = -1;
    *(a1 + 29276) = 0;
    if (*v10 >= 2 && !*(a2 + 44))
    {
      *(a1 + 29277) = 1;
    }

    v22 = *(a1 + 29352);
    if (v22 == 1)
    {
      v24 = *(a2 + 40);
      kdebug_trace();
      if (*(a1 + 29288) && *(a1 + 29280))
      {
        if (AVE_Log_CheckLevel(0x2Eu, 7))
        {
          v25 = AVE_Log_CheckConsole(0x2Eu);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(7);
          if (v25)
          {
            printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes\n", v26, 46, v27, 0);
            v28 = AVE_GetCurrTime();
            v46 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v28, 46, v46, 0);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v26, 46, v27, 0);
          }
        }

        (*(a1 + 29288))(*(a1 + 29280), 0, 0, 0, *(a1 + 39468));
      }

      else if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v29 = AVE_Log_CheckConsole(0x2Eu);
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(7);
        if (v29)
        {
          printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v30, 46, v31);
          v32 = AVE_GetCurrTime();
          v47 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v32, 46, v47);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v30, 46, v31);
        }
      }

      v33 = *(v3 + 12);
      v34 = *(a2 + 40);
      kdebug_trace();
      v20 = 0;
    }

    else
    {
      v23 = H264VideoEncoderFrameReceiver::Emit(v14, *(v3 + 12), *(a1 + 39448), v22, *(a2 + 2552), *(a2 + 40), -1000, 0);
      if (v23 == -1025)
      {
        v20 = 0;
      }

      else
      {
        v20 = v23;
      }

      ++*a1;
      ++*(a1 + 8);
    }

    *(v9 + 3324) = AVE_GetCurrTime();
    AVE_SEI::DeleteFrame(*(a1 + 143696), *(a2 + 40));
    v35 = *(a2 + 3180);
    if ((v35 & 0x80000000) == 0)
    {
      if (v35 >= 0x1E)
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v37 = AVE_Log_CheckConsole(0x2Eu);
          v38 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(4);
          if (v37)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v38, 46, v39, "AVE_FrameRecv", "DropFrame", 1884, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
            v38 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            v40 = *(a2 + 3180);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v38, 46);
        }

        return 4294966296;
      }

      else
      {
        v36 = *(a1 + 8 * v35 + 27072);
        if (v36)
        {
          bzero(v36, 0xBAA8uLL);
        }

        else if (AVE_Log_CheckLevel(3u, 4))
        {
          v41 = AVE_Log_CheckConsole(3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v42, 3, v43, "DropFrame", 1886, "codedHeader != __null");
            v44 = AVE_GetCurrTime();
            v48 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v44, 3, v48, "DropFrame", 1886, "codedHeader != __null");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v42, 3, v43, "DropFrame", 1886, "codedHeader != __null");
          }
        }
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v4 = AVE_Log_CheckConsole(0x2Eu);
      v5 = AVE_GetCurrTime();
      v6 = AVE_Log_GetLevelStr(7);
      if (v4)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v5, 46, v6);
        v7 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v7, 46, v45);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v5, 46, v6);
      }
    }

    return 0;
  }

  return v20;
}

__CFDictionary *H264VideoEncoderFrameReceiver::CreateTemporalLevelInfoDictionary(uint64_t a1, int *a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1911, "TemporalLevelInfoDict != __null");
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL", CurrTime);
    }

    return 0;
  }

  v7 = Mutable;
  AVE_CFDict_AddSInt32(*MEMORY[0x29EDB9340], a3, Mutable);
  AVE_CFDict_AddSInt32(*MEMORY[0x29EDB9338], *a2, v7);
  v8 = *MEMORY[0x29EDB9348];
  TierFlag = HEVC_FindTierFlag(a2[1]);
  AVE_CFDict_AddSInt32(v8, TierFlag, v7);
  v10 = *MEMORY[0x29EDB9330];
  ProfileIdc = HEVC_FindProfileIdc(a2[2]);
  AVE_CFDict_AddSInt32(v10, ProfileIdc, v7);
  v12 = CFDataCreate(0, (a1 + 137776), 4);
  if (!v12)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x2Eu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_profileCompatibilityFlags == NULL\n", v22, 46, v23, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1922, "cf_profileCompatibilityFlags != __null");
        v22 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | cf_profileCompatibilityFlags == NULL", v22);
    }

    v27 = v7;
    goto LABEL_21;
  }

  v13 = v12;
  CFDictionaryAddValue(v7, *MEMORY[0x29EDB9328], v12);
  v14 = CFDataCreate(0, (a1 + 137780), 6);
  if (!v14)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v24 = AVE_Log_CheckConsole(0x2Eu);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_constraintIndicatorFlags == NULL\n", v25, 46, v26, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1929, "cf_constraintIndicatorFlags != __null");
        v25 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | cf_constraintIndicatorFlags == NULL", v25);
    }

    CFRelease(v7);
    v27 = v13;
LABEL_21:
    CFRelease(v27);
    return 0;
  }

  v15 = v14;
  CFDictionaryAddValue(v7, *MEMORY[0x29EDB9318], v14);
  v16 = *MEMORY[0x29EDB9320];
  LevelIdc = HEVC_FindLevelIdc(a2[15]);
  AVE_CFDict_AddSInt32(v16, LevelIdc, v7);
  CFRelease(v13);
  CFRelease(v15);
  return v7;
}

uint64_t H264VideoEncoderFrameReceiver::SendFrameMCTF(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v9 = 3758097084;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v13 = AVE_Log_CheckConsole(0x2Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x2Eu, 6))
      {
        v4 = AVE_Log_CheckConsole(0x2Eu);
        v5 = AVE_GetCurrTime();
        v6 = AVE_Log_GetLevelStr(6);
        v7 = *(a1 + 29280);
        if (v4)
        {
          printf("%lld %d AVE %s: Send MCTF PlaneNumber:%d framenumber:%d %p %p\n", v5, 46, v6, *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2568));
          v5 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(6);
          v8 = *(a1 + 29280);
          v21 = *(a2 + 2568);
          v18 = *(a2 + 3180);
          v19 = *(a2 + 40);
        }

        else
        {
          v20 = *(a1 + 29280);
        }

        syslog(3, "%lld %d AVE %s: Send MCTF PlaneNumber:%d framenumber:%d %p %p", v5);
      }

      v16 = *(a1 + 29296);
      if (v16 && *(a1 + 29280) && *(a2 + 2568))
      {
        v16();
      }

      return 0;
    }
  }

  else
  {
    v9 = 3758097084;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v10 = AVE_Log_CheckConsole(3u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL\n", v11, 3, v12, "SendFrameMCTF", 1966, "pFrame != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL");
    }
  }

  return v9;
}

uint64_t H264VideoEncoderFrameReceiver::SendFrameGGM(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v10 = 3758097084;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v14 = AVE_Log_CheckConsole(0x2Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong plane number %d\n", CurrTime, 46, LevelStr, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong plane number %d", CurrTime, 46, LevelStr, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x2Eu, 6))
      {
        v4 = AVE_Log_CheckConsole(0x2Eu);
        v5 = AVE_GetCurrTime();
        v6 = AVE_Log_GetLevelStr(6);
        v7 = *(a2 + 2576);
        if (v4)
        {
          printf("%lld %d AVE %s: %s: Send GGM frame done: plane number (%d) frame number (%d), %p %p %p\n", v5, 46, v6, "SendFrameGGM", *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2576), *(a2 + 2568));
          v5 = AVE_GetCurrTime();
          v6 = AVE_Log_GetLevelStr(6);
          v8 = *(a1 + 29280);
          v9 = *(a2 + 2576);
          v27 = *(a2 + 2568);
          v25 = *(a2 + 40);
          v24 = *(a2 + 3180);
        }

        else
        {
          v26 = *(a2 + 2576);
        }

        syslog(3, "%lld %d AVE %s: %s: Send GGM frame done: plane number (%d) frame number (%d), %p %p %p", v5, 46, v6);
      }

      if (*(a1 + 29296) && *(a1 + 29280))
      {
        v17 = *(a1 + 137816);
        v18 = *(a2 + 40);
        v19 = *(a2 + 24704);
        kdebug_trace();
        (*(a1 + 29296))(*(a1 + 29280), a2, 0);
        v20 = *(a1 + 137816);
        v21 = *(a2 + 40);
        v22 = *(a2 + 24704);
        kdebug_trace();
      }

      return 0;
    }
  }

  else
  {
    v10 = 3758097084;
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x2Eu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameters\n", v12, 46, v13, "SendFrameGGM", 1996, "psFrame != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameters");
    }
  }

  return v10;
}

uint64_t AVE_EncFrameInfo_AddBuf(const void *a1, int a2, unsigned int a3, unsigned int *a4)
{
  if (a1 && a2 >= 1 && a4)
  {
    v7 = *a4;
    if (v7 < 0x4A)
    {
      result = 0;
      v9 = &a4[8 * v7];
      v9[2] = a3;
      *(v9 + 2) = a1;
      v9[6] = a2;
      *a4 = v7 + 1;
      return result;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d\n", CurrTime, 46, LevelStr, "AVE_EncFrameInfo_AddBuf", 2098, "0 <= psEncFrameInfo->iNum && psEncFrameInfo->iNum < (2 * ((32) < (256) ? (32) : (256)) + 10)", a1, a2, a4, *a4);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        v18 = *a4;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", v16, 46, v17, "AVE_EncFrameInfo_AddBuf");
      }

      else
      {
        v20 = *a4;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", CurrTime, 46, LevelStr, "AVE_EncFrameInfo_AddBuf");
      }
    }
  }

  else if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v10 = AVE_Log_CheckConsole(0x2Eu);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v11, 46, v12, "AVE_EncFrameInfo_AddBuf", 2093, "(pBuf != __null) && (iSize > 0) && (psEncFrameInfo != __null)", a1, a2, a4);
      v11 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
    }

    else
    {
      v19 = v12;
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v11, 46, v19);
  }

  return 4294966295;
}

void AVE_MultiPass::AVE_MultiPass(AVE_MultiPass *this)
{
  *(this + 25352) = 0u;
  *(this + 3171) = 0;
  v2 = this + 24576;
  *(this + 25384) = 0u;
  *(this + 25400) = 0u;
  *(this + 25416) = 0u;
  *(this + 25432) = 0u;
  *(this + 25448) = 0u;
  *(this + 25464) = 0u;
  AVE_MultiPass::empty_queues(this);
  *(v2 + 226) = 0;
  *(this + 3186) = 0;
  *(this + 3220) = 0;
  bzero(this + 25496, 0x108uLL);
  *(v2 + 249) = 0;
  *(this + 3168) = 0;
}

void AVE_MultiPass::empty_queues(AVE_MultiPass *this)
{
  v2 = (this + 25352);
  v3 = *(this + 3169);
  if (v3)
  {
    *(this + 3170) = v3;
    operator delete(v3);
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v4 = *(this + 3174);
  v5 = *(this + 3175);
  *(this + 3178) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v4 = (*(this + 3174) + 8);
      *(this + 3174) = v4;
      v6 = (*(this + 3175) - v4) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v7 = 256;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_10;
    }

    v7 = 512;
  }

  *(this + 3177) = v7;
LABEL_10:
  v8 = *(this + 3180);
  v9 = *(this + 3181);
  *(this + 3184) = 0;
  v10 = (v9 - v8) >> 3;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v8);
      v8 = (*(this + 3180) + 8);
      *(this + 3180) = v8;
      v10 = (*(this + 3181) - v8) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_16;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_16:
    *(this + 3183) = v11;
  }

  v12 = 0;
  v13 = xmmword_2954EBA50;
  v14 = vdupq_n_s64(this + 2);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    v16.i64[0] = 1574 * v13.i64[0];
    v16.i64[1] = 1574 * v13.i64[1];
    *(this + v12 + 25192) = vaddq_s64(v14, v16);
    v13 = vaddq_s64(v13, v15);
    v12 += 16;
  }

  while (v12 != 128);
  *(this + 6330) = 16;
}

uint64_t std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<_S_AVE_MultiPassStats **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<_S_AVE_MultiPassStats **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void AVE_MultiPass::~AVE_MultiPass(AVE_MultiPass *this)
{
  std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](this + 3179);
  std::deque<_S_AVE_MultiPassStats *>::~deque[abi:ne200100](this + 3173);
  v2 = *(this + 3169);
  if (v2)
  {
    *(this + 3170) = v2;
    operator delete(v2);
  }
}

uint64_t AVE_USL_CalcSurfaceInfo(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4)
{
  v5 = *(a1 + 20);
  v6 = a2[2995];
  v7 = a2[662];
  v8 = a2[663];
  *(a3 + 16) = AVE_CalcBufNumOfMBInputCtrl(*(a1 + 8), v6, HIWORD(a2[166]) & 1, a4);
  *(a3 + 20) = AVE_CalcBufSizeOfMBInputCtrl(v5, v6, v7, v8);
  return 0;
}

uint64_t AVE_USL_Drv_Create(int a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  bzero(v16, 0x7A0uLL);
  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %d\n", CurrTime, 40, LevelStr, "AVE_USL_Drv_Create", a1, a2);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d", CurrTime, 40, LevelStr, "AVE_USL_Drv_Create", a1, a2);
  }

  v7 = malloc_type_malloc(0x19E98uLL, 0x10200409CA022ABuLL);
  if (v7)
  {
    bzero(v7, 0x19E98uLL);
    operator new();
  }

  if (AVE_Log_CheckLevel(0x28u, 4))
  {
    v8 = AVE_Log_CheckConsole(0x28u);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to allocate %d %d\n", v9, 40, v10, "AVE_USL_Drv_Create", 354, "pINS != __null", a1, a2);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to allocate %d %d", v9, 40, v10, "AVE_USL_Drv_Create", 354, "pINS != __null", a1, a2);
  }

  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v11 = AVE_Log_CheckConsole(0x28u);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d\n", v12, 40, v13, "AVE_USL_Drv_Create", a1, a2, -1003);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d %d", v12, 40, v13, "AVE_USL_Drv_Create", a1, a2, -1003);
  }

  v14 = *MEMORY[0x29EDCA608];
  return 4294966293;
}

uint64_t AVE_USL_Drv_GetDevID(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t AVE_USL_Drv_GetDevRevision(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t AVE_USL_Drv_GetClientID(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t AVE_USL_Drv_GetProcCnt(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 106064);
    if (v1)
    {
      return *v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_USL_Drv_GetDropCnt(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 106064);
    if (v1)
    {
      return *(v1 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_USL_Drv_Destroy(const void ***a1)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  memset(v32, 0, sizeof(v32));
  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 40, LevelStr, "AVE_USL_Drv_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 40, v27, "AVE_USL_Drv_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 40, LevelStr, "AVE_USL_Drv_Destroy", a1);
    }
  }

  if (a1)
  {
    if (a1[3])
    {
      *&v33 = *a1;
      *(&v34 + 1) = 118000000;
      v35 = AVE_GetCurrTime();
      v6 = AVE_DAL::UCClose(a1[3], &v33, v32);
      if (v6)
      {
        v7 = v6;
        if (!AVE_Log_CheckLevel(0x28u, 4))
        {
LABEL_30:
          free(a1);
          goto LABEL_31;
        }

        v8 = AVE_Log_CheckConsole(0x28u);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(4);
        if (v8)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %d\n", v9, 40, v10, "AVE_USL_Drv_Destroy", 528, "ret == 0", v7);
          v11 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close client %d", v11);
          goto LABEL_30;
        }

        v31 = v7;
        v30 = 528;
        v28 = v10;
        v19 = "%lld %d AVE %s: %s:%d %s | fail to close client %d";
LABEL_29:
        syslog(3, v19, v9, 40, v28, "AVE_USL_Drv_Destroy", v30, "ret == 0", v31);
        goto LABEL_30;
      }

      AVE_DAL::TearDownIPC(a1[3]);
      v15 = AVE_DAL::UCDestroy(a1[3]);
      if (v15)
      {
        v7 = v15;
        if (!AVE_Log_CheckLevel(0x28u, 4))
        {
          goto LABEL_30;
        }

        v16 = AVE_Log_CheckConsole(0x28u);
        v9 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %d\n", v9, 40, v17, "AVE_USL_Drv_Destroy", 534, "ret == 0", v7);
          v18 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to close driver %d", v18);
          goto LABEL_30;
        }

        v31 = v7;
        v30 = 534;
        v28 = v17;
        v19 = "%lld %d AVE %s: %s:%d %s | fail to close driver %d";
        goto LABEL_29;
      }

      v20 = a1[3];
      if (v20)
      {
        AVE_DAL::~AVE_DAL(v20);
        MEMORY[0x29C24DA40]();
      }

      a1[3] = 0;
    }

    AppleAVEVA_CleanMem(a1);
    v21 = a1[13266];
    if (v21)
    {
      CVPixelBufferPoolRelease(v21);
    }

    v7 = 0;
    goto LABEL_30;
  }

  if (AVE_Log_CheckLevel(0x28u, 4))
  {
    v12 = AVE_Log_CheckConsole(0x28u);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v13, 40, v14, "AVE_USL_Drv_Destroy", 518, "pDrv != __null", 0);
      v13 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v13);
  }

  v7 = 4294966295;
LABEL_31:
  if (AVE_Log_CheckLevel(0x28u, 6))
  {
    v22 = AVE_Log_CheckConsole(0x28u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(6);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
      v25 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v25, 40, v29, "AVE_USL_Drv_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t AppleAVEVA_CleanMem(uint64_t a1)
{
  v2 = (a1 + 102400);
  v3 = *(a1 + 106064);
  if (v3)
  {
    H264VideoEncoderFrameReceiver::~H264VideoEncoderFrameReceiver(v3);
    MEMORY[0x29C24DA40]();
    v2[458] = 0;
  }

  v4 = v2[459];
  if (v4)
  {
    Connection::~Connection(v4);
    MEMORY[0x29C24DA40]();
    v2[459] = 0;
  }

  v5 = v2[460];
  if (v5)
  {
    Connection::~Connection(v5);
    MEMORY[0x29C24DA40]();
    v2[460] = 0;
  }

  AVE_DestroyDataUSurfaces(a1 + 136);

  return AVE_DestroyInUSurfaces(a1 + 128);
}

uint64_t AVE_USL_Drv_Prepare()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v110 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v6 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.\n", CurrTime, 40, LevelStr);
      v9 = AVE_GetCurrTime();
      v91 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.", v9, 40, v91);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.", CurrTime, 40, LevelStr);
    }
  }

  if (!v5)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v15 = AVE_Log_CheckConsole(3u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_Prepare, Null pointer for driver data.\n", v16, 3, v17, "AVE_USL_Drv_Prepare", 569, "pDriverInstance");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_Prepare, Null pointer for driver data.");
    }

    goto LABEL_100;
  }

  if (!v4)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v18 = AVE_Log_CheckConsole(3u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for AppleAVEVA_InitSettings.\n", v19, 3, v20, "AVE_USL_Drv_Prepare", 570, "pInitSettings");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for AppleAVEVA_InitSettings.");
    }

    goto LABEL_100;
  }

  if (!*v4)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v21 = AVE_Log_CheckConsole(3u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for psSessionCfg.\n", v22, 3, v23, "AVE_USL_Drv_Prepare", 572, "pInitSettings->psSessionCfg");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for psSessionCfg.");
    }

    goto LABEL_100;
  }

  if (!*(v4 + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v24 = AVE_Log_CheckConsole(3u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParams.\n", v25, 3, v26, "AVE_USL_Drv_Prepare", 573, "pInitSettings->pVideoParams");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParams.");
    }

    goto LABEL_100;
  }

  v10 = *(v4 + 16);
  if (!v10)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v27 = AVE_Log_CheckConsole(3u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParamsDriver.\n", v28, 3, v29, "AVE_USL_Drv_Prepare", 574, "pInitSettings->pVideoParamsDriver");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParamsDriver.");
    }

    goto LABEL_100;
  }

  v11 = *(v10 + 20);
  if (v11 == 2)
  {
    if (!*(v4 + 2304))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v43 = AVE_Log_CheckConsole(3u);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for VPSHevcParams.\n", v44, 3, v45, "AVE_USL_Drv_Prepare", 588, "pInitSettings->VPSHevcParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for VPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 2312))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v50 = AVE_Log_CheckConsole(3u);
        v51 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(4);
        if (v50)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSHevcParams.\n", v51, 3, v52, "AVE_USL_Drv_Prepare", 589, "pInitSettings->psaHEVC_SPS[0]");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 2328))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v53 = AVE_Log_CheckConsole(3u);
        v54 = AVE_GetCurrTime();
        v55 = AVE_Log_GetLevelStr(4);
        if (v53)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSHevcParams.\n", v54, 3, v55, "AVE_USL_Drv_Prepare", 590, "pInitSettings->psaHEVC_PPS[0]");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 2344))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v56 = AVE_Log_CheckConsole(3u);
        v57 = AVE_GetCurrTime();
        v58 = AVE_Log_GetLevelStr(4);
        if (v56)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHHevcParams.\n", v57, 3, v58, "AVE_USL_Drv_Prepare", 591, "pInitSettings->SHHevcParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 2352))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v59 = AVE_Log_CheckConsole(3u);
        v60 = AVE_GetCurrTime();
        v61 = AVE_Log_GetLevelStr(4);
        if (v59)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for RPSHevcParams.\n", v60, 3, v61, "AVE_USL_Drv_Prepare", 592, "pInitSettings->RPSHevcParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for RPSHevcParams.");
      }

      goto LABEL_100;
    }
  }

  else
  {
    if (v11 != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v34 = AVE_Log_CheckConsole(3u);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        v37 = *(*(v4 + 16) + 20);
        if (v34)
        {
          v38 = 597;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d\n", v35, 3, v36, "AVE_USL_Drv_Prepare", 597, "false", *(*(v4 + 16) + 20));
LABEL_48:
          v35 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(4);
          v94 = *(*(v4 + 16) + 20);
          v93 = v38;
          v92 = v39;
LABEL_59:
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d", v35, 3, v92, "AVE_USL_Drv_Prepare", v93, "false", v94);
          goto LABEL_100;
        }

        v94 = *(*(v4 + 16) + 20);
        v46 = 597;
LABEL_58:
        v93 = v46;
        v92 = v36;
        goto LABEL_59;
      }

LABEL_100:
      v72 = 4294966295;
      goto LABEL_101;
    }

    if (!*(v4 + 808))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v40 = AVE_Log_CheckConsole(3u);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSParams.\n", v41, 3, v42, "AVE_USL_Drv_Prepare", 580, "pInitSettings->SPSParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 816))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v47 = AVE_Log_CheckConsole(3u);
        v48 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(4);
        if (v47)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSParams.\n", v48, 3, v49, "AVE_USL_Drv_Prepare", 581, "pInitSettings->PPSParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 824))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v12 = AVE_Log_CheckConsole(3u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHParams.\n", v13, 3, v14, "AVE_USL_Drv_Prepare", 582, "pInitSettings->SHParams");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHParams.");
      }

      goto LABEL_100;
    }
  }

  memcpy((v5 + 232), *v4, 0x300uLL);
  memcpy((v5 + 2880), *(v4 + 8), 0x2460uLL);
  memcpy((v5 + 12192), *(v4 + 16), 0x4E0uLL);
  if ((*(v5 + 8) - 2) >= 4)
  {
    v30 = *(*(v4 + 16) + 20);
    if (v30 == 2)
    {
      memcpy((v5 + 13440), *(v4 + 2304), 0x2FCCuLL);
      memcpy((v5 + 25676), *(v4 + 2312), 0x1E7CuLL);
      memcpy((v5 + 41284), *(v4 + 2328), 0x25A0uLL);
      memcpy((v5 + 33480), *(v4 + 2320), 0x1E7CuLL);
      memcpy((v5 + 50916), *(v4 + 2336), 0x25A0uLL);
      memcpy((v5 + 60552), *(v4 + 2344), 0x53F0uLL);
      v31 = *(v4 + 2352);
      v32 = (v5 + 82040);
      v33 = 24024;
      goto LABEL_80;
    }

    if (v30 == 1)
    {
      memcpy((v5 + 13440), *(v4 + 808), 0x6B4uLL);
      memcpy((v5 + 15156), *(v4 + 816), 0x180uLL);
      v31 = *(v4 + 824);
      v32 = (v5 + 15540);
      v33 = 2340;
LABEL_80:
      memcpy(v32, v31, v33);
      goto LABEL_81;
    }

    if (AVE_Log_CheckLevel(3u, 4))
    {
      v83 = AVE_Log_CheckConsole(3u);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      v84 = *(*(v4 + 16) + 20);
      if (v83)
      {
        v38 = 637;
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d\n", v35, 3, v36, "AVE_USL_Drv_Prepare", 637, "false", *(*(v4 + 16) + 20));
        goto LABEL_48;
      }

      v94 = *(*(v4 + 16) + 20);
      v46 = 637;
      goto LABEL_58;
    }

    goto LABEL_100;
  }

LABEL_81:
  bzero(v97, 0x1A098uLL);
  v96 = *v5;
  v67 = &unk_2954B8F4E;
  if (v2)
  {
    LOBYTE(v67) = v2;
  }

  AVE_SNPrintf(v98, 512, "%s", v62, v63, v64, v65, v66, v67);
  v68 = *(v5 + 13280);
  v69 = *(v5 + 13312);
  v101 = *(v5 + 13296);
  v102 = v69;
  v99 = *(v5 + 13264);
  v100 = v68;
  v103 = *(v5 + 13328);
  v70 = *(v5 + 13380);
  v106 = *(v5 + 13364);
  v107 = v70;
  v108 = *(v5 + 13396);
  v71 = *(v5 + 13348);
  v104 = *(v5 + 13332);
  v105 = v71;
  v97[2] = 118000000;
  v97[3] = AVE_GetCurrTime();
  memcpy(v109, (v5 + 232), sizeof(v109));
  memset(v95, 0, sizeof(v95));
  v72 = AVE_DAL::UCPrepare(*(v5 + 24), &v96, v95);
  if (v72)
  {
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v73 = AVE_Log_CheckConsole(0x28u);
      v74 = AVE_GetCurrTime();
      v75 = AVE_Log_GetLevelStr(4);
      if (v73)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %d\n", v74, 40, v75, "AVE_USL_Drv_Prepare", 665, "ret == 0", v72);
        v74 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to prepare %d", v74);
    }
  }

  else
  {
    v76 = 0;
    v77 = *(v4 + 16) + 1072;
    v78 = 1;
    do
    {
      v79 = 0;
      v80 = 17 * v76;
      v81 = v78;
      v82 = v5 + 13264 + 68 * v76;
      do
      {
        *(v77 + 4 * v80 + v79) = *(v82 + v79);
        v79 += 4;
      }

      while (v79 != 68);
      v78 = 0;
      v76 = 1;
    }

    while ((v81 & 1) != 0);
  }

LABEL_101:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v85 = AVE_Log_CheckConsole(0x28u);
    v86 = AVE_GetCurrTime();
    v87 = AVE_Log_GetLevelStr(7);
    v88 = *(v5 + 44);
    if (v85)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Prepare F %d %d\n", v86, 40, v87, *(v5 + 44), v72);
      v86 = AVE_GetCurrTime();
      v87 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Prepare F %d %d", v86, 40, v87, *(v5 + 44), v72);
  }

  v89 = *MEMORY[0x29EDCA608];
  return v72;
}

uint64_t AVE_USL_Drv_Start(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int *a9, void *__dst)
{
  v10 = MEMORY[0x2A1C7C4A8]();
  v156 = v11;
  v13 = v12;
  v15 = v14;
  v16 = v10;
  v188 = *MEMORY[0x29EDCA608];
  v173 = -1;
  bzero(v174, 0x1A0B0uLL);
  memset(v172, 0, sizeof(v172));
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v17 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v17)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Start.\n", CurrTime, 40, LevelStr);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Start.", CurrTime, 40, LevelStr);
  }

  if (!v16)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v26 = AVE_Log_CheckConsole(3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.\n", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
    }

    goto LABEL_170;
  }

  if (!v15)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v29 = AVE_Log_CheckConsole(3u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.\n", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
        v30 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
    }

    goto LABEL_170;
  }

  v20 = *v15;
  if (!*v15)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v32 = AVE_Log_CheckConsole(3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.\n", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
    }

    goto LABEL_170;
  }

  if (!v15[1])
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v35 = AVE_Log_CheckConsole(3u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.\n", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
    }

    goto LABEL_170;
  }

  v21 = v15[2];
  if (!v21)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v38 = AVE_Log_CheckConsole(3u);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParamsDriver.\n", v39, 3, v40, "AVE_USL_Drv_Start", 716, "pInitSettings->pVideoParamsDriver");
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParamsDriver.", v39, 3, v40, "AVE_USL_Drv_Start", 716, "pInitSettings->pVideoParamsDriver");
    }

    goto LABEL_170;
  }

  v22 = v21[5];
  if (v22 == 2)
  {
    if (!v15[288])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v49 = AVE_Log_CheckConsole(3u);
        v50 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        if (v49)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.\n", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
          v50 = AVE_GetCurrTime();
          v51 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[289])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v55 = AVE_Log_CheckConsole(3u);
        v56 = AVE_GetCurrTime();
        v57 = AVE_Log_GetLevelStr(4);
        if (v55)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.\n", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
          v56 = AVE_GetCurrTime();
          v57 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[291])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v58 = AVE_Log_CheckConsole(3u);
        v59 = AVE_GetCurrTime();
        v60 = AVE_Log_GetLevelStr(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.\n", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
          v59 = AVE_GetCurrTime();
          v60 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[293])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v74 = AVE_Log_CheckConsole(3u);
        v75 = AVE_GetCurrTime();
        v76 = AVE_Log_GetLevelStr(4);
        if (v74)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.\n", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
          v75 = AVE_GetCurrTime();
          v76 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[294])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v93 = AVE_Log_CheckConsole(3u);
        v94 = AVE_GetCurrTime();
        v95 = AVE_Log_GetLevelStr(4);
        if (v93)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for RPSHevcParams.\n", v94, 3, v95, "AVE_USL_Drv_Start", 734, "pInitSettings->RPSHevcParams");
          v94 = AVE_GetCurrTime();
          v95 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for RPSHevcParams.", v94, 3, v95, "AVE_USL_Drv_Start", 734, "pInitSettings->RPSHevcParams");
      }

      goto LABEL_170;
    }
  }

  else
  {
    if (v22 != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v43 = AVE_Log_CheckConsole(3u);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
          v44 = AVE_GetCurrTime();
          v45 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
      }

      goto LABEL_170;
    }

    if (!v15[101])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v46 = AVE_Log_CheckConsole(3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.\n", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[102])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v52 = AVE_Log_CheckConsole(3u);
        v53 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.\n", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
          v53 = AVE_GetCurrTime();
          v54 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[103])
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v23 = AVE_Log_CheckConsole(3u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.\n", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
          v24 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
      }

LABEL_170:
      SurfacePool = 4294966295;
      goto LABEL_171;
    }
  }

  v41 = v16 + 12800;
  v16[13261] = v13;
  memcpy(v16 + 29, v20, 0x300uLL);
  memcpy(v16 + 360, v15[1], 0x2460uLL);
  memcpy(v16 + 1524, v15[2], 0x4E0uLL);
  v42 = *(v15[2] + 5);
  v153 = v16 + 12800;
  if (v42 == 2)
  {
    __src = v16 + 29;
    memcpy(v16 + 1680, v15[288], 0x2FCCuLL);
    v61 = v15;
    v62 = 0;
    v63 = v61 + 289;
    v151 = v61;
    v64 = v61 + 291;
    v155 = v16 + 25676;
    v65 = v16;
    v154 = v16 + 41284;
    v66 = 1;
    do
    {
      v67 = v66;
      v68 = v63[v62];
      if (v68)
      {
        memcpy(&v155[7804 * v62], v68, 0x1E7CuLL);
      }

      v69 = v64[v62];
      if (v69)
      {
        memcpy(&v154[9632 * v62], v69, 0x25A0uLL);
      }

      v66 = 0;
      v62 = 1;
    }

    while ((v67 & 1) != 0);
    v15 = v151;
    v16 = v65;
    memcpy(v65 + 7569, v151[293], 0x53F0uLL);
    memcpy(v65 + 10255, v151[294], 0x5DD8uLL);
    memcpy(v65 + 125, v151 + 295, 0x758uLL);
    v41 = v153;
  }

  else
  {
    if (v42 != 1)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v71 = AVE_Log_CheckConsole(3u);
        v72 = AVE_GetCurrTime();
        v73 = AVE_Log_GetLevelStr(4);
        if (v71)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v72, 3, v73, "AVE_USL_Drv_Start", 785, "false", *(v15[2] + 5));
          v72 = AVE_GetCurrTime();
          v73 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d", v72, 3, v73, "AVE_USL_Drv_Start", 785, "false", *(v15[2] + 5));
      }

      goto LABEL_170;
    }

    __src = v16 + 29;
    memcpy(v16 + 1680, v15[101], 0x6B4uLL);
    memcpy(v16 + 15156, v15[102], 0x180uLL);
    memcpy(v16 + 15540, v15[103], 0x924uLL);
    memcpy(v16 + 125, v15 + 104, 0x5C0uLL);
  }

  v70 = *(v16 + 2);
  if (v70 == 4)
  {
    v77 = *(v15 + 48);
    v78 = *(v15 + 49);
    v16[129] = v15[100];
    *(v16 + 125) = v77;
    *(v16 + 127) = v78;
  }

  else if (v70 == 3)
  {
    memcpy(v16 + 125, v15 + 7, 0x2C8uLL);
  }

  *(v41 + 232) = *(v15 + 5);
  if (!v41[458])
  {
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v158 = 0u;
    v159 = 0u;
    v89 = 48;
    *v157 = 0u;
    if (v70 <= 2)
    {
      if (v70 == 1)
      {
        if ((*(v16 + 683) & 0x80) != 0)
        {
          v111 = *(v16 + 172);
        }

        else
        {
          v111 = -1;
        }

        v105 = AVE_Enc_DecideInputQueueMaxCnt(*(v16 + 80), *(v16 + 81), *(v16 + 82), *(v16 + 83), v111);
        goto LABEL_154;
      }

      if (v70 != 2)
      {
LABEL_155:
        v115 = AVE_DAL::SetUpIPC(v16[3], (v89 + 1), 72736);
        if (!v115)
        {
          operator new();
        }

        SurfacePool = v115;
        if (AVE_Log_CheckLevel(0xEu, 4))
        {
          v116 = AVE_Log_CheckConsole(0xEu);
          v117 = AVE_GetCurrTime();
          v118 = AVE_Log_GetLevelStr(4);
          v119 = *v16;
          if (v116)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d\n", v117, 14, v118, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, SurfacePool);
            v117 = AVE_GetCurrTime();
            v118 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d", v117, 14, v118, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, SurfacePool);
        }

        goto LABEL_171;
      }
    }

    else if (v70 != 3 && v70 != 4 && v70 != 5)
    {
      goto LABEL_155;
    }

    v105 = AVE_MCTF_DecideInputQueueMaxCnt();
LABEL_154:
    v89 = v105;
    goto LABEL_155;
  }

  v157[0] = 0;
  AVE_DAL::Alloc(v16[3], 72736, v157);
  AVE_DAL::Addr2Idx(v16[3], v157[0], &v173);
  v79 = v157[0];
  if (!v157[0])
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v90 = AVE_Log_CheckConsole(3u);
      v91 = AVE_GetCurrTime();
      v92 = AVE_Log_GetLevelStr(4);
      if (v90)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v91, 3, v92, "AVE_USL_Drv_Start", 926, "Frame");
        v91 = AVE_GetCurrTime();
        v92 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v91, 3, v92, "AVE_USL_Drv_Start", 926, "Frame");
    }

    goto LABEL_164;
  }

  bzero((v157[0] + 8), 0x11C18uLL);
  v80 = v173;
  *v79 = v173;
  *(v79 + 4) = 5;
  *(v79 + 40) = *(v16 + 11);
  *(v79 + 33048) = v15[530];
  *(v79 + 16) = v153[461] != 0;
  *(v79 + 20) = *(v153 + 924);
  *&v159 = 0;
  *v157 = 0u;
  v158 = 0u;
  LODWORD(v157[0]) = v80;
  if (Connection::writePacketBlock(v153[460], v157))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v86 = AVE_Log_CheckConsole(3u);
      v87 = AVE_GetCurrTime();
      v88 = AVE_Log_GetLevelStr(4);
      if (v86)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v87, 3, v88, "AVE_USL_Drv_Start", 946, "res == 0");
        v87 = AVE_GetCurrTime();
        v88 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread", v87, 3, v88, "AVE_USL_Drv_Start", 946, "res == 0");
    }

LABEL_135:
    SurfacePool = 4294966296;
    v106 = v16;
LABEL_136:
    v157[0] = v15[530];
    AVE_USL_Drv_Stop(v106, v157, 0);
    goto LABEL_171;
  }

  v174[0] = *v16;
  v96 = &unk_2954B8F4E;
  if (v156)
  {
    LOBYTE(v96) = v156;
  }

  AVE_SNPrintf(v175, 512, "%s", v81, v82, v83, v84, v85, v96);
  v187 = v173;
  v97 = *(v16 + 830);
  v98 = *(v16 + 832);
  v178 = *(v16 + 831);
  v179 = v98;
  v176 = *(v16 + 829);
  v177 = v97;
  v180 = *(v16 + 3332);
  v99 = *(v16 + 13380);
  v183 = *(v16 + 13364);
  v184 = v99;
  v100 = *(v16 + 13348);
  v181 = *(v16 + 13332);
  v182 = v100;
  v185 = *(v16 + 3349);
  v174[3] = 118000000;
  v174[4] = AVE_GetCurrTime();
  memcpy(v186, __src, sizeof(v186));
  *(v79 + 33072) = AVE_GetCurrTime();
  SurfacePool = AVE_DAL::UCStart(v16[3], v174, v172);
  if (SurfacePool)
  {
    Connection::dropLastPacketBlock(v153[460]);
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v102 = AVE_Log_CheckConsole(0x28u);
      v103 = AVE_GetCurrTime();
      v104 = AVE_Log_GetLevelStr(4);
      if (v102)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to start %d\n", v103, 40, v104, "AVE_USL_Drv_Start", 973, "ret == 0", SurfacePool);
        v103 = AVE_GetCurrTime();
        v104 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %d", v103, 40, v104, "AVE_USL_Drv_Start", 973, "ret == 0", SurfacePool);
    }

    goto LABEL_163;
  }

  *&v159 = 0;
  *v157 = 0u;
  v158 = 0u;
  PacketBlock = Connection::readPacketBlock(v153[459], v157, 120000000);
  if (LODWORD(v157[0]) != v173)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v112 = AVE_Log_CheckConsole(3u);
      v113 = AVE_GetCurrTime();
      v114 = AVE_Log_GetLevelStr(4);
      if (v112)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.\n", v113, 3, v114, "AVE_USL_Drv_Start", 984, "status.counter == counter");
        v113 = AVE_GetCurrTime();
        v114 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.", v113, 3, v114, "AVE_USL_Drv_Start", 984, "status.counter == counter");
    }

    goto LABEL_135;
  }

  if (v159)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v108 = AVE_Log_CheckConsole(3u);
      v109 = AVE_GetCurrTime();
      v110 = AVE_Log_GetLevelStr(4);
      if (v108)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.\n", v109, 3, v110, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v159);
        v109 = AVE_GetCurrTime();
        v110 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.", v109, 3, v110, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v159);
    }

    goto LABEL_135;
  }

  if (PacketBlock)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v120 = AVE_Log_CheckConsole(3u);
      v121 = AVE_GetCurrTime();
      v122 = AVE_Log_GetLevelStr(4);
      if (v120)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v121, 3, v122, "AVE_USL_Drv_Start", 986, "res == 0");
        v121 = AVE_GetCurrTime();
        v122 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread", v121, 3, v122, "AVE_USL_Drv_Start", 986, "res == 0");
    }

    goto LABEL_135;
  }

  v128 = v172[2];
  v129 = DWORD1(v172[2]);
  *(v153 + 925) = v172[2];
  *(v153 + 926) = v129;
  v130 = *a9;
  if (*a9)
  {
    if (v130 != -1 && v130 > v129)
    {
      v129 = *a9;
    }
  }

  else
  {
    v129 = v128;
  }

  *a9 = v129;
  if (Connection::connectionSize(v153[460], v129))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v131 = AVE_Log_CheckConsole(3u);
      v132 = AVE_GetCurrTime();
      v133 = AVE_Log_GetLevelStr(4);
      v134 = *a9;
      if (v131)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d\n", v132, 3, v133, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
        v132 = AVE_GetCurrTime();
        v133 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d", v132, 3, v133, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (Connection::connectionSize(v153[459], *a9))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v135 = AVE_Log_CheckConsole(3u);
      v136 = AVE_GetCurrTime();
      v137 = AVE_Log_GetLevelStr(4);
      v138 = *a9;
      if (v135)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d\n", v136, 3, v137, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
        v136 = AVE_GetCurrTime();
        v137 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v136, 3, v137, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (__dst)
  {
    memcpy(__dst, &v172[2] + 8, 0x128uLL);
  }

  AVE_USL_CalcSurfaceInfo(v16, __src, (v16 + 6), *a9);
  if ((*(*v15 + 666) & 1) != 0 && !v153[466])
  {
    SurfacePool = AVE_PixelBuf_CreateSurfacePool(*(v16 + 17), *(v16 + 16), v153 + 466);
    if (SurfacePool)
    {
      if (AVE_Log_CheckLevel(0x28u, 4))
      {
        v143 = AVE_Log_CheckConsole(0x28u);
        v144 = AVE_GetCurrTime();
        v145 = AVE_Log_GetLevelStr(4);
        v147 = *(v16 + 16);
        v146 = *(v16 + 17);
        v148 = *v16;
        if (v143)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d\n", v144, 40, v145, "AVE_USL_Drv_Start", 1036, "ret == 0", v146, v147, *v16, SurfacePool);
          v149 = AVE_GetCurrTime();
          v150 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v149, 40, v150, "AVE_USL_Drv_Start", 1036, "ret == 0", *(v16 + 17), *(v16 + 16), *v16, SurfacePool);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v144, 40, v145, "AVE_USL_Drv_Start", 1036, "ret == 0", v146, v147, *v16, SurfacePool);
        }
      }

      goto LABEL_163;
    }
  }

  SurfacePool = AVE_CreateInUSurfaces(v16 + 6, *v16, v16 + 16);
  if (SurfacePool)
  {
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v139 = AVE_Log_CheckConsole(0x28u);
      v140 = AVE_GetCurrTime();
      v141 = AVE_Log_GetLevelStr(4);
      v142 = *v16;
      if (v139)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v140, 40, v141, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, SurfacePool);
        v140 = AVE_GetCurrTime();
        v141 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d", v140, 40, v141, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, SurfacePool);
    }

LABEL_163:
    v106 = v16;
    if (SurfacePool != -1003)
    {
      goto LABEL_136;
    }

LABEL_164:
    SurfacePool = 4294966293;
    goto LABEL_171;
  }

  *(v16 + 40) = 1;
LABEL_171:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v123 = AVE_Log_CheckConsole(0x28u);
    v124 = AVE_GetCurrTime();
    v125 = AVE_Log_GetLevelStr(7);
    if (v123)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.\n", v124, 40, v125, SurfacePool);
      v124 = AVE_GetCurrTime();
      v125 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.", v124, 40, v125, SurfacePool);
  }

  v126 = *MEMORY[0x29EDCA608];
  return SurfacePool;
}

void Connection::Connection(Connection *this)
{
  pthread_mutex_init(this, 0);
  pthread_cond_init((this + 64), 0);
  pthread_cond_init((this + 112), 0);
  *(this + 12) = vdupq_n_s64(0x80uLL);
  *(this + 26) = 0;
  *(this + 27) = 0;
  operator new[]();
}

uint64_t Connection::dropLastPacketBlock(pthread_mutex_t *this)
{
  pthread_mutex_lock(this);
  v2 = *&this[3].__opaque[16];
  if (v2 >= 1 && v2 > *&this[3].__opaque[8])
  {
    *&this[3].__opaque[16] = v2 - 1;
  }

  pthread_mutex_unlock(this);
  return 0;
}

uint64_t Connection::readPacketBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  pthread_mutex_lock(a1);
  v6 = a3 / 1000000;
  v7 = a3 % 1000000;
  while (1)
  {
    v8 = *(a1 + 208);
    if (*(a1 + 216) > v8)
    {
      break;
    }

    gettimeofday((a1 + 176), 0);
    v9 = 1000 * (v7 + *(a1 + 184));
    *(a1 + 160) = *(a1 + 176) + v6;
    *(a1 + 168) = v9;
    if (pthread_cond_timedwait((a1 + 64), a1, (a1 + 160)) == 60)
    {
      v10 = 0xFFFFFFFFLL;
      goto LABEL_11;
    }
  }

  v11 = *(a1 + 224) + 40 * (v8 % *(a1 + 192));
  v12 = *v11;
  v13 = *(v11 + 16);
  *(a2 + 32) = *(v11 + 32);
  *a2 = v12;
  *(a2 + 16) = v13;
  v14 = *(a1 + 200);
  v15 = *(a1 + 208) + 1;
  *(a1 + 208) = v15;
  v16 = *(a1 + 216);
  v17 = __OFSUB__(v16, v15);
  v18 = v16 - v15;
  if ((v18 < 0) ^ v17 | (v18 == 0))
  {
    v18 = 0;
  }

  if (v18 < v14)
  {
    pthread_cond_signal((a1 + 112));
  }

  v10 = 0;
LABEL_11:
  pthread_mutex_unlock(a1);
  return v10;
}

uint64_t Connection::connectionSize(pthread_mutex_t *this, unsigned int a2)
{
  pthread_mutex_lock(this);
  if (this[3].__sig >= a2)
  {
    v13 = 0;
    *this[3].__opaque = a2;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Au, 4))
    {
      v4 = AVE_Log_CheckConsole(0x2Au);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v8 = *&this[3].__opaque[8];
      v7 = *&this[3].__opaque[16];
      v9 = v7 <= v8;
      v10 = v7 - v8;
      if (v9)
      {
        v10 = 0;
      }

      if (v4)
      {
        printf("%lld %d AVE %s: configure connection size fail %lld %lld %d %lld\n", CurrTime, 42, LevelStr, this[3].__sig, *this[3].__opaque, a2, v10);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        sig = this[3].__sig;
        v12 = *this[3].__opaque;
        *&this[3].__opaque[16];
        *&this[3].__opaque[8];
      }

      syslog(3, "%lld %d AVE %s: configure connection size fail %lld %lld %d %lld", CurrTime);
    }

    v13 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock(this);
  return v13;
}

uint64_t AVE_USL_Drv_Stop(uint64_t a1, uint64_t *a2, int a3)
{
  v49 = -1;
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v6 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.\n", CurrTime, 40, LevelStr);
      v9 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", v9, 40, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", CurrTime, 40, LevelStr);
    }
  }

  if (a1)
  {
    v48 = *a2;
    if (AVE_USL_Drv_Complete(a1, &v48) == -1004)
    {
      v10 = 4294966292;
    }

    else
    {
      v47[0] = 0;
      AVE_DAL::Alloc(*(a1 + 24), 72736, v47);
      AVE_DAL::Addr2Idx(*(a1 + 24), v47[0], &v49);
      v15 = v47[0];
      if (!v47[0])
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v20 = AVE_Log_CheckConsole(3u);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
            v23 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v23, 3, v45, "AVE_USL_Drv_Stop", 1103, "Frame");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
          }
        }

        v10 = 4294966293;
        goto LABEL_32;
      }

      bzero((v47[0] + 8), 0x11C18uLL);
      v16 = v49;
      *v15 = v49;
      *(v15 + 4) = 6;
      *(v15 + 40) = *(a1 + 44);
      *(v15 + 33048) = *a2;
      *(v15 + 16) = *(a1 + 106088) != 0;
      *(v15 + 20) = *(a1 + 106096);
      memset(v47, 0, 40);
      LODWORD(v47[0]) = v16;
      if (Connection::writePacketBlock(*(a1 + 106080), v47))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v17 = AVE_Log_CheckConsole(3u);
          v18 = AVE_GetCurrTime();
          v19 = AVE_Log_GetLevelStr(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v18, 3, v19, "AVE_USL_Drv_Stop", 1123, "res == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }
      }

      else
      {
        *&v47[3] = 0u;
        *&v47[1] = 0u;
        memset(v46, 0, sizeof(v46));
        v47[0] = *a1;
        v47[5] = v49;
        v47[3] = 118000000;
        v47[4] = AVE_GetCurrTime();
        v24 = AVE_DAL::UCStop(*(a1 + 24), v47, v46);
        if (v24)
        {
          v10 = v24;
          v25 = *(a1 + 106080);
          pthread_mutex_lock(v25);
          v26 = *(v25 + 216);
          if (v26 >= 1 && v26 > *(v25 + 208))
          {
            *(v25 + 216) = v26 - 1;
          }

          pthread_mutex_unlock(v25);
          if (AVE_Log_CheckLevel(0x28u, 4))
          {
            v27 = AVE_Log_CheckConsole(0x28u);
            v28 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            if (v27)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v28, 40, v29, "AVE_USL_Drv_Stop", 1140, "ret == 0", v10);
              v28 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v28);
          }

          goto LABEL_32;
        }

        memset(v47, 0, 40);
        PacketBlock = Connection::readPacketBlock(*(a1 + 106072), v47, 120000000);
        if (LODWORD(v47[0]) == v49)
        {
          if (!PacketBlock)
          {
            v10 = 0;
            goto LABEL_32;
          }

          if (AVE_Log_CheckLevel(3u, 4))
          {
            v37 = AVE_Log_CheckConsole(3u);
            v38 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(4);
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v38, 3, v39, "AVE_USL_Drv_Stop", 1152, "res == 0");
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
          }
        }

        else if (AVE_Log_CheckLevel(3u, 4))
        {
          v40 = AVE_Log_CheckConsole(3u);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v41, 3, v42, "AVE_USL_Drv_Stop", 1151, "status.counter == counter");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
        }
      }

      v10 = 4294966296;
    }

LABEL_32:
    if (a3)
    {
      AppleAVEVA_CleanMem(a1);
    }

    *(a1 + 40) = 0;
    goto LABEL_35;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v11 = AVE_Log_CheckConsole(3u);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.\n", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
      v14 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v14, 3, v44, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }
  }

  v10 = 4294966295;
LABEL_35:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v30 = AVE_Log_CheckConsole(0x28u);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(7);
    if (v30)
    {
      if (a1)
      {
        v33 = *(a1 + 44);
      }

      else
      {
        v33 = 0;
      }

      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Stop F %d %d\n", v31, 40, v32, v33, v10);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(7);
      if (!a1)
      {
        goto LABEL_43;
      }
    }

    else if (!a1)
    {
LABEL_43:
      v34 = 0;
      goto LABEL_44;
    }

    v34 = *(a1 + 44);
LABEL_44:
    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Stop F %d %d", v31, 40, v32, v34, v10);
  }

  return v10;
}

uint64_t AVE_USL_Drv_SetInternalThreadPriority(AVE_DAL **a1, int a2)
{
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.\n", CurrTime, 40, LevelStr);
      v7 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.", v7, 40, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_SetInternalThreadPriority.", CurrTime, 40, LevelStr);
    }
  }

  if (a1)
  {
    if (*(a1 + 40) == 1)
    {
      AVE_DAL::UpdatePriorityPolicy(a1[3], a2, *(a1 + 168));
    }

    v8 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v9 = AVE_Log_CheckConsole(3u);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.\n", v10, 3, v11, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
        v12 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.", v12, 3, v19, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_SetInternalThreadPriority, Null pointer for driver data.", v10, 3, v11, "AVE_USL_Drv_SetInternalThreadPriority", 1567, "pDriverInstance");
      }
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v13 = AVE_Log_CheckConsole(0x28u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(7);
    v16 = *(a1 + 11);
    if (v13)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_SetInternalThreadPriority frame number %d. %d\n", v14, 40, v15, *(a1 + 11), v8);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_SetInternalThreadPriority frame number %d. %d", v14, 40, v15, *(a1 + 11), v8);
  }

  return v8;
}

uint64_t AVE_USL_Drv_SetQueueSize(_DWORD *a1, signed int a2)
{
  if (AVE_Log_CheckLevel(0x28u, 8))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", CurrTime, 40, LevelStr, "AVE_USL_Drv_SetQueueSize", a1, a2);
      v7 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v7, 40, v38, "AVE_USL_Drv_SetQueueSize", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", CurrTime, 40, LevelStr, "AVE_USL_Drv_SetQueueSize", a1, a2);
    }
  }

  if (a1)
  {
    if (a2 == -1)
    {
      v8 = a1[26526];
    }

    else if (a2)
    {
      v8 = a2;
      if (a1[26526] > a2)
      {
        if (AVE_Log_CheckLevel(0x28u, 5))
        {
          v12 = AVE_Log_CheckConsole(0x28u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(5);
          v15 = a1[26526];
          if (v12)
          {
            printf("%lld %d AVE %s: %s below minimum value %p %d [%d, %d]\n", v13, 40, v14, "AVE_USL_Drv_SetQueueSize", a1, a2, a1[26526], 48);
            v13 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
            v16 = a1[26526];
          }

          else
          {
            v39 = a1[26526];
          }

          syslog(3, "%lld %d AVE %s: %s below minimum value %p %d [%d, %d]", v13);
        }

LABEL_43:
        v29 = 0;
        goto LABEL_44;
      }
    }

    else
    {
      v8 = a1[26525];
    }

    v17 = *(a1 + 13260);
    if (v17)
    {
      if (Connection::connectionSize(v17, v8))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v18 = AVE_Log_CheckConsole(3u);
          v19 = AVE_GetCurrTime();
          v20 = AVE_Log_GetLevelStr(4);
          if (v18)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d\n", v19, 3, v20, "AVE_USL_Drv_SetQueueSize", 1635, "ret == 0", v8);
            v19 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d", v19);
        }

LABEL_36:
        v29 = 4294966296;
        goto LABEL_44;
      }

      v24 = *(a1 + 13259);
      if (v24)
      {
        if (Connection::connectionSize(v24, v8))
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v25 = AVE_Log_CheckConsole(3u);
            v26 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(4);
            if (v25)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d\n", v26, 3, v27, "AVE_USL_Drv_SetQueueSize", 1640, "ret == 0", v8);
              v28 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v28);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v26);
            }
          }

          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (AVE_Log_CheckLevel(3u, 4))
      {
        v30 = AVE_Log_CheckConsole(3u);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        if (v30)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverOutput connection failed.\n", v31, 3, v32, "AVE_USL_Drv_SetQueueSize", 1637, "pDriverInstance->FrameReceiverOutput");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverOutput connection failed.");
      }
    }

    else if (AVE_Log_CheckLevel(3u, 4))
    {
      v21 = AVE_Log_CheckConsole(3u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverInput connection failed.\n", v22, 3, v23, "AVE_USL_Drv_SetQueueSize", 1632, "pDriverInstance->FrameReceiverInput");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: FrameReceiverInput connection failed.");
    }

    v29 = 4294966293;
    goto LABEL_44;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v9 = AVE_Log_CheckConsole(3u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Wrong parameter %p %d\n", v10, 3, v11, "AVE_USL_Drv_SetQueueSize", 1600, "pDrv != __null", 0, a2);
      v10 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Wrong parameter %p %d", v10, 3);
  }

  v29 = 4294966295;
LABEL_44:
  if (AVE_Log_CheckLevel(0x28u, 8))
  {
    v33 = AVE_Log_CheckConsole(0x28u);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(8);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v34, 40, v35, "AVE_USL_Drv_SetQueueSize", a1, a2, v29);
      v36 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v36);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v34);
    }
  }

  return v29;
}

uint64_t AVE_USL_Drv_Reset(unsigned int *a1, unsigned int a2)
{
  v54 = -1;
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.\n", CurrTime, 40, LevelStr);
      v7 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.", v7, 40, v46);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Reset.", CurrTime, 40, LevelStr);
    }
  }

  if (!a1)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v13 = AVE_Log_CheckConsole(3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset, Null pointer for driver data.\n", v14, 3, v15, "AVE_USL_Drv_Reset", 1659, "pDriverInstance");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset, Null pointer for driver data.");
    }

    goto LABEL_26;
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v16 = AVE_Log_CheckConsole(3u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset multiPassEndPassCounter = %d.\n", v17, 3, v18, "AVE_USL_Drv_Reset", 1660, "multiPassEndPassCounter > 0", 0);
        v17 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v47 = v18;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Reset multiPassEndPassCounter = %d.", v17, 3, v47, "AVE_USL_Drv_Reset", 1660, "multiPassEndPassCounter > 0", 0);
    }

LABEL_26:
    v9 = 4294966295;
    goto LABEL_27;
  }

  v53 = AVE_GetCurrTime();
  v8 = AVE_USL_Drv_Complete(a1, &v53);
  if (v8)
  {
    v9 = v8;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v10 = AVE_Log_CheckConsole(3u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames failed.\n", v11, 3, v12, "AVE_USL_Drv_Reset", 1669, "ret == 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames failed.");
    }

    goto LABEL_27;
  }

  a1[11] = 0;
  a1[26524] = a2;
  v52[0] = 0;
  AVE_DAL::Alloc(*(a1 + 3), 72736, v52);
  AVE_DAL::Addr2Idx(*(a1 + 3), v52[0], &v54);
  v19 = v52[0];
  if (v52[0])
  {
    bzero((v52[0] + 8), 0x11C18uLL);
    v20 = v54;
    *v19 = v54;
    *(v19 + 4) = 10;
    *(v19 + 40) = a1[11];
    *(v19 + 16) = *(a1 + 13261) != 0;
    *(v19 + 20) = a1[26524];
    memset(v52, 0, 40);
    LODWORD(v52[0]) = v20;
    if (Connection::writePacketBlock(*(a1 + 13260), v52))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v21 = AVE_Log_CheckConsole(3u);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v22, 3, v23, "AVE_USL_Drv_Reset", 1705, "res == 0");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
      }

      goto LABEL_44;
    }

    *&v52[3] = 0u;
    *&v52[1] = 0u;
    memset(v51, 0, sizeof(v51));
    v52[0] = *a1;
    v52[5] = v54;
    v52[3] = 118000000;
    v52[4] = AVE_GetCurrTime();
    v33 = AVE_DAL::UCReset(*(a1 + 3), v52, v51);
    if (!v33)
    {
      memset(v52, 0, 40);
      PacketBlock = Connection::readPacketBlock(*(a1 + 13259), v52, 120000000);
      if (LODWORD(v52[0]) == v54)
      {
        if (!PacketBlock)
        {
          v9 = 0;
          goto LABEL_27;
        }

        if (AVE_Log_CheckLevel(3u, 4))
        {
          v40 = AVE_Log_CheckConsole(3u);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v41, 3, v42, "AVE_USL_Drv_Reset", 1736, "res == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
        }
      }

      else if (AVE_Log_CheckLevel(3u, 4))
      {
        v43 = AVE_Log_CheckConsole(3u);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v44, 3, v45, "AVE_USL_Drv_Reset", 1735, "status.counter == counter");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
      }

LABEL_44:
      v9 = 4294966296;
      goto LABEL_27;
    }

    v9 = v33;
    v34 = *(a1 + 13260);
    pthread_mutex_lock(v34);
    v35 = *(v34 + 216);
    if (v35 >= 1 && v35 > *(v34 + 208))
    {
      *(v34 + 216) = v35 - 1;
    }

    pthread_mutex_unlock(v34);
    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v36 = AVE_Log_CheckConsole(0x28u);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v37, 40, v38, "AVE_USL_Drv_Reset", 1722, "ret == 0", v9);
        v37 = AVE_GetCurrTime();
        v50 = v9;
        v49 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v50 = v9;
        v49 = v38;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v37, 40, v49, "AVE_USL_Drv_Reset", 1722, "ret == 0", v50);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v29 = AVE_Log_CheckConsole(3u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v30, 3, v31, "AVE_USL_Drv_Reset", 1685, "Frame");
        v32 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v32, 3, v48, "AVE_USL_Drv_Reset", 1685, "Frame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v30, 3, v31, "AVE_USL_Drv_Reset", 1685, "Frame");
      }
    }

    v9 = 4294966293;
  }

LABEL_27:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v24 = AVE_Log_CheckConsole(0x28u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(7);
    v27 = a1[11];
    if (v24)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Reset frame number %d. err 0x%08x\n", v25, 40, v26, a1[11], v9);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Reset frame number %d. err 0x%08x", v25, 40, v26, a1[11], v9);
  }

  return v9;
}

void Connection::~Connection(Connection *this)
{
  pthread_mutex_lock(this);
  if (*(this + 27) > *(this + 26) && AVE_Log_CheckLevel(0x2Au, 5))
  {
    if (AVE_Log_CheckConsole(0x2Au))
    {
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(5);
      v5 = *(this + 26);
      v4 = *(this + 27);
      v6 = v4 <= v5;
      v7 = v4 - v5;
      if (v6)
      {
        v7 = 0;
      }

      printf("%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left\n", CurrTime, 42, LevelStr, this, v7);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(5);
    }

    else
    {
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(5);
    }

    v11 = *(this + 26);
    v10 = *(this + 27);
    v6 = v10 <= v11;
    v12 = v10 - v11;
    if (v6)
    {
      v12 = 0;
    }

    syslog(3, "%lld %d AVE %s: H264 Connection: WARNING! deleting connection %p with %lld packets left", v8, 42, v9, this, v12);
  }

  v13 = *(this + 28);
  if (v13)
  {
    MEMORY[0x29C24DA10](v13, 0x1000C807607B2BCLL);
    *(this + 28) = 0;
  }

  pthread_cond_destroy((this + 112));
  pthread_cond_destroy((this + 64));
  pthread_mutex_unlock(this);
  pthread_mutex_destroy(this);
}

uint64_t AVC_FindProfile(int a1)
{
  v1 = &dword_29EDCB93C;
  v2 = 9;
  while (*v1 != a1)
  {
    v1 += 6;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t AVC_FindProfileIdc(int a1)
{
  if ((a1 - 1) < 9)
  {
    return gsc_sAVC_Profiles[6 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD0u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD0u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 208, LevelStr, "AVC_FindProfileIdc", 65, "(AVC_Profile_Invalid < eProfile) && (eProfile < AVC_Profile_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

int *AVC_FindProfileEntry(int a1)
{
  result = &gsc_sAVC_Profiles;
  v3 = 9;
  while (*result != a1)
  {
    result += 6;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVC_FindLevel(int a1, int a2, int a3, int a4, int a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v12 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d %d %d\n", CurrTime, 209, LevelStr, "AVC_FindLevel", a1, a2, a3, a4, a5, a6);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d %d %d", CurrTime, 209);
  }

  if (a2 <= a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = a2;
  }

  if (a5 < 1)
  {
    v17 = 0.0;
  }

  else
  {
    v16 = a1 - 2;
    if ((a1 - 2) >= 8 || ((0xD5u >> v16) & 1) == 0)
    {
      if (AVE_Log_CheckLevel(0xD1u, 4))
      {
        v18 = AVE_Log_CheckConsole(0xD1u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d unsupported profile (%d)\n", v19, 209, v20, "AVC_FindLevel", 222, a1);
          v21 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d unsupported profile (%d)", v21, 209, v40, "AVC_FindLevel", 222, a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d unsupported profile (%d)", v19, 209, v20, "AVC_FindLevel", 222, a1);
        }
      }

      v26 = 0;
      goto LABEL_46;
    }

    v17 = dbl_2954EBD50[v16];
  }

  v22 = 0;
  v23 = (a3 >> 4) * (a2 >> 4);
  v24 = gsc_saAVC_LevelLimits;
  while (1)
  {
    if (v23 * a4 <= v24[2] && v23 <= v24[3] && v15 <= v24[6] && v17 * v24[5] >= a5)
    {
      v25 = v24[4] / v23;
      if (v25 >= 16)
      {
        v25 = 16;
      }

      if (v25 >= a6)
      {
        break;
      }
    }

    ++v22;
    v24 += 9;
    if (v22 == 20)
    {
      v24 = &dword_2954EBD2C;
      break;
    }
  }

  v26 = *v24;
  v27 = a1 >= 7 || a1 == 1;
  if (v27 && v26 <= 17 && v23 >= 1621 && v22 <= 0x13)
  {
    v28 = 4 * v23;
    v29 = v22;
    v30 = &gsc_saAVC_LevelLimits[9 * v22];
    do
    {
      v26 = *v30;
      v31 = v30[3];
      v30 += 9;
    }

    while (v28 > v31 && v29++ <= 0x12 && v26 <= 17);
  }

LABEL_46:
  if (AVE_Log_CheckLevel(0xD1u, 6))
  {
    v34 = AVE_Log_CheckConsole(0xD1u);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(6);
    if (v34)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d\n", v35, 209, v36, "AVC_FindLevel", a1, a2, a3, a4, a5, a6, v26);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d", v37, 209, v38);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d %d %d %d", v35, 209, v36);
    }
  }

  return v26;
}

uint64_t AVC_FindLevel(int a1)
{
  v1 = &dword_2954EBA84;
  v2 = 20;
  while (*v1 != a1)
  {
    v1 += 9;
    if (!--v2)
    {
      return 0;
    }
  }

  return *(v1 - 1);
}

uint64_t AVC_FindLevelIdc(int a1)
{
  if ((a1 - 1) < 0x14)
  {
    return gsc_saAVC_LevelLimits[9 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v2 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v2)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "AVC_FindLevelIdc", 295, "(AVC_Level_Invalid < eLevel) && (eLevel < AVC_Level_Max)", 0);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t AVC_FindMaxMvsPer2Mb(int a1)
{
  v2 = gsc_saAVC_LevelLimits;
  v3 = 20;
  do
  {
    if (*v2 == a1)
    {
      return v2[7];
    }

    v2 += 9;
    --v3;
  }

  while (v3);
  if (AVE_Log_CheckLevel(0xD1u, 4))
  {
    v4 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v4)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level %d\n", CurrTime, 209, LevelStr, "AVC_FindMaxMvsPer2Mb", 363, "psLimit != __null", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level %d", CurrTime);
  }

  return 64;
}

uint64_t AVC_FindMaxSubMbRectSize(int a1)
{
  v2 = &dword_2954EBAA0;
  v3 = 20;
  do
  {
    if (*(v2 - 8) == a1)
    {
      return *v2;
    }

    v2 += 9;
    --v3;
  }

  while (v3);
  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v5 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v5)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid level %d\n", CurrTime, 209, LevelStr, "AVC_FindMaxSubMbRectSize", 385, "psLimit != __null", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | invalid level %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t AVE_TimeStats_Create(uint64_t a1, unsigned int a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v6 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %lld %d %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Create", a1, a2, 0);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %lld %d %p", CurrTime);
  }

  if ((a2 & 0x80000000) != 0 || !a3)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x3Cu);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p\n", v17, 60, v18, "AVE_TimeStats_Create", 29, "num >= 0 && ppTS != __null", a1, a2, a3);
        v19 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p", v19, 60, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %d %p", v17, 60, v18);
      }
    }

    v10 = 0;
    v11 = 4294966295;
  }

  else
  {
    v9 = malloc_type_malloc(0xD8uLL, 0x10A0040F185B927uLL);
    if (v9)
    {
      v10 = v9;
      v11 = AVE_TimeStats_Init(v9, a1, a2);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x3Cu, 4))
        {
          v12 = AVE_Log_CheckConsole(0x3Cu);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d\n", v13, 60, v14, "AVE_TimeStats_Create", 37, "ret == 0", v10, a1, a2, v11);
            v15 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d", v15, 60, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to initialize time stats %p %lld %d %d", v13, 60, v14);
          }
        }

        AVE_TimeStats_Uninit(v10);
        free(v10);
      }

      else
      {
        *a3 = v10;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Cu, 4))
      {
        v20 = AVE_Log_CheckConsole(0x3Cu);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p\n", v21, 60, v22, "AVE_TimeStats_Create", 33, "pTS != __null", a1, a2, a3);
          v23 = AVE_GetCurrTime();
          v31 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p", v23, 60, v31);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create time stats %lld %d %p", v21, 60, v22);
        }
      }

      v10 = 0;
      v11 = 4294966293;
    }
  }

  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v24 = AVE_Log_CheckConsole(0x3Cu);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(6);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Exit %lld %d %p %d\n", v25, 60, v26, "AVE_TimeStats_Create", a1, a2, v10, v11);
      v27 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %lld %d %p %d", v27, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %lld %d %p %d", v25, 60);
    }
  }

  return v11;
}

uint64_t AVE_TimeStats_Init(_OWORD *a1, uint64_t a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v6 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Init", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d", CurrTime);
  }

  if (!a1 || (a3 & 0x80000000) != 0)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x3Cu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d\n", v14, 60, v15, "AVE_TimeStats_Init", 104, "pTS != __null && num >= 0", a1, a2, a3);
        v16 = AVE_GetCurrTime();
        v30 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d", v16, 60, v30);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %d", v14, 60, v15);
      }
    }

    v12 = 4294966295;
  }

  else
  {
    *(a1 + 26) = 0;
    a1[11] = 0u;
    a1[12] = 0u;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    v9 = AVE_Mutex_Create();
    if (v9)
    {
      v10 = v9;
      if (!a3)
      {
        a3 = 2;
      }

      v11 = malloc_type_malloc(16 * a3, 0x1000040451B5BE8uLL);
      if (v11)
      {
        v12 = 0;
        *a1 = a2;
        *(a1 + 2) = a3;
        *(a1 + 2) = v11;
        *(a1 + 22) = v10;
        goto LABEL_28;
      }

      if (AVE_Log_CheckLevel(0x3Cu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x3Cu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d\n", v22, 60, v23, "AVE_TimeStats_Init", 119, "pTP != __null", a1, a2, a3);
          v24 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d", v24, 60, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory of time pair %p %lld %d", v22, 60, v23);
        }
      }

      AVE_Mutex_Destroy(v10);
    }

    else if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x3Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d\n", v18, 60, v19, "AVE_TimeStats_Init", 110, "pMutex != __null", a1, a2, a3);
        v20 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d", v20, 60, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create mutex %p %lld %d", v18, 60, v19);
      }
    }

    v12 = 4294966293;
  }

LABEL_28:
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v25 = AVE_Log_CheckConsole(0x3Cu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(6);
    if (v25)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %d\n", v26, 60, v27, "AVE_TimeStats_Init", a1, a2, a3, v12);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d", v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d", v26);
    }
  }

  return v12;
}

uint64_t AVE_TimeStats_Uninit(_OWORD *a1)
{
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v2 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Uninit", a1);
      v5 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v17, "AVE_TimeStats_Uninit", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 60, LevelStr, "AVE_TimeStats_Uninit", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 2);
    if (v6)
    {
      free(v6);
      *(a1 + 2) = 0;
    }

    v7 = *(a1 + 22);
    if (v7)
    {
      AVE_Mutex_Destroy(v7);
    }

    v8 = 0;
    *(a1 + 26) = 0;
    a1[11] = 0u;
    a1[12] = 0u;
    a1[9] = 0u;
    a1[10] = 0u;
    a1[7] = 0u;
    a1[8] = 0u;
    a1[5] = 0u;
    a1[6] = 0u;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x3Cu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v10, 60, v11, "AVE_TimeStats_Uninit", 166, "pTS != __null", 0);
        v10 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v10);
    }

    v8 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v12 = AVE_Log_CheckConsole(0x3Cu);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v13, 60, v14, "AVE_TimeStats_Uninit", a1, v8);
      v15 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 60, v18, "AVE_TimeStats_Uninit", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v14, "AVE_TimeStats_Uninit", a1, v8);
    }
  }

  return v8;
}

uint64_t AVE_TimeStats_Destroy(_OWORD *a1)
{
  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v2 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v15, "AVE_TimeStats_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 60, LevelStr, "AVE_TimeStats_Destroy", a1);
    }
  }

  if (a1)
  {
    v6 = AVE_TimeStats_Uninit(a1);
    free(a1);
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v7 = AVE_Log_CheckConsole(0x3Cu);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v8, 60, v9, "AVE_TimeStats_Destroy", 73, "pTS != __null", 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v8);
    }

    v6 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Cu, 6))
  {
    v10 = AVE_Log_CheckConsole(0x3Cu);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v11, 60, v12, "AVE_TimeStats_Destroy", a1, v6);
      v13 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 60, v16, "AVE_TimeStats_Destroy", a1, v6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v11, 60, v12, "AVE_TimeStats_Destroy", a1, v6);
    }
  }

  return v6;
}

uint64_t AVE_TimeStats_Calc(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v2 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 60, LevelStr, "AVE_TimeStats_Calc", a1);
      v5 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 60, v28, "AVE_TimeStats_Calc", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 60, LevelStr, "AVE_TimeStats_Calc", a1);
    }
  }

  if (!a1)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x3Cu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v18, 60, v19, "AVE_TimeStats_Calc", 326, "pTS != __null", 0);
        v18 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v18);
    }

    v16 = 4294966295;
    goto LABEL_38;
  }

  AVE_Mutex_Lock(*(a1 + 176));
  v6 = *(a1 + 16);
  if (!v6)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x3Cu);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong state %p\n", v21, 60, v22, "AVE_TimeStats_Calc", 331, "pTS->psTP != __null", a1);
        v21 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p", v21);
    }

    v16 = 4294966285;
    goto LABEL_37;
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v7 = (a1 + 184);
  *(a1 + 200) = 0;
  v8 = *(a1 + 24);
  LODWORD(v9) = *(a1 + 8);
  if (v8 < v9)
  {
    v9 = (v8 + 1);
  }

  else
  {
    v9 = v9;
  }

  if (v9 < 1)
  {
    goto LABEL_28;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = (v6 + 8);
  do
  {
    v15 = *v14 - *(v14 - 1);
    if (v15 < 1)
    {
      goto LABEL_21;
    }

    if (v12)
    {
      if (v15 < v11)
      {
        *v7 = v15;
        v11 = v15;
      }

      if (v15 <= v10)
      {
        goto LABEL_20;
      }
    }

    else
    {
      *v7 = v15;
      v11 = v15;
    }

    *(a1 + 200) = v15;
    v10 = v15;
LABEL_20:
    v13 += v15;
    ++v12;
LABEL_21:
    v14 += 2;
    --v9;
  }

  while (v9);
  if (v12)
  {
    v16 = 0;
    *(a1 + 192) = v13 / v12;
    *(a1 + 208) = v12;
    goto LABEL_37;
  }

LABEL_28:
  v16 = 0;
LABEL_37:
  AVE_Mutex_Unlock(*(a1 + 176));
LABEL_38:
  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v23 = AVE_Log_CheckConsole(0x3Cu);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(7);
    if (v23)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v24, 60, v25, "AVE_TimeStats_Calc", a1, v16);
      v26 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v26, 60, v29, "AVE_TimeStats_Calc", a1, v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v24, 60, v25, "AVE_TimeStats_Calc", a1, v16);
    }
  }

  return v16;
}

uint64_t AVE_TimeStats_Print(void *a1, uint64_t a2, int a3, const void *a4, int a5)
{
  v73 = *MEMORY[0x29EDCA608];
  memset(v72, 0, sizeof(v72));
  if (a1)
  {
    v10 = a3;
    result = AVE_Log_CheckLevel(a2, a3);
    if (result)
    {
      AVE_ComposePosStr(a4, a5, v72, 32, v12, v13, v14, v15);
      AVE_Mutex_Lock(a1[22]);
      if (AVE_Log_CheckLevel(a2, a3))
      {
        v16 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if (!v16 || (-a3 & 0x20) != 0)
          {
            v26 = *a1;
            v50 = a1[7] - a1[4];
            v52 = a1[15] - a1[14];
          }

          else
          {
            printf("TimeStats ID: %lld %s | Session: %lld Process: %lld\n", *a1, v72, a1[7] - a1[4], a1[15] - a1[14]);
            v25 = *a1;
            v49 = a1[7] - a1[4];
            v51 = a1[15] - a1[14];
          }

          syslog(3, "TimeStats ID: %lld %s | Session: %lld Process: %lld");
        }

        else
        {
          v17 = v16 ^ 1;
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(a3);
          v20 = a1[7] - a1[4];
          if (((v17 | ((a3 & 0x20) >> 5)) & 1) == 0)
          {
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Session: %lld Process: %lld\n", CurrTime, a2, LevelStr, *a1, v72, a1[7] - a1[4], a1[15] - a1[14]);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(a3);
          }

          syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Session: %lld Process: %lld", CurrTime, a2, LevelStr, *a1, v72, a1[7] - a1[4], a1[15] - a1[14]);
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v27 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if (!v27 || (-a3 & 0x20) != 0)
          {
            v68 = a1[19] - a1[18];
            v71 = a1[21] - a1[20];
            v62 = a1[13] - a1[12];
            v64 = a1[17] - a1[16];
            v54 = a1[9] - a1[8];
            v58 = a1[11] - a1[10];
            syslog(3, "TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", *a1, v72, a1[5] - a1[4], a1[7] - a1[6]);
          }

          else
          {
            printf("TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld\n", *a1, v72, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
            v67 = a1[19] - a1[18];
            v70 = a1[21] - a1[20];
            v61 = a1[13] - a1[12];
            v63 = a1[17] - a1[16];
            v53 = a1[9] - a1[8];
            v57 = a1[11] - a1[10];
            syslog(3, "TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", *a1, v72, a1[5] - a1[4], a1[7] - a1[6]);
          }
        }

        else
        {
          v28 = v27 ^ 1;
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(a3);
          v31 = a1[19] - a1[18];
          if (((v28 | ((a3 & 0x20) >> 5)) & 1) == 0)
          {
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld\n", v29, a2, v30, *a1, v72, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
            v29 = AVE_GetCurrTime();
            v30 = AVE_Log_GetLevelStr(a3);
          }

          syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Open: %lld Close: %lld Prepare: %lld Start: %lld Stop: %lld Complete: %lld Flush: %lld Reset: %lld", v29, a2, v30, *a1, v72, a1[5] - a1[4], a1[7] - a1[6], a1[9] - a1[8], a1[11] - a1[10], a1[13] - a1[12], a1[17] - a1[16], a1[19] - a1[18], a1[21] - a1[20]);
        }
      }

      if (AVE_Log_CheckLevel(a2, a3))
      {
        v32 = AVE_Log_CheckConsole(a2);
        if (a3 < 0)
        {
          if (!v32 || (-a3 & 0x20) != 0)
          {
            v45 = *a1;
            v46 = *(a1 + 23);
            v56 = a1[25];
            v60 = *(a1 + 52);
          }

          else
          {
            printf("TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d\n", *a1, v72, a1[23], a1[24], a1[25], *(a1 + 52));
            v43 = *a1;
            v44 = *(a1 + 23);
            v55 = a1[25];
            v59 = *(a1 + 52);
          }

          syslog(3, "TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d");
        }

        else
        {
          v33 = a3 & 0x20;
          v34 = v32 ^ 1;
          v35 = AVE_GetCurrTime();
          v36 = AVE_Log_GetLevelStr(v10);
          v37 = a1[25];
          if ((v34 | (v33 >> 5)))
          {
            v66 = a1[25];
            syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d", v35, a2, v36);
          }

          else
          {
            v38 = a2;
            printf("%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d\n", v35, a2, v36, *a1, v72, a1[23], a1[24], a1[25], *(a1 + 52));
            v39 = AVE_GetCurrTime();
            v40 = AVE_Log_GetLevelStr(v10);
            v41 = *a1;
            v42 = *(a1 + 23);
            v65 = a1[25];
            v69 = *(a1 + 52);
            syslog(3, "%lld %d AVE %s: TimeStats ID: %lld %s | Process: %lld - %lld - %lld Count: %d", v39, v38, v40);
          }
        }
      }

      AVE_Mutex_Unlock(a1[22]);
      result = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v21 = AVE_Log_CheckConsole(0x3Cu);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d\n", v22, 60, v23, "AVE_TimeStats_Print", 404, "pTS != __null", 0, a2, a3, a4, a5);
        v24 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d", v24, 60, v48, "AVE_TimeStats_Print");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p %d", v22, 60, v23, "AVE_TimeStats_Print");
      }
    }

    result = 4294966295;
  }

  v47 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AVE_ANFD_RetrieveEntry(CFDictionaryRef theDict, int *a2)
{
  v41 = 0.0;
  if (theDict && a2)
  {
    SInt32 = AVE_CFDict_GetSInt32(theDict, @"AnfdModality", a2);
    if (!SInt32)
    {
      v13 = AVE_CFDict_GetSInt32(theDict, @"FaceID", a2 + 1);
      if (v13)
      {
        v5 = v13;
        if (!AVE_Log_CheckLevel(0x2Fu, 4))
        {
          return v5;
        }

        v14 = AVE_Log_CheckConsole(0x2Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (!v14)
        {
          goto LABEL_30;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 40, "ret == 0", theDict, a2, v5);
      }

      else
      {
        v15 = AVE_CFDict_GetSInt32(theDict, @"ConfidenceLevel", a2 + 2);
        if (v15)
        {
          v5 = v15;
          if (!AVE_Log_CheckLevel(0x2Fu, 4))
          {
            return v5;
          }

          v16 = AVE_Log_CheckConsole(0x2Fu);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (!v16)
          {
            goto LABEL_30;
          }

          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 45, "ret == 0", theDict, a2, v5);
        }

        else
        {
          Value = CFDictionaryGetValue(theDict, @"Rect");
          if (!Value)
          {
            if (AVE_Log_CheckLevel(0x2Fu, 4))
            {
              v22 = AVE_Log_CheckConsole(0x2Fu);
              v23 = AVE_GetCurrTime();
              v24 = AVE_Log_GetLevelStr(4);
              if (v22)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", v23, 47, v24, "AVE_ANFD_RetrieveEntry", 50, "pRect != __null", theDict, a2, 0);
                v25 = AVE_GetCurrTime();
                v40 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v25, 47, v40);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v23, 47, v24);
              }
            }

            return 4294966288;
          }

          v18 = Value;
          Double = AVE_CFDict_GetDouble(Value, @"X", &v41);
          if (Double)
          {
            v5 = Double;
            if (!AVE_Log_CheckLevel(0x2Fu, 4))
            {
              return v5;
            }

            v20 = AVE_Log_CheckConsole(0x2Fu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (!v20)
            {
              goto LABEL_30;
            }

            printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 54, "ret == 0", theDict, a2, v5);
          }

          else
          {
            a2[4] = vcvtd_n_s64_f64(v41, 0x13uLL);
            v26 = AVE_CFDict_GetDouble(v18, @"Y", &v41);
            if (v26)
            {
              v5 = v26;
              if (!AVE_Log_CheckLevel(0x2Fu, 4))
              {
                return v5;
              }

              v27 = AVE_Log_CheckConsole(0x2Fu);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              if (!v27)
              {
                goto LABEL_30;
              }

              printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 60, "ret == 0", theDict, a2, v5);
            }

            else
            {
              a2[5] = vcvtd_n_s64_f64(v41, 0x13uLL);
              v28 = AVE_CFDict_GetDouble(v18, @"Width", &v41);
              if (v28)
              {
                v5 = v28;
                if (!AVE_Log_CheckLevel(0x2Fu, 4))
                {
                  return v5;
                }

                v29 = AVE_Log_CheckConsole(0x2Fu);
                CurrTime = AVE_GetCurrTime();
                LevelStr = AVE_Log_GetLevelStr(4);
                if (!v29)
                {
                  goto LABEL_30;
                }

                printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 66, "ret == 0", theDict, a2, v5);
              }

              else
              {
                a2[6] = vcvtd_n_s64_f64(v41, 0x13uLL);
                v30 = AVE_CFDict_GetDouble(v18, @"Height", &v41);
                if (v30)
                {
                  v5 = v30;
                  if (!AVE_Log_CheckLevel(0x2Fu, 4))
                  {
                    return v5;
                  }

                  v31 = AVE_Log_CheckConsole(0x2Fu);
                  CurrTime = AVE_GetCurrTime();
                  LevelStr = AVE_Log_GetLevelStr(4);
                  if (!v31)
                  {
                    goto LABEL_30;
                  }

                  printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 72, "ret == 0", theDict, a2, v5);
                }

                else
                {
                  a2[7] = vcvtd_n_s64_f64(v41, 0x13uLL);
                  a2[3] = 0x80000;
                  v32 = AVE_CFDict_GetSInt32(theDict, @"AngleInfoRoll", a2 + 8);
                  if (v32)
                  {
                    v5 = v32;
                    if (!AVE_Log_CheckLevel(0x2Fu, 4))
                    {
                      return v5;
                    }

                    v33 = AVE_Log_CheckConsole(0x2Fu);
                    CurrTime = AVE_GetCurrTime();
                    LevelStr = AVE_Log_GetLevelStr(4);
                    if (!v33)
                    {
                      goto LABEL_30;
                    }

                    printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 82, "ret == 0", theDict, a2, v5);
                  }

                  else
                  {
                    v34 = AVE_CFDict_GetSInt32(theDict, @"AngleInfoYaw", a2 + 9);
                    if (v34)
                    {
                      v5 = v34;
                      if (!AVE_Log_CheckLevel(0x2Fu, 4))
                      {
                        return v5;
                      }

                      v35 = AVE_Log_CheckConsole(0x2Fu);
                      CurrTime = AVE_GetCurrTime();
                      LevelStr = AVE_Log_GetLevelStr(4);
                      if (!v35)
                      {
                        goto LABEL_30;
                      }

                      printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 87, "ret == 0", theDict, a2, v5);
                    }

                    else
                    {
                      SInt64 = AVE_CFDict_GetSInt64(theDict, @"OriginalTimestamp", a2 + 5);
                      if (SInt64)
                      {
                        v5 = SInt64;
                        if (!AVE_Log_CheckLevel(0x2Fu, 4))
                        {
                          return v5;
                        }

                        v37 = AVE_Log_CheckConsole(0x2Fu);
                        CurrTime = AVE_GetCurrTime();
                        LevelStr = AVE_Log_GetLevelStr(4);
                        if (!v37)
                        {
                          goto LABEL_30;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 92, "ret == 0", theDict, a2, v5);
                      }

                      else
                      {
                        v5 = AVE_CFDict_GetSInt64(theDict, @"Timestamp", a2 + 6);
                        if (!v5 || !AVE_Log_CheckLevel(0x2Fu, 4))
                        {
                          return v5;
                        }

                        v38 = AVE_Log_CheckConsole(0x2Fu);
                        CurrTime = AVE_GetCurrTime();
                        LevelStr = AVE_Log_GetLevelStr(4);
                        if (!v38)
                        {
                          goto LABEL_30;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 96, "ret == 0", theDict, a2, v5);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v9 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      goto LABEL_23;
    }

    v5 = SInt32;
    if (AVE_Log_CheckLevel(0x2Fu, 4))
    {
      v6 = AVE_Log_CheckConsole(0x2Fu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v6)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveEntry", 35, "ret == 0", theDict, a2, v5);
        v9 = AVE_GetCurrTime();
        v39 = AVE_Log_GetLevelStr(4);
LABEL_23:
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", v9, 47, v39);
        return v5;
      }

LABEL_30:
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %d", CurrTime, 47, LevelStr);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Fu, 4))
    {
      v10 = AVE_Log_CheckConsole(0x2Fu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 47, v12, "AVE_ANFD_RetrieveEntry", 30, "pDict != __null && psEntry != __null", theDict, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 47);
    }

    return 4294966295;
  }

  return v5;
}

uint64_t AVE_ANFD_RetrieveArray(CFArrayRef theArray, _DWORD *a2)
{
  if (theArray && a2)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 10)
    {
      v5 = 10;
    }

    else
    {
      v5 = Count;
    }

    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v6 = 0;
      v7 = a2 + 2;
      if (v5 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v5;
      }

      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
        if (!ValueAtIndex)
        {
          break;
        }

        Entry = AVE_ANFD_RetrieveEntry(ValueAtIndex, v7);
        if (Entry)
        {
          v11 = Entry;
          if (AVE_Log_CheckLevel(0x2Fu, 4))
          {
            v20 = AVE_Log_CheckConsole(0x2Fu);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(4);
            if (v20)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_RetrieveArray", 225, "ret == 0", theArray, a2, v11);
              v23 = AVE_GetCurrTime();
              v25 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v23, 47, v25);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", CurrTime, 47, LevelStr);
            }
          }

          return v11;
        }

        ++*a2;
        ++v6;
        v7 += 16;
        if (v8 == v6)
        {
          return 0;
        }
      }

      if (AVE_Log_CheckLevel(0x2Fu, 4))
      {
        v16 = AVE_Log_CheckConsole(0x2Fu);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d\n", v17, 47, v18, "AVE_ANFD_RetrieveArray", 220, "pDict != __null", theArray, a2, theArray, v5, v6);
          v19 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d", v19, 47, v24, "AVE_ANFD_RetrieveArray");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p %d %d", v17, 47, v18, "AVE_ANFD_RetrieveArray");
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Fu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x2Fu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 47, v14, "AVE_ANFD_RetrieveArray", 211, "pArray != __null && pInfo != __null", theArray, a2);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 47);
    }

    return 4294966295;
  }
}

uint64_t AVE_ANFD_Print(unsigned int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v66 = *MEMORY[0x29EDCA608];
  memset(v65, 0, sizeof(v65));
  AVE_ComposePosStr(a4, a5, v65, 32, a5, a6, a7, a8);
  v11 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v12 = AVE_Log_CheckConsole(a2);
    if (a3 < 0)
    {
      if (!v12 || (-a3 & 0x20) != 0)
      {
        v28 = a1[3];
        v55 = *(a1 + 6);
        v59 = a1[14];
        v49 = a1[9];
        v51 = *(a1 + 5);
        v46 = a1[8];
        v40 = a1[6] / v28;
        v43 = a1[7] / v28;
        v34 = a1[4] / v28;
        v37 = a1[5] / v28;
        v32 = a1[2];
        syslog(3, "ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v65, *a1, a1[1]);
      }

      else
      {
        v25 = a1[3];
        printf("ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d\n", v65, *a1, a1[1], a1[2], a1[4] / v25, a1[5] / v25, a1[6] / v25, a1[7] / v25, a1[8], a1[9], *(a1 + 5), *(a1 + 6), a1[14]);
        v26 = a1[3];
        v27 = *(a1 + 5);
        v53 = *(a1 + 6);
        v57 = a1[14];
        v48 = a1[9];
        v45 = a1[8];
        v39 = a1[6] / v26;
        v42 = a1[7] / v26;
        v33 = a1[4] / v26;
        v36 = a1[5] / v26;
        v31 = a1[2];
        syslog(3, "ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", v65, *a1, a1[1]);
      }
    }

    else
    {
      v13 = a3 & 0x20;
      v14 = v12 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v11);
      v17 = a1[3];
      v18 = a1[4] / v17;
      v19 = a1[5] / v17;
      v20 = a1[6] / v17;
      v21 = *(a1 + 6);
      v22 = a1[7] / v17;
      if ((v14 | (v13 >> 5)))
      {
        v62 = *(a1 + 6);
        v64 = a1[14];
        v58 = a1[9];
        v60 = *(a1 + 5);
        v54 = a1[8];
      }

      else
      {
        printf("%lld %d AVE %s: ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d\n", CurrTime, a2, LevelStr, v65, *a1, a1[1], a1[2], v18, v19, v20, v22, a1[8], a1[9], *(a1 + 5), *(a1 + 6), a1[14]);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v11);
        v23 = a1[3];
        v24 = *(a1 + 5);
        v61 = *(a1 + 6);
        v63 = a1[14];
        v56 = a1[9];
        v52 = a1[8];
        v47 = a1[6] / v23;
        v50 = a1[7] / v23;
        v41 = a1[4] / v23;
        v44 = a1[5] / v23;
      }

      v35 = a1[1];
      v38 = a1[2];
      syslog(3, "%lld %d AVE %s: ANFD %s | %d %d | %d | %f %f %f %f | %d %d | %lld %lld %d", CurrTime, a2, LevelStr, v65, *a1);
    }
  }

  v29 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t AVE_ANFD_PrintInfo(int *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (*a1 >= 1)
  {
    v13 = 0;
    v14 = (a1 + 2);
    do
    {
      AVE_ANFD_Print(v14, a2, a3, a4, a5, a6, a7, a8);
      ++v13;
      v14 += 16;
    }

    while (v13 < *a1);
  }

  return 0;
}

uint64_t AVE_ANFD_GetInfo(const __CFDictionary *a1, _DWORD *a2)
{
  if (a1 && a2)
  {
    bzero(a2, 0x288uLL);
    Value = CFDictionaryGetValue(a1, @"StabilizedDetectedFacesArray");
    if (Value)
    {
      Array = AVE_ANFD_RetrieveArray(Value, a2);
      if (Array && AVE_Log_CheckLevel(0x2Fu, 4))
      {
        v6 = AVE_Log_CheckConsole(0x2Fu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v6)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", CurrTime, 47, LevelStr, "AVE_ANFD_GetInfo", 365, "ret == 0", a1, a2, Array);
          v9 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v9, 47, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", CurrTime, 47, LevelStr);
        }
      }
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Fu, 6))
    {
      v10 = AVE_Log_CheckConsole(0x2Fu);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(6);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 47, v12, "AVE_ANFD_GetInfo", 354, "pProperty != NULL && pInfo != NULL", a1, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 47);
    }

    return 4294966295;
  }

  return Array;
}

uint64_t AVE_BlkBuf_Make(uint64_t a1, void *a2, uint64_t a3, int a4, int a5)
{
  *(a1 + 160) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0u;
  v10 = a1 + 128;
  *(a1 + 96) = 0u;
  v11 = a1 + 96;
  bzero(a2, 24 * a4);
  AVE_DLList_Init_Node(a1);
  *(a1 + 64) = a3;
  *(a1 + 72) = a5 * a4;
  *(a1 + 76) = a4;
  *(a1 + 80) = a5;
  *(a1 + 88) = a2;
  AVE_DLList_Init(v11);
  AVE_DLList_Init(v10);
  if (a4 >= 1)
  {
    v12 = 0;
    do
    {
      AVE_DLList_PushBack(v11, (*(a1 + 88) + v12));
      v12 += 24;
    }

    while (24 * a4 != v12);
  }

  *(a1 + 164) = a4;
  return 0;
}

uint64_t AVE_BlkBuf_Create(int a1, int a2, unsigned int a3, uint64_t *a4)
{
  result = 4294966295;
  if (a1 >= 1 && a2 >= 1)
  {
    v6 = a3;
    if (a3 <= 0x40)
    {
      if (a3)
      {
        if (!a4 || ((a3 + 127) & a3) != 0)
        {
          return result;
        }
      }

      else
      {
        if (!a4)
        {
          return result;
        }

        v6 = 64;
      }

      *a4 = 0;
      v8 = (v6 - 1 + a2) & -v6;
      v9 = (v6 - 1 + v8) & -v6;
      if (0x7FFFFFFF / v9 <= a1)
      {
        return 4294966281;
      }

      else
      {
        v10 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
        if (v10)
        {
          v11 = v10;
          v12 = malloc_type_malloc(24 * a1, 0x20040960023A9uLL);
          if (v12)
          {
            v13 = v12;
            v14 = v6 - 1 + v9 * a1;
            v15 = malloc_type_malloc(v14, 0x100004077774924uLL);
            if (v15)
            {
              v16 = v15;
              AVE_BlkBuf_Make(v11, v13, (v15 + v6 - 1) & -v6, a1, v8);
              result = 0;
              *(v11 + 24) = v11;
              *(v11 + 32) = v13;
              *(v11 + 48) = 168;
              *(v11 + 52) = 24 * a1;
              *(v11 + 40) = v16;
              *(v11 + 56) = v14;
              *a4 = v11;
              return result;
            }

            free(v11);
            v17 = v13;
          }

          else
          {
            v17 = v11;
          }

          free(v17);
        }

        return 4294966293;
      }
    }
  }

  return result;
}

uint64_t AVE_BlkBuf_CreateWithMem(uint64_t a1, int a2, int a3, int a4, unsigned int a5, uint64_t *a6)
{
  v16 = a1;
  v15 = a2;
  result = 4294966295;
  if (a2 >= 1 && a3 >= 1 && a4 >= 1 && a5 <= 0x40)
  {
    if (a5)
    {
      if (!a6 || ((a5 + 127) & a5) != 0)
      {
        return result;
      }
    }

    else
    {
      if (!a6)
      {
        return result;
      }

      a5 = 64;
    }

    *a6 = 0;
    v9 = (a4 + a5 - 1) & -a5;
    AVE_AlignMem(&v16, &v15, a5, a5);
    if (v15 / v9 >= a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = v15 / v9;
    }

    v11 = malloc_type_malloc(0xA8uLL, 0x1030040A9B39151uLL);
    if (v11)
    {
      v12 = v11;
      v13 = malloc_type_malloc(24 * v10, 0x20040960023A9uLL);
      if (v13)
      {
        v14 = v13;
        AVE_BlkBuf_Make(v12, v13, v16, v10, v9);
        result = 0;
        *(v12 + 24) = v12;
        *(v12 + 32) = v14;
        *(v12 + 48) = 168;
        *(v12 + 52) = 24 * v10;
        *a6 = v12;
        return result;
      }

      free(v12);
    }

    return 4294966293;
  }

  return result;
}

uint64_t AVE_BlkBuf_Destroy(void *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (!AVE_DLList_Empty(a1 + 16))
  {
    return 4294966280;
  }

  v2 = a1[5];
  if (v2)
  {
    free(v2);
    a1[5] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    free(v3);
    a1[4] = 0;
  }

  result = a1[3];
  if (result)
  {
    free(result);
    return 0;
  }

  return result;
}

uint64_t AVE_CalcBufNumOfMBInputCtrl(int a1, uint64_t a2, unsigned __int8 a3, unsigned int a4)
{
  if (((a1 == 1) & a3) != 0)
  {
    return a4;
  }

  else
  {
    return 0;
  }
}

uint64_t AVE_CalcBufSizeOfMBInputCtrl(int a1, int a2, int a3, int a4)
{
  if (a2 == 2)
  {
    v6 = ((a3 + 31) & 0xFFFFFFE0) * ((a4 + 31) >> 5);
    if (a1 >= 30)
    {
      v6 = (((a4 + 63) >> 5) & 0x3FFFFFE) * ((a3 + 63) & 0xFFFFFFC0);
    }
  }

  else if (a2 == 1)
  {
    v4 = (a3 + 15) & 0xFFFFFFF0;
    if (a1 < 30)
    {
      v5 = (a4 + 15) >> 4;
    }

    else
    {
      v4 = (v4 + 63) & 0x3FFFFFC0;
      v5 = ((a4 + 63) >> 4) & 0xFFFFFFFC;
    }

    v6 = v4 * v5;
  }

  else
  {
    v6 = 0;
  }

  return (v6 + 4095) & 0xFFFFF000;
}

uint64_t AVE_CFArray_AddSInt32(int a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddSInt32", 83, "pNum != __null", valuePtr, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %d %p", CurrTime, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d %p\n", v8, 20, v9, "AVE_CFArray_AddSInt32", 79, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_AddFloat64(double a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v4 = CFNumberCreate(0, kCFNumberFloat64Type, &valuePtr);
    if (v4)
    {
      v5 = v4;
      CFArrayAppendValue(a2, v4);
      CFRelease(v5);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddFloat64", 138, "pNum != __null", a1, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p", CurrTime);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p\n", v8, 20, v9, "AVE_CFArray_AddFloat64", 134, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p", v8);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_AddDouble(double a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v3)
    {
      v4 = v3;
      CFArrayAppendValue(a2, v3);
      CFRelease(v4);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v10 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v10)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddDouble", 165, "pNum != __null", valuePtr, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lf %p", CurrTime);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p\n", v8, 20, v9, "AVE_CFArray_AddDouble", 161, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lf %p", v8);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFArray_GetChar(CFArrayRef theArray, CFIndex idx, char *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberCharType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetChar", 198, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetChar", 198, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetChar", 191, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFArray_GetSInt32(CFArrayRef theArray, CFIndex idx, int *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt32", 260, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt32", 260, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt32", 253, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFArray_GetSInt64(CFArrayRef theArray, CFIndex idx, uint64_t *a3)
{
  v4 = idx;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt64", 291, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_25;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_25;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetSInt64", 291, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetSInt64", 284, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFArray_GetFloat64(CFArrayRef theArray, CFIndex idx, double *a3)
{
  v4 = idx;
  valuePtr = 0;
  if (theArray && (idx & 0x80000000) == 0 && a3)
  {
    *a3 = 0.0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, idx);
    if (ValueAtIndex)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(ValueAtIndex))
      {
        if (CFNumberGetValue(ValueAtIndex, kCFNumberFloat64Type, &valuePtr))
        {
          result = 0;
        }

        else
        {
          result = 4294966288;
        }

        *a3 = valuePtr;
        return result;
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFArray_GetFloat64", 323, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!ValueAtIndex)
      {
        v17 = -1;
        goto LABEL_26;
      }
    }

    else if (!ValueAtIndex)
    {
      v17 = -1;
      goto LABEL_26;
    }

    v17 = CFGetTypeID(ValueAtIndex);
LABEL_26:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %d %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFArray_GetFloat64", 323, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theArray, v4, a3, ValueAtIndex, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFArray_GetFloat64", 316, "pArray != __null && idx >= 0 && pVal != __null", theArray, v4, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFDict_AddDouble(const __CFString *a1, double a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (v6)
    {
      v7 = v6;
      CFDictionaryAddValue(a3, a1, v6);
      CFRelease(v7);
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x14u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p\n", CurrTime, 20, LevelStr, "AVE_CFDict_AddDouble", 493, "pNum != __null", a1, valuePtr, a3);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lf %p", CurrTime, 20);
      }

      return 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v9 = AVE_Log_CheckConsole(0x14u);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p\n", v10, 20, v11, "AVE_CFDict_AddDouble", 489, "pKey != __null && pDict != __null", a1, a2, a3);
        v10 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lf %p", v10, 20);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFDict_GetDouble(CFDictionaryRef theDict, const __CFString *key, double *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0.0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        if (CFNumberGetValue(Value, kCFNumberDoubleType, a3))
        {
          return 0;
        }

        else
        {
          return 4294966288;
        }
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v13 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      if (Value)
      {
        v16 = CFGetTypeID(Value);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!Value)
      {
        v17 = -1;
        goto LABEL_27;
      }
    }

    else if (!Value)
    {
      v17 = -1;
      goto LABEL_27;
    }

    v17 = CFGetTypeID(Value);
LABEL_27:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFDict_GetDouble", 802, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetDouble", 788, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v12 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v12, 20, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v10, 20, v11);
    }
  }

  return 4294966295;
}

const char *AVE_CFStr_GetStr(const __CFString *a1, char *a2, int a3)
{
  if (a1)
  {
    result = CFStringGetCStringPtr(a1, 0);
    if (a3 >= 1 && a2 && !result)
    {
      CFStringGetCString(a1, a2, a3, 0);
      return a2;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v7 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 20, LevelStr, "AVE_CFStr_GetStr", 975, "pStr != __null", 0, a2, a3);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 20, v11);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 20, LevelStr);
      }
    }

    return 0;
  }

  return result;
}

uint64_t AVE_CFPref_GetStr(CFStringRef applicationID, CFStringRef key, char *a3, int a4)
{
  if (applicationID && key && a3 && a4 > 0)
  {
    v8 = CFPreferencesCopyAppValue(key, applicationID);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      if (v10 == CFStringGetTypeID())
      {
        Str = AVE_CFStr_GetStr(v9, a3, a4);
        if (Str != a3)
        {
          AVE_SNPrintf(a3, a4, "%s", v12, v13, v14, v15, v16, Str);
        }

        v17 = 0;
      }

      else
      {
        v17 = 4294966296;
      }

      CFRelease(v9);
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetStr", 1006, "pAppID != __null && pKey != __null && pVal != __null && num > 0", applicationID, key, a3, a4);
        v21 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v21, 20, v23, "AVE_CFPref_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", CurrTime, 20, LevelStr, "AVE_CFPref_GetStr");
      }
    }

    return 4294966295;
  }

  return v17;
}

uint64_t AVE_CFPref_GetBool(CFStringRef applicationID, CFStringRef key, BOOL *a3)
{
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFBooleanGetTypeID())
      {
        v9 = CFEqual(v7, *MEMORY[0x29EDB8F00]) != 0;
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 != CFStringGetTypeID())
        {
          goto LABEL_19;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"true", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"yes", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        v9 = 1;
        if (CFStringCompare(v7, @"1", 1uLL) == kCFCompareEqualTo)
        {
          goto LABEL_7;
        }

        if (CFStringCompare(v7, @"false", 1uLL) && CFStringCompare(v7, @"no", 1uLL) && CFStringCompare(v7, @"0", 1uLL))
        {
LABEL_19:
          v10 = 4294966296;
          goto LABEL_20;
        }

        v9 = 0;
      }

LABEL_7:
      v10 = 0;
      *a3 = v9;
LABEL_20:
      CFRelease(v7);
      return v10;
    }

    return 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v11 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetBool", 1047, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v14 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v14, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFPref_GetUInt32(CFStringRef applicationID, CFStringRef key, unsigned int *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          goto LABEL_19;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          v20 = 0;
          valuePtr = 0;
          Str = AVE_CFStr_GetStr(v7, &valuePtr, 12);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    v9 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetUInt32", 1151, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    v9 = 4294966295;
  }

LABEL_19:
  v16 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t AVE_CFPref_GetUInt64(CFStringRef applicationID, CFStringRef key, unint64_t *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr[0];
LABEL_16:
          CFRelease(v7);
          goto LABEL_19;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v20 = 0;
          Str = AVE_CFStr_GetStr(v7, valuePtr, 20);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    v9 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetUInt64", 1202, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    v9 = 4294966295;
  }

LABEL_19:
  v16 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t AVE_CFPref_GetInt32(CFStringRef applicationID, CFStringRef key, int *a3)
{
  valuePtr[2] = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        LODWORD(valuePtr[0]) = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt32Type, valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr[0];
LABEL_16:
          CFRelease(v7);
          goto LABEL_19;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          memset(valuePtr, 0, 13);
          Str = AVE_CFStr_GetStr(v7, valuePtr, 13);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    v9 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetInt32", 1252, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    v9 = 4294966295;
  }

LABEL_19:
  v16 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t AVE_CFPref_GetInt64(CFStringRef applicationID, CFStringRef key, uintmax_t *a3)
{
  v20[2] = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        valuePtr = 0;
        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &valuePtr))
        {
          v9 = 0;
          *a3 = valuePtr;
LABEL_16:
          CFRelease(v7);
          goto LABEL_19;
        }
      }

      else
      {
        v14 = CFGetTypeID(v7);
        if (v14 == CFStringGetTypeID())
        {
          valuePtr = 0;
          v20[0] = 0;
          *(v20 + 5) = 0;
          Str = AVE_CFStr_GetStr(v7, &valuePtr, 21);
          if (Str)
          {
            v9 = 0;
            *a3 = strtoumax(Str, 0, 0);
            goto LABEL_16;
          }
        }
      }

      v9 = 4294966296;
      goto LABEL_16;
    }

    v9 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetInt64", 1303, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v18);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    v9 = 4294966295;
  }

LABEL_19:
  v16 = *MEMORY[0x29EDCA608];
  return v9;
}

uint64_t AVE_CFPref_GetDouble(CFStringRef applicationID, CFStringRef key, double *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  if (applicationID && key && a3)
  {
    v6 = CFPreferencesCopyAppValue(key, applicationID);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        v20 = 0;
        valuePtr[0] = 0;
        if (CFNumberGetValue(v7, kCFNumberDoubleType, valuePtr))
        {
          v9 = *valuePtr;
LABEL_19:
          v14 = 0;
          *a3 = v9;
LABEL_21:
          CFRelease(v7);
          goto LABEL_22;
        }

        if (CFNumberGetValue(v7, kCFNumberSInt64Type, &v20))
        {
          v9 = v20;
          goto LABEL_19;
        }
      }

      else
      {
        v15 = CFGetTypeID(v7);
        if (v15 == CFStringGetTypeID())
        {
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          v22 = 0;
          Str = AVE_CFStr_GetStr(v7, valuePtr, 20);
          if (Str)
          {
            v9 = strtod(Str, 0);
            goto LABEL_19;
          }
        }
      }

      v14 = 4294966296;
      goto LABEL_21;
    }

    v14 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 20, LevelStr, "AVE_CFPref_GetDouble", 1353, "pAppID != __null && pKey != __null && pVal != __null", applicationID, key, a3);
        v13 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 20, LevelStr);
      }
    }

    v14 = 4294966295;
  }

LABEL_22:
  v17 = *MEMORY[0x29EDCA608];
  return v14;
}

uint64_t AVE_DW_GetStr(const char *a1, const char *a2, char *a3, int a4)
{
  v44 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3 || a4 <= 0)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v20 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d\n", CurrTime, 44, LevelStr, "AVE_DW_GetStr", 63, "pKey != __null && pVal != __null && num > 0", a1, a2, a3, a4);
        v23 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", v23, 44, v32, "AVE_DW_GetStr");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d", CurrTime, 44, LevelStr, "AVE_DW_GetStr");
      }
    }

    v18 = 4294966295;
    goto LABEL_33;
  }

  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = "com.apple.coremedia";
  }

  v9 = CFStringCreateWithCString(0, v8, 0);
  v10 = CFStringCreateWithCString(0, a2, 0);
  v11 = v10;
  if (!v9 || !v10)
  {
    v18 = 4294966293;
    if (!v9)
    {
      if (!v10)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    goto LABEL_31;
  }

  Str = AVE_CFPref_GetStr(v9, v10, a3, a4);
  if (Str)
  {
    v18 = Str;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    *cStr = 0u;
    v37 = 0u;
    AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", v13, v14, v15, v16, v17, a2 + 3);
    CFRelease(v11);
    v11 = CFStringCreateWithCString(0, cStr, 0);
    if (!v11)
    {
      goto LABEL_31;
    }

    v19 = AVE_CFPref_GetStr(v9, v11, a3, a4);
    if (v19)
    {
      v18 = v19;
      goto LABEL_31;
    }

    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v27 = AVE_Log_CheckConsole(0x2Cu);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(6);
      if (v27)
      {
        printf("%lld %d AVE %s: defaults write %s = %s\n", v28, 44, v29, cStr, a3);
        v28 = AVE_GetCurrTime();
        v35 = a3;
        v34 = AVE_Log_GetLevelStr(6);
      }

      else
      {
        v35 = a3;
        v34 = v29;
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v28, 44, v34, cStr, v35);
    }
  }

  else if (AVE_Log_CheckLevel(0x2Cu, 6))
  {
    v18 = AVE_Log_CheckConsole(0x2Cu);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(6);
    if (!v18)
    {
      syslog(3, "%lld %d AVE %s: defaults write %s = %s", v24, 44, v25, a2, a3);
      goto LABEL_31;
    }

    printf("%lld %d AVE %s: defaults write %s = %s\n", v24, 44, v25, a2, a3);
    v26 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %s", v26, 44, v33, a2, a3);
  }

  v18 = 0;
LABEL_31:
  CFRelease(v9);
  if (v11)
  {
LABEL_32:
    CFRelease(v11);
  }

LABEL_33:
  v30 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t AVE_DW_GetBool(const char *a1, const char *a2, BOOL *a3)
{
  v40 = *MEMORY[0x29EDCA608];
  if (!a2 || !a3)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x2Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", CurrTime, 44, LevelStr, "AVE_DW_GetBool", 134, "pKey != __null && pVal != __null", a1, a2, a3);
        v21 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v21, 44, v31);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", CurrTime, 44, LevelStr);
      }
    }

    v16 = 4294966295;
    goto LABEL_30;
  }

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = "com.apple.coremedia";
  }

  v7 = CFStringCreateWithCString(0, v6, 0);
  v8 = CFStringCreateWithCString(0, a2, 0);
  v9 = v8;
  if (!v7 || !v8)
  {
    v16 = 4294966293;
    if (!v7)
    {
      if (!v8)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    goto LABEL_28;
  }

  Bool = AVE_CFPref_GetBool(v7, v8, a3);
  if (!Bool)
  {
    if (AVE_Log_CheckLevel(0x2Cu, 6))
    {
      v22 = AVE_Log_CheckConsole(0x2Cu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(6);
      if (v22)
      {
        printf("%lld %d AVE %s: defaults write %s = %d\n", v23, 44, v24, a2, *a3);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(6);
      }

      syslog(3, "%lld %d AVE %s: defaults write %s = %d", v23, 44, v24, a2, *a3);
    }

    goto LABEL_27;
  }

  v16 = Bool;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  *cStr = 0u;
  v33 = 0u;
  AVE_SNPrintf(cStr, 128, "AVEVideoEncoder%s", v11, v12, v13, v14, v15, a2 + 3);
  CFRelease(v9);
  v9 = CFStringCreateWithCString(0, cStr, 0);
  if (!v9)
  {
    goto LABEL_28;
  }

  v17 = AVE_CFPref_GetBool(v7, v9, a3);
  if (v17)
  {
    v16 = v17;
    goto LABEL_28;
  }

  if (!AVE_Log_CheckLevel(0x2Cu, 6))
  {
    goto LABEL_27;
  }

  v16 = AVE_Log_CheckConsole(0x2Cu);
  v25 = AVE_GetCurrTime();
  v26 = AVE_Log_GetLevelStr(6);
  if (v16)
  {
    printf("%lld %d AVE %s: defaults write %s = %d\n", v25, 44, v26, cStr, *a3);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(6);
    syslog(3, "%lld %d AVE %s: defaults write %s = %d", v27, 44, v28, cStr, *a3);
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  syslog(3, "%lld %d AVE %s: defaults write %s = %d", v25, 44, v26, cStr, *a3);
LABEL_28:
  CFRelease(v7);
  if (v9)
  {
LABEL_29:
    CFRelease(v9);
  }

LABEL_30:
  v29 = *MEMORY[0x29EDCA608];
  return v16;
}