uint64_t AVE_SEI::SetContentColorVolume(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v7 = *this;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetContentColorVolume", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v8 = *this;
    }

    else
    {
      v22 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", CurrTime, 211);
  }

  v9 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    Frame[4] |= 0x20uLL;
    AVE_Mutex_Unlock(*(this + 4));
    if (v9)
    {
      v11 = 4;
    }

    else
    {
      v11 = 7;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v12 = AVE_Log_CheckConsole(0xD3u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      v15 = *this;
      if (v12)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v13, 211, v14, "AVE_SEI", "SetContentColorVolume", 539, "pPFData != __null", this, *this, a2);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v16 = *this;
      }

      else
      {
        v23 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v13, 211, v14, "AVE_SEI");
    }

    AVE_Mutex_Unlock(*(this + 4));
    v11 = 4;
    v9 = 4294966296;
  }

  if (AVE_Log_CheckLevel(0xD3u, v11))
  {
    v17 = AVE_Log_CheckConsole(0xD3u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(v11);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v18, 211, v19, "AVE_SEI", "SetContentColorVolume", this, *this, a2, v9);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(v11);
      v20 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v18, 211, v19);
  }

  return v9;
}

uint64_t AVE_SEI::SetMCTFTag(AVE_SEI *this, uint64_t a2, double a3, double a4, double a5, double a6, double a7, int a8, int a9, int a10)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v20 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetMCTFTag", this, *this, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v23 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f %f %f %f %f %d %d %d", CurrTime, 211, LevelStr, "AVE_SEI");
  }

  AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    v25 = 0;
    *(Frame + 4) |= 0x4000000000uLL;
    Frame[20] = a3;
    Frame[21] = a4;
    Frame[22] = a5;
    Frame[23] = a6;
    Frame[24] = a7;
    *(Frame + 50) = a8;
    *(Frame + 51) = a9;
    *(Frame + 52) = a10;
    v26 = 7;
    goto LABEL_13;
  }

  v26 = 4;
  if (!AVE_Log_CheckLevel(0xD3u, 4))
  {
    goto LABEL_11;
  }

  v27 = AVE_Log_CheckConsole(0xD3u);
  v28 = AVE_GetCurrTime();
  v29 = AVE_Log_GetLevelStr(4);
  v30 = *this;
  if (v27)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", this, *this, a2);
    v31 = AVE_GetCurrTime();
    v26 = 4;
    v32 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v31, 211, v32, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", this, *this, a2);
LABEL_11:
    v25 = 4294966296;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI", "SetMCTFTag", 1028, "pPFData != __null", this, *this, a2);
  v25 = 4294966296;
  v26 = 4;
LABEL_13:
  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, v26))
  {
    v33 = AVE_Log_CheckConsole(0xD3u);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(v26);
    if (v33)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d\n", v34, 211, v35, "AVE_SEI", "SetMCTFTag", this, *this, a2, a3, a4, a5, a6, a7, a8, a9, a10, v25);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(v26);
      v39 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d", v36, 211, v37, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %f %f %f %f %d %d %d %d", v34, 211, v35, "AVE_SEI");
    }
  }

  return v25;
}

uint64_t AVE_SEI::EstimateSEISize(AVE_SEI *this, uint64_t a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx\n", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateSEISize", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx", CurrTime, 211, LevelStr);
  }

  AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindFrame(this, a2);
  v11 = Frame;
  if (Frame)
  {
    if ((*(this + 1) & a3 & Frame[4]) != 0)
    {
      v12 = AVE_SEI::EstimateUnregisteredSEIMessageSizes(this, Frame, a3);
      if (v12 < 1)
      {
        v17 = 0;
        v18 = 1;
      }

      else
      {
        v13 = v12 - 509;
        if (v12 < 0x1FD)
        {
          v13 = 0;
        }

        v14 = (v13 + 254) / 0xFFu + 2;
        if (v12 >= 0xFF)
        {
          v15 = v14;
        }

        else
        {
          v15 = 1;
        }

        v16 = v15 + v12;
        v17 = v16 + 16;
        v18 = v16 + 24;
      }

      v19 = AVE_SEI::EstimateRegisteredSEINALUSizes(this, v11, a3);
      v11 = v18 + AVE_SEI::EstimateISPMetadataSEITagSize(this, v11) + (v19 & ~(v19 >> 31)) + (v19 & ~(v19 >> 31)) + v17 + (((v19 & ~(v19 >> 31)) + v17) >> 1);
    }

    else
    {
      v11 = 0;
    }
  }

  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v20 = AVE_Log_CheckConsole(0xD3u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d\n", v21, 211, v22, "AVE_SEI", "EstimateSEISize", this, *this, a2, a3, v11);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(7);
      v23 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %d", v21, 211, v22, "AVE_SEI");
  }

  return v11;
}

uint64_t H264VideoEncoderFrameReceiver::AddAllSEIs(AVE_SEI **a1, unsigned int *a2, unsigned __int8 *a3, int a4, int a5, int a6)
{
  v32 = a1 + 17227;
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v12 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "AddAllSEIs", a1, *v32, a2, a3, a4, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *v32;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d %d %d", CurrTime, 46, LevelStr, "AVE_FrameRecv", "AddAllSEIs");
  }

  if (a2 && a3)
  {
    if (a2[795] >= 0x1E)
    {
      v16 = 3758097084;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v21 = AVE_Log_CheckConsole(0x2Eu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v22, 46, v23, "AVE_FrameRecv", "AddAllSEIs", 579, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", a2[795]);
          v22 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v31 = a2[795];
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v22, 46);
      }
    }

    else
    {
      *(v32 + 2) = 0;
      if (!a6 || (v16 = 0, (a5 & 1) == 0))
      {
        v33 = 0;
        H264VideoEncoderFrameReceiver::DecideSEIBits(a1, &v33, a2);
        v17 = AVE_SEI::Generate(a1[17962], a2[10], v33, a3, a4, v32 + 2);
        v16 = AVE_RetCode2OSStatus(v17);
      }
    }
  }

  else
  {
    v16 = 3758097084;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v18 = AVE_Log_CheckConsole(3u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | H264FrameRec ERROR\n", v19, 3, v20, "AVE_FrameRecv", "AddAllSEIs", 575, "pFrame != __null && pBuf != __null");
        v19 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | H264FrameRec ERROR", v19);
    }
  }

  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v24 = AVE_Log_CheckConsole(0x2Eu);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d\n", v25, 46, v26, "AVE_FrameRecv", "AddAllSEIs", a1, *v32, a2, a3, a4, a5, a6, v16);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      v30 = *v32;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d", v27, 46, v28, "AVE_FrameRecv", "AddAllSEIs");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d %d %d", v25, 46, v26, "AVE_FrameRecv", "AddAllSEIs");
    }
  }

  return v16;
}

uint64_t AVE_SEI::Generate(AVE_SEI *this, uint64_t a2, uint64_t a3, unsigned __int8 *a4, int a5, int *a6)
{
  v115 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "Generate", this, *this, a2, a3, a4, a5);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld 0x%llx %p %d", CurrTime, 211, LevelStr, "AVE_SEI", "Generate");
  }

  if (a4 && (a5 & 0x80000000) == 0 && a6)
  {
    *a6 = 0;
    AVE_Mutex_Lock(*(this + 4));
    Frame = AVE_SEI::FindFrame(this, a2);
    if (Frame)
    {
      v17 = Frame;
      v18 = *(this + 1) & a3 & Frame[4];
      if (v18)
      {
        v115 = 0;
        v19 = AVE_SEI::GenerateISPMetadataNALU(this, a4, a5 - *a6, Frame, v18, &v115);
        if (v19)
        {
          v20 = v19;
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
LABEL_28:
            AVE_Mutex_Unlock(*(this + 4));
            v25 = 4;
            goto LABEL_90;
          }

          v21 = AVE_Log_CheckConsole(0xD3u);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v24 = *this;
          if (v21)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 345, "ret == 0", this, *this, v20);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
          }

          v105 = *this;
LABEL_27:
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v22, 211, v23, "AVE_SEI");
          goto LABEL_28;
        }

        if (v115 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
        {
          v32 = AVE_Log_CheckConsole(0xD3u);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(7);
          v35 = *this;
          if (v32)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes\n", v33, 211, v34, "AVE_SEI", "Generate", 349, this, *this, v115);
            v33 = AVE_GetCurrTime();
            v34 = AVE_Log_GetLevelStr(7);
          }

          v95 = *this;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateISPMetadataNALU added %d bytes", v33, 211, v34);
        }

        v36 = v115;
        v37 = *a6 + v115;
        *a6 = v37;
        v38 = &a4[v36];
        if (*(this + 5) == 2)
        {
          v115 = 0;
          v39 = AVE_SEI::GenerateTimingInfoMetadata(this, v38, a5 - v37, v17, v18, &v115);
          if (v39)
          {
            v20 = v39;
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_28;
            }

            v40 = AVE_Log_CheckConsole(0xD3u);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
            v41 = *this;
            if (v40)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 361, "ret == 0", this, *this, v20);
              v22 = AVE_GetCurrTime();
              v23 = AVE_Log_GetLevelStr(4);
            }

            v106 = *this;
            goto LABEL_27;
          }

          if (v115 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
          {
            v42 = AVE_Log_CheckConsole(0xD3u);
            v111 = AVE_GetCurrTime();
            v43 = AVE_Log_GetLevelStr(7);
            v44 = *this;
            if (v42)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes\n", v111, 211, v43, "AVE_SEI", "Generate", 366, this, *this, v115);
              v45 = AVE_GetCurrTime();
              v46 = AVE_Log_GetLevelStr(7);
              v96 = *this;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes", v45, 211, v46);
            }

            else
            {
              v97 = *this;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateTimingInfoMetadata added %d bytes", v111, 211, v43);
            }
          }

          v47 = v115;
          v48 = *a6 + v115;
          *a6 = v48;
          v49 = &v38[v47];
          v115 = 0;
          v50 = AVE_SEI::GenerateContentColorVolumeNALU(this, v49, a5 - v48, v17, v18, &v115);
          if (v50)
          {
            v20 = v50;
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_28;
            }

            v51 = AVE_Log_CheckConsole(0xD3u);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
            v52 = *this;
            if (v51)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 376, "ret == 0", this, *this, v20);
              v22 = AVE_GetCurrTime();
              v23 = AVE_Log_GetLevelStr(4);
            }

            v107 = *this;
            goto LABEL_27;
          }

          if (v115 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
          {
            v53 = AVE_Log_CheckConsole(0xD3u);
            v112 = AVE_GetCurrTime();
            v54 = AVE_Log_GetLevelStr(7);
            v55 = *this;
            if (v53)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes\n", v112, 211, v54, "AVE_SEI", "Generate", 381, this, *this, v115);
              v56 = AVE_GetCurrTime();
              v57 = AVE_Log_GetLevelStr(7);
              v98 = *this;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes", v56, 211, v57);
            }

            else
            {
              v99 = *this;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateContentColorVolumeNALU added %d bytes", v112, 211, v54);
            }
          }

          v58 = v115;
          v59 = *a6 + v115;
          *a6 = v59;
          v60 = &v49[v58];
          v115 = 0;
          v61 = AVE_SEI::GenerateAmbientViewingEnvironmentNALU(this, v60, a5 - v59, v17, v18, &v115);
          if (v61)
          {
            v20 = v61;
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_28;
            }

            v62 = AVE_Log_CheckConsole(0xD3u);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
            v63 = *this;
            if (v62)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 390, "ret == 0", this, *this, v20);
              v22 = AVE_GetCurrTime();
              v23 = AVE_Log_GetLevelStr(4);
            }

            v108 = *this;
            goto LABEL_27;
          }

          if (v115 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
          {
            v64 = AVE_Log_CheckConsole(0xD3u);
            v113 = AVE_GetCurrTime();
            v65 = AVE_Log_GetLevelStr(7);
            v66 = *this;
            if (v64)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes\n", v113, 211, v65, "AVE_SEI", "Generate", 396, this, *this, v115);
              v67 = AVE_GetCurrTime();
              v68 = AVE_Log_GetLevelStr(7);
              v100 = *this;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes", v67, 211, v68);
            }

            else
            {
              v101 = *this;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateAmbientViewingEnvironmentNALU added %d bytes", v113, 211, v65);
            }
          }

          v69 = v115;
          v37 = *a6 + v115;
          *a6 = v37;
          v38 = &v60[v69];
        }

        v115 = 0;
        v70 = AVE_SEI::GenerateLuxLevelNALU(this, v38, a5 - v37, v17, v18, &v115);
        if (v70)
        {
          v20 = v70;
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
            goto LABEL_28;
          }

          v71 = AVE_Log_CheckConsole(0xD3u);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v72 = *this;
          if (v71)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 407, "ret == 0", this, *this, v20);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
          }

          v109 = *this;
          goto LABEL_27;
        }

        if (v115 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
        {
          v73 = AVE_Log_CheckConsole(0xD3u);
          v114 = AVE_GetCurrTime();
          v74 = AVE_Log_GetLevelStr(7);
          v75 = *this;
          if (v73)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes\n", v114, 211, v74, "AVE_SEI", "Generate", 411, this, *this, v115);
            v76 = AVE_GetCurrTime();
            v77 = AVE_Log_GetLevelStr(7);
            v102 = *this;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes", v76, 211, v77);
          }

          else
          {
            v103 = *this;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateLuxLevelNALU added %d bytes", v114, 211, v74);
          }
        }

        v78 = v115;
        v79 = *a6 + v115;
        *a6 = v79;
        v115 = 0;
        UnregisteredSEINALU = AVE_SEI::GenerateUnregisteredSEINALU(this, &v38[v78], a5 - v79, v17, v18, &v115);
        if (UnregisteredSEINALU)
        {
          v20 = UnregisteredSEINALU;
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
            goto LABEL_28;
          }

          v81 = AVE_Log_CheckConsole(0xD3u);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(4);
          v82 = *this;
          if (v81)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v22, 211, v23, "AVE_SEI", "Generate", 421, "ret == 0", this, *this, v20);
            v22 = AVE_GetCurrTime();
            v23 = AVE_Log_GetLevelStr(4);
          }

          v110 = *this;
          goto LABEL_27;
        }

        if (v115 >= 1 && AVE_Log_CheckLevel(0xD3u, 7))
        {
          v83 = AVE_Log_CheckConsole(0xD3u);
          v84 = AVE_GetCurrTime();
          v85 = AVE_Log_GetLevelStr(7);
          v86 = *this;
          if (v83)
          {
            printf("%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes\n", v84, 211, v85, "AVE_SEI", "Generate", 425, this, *this, v115);
            v84 = AVE_GetCurrTime();
            v85 = AVE_Log_GetLevelStr(7);
            v87 = *this;
          }

          else
          {
            v104 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu GenerateUnregisteredSEINALU added %d bytes", v84, 211, v85);
        }

        *a6 += v115;
      }
    }

    AVE_Mutex_Unlock(*(this + 4));
    v20 = 0;
    v25 = 7;
  }

  else
  {
    v25 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v26 = AVE_Log_CheckConsole(0xD3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      v29 = *this;
      if (v26)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d\n", v27, 211, v28, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", this, v29, a6, a4, a5);
        v30 = AVE_GetCurrTime();
        v25 = 4;
        v31 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d", v30, 211, v31, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", this, *this, a6, a4, a5);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %llu %p %p %d", v27, 211, v28, "AVE_SEI", "Generate", 321, "pBytesWritten != __null && pOutputBuffer != __null && bufSize >= 0", this, v29, a6, a4, a5);
        v25 = 4;
      }
    }

    v20 = 4294966295;
  }

LABEL_90:
  if (AVE_Log_CheckLevel(0xD3u, v25))
  {
    v88 = AVE_Log_CheckConsole(0xD3u);
    v89 = AVE_GetCurrTime();
    v90 = AVE_Log_GetLevelStr(v25);
    v91 = *this;
    if (v88)
    {
      if (a6)
      {
        v92 = *a6;
      }

      else
      {
        v92 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %p %d %d\n", v89, 211, v90, "AVE_SEI", "Generate", this, v91, a2, a3, a4, v92, v20);
      v89 = AVE_GetCurrTime();
      v90 = AVE_Log_GetLevelStr(v25);
      v91 = *this;
      if (a6)
      {
        v93 = *a6;
      }

      else
      {
        v93 = -1;
      }
    }

    else if (a6)
    {
      v93 = *a6;
    }

    else
    {
      v93 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld 0x%llx %p %d %d", v89, 211, v90, "AVE_SEI", "Generate", this, v91, a2, a3, a4, v93, v20);
  }

  return v20;
}

uint64_t AVE_RetCode2OSStatus(uint64_t result)
{
  if (result <= -2002)
  {
    if (result > -2006)
    {
      if (result == -2005)
      {
        return 4294948264;
      }

      else
      {
        return 4294954396;
      }
    }

    else if (result > -2008)
    {
      if (result == -2007)
      {
        return 4294948263;
      }

      else
      {
        return 4294948265;
      }
    }

    else if (result == -2009)
    {
      return 4294948262;
    }

    else if (result == -2008)
    {
      return 4294949598;
    }

    else
    {
      return 4294949605;
    }
  }

  else
  {
    switch(result)
    {
      case 0xFFFFFC01:
      case 0xFFFFFC02:
      case 0xFFFFFC03:
      case 0xFFFFFC04:
      case 0xFFFFFC05:
      case 0xFFFFFC06:
      case 0xFFFFFC07:
      case 0xFFFFFC08:
      case 0xFFFFFC09:
      case 0xFFFFFC0A:
      case 0xFFFFFC0B:
      case 0xFFFFFC0C:
      case 0xFFFFFC0D:
      case 0xFFFFFC0E:
      case 0xFFFFFC0F:
      case 0xFFFFFC10:
      case 0xFFFFFC11:
      case 0xFFFFFC12:
      case 0xFFFFFC13:
      case 0xFFFFFC14:
      case 0xFFFFFC16:
      case 0xFFFFFC18:
        return 4294949605;
      case 0xFFFFFC15:
        return 4294954392;
      case 0xFFFFFC17:
        return 4294954394;
      default:
        if (result == -2001)
        {
          result = 4294947942;
        }

        else if (result)
        {
          return 4294949605;
        }

        break;
    }
  }

  return result;
}

char *H264VideoEncoderFrameReceiver::CreateBuffer(H264VideoEncoderFrameReceiver *this, size_t a2, OpaqueCMBlockBuffer **a3)
{
  dataPointerOut = 0;
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v6 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %ld %p\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CreateBuffer", a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %ld %p", CurrTime);
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v13 = AVE_Log_CheckConsole(0x2Eu);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld\n", v14, 46, v15, "AVE_FrameRecv", "CreateBuffer", 1600, "size != 0", this, 0);
        v16 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld", v16, 46, v27);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter size %p %ld", v14, 46, v15);
      }
    }

    goto LABEL_32;
  }

  if (!a3 || *a3)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x2Eu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        if (a3)
        {
          v12 = *a3;
        }

        else
        {
          v12 = 0;
        }

        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p %p\n", v10, 46, v11, "AVE_FrameRecv", "CreateBuffer", 1603, "(bbuf != __null) && (*bbuf == __null)", this, a3, v12);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        if (a3)
        {
          v21 = *a3;
        }
      }

      else if (a3)
      {
        v19 = *a3;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p %p", v10, 46, v11, "AVE_FrameRecv");
    }

LABEL_32:
    v20 = -1001;
    goto LABEL_33;
  }

  v17 = *(this + 34451);
  if (*(this + 3669) == 1)
  {
    if (v17 != 2)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (v17 == 2)
  {
LABEL_24:
    if (*(this + 3663))
    {
      VTMotionEstimationProcessorSessionCreateMotionVectorPixelBufferWithOptions();
      goto LABEL_39;
    }

LABEL_26:
    v18 = malloc_type_malloc(a2, 0x100004077774924uLL);
    goto LABEL_27;
  }

  if (*(this + 9862) == 2)
  {
    v18 = MEMORY[0x29C24D0D0](*(this + 3664), a2, 0x100004077774924, 0);
LABEL_27:
    v20 = 0;
    dataPointerOut = v18;
    goto LABEL_33;
  }

  VTEncoderSessionCreateCMBlockBuffer();
  CMBlockBufferGetDataPointer(*a3, 0, 0, 0, &dataPointerOut);
LABEL_39:
  v20 = 0;
LABEL_33:
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v22 = AVE_Log_CheckConsole(0x2Eu);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(7);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %ld %p %p %d\n", v23, 46, v24, "AVE_FrameRecv", "CreateBuffer", a2, a3, dataPointerOut, v20);
      v25 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %ld %p %p %d", v25, 46, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %ld %p %p %d", v23, 46, v24);
    }
  }

  return dataPointerOut;
}

uint64_t AVE_Dump_WriteFPS(void *a1, int a2, int a3, double *a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteFPS", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 16];
    if (v11)
    {
      if (a4)
      {
        v12 = a4[3];
        v13 = a4[7];
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[2], a4[1], *a4, a4[5], a4[4], v12, a4[8], v13, a4[6]) <= 0)
        {
          v14 = 4294965296;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 4294966287;
      }
    }

    else
    {
      v14 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v15 = AVE_Log_CheckConsole(0x3Du);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v16, 61, v17, "AVE_Dump_WriteFPS", 863, "pDump != __null", 0, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v18, 61, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v17);
      }
    }

    v14 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v19 = AVE_Log_CheckConsole(0x3Du);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v20, 61, v21, "AVE_Dump_WriteFPS", a1, a2, a3, a4, v14);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v22, 61, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v21);
    }
  }

  return v14;
}

uint64_t AVE_DLList_PushBack(uint64_t result, void *a2)
{
  if (!result)
  {
    AVE_DLList_PushBack_cold_4();
  }

  if (!a2)
  {
    AVE_DLList_PushBack_cold_3();
  }

  if (!*result)
  {
    AVE_DLList_PushBack_cold_2();
  }

  if (!*(result + 8))
  {
    AVE_DLList_PushBack_cold_1();
  }

  *a2 = *result;
  a2[1] = result;
  *(*result + 8) = a2;
  *result = a2;
  a2[2] = result;
  ++*(result + 24);
  return result;
}

uint64_t H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v4 = *(a2 + 3180);
    if (v4 >= 0x1E)
    {
      v13 = 3758097084;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v17 = AVE_Log_CheckConsole(0x2Eu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", CurrTime, 46, LevelStr, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 476, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      v6 = *(a1 + 8 * v4 + 27072);
      if (v6)
      {
        if (AVE_Log_CheckLevel(0x2Eu, 7))
        {
          v8 = AVE_Log_CheckConsole(0x2Eu);
          v9 = AVE_GetCurrTime();
          v10 = AVE_Log_GetLevelStr(7);
          v11 = *(a2 + 3180);
          if (v8)
          {
            printf("%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d\n", v9, 46, v10, "AVE_FrameRecv", "DoneWithThisFrameFromTheHW", 483, *(a2 + 3180), *(v6 + 288));
            v9 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v12 = *(a2 + 3180);
            v28 = *(v6 + 288);
          }

          else
          {
            v27 = *(a2 + 3180);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d DoneWithThis PlaneNumber %d size %d", v9);
        }

        AVE_Dump_WriteVQMetrics(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (v6 + 45320));
        AVE_Dump_WriteFPS(*(a1 + 40704), *(a2 + 20), *(a2 + 40), (a2 + 72664));
        File = AVE_Dump_FindFile(*(a1 + 40704), 7u, *(a2 + 20));
        AVE_MCTFStats_PrintAll((v6 + 42608), File, *(a2 + 40));
        v25 = AVE_Dump_FindFile(*(a1 + 40704), 6u, *(a2 + 20));
        AVE_FwStats_PrintAll((v6 + 4720), (a2 + 33012), v25, *(a2 + 40), a3);
        AVE_Dump_WriteHwEventTrace(*(a1 + 40704), *(a2 + 20), (v6 + 42760));
        bzero(v6, 0xBAA8uLL);
      }

      else if (AVE_Log_CheckLevel(3u, 4))
      {
        v13 = AVE_Log_CheckConsole(3u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (!v13)
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL");
          return v13;
        }

        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v20, 3, v21, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v22, 3, v23, "DoneWithThisFrameFromTheHW", 480, "codedHeader != __null");
      }

      return 0;
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
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL\n", v15, 3, v16, "DoneWithThisFrameFromTheHW", 473, "Frame != __null");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: DoneWithThisFrameFromTheHW Frame == NULL");
    }
  }

  return v13;
}

uint64_t Connection::writePacketBlock(uint64_t a1, __int128 *a2)
{
  pthread_mutex_lock(a1);
  while (1)
  {
    v5 = *(a1 + 208);
    v4 = *(a1 + 216);
    v6 = __OFSUB__(v4, v5);
    v7 = v4 - v5;
    if ((v7 < 0) ^ v6 | (v7 == 0))
    {
      v7 = 0;
    }

    if (v7 < *(a1 + 200))
    {
      break;
    }

    gettimeofday((a1 + 176), 0);
    v8 = 1000 * *(a1 + 184);
    *(a1 + 160) = *(a1 + 176) + 120;
    *(a1 + 168) = v8;
    if (pthread_cond_timedwait((a1 + 112), a1, (a1 + 160)) == 60)
    {
      if (AVE_Log_CheckLevel(0x2Au, 4))
      {
        v9 = AVE_Log_CheckConsole(0x2Au);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v13 = *(a1 + 208);
        v12 = *(a1 + 216);
        v14 = v12 <= v13;
        v15 = v12 - v13;
        if (v14)
        {
          v15 = 0;
        }

        if (v9)
        {
          printf("%lld %d AVE %s: H264 Connection: connection full %lld\n", CurrTime, 42, LevelStr, v15);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v17 = *(a1 + 208);
          v16 = *(a1 + 216);
          v14 = v16 <= v17;
          v15 = v16 - v17;
          if (v14)
          {
            v15 = 0;
          }
        }

        syslog(3, "%lld %d AVE %s: H264 Connection: connection full %lld", CurrTime, 42, LevelStr, v15);
      }

      v23 = 0xFFFFFFFFLL;
      goto LABEL_20;
    }
  }

  v18 = *(a1 + 224) + 40 * (v4 % *(a1 + 192));
  v19 = *a2;
  v20 = a2[1];
  *(v18 + 32) = *(a2 + 4);
  *v18 = v19;
  *(v18 + 16) = v20;
  v22 = *(a1 + 208);
  v21 = *(a1 + 216);
  *(a1 + 216) = v21 + 1;
  if (v21 >= v22)
  {
    pthread_cond_signal((a1 + 64));
  }

  v23 = 0;
LABEL_20:
  pthread_mutex_unlock(a1);
  return v23;
}

uint64_t AVE_Dump_WriteVQMetrics(void *a1, int a2, int a3, double *a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 15];
    if (v11)
    {
      if (a4)
      {
        v12 = a4[5];
        v13 = a4[1];
        if (fprintf(v11, "%d, %.3f, %.3f, %.3f, %.3f, %.3f, %.3f\n", a3, a4[3], a4[4], v12, *a4, v13, a4[2]) <= 0)
        {
          v14 = 4294965296;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 4294966287;
      }
    }

    else
    {
      v14 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v15 = AVE_Log_CheckConsole(0x3Du);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v16, 61, v17, "AVE_Dump_WriteVQMetrics", 815, "pDump != __null", 0, a2, a3, a4);
        v18 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v18, 61, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v17);
      }
    }

    v14 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v19 = AVE_Log_CheckConsole(0x3Du);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v20, 61, v21, "AVE_Dump_WriteVQMetrics", a1, a2, a3, a4, v14);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v22, 61, v25);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v21);
    }
  }

  return v14;
}

uint64_t AVE_Dump_FindFile(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 > 0xB)
  {
    return 0;
  }

  else
  {
    return *(a1 + 96 * (a3 > 0) + 8 * a2 + 48);
  }
}

uint64_t AVE_MCTFStats_PrintAll(const void *a1, FILE *a2, int a3)
{
  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v6 = AVE_Log_CheckConsole(0x3Au);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d\n", CurrTime, 58, LevelStr, "AVE_MCTFStats_PrintAll", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %d", CurrTime);
  }

  if (a1)
  {
    if (a2)
    {
      if (!a3)
      {
        fwrite("Frame#, FrameDiff, Fn_SetLrmeDiff, HW_LrmeDiff, Fn_SetLrrcDiff, HW_LrrcDiff, Fn_SetPipeDiff, HW_PipeDiff, Fn_PipeDoneDiff, FrameQIn, Fn_SetLrmeStart, HW_LrmeStart, Fn_SetLRMEDone, Fn_SetLrrcStart, HW_LrrcStart, Fn_SetLRRCDone, Fn_SetPipeStart, HW_PipeStart, Fn_SetPipeDone, HW_LrmeDone, HW_LrrcDone, HW_PipeDone, Fn_PipeDoneStart, Fn_PipeDoneEnd, LrmeStatsDone, LrrcStatsDone, PipeStatsDone, FrameOut\n", 0x191uLL, 1uLL, a2);
      }

      operator new[]();
    }

    v13 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Au, 4))
    {
      v9 = AVE_Log_CheckConsole(0x3Au);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v10, 58, v11, "AVE_MCTFStats_PrintAll", 367, "pMctfStats != __null", 0, a2, a3);
        v12 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 58, v19);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v10, 58, v11);
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v14 = AVE_Log_CheckConsole(0x3Au);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(7);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d\n", v15, 58, v16, "AVE_MCTFStats_PrintAll", a1, a2, a3, v13);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d", v15);
    }
  }

  return v13;
}

uint64_t AVE_FwStats_PrintAll(const void *a1, const void *a2, const void *a3, int a4, int a5)
{
  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v7 = AVE_Log_CheckConsole(0x3Au);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %d %d\n", CurrTime, 58, LevelStr, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %d %d", CurrTime, 58);
  }

  if (a1 && a2)
  {
    if (a3)
    {
      operator new[]();
    }

    v14 = 4294966288;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Au, 4))
    {
      v10 = AVE_Log_CheckConsole(0x3Au);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d\n", v11, 58, v12, "AVE_FwStats_PrintAll", 181, "(psFwStats != __null) && (pEUMap != __null)", a1, a2, a3, a4, a5);
        v13 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v13, 58, v20, "AVE_FwStats_PrintAll");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %d %d", v11, 58, v12, "AVE_FwStats_PrintAll");
      }
    }

    v14 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Au, 7))
  {
    v15 = AVE_Log_CheckConsole(0x3Au);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(7);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d %d %d\n", v16, 58, v17, "AVE_FwStats_PrintAll", a1, a2, a3, a4, a5, v14);
      v18 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v18, 58, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d %d %d", v16, 58, v17);
    }
  }

  return v14;
}

uint64_t AVE_Dump_WriteHwEventTrace(void *a1, int a2, int *a3)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteHwEventTrace", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", CurrTime);
  }

  if (a1)
  {
    v9 = a1[12 * (a2 > 0) + 14];
    if (v9)
    {
      if (a3)
      {
        if (*a3 < 2)
        {
          v13 = 0;
        }

        else
        {
          v10 = a3 + 19;
          v11 = 1;
          do
          {
            v12 = fprintf(v9, "%6d, %d, %d, %d, %8lld, 0x%x, 0x%x, 0x%x, 0x%x\n", v11++, *(v10 - 8), *(v10 - 9), *(v10 - 7), *(v10 - 5), *(v10 - 3), *(v10 - 2), *(v10 - 1), *v10);
            v10 += 10;
          }

          while (v11 < *a3);
          if (v12 <= 0)
          {
            v13 = 4294965296;
          }

          else
          {
            v13 = 0;
          }
        }
      }

      else
      {
        v13 = 4294966287;
      }
    }

    else
    {
      v13 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v14 = AVE_Log_CheckConsole(0x3Du);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v15, 61, v16, "AVE_Dump_WriteHwEventTrace", 763, "pDump != __null", 0, a2, a3);
        v17 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v17, 61, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v15, 61, v16);
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v18 = AVE_Log_CheckConsole(0x3Du);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(8);
    if (v18)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteHwEventTrace", a1, a2, a3, v13);
      v21 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v21, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v19, 61);
    }
  }

  return v13;
}

uint64_t AVE_Dump_WriteMBStats(void *a1, int a2, const void *a3, int a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteMBStats", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 9];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (AVE_Log_CheckLevel(0x3Du, 8))
        {
          v14 = AVE_Log_CheckConsole(0x3Du);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteMBStats", 735, a1, a2, a3, a4, v13);
            v17 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v18 = AVE_Log_CheckConsole(0x3Du);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteMBStats", 717, "pDump != __null", 0, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteMBStats");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteMBStats");
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v22 = AVE_Log_CheckConsole(0x3Du);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteMBStats", a1, a2, a3, a4, v12);
      v25 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t AVE_Dump_WriteOutput(void *a1, int a2, const void *a3, int a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteOutput", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 7];
    if (v11)
    {
      v12 = 4294966287;
      if (a3 && a4 >= 1)
      {
        v13 = fwrite(a3, 1uLL, a4, v11);
        v12 = v13 == a4 ? 0 : 4294965296;
        if (AVE_Log_CheckLevel(0x3Du, 8))
        {
          v14 = AVE_Log_CheckConsole(0x3Du);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(8);
          if (v14)
          {
            printf("%lld %d AVE %s: %s:%d %p %d %p %d %d\n", v15, 61, v16, "AVE_Dump_WriteOutput", 596, a1, a2, a3, a4, v13);
            v17 = AVE_GetCurrTime();
            v27 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v17, 61, v27);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %p %d %p %d %d", v15, 61, v16);
          }
        }
      }
    }

    else
    {
      v12 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v18 = AVE_Log_CheckConsole(0x3Du);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d\n", v19, 61, v20, "AVE_Dump_WriteOutput", 578, "pDump != __null", 0, a2, a3, a4);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v21, 61, v28, "AVE_Dump_WriteOutput");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p %d", v19, 61, v20, "AVE_Dump_WriteOutput");
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v22 = AVE_Log_CheckConsole(0x3Du);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(8);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %d\n", v23, 61, v24, "AVE_Dump_WriteOutput", a1, a2, a3, a4, v12);
      v25 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v25, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %d", v23, 61);
    }
  }

  return v12;
}

uint64_t AVE_DPB_MakeSnapshot(int *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE10], a1[340], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE20], a1[341], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE18], a1[342], a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE28], a1[343], a2);
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v5 = Mutable;
      if (a1[343] < 0)
      {
        SnapshotEntry = 0;
LABEL_19:
        CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE30], v5);
        CFRelease(v5);
        return SnapshotEntry;
      }

      v6 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (v6)
      {
        v7 = v6;
        v8 = 0;
        v9 = MEMORY[0x29EDB9010];
        v10 = MEMORY[0x29EDB9020];
        v11 = a1;
        while (1)
        {
          SnapshotEntry = AVE_DPB_MakeSnapshotEntry(v11, v7);
          CFArrayAppendValue(v5, v7);
          CFRelease(v7);
          if (v8 >= a1[343])
          {
            goto LABEL_19;
          }

          ++v8;
          v7 = CFDictionaryCreateMutable(0, 0, v9, v10);
          v11 += 20;
          if (!v7)
          {
            goto LABEL_21;
          }
        }
      }

      LODWORD(v8) = 0;
      LODWORD(SnapshotEntry) = 0;
      v11 = a1;
LABEL_21:
      if (AVE_Log_CheckLevel(0xE2u, 4))
      {
        v21 = AVE_Log_CheckConsole(0xE2u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d\n", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshot", 339, "pTmpDict != __null", a1, a2, v11, v8, SnapshotEntry);
          v24 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", v24, 226, v28, "AVE_DPB_MakeSnapshot");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDictionary %p %p %p %d %d", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshot");
        }
      }

      CFRelease(v5);
    }

    else if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v17 = AVE_Log_CheckConsole(0xE2u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d\n", v18, 226, v19, "AVE_DPB_MakeSnapshot", 329, "pTmpArray != __null", a1, a2, 0);
        v20 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v20, 226, v27);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %p %d", v18, 226, v19);
      }
    }

    return 4294966293;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v13 = AVE_Log_CheckConsole(0xE2u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v14, 226, v15, "AVE_DPB_MakeSnapshot", 316, "pDict != __null && pSnapshot != __null", a2, a1, 0);
      v16 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v16, 226, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v14, 226, v15);
    }
  }

  return 4294966295;
}

uint64_t AVE_CFDict_AddSInt64(const __CFString *a1, uint64_t a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
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
        v13 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p\n", CurrTime, 20, LevelStr, "AVE_CFDict_AddSInt64", 614, "pNum != __null", a1, valuePtr, a3);
          v16 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p", v16, 20, v18);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %lld %p", CurrTime, 20, LevelStr);
        }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p\n", v10, 20, v11, "AVE_CFDict_AddSInt64", 610, "pKey != __null && pDict != __null", a1, a2, a3);
        v12 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p", v12, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %p", v10, 20, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_SEI::DeleteFrame(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v7 = *this;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "DeleteFrame", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v8 = *this;
    }

    else
    {
      v17 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", CurrTime, 211);
  }

  v9 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindFrame(this, a2);
  if (Frame)
  {
    v9 = AVE_SEI::RemoveFrame(this, Frame);
  }

  AVE_Mutex_Unlock(*(this + 4));
  if (v9)
  {
    v11 = 4;
  }

  else
  {
    v11 = 7;
  }

  if (AVE_Log_CheckLevel(0xD3u, v11))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(v11);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v13, 211, v14, "AVE_SEI", "DeleteFrame", this, *this, a2, v9);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(v11);
      v15 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v13, 211, v14);
  }

  return v9;
}

uint64_t AVE_SEI::RemoveFrame(AVE_BlkPool **a1, uint64_t *a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v7 = *a1;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "RemoveFrame", a1, *a1, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v8 = *a1;
    }

    else
    {
      v17 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p", CurrTime, 211);
  }

  AVE_DLList_Erase(a2);
  v9 = a2[27];
  if (v9)
  {
    CFRelease(v9);
  }

  a2[30] = 0;
  *(a2 + 13) = 0u;
  *(a2 + 14) = 0u;
  *(a2 + 11) = 0u;
  *(a2 + 12) = 0u;
  *(a2 + 9) = 0u;
  *(a2 + 10) = 0u;
  *(a2 + 7) = 0u;
  *(a2 + 8) = 0u;
  *(a2 + 5) = 0u;
  *(a2 + 6) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v10 = AVE_BlkPool::Free(a1[5], a2);
  if (v10)
  {
    v11 = 4;
  }

  else
  {
    v11 = 7;
  }

  if (AVE_Log_CheckLevel(0xD3u, v11))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(v11);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d\n", v13, 211, v14, "AVE_SEI", "RemoveFrame", a1, *a1, a2, v10);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(v11);
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d", v13, 211, v14);
  }

  return v10;
}

uint64_t AVE_DAL::Free(AVE_DAL *this, uint64_t *a2)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v4 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    v7 = *this;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Free", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      v8 = *this;
    }

    else
    {
      v33 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p", CurrTime, 36);
  }

  if (a2)
  {
    AVE_Mutex_Lock(*(this + 1));
    v9 = *(this + 4);
    if (v9)
    {
      v10 = AVE_BlkPool::Free(v9, a2);
      if (v10)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v11 = AVE_Log_CheckConsole(0x24u);
          v12 = AVE_GetCurrTime();
          v13 = AVE_Log_GetLevelStr(4);
          if (v11)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d\n", v12, 36, v13, "AVE_DAL", "Free", 398, "ret == 0", this, *this, a2, v10);
            v12 = AVE_GetCurrTime();
            v13 = AVE_Log_GetLevelStr(4);
            v14 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to free memory to UC info pool %p %lld %p %d", v12, 36, v13, "AVE_DAL", "Free");
        }

        AVE_Mutex_Unlock(*(this + 1));
        v15 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v15 = 8;
      }
    }

    else
    {
      v15 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v22 = AVE_Log_CheckConsole(0x24u);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v25 = *this;
        if (v22)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p\n", v23, 36, v24, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
          v26 = AVE_GetCurrTime();
          v15 = 4;
          v27 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v26, 36, v27, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p", v23, 36, v24, "AVE_DAL", "Free", 393, "m_pcUCInfoPool != __null", this, *this, a2);
          v15 = 4;
        }
      }

      v10 = 4294966285;
    }
  }

  else
  {
    v15 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v16 = AVE_Log_CheckConsole(0x24u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      v19 = *this;
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p\n", v17, 36, v18, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
        v20 = AVE_GetCurrTime();
        v15 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v20, 36, v21, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p", v17, 36, v18, "AVE_DAL", "Free", 387, "addr != 0", this, *this, 0);
        v15 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v15))
  {
    v28 = AVE_Log_CheckConsole(0x24u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(v15);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %d\n", v29, 36, v30, "AVE_DAL", "Free", this, *this, a2, v10);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(v15);
      v31 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %d", v29, 36, v30);
  }

  return v10;
}

uint64_t AVE_CFArray_AddSInt64(uint64_t a1, __CFArray *a2)
{
  valuePtr = a1;
  if (a2)
  {
    v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
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
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lld %p\n", CurrTime, 20, LevelStr, "AVE_CFArray_AddSInt64", 110, "pNum != __null", valuePtr, a2);
          CurrTime = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %lld %p", CurrTime, 20);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %lld %p\n", v8, 20, v9, "AVE_CFArray_AddSInt64", 106, "pArray != __null", a1, 0);
        v8 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %lld %p", v8, 20);
    }

    return 4294966295;
  }
}

uint64_t AVE_CFDict_AddSInt32(const __CFString *a1, int a2, __CFDictionary *a3)
{
  valuePtr = a2;
  if (a1 && a3)
  {
    v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
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
        v13 = AVE_Log_CheckConsole(0x14u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p\n", CurrTime, 20, LevelStr, "AVE_CFDict_AddSInt32", 584, "pNum != __null", a1, valuePtr, a3);
          v16 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p", v16, 20, v18);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFNumber %p %d %p", CurrTime, 20, LevelStr);
        }
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", v10, 20, v11, "AVE_CFDict_AddSInt32", 580, "pKey != __null && pDict != __null", a1, a2, a3);
        v12 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v12, 20, v17);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v10, 20, v11);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_DPB_MakeSnapshotEntry(uint64_t a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE80], *a1, a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE50], *(a1 + 4), a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE58], *(a1 + 8), a2);
    AVE_CFDict_AddSInt64(*MEMORY[0x29EDBCE70], *(a1 + 16), a2);
    AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE68], *(a1 + 24), a2);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v5 = Mutable;
      v6 = *MEMORY[0x29EDBCE48];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE48], *(a1 + 48), Mutable);
      v7 = *MEMORY[0x29EDBCE38];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE38], *(a1 + 56), v5);
      v8 = *MEMORY[0x29EDBCE40];
      AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCE40], *(a1 + 64), v5);
      CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE60], v5);
      CFRelease(v5);
      v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (v9)
      {
        v10 = v9;
        AVE_CFDict_AddSInt32(v6, *(a1 + 52), v9);
        AVE_CFDict_AddSInt32(v7, *(a1 + 60), v10);
        AVE_CFDict_AddSInt32(v8, *(a1 + 68), v10);
        CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE78], v10);
        CFRelease(v10);
        v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v11)
        {
          v12 = v11;
          MetaData = AVE_DRC_MakeMetaData((a1 + 72), v11);
          if (MetaData)
          {
            if (AVE_Log_CheckLevel(0xE2u, 4))
            {
              v14 = AVE_Log_CheckConsole(0xE2u);
              CurrTime = AVE_GetCurrTime();
              LevelStr = AVE_Log_GetLevelStr(4);
              if (v14)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_MakeSnapshotEntry", 227, "ret == 0", a1, a2, MetaData);
                v17 = AVE_GetCurrTime();
                v29 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", v17, 226, v29);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to make DRC metadata %p %p %d", CurrTime, 226, LevelStr);
              }
            }
          }

          else
          {
            CFDictionaryAddValue(a2, *MEMORY[0x29EDBCE88], v12);
          }

          CFRelease(v12);
          return MetaData;
        }

        if (AVE_Log_CheckLevel(0xE2u, 4))
        {
          v26 = AVE_Log_CheckConsole(0xE2u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          if (v26)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 223, "pTmpDict != __null", a1, a2, 0);
            goto LABEL_24;
          }

LABEL_30:
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v23, 226, v24);
        }

        return 4294966293;
      }

      if (!AVE_Log_CheckLevel(0xE2u, 4))
      {
        return 4294966293;
      }

      v25 = AVE_Log_CheckConsole(0xE2u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v25)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 206, "pTmpDict != __null", a1, a2, 0);
    }

    else
    {
      if (!AVE_Log_CheckLevel(0xE2u, 4))
      {
        return 4294966293;
      }

      v22 = AVE_Log_CheckConsole(0xE2u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v22)
      {
        goto LABEL_30;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d\n", v23, 226, v24, "AVE_DPB_MakeSnapshotEntry", 189, "pTmpDict != __null", a1, a2, 0);
    }

LABEL_24:
    v27 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFDict %p %p %d", v27, 226, v31);
    return 4294966293;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v18 = AVE_Log_CheckConsole(0xE2u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v19, 226, v20, "AVE_DPB_MakeSnapshotEntry", 170, "pEntry != __null && pDict != __null", a1, a2, 0);
      v21 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v21, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v19, 226, v20);
    }
  }

  return 4294966295;
}

uint64_t AVE_DRC_MakeMetaData(unsigned __int8 *a1, CFMutableDictionaryRef theDict)
{
  if (a1 && theDict)
  {
    v4 = AVE_CFDict_AddBool(*MEMORY[0x29EDBCE90], *a1, theDict);
    v5 = AVE_CFDict_AddBool(*MEMORY[0x29EDBCEB0], a1[1], theDict) + v4;
    v6 = AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCEA0], a1[2], theDict);
    v7 = v5 + v6 + AVE_CFDict_AddBool(*MEMORY[0x29EDBCE98], a1[3], theDict);
    return v7 + AVE_CFDict_AddSInt32(*MEMORY[0x29EDBCEA8], *(a1 + 1), theDict);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v9 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DRC_MakeMetaData", 60, "pMetaData != __null && pDict != __null", a1, theDict, 0);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t AVE_CFDict_AddBool(const __CFString *key, int a2, CFMutableDictionaryRef theDict)
{
  if (key && theDict)
  {
    v6 = MEMORY[0x29EDB8F00];
    if (!a2)
    {
      v6 = MEMORY[0x29EDB8EF8];
    }

    CFDictionaryAddValue(theDict, key, *v6);
    return 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x14u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x14u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p\n", CurrTime, 20, LevelStr, "AVE_CFDict_AddBool", 378, "pKey != __null && pDict != __null", key, a2, theDict);
        v11 = AVE_GetCurrTime();
        v12 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", v11, 20, v12);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %p", CurrTime, 20, LevelStr);
      }
    }

    return 4294966295;
  }
}

uint64_t *AVE_DLList_Erase(uint64_t *result)
{
  if (!result)
  {
    AVE_DLList_Erase_cold_3();
  }

  v1 = *result;
  if (!*result)
  {
    AVE_DLList_Erase_cold_2();
  }

  v2 = result[1];
  if (!v2)
  {
    AVE_DLList_Erase_cold_1();
  }

  *(v1 + 8) = v2;
  v3 = result[2];
  *result[1] = v1;
  *result = result;
  result[1] = result;
  if (v3)
  {
    --*(v3 + 24);
    result[2] = 0;
  }

  return result;
}

uint64_t AVE_BlkPool::Free(AVE_BlkPool *this, uint64_t *a2)
{
  v32 = 0;
  if (*this)
  {
    AVE_Mutex_Lock(*(this + 3));
  }

  v4 = AVE_BlkPool::SearchFreeBuf(this, a2, &v32);
  if (v4)
  {
    v5 = v4;
    if (!AVE_Log_CheckLevel(0x38u, 4))
    {
      goto LABEL_20;
    }

    v6 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "Free", 447, "ret == 0", this, a2, &v32, v5);
      v9 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d", v9, 56, v23, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v31 = v5;
    v29 = a2;
    v30 = &v32;
    v28 = this;
    v27 = 447;
    v25 = LevelStr;
    v15 = "%lld %d AVE %s: %s::%s:%d %s | failed to find block buffer %p %p %p %d";
LABEL_19:
    syslog(3, v15, CurrTime, 56, v25, "AVE_BlkPool", "Free", v27, "ret == 0", v28, v29, v30, v31);
    goto LABEL_20;
  }

  v10 = v32;
  v11 = AVE_BlkBuf_Free(v32, a2);
  if (v11)
  {
    v5 = v11;
    if (!AVE_Log_CheckLevel(0x38u, 4))
    {
      goto LABEL_20;
    }

    v12 = AVE_Log_CheckConsole(0x38u);
    CurrTime = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d\n", CurrTime, 56, v13, "AVE_BlkPool", "Free", 451, "ret == 0", this, &v32, a2, v5);
      v14 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d", v14, 56, v24, "AVE_BlkPool", "Free");
      goto LABEL_20;
    }

    v30 = a2;
    v31 = v5;
    v28 = this;
    v29 = &v32;
    v27 = 451;
    v25 = v13;
    v15 = "%lld %d AVE %s: %s::%s:%d %s | failed to free block buffer %p %p %p %d";
    goto LABEL_19;
  }

  v16 = AVE_DLList_RBegin(this + 32);
  if (*(this + 16))
  {
    v17 = v16;
    while (v17 != AVE_DLList_REnd(this + 32))
    {
      v10 = v17;
      v17 = AVE_DLList_Prev(v17);
      if (AVE_BlkBuf_Empty(v10))
      {
        v32 = v10;
        AVE_DLList_Erase(v10);
        v5 = AVE_BlkBuf_Destroy(v10);
        if (v5 && AVE_Log_CheckLevel(0x38u, 5))
        {
          v19 = AVE_Log_CheckConsole(0x38u);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(5);
          if (v19)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d\n", v20, 56, v21, "AVE_BlkPool", "Free", 468, this, v10, v5);
            v22 = AVE_GetCurrTime();
            v26 = AVE_Log_GetLevelStr(5);
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v22, 56, v26);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d failed to destroy block buffer %p %p %d", v20, 56, v21);
          }
        }

        --*(this + 16);
        goto LABEL_20;
      }

      if (!*(this + 16))
      {
        break;
      }
    }
  }

  v5 = 0;
  v32 = v10;
LABEL_20:
  if (*this)
  {
    AVE_Mutex_Unlock(*(this + 3));
  }

  return v5;
}

uint64_t AVE_BlkPool::SearchFreeBuf(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  *a3 = 0;
  for (i = AVE_DLList_Begin(a1 + 32); ; i = AVE_DLList_Next(v7))
  {
    v7 = i;
    if (i == AVE_DLList_End(a1 + 32))
    {
      return 4294966295;
    }

    if (AVE_BlkBuf_CheckAddr(v7, a2))
    {
      break;
    }
  }

  result = 0;
  *a3 = v7;
  return result;
}

BOOL AVE_BlkBuf_CheckAddr(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2 <= a2 && v2 + *(a1 + 72) > a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t AVE_BlkBuf_Free(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return 4294966295;
  }

  v3 = *(a1 + 64);
  if (a2 < v3 || v3 + *(a1 + 72) <= a2)
  {
    return 4294966295;
  }

  v4 = (*(a1 + 88) + 24 * ((a2 - v3) / *(a1 + 80)));
  AVE_DLList_Erase(v4);
  AVE_DLList_PushBack(a1 + 96, v4);
  result = 0;
  ++*(a1 + 164);
  return result;
}

uint64_t AVE_DLList_RBegin(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_RBegin_cold_1();
  }

  return *a1;
}

uint64_t AVE_TimeStats_AddEndTime(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v6 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", CurrTime, 60, LevelStr, "AVE_TimeStats_AddEndTime", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", CurrTime);
  }

  if (!a1 || a2 > 8 || a3 < 0)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v11 = AVE_Log_CheckConsole(0x3Cu);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld\n", v12, 60, v13, "AVE_TimeStats_AddEndTime", 282, "pTS != __null && 0 <= pos && pos < AVE_TimeStats_Pos_Max && ts >= 0", a1, a2, a3);
        v14 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v14, 60, v24);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v12, 60, v13);
      }
    }

    v10 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(*(a1 + 176));
    v9 = *(a1 + 16);
    if (v9)
    {
      if (a2 == 5)
      {
        *(v9 + 16 * (*(a1 + 24) % *(a1 + 8)) + 8) = a3;
      }

      v10 = 0;
      *(a1 + 16 * a2 + 40) = a3;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Cu, 4))
      {
        v15 = AVE_Log_CheckConsole(0x3Cu);
        v16 = AVE_GetCurrTime();
        v17 = AVE_Log_GetLevelStr(4);
        if (v15)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld\n", v16, 60, v17, "AVE_TimeStats_AddEndTime", 287, "pTS->psTP != __null", a1, a2, a3);
          v18 = AVE_GetCurrTime();
          v25 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v18, 60, v25);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v16, 60, v17);
        }
      }

      v10 = 4294966285;
    }

    AVE_Mutex_Unlock(*(a1 + 176));
  }

  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v19 = AVE_Log_CheckConsole(0x3Cu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d\n", v20, 60, v21, "AVE_TimeStats_AddEndTime", a1, a2, a3, v10);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v22, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v20, 60);
    }
  }

  return v10;
}

uint64_t AVE_BlkBuf_Alloc(uint64_t a1, void *a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1 && a2)
  {
    *a2 = 0;
    v7 = AVE_DLList_Front((a1 + 96));
    if (v7)
    {
      v8 = v7;
      AVE_DLList_PopFront(a1 + 96);
      AVE_DLList_PushBack(a1 + 128, v8);
      v9 = *(a1 + 80);
      *a2 = *(a1 + 64) + (-1431655765 * ((v8 - *(a1 + 88)) >> 3) * v9);
      if (a3)
      {
        *a3 = v9;
      }

      result = 0;
      --*(a1 + 164);
    }

    else
    {
      return 4294966289;
    }
  }

  return result;
}

BOOL AVE_DLList_PopFront(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_PopFront_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_PopFront_cold_2();
  }

  if (!*(a1 + 8))
  {
    AVE_DLList_PopFront_cold_1();
  }

  result = AVE_DLList_Empty(a1);
  if (!result)
  {
    v3 = *(a1 + 8);
    v4 = v3[1];
    *(a1 + 8) = v4;
    *v4 = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 24);
  }

  return result;
}

uint64_t AVE_UC_Process(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Process", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 7u, a2, 0x30uLL, a3, &outputStructCnt);
    v13 = AVE_IOReturn2RetCode(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v17 = AVE_Log_CheckConsole(0x23u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v12, v13);
          v20 = AVE_GetCurrTime();
          v16 = 4;
          v21 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Process", 471, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v31 = AVE_Log_CheckConsole(0x23u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
          v34 = AVE_GetCurrTime();
          v16 = 4;
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Process", 475, "outSize >= sizeof(S_AVE_UCOutParam_Process)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 8;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x23u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = AVE_GetCurrTime();
        v16 = 4;
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Process", 458, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v16))
  {
    v27 = AVE_Log_CheckConsole(0x23u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Process", a1, a2, a3, v13);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t AVE_USL_Drv_Process(void *a1, uint64_t a2)
{
  v146[0] = -1;
  pixelBufferOut = 0;
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame\n", CurrTime, 40, LevelStr);
      v7 = AVE_GetCurrTime();
      v129 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", v7, 40, v129);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", CurrTime, 40, LevelStr);
    }
  }

  if (!a1)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v14 = AVE_Log_CheckConsole(3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.\n", v15, 3, v16, "AVE_USL_Drv_Process", 1268, "pDriverInstance");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.");
    }

    goto LABEL_58;
  }

  if (!a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v17 = AVE_Log_CheckConsole(3u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.\n", v18, 3, v19, "AVE_USL_Drv_Process", 1269, "pSettings");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.");
    }

    goto LABEL_58;
  }

  if ((a1[5] & 1) == 0)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v20 = AVE_Log_CheckConsole(3u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.\n", v21, 3, v22, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
        v23 = AVE_GetCurrTime();
        v131 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.", v23, 3, v131, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.", v21, 3, v22, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
      }
    }

    v27 = 4294966285;
    goto LABEL_59;
  }

  if (!*(a2 + 8))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v24 = AVE_Log_CheckConsole(3u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBuffer == NULL\n", v25, 3, v26, "AVE_USL_Drv_Process", 1271, "pSettings->CVImageBuffer");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBuffer == NULL");
    }

    goto LABEL_58;
  }

  v8 = *(a1 + 2);
  if (v8 != 5 && v8 != 3)
  {
    goto LABEL_36;
  }

  if (!*(a2 + 24))
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v28 = AVE_Log_CheckConsole(3u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL\n", v29, 3, v30, "AVE_USL_Drv_Process", 1276, "pSettings->CVImageBufferOutput");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL");
    }

LABEL_58:
    v27 = 4294966295;
    goto LABEL_59;
  }

  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v9 = AVE_Log_CheckConsole(0x28u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(7);
    v12 = *(a2 + 24);
    if (v9)
    {
      printf("%lld %d AVE %s: pSettings->CVImageBufferOutput = %p\n", v10, 40, v11, v12);
      v13 = AVE_GetCurrTime();
      v130 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v13, 40, v130, *(a2 + 24));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v10, 40, v11, v12);
    }
  }

LABEL_36:
  v144[0] = 0;
  AVE_DAL::Alloc(a1[3], 72736, v144);
  AVE_DAL::Addr2Idx(a1[3], v144[0], v146);
  v31 = v144[0];
  if (v144[0])
  {
    v32 = a1 + 13260;
    bzero((v144[0] + 8), 0x11C18uLL);
    *v31 = v146[0];
    *(v31 + 4) = 7;
    *(v31 + 40) = *(a1 + 11);
    *(v31 + 44) = *(a2 + 188);
    *(v31 + 16) = a1[13261] != 0;
    *(v31 + 20) = *(a1 + 26524);
    *(v31 + 2552) = *a2;
    *(v31 + 2600) = *(a2 + 56);
    IOSurface = CVPixelBufferGetIOSurface(*(a2 + 8));
    *(v31 + 2508) = IOSurfaceGetID(IOSurface);
    v34 = CVPixelBufferGetIOSurface(*(a2 + 16));
    *(v31 + 2512) = IOSurfaceGetID(v34);
    v35 = *(*(a2 + 144) + 19000);
    if (v35)
    {
      v36 = CVPixelBufferGetIOSurface(v35);
      *(v31 + 2516) = IOSurfaceGetID(v36);
    }

    v37 = *(a1 + 2);
    if (v37 > 3)
    {
      if (v37 == 4)
      {
        *(v31 + 2552) = *a2;
        *(v31 + 2560) = *(a2 + 8);
        if (AVE_Log_CheckLevel(0x28u, 7))
        {
          v48 = AVE_Log_CheckConsole(0x28u);
          v49 = AVE_GetCurrTime();
          v50 = AVE_Log_GetLevelStr(7);
          if (v48)
          {
            printf("%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d\n", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
            v49 = AVE_GetCurrTime();
            v50 = AVE_Log_GetLevelStr(7);
          }

          syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
        }

        v56 = *(a2 + 32);
        *(v31 + 2576) = v56;
        if (v56)
        {
          v57 = CVPixelBufferGetIOSurface(v56);
          *(v31 + 2536) = IOSurfaceGetID(v57);
          if (AVE_Log_CheckLevel(0x28u, 7))
          {
            v58 = AVE_Log_CheckConsole(0x28u);
            v59 = AVE_GetCurrTime();
            v60 = AVE_Log_GetLevelStr(7);
            if (v58)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMStats = %d\n", v59, 40, v60, "AVE_USL_Drv_Process", *(v31 + 2536));
              v59 = AVE_GetCurrTime();
              v60 = AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iGGMStats = %d", v59, 40, v60, "AVE_USL_Drv_Process", *(v31 + 2536));
          }
        }

        v61 = 0;
        v62 = v31 + 2528;
        v63 = 1;
        do
        {
          v64 = v63;
          v65 = *(a2 + 40 + 8 * v61);
          *(v31 + 2584 + 8 * v61) = v65;
          if (v65)
          {
            v66 = CVPixelBufferGetIOSurface(v65);
            *(v62 + 4 * v61) = IOSurfaceGetID(v66);
            if (AVE_Log_CheckLevel(0x28u, 7))
            {
              v67 = AVE_Log_CheckConsole(0x28u);
              v68 = AVE_GetCurrTime();
              v69 = AVE_Log_GetLevelStr(7);
              v70 = *(v62 + 4 * v61);
              if (v67)
              {
                printf("%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d\n", v68, 40, v69, "AVE_USL_Drv_Process", v61, v70);
                v71 = AVE_GetCurrTime();
                v72 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d", v71, 40, v72, "AVE_USL_Drv_Process", v61, *(v62 + 4 * v61));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d", v68, 40, v69, "AVE_USL_Drv_Process", v61, v70);
              }
            }
          }

          v63 = 0;
          v61 = 1;
        }

        while ((v64 & 1) != 0);
        v73 = *(a2 + 24);
        v32 = a1 + 13260;
        *(v31 + 2568) = v73;
        if (v73)
        {
          v74 = CVPixelBufferGetIOSurface(v73);
          *(v31 + 2540) = IOSurfaceGetID(v74);
          if (AVE_Log_CheckLevel(0x28u, 7))
          {
            v75 = AVE_Log_CheckConsole(0x28u);
            v76 = AVE_GetCurrTime();
            v77 = AVE_Log_GetLevelStr(7);
            if (v75)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMOutput = %d\n", v76, 40, v77, "AVE_USL_Drv_Process", *(v31 + 2540));
              v76 = AVE_GetCurrTime();
              v77 = AVE_Log_GetLevelStr(7);
            }

            syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iGGMOutput = %d", v76, 40, v77, "AVE_USL_Drv_Process", *(v31 + 2540));
          }
        }
      }

      else if (v37 == 5)
      {
        *(v31 + 2552) = *a2;
        v46 = *(a2 + 24);
        *(v31 + 2568) = v46;
        v47 = CVPixelBufferGetIOSurface(v46);
        *(v31 + 2544) = IOSurfaceGetID(v47);
      }
    }

    else if (v37 == 2)
    {
      *(v31 + 2552) = *a2;
    }

    else if (v37 == 3)
    {
      *(v31 + 2560) = *(a2 + 8);
      v38 = *(a2 + 24);
      *(v31 + 2568) = v38;
      *(v31 + 2584) = *(a2 + 40);
      v39 = CVPixelBufferGetIOSurface(v38);
      *(v31 + 2520) = IOSurfaceGetID(v39);
      v40 = *(a2 + 40);
      if (v40)
      {
        v41 = CVPixelBufferGetIOSurface(v40);
        *(v31 + 2524) = IOSurfaceGetID(v41);
      }
    }

    v78 = *(a2 + 72);
    *(v31 + 4576) = *(a2 + 88);
    *(v31 + 4560) = v78;
    v79 = *(a2 + 112);
    *(v31 + 4584) = *(a2 + 96);
    *(v31 + 4600) = v79;
    *(v31 + 4608) = *(a2 + 120);
    *(v31 + 33048) = *(a2 + 160);
    v80 = *(a2 + 136);
    v81 = *(v80 + 16);
    *(v31 + 4632) = *v80;
    *(v31 + 4648) = v81;
    v82 = *(v80 + 32);
    v83 = *(v80 + 48);
    v84 = *(v80 + 64);
    *(v31 + 4712) = *(v80 + 80);
    *(v31 + 4680) = v83;
    *(v31 + 4696) = v84;
    *(v31 + 4664) = v82;
    memcpy((v31 + 4720), *(a2 + 144), 0x4A40uLL);
    memcpy((v31 + 23728), *(a2 + 152), 0x1738uLL);
    if (*(a1 + 13256) == 1)
    {
      v86 = *(a2 + 64);
      if (v86)
      {
        if (*(a1 + 3351))
        {
          if (!v32[4])
          {
            if (AVE_Log_CheckLevel(0x28u, 4))
            {
              v111 = AVE_Log_CheckConsole(0x28u);
              v112 = AVE_GetCurrTime();
              v113 = AVE_Log_GetLevelStr(4);
              if (v111)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get VCP %p\n", v112, 40, v113, "AVE_USL_Drv_Process", 1413, "pDriverInstance->pcVCP != __null", a1);
                v112 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VCP %p", v112);
            }

            v27 = 4294966281;
            goto LABEL_142;
          }

          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
          if (!Mutable)
          {
            if (AVE_Log_CheckLevel(0x28u, 4))
            {
              v117 = AVE_Log_CheckConsole(0x28u);
              v118 = AVE_GetCurrTime();
              v119 = AVE_Log_GetLevelStr(4);
              if (v117)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray\n", v118, 40, v119, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
                v120 = AVE_GetCurrTime();
                v135 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray", v120, 40, v135, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray", v118, 40, v119, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
              }
            }

            v27 = 4294966293;
            goto LABEL_142;
          }

          v88 = Mutable;
          AVE_Ref_MakeArray((v31 + 4788), *(v31 + 4776), Mutable);
          AVE_VCP::ScaleRefFrames(v32[4], *(a2 + 64), v88);
          CFRelease(v88);
          v86 = *(a2 + 64);
        }

        AVE_DPB_RetrieveSnapshot(v86, (v31 + 3184));
      }
    }

    AVE_USL_CalcDataSurfaceInfo(a1, v85, v31, (a1 + 6));
    v89 = v32[6];
    if (v89)
    {
      v90 = CVPixelBufferPoolCreatePixelBuffer(0, v89, &pixelBufferOut);
      if (v90)
      {
        v27 = v90;
        if (!AVE_Log_CheckLevel(0x28u, 4))
        {
          goto LABEL_142;
        }

        v91 = AVE_Log_CheckConsole(0x28u);
        v92 = AVE_GetCurrTime();
        v93 = AVE_Log_GetLevelStr(4);
        v94 = v32[6];
        if (v91)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to create CVPixelBuf %p %d\n", v92, 40, v93, "AVE_USL_Drv_Process", 1440, "ret == 0", v32[6], v27);
          v92 = AVE_GetCurrTime();
          v93 = AVE_Log_GetLevelStr(4);
        }

        v139 = v32[6];
        v141 = v27;
        v137 = 1440;
        v133 = v93;
        v95 = "%lld %d AVE %s: %s:%d %s | failed to create CVPixelBuf %p %d";
        goto LABEL_112;
      }

      v97 = CVPixelBufferGetIOSurface(pixelBufferOut);
      if (!v97)
      {
        if (AVE_Log_CheckLevel(0x28u, 4))
        {
          v108 = AVE_Log_CheckConsole(0x28u);
          v109 = AVE_GetCurrTime();
          v110 = AVE_Log_GetLevelStr(4);
          if (v108)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create IOSurface %p %d\n", v109, 40, v110, "AVE_USL_Drv_Process", 1444, "pIOSurface != __null", pixelBufferOut, 0);
            v109 = AVE_GetCurrTime();
            v110 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create IOSurface %p %d", v109, 40, v110, "AVE_USL_Drv_Process", 1444, "pIOSurface != __null", pixelBufferOut, 0);
        }

        goto LABEL_141;
      }

      ID = IOSurfaceGetID(v97);
    }

    else
    {
      ID = 0;
    }

    DataUSurfaces = AVE_CreateDataUSurfaces(a1 + 12, *a1, (a1 + 16), a1 + 17, ID);
    if (DataUSurfaces)
    {
      v27 = DataUSurfaces;
      if (!AVE_Log_CheckLevel(0x28u, 4))
      {
        goto LABEL_142;
      }

      v99 = AVE_Log_CheckConsole(0x28u);
      v100 = AVE_GetCurrTime();
      v101 = AVE_Log_GetLevelStr(4);
      v102 = *a1;
      if (v99)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v100, 40, v101, "AVE_USL_Drv_Process", 1454, "ret == 0", *a1, *(v31 + 40));
        v100 = AVE_GetCurrTime();
        v101 = AVE_Log_GetLevelStr(4);
      }

      v140 = *a1;
      v142 = *(v31 + 40);
      v138 = 1454;
      v134 = v101;
      v103 = "%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d";
LABEL_129:
      syslog(3, v103, v100, 40, v134, "AVE_USL_Drv_Process", v138, "ret == 0", v140, v142);
      goto LABEL_142;
    }

    *(v31 + 2608) = pixelBufferOut;
    v104 = PrepareMBInputCtrl(a1, v31);
    if (v104)
    {
      v27 = v104;
      if (!AVE_Log_CheckLevel(0x28u, 4))
      {
        goto LABEL_142;
      }

      v105 = AVE_Log_CheckConsole(0x28u);
      v100 = AVE_GetCurrTime();
      v106 = AVE_Log_GetLevelStr(4);
      v107 = *a1;
      if (v105)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d\n", v100, 40, v106, "AVE_USL_Drv_Process", 1462, "ret == 0", *a1, *(v31 + 40));
        v100 = AVE_GetCurrTime();
        v106 = AVE_Log_GetLevelStr(4);
      }

      v140 = *a1;
      v142 = *(v31 + 40);
      v138 = 1462;
      v134 = v106;
      v103 = "%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d";
      goto LABEL_129;
    }

    PrepareMultiPassStats(a1, v31);
    AVE_RetrieveDataUSurfaces(a1 + 17, (v31 + 2500));
    memset(v144, 0, 40);
    LODWORD(v144[0]) = v146[0];
    *&v144[1] = *(v31 + 4560);
    v144[3] = *(v31 + 4576);
    if (Connection::writePacketBlock(*v32, v144))
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v114 = AVE_Log_CheckConsole(3u);
        v115 = AVE_GetCurrTime();
        v116 = AVE_Log_GetLevelStr(4);
        if (v114)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v115, 3, v116, "AVE_USL_Drv_Process", 1482, "res == 0");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
      }

LABEL_141:
      v27 = 4294966296;
      goto LABEL_142;
    }

    *&v144[3] = 0u;
    *&v144[1] = 0u;
    memset(v143, 0, sizeof(v143));
    v144[0] = *a1;
    v144[5] = v146[0];
    v144[2] = *(v31 + 40);
    v144[3] = 58000000;
    v144[4] = AVE_GetCurrTime();
    *(v31 + 33072) = AVE_GetCurrTime();
    v121 = AVE_DAL::UCProcess(a1[3], v144, v143);
    if (v121)
    {
      v27 = v121;
      Connection::dropLastPacketBlock(*v32);
      if (AVE_Log_CheckLevel(0x28u, 4))
      {
        v122 = AVE_Log_CheckConsole(0x28u);
        v92 = AVE_GetCurrTime();
        v123 = AVE_Log_GetLevelStr(4);
        if (v122)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v92, 40, v123, "AVE_USL_Drv_Process", 1503, "ret == 0", v27);
          v92 = AVE_GetCurrTime();
          v139 = v27;
          v137 = 1503;
          v133 = AVE_Log_GetLevelStr(4);
        }

        else
        {
          v139 = v27;
          v137 = 1503;
          v133 = v123;
        }

        v95 = "%lld %d AVE %s: %s:%d %s | fail to process %d";
LABEL_112:
        syslog(3, v95, v92, 40, v133, "AVE_USL_Drv_Process", v137, "ret == 0", v139, v141);
      }

LABEL_142:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      goto LABEL_59;
    }

    pixelBufferOut = 0;
    v124 = *(a1 + 11) + 1;
    *(a1 + 11) = v124;
    if (v124 != *(a1 + 2999) || *(a1 + 3048) == 2 || (*(a1 + 138) & 0x3C0) != 0)
    {
      v27 = 0;
    }

    else if ((*(a1 + 2) - 2) >= 4)
    {
      v144[0] = AVE_GetCurrTime();
      v27 = AVE_USL_Drv_Complete(a1, v144);
      if (v27 && AVE_Log_CheckLevel(3u, 4))
      {
        v125 = AVE_Log_CheckConsole(3u);
        v126 = AVE_GetCurrTime();
        v127 = AVE_Log_GetLevelStr(4);
        if (v125)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.\n", v126, 3, v127, "AVE_USL_Drv_Process", 1535, "ret == 0");
          v128 = AVE_GetCurrTime();
          v136 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.", v128, 3, v136, "AVE_USL_Drv_Process", 1535, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.", v126, 3, v127, "AVE_USL_Drv_Process", 1535, "ret == 0");
        }
      }
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v42 = AVE_Log_CheckConsole(3u);
      v43 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.\n", v43, 3, v44, "AVE_USL_Drv_Process", 1293, "Frame");
        v45 = AVE_GetCurrTime();
        v132 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.", v45, 3, v132, "AVE_USL_Drv_Process", 1293, "Frame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.", v43, 3, v44, "AVE_USL_Drv_Process", 1293, "Frame");
      }
    }

    v27 = 4294966293;
  }

LABEL_59:
  AVE_DestroyDataUSurfaces((a1 + 17));
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v51 = AVE_Log_CheckConsole(0x28u);
    v52 = AVE_GetCurrTime();
    v53 = AVE_Log_GetLevelStr(7);
    v54 = (*(a1 + 11) - 1);
    if (v51)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d\n", v52, 40, v53, *(a1 + 11) - 1, v27);
      v52 = AVE_GetCurrTime();
      v53 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d", v52, 40, v53, *(a1 + 11) - 1, v27);
  }

  return v27;
}

uint64_t AVE_DAL::Alloc(AVE_DAL *this, int a2, unint64_t *a3)
{
  v37 = a2;
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Alloc", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", CurrTime, 36, LevelStr);
  }

  if (a2 >= 1 && a3 && *(this + 5) >= a2)
  {
    *a3 = 0;
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Alloc(v10, a3, &v37);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d\n", v13, 36, v14, "AVE_DAL", "Alloc", 357, "ret == 0", this, *this, a3, v37, v11);
            v13 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            v15 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate memory from UC info pool %p %lld %p %d %d", v13, 36, v14, "AVE_DAL", "Alloc");
        }

        AVE_Mutex_Unlock(*(this + 1));
        v16 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v30 = AVE_Log_CheckConsole(0x24u);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
        v33 = *this;
        if (v30)
        {
          v34 = a2;
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, v33, a2, a3);
          v35 = AVE_GetCurrTime();
          v16 = 4;
          v36 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v35, 36, v36, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, *this, v34, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v31, 36, v32, "AVE_DAL", "Alloc", 352, "m_pcUCInfoPool != __null", this, v33, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *this;
      v21 = *(this + 5);
      if (v17)
      {
        v22 = a2;
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p\n", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, v20, v21, a2, a3);
        v23 = AVE_GetCurrTime();
        v16 = 4;
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v23, 36, v24, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, *this, *(this + 5), v22, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %d %p", v18, 36, v19, "AVE_DAL", "Alloc", 345, "0 < size && size <= m_iSize && pAddr != __null", this, v20, v21, a2, a3);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v16))
  {
    v25 = AVE_Log_CheckConsole(0x24u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(v16);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v26, 36, v27, "AVE_DAL", "Alloc", this, *this, v37, a3, v11);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(v16);
      v28 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v26, 36, v27, "AVE_DAL");
  }

  return v11;
}

uint64_t AVE_USL_CalcDataSurfaceInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 40) == 0;
  v6 = *(a3 + 23712) != 0;
  *(a4 + 56) = AVE_CalcBufNumOfMultiPassStats(*(a1 + 8), 2 * (*(a1 + 106096) != 0), *(a1 + 106096));
  *(a4 + 60) = AVE_CalcBufSizeOfMultiPassStats(v5, v6);
  return 0;
}

uint64_t AVE_PIP_GetInfo(CFDictionaryRef theDict, _DWORD *a2)
{
  if (theDict && a2)
  {
    a2[8] = 0;
    *a2 = 0u;
    *(a2 + 1) = 0u;
    Value = CFDictionaryGetValue(theDict, @"PictureInPictureRegion");
    if (Value)
    {
      Entry = AVE_PIP_RetrieveEntry(Value, a2 + 1);
      if (Entry)
      {
        if (AVE_Log_CheckLevel(0x32u, 4))
        {
          v6 = AVE_Log_CheckConsole(0x32u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v6)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d\n", CurrTime, 50, LevelStr, "AVE_PIP_GetInfo", 229, "ret == 0", theDict, a2, Entry);
            v9 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", v9, 50, v14);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrive entry %p %p %d", CurrTime, 50, LevelStr);
          }
        }
      }

      else
      {
        *a2 = 1;
      }
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x32u, 4))
    {
      v10 = AVE_Log_CheckConsole(0x32u);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v11, 50, v12, "AVE_PIP_GetInfo", 217, "pProperty != __null && pInfo != __null", theDict, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v11, 50);
    }

    return 4294966295;
  }

  return Entry;
}

uint64_t AVE_SEI::CreateFrame(AVE_BlkPool **a1, uint64_t a2, unint64_t *a3)
{
  v36 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
  }

  v10 = AVE_BlkPool::Alloc(a1[5], &v36, 0);
  if (v10)
  {
    if (v10 == -1007)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v17 = AVE_Log_CheckConsole(0xD3u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?\n", v18, 211, v19, "AVE_SEI", "CreateFrame", 1351, a1, *a1);
          v18 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          v20 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu No more SEI frame data blocks available. Possible memory leak?", v18, 211);
      }

      AVE_SEI::PrintAllPFData(a1, 5, v11, v12, v13, v14, v15, v16);
    }

    else if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v26 = AVE_Log_CheckConsole(0xD3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d\n", v27, 211, v28, "AVE_SEI", "CreateFrame", 1360, "ret == 0", a1, *a1, a2, v10);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v29 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu error while creating frame data for frameNum %lld %d", v27, 211, v28, "AVE_SEI", "CreateFrame");
    }
  }

  else
  {
    v21 = v36;
    *v36 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0u;
    *(v21 + 64) = 0u;
    *(v21 + 80) = 0u;
    *(v21 + 96) = 0u;
    *(v21 + 112) = 0u;
    *(v21 + 128) = 0u;
    *(v21 + 144) = 0u;
    *(v21 + 160) = 0u;
    *(v21 + 176) = 0u;
    *(v21 + 192) = 0u;
    *(v21 + 208) = 0u;
    *(v21 + 224) = 0u;
    *(v21 + 240) = 0;
    AVE_DLList_PushBack((a1 + 6), v21);
    *(v21 + 24) = a2;
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v22 = AVE_Log_CheckConsole(0xD3u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p\n", v23, 211, v24, "AVE_SEI", "CreateFrame", 1369, a1, *a1, a2, v21);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(7);
        v25 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu Created frame #%lld at %p", v23, 211, v24, "AVE_SEI");
    }

    if (a3)
    {
      *a3 = v21;
    }
  }

  if (v10)
  {
    v30 = 4;
  }

  else
  {
    v30 = 7;
  }

  if (AVE_Log_CheckLevel(0xD3u, v30))
  {
    v31 = AVE_Log_CheckConsole(0xD3u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(v30);
    if (v31)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v32, 211, v33, "AVE_SEI", "CreateFrame", a1, *a1, a2, a3, v10);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(v30);
      v34 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v32, 211, v33, "AVE_SEI");
  }

  return v10;
}

uint64_t AVE_PixelFmt_GetSupportedList(int a1, int a2, int a3, int a4, uint64_t a5, _DWORD *a6)
{
  result = 4294966295;
  if (!a5 || !a6)
  {
LABEL_5:
    if (!a6)
    {
      return result;
    }

    goto LABEL_6;
  }

  PixelFmt = AVE_DevCap_FindPixelFmt(a1, a2, a4);
  if (PixelFmt)
  {
    result = AVE_DevCap_PixelFmt_FindList(PixelFmt, a3, a5, a6);
    goto LABEL_5;
  }

  result = 4294966288;
  if (!a6)
  {
    return result;
  }

LABEL_6:
  if (result)
  {
    *a6 = 0;
  }

  return result;
}

uint64_t AVE_DevCap_FindPixelFmt(int a1, int a2, int a3)
{
  if (a1 > 34)
  {
    return 0;
  }

  v3 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      if (a3 == 1)
      {
        v4 = 4;
      }

      else
      {
        if (a3 != 2)
        {
          return 0;
        }

        v4 = 5;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return v3;
      }

      v4 = 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v4 = 2;
        break;
      case 4:
        v4 = 1;
        break;
      case 5:
        v4 = 0;
        break;
      default:
        return v3;
    }
  }

  v3 = gsc_saAVE_DevCap[9 * a1 + 3 + v4];
  if (v3)
  {
    return *(v3 + 32);
  }

  return v3;
}

uint64_t AVE_DevCap_PixelFmt_FindList(_DWORD *a1, int a2, uint64_t a3, _DWORD *a4)
{
  LODWORD(v4) = *a1;
  if (*a1 >= *a4)
  {
    v4 = *a4;
  }

  else
  {
    v4 = v4;
  }

  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = a1 + 2;
    v7 = a1 + 2;
    do
    {
      v8 = *v7;
      v7 += 2;
      if ((a2 & ~v8) == 0)
      {
        *(a3 + 4 * v5++) = *(v6 - 1);
      }

      v6 = v7;
      --v4;
    }

    while (v4);
  }

  *a4 = v5;
  return 0;
}

uint64_t AVE_ImgBuf_VerifyUncompressed(__CVBuffer *a1, uint64_t a2, uint64_t a3, _DWORD *a4, char a5)
{
  extraColumnsOnLeft = 0;
  extraRowsOnTop = 0;
  extraColumnsOnRight = 0;
  extraRowsOnBottom = 0;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v11 = BaseAddressOfPlane;
  if (!BaseAddressOfPlane || (BaseAddressOfPlane & 0x3F) != 0)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v13 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx\n", CurrTime, 3, LevelStr, "AVE_ImgBuf_VerifyUncompressed", 81, "baseAddr != 0 && (baseAddr & 0x3F) == 0", v11);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer base address 0x%lx", CurrTime);
    }

    goto LABEL_39;
  }

  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  if (a5)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
    v12 = (extraColumnsOnLeft + WidthOfPlane + extraColumnsOnRight);
    v18 = (extraRowsOnTop + HeightOfPlane + extraRowsOnBottom);
    if (v12 < a2 || v18 < a3)
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_39;
      }

      v35 = AVE_Log_CheckConsole(3u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 93, "width >= videoWidth && height >= videoHeight", v12, v18, a2, a3);
        v36 = AVE_GetCurrTime();
        v61 = a2;
        v62 = a3;
        v59 = v12;
        v60 = v18;
        v57 = 93;
        v58 = "width >= videoWidth && height >= videoHeight";
        v56 = AVE_Log_GetLevelStr(4);
LABEL_51:
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v36, 3, v56, "AVE_ImgBuf_VerifyUncompressed", v57, v58, v59, v60, v61, v62);
        goto LABEL_39;
      }

      v61 = a2;
      v62 = a3;
      v59 = v12;
      v60 = v18;
      v50 = "width >= videoWidth && height >= videoHeight";
      v51 = 93;
      goto LABEL_50;
    }
  }

  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v20 = BytesPerRowOfPlane;
  if (a4[6] == 1)
  {
    v21 = (2 * ((2863311531u * (v12 + 2)) >> 32)) & 0xFFFFFFFC;
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v21 = v12 << (a4[1] != 8);
    if (!BytesPerRowOfPlane)
    {
      goto LABEL_23;
    }
  }

  if ((BytesPerRowOfPlane & 0x3F) != 0 || v21 > BytesPerRowOfPlane)
  {
LABEL_23:
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v32 = AVE_Log_CheckConsole(3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v33, 3, v34, "AVE_ImgBuf_VerifyUncompressed", 101, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v20, v21);
        v33 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v33);
    }

    goto LABEL_39;
  }

  if (!a4[3])
  {
    if ((a5 & 1) != 0 || (v38 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v39 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), !(v38 | v39)))
    {
      v40 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
      if (v40)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v41 = AVE_Log_CheckConsole(3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride %x\n", v42, 3, v43, "AVE_ImgBuf_VerifyUncompressed", 120, "stride == 0", v40);
            v42 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride %x", v42);
        }

        goto LABEL_39;
      }

      goto LABEL_45;
    }

    if (!AVE_Log_CheckLevel(3u, 4))
    {
      goto LABEL_39;
    }

    v54 = AVE_Log_CheckConsole(3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v54)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 114, "width == 0 && height == 0", v38, v39, a2, a3);
      v55 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v55, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v38;
    v60 = v39;
    v50 = "width == 0 && height == 0";
    v51 = 114;
LABEL_50:
    v57 = v51;
    v58 = v50;
    v56 = v37;
    goto LABEL_51;
  }

  if ((a5 & 1) != 0 || (v22 = CVPixelBufferGetWidthOfPlane(a1, 1uLL), v23 = CVPixelBufferGetHeightOfPlane(a1, 1uLL), v24 = a4[4] >> 1, v25 = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), v26 = a4[5] >> 1, v27 = (extraRowsOnBottom >> v26) + v23 + (extraRowsOnTop >> v26), a2 >> v24 <= v25) && (LODWORD(v12) = (extraColumnsOnRight >> v24) + v22 + (extraColumnsOnLeft >> v24), a3 >> v26 <= v27))
  {
    v28 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
    v29 = v28;
    v30 = (2 * v12) >> (a4[4] >> 1);
    if (a4[6] == 1)
    {
      v31 = (2 * ((2863311531u * (v30 + 2)) >> 32)) & 0xFFFFFFFC;
    }

    else
    {
      v31 = v30 << (a4[1] != 8);
    }

    if (!v28 || (v28 & 0x3F) != 0 || v31 > v28)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v46 = AVE_Log_CheckConsole(3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x\n", v47, 3, v48, "AVE_ImgBuf_VerifyUncompressed", 144, "stride != 0 && (stride & 0x3F) == 0 && stride >= neededStride", v29, v31);
          v49 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v49);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer stride 0x%x 0x%x", v47);
        }
      }

      goto LABEL_39;
    }

LABEL_45:
    v44 = 0;
    goto LABEL_40;
  }

  if (AVE_Log_CheckLevel(3u, 4))
  {
    v52 = AVE_Log_CheckConsole(3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v52)
    {
      printf("%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d\n", v36, 3, v37, "AVE_ImgBuf_VerifyUncompressed", 134, "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))", v25, v27, a2, a3);
      v53 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid buffer dimension %d %d %d %d", v53, 3);
      goto LABEL_39;
    }

    v61 = a2;
    v62 = a3;
    v59 = v25;
    v60 = v27;
    v50 = "(width >= (videoWidth >> ((pFmt->iSubWidthC) >> 1))) && (height >= (videoHeight >> ((pFmt->iSubHeightC) >> 1)))";
    v51 = 134;
    goto LABEL_50;
  }

LABEL_39:
  v44 = 4294954394;
LABEL_40:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v44;
}

uint64_t AVE_SEI::SetDriverVersion(AVE_SEI *this, uint64_t a2)
{
  v34 = 0;
  v33 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v7 = *this;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %llu\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetDriverVersion", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v8 = *this;
    }

    else
    {
      v31 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu", CurrTime, 211);
  }

  v9 = sscanf("905.5.3", "%d.%d.%d", &v34 + 4, &v34, &v33);
  if (v9 == 3)
  {
    AVE_Mutex_Lock(*(this + 4));
    Frame = AVE_SEI::FindOrCreateFrame(this, a2);
    if (Frame)
    {
      Frame[4] |= 0x10000000000uLL;
      v11 = v34;
      *(Frame + 12) = HIDWORD(v34);
      *(Frame + 13) = v11;
      *(Frame + 14) = v33;
      AVE_Mutex_Unlock(*(this + 4));
      v12 = 0;
      v13 = 7;
      goto LABEL_21;
    }

    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v21 = AVE_Log_CheckConsole(0xD3u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      v24 = *this;
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v22, 211, v23, "AVE_SEI", "SetDriverVersion", 1113, "pPFData != __null", this, *this, a2);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        v25 = *this;
      }

      else
      {
        v32 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v22, 211, v23, "AVE_SEI");
    }

    AVE_Mutex_Unlock(*(this + 4));
    goto LABEL_19;
  }

  v14 = v9;
  v13 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v15 = AVE_Log_CheckConsole(0xD3u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(4);
    v18 = *this;
    if (!v15)
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d", v16, 211, v17, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", this, v18, "905.5.3", v14, HIDWORD(v34), v34, v33);
LABEL_19:
      v13 = 4;
      goto LABEL_20;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d\n", v16, 211, v17, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", this, v18, "905.5.3", v14, HIDWORD(v34), v34, v33);
    v19 = AVE_GetCurrTime();
    v13 = 4;
    v20 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to parse version string %s. Parsed %d tokens %d %d %d", v19, 211, v20, "AVE_SEI", "SetDriverVersion", 1107, "parseCount == 3", this, *this, "905.5.3", v14, HIDWORD(v34), v34, v33);
  }

LABEL_20:
  v12 = 4294966296;
LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v13))
  {
    v26 = AVE_Log_CheckConsole(0xD3u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(v13);
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %llu %d\n", v27, 211, v28, "AVE_SEI", "SetDriverVersion", this, *this, a2, v12);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(v13);
      v29 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %d", v27, 211, v28);
  }

  return v12;
}

uint64_t AVE_PixelFmt_Check(const unsigned int *a1, int a2, int a3)
{
  if (a2 < 1)
  {
    return 4294966295;
  }

  v3 = a2;
  while (1)
  {
    v4 = *a1++;
    if (v4 == a3)
    {
      break;
    }

    if (!--v3)
    {
      return 4294966295;
    }
  }

  return 0;
}

uint64_t AVE_EdgeReplication_Fill(__CVBuffer *a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  if ((a2 & 0x50000) == 0x10000 && *(a3 + 8) >= 1)
  {
    v6 = 0;
    v7 = HIWORD(a2);
    do
    {
      AVE_EdgeReplication_FillPlaneBottom(a1, v6++, v7 & 8, a3);
    }

    while (v6 < *(a3 + 8));
  }

  if ((v4 & 0x500) == 0x100 && *(a3 + 8) >= 1)
  {
    v8 = 0;
    do
    {
      AVE_EdgeReplication_FillPlaneRight(a1, v8++);
    }

    while (v8 < *(a3 + 8));
  }

  return 0;
}

uint64_t AVE_BlkPool::Alloc(AVE_BlkPool *this, unint64_t *a2, int *a3)
{
  v21 = 0;
  if (a2)
  {
    *a2 = 0;
    if (*this)
    {
      AVE_Mutex_Lock(*(this + 3));
    }

    v6 = AVE_BlkPool::SearchAllocBuf(this, &v21);
    if (v6)
    {
      v7 = v6;
      if (*(this + 16) >= *(this + 4))
      {
        goto LABEL_17;
      }

      v8 = AVE_BlkBuf_Create(*(this + 1), *(this + 2), *(this + 3), &v21);
      if (v8)
      {
        v7 = v8;
        if (AVE_Log_CheckLevel(0x38u, 6))
        {
          v9 = AVE_Log_CheckConsole(0x38u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(6);
          if (v9)
          {
            printf("%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d\n", CurrTime, 56, LevelStr, "AVE_BlkPool", "Alloc", 377, this, *(this + 1), *(this + 2), *(this + 3), &v21, v7);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(6);
            v12 = *(this + 1);
            v19 = *(this + 2);
            v20 = *(this + 3);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d failed to create block buffer %p %d %d %d %p %d", CurrTime, 56, LevelStr, "AVE_BlkPool", "Alloc");
        }

        goto LABEL_17;
      }

      AVE_DLList_PushBack(this + 32, v21);
      ++*(this + 16);
    }

    v7 = AVE_BlkBuf_Alloc(v21, a2, a3);
LABEL_17:
    if (*this)
    {
      AVE_Mutex_Unlock(*(this + 3));
    }

    return v7;
  }

  if (AVE_Log_CheckLevel(0x38u, 4))
  {
    v13 = AVE_Log_CheckConsole(0x38u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p\n", v14, 56, v15, "AVE_BlkPool", "Alloc", 353, "pAddr != __null", this, a3);
      v16 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v16, 56, v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %p", v14, 56, v15);
    }
  }

  return 4294966295;
}

uint64_t AVE_BlkPool::SearchAllocBuf(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  for (i = AVE_DLList_Begin(a1 + 32); ; i = AVE_DLList_Next(v5))
  {
    v5 = i;
    if (i == AVE_DLList_End(a1 + 32))
    {
      return 4294966289;
    }

    if (AVE_BlkBuf_Avail(v5))
    {
      break;
    }
  }

  result = 0;
  *a2 = v5;
  return result;
}

uint64_t AVE_CreateDataUSurfaces(_DWORD *a1, uint64_t a2, uint64_t a3, AVE_USurface **a4, int a5)
{
  v43 = *MEMORY[0x29EDCA608];
  v41 = 0u;
  v42 = 0u;
  *v39 = 0u;
  v40 = 0u;
  if (!a1 || !a4)
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p\n", CurrTime, 76, LevelStr, "AVE_CreateDataUSurfaces", 352, "pSInfoSet != __null && pSet != __null", a1, a2, a4);
        v25 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", v25, 76, v38);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %lld %p", CurrTime, 76, LevelStr);
      }
    }

    v26 = 4294966295;
    goto LABEL_24;
  }

  SurfaceCfg = AVE_GetSurfaceCfg(4);
  v11 = a1[14];
  v10 = a1[15];
  v12 = SurfaceCfg[1];
  AVE_SNPrintf(v39, 64, "%s-%lld", v13, v14, v15, v16, v17, *SurfaceCfg);
  if (v11 >= 1)
  {
    v19 = a4 + 1;
    v18 = a4[1];
    if (v18)
    {
      Size = AVE_USurface::GetSize(v18);
      v21 = *v19;
      if (Size >= v10)
      {
        if (v21)
        {
          goto LABEL_17;
        }
      }

      else
      {
        AVE_DestroyUSurface(v21);
        *v19 = 0;
      }
    }

    USurface = AVE_CreateUSurface(a2, v39, v10, v12, a4 + 1);
    if (USurface)
    {
      v26 = USurface;
      if (!AVE_Log_CheckLevel(0x4Cu, 4))
      {
LABEL_24:
        AVE_DestroyDataUSurfaces(a4);
        goto LABEL_25;
      }

      v28 = AVE_Log_CheckConsole(0x4Cu);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v29, 76, v30, "AVE_CreateDataUSurfaces", 372, "ret == 0", v39, v26);
        v31 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v31, 76);
        goto LABEL_24;
      }

LABEL_23:
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v29, 76);
      goto LABEL_24;
    }
  }

LABEL_17:
  if (a5)
  {
    v32 = AVE_GetSurfaceCfg(5);
    v26 = AVE_CreateUSurface(a2, v39, a5, v32[1], a4);
    if (v26)
    {
      if (!AVE_Log_CheckLevel(0x4Cu, 4))
      {
        goto LABEL_24;
      }

      v33 = AVE_Log_CheckConsole(0x4Cu);
      v29 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v33)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to create surface %s %d\n", v29, 76, v34, "AVE_CreateDataUSurfaces", 386, "ret == 0", v39, v26);
        v35 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create surface %s %d", v35, 76);
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v26 = 0;
    *a4 = 0;
  }

LABEL_25:
  v36 = *MEMORY[0x29EDCA608];
  return v26;
}

char **AVE_GetSurfaceCfg(int a1)
{
  if (a1 >= 41)
  {
    return 0;
  }

  else
  {
    return &(&gs_saAVE_SurfaceCfg)[2 * a1];
  }
}

BOOL AVE_BlkBuf_Avail(_BOOL8 result)
{
  if (result)
  {
    return !AVE_DLList_Empty((result + 96));
  }

  return result;
}

uint64_t AVE_SEI::SetSessionID(AVE_SEI *this, uint64_t a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetSessionID", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %llu %llu", CurrTime, 211, LevelStr);
  }

  AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    v11 = 0;
    Frame[4] |= 0x8000000000uLL;
    Frame[5] = a3;
    v12 = 7;
    goto LABEL_13;
  }

  v12 = 4;
  if (!AVE_Log_CheckLevel(0xD3u, 4))
  {
    goto LABEL_11;
  }

  v13 = AVE_Log_CheckConsole(0xD3u);
  v14 = AVE_GetCurrTime();
  v15 = AVE_Log_GetLevelStr(4);
  v16 = *this;
  if (v13)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", this, *this, a2);
    v17 = AVE_GetCurrTime();
    v12 = 4;
    v18 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v17, 211, v18, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", this, *this, a2);
LABEL_11:
    v11 = 4294966296;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI", "SetSessionID", 1070, "pPFData != __null", this, *this, a2);
  v11 = 4294966296;
  v12 = 4;
LABEL_13:
  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v19 = AVE_Log_CheckConsole(0xD3u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(v12);
    if (v19)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d\n", v20, 211, v21, "AVE_SEI", "SetSessionID", this, *this, a2, a3, v11);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(v12);
      v22 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %llu %llu %d", v20, 211, v21, "AVE_SEI");
  }

  return v11;
}

uint64_t AVE_SEI::SetExposureTime(AVE_SEI *this, uint64_t a2, double a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetExposureTime", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f", CurrTime, 211);
  }

  if (a3 <= 0.0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | exposure time %f invalid, ignoring\n", v14, 211, v15, "AVE_SEI", "SetExposureTime", 657, "fExposureTime > 0", a3);
        v14 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | exposure time %f invalid, ignoring", v14);
    }

LABEL_19:
    v10 = 0;
    v12 = 7;
    goto LABEL_22;
  }

  v10 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x100000000uLL;
    Frame[8] = a3;
    AVE_Mutex_Unlock(*(this + 4));
    if (v10)
    {
      v12 = 4;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v16 = AVE_Log_CheckConsole(0xD3u);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(4);
    v19 = *this;
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v17, 211, v18, "AVE_SEI", "SetExposureTime", 664, "pPFData != __null", this, *this, a2);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      v20 = *this;
    }

    else
    {
      v26 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v17, 211, v18, "AVE_SEI");
  }

  AVE_Mutex_Unlock(*(this + 4));
  v12 = 4;
  v10 = 4294966296;
LABEL_22:
  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(v12);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d\n", v22, 211, v23, "AVE_SEI", "SetExposureTime", this, *this, a2, a3, v10);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(v12);
      v24 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v22, 211, v23);
  }

  return v10;
}

uint64_t AVE_SEI::SetSNR(AVE_SEI *this, uint64_t a2, double a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %f\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetSNR", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %f", CurrTime, 211);
  }

  if (a3 <= 0.0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | SNR value %f invalid, ignoring\n", v14, 211, v15, "AVE_SEI", "SetSNR", 695, "fSNR > 0", a3);
        v14 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | SNR value %f invalid, ignoring", v14);
    }

LABEL_19:
    v10 = 0;
    v12 = 7;
    goto LABEL_22;
  }

  v10 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x200000000uLL;
    Frame[9] = a3;
    AVE_Mutex_Unlock(*(this + 4));
    if (v10)
    {
      v12 = 4;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v16 = AVE_Log_CheckConsole(0xD3u);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(4);
    v19 = *this;
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v17, 211, v18, "AVE_SEI", "SetSNR", 702, "pPFData != __null", this, *this, a2);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(4);
      v20 = *this;
    }

    else
    {
      v26 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v17, 211, v18, "AVE_SEI");
  }

  AVE_Mutex_Unlock(*(this + 4));
  v12 = 4;
  v10 = 4294966296;
LABEL_22:
  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(v12);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d\n", v22, 211, v23, "AVE_SEI", "SetSNR", this, *this, a2, a3, v10);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(v12);
      v24 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %f %d", v22, 211, v23);
  }

  return v10;
}

uint64_t AVE_SEI::SetLuxLevel(AVE_SEI *this, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetLuxLevel", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
  }

  if (a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring\n", v14, 211, v15, "AVE_SEI", "SetLuxLevel", 569, "luxLevel > 0", a3);
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring", v16, 211);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Lux value %d invalid, ignoring", v14, 211);
      }
    }

LABEL_18:
    v10 = 0;
    v12 = 7;
    goto LABEL_21;
  }

  v10 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    Frame[4] |= 0x80uLL;
    *(Frame + 15) = a3;
    AVE_Mutex_Unlock(*(this + 4));
    if (v10)
    {
      v12 = 4;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v17 = AVE_Log_CheckConsole(0xD3u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    v20 = *this;
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v18, 211, v19, "AVE_SEI", "SetLuxLevel", 577, "pPFData != __null", this, *this, a2);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v21 = *this;
    }

    else
    {
      v27 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v18, 211, v19, "AVE_SEI");
  }

  AVE_Mutex_Unlock(*(this + 4));
  v12 = 4;
  v10 = 4294966296;
LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v22 = AVE_Log_CheckConsole(0xD3u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(v12);
    if (v22)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d\n", v23, 211, v24, "AVE_SEI", "SetLuxLevel", this, *this, a2, v10);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(v12);
      v25 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d", v23, 211, v24);
  }

  return v10;
}

uint64_t AVE_SEI::SetPTS(AVE_SEI *this, uint64_t a2, int a3, uint64_t a4)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v8 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetPTS", this, *this, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v11 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %lld", CurrTime, 211, LevelStr, "AVE_SEI");
  }

  if (a3 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v15 = AVE_Log_CheckConsole(0xD3u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | timescale invalid, skipping\n", v16, 211, v17, "AVE_SEI", "SetPTS", 883, "iTimescale > 0");
        v16 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | timescale invalid, skipping", v16);
    }

LABEL_19:
    v12 = 0;
    v14 = 7;
    goto LABEL_22;
  }

  v12 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    Frame[4] |= 0x2000000000uLL;
    *(Frame + 26) = a3;
    Frame[12] = a4;
    AVE_Mutex_Unlock(*(this + 4));
    if (v12)
    {
      v14 = 4;
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v18 = AVE_Log_CheckConsole(0xD3u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    v21 = *this;
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v19, 211, v20, "AVE_SEI", "SetPTS", 890, "pPFData != __null", this, *this, a2);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v22 = *this;
    }

    else
    {
      v30 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v19, 211, v20, "AVE_SEI");
  }

  AVE_Mutex_Unlock(*(this + 4));
  v14 = 4;
  v12 = 4294966296;
LABEL_22:
  if (AVE_Log_CheckLevel(0xD3u, v14))
  {
    v23 = AVE_Log_CheckConsole(0xD3u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(v14);
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d\n", v24, 211, v25, "AVE_SEI", "SetPTS", this, *this, a2, a3, a4, v12);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(v14);
      v29 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d", v26, 211, v27, "AVE_SEI", "SetPTS");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %lld %d", v24, 211, v25, "AVE_SEI", "SetPTS");
    }
  }

  return v12;
}

uint64_t AVE_Ref_RetrieveArray(CFArrayRef theArray, int *a2, int *a3)
{
  if (theArray && a2 && a3 && *a3 > 0)
  {
    Count = CFArrayGetCount(theArray);
    v7 = *a3;
    if (Count < *a3)
    {
      v7 = Count;
    }

    if (v7 >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = v7;
    }

    if (v7 < 1)
    {
LABEL_17:
      result = 0;
      *a3 = v8;
    }

    else
    {
      v9 = 0;
      if (v8 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v8;
      }

      v11 = a2;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        if (!ValueAtIndex)
        {
          break;
        }

        v13 = ValueAtIndex;
        AVE_CFDict_GetSInt32(ValueAtIndex, @"ReferenceFrameNumDriver", v11);
        AVE_CFDict_GetSInt32(v13, @"ReferenceRVRAIndex", v11 + 1);
        ++v9;
        v11 += 2;
        if (v10 == v9)
        {
          goto LABEL_17;
        }
      }

      if (AVE_Log_CheckLevel(0xE1u, 4))
      {
        v19 = AVE_Log_CheckConsole(0xE1u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p\n", CurrTime, 225, LevelStr, "AVE_Ref_RetrieveArray", 36, "pDict != __null", theArray, a2, a3);
          v22 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", v22, 225, v24);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get data %p %p %p", CurrTime, 225, LevelStr);
        }
      }

      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE1u, 4))
    {
      v15 = AVE_Log_CheckConsole(0xE1u);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v16, 225, v17, "AVE_Ref_RetrieveArray", 25, "pArray != __null && pInfo != __null && pNum != __null && *pNum > 0", theArray, a2, a3);
        v18 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v18, 225, v23);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v16, 225, v17);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_CFDict_GetSInt32(CFDictionaryRef theDict, const __CFString *key, int *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
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
        if (CFNumberGetValue(Value, kCFNumberSInt32Type, a3))
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

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFDict_GetSInt32", 915, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
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
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFDict_GetSInt32", 915, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt32", 901, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
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

void AVE_H264_UpdateSettingsBasedOnSNR(uint64_t a1, uint64_t a2, double a3)
{
  if (!*(a1 + 10892))
  {
    if (AVE_Log_CheckLevel(0x30u, 6))
    {
      v6 = AVE_Log_CheckConsole(0x30u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v9 = *(a1 + 16468);
      if (v6)
      {
        printf("%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f\n", CurrTime, 48, LevelStr, v9, 25.0, a3);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(6);
        syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", v10, 48, v11, *(a1 + 16468), 25.0, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: FIG: F %d lowLightSNRThreashold %f SNR %f", CurrTime, 48, LevelStr, v9, 25.0, a3);
      }
    }

    if (*(a1 + 10804) == 2)
    {
      *(a2 + 20) = a3 <= 25.0;
    }

    if (*(a1 + 10852) == 1)
    {
      *(a2 + 20) = 1;
    }
  }
}

uint64_t AVE_DAL::Addr2Idx(AVE_DAL *this, const void *a2, int *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Addr2Idx", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", CurrTime, 36, LevelStr);
  }

  if (a3)
  {
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Addr2Idx(v10, a2, a3);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488, "ret == 0", this, *this, a2, a3, v11);
            v13 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            v15 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert address in UC info pool %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "Addr2Idx", 488);
        }

        AVE_Mutex_Unlock(*(this + 1));
        v16 = 4;
      }

      else
      {
        AVE_Mutex_Unlock(*(this + 1));
        v16 = 8;
      }
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v23 = AVE_Log_CheckConsole(0x24u);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        v26 = *this;
        if (v23)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p\n", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v27 = AVE_GetCurrTime();
          v16 = 4;
          v28 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v27, 36, v28, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, *this, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %p %p", v24, 36, v25, "AVE_DAL", "Addr2Idx", 483, "m_pcUCInfoPool != __null", this, v26, a2, a3);
          v16 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v17 = AVE_Log_CheckConsole(0x24u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *this;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p\n", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, v20, a2, 0);
        v21 = AVE_GetCurrTime();
        v16 = 4;
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v21, 36, v22, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, *this, a2, 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p %p", v18, 36, v19, "AVE_DAL", "Addr2Idx", 477, "pIdx != __null", this, v20, a2, 0);
        v16 = 4;
      }
    }

    v11 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v16))
  {
    v29 = AVE_Log_CheckConsole(0x24u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v16);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d\n", v30, 36, v31, "AVE_DAL", "Addr2Idx", this, *this, a2, a3, v11);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v16);
      v32 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v30, 36, v31, "AVE_DAL");
  }

  return v11;
}

uint64_t AVE_BlkPool::Addr2Idx(pthread_mutex_t **this, unint64_t a2, int *a3)
{
  if (*this)
  {
    AVE_Mutex_Lock(this[3]);
  }

  if (*(this + 16))
  {
    v6 = 4294966295;
  }

  else
  {
    v7 = AVE_DLList_Front(this + 4);
    v6 = AVE_BlkBuf_Addr2Idx(v7, a2, a3);
  }

  if (*this)
  {
    AVE_Mutex_Unlock(this[3]);
  }

  return v6;
}

uint64_t AVE_BlkBuf_Addr2Idx(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  result = 4294966295;
  if (a1)
  {
    if (a3)
    {
      v5 = *(a1 + 64);
      if (a2 >= v5 && v5 + *(a1 + 72) > a2)
      {
        result = 0;
        *a3 = (a2 - v5) / *(a1 + 80);
      }
    }
  }

  return result;
}

uint64_t AVE_CalcBufSizeOfMultiPassStats(int a1, int a2)
{
  if (a1)
  {
    v2 = 17314;
  }

  else
  {
    v2 = 1574;
  }

  if (a2)
  {
    return v2 + 264;
  }

  else
  {
    return v2;
  }
}

uint64_t AVE_VSNPrintf(char *a1, int a2, const char *a3, va_list a4)
{
  result = vsnprintf(a1, a2, a3, a4);
  if (a1)
  {
    if (result >= a2)
    {
      result = a2 - 1;
      a1[result] = 0;
    }
  }

  return result;
}

uint64_t AVE_USurface::Create(AVE_USurface *this, IOSurfaceID csid, uint64_t a3, const char *a4, uint64_t a5)
{
  v10 = IOSurfaceLookup(csid);
  if (!v10)
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v16 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx\n", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 209, "pSurface != __null", this, *this, csid, a3, a5);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v19 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to get surface %p %lld %d 0x%llx 0x%llx", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 209);
    }

    v15 = 4294966281;
    goto LABEL_10;
  }

  v14 = v10;
  v15 = AVE_USurface::Create(this, v10, a3, a4, a5, v11, v12, v13);
  if (v15)
  {
    CFRelease(v14);
LABEL_10:
    *(this + 11) = 0;
    *(this + 20) = 0;
  }

  return v15;
}

uint64_t AVE_USurface::Lock(AVE_USurface *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (*(this + 97))
    {
      return 0;
    }

    else
    {
      IOSurfaceLock(v2, 0, 0);
      result = 0;
      *(this + 12) |= 0x100uLL;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v4 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v7 = *this;
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s\n", CurrTime, 76, LevelStr, "AVE_USurface", "Lock", 392, "m_pcSurface != __null", this, *this, this + 8);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v8 = *this;
      }

      else
      {
        v9 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", CurrTime, 76, LevelStr, "AVE_USurface");
    }

    return 4294966285;
  }

  return result;
}

uint64_t AVE_DestroyUSurface(AVE_USurface *a1)
{
  if (a1)
  {
    v2 = AVE_USurface::Destroy(a1);
    AVE_USurface::~AVE_USurface(a1);
    MEMORY[0x29C24DA40]();
    return v2;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v4 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", CurrTime, 76, LevelStr, "AVE_DestroyUSurface", 174, "pSurface != __null", 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", CurrTime);
    }

    return 4294966295;
  }
}

uint64_t AVE_USurface::Destroy(AVE_USurface *this)
{
  if (*(this + 9))
  {
    v2 = AVE_USurface::Unlock(this);
    if (v2)
    {
      v3 = v2;
      if (AVE_Log_CheckLevel(0x4Cu, 4))
      {
        v4 = AVE_Log_CheckConsole(0x4Cu);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v7 = *this;
        if (v4)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d\n", CurrTime, 76, LevelStr, "AVE_USurface", "Destroy", 325, "ret == 0", this, *this, v3);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v8 = *this;
        }

        else
        {
          v15 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to do unlock %p %lld %d", CurrTime, 76, LevelStr, "AVE_USurface");
      }
    }

    else
    {
      v13 = *(this + 9);
      if (v13)
      {
        CFRelease(v13);
        *(this + 9) = 0;
      }

      v3 = 0;
      *(this + 8) = 0;
      *(this + 20) = 0;
      *(this + 11) = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v9 = AVE_Log_CheckConsole(0x4Cu);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld\n", v10, 76, v11, "AVE_USurface", "Destroy", 299, "m_pcSurface != __null", this, *this);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(4);
        v12 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld", v10, 76, v11);
    }

    return 4294966285;
  }

  return v3;
}

uint64_t AVE_USurface::Create(AVE_USurface *this, __IOSurface *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = *MEMORY[0x29EDCA608];
  v28 = 0u;
  v29 = 0u;
  *cStr = 0u;
  v27 = 0u;
  if (a2)
  {
    if ((a3 & 8) == 0)
    {
LABEL_5:
      if (a4)
      {
        LOBYTE(v15) = a4;
      }

      else
      {
        v15 = &unk_2954B8F4E;
      }

      AVE_SNPrintf(this + 8, 64, "%s", a4, a5, a6, a7, a8, v15);
      AllocSize = IOSurfaceGetAllocSize(a2);
      result = 0;
      *(this + 20) = AllocSize;
      *(this + 9) = a2;
      *(this + 11) = a5;
      goto LABEL_21;
    }

    AVE_SNPrintf(cStr, 64, "%s%s%s", a4, a5, a6, a7, a8, "AVE2");
    v13 = CFStringCreateWithCString(0, cStr, 0);
    if (v13)
    {
      v14 = v13;
      IOSurfaceSetValue(a2, *MEMORY[0x29EDBB168], v13);
      CFRelease(v14);
      goto LABEL_5;
    }

    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | failed to create CFString %s\n", CurrTime, 76, LevelStr, "AVE_USurface", "Create", 171, "pNameStr != __null", cStr);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create CFString %s", CurrTime, 76);
    }

    result = 4294966293;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v18 = AVE_Log_CheckConsole(0x4Cu);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx\n", v19, 76, v20, "AVE_USurface", "Create", 162, "pSurface != __null", this, *this, 0, a3, a4, a5);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        v21 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %p 0x%llx %p 0x%llx", v19, 76, v20, "AVE_USurface", "Create", 162, "pSurface != __null");
    }

    result = 4294966295;
  }

LABEL_21:
  v25 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AVE_USurface::Unlock(AVE_USurface *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (*(this + 97))
    {
      IOSurfaceUnlock(v2, 0, 0);
      result = 0;
      *(this + 12) &= ~0x100uLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v4 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v7 = *this;
      if (v4)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s\n", CurrTime, 76, LevelStr, "AVE_USurface", "Unlock", 417, "m_pcSurface != __null", this, *this, this + 8);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v8 = *this;
      }

      else
      {
        v9 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | surface is not created %p %lld %s", CurrTime, 76, LevelStr, "AVE_USurface");
    }

    return 4294966285;
  }

  return result;
}

uint64_t AVE_Plugin_AVC_CompleteFrames(const void *a1, void *a2)
{
  CurrTime = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0xBu, 7))
  {
    v5 = AVE_Log_CheckConsole(0xBu);
    v6 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v8 = *(a2 + 2);
    if (v5)
    {
      printf("%lld %d AVE %s: %s Enter %p %lld %d %lld\n", v6, 11, LevelStr, "AVE_Plugin_AVC_CompleteFrames", a1, *a2, *(a2 + 2), 0);
      v6 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v9 = *a2;
    }

    v36 = *(a2 + 2);
    syslog(3, "%lld %d AVE %s: %s Enter %p %lld %d %lld", v6, 11);
  }

  if (a1)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v11 = DerivedStorage;
    if (DerivedStorage)
    {
      AVE_Mutex_Lock(*DerivedStorage);
      v12 = v11[7];
      kdebug_trace();
      v13 = AVE_Session_AVC_Complete(v11);
      if (v13 && AVE_Log_CheckLevel(0xBu, 4))
      {
        v14 = AVE_Log_CheckConsole(0xBu);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %d %lld %p %d\n", v15, 11, v16, "AVE_Plugin_AVC_CompleteFrames", 477, "ret == 0", a1, *a2, *(a2 + 2), v12, v11, v13);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(4);
          v39 = *(a2 + 2);
          v38 = *a2;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete AVC %p %lld %d %lld %p %d", v15, 11, v16, "AVE_Plugin_AVC_CompleteFrames", 477, "ret == 0");
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xBu, 4))
      {
        v21 = AVE_Log_CheckConsole(0xBu);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d\n", v22, 11, v23, "AVE_Plugin_AVC_CompleteFrames", 465, "pPI != __null", a1, 0, 0);
          v24 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v24, 11, v34);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %lld %d", v22, 11, v23);
        }
      }

      v12 = 0;
      v13 = 4294966296;
    }

    kdebug_trace();
    AVE_Mutex_Unlock(*v11);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v17 = AVE_Log_CheckConsole(0xBu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d\n", v18, 11, v19, "AVE_Plugin_AVC_CompleteFrames", 460, "encoder != __null", 0, *a2, *(a2 + 2), 0, 0);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        v20 = *a2;
        v40 = *(a2 + 2);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %lld %d %lld %d", v18, 11, v19, "AVE_Plugin_AVC_CompleteFrames", 460);
    }

    v12 = 0;
    v13 = 4294966295;
  }

  v25 = AVE_GetCurrTime() - CurrTime;
  if (v25 >= 50000)
  {
    v26 = 5;
  }

  else
  {
    v26 = 7;
  }

  v27 = AVE_RetCode2OSStatus(v13);
  if (v13)
  {
    v26 = 4;
  }

  if (AVE_Log_CheckLevel(0xBu, v26))
  {
    v28 = AVE_Log_CheckConsole(0xBu);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(v26);
    if (v28)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d\n", v29, 11, v30, "AVE_Plugin_AVC_CompleteFrames", a1, *a2, *(a2 + 2), v12, v25, v13, v27);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v26);
      v35 = *a2;
      v37 = *(a2 + 2);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v31, 11, v32, "AVE_Plugin_AVC_CompleteFrames");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %lld %lld %d %d", v29, 11, v30, "AVE_Plugin_AVC_CompleteFrames");
    }
  }

  return v27;
}

void PrepareMultiPassStats(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 102400;
  if (!*(a1 + 106096))
  {
    return;
  }

  *(a2 + 24) = 2;
  v5 = *(a1 + 108);
  Addr = AVE_USurface::GetAddr(*(a1 + 144), 0);
  v7 = Addr;
  v8 = *(a2 + 23712);
  if (v8)
  {
    *(a2 + 16) = 1;
LABEL_6:

    memcpy(Addr, v8, v5);
    return;
  }

  v9 = (a2 + 23446);
  H264VideoEncoderFrameReceiver::GetMpGlobalRcInfo(*(v2 + 3664), (a2 + 23446));
  if (*(a1 + 44))
  {
    *(a2 + 4724) = 0;
    memcpy(v7, (a2 + 23446), 0x108uLL);
    Addr = (v7 + 264);
    v8 = (a2 + 6132);
    goto LABEL_6;
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v10 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: ------ Sequence RC Info ------\n", CurrTime, 216, LevelStr);
      v13 = AVE_GetCurrTime();
      v81 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: ------ Sequence RC Info ------", v13, 216, v81);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ------ Sequence RC Info ------", CurrTime, 216, LevelStr);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v14 = AVE_Log_CheckConsole(0xD8u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(6);
    v17 = *v9;
    if (v14)
    {
      printf("%lld %d AVE %s:  total_scenes %u\n", v15, 216, v16, v17);
      v18 = AVE_GetCurrTime();
      v82 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v18, 216, v82, *v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v15, 216, v16, v17);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v19 = AVE_Log_CheckConsole(0xD8u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(6);
    v22 = *(a2 + 23450);
    if (v19)
    {
      printf("%lld %d AVE %s:  cnt_All %u\n", v20, 216, v21, v22);
      v23 = AVE_GetCurrTime();
      v83 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v23, 216, v83, *(a2 + 23450));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v20, 216, v21, v22);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v24 = AVE_Log_CheckConsole(0xD8u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(6);
    v27 = *(a2 + 23454);
    if (v24)
    {
      printf("%lld %d AVE %s:  bits_All %llu\n", v25, 216, v26, v27);
      v28 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v28, 216, v84, *(a2 + 23454));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v25, 216, v26, v27);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v29 = AVE_Log_CheckConsole(0xD8u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(6);
    v32 = *(a2 + 23474);
    if (v29)
    {
      printf("%lld %d AVE %s:  cnt_NORMAL %u\n", v30, 216, v31, v32);
      v33 = AVE_GetCurrTime();
      v85 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v33, 216, v85, *(a2 + 23474));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v30, 216, v31, v32);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v34 = AVE_Log_CheckConsole(0xD8u);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(6);
    v37 = *(a2 + 23478);
    if (v34)
    {
      printf("%lld %d AVE %s:  bits_NORMAL %llu\n", v35, 216, v36, v37);
      v38 = AVE_GetCurrTime();
      v86 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v38, 216, v86, *(a2 + 23478));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v35, 216, v36, v37);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v39 = AVE_Log_CheckConsole(0xD8u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(6);
    v42 = *(a2 + 23486);
    if (v39)
    {
      printf("%lld %d AVE %s:  cnt_MIN %u\n", v40, 216, v41, v42);
      v43 = AVE_GetCurrTime();
      v87 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v43, 216, v87, *(a2 + 23486));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v40, 216, v41, v42);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v44 = AVE_Log_CheckConsole(0xD8u);
    v45 = AVE_GetCurrTime();
    v46 = AVE_Log_GetLevelStr(6);
    v47 = *(a2 + 23490);
    if (v44)
    {
      printf("%lld %d AVE %s:  bits_MIN %llu\n", v45, 216, v46, v47);
      v48 = AVE_GetCurrTime();
      v88 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v48, 216, v88, *(a2 + 23490));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v45, 216, v46, v47);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v49 = AVE_Log_CheckConsole(0xD8u);
    v50 = AVE_GetCurrTime();
    v51 = AVE_Log_GetLevelStr(6);
    v52 = *(a2 + 23498);
    if (v49)
    {
      printf("%lld %d AVE %s:  cnt_MAX %u\n", v50, 216, v51, v52);
      v53 = AVE_GetCurrTime();
      v89 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v53, 216, v89, *(a2 + 23498));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v50, 216, v51, v52);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v54 = AVE_Log_CheckConsole(0xD8u);
    v55 = AVE_GetCurrTime();
    v56 = AVE_Log_GetLevelStr(6);
    v57 = *(a2 + 23502);
    if (v54)
    {
      printf("%lld %d AVE %s:  bits_MAX %llu\n", v55, 216, v56, v57);
      v58 = AVE_GetCurrTime();
      v90 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v58, 216, v90, *(a2 + 23502));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v55, 216, v56, v57);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 6))
  {
    v59 = AVE_Log_CheckConsole(0xD8u);
    v60 = AVE_GetCurrTime();
    v61 = AVE_Log_GetLevelStr(6);
    v62 = *(a2 + 23510);
    if (v59)
    {
      printf("%lld %d AVE %s:  cnt_BLANK %u\n", v60, 216, v61, v62);
      v63 = AVE_GetCurrTime();
      v91 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v63, 216, v91, *(a2 + 23510));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v60, 216, v61, v62);
    }
  }

  H264VideoEncoderFrameReceiver::GetMpGlobalRcInfo(*(v2 + 3664), (a2 + 23446));
  memcpy(v7, (a2 + 23446), 0x108uLL);
  memcpy(v7 + 264, (a2 + 6132), v5);
  for (i = 0; i != 11; ++i)
  {
    if (AVE_Log_CheckLevel(0xD8u, 6))
    {
      v65 = (v7 + 1492);
      v66 = AVE_Log_CheckConsole(0xD8u);
      v67 = AVE_GetCurrTime();
      v68 = AVE_Log_GetLevelStr(6);
      v69 = *(v7 + 371);
      v70 = *(v7 + 1492);
      v71 = *(v7 + 1508);
      v72 = *(v7 + 1516);
      v73 = *(v7 + 1524);
      v74 = *(v7 + 1532);
      v75 = *(v7 + 1540);
      v76 = *(v7 + 387);
      v77 = *(v7 + 388);
      if (v66)
      {
        printf("%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f\n", v67, 216, v68, i, v69, v70, v71, v72, v73, v74, v75, *(v7 + 387), v77);
        v78 = AVE_GetCurrTime();
        v79 = AVE_Log_GetLevelStr(6);
        v80 = *v65;
        syslog(3, "%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f", v78, 216, v79, i, *(v7 + 371), *v65, *(v7 + 1508), *(v7 + 1516), *(v7 + 1524), *(v7 + 1532), *(v7 + 1540), *(v7 + 387), *(v7 + 388));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: frame %u: cnt %d, bits %llu, %llu, %llu, %llu; QScale: %f, %f, %f, %f", v67, 216, v68, i, v69, v70, v71, v72, v73, v74, v75, *(v7 + 387), v77);
      }
    }

    v7 = (v7 + 1574);
  }
}

uint64_t AVE_DPB_RetrieveSnapshot(CFDictionaryRef theDict, char *a2)
{
  v37 = 0;
  if (!theDict || !a2)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_RetrieveSnapshot", 261, "pDict != __null && pSnapshot != __null", theDict, a2, 0);
        v17 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v17, 226, v34);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }

  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE10], &v37);
  *(a2 + 340) = v37;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE20], &v37);
  *(a2 + 341) = v37;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE18], &v37);
  *(a2 + 342) = v37;
  AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE28], &v37);
  v4 = v37;
  *(a2 + 343) = v37;
  if (v4 >= 17)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v18 = AVE_Log_CheckConsole(0xE2u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *(a2 + 343);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d\n", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", *(a2 + 343), 16);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference is out of range %d %d", v19, 226, v20, "AVE_DPB_RetrieveSnapshot", 274, "pSnapshot->num_ref_frame <= ((16) > (16) ? (16) : (16))", *(a2 + 343), 16);
    }

    return 4294966296;
  }

  Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE30]);
  if (!Value)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v22 = AVE_Log_CheckConsole(0xE2u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d\n", v23, 226, v24, "AVE_DPB_RetrieveSnapshot", 278, "pTmpArray != __null", theDict, a2, 0);
        v25 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v25, 226, v35);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get reference buffers %p %p %d", v23, 226, v24);
      }
    }

    return 4294966288;
  }

  v6 = Value;
  Count = CFArrayGetCount(Value);
  v8 = Count;
  if (Count > 17)
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v26 = AVE_Log_CheckConsole(0xE2u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d\n", v27, 226, v28, "AVE_DPB_RetrieveSnapshot", 284, "num <= (((16) > (16) ? (16) : (16)) + 1)", v8, 17);
        v27 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | number of reference buffer is out of range %d %d", v27);
    }

    return 4294966296;
  }

  if (Count < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = Count & 0x7FFFFFFF;
  for (i = a2; ; i += 80)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    SnapshotEntry = AVE_DPB_RetrieveSnapshotEntry(ValueAtIndex, i);
    if (SnapshotEntry)
    {
      break;
    }

    if (v10 == ++v9)
    {
      return SnapshotEntry;
    }
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v29 = AVE_Log_CheckConsole(0xE2u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(4);
    if (v29)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d\n", v30, 226, v31, "AVE_DPB_RetrieveSnapshot", 293, "ret == 0", theDict, a2, ValueAtIndex, v9, SnapshotEntry);
      v32 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v32, 226, v36, "AVE_DPB_RetrieveSnapshot");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve one entry %p %p %p %d %d", v30, 226, v31, "AVE_DPB_RetrieveSnapshot");
    }
  }

  return SnapshotEntry;
}

uint64_t AVE_USurface::Print(AVE_USurface *this, uint64_t a2, int a3, const char *a4, int a5)
{
  v80 = *MEMORY[0x29EDCA608];
  memset(v79, 0, sizeof(v79));
  v78 = 0;
  v77 = 0;
  v10 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    AVE_ComposePosStr(a4, a5, v79, 32, v11, v12, v13, v14);
    v15 = *(this + 9);
    if (v15)
    {
      v77 = bswap32(IOSurfaceGetPixelFormat(v15));
      v78 = 0;
    }

    if (AVE_Log_CheckLevel(a2, v10))
    {
      v16 = AVE_Log_CheckConsole(a2);
      if (a3 < 0)
      {
        if (!v16 || (-a3 & 0x20) != 0)
        {
          v43 = *this;
          v44 = *(this + 9);
          if (v44)
          {
            IOSurfaceGetID(*(this + 9));
            v45 = *(this + 9);
            v46 = *(this + 20);
            v47 = *(this + 12);
            if (v45)
            {
              IOSurfaceGetUseCount(v45);
              v48 = *(this + 9);
              if (v48)
              {
                IOSurfaceGetBaseAddress(v48);
              }
            }
          }

          else
          {
            v51 = *(this + 20);
            v52 = *(this + 12);
          }

          syslog(3, "Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v79, this + 8, this, v43, v44);
        }

        else
        {
          v30 = *this;
          v31 = *(this + 9);
          if (v31)
          {
            ID = IOSurfaceGetID(*(this + 9));
            v33 = (this + 96);
            v34 = *(this + 12);
            BaseAddress = *(this + 9);
            v36 = (this + 80);
            v37 = *(this + 20);
            if (BaseAddress)
            {
              UseCount = IOSurfaceGetUseCount(BaseAddress);
              BaseAddress = *(this + 9);
              if (BaseAddress)
              {
                BaseAddress = IOSurfaceGetBaseAddress(BaseAddress);
              }
            }

            else
            {
              UseCount = 0;
            }
          }

          else
          {
            UseCount = 0;
            ID = 0;
            BaseAddress = 0;
            v36 = (this + 80);
            v37 = *(this + 20);
            v33 = (this + 96);
            v34 = *(this + 12);
          }

          printf("Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s \n", v79, this + 8, this, v30, v31, ID, v37, v34, UseCount, BaseAddress, &v77);
          v62 = *this;
          v63 = *(this + 9);
          if (v63)
          {
            IOSurfaceGetID(*(this + 9));
            v64 = *(this + 9);
            v65 = *(this + 20);
            v66 = *(this + 12);
            if (v64)
            {
              IOSurfaceGetUseCount(v64);
              v67 = *(this + 9);
              if (v67)
              {
                IOSurfaceGetBaseAddress(v67);
              }
            }
          }

          else
          {
            v68 = *v36;
            v69 = *v33;
          }

          syslog(3, "Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v79, this + 8, this, v62, v63);
        }
      }

      else
      {
        v17 = v16 ^ 1;
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(v10);
        v20 = LevelStr;
        v21 = *this;
        v22 = *(this + 9);
        if ((v17 | ((a3 & 0x20) >> 5)))
        {
          if (v22)
          {
            v75 = LevelStr;
            IOSurfaceGetID(v22);
            v39 = *(this + 9);
            v40 = *(this + 20);
            v41 = *(this + 12);
            if (v39)
            {
              IOSurfaceGetUseCount(v39);
              v42 = *(this + 9);
              if (v42)
              {
                IOSurfaceGetBaseAddress(v42);
              }
            }

            v20 = v75;
          }

          else
          {
            v49 = *(this + 20);
            v50 = *(this + 12);
          }

          syslog(3, "%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", CurrTime, a2, v20, v79, this + 8, this, v21);
        }

        else
        {
          v73 = CurrTime;
          v76 = this + 8;
          if (v22)
          {
            v74 = LevelStr;
            v23 = IOSurfaceGetID(v22);
            v25 = (this + 96);
            v24 = *(this + 12);
            v26 = *(this + 9);
            v27 = (this + 80);
            v28 = *(this + 20);
            if (v26)
            {
              v72 = v23;
              v29 = IOSurfaceGetUseCount(v26);
              v26 = *(this + 9);
              if (v26)
              {
                v26 = IOSurfaceGetBaseAddress(v26);
              }

              v20 = v74;
              v23 = v72;
            }

            else
            {
              v29 = 0;
              v20 = v74;
            }
          }

          else
          {
            v29 = 0;
            v23 = 0;
            v26 = 0;
            v27 = (this + 80);
            v28 = *(this + 20);
            v25 = (this + 96);
            v24 = *(this + 12);
          }

          printf("%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s \n", v73, a2, v20, v79, v76, this, v21, v22, v23, v28, v24, v29, v26, &v77);
          v53 = AVE_GetCurrTime();
          v54 = AVE_Log_GetLevelStr(v10);
          v55 = *this;
          if (*(this + 9))
          {
            IOSurfaceGetID(*(this + 9));
            v56 = *(this + 9);
            v57 = *(this + 20);
            v58 = *(this + 12);
            if (v56)
            {
              IOSurfaceGetUseCount(v56);
              v59 = *(this + 9);
              if (v59)
              {
                IOSurfaceGetBaseAddress(v59);
              }
            }
          }

          else
          {
            v60 = *v27;
            v61 = *v25;
          }

          syslog(3, "%lld %d AVE %s: Surface %s | Name: %s %p %lldSurf %p ID %d Size %d OpFlag 0x%llx Cnt %d Addr %p PixelFmt %s ", v53, a2, v54, v79, v76, this, v55);
        }
      }
    }
  }

  v70 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t AVE_DestroyDataUSurfaces(uint64_t a1)
{
  if (a1)
  {
    result = *a1;
    if (result)
    {
      result = AVE_DestroyUSurface(result);
      *a1 = 0;
    }

    if (*(a1 + 8))
    {
      result = AVE_DestroyUSurface(*(a1 + 8));
      *(a1 + 8) = 0;
    }

    if (*(a1 + 16))
    {
      result = AVE_DestroyUSurface(*(a1 + 16));
      *(a1 + 16) = 0;
    }

    if (*(a1 + 24))
    {
      result = AVE_DestroyUSurface(*(a1 + 24));
      *(a1 + 24) = 0;
    }

    if (*(a1 + 32))
    {
      result = AVE_DestroyUSurface(*(a1 + 32));
      *(a1 + 32) = 0;
    }

    if (*(a1 + 40))
    {
      result = AVE_DestroyUSurface(*(a1 + 40));
      *(a1 + 40) = 0;
    }

    if (*(a1 + 48))
    {
      result = AVE_DestroyUSurface(*(a1 + 48));
      *(a1 + 48) = 0;
    }

    v3 = 0;
    v4 = a1 + 56;
    v5 = 1;
    do
    {
      v6 = v5;
      if (*(v4 + 8 * v3))
      {
        result = AVE_DestroyUSurface(*(v4 + 8 * v3));
        *(v4 + 8 * v3) = 0;
      }

      v5 = 0;
      v3 = 1;
    }

    while ((v6 & 1) != 0);
    if (*(a1 + 72))
    {
      result = AVE_DestroyUSurface(*(a1 + 72));
      *(a1 + 72) = 0;
    }

    if (*(a1 + 80))
    {
      result = AVE_DestroyUSurface(*(a1 + 80));
      *(a1 + 80) = 0;
    }

    if (*(a1 + 88))
    {
      result = AVE_DestroyUSurface(*(a1 + 88));
      *(a1 + 88) = 0;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x4Cu, 4))
    {
      v7 = AVE_Log_CheckConsole(0x4Cu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v7)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", CurrTime, 76, LevelStr, "AVE_DestroyDataUSurfaces", 414, "pSet != __null", 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", CurrTime);
    }

    return 4294966295;
  }

  return result;
}

AVE_USurface *PrepareMBInputCtrl(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 136);
  if (result)
  {
    if (!*(a2 + 4744))
    {
      return 0;
    }

    v5 = *(a1 + 12212);
    if (v5 == 2)
    {
      Addr = AVE_USurface::GetAddr(result, 0);
      v13 = *(a1 + 2880);
      v14 = *(a1 + 2884);
      v15 = (v13 + 31) & 0xFFFFFFE0;
      v16 = (v14 + 31) >> 5;
      v17 = (v13 + 63) & 0xFFFFFFC0;
      v18 = ((v14 + 63) >> 5) & 0x7FFFFFE;
      if (*(a1 + 20) < 30)
      {
        v19 = v16;
      }

      else
      {
        v15 = v17;
        v19 = v18;
      }

      v11 = *(a2 + 4744);
      v12 = v15 * v19;
LABEL_12:
      if (*(a2 + 4752) < v12)
      {
        if (AVE_Log_CheckLevel(0x28u, 5))
        {
          v20 = AVE_Log_CheckConsole(0x28u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(5);
          v23 = *(a2 + 4752);
          if (v20)
          {
            printf("%lld %d AVE %s: UserQpMapSize (%d) is smaller than required (%d), copying only received data\n", CurrTime, 40, LevelStr, *(a2 + 4752), v12);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(5);
          }

          syslog(3, "%lld %d AVE %s: UserQpMapSize (%d) is smaller than required (%d), copying only received data", CurrTime, 40, LevelStr, *(a2 + 4752), v12);
        }

        v12 = *(a2 + 4752);
      }

      memcpy(Addr, v11, v12);
      return 0;
    }

    if (v5 == 1)
    {
      Addr = AVE_USurface::GetAddr(result, 0);
      v7 = *(a1 + 2880);
      v8 = (v7 + 15) >> 4;
      v9 = (*(a1 + 2884) + 15) & 0xFFFFFFF0;
      v10 = ((v7 + 63) >> 4) & 0xFFFFFFC;
      if (*(a1 + 20) <= 29)
      {
        v10 = v8;
      }

      v11 = *(a2 + 4744);
      v12 = v9 * v10;
      goto LABEL_12;
    }

    if (AVE_Log_CheckLevel(0x28u, 4))
    {
      v24 = AVE_Log_CheckConsole(0x28u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      v27 = *(a1 + 12212);
      if (v24)
      {
        printf("%lld %d AVE %s: wrong encode type %d\n", v25, 40, v26, v27);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: wrong encode type %d", v28, 40, v29, *(a1 + 12212));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: wrong encode type %d", v25, 40, v26, v27);
      }
    }

    return 4294966295;
  }

  return result;
}

uint64_t AVE_DPB_RetrieveSnapshotEntry(CFDictionaryRef theDict, void *a2)
{
  v33 = 0;
  if (theDict && a2)
  {
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE80], &v33);
    *a2 = v33;
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE50], &v33);
    *(a2 + 1) = v33;
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE58], &v33);
    *(a2 + 2) = v33;
    AVE_CFDict_GetSInt64(theDict, *MEMORY[0x29EDBCE70], a2 + 2);
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCE68], &v33);
    *(a2 + 6) = v33;
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE60]);
    if (Value)
    {
      v5 = Value;
      v6 = *MEMORY[0x29EDBCE48];
      AVE_CFDict_GetSInt32(Value, *MEMORY[0x29EDBCE48], &v33);
      *(a2 + 12) = v33;
      v7 = *MEMORY[0x29EDBCE38];
      AVE_CFDict_GetSInt32(v5, *MEMORY[0x29EDBCE38], &v33);
      *(a2 + 14) = v33;
      v8 = *MEMORY[0x29EDBCE40];
      AVE_CFDict_GetSInt32(v5, *MEMORY[0x29EDBCE40], &v33);
      *(a2 + 16) = v33;
      v9 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE78]);
      if (v9)
      {
        v10 = v9;
        AVE_CFDict_GetSInt32(v9, v6, &v33);
        *(a2 + 13) = v33;
        AVE_CFDict_GetSInt32(v10, v7, &v33);
        *(a2 + 15) = v33;
        AVE_CFDict_GetSInt32(v10, v8, &v33);
        *(a2 + 17) = v33;
        v11 = CFDictionaryGetValue(theDict, *MEMORY[0x29EDBCE88]);
        MetaData = AVE_DRC_RetrieveMetaData(v11, a2 + 72);
        if (MetaData && AVE_Log_CheckLevel(0xE2u, 4))
        {
          v13 = AVE_Log_CheckConsole(0xE2u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          if (v13)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DPB_RetrieveSnapshotEntry", 150, "ret == 0", theDict, a2, MetaData);
            v16 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", v16, 226, v29);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to retrieve RC metadata %p %p %d", CurrTime, 226, LevelStr);
          }
        }

        return MetaData;
      }

      if (AVE_Log_CheckLevel(0xE2u, 4))
      {
        v24 = AVE_Log_CheckConsole(0xE2u);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        if (v24)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d\n", v25, 226, v26, "AVE_DPB_RetrieveSnapshotEntry", 131, "pTmpDict != __null", theDict, a2, 0);
          v27 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v27, 226, v32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VRA reference buffer %p %p %d", v25, 226, v26);
        }
      }
    }

    else if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v21 = AVE_Log_CheckConsole(0xE2u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d\n", v22, 226, v23, "AVE_DPB_RetrieveSnapshotEntry", 113, "pTmpDict != __null", theDict, a2, 0);
        v22 = AVE_GetCurrTime();
        v31 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v31 = v23;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get original reference buffer %p %p %d", v22, 226, v31);
    }

    return 4294966288;
  }

  if (AVE_Log_CheckLevel(0xE2u, 4))
  {
    v17 = AVE_Log_CheckConsole(0xE2u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(4);
    if (v17)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", v18, 226, v19, "AVE_DPB_RetrieveSnapshotEntry", 92, "pDict != __null && pEntry != __null", theDict, a2, 0);
      v20 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v20, 226, v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v18, 226, v19);
    }
  }

  return 4294966295;
}

__IOSurface *AVE_USurface::GetAddr(AVE_USurface *this, int a2)
{
  result = *(this + 9);
  if (result)
  {
    return (IOSurfaceGetBaseAddress(result) + a2);
  }

  return result;
}

uint64_t AVE_CFDict_GetSInt64(CFDictionaryRef theDict, const __CFString *key, uint64_t *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
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
        if (CFNumberGetValue(Value, kCFNumberSInt64Type, a3))
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

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFDict_GetSInt64", 953, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v16);
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
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFNumber %p %p %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFDict_GetSInt64", 953, "pNum != __null && CFNumberGetTypeID() == CFGetTypeID(pNum)", theDict, key, a3, Value, v17);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v9 = AVE_Log_CheckConsole(0x14u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(4);
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v10, 20, v11, "AVE_CFDict_GetSInt64", 939, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
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

uint64_t AVE_Session_AVC_Complete(uint64_t a1)
{
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v2 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: Enter %s %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_Complete", a1);
      v5 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: Enter %s %p", v5, 12, v24, "AVE_Session_AVC_Complete", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Enter %s %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_Complete", a1);
    }
  }

  if (a1)
  {
    v6 = *(a1 + 12000);
    v7 = AVE_GetCurrTime();
    AVE_TimeStats_AddStartTime(v6, 6u, v7);
    if (*(a1 + 16464) == 30568)
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
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %lld %d\n", v10, 12, v11, "AVE_Session_AVC_Complete", 5476, "ret == 0", a1, *(a1 + 56), v8);
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
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", v15, 12, v16, "AVE_Session_AVC_Complete", 5463, "pINS != __null", 0);
        v15 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", v15);
    }

    v8 = 4294966295;
  }

  v17 = *(a1 + 12000);
  v18 = AVE_GetCurrTime();
  AVE_TimeStats_AddEndTime(v17, 6u, v18);
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v19 = AVE_Log_CheckConsole(0xCu);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(7);
    if (v19)
    {
      printf("%lld %d AVE %s: Exit %s %p %d\n", v20, 12, v21, "AVE_Session_AVC_Complete", a1, v8);
      v22 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v22, 12, v25, "AVE_Session_AVC_Complete", a1, v8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Exit %s %p %d", v20, 12, v21, "AVE_Session_AVC_Complete", a1, v8);
    }
  }

  return v8;
}

uint64_t AVE_RetrieveDataUSurfaces(AVE_USurface **a1, _DWORD *a2)
{
  v4 = *a1;
  if (v4)
  {
    *a2 = AVE_USurface::GetID(v4);
  }

  v5 = a1[1];
  if (v5)
  {
    a2[1] = AVE_USurface::GetID(v5);
  }

  v6 = a1[2];
  if (v6)
  {
    a2[2] = AVE_USurface::GetID(v6);
  }

  v7 = a1[3];
  if (v7)
  {
    a2[3] = AVE_USurface::GetID(v7);
  }

  v8 = a1[4];
  if (v8)
  {
    a2[4] = AVE_USurface::GetID(v8);
  }

  v9 = a1[5];
  if (v9)
  {
    a2[5] = AVE_USurface::GetID(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    a2[6] = AVE_USurface::GetID(v10);
  }

  v11 = 0;
  v12 = 1;
  do
  {
    v13 = v12;
    v14 = a1[v11 + 7];
    if (v14)
    {
      a2[v11 + 7] = AVE_USurface::GetID(v14);
    }

    v12 = 0;
    v11 = 1;
  }

  while ((v13 & 1) != 0);
  v15 = a1[9];
  if (v15)
  {
    a2[9] = AVE_USurface::GetID(v15);
  }

  v16 = a1[10];
  if (v16)
  {
    a2[10] = AVE_USurface::GetID(v16);
  }

  v17 = a1[11];
  if (v17)
  {
    a2[11] = AVE_USurface::GetID(v17);
  }

  return 0;
}

uint64_t AVE_DRC_RetrieveMetaData(CFDictionaryRef theDict, BOOL *a2)
{
  v14 = 0;
  if (theDict && a2)
  {
    Bool = AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCE90], a2);
    v5 = AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCEB0], a2 + 1) + Bool;
    SInt32 = AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCEA0], &v14);
    a2[2] = v14;
    v7 = v5 + SInt32 + AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDBCE98], a2 + 3);
    return v7 + AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDBCEA8], a2 + 1);
  }

  else
  {
    if (AVE_Log_CheckLevel(0xE2u, 4))
    {
      v9 = AVE_Log_CheckConsole(0xE2u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v9)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d\n", CurrTime, 226, LevelStr, "AVE_DRC_RetrieveMetaData", 25, "pDict != __null && pMetaData != __null", theDict, a2, 0);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", v12, 226, v13);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %d", CurrTime, 226, LevelStr);
      }
    }

    return 4294966295;
  }
}

__IOSurface *AVE_USurface::GetID(AVE_USurface *this)
{
  result = *(this + 9);
  if (result)
  {
    return IOSurfaceGetID(result);
  }

  return result;
}

uint64_t AVE_CFDict_GetBool(CFDictionaryRef theDict, const __CFString *key, BOOL *a3)
{
  if (theDict && key && a3)
  {
    *a3 = 0;
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return 4294966288;
    }

    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(Value))
      {
        v8 = CFBooleanGetValue(Value);
        result = 0;
        *a3 = v8 != 0;
        return result;
      }
    }

    if (!AVE_Log_CheckLevel(0x14u, 4))
    {
      return 4294966296;
    }

    v14 = AVE_Log_CheckConsole(0x14u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v14)
    {
      if (Value)
      {
        v17 = CFGetTypeID(Value);
      }

      else
      {
        v17 = -1;
      }

      printf("%lld %d AVE %s: %s:%d %s | fail to get CFBoolean %p %p %p %p %ld\n", CurrTime, 20, LevelStr, "AVE_CFDict_GetBool", 654, "pBool != __null && CFBooleanGetTypeID() == CFGetTypeID(pBool)", theDict, key, a3, Value, v17);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (!Value)
      {
        v18 = -1;
        goto LABEL_25;
      }
    }

    else if (!Value)
    {
      v18 = -1;
      goto LABEL_25;
    }

    v18 = CFGetTypeID(Value);
LABEL_25:
    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get CFBoolean %p %p %p %p %ld", CurrTime, 20, LevelStr, "AVE_CFDict_GetBool", 654, "pBool != __null && CFBooleanGetTypeID() == CFGetTypeID(pBool)", theDict, key, a3, Value, v18);
    return 4294966296;
  }

  if (AVE_Log_CheckLevel(0x14u, 4))
  {
    v10 = AVE_Log_CheckConsole(0x14u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v11, 20, v12, "AVE_CFDict_GetBool", 640, "pDict != __null && pKey != __null && pVal != __null", theDict, key, a3);
      v13 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v13, 20, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v11, 20, v12);
    }
  }

  return 4294966295;
}

uint64_t AVE_DAL::UCProcess(const void **a1, uint64_t *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Process(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to process %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCProcess", 906, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 8;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCProcess", 902, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCProcess", a1, *a1, a1[5], a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCProcess");
  }

  return v10;
}

uint64_t AVE_TimeStats_AddStartTime(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v6 = AVE_Log_CheckConsole(0x3Cu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld\n", CurrTime, 60, LevelStr, "AVE_TimeStats_AddStartTime", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld", CurrTime);
  }

  if (!a1 || a2 > 8 || a3 < 0)
  {
    if (AVE_Log_CheckLevel(0x3Cu, 4))
    {
      v12 = AVE_Log_CheckConsole(0x3Cu);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld\n", v13, 60, v14, "AVE_TimeStats_AddStartTime", 235, "pTS != __null && 0 <= pos && pos < AVE_TimeStats_Pos_Max && ts >= 0", a1, a2, a3);
        v15 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v15, 60, v25);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %lld", v13, 60, v14);
      }
    }

    v11 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(*(a1 + 176));
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 24);
      if (a2 == 5)
      {
        *(v9 + 16 * (v10 % *(a1 + 8))) = a3;
      }

      v11 = 0;
      if (!v10)
      {
        *(a1 + 16 * a2 + 32) = a3;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Cu, 4))
      {
        v16 = AVE_Log_CheckConsole(0x3Cu);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld\n", v17, 60, v18, "AVE_TimeStats_AddStartTime", 240, "pTS->psTP != __null", a1, a2, a3);
          v19 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v19, 60, v26);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d %lld", v17, 60, v18);
        }
      }

      v11 = 4294966285;
    }

    AVE_Mutex_Unlock(*(a1 + 176));
  }

  if (AVE_Log_CheckLevel(0x3Cu, 7))
  {
    v20 = AVE_Log_CheckConsole(0x3Cu);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(7);
    if (v20)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d\n", v21, 60, v22, "AVE_TimeStats_AddStartTime", a1, a2, a3, v11);
      v23 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v23, 60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d", v21, 60);
    }
  }

  return v11;
}

uint64_t AVE_USL_Drv_Complete(uint64_t a1, void *a2)
{
  v54 = -1;
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v4 = AVE_Log_CheckConsole(0x28u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.\n", CurrTime, 40, LevelStr);
      v7 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", v7, 40, v48);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", CurrTime, 40, LevelStr);
    }
  }

  if (a1)
  {
    if (*(a1 + 40) != 1)
    {
      v17 = 4294966292;
      goto LABEL_32;
    }

    v53[0] = 0;
    AVE_DAL::Alloc(*(a1 + 24), 72736, v53);
    AVE_DAL::Addr2Idx(*(a1 + 24), v53[0], &v54);
    v8 = v53[0];
    if (v53[0])
    {
      bzero((v53[0] + 8), 0x11C18uLL);
      v9 = v54;
      *v8 = v54;
      *(v8 + 4) = 8;
      *(v8 + 40) = *(a1 + 44);
      *(v8 + 33048) = *a2;
      *(v8 + 16) = *(a1 + 106088) != 0;
      *(v8 + 20) = *(a1 + 106096);
      memset(v53, 0, 40);
      LODWORD(v53[0]) = v9;
      if (Connection::writePacketBlock(*(a1 + 106080), v53))
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v10 = AVE_Log_CheckConsole(3u);
          v11 = AVE_GetCurrTime();
          v12 = AVE_Log_GetLevelStr(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v11, 3, v12, "AVE_USL_Drv_Complete", 1215, "res == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }

LABEL_29:
        v17 = 4294966296;
        goto LABEL_32;
      }

      *&v53[3] = 0u;
      *&v53[1] = 0u;
      v51 = 0u;
      v52 = 0u;
      v53[0] = *a1;
      v53[5] = v54;
      v53[3] = 118000000;
      v53[4] = AVE_GetCurrTime();
      v22 = AVE_DAL::UCComplete(*(a1 + 24), v53, &v51);
      if (!v22)
      {
        v33 = *(a1 + 106072);
        pthread_mutex_lock(v33);
        do
        {
          v35 = *(v33 + 208);
          v34 = *(v33 + 216);
          if (v34 > v35)
          {
            v38 = *(v33 + 200);
            v37 = *(*(v33 + 224) + 40 * (v35 % *(v33 + 192)));
            v39 = v35 + 1;
            *(v33 + 208) = v39;
            v40 = v34 <= v39;
            v41 = v34 - v39;
            if (v40)
            {
              v41 = 0;
            }

            if (v41 < v38)
            {
              pthread_cond_signal((v33 + 112));
            }

            pthread_mutex_unlock(v33);
            if (v37 == v54)
            {
              v17 = 0;
              goto LABEL_32;
            }

            goto LABEL_50;
          }

          gettimeofday((v33 + 176), 0);
          v36 = 1000 * *(v33 + 184);
          *(v33 + 160) = *(v33 + 176) + 120;
          *(v33 + 168) = v36;
        }

        while (pthread_cond_timedwait((v33 + 64), v33, (v33 + 160)) != 60);
        pthread_mutex_unlock(v33);
        if (v54)
        {
          v37 = 0;
LABEL_50:
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v42 = AVE_Log_CheckConsole(3u);
            v43 = AVE_GetCurrTime();
            v44 = AVE_Log_GetLevelStr(4);
            if (v42)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).\n", v43, 3, v44, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v37, v54);
              v43 = AVE_GetCurrTime();
              v44 = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).", v43, 3, v44, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v37, v54, v51, v52);
          }

          goto LABEL_29;
        }

        if (AVE_Log_CheckLevel(3u, 4))
        {
          v45 = AVE_Log_CheckConsole(3u);
          v46 = AVE_GetCurrTime();
          v47 = AVE_Log_GetLevelStr(4);
          if (v45)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v46, 3, v47, "AVE_USL_Drv_Complete", 1244, "res == 0");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
        }

        goto LABEL_29;
      }

      v17 = v22;
      v23 = *(a1 + 106080);
      pthread_mutex_lock(v23);
      v24 = *(v23 + 216);
      if (v24 >= 1 && v24 > *(v23 + 208))
      {
        *(v23 + 216) = v24 - 1;
      }

      pthread_mutex_unlock(v23);
      if (AVE_Log_CheckLevel(0x28u, 4))
      {
        v25 = AVE_Log_CheckConsole(0x28u);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %d\n", v26, 40, v27, "AVE_USL_Drv_Complete", 1232, "ret == 0", v17);
          v26 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %d", v26);
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v18 = AVE_Log_CheckConsole(3u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v19, 3, v20, "AVE_USL_Drv_Complete", 1195, "Frame");
          v21 = AVE_GetCurrTime();
          v50 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v21, 3, v50, "AVE_USL_Drv_Complete", 1195, "Frame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v19, 3, v20, "AVE_USL_Drv_Complete", 1195, "Frame");
        }
      }

      v17 = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v13 = AVE_Log_CheckConsole(3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.\n", v14, 3, v15, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
        v16 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.", v16, 3, v49, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.", v14, 3, v15, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
      }
    }

    v17 = 4294966295;
  }

LABEL_32:
  if (AVE_Log_CheckLevel(0x28u, 7))
  {
    v28 = AVE_Log_CheckConsole(0x28u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(7);
    v31 = *(a1 + 44);
    if (v28)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d\n", v29, 40, v30, *(a1 + 44), v17);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d", v29, 40, v30, *(a1 + 44), v17);
  }

  return v17;
}

uint64_t AVE_DAL::UCComplete(const void **a1, uint64_t *a2, void *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *a1;
      v29 = *a1;
      v30 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %p", CurrTime, 36, LevelStr, "AVE_DAL");
  }

  if (a2 && a3)
  {
    v10 = AVE_UC_Complete(a1[5], a2, a3);
    if (v10)
    {
      v11 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v12 = AVE_Log_CheckConsole(0x24u);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        v15 = *a1;
        if (v12)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d\n", v13, 36, v14, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, v15, a2, a3, v10);
          v16 = AVE_GetCurrTime();
          v11 = 4;
          v17 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d", v16, 36, v17, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, *a1, a2, a3, v10);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to complete %p %lld %p %p %d", v13, 36, v14, "AVE_DAL", "UCComplete", 939, "ret == 0", a1, v15, a2, a3, v10);
          v11 = 4;
        }
      }
    }

    else
    {
      v11 = 7;
    }
  }

  else
  {
    v11 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x24u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      v21 = *a1;
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p\n", v19, 36, v20, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v22 = AVE_GetCurrTime();
        v11 = 4;
        v23 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v22, 36, v23, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, *a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameter %p %lld %p %p", v19, 36, v20, "AVE_DAL", "UCComplete", 935, "pIn != __null && pOut != __null", a1, v21, a2, a3);
        v11 = 4;
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x24u, v11))
  {
    v24 = AVE_Log_CheckConsole(0x24u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v11);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d\n", v25, 36, v26, "AVE_DAL", "UCComplete", a1, *a1, a1[5], a2, a3, v10);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(v11);
      v27 = *a1;
      v31 = a1[5];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %p %d", v25, 36, v26, "AVE_DAL", "UCComplete");
  }

  return v10;
}

uint64_t AVE_UC_Complete(const void *a1, uint64_t *a2, void *a3)
{
  outputStructCnt = 32;
  if (AVE_Log_CheckLevel(0x23u, 7))
  {
    v6 = AVE_Log_CheckConsole(0x23u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p\n", CurrTime, 35, LevelStr, "AVE_UC_Complete", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %p %p", CurrTime);
  }

  if (a1 && a2 && a3)
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    kdebug_trace();
    v12 = IOConnectCallStructMethod(a1, 8u, a2, 0x30uLL, a3, &outputStructCnt);
    v13 = AVE_IOReturn2RetCode(v12);
    v14 = *a2;
    v15 = a2[1];
    kdebug_trace();
    if (v13)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v17 = AVE_Log_CheckConsole(0x23u);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
        if (v17)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d\n", v18, 35, v19, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v12, v13);
          v20 = AVE_GetCurrTime();
          v16 = 4;
          v21 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d", v20, 35, v21, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v12, v13);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %p %p %p 0x%x %d", v18, 35, v19, "AVE_UC_Complete", 519, "ret == 0", a1, a2, a3, v12, v13);
          v16 = 4;
        }
      }
    }

    else if (outputStructCnt <= 0x1F)
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0x23u, 4))
      {
        v31 = AVE_Log_CheckConsole(0x23u);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(4);
        if (v31)
        {
          printf("%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d\n", v32, 35, v33, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
          v34 = AVE_GetCurrTime();
          v16 = 4;
          v35 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v34, 35, v35, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | invalid out parameter %p %p %p %d %d", v32, 35, v33, "AVE_UC_Complete", 523, "outSize >= sizeof(S_AVE_UCOutParam_Complete)", a1, a2, a3, outputStructCnt, 32);
          v16 = 4;
        }
      }

      v13 = 4294966281;
    }

    else
    {
      v13 = 0;
      v16 = 7;
    }
  }

  else
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0x23u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x23u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p\n", v23, 35, v24, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v25 = AVE_GetCurrTime();
        v16 = 4;
        v26 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v25, 35, v26, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p", v23, 35, v24, "AVE_UC_Complete", 506, "pUC != __null && pIn != __null && pOut != __null", a1, a2, a3);
        v16 = 4;
      }
    }

    v13 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x23u, v16))
  {
    v27 = AVE_Log_CheckConsole(0x23u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v16);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %d\n", v28, 35, v29, "AVE_UC_Complete", a1, a2, a3, v13);
      v28 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v16);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %d", v28, 35);
  }

  return v13;
}

uint64_t AVE_SEI::SetSEIBits(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    v7 = *this;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetSEIBits", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v8 = *this;
    }

    else
    {
      v14 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx", CurrTime, 211);
  }

  AVE_Mutex_Lock(*(this + 4));
  *(this + 1) = a2;
  AVE_Mutex_Unlock(*(this + 4));
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v9 = AVE_Log_CheckConsole(0xD3u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(6);
    if (v9)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d\n", v10, 211, v11, "AVE_SEI", "SetSEIBits", this, *this, a2, 0);
      v10 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(6);
      v12 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d", v10, 211, v11);
  }

  return 0;
}

uint64_t AVE_MCTF_SMap_Parse(char *a1, _DWORD *a2)
{
  v2 = 4294966295;
  if (a1 && a2)
  {
    v4 = 0;
    v5 = a2 + 1;
    v6 = a2 + 4;
    do
    {
      v7 = 0;
      v5[24 * v4 + 1] = 1;
      do
      {
        *&v6[v7] = -NAN;
        v7 += 3;
      }

      while (v7 != 21);
      ++v4;
      v6 += 24;
    }

    while (v4 != 5);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v2 = 0;
    v11 = 1;
    v12 = -1;
    v13 = 0x7FFFFFFF;
    while (1)
    {
      while (1)
      {
        v14 = *a1;
        if (v14 <= 0x54)
        {
          break;
        }

        if (*a1 <= 0x6Bu)
        {
          if (v14 == 85)
          {
            goto LABEL_29;
          }

          if (v14 == 99)
          {
LABEL_31:
            v12 = 0;
            goto LABEL_38;
          }

          if (v14 != 105)
          {
            goto LABEL_36;
          }

LABEL_26:
          ++a1;
          v12 = 1;
        }

        else if (*a1 > 0x73u)
        {
          if (v14 == 116)
          {
            goto LABEL_32;
          }

          if (v14 != 117)
          {
            goto LABEL_36;
          }

LABEL_29:
          ++a1;
          v12 = 4;
        }

        else
        {
          if (v14 == 108)
          {
            goto LABEL_30;
          }

          if (v14 != 115)
          {
            goto LABEL_36;
          }

LABEL_33:
          ++a1;
          v12 = 5;
        }
      }

      if (*a1 > 0x4Bu)
      {
        switch(v14)
        {
          case 'L':
LABEL_30:
            ++a1;
            v12 = 3;
            break;
          case 'S':
            goto LABEL_33;
          case 'T':
LABEL_32:
            ++a1;
            v12 = 2;
            break;
          default:
            goto LABEL_36;
        }
      }

      else
      {
        if (*a1 > 0x42u)
        {
          if (v14 == 67)
          {
            goto LABEL_31;
          }

          if (v14 != 73)
          {
            goto LABEL_36;
          }

          goto LABEL_26;
        }

        if (v14 == 32)
        {
          goto LABEL_38;
        }

        if (!*a1)
        {
          return v2;
        }

LABEL_36:
        if (v14 - 48 < 0xA || (v14 & 0xFFFFFFDF) - 65 <= 0x19)
        {
          __endptr = 0;
          v15 = strtol(a1, &__endptr, 0);
          if (v12 > 2)
          {
            if (v12 == 3)
            {
              v10 = v15;
            }

            else if (v12 == 4)
            {
              v13 = v15;
            }

            else if (v9 > 4 || (v16 = &v5[24 * v9], v17 = v16[2], v17 > 6))
            {
              if (AVE_Log_CheckLevel(0x10u, 4))
              {
                v20 = AVE_Log_CheckConsole(0x10u);
                CurrTime = AVE_GetCurrTime();
                LevelStr = AVE_Log_GetLevelStr(4);
                if (v20)
                {
                  if (v9 > 4)
                  {
                    v23 = -1;
                  }

                  else
                  {
                    v23 = v5[24 * v9 + 2];
                  }

                  printf("%lld %d AVE %s: %s:%d Invalid bounds %d %d\n", CurrTime, 16, LevelStr, "AVE_MCTF_SMap_Parse", 266, v9, v23);
                  CurrTime = AVE_GetCurrTime();
                  LevelStr = AVE_Log_GetLevelStr(4);
                  if (v9 > 4)
                  {
                    v24 = -1;
                  }

                  else
                  {
                    v24 = v5[24 * v9 + 2];
                  }
                }

                else if (v9 > 4)
                {
                  v24 = -1;
                }

                else
                {
                  v24 = v5[24 * v9 + 2];
                }

                syslog(3, "%lld %d AVE %s: %s:%d Invalid bounds %d %d", CurrTime, 16, LevelStr, "AVE_MCTF_SMap_Parse", 266, v9, v24);
              }

              v2 = 4294966278;
            }

            else
            {
              *v16 = v8;
              v16[1] = v11;
              v18 = &v16[3 * v17];
              v18[3] = v10;
              v18[4] = v13;
              v18[5] = v15;
              v19 = v17 + 1;
              v16[2] = v19;
              if (*a2 <= v9)
              {
                *a2 = v9 + 1;
              }

              v10 = 0;
              if (v19 == 7)
              {
                v8 = 0;
                v11 = 1;
              }

              v13 = 0x7FFFFFFF;
            }
          }

          else if (v12)
          {
            if (v12 == 1)
            {
              if (v9 != v15)
              {
                v11 = 1;
                v10 = 0;
                v13 = 0x7FFFFFFF;
              }

              v9 = v15;
            }

            else if (v12 == 2)
            {
              v11 = v15;
            }
          }

          else
          {
            v8 = v15;
          }

          a1 = __endptr;
        }

        else
        {
LABEL_38:
          ++a1;
        }
      }
    }
  }

  return v2;
}

void AVE_SEI::AVE_SEI(AVE_SEI *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0u;
  *(this + 4) = 0u;
  *(this + 3) = 0u;
  AVE_DLList_Init(this + 48);
}

uint64_t AVE_SEI::Uninit(AVE_SEI *this)
{
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v2 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu\n", CurrTime, 211, LevelStr, "AVE_SEI", "Uninit", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu", CurrTime);
  }

  if (*(this + 5))
  {
    while (!AVE_DLList_Empty(this + 6))
    {
      v6 = AVE_DLList_Front(this + 6);
      if (AVE_Log_CheckLevel(0xD3u, 5))
      {
        v7 = AVE_Log_CheckConsole(0xD3u);
        v8 = AVE_GetCurrTime();
        v9 = AVE_Log_GetLevelStr(5);
        v10 = v6[3];
        v11 = *this;
        if (v7)
        {
          printf("%lld %d AVE %s: %s::%s SEI Frame # %lld not used before destruction of SEI manager %llu\n", v8, 211, v9, "AVE_SEI", "Uninit", v6[3], v11);
          v8 = AVE_GetCurrTime();
          v9 = AVE_Log_GetLevelStr(5);
          v10 = v6[3];
          v11 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s SEI Frame # %lld not used before destruction of SEI manager %llu", v8, 211, v9, "AVE_SEI", "Uninit", v10, v11);
      }

      AVE_SEI::RemoveFrame(this, v6);
    }

    v12 = *(this + 5);
    if (v12)
    {
      AVE_BlkPool::~AVE_BlkPool(v12);
      MEMORY[0x29C24DA40]();
    }

    *(this + 5) = 0;
  }

  v13 = *(this + 4);
  if (v13)
  {
    AVE_Mutex_Destroy(v13);
    *(this + 4) = 0;
  }

  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v14 = AVE_Log_CheckConsole(0xD3u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(6);
    v17 = *this;
    if (v14)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %d\n", v15, 211, v16, "AVE_SEI", "Uninit", this, *this, 0);
      v15 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v18 = *this;
    }

    else
    {
      v20 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %d", v15, 211);
  }

  return 0;
}

uint64_t AVE_SEI::Init(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 6))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x\n", CurrTime, 211, LevelStr, "AVE_SEI", "Init", a1, a2, a3, a4, a5, a6);
      v15 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x", v15, 211, v50, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu 0x%016llx %d %d 0x%08x", CurrTime, 211, LevelStr, "AVE_SEI");
    }
  }

  *a1 = a2;
  if (a4 < 0)
  {
    v16 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v17 = AVE_Log_CheckConsole(0xD3u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *a1;
      if (v17)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d\n", v18, 211, v19, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
        v21 = AVE_GetCurrTime();
        v16 = 4;
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d", v21, 211, v22, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid max frame count %d", v18, 211, v19, "AVE_SEI", "Init", 86, "maxFrameCount >= 0", a1, *a1, a4);
        v16 = 4;
      }
    }

    v27 = 4294966295;
  }

  else
  {
    if (a4)
    {
      ++a4;
    }

    else if (AVE_Log_CheckLevel(0xD3u, 6))
    {
      v23 = AVE_Log_CheckConsole(0xD3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(6);
      v26 = *a1;
      if (v23)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d\n", v24, 211, v25, "AVE_SEI", "Init", 95, a1, *a1, 49);
        v24 = AVE_GetCurrTime();
        v25 = AVE_Log_GetLevelStr(6);
      }

      v52 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu maxFrameCount was 0, defaulting to %d", v24, 211, v25);
      a4 = 49;
    }

    else
    {
      a4 = 49;
    }

    a1[1] = a3;
    v28 = operator new(0x48uLL, MEMORY[0x29EDC9418]);
    if (v28)
    {
      v29 = v28;
      AVE_BlkPool::AVE_BlkPool(v28);
      v30 = AVE_BlkPool::Create(v29, 0, a4, 248, 0, 0);
      if (v30)
      {
        v27 = v30;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v31 = AVE_Log_CheckConsole(0xD3u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d\n", v32, 211, v33, "AVE_SEI", "Init", 112, "ret == 0", a1, *a1, a4, v27);
            v32 = AVE_GetCurrTime();
            v33 = AVE_Log_GetLevelStr(4);
            v53 = *a1;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create block pool %p %llu %d %d", v32, 211, v33, "AVE_SEI");
        }
      }

      else
      {
        a1[5] = v29;
        *(a1 + 6) = a4;
        v40 = AVE_Mutex_Create();
        if (v40)
        {
          v27 = 0;
          a1[4] = v40;
          v16 = 6;
          *(a1 + 4) = a6;
          *(a1 + 5) = a5;
          goto LABEL_38;
        }

        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v41 = AVE_Log_CheckConsole(0xD3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          v44 = *a1;
          if (v41)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d\n", v42, 211, v43, "AVE_SEI", "Init", 120, "pMutex != __null", a1, *a1, 0);
            v42 = AVE_GetCurrTime();
            v43 = AVE_Log_GetLevelStr(4);
          }

          v54 = *a1;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | failed to create mutex %p %llu %d", v42, 211, v43, "AVE_SEI");
        }

        v27 = 4294966293;
      }

      AVE_BlkPool::~AVE_BlkPool(v29);
      MEMORY[0x29C24DA40]();
      v16 = 4;
    }

    else
    {
      v16 = 4;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v34 = AVE_Log_CheckConsole(0xD3u);
        v35 = AVE_GetCurrTime();
        v36 = AVE_Log_GetLevelStr(4);
        v37 = *a1;
        if (v34)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d\n", v35, 211, v36, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
          v38 = AVE_GetCurrTime();
          v16 = 4;
          v39 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d", v38, 211, v39, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to allocate block pool %p %llu %d", v35, 211, v36, "AVE_SEI", "Init", 107, "pBlkPool != __null", a1, *a1, 0);
          v16 = 4;
        }
      }

      v27 = 4294966293;
    }
  }

LABEL_38:
  if (AVE_Log_CheckLevel(0xD3u, v16))
  {
    v45 = AVE_Log_CheckConsole(0xD3u);
    v46 = AVE_GetCurrTime();
    v47 = AVE_Log_GetLevelStr(v16);
    if (v45)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d\n", v46, 211, v47, "AVE_SEI", "Init", a1, a2, a3, a4, a5, a6, v27);
      v48 = AVE_GetCurrTime();
      v51 = AVE_Log_GetLevelStr(v16);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d", v48, 211, v51, "AVE_SEI");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu 0x%016llx %d %d 0x%08x %d", v46, 211, v47, "AVE_SEI");
    }
  }

  return v27;
}

uint64_t AVE_SEI::GenerateISPMetadataNALU(void *a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateISPMetadataNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateISPMetadataNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 1) == 0)
  {
    goto LABEL_19;
  }

  BytePtr = CFDataGetBytePtr(*(a4 + 216));
  Length = CFDataGetLength(*(a4 + 216));
  v20 = AVE_SEI_WriteSEIISPMetadata(a2, a3, BytePtr, Length, *(a4 + 24), *(a1 + 5), a1[2] & 1, a6);
  if (!v20)
  {
    if ((a1[2] & 2) != 0)
    {
      v21 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v21 = 0;
LABEL_20:
    v22 = 7;
    goto LABEL_21;
  }

  v21 = v20;
  v22 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v23 = AVE_Log_CheckConsole(0xD3u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(4);
    v26 = *a1;
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d\n", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v27 = AVE_GetCurrTime();
      v22 = 4;
      v28 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v27, 211, v28, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Debug Metadata SEI %d", v24, 211, v25, "AVE_SEI", "GenerateISPMetadataNALU", 2058, "ret == 0", a1, *a1, v21);
      v22 = 4;
    }
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v22))
  {
    v29 = AVE_Log_CheckConsole(0xD3u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v22);
    v32 = *a1;
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v30, 211, v31, "AVE_SEI", "GenerateISPMetadataNALU", a1, v32, a2, a4, *(a4 + 24), a5, a6, v21);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(v22);
      v36 = *(a4 + 24);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v33, 211, v34, "AVE_SEI", "GenerateISPMetadataNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v30, 211, v31, "AVE_SEI", "GenerateISPMetadataNALU", a1, v32);
    }
  }

  return v21;
}

uint64_t AVE_SEI::GenerateTimingInfoMetadata(void *a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v72 = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v15, a2, a3, a4, *(a4 + 24), a5, a6);
      v16 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      v71 = *(a4 + 24);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p", v16, 211, v17, "AVE_SEI", "GenerateTimingInfoMetadata", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v15);
    }
  }

  *a6 = 0;
  v18 = a1[1] & *(a4 + 32);
  v19 = v18 & a5;
  if ((v18 & a5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v22 = AVE_SEI_WriteAccessUnitDelimiter(a2, a3, *(a4 + 24), *(a1 + 5), *(a4 + 224), &v72);
  if (v22)
  {
    v20 = v22;
    v21 = 4;
    if (!AVE_Log_CheckLevel(0xD3u, 4))
    {
      goto LABEL_43;
    }

    v23 = AVE_Log_CheckConsole(0xD3u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(4);
    v26 = *a1;
    if (v23)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v24, 211, v25, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
      v27 = AVE_GetCurrTime();
      v21 = 4;
      v28 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v27, 211, v28, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
      goto LABEL_43;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v24, 211, v25, "AVE_SEI", "GenerateTimingInfoMetadata", 2117, "ret == 0", a1, *a1, v20);
    goto LABEL_20;
  }

  v29 = v72;
  if ((a1[2] & 2) != 0)
  {
    *a2 = bswap32(v72 - 4);
  }

  v30 = *a6 + v29;
  *a6 = v30;
  a2 += v29;
  v72 = 0;
  if ((v19 & 4) != 0)
  {
    v31 = AVE_SEI_WriteActiveParameterSets(a2, a3 - v30, *(a4 + 228), *(a4 + 24), *(a1 + 5), &v72);
    if (v31)
    {
      v20 = v31;
      v21 = 4;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v32 = AVE_Log_CheckConsole(0xD3u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      v35 = *a1;
      if (v32)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v33, 211, v34, "AVE_SEI", "GenerateTimingInfoMetadata", 2136, "ret == 0", a1, *a1, v20);
        v36 = AVE_GetCurrTime();
        v21 = 4;
        v37 = AVE_Log_GetLevelStr(4);
        v68 = *a1;
        v69 = v20;
        v67 = a1;
        v38 = 2136;
LABEL_32:
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v36, 211, v37, "AVE_SEI", "GenerateTimingInfoMetadata", v38, "ret == 0", v67, v68, v69);
        goto LABEL_43;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v33, 211, v34, "AVE_SEI", "GenerateTimingInfoMetadata", 2136, "ret == 0", a1, *a1, v20);
      goto LABEL_20;
    }

    v39 = v72;
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v72 - 4);
    }

    v30 = *a6 + v39;
    *a6 = v30;
    a2 += v39;
    v72 = 0;
  }

  if ((v19 & 8) != 0)
  {
    v47 = AVE_SEI_WritePictureTiming(a2, a3 - v30, *(a4 + 24), *(a1 + 5), *(a4 + 232) != 0, *(a4 + 236), *(a4 + 224), *(a4 + 240), &v72);
    if (v47)
    {
      v20 = v47;
      v21 = 4;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_43;
      }

      v48 = AVE_Log_CheckConsole(0xD3u);
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(4);
      v51 = *a1;
      if (v48)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v49, 211, v50, "AVE_SEI", "GenerateTimingInfoMetadata", 2160, "ret == 0", a1, *a1, v20);
        v36 = AVE_GetCurrTime();
        v21 = 4;
        v37 = AVE_Log_GetLevelStr(4);
        v68 = *a1;
        v69 = v20;
        v67 = a1;
        v38 = 2160;
        goto LABEL_32;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v49, 211, v50, "AVE_SEI", "GenerateTimingInfoMetadata", 2160, "ret == 0", a1, *a1, v20);
LABEL_20:
      v21 = 4;
      goto LABEL_43;
    }

    v52 = v72;
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v72 - 4);
    }

    v53 = *a6 + v52;
    *a6 = v53;
    a2 += v52;
    v72 = 0;
    if ((v19 & 0x10) == 0)
    {
LABEL_6:
      v20 = 0;
LABEL_7:
      v21 = 7;
      goto LABEL_43;
    }

    v54 = AVE_SEI_WriteBufferingPeriod(a2, a3 - v53, *(a4 + 24), *(a4 + 228), *(a1 + 5), &v72);
    if (!v54)
    {
      v66 = v72;
      if ((a1[2] & 2) != 0)
      {
        *a2 = bswap32(v72 - 4);
      }

      v20 = 0;
      *a6 += v66;
      a2 += v66;
      goto LABEL_7;
    }

    v20 = v54;
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v55 = AVE_Log_CheckConsole(0xD3u);
      v56 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(4);
      v58 = *a1;
      if (v55)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v56, 211, v57, "AVE_SEI", "GenerateTimingInfoMetadata", 2178, "ret == 0", a1, *a1, v20);
        v36 = AVE_GetCurrTime();
        v21 = 4;
        v37 = AVE_Log_GetLevelStr(4);
        v68 = *a1;
        v69 = v20;
        v67 = a1;
        v38 = 2178;
        goto LABEL_32;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v56, 211, v57, "AVE_SEI", "GenerateTimingInfoMetadata", 2178, "ret == 0", a1, *a1, v20);
      goto LABEL_20;
    }
  }

  else
  {
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v40 = AVE_Log_CheckConsole(0xD3u);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(4);
      v43 = *a1;
      v44 = *(a4 + 24);
      if (v40)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed\n", v41, 211, v42, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, v44);
        v45 = AVE_GetCurrTime();
        v21 = 4;
        v46 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed", v45, 211, v46, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, *(a4 + 24));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu No picture timing data for frame %lld, failed", v41, 211, v42, "AVE_SEI", "GenerateTimingInfoMetadata", 2154, "(activeBits & (1ULL << (AVE_SEI_Idx_PictureTiming))) != 0", a1, *a1, v44);
        v21 = 4;
      }
    }

    v20 = 4294966296;
  }

LABEL_43:
  if (AVE_Log_CheckLevel(0xD3u, v21))
  {
    v59 = AVE_Log_CheckConsole(0xD3u);
    v60 = AVE_GetCurrTime();
    v61 = AVE_Log_GetLevelStr(v21);
    v62 = *a1;
    if (v59)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d\n", v60, 211, v61, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v62, a2, a4, *(a4 + 24), a5, a6, v20);
      v63 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(v21);
      v70 = *(a4 + 24);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d", v63, 211, v64, "AVE_SEI", "GenerateTimingInfoMetadata", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p ret:%d", v60, 211, v61, "AVE_SEI", "GenerateTimingInfoMetadata", a1, v62);
    }
  }

  return v20;
}

uint64_t AVE_SEI::GenerateContentColorVolumeNALU(void *a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, int *a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v15 = *a1;
    if (v12)
    {
      if (a4)
      {
        v16 = *(a4 + 24);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v15, a2, a4, v16, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
      if (a4)
      {
        v17 = *(a4 + 24);
      }

      else
      {
        v17 = -1;
      }
    }

    else if (a4)
    {
      v17 = *(a4 + 24);
    }

    else
    {
      v17 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x20) == 0)
  {
    goto LABEL_19;
  }

  v18 = AVE_SEI_WriteContentColorVolume(a2, a3, *(a1 + 5), a6);
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      v19 = 0;
      *a2 = bswap32(*a6 - 4);
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
LABEL_20:
    v20 = 7;
    goto LABEL_21;
  }

  v19 = v18;
  v20 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    v24 = *a1;
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v25 = AVE_GetCurrTime();
      v20 = 4;
      v26 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v25, 211, v26, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI", "GenerateContentColorVolumeNALU", 2005, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v20))
  {
    v27 = AVE_Log_CheckConsole(0xD3u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v20);
    v30 = *a1;
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d\n", v28, 211, v29, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v30, a2, a4, *(a4 + 24), a5, a6, v19);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v20);
      v34 = *(a4 + 24);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d", v31, 211, v32, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %p %lld 0x%llx %p %d", v28, 211, v29, "AVE_SEI", "GenerateContentColorVolumeNALU", a1, v30);
    }
  }

  return v19;
}