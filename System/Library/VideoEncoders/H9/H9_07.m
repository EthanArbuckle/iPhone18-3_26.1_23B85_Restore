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

uint64_t H264VideoEncoderFrameReceiver::CollectSlicesInfo(H264VideoEncoderFrameReceiver *this, unsigned int a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v6 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %d %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %d %d", CurrTime);
  }

  if (a2 >= 0x1E)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v19 = AVE_Log_CheckConsole(0x2Eu);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d\n", v20, 46, v21, "AVE_FrameRecv", "CollectSlicesInfo", 521, "0 <= iPlaneNumber && iPlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", this, a2);
        v20 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v51 = v21;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong plane number %d", v20, 46, v51);
    }

    goto LABEL_46;
  }

  if (a3 >= 2)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v22 = AVE_Log_CheckConsole(0x2Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d\n", v23, 46, v24, "AVE_FrameRecv", "CollectSlicesInfo", 524, "0 <= iLayerID && iLayerID < ((2) < ((63 + 1)) ? (2) : ((63 + 1)))", this, a3);
        v23 = AVE_GetCurrTime();
        v52 = AVE_Log_GetLevelStr(4);
      }

      else
      {
        v52 = v24;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong layer ID %d", v23, 46, v52);
    }

    goto LABEL_46;
  }

  v9 = *(this + a2 + 3384);
  if (!v9)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v25 = AVE_Log_CheckConsole(0x2Eu);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d\n", v26, 46, v27, "AVE_FrameRecv", "CollectSlicesInfo", 528, "codedHeader != __null", this, a2);
        v28 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v28, 46, v53);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p empty coded header %d", v26, 46, v27);
      }
    }

    goto LABEL_46;
  }

  v10 = (this + 28032);
  v11 = v9 + 12 * a3;
  v12 = this + 12 * a3;
  v13 = *(v11 + 144);
  v14 = v12 + 29084;
  *(v12 + 7273) = *(v11 + 152);
  *(v12 + 29084) = v13;
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v15 = AVE_Log_CheckConsole(0x2Eu);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(7);
    v18 = v14[7];
    if (v15)
    {
      printf("%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d\n", v16, 46, v17, "AVE_FrameRecv", "CollectSlicesInfo", 531, a3, v14[7], *(v14 + 2));
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v55 = v14[7];
      v57 = *(v14 + 2);
    }

    else
    {
      v56 = v14[7];
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d Filler[%d] %d %d", v16, 46);
  }

  *(this + 7270) = 3 * *(v9 + 140);
  memcpy(this + 28032, (v9 + 280), 0x204uLL);
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v29 = AVE_Log_CheckConsole(0x2Eu);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(7);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s:%d slice number %d\n", v30, 46, v31, "AVE_FrameRecv", "CollectSlicesInfo", 539, *v10);
      v30 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v32 = *v10;
    }

    else
    {
      v54 = *v10;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d slice number %d", v30);
  }

  if (*v10 > 0x20)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v43 = AVE_Log_CheckConsole(0x2Eu);
      v44 = AVE_GetCurrTime();
      v45 = AVE_Log_GetLevelStr(4);
      if (v43)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d\n", v44, 46, v45, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", this, *v10);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p wrong slices %d", v44, 46, v45, "AVE_FrameRecv", "CollectSlicesInfo", 542, "0 <= m_sSliceInfo.iNum && m_sSliceInfo.iNum <= ((32) < (256) ? (32) : (256))", this, *v10);
    }

LABEL_46:
    v42 = 4294966295;
    goto LABEL_47;
  }

  if (*v10)
  {
    v33 = 0;
    v34 = (this + 28048);
    do
    {
      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v35 = AVE_Log_CheckConsole(0x2Eu);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(7);
        v38 = *(v34 - 3);
        v39 = *(v34 - 2);
        v40 = *(v34 - 1);
        v41 = *v34;
        if (v35)
        {
          printf("%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d\n", v36, 46, v37, "AVE_FrameRecv", "CollectSlicesInfo", 548, v33, v38, v39, *(v34 - 1), v41);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(7);
          v38 = *(v34 - 3);
          v39 = *(v34 - 2);
          v40 = *(v34 - 1);
          v41 = *v34;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d slice %2d offset %8d size %8d header offset %8d size %8d", v36, 46, v37, "AVE_FrameRecv", "CollectSlicesInfo", 548, v33, v38, v39, v40, v41);
      }

      ++v33;
      v34 += 4;
    }

    while (v33 < *v10);
    v42 = 0;
  }

  else
  {
    v42 = 0;
  }

LABEL_47:
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v46 = AVE_Log_CheckConsole(0x2Eu);
    v47 = AVE_GetCurrTime();
    v48 = AVE_Log_GetLevelStr(7);
    if (v46)
    {
      printf("%lld %d AVE %s: %s::%s Exit %d %d %d\n", v47, 46, v48, "AVE_FrameRecv", "CollectSlicesInfo", a2, a3, v42);
      v49 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v49);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %d %d %d", v47);
    }
  }

  return v42;
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

uint64_t H264VideoEncoderFrameReceiver::DecideSEIBits(void *a1, uint64_t *a2, _DWORD *a3)
{
  v6 = a1 + 39468;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", CurrTime, 211, LevelStr, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v10 = a1[17227];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", CurrTime, 211, LevelStr);
  }

  v11 = a3[614];
  if (v11)
  {
    v12 = v11 == 3;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || !a3[10])
  {
    if (a3[10])
    {
      v13 = 0x6B00000381;
    }

    else
    {
      v13 = 0x3FF000003E1;
    }

    v14 = 2;
    if (!a3[10])
    {
      v14 = 6;
    }
  }

  else
  {
    v13 = 0x6300000381;
    v14 = 2;
  }

  if (v6[156] == 1 && *v6 == 2)
  {
    v15 = v13 | v14;
    if (v11 == 3 || a3[7432] == 21)
    {
      v13 = v15 | 0x18;
    }

    else
    {
      v13 = v15 | 8;
    }
  }

  *a2 = v13;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v16 = AVE_Log_CheckConsole(0xD3u);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d\n", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits", a1, a1[17227], a2, a3, v13, 0);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(7);
      v19 = a1[17227];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p 0x%llx %d", v17, 211, v18, "AVE_FrameRecv", "DecideSEIBits");
  }

  return 0;
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
    v18 = MEMORY[0x29C24DF30](*(this + 3664), a2, 0x100004077774924, 0);
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

uint64_t H264VideoEncoderFrameReceiver::SendFrame(void *a1, uint64_t a2, void *a3, unsigned __int8 *a4)
{
  v836 = *MEMORY[0x29EDCA608];
  v6 = a1 + 17958;
  v7 = a1 + 17224;
  v8 = (a1 + 4868);
  v9 = (a1 + 3369);
  dataLength = 0;
  v833 = 0;
  v832 = 0;
  cf = 0;
  v10 = *(a1 + 9737);
  bzero(v828, 0x948uLL);
  if (AVE_Log_CheckLevel(0x2Eu, 6))
  {
    v14 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d\n", CurrTime, 46, LevelStr, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(6);
      v710 = v7[3];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d", CurrTime, 46, LevelStr, "AVE_FrameRecv");
  }

  if (!a2)
  {
    v819 = 3758097084;
    v818 = v9;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v26 = AVE_Log_CheckConsole(3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (!v26)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL");
        goto LABEL_45;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL\n", v27, 3, v28, "SendFrame", 2137, "Frame != __null");
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL");
    }

LABEL_25:
    v26 = 0;
LABEL_45:
    v53 = 0;
    v35 = 0;
    goto LABEL_46;
  }

  if (*(a2 + 3180) >= 0x1Eu)
  {
    v819 = 3758097084;
    v818 = v9;
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v26 = AVE_Log_CheckConsole(0x2Eu);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (!v26)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v29, 46);
        goto LABEL_45;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v29, 46, v30, "AVE_FrameRecv", "SendFrame", 2140, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      v31 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      v32 = *(a2 + 3180);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v31, 46);
    }

    goto LABEL_25;
  }

  v17 = a4;
  if (!a1[3669])
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v47 = a2;
      v48 = AVE_Log_CheckConsole(0x2Eu);
      v49 = AVE_GetCurrTime();
      v50 = AVE_Log_GetLevelStr(7);
      if (v48)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v49, 46, v50);
        v51 = AVE_GetCurrTime();
        sampleSizeArraye = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v51, 46, sampleSizeArraye);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v49, 46, v50);
      }

      a2 = v47;
    }

    AVE_SEI::DeleteFrame(v6[4], *(a2 + 40));
    H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, a2, 0);
    v57 = 0;
    goto LABEL_98;
  }

  v798 = v10;
  v18 = *v8;
  v19 = a4 >= 0;
  v816 = a2;
  v817 = v7;
  v20 = a2;
  v806 = v8;
  v818 = v9;
  if ((*(v8 + 77) < 2u || *(a2 + 44)) && (v21 = v9[580], (v21 & 0x80000000) == 0) && v21 == *(a2 + 40) - 1 && a1[3639] && v9[542] >= 1)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 8))
    {
      v22 = AVE_Log_CheckConsole(0x2Eu);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(8);
      v25 = a1[3639];
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d\n", v23, 46, v24, "AVE_FrameRecv", "SendFrame", 2169, a1, v817[3], a1[3639], v9[542]);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(8);
        v730 = a1[3639];
        v753 = v9[542];
        v721 = v817[3];
        v20 = a2;
      }

      else
      {
        v738 = a1[3639];
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d", v23, 46, v24, "AVE_FrameRecv");
    }

    if (AVE_EncFrameInfo_AddBuf(a1[3639], v9[542], 1u, v828))
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v26 = AVE_Log_CheckConsole(0x2Eu);
        v213 = AVE_GetCurrTime();
        v214 = AVE_Log_GetLevelStr(4);
        v90 = v817;
        v215 = v817[3];
        v216 = *(v20 + 40);
        v217 = a1[3639];
        v218 = v9[542];
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p\n", v213, 46, v214, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v215, v216, v217, v9[542], v828);
          v219 = AVE_GetCurrTime();
          v220 = AVE_Log_GetLevelStr(4);
          a2 = v20;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p", v219, 46, v220, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v817[3], *(v20 + 40), a1[3639], v9[542], v828);
          v26 = 0;
        }

        else
        {
          a2 = v20;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p", v213, 46, v214, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v215, v216, v217, v9[542], v828);
        }

        v53 = 0;
        v35 = 0;
        v819 = 0;
        goto LABEL_303;
      }

      v26 = 0;
      v53 = 0;
      v35 = 0;
      v819 = 0;
      a2 = v20;
LABEL_257:
      v7 = v817;
      goto LABEL_46;
    }

    v793 = v9[542];
    dataLength = v793;
    v26 = 1;
    v17 = a4;
  }

  else
  {
    v26 = 0;
    v793 = 0;
  }

  a2 = v20;
  v803 = v20 + 29688;
  v33 = v19 & v18;
  if (v17)
  {
    v34 = v19 & v18;
  }

  else
  {
    v34 = 0;
  }

  v811 = v26;
  v794 = v34;
  if (v34)
  {
    v35 = 0;
    v7 = v817;
  }

  else
  {
    AVE_SEI::SetRCMode(v6[4], *(v20 + 40), v818[719]);
    AVE_SEI::SetThroughputMode(v6[4], *(v20 + 40), v818[778]);
    AVE_SEI::SetBitrate(v6[4], *(v20 + 40), v818[720]);
    if ((*(a1 + 29819) & 0x80) != 0)
    {
      v52 = v818[718];
    }

    else
    {
      v52 = -1;
    }

    AVE_SEI::SetLookAheadInfo(v6[4], *(v20 + 40), v52);
    if (*(v8 + 131) == 2)
    {
      if (v818[758] <= 1)
      {
        v87 = v818[750] >= 3 && v818[751] > 2;
      }

      else
      {
        v87 = 1;
      }

      v100 = *(v20 + 2456);
      if (v100 > 6)
      {
        v101 = 0;
      }

      else
      {
        v101 = dword_295650DD8[v100];
      }

      AVE_SEI::SetActiveParameterSets(v6[4], *(v20 + 40), *(a1 + 14459));
      AVE_SEI::SetPictureTiming(v6[4], *(v20 + 40), v101, v87, *(v20 + 2464), *(v20 + 29728));
      AVE_SEI::SetBufferingPeriod(v6[4], *(v20 + 40), *(a1 + 14459));
      v26 = v811;
    }

    AVE_SEI::SetContentColorVolume(v6[4], *(v20 + 40));
    AVE_SEI::SetMCTFTag(v6[4], *(v20 + 40), *(v20 + 4672), *(v20 + 4656), *(v20 + 4664), *(v20 + 4680), *(v20 + 4688), *(v20 + 4708), *(v20 + 4704), *(v20 + 6116));
    v102 = AVE_SEI::EstimateSEISize(v6[4], *(v20 + 40), -1);
    v35 = malloc_type_malloc(v102, 0x100004077774924uLL);
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v809 = v35;
      v103 = a3;
      v104 = AVE_Log_CheckConsole(0xD3u);
      v105 = AVE_GetCurrTime();
      v106 = AVE_Log_GetLevelStr(8);
      v107 = v817[3];
      if (v104)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Allocating %d bytes for SEI buffer\n", v105, 211, v106, "AVE_FrameRecv", "SendFrame", 2254, a1, v817[3], v102);
        v105 = AVE_GetCurrTime();
        v106 = AVE_Log_GetLevelStr(8);
        v26 = v811;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Allocating %d bytes for SEI buffer", v105, 211, v106, "AVE_FrameRecv", "SendFrame", 2254, a1, v817[3], v102);
      a3 = v103;
      a2 = v816;
      v35 = v809;
    }

    v7 = v817;
    if (!v35)
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        v53 = 0;
        v35 = 0;
        v819 = 3758097085;
        goto LABEL_46;
      }

      v813 = a3;
      v115 = AVE_Log_CheckConsole(3u);
      v116 = AVE_GetCurrTime();
      v117 = AVE_Log_GetLevelStr(4);
      v118 = *(a2 + 40);
      if (v115)
      {
        v119 = v102;
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d\n", v116, 3, v117, "SendFrame", 2258, "pSEIBuffer != __null", *(a2 + 40), v102);
        v120 = AVE_GetCurrTime();
        v121 = AVE_Log_GetLevelStr(4);
        a2 = v816;
        v7 = v817;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d", v120, 3, v121, "SendFrame", 2258, "pSEIBuffer != __null", *(v816 + 40), v119);
        v53 = 0;
        v35 = 0;
        v819 = 3758097085;
LABEL_122:
        a3 = v813;
        v26 = v811;
        goto LABEL_46;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d", v116, 3, v117, "SendFrame", 2258, "pSEIBuffer != __null", *(a2 + 40), v102);
      v53 = 0;
      v35 = 0;
      v819 = 3758097085;
      v26 = v811;
      goto LABEL_257;
    }

    v819 = H264VideoEncoderFrameReceiver::AddAllSEIs(a1, a2, v35, v102, v33, a4);
    if (v819)
    {
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        v53 = 0;
        goto LABEL_46;
      }

      v108 = v817;
      v805 = v6;
      v109 = AVE_Log_CheckConsole(3u);
      v110 = AVE_GetCurrTime();
      v111 = AVE_Log_GetLevelStr(4);
      v112 = *(a2 + 40);
      if (v109)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d\n", v110, 3, v111, "SendFrame", 2264, "err == 0", *(a2 + 40), v819);
        v113 = AVE_GetCurrTime();
        v114 = AVE_Log_GetLevelStr(4);
        v7 = v817;
        v26 = v811;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d", v113, 3, v114, "SendFrame", 2264, "err == 0", *(a2 + 40), v819);
        v53 = 0;
LABEL_228:
        v6 = v805;
        goto LABEL_46;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d", v110, 3, v111, "SendFrame", 2264, "err == 0", *(a2 + 40), v819);
      v53 = 0;
LABEL_129:
      v6 = v805;
      goto LABEL_312;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v122 = AVE_Log_CheckConsole(0x2Eu);
      v123 = AVE_GetCurrTime();
      v124 = AVE_Log_GetLevelStr(7);
      v125 = v817[3];
      v126 = *(v817 + 8);
      if (v122)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer\n", v123, 46, v124, "AVE_FrameRecv", "SendFrame", 2267, a1, v817[3], v126);
        v127 = AVE_GetCurrTime();
        v128 = AVE_Log_GetLevelStr(7);
        v7 = v817;
        v26 = v811;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer", v127, 46, v128, "AVE_FrameRecv", "SendFrame", 2267, a1, v817[3], *(v817 + 8));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer", v123, 46, v124, "AVE_FrameRecv", "SendFrame", 2267, a1, v817[3], v126);
        v7 = v817;
      }
    }

    v146 = *(v7 + 8);
    if (v146 >= 1)
    {
      if (AVE_EncFrameInfo_AddBuf(v35, v146, 2u, v828))
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v812 = a3;
          v147 = v7;
          v148 = AVE_Log_CheckConsole(0x2Eu);
          v149 = AVE_GetCurrTime();
          v150 = AVE_Log_GetLevelStr(4);
          v151 = v147[3];
          v152 = *(a2 + 40);
          v153 = *(v147 + 8);
          if (!v148)
          {
            v108 = v147;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p", v149, 46, v150, "AVE_FrameRecv", "SendFrame", 2275, "ret == 0", a1, v151, v152, v35, *(v147 + 8), v828);
            v53 = 0;
            v819 = 0;
            goto LABEL_312;
          }

          v777 = *(v147 + 8);
          v96 = v6;
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p\n", v149, 46, v150, "AVE_FrameRecv", "SendFrame", 2275, "ret == 0", a1, v151, v152, v35, v777, v828);
          v97 = AVE_GetCurrTime();
          v154 = AVE_Log_GetLevelStr(4);
          v776 = *(v817 + 8);
          v781 = v828;
          v754 = *(a2 + 40);
          v771 = v35;
          v723 = a1;
          v731 = v817[3];
          v703 = 2275;
          v712 = "ret == 0";
          v26 = v811;
          v7 = v817;
          sampleSizeArray = v154;
          v99 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p";
LABEL_148:
          v6 = v96;
          syslog(3, v99, v97, 46, sampleSizeArray, "AVE_FrameRecv", "SendFrame", v703, v712, v723, v731, v754, v771, v776, v781);
LABEL_160:
          v53 = 0;
LABEL_161:
          v819 = 0;
LABEL_162:
          a3 = v812;
          goto LABEL_46;
        }

LABEL_149:
        v53 = 0;
        goto LABEL_150;
      }

      dataLength += *(v7 + 8);
    }

    v17 = a4;
  }

  allocator = v19 & v18;
  if ((v33 & 1) == 0)
  {
    v808 = v35;
    if (v818[270] >= 1)
    {
      v64 = 0;
      v65 = 0;
      memoryBlock = a1 + 7137;
      v66 = (a1 + 3503);
      v813 = a3;
      v804 = v6;
      while (1)
      {
        v67 = v66[6];
        if (v67 >= 1)
        {
          v68 = a1[*(a2 + 3180) + 3444];
          if (!v68)
          {
            if (!AVE_Log_CheckLevel(0x2Eu, 4))
            {
              goto LABEL_141;
            }

            v129 = AVE_Log_CheckConsole(0x2Eu);
            v130 = AVE_GetCurrTime();
            v131 = AVE_Log_GetLevelStr(4);
            v108 = v817;
            v132 = v817[3];
            v133 = *(a2 + 3180);
            v35 = v808;
            if (v129)
            {
              v7 = v817;
              printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d\n", v130, 46, v131, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v132, *(a2 + 3180), v65);
              v134 = AVE_GetCurrTime();
              v135 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v134, 46, v135, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v817[3], *(a2 + 3180), v65);
              v53 = 0;
              v819 = 0;
              goto LABEL_122;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v130, 46, v131, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v132, *(a2 + 3180), v65);
            v53 = 0;
            v819 = 0;
            a3 = v813;
LABEL_311:
            v26 = v811;
LABEL_312:
            v7 = v108;
            goto LABEL_46;
          }

          v69 = v66;
          v70 = a2;
          if (AVE_Log_CheckLevel(0x2Eu, 8))
          {
            v71 = AVE_Log_CheckConsole(0x2Eu);
            v72 = AVE_GetCurrTime();
            v73 = AVE_Log_GetLevelStr(8);
            v74 = v817[3];
            if (v71)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v72, 46, v73, "AVE_FrameRecv", "SendFrame", 2355, a1, v74, v65, (v68 + v64), v67);
              v75 = AVE_GetCurrTime();
              v76 = AVE_Log_GetLevelStr(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v75, 46, v76, "AVE_FrameRecv", "SendFrame", 2355, a1, v817[3], v65, (v68 + v64), v67);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v72, 46, v73, "AVE_FrameRecv", "SendFrame", 2355, a1, v74, v65, (v68 + v64), v67);
            }

            v70 = v816;
            v6 = v804;
          }

          if (AVE_EncFrameInfo_AddBuf((v68 + v64), v67, 3u, v828))
          {
            a2 = v70;
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v136 = (v68 + v64);
              v137 = AVE_Log_CheckConsole(0x2Eu);
              v138 = AVE_GetCurrTime();
              v139 = AVE_Log_GetLevelStr(4);
              v7 = v817;
              if (v137)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v138, 46, v139, "AVE_FrameRecv", "SendFrame", 2362, "ret == 0", a1, v817[3], *(v70 + 40), v136, v67, v828);
                v138 = AVE_GetCurrTime();
                v139 = AVE_Log_GetLevelStr(4);
                v755 = *(v70 + 40);
                v732 = v817[3];
                v7 = v817;
                a2 = v70;
              }

              else
              {
                v763 = *(v70 + 40);
                v744 = v817[3];
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v138, 46, v139, "AVE_FrameRecv", "SendFrame", 2362, "ret == 0");
LABEL_314:
              v53 = 0;
              v819 = 0;
              a3 = v813;
LABEL_436:
              v26 = v811;
LABEL_437:
              v35 = v808;
              goto LABEL_46;
            }

LABEL_141:
            v53 = 0;
            v819 = 0;
            a3 = v813;
            v7 = v817;
            goto LABEL_436;
          }

          dataLength += v67;
          a2 = v70;
          v66 = v69;
        }

        v77 = v66[4];
        if (v77 < 1)
        {
          a3 = v813;
          v7 = v817;
        }

        else
        {
          v78 = a1[*(a2 + 3180) + 3309];
          if (!v78)
          {
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v140 = AVE_Log_CheckConsole(0x2Eu);
              v141 = AVE_GetCurrTime();
              v142 = AVE_Log_GetLevelStr(4);
              v7 = v817;
              v143 = *(a2 + 3180);
              v35 = v808;
              if (v140)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v141, 46, v142, "AVE_FrameRecv", "SendFrame", 2375, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v817[3], *(a2 + 3180), v65);
                v144 = AVE_GetCurrTime();
                v145 = AVE_Log_GetLevelStr(4);
                v756 = *(a2 + 3180);
                v733 = v817[3];
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v144, 46, v145, "AVE_FrameRecv");
              }

              else
              {
                v764 = *(a2 + 3180);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v141, 46, v142, "AVE_FrameRecv");
              }

              v53 = 0;
              v819 = 0;
              a3 = v813;
              v26 = v811;
              goto LABEL_46;
            }

            goto LABEL_141;
          }

          v79 = (v78 + v66[3]);
          if (AVE_Log_CheckLevel(0x2Eu, 8))
          {
            v80 = v66;
            v81 = AVE_Log_CheckConsole(0x2Eu);
            v82 = AVE_GetCurrTime();
            v83 = AVE_Log_GetLevelStr(8);
            v84 = v817[3];
            if (v81)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v82, 46, v83, "AVE_FrameRecv", "SendFrame", 2377, a1, v84, v65, v79, v77);
              v85 = AVE_GetCurrTime();
              v86 = AVE_Log_GetLevelStr(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v85, 46, v86, "AVE_FrameRecv", "SendFrame", 2377, a1, v817[3], v65, v79, v77);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v82, 46, v83, "AVE_FrameRecv", "SendFrame", 2377, a1, v84, v65, v79, v77);
            }

            a2 = v816;
            v66 = v80;
          }

          if (AVE_EncFrameInfo_AddBuf(v79, v77, 3u, v828))
          {
            v155 = v817;
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v156 = AVE_Log_CheckConsole(0x2Eu);
              v157 = AVE_GetCurrTime();
              v158 = AVE_Log_GetLevelStr(4);
              v159 = v817[3];
              v160 = *(a2 + 40);
              if (v156)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p\n", v157, 46, v158, "AVE_FrameRecv", "SendFrame", 2383, "ret == 0", a1, v159, v160, v79, v77, v828);
                v161 = AVE_GetCurrTime();
                v162 = AVE_Log_GetLevelStr(4);
                v778 = v77;
                v782 = v828;
                v757 = *(a2 + 40);
                v772 = v79;
                v724 = a1;
                v734 = v817[3];
                v7 = v817;
                v704 = 2383;
                sampleSizeArraya = v162;
                v163 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p";
                goto LABEL_255;
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", v157, 46, v158, "AVE_FrameRecv", "SendFrame", 2383, "ret == 0", a1, v159, v160, v79, v77, v828);
            }

            v53 = 0;
            v819 = 0;
            a3 = v813;
            v26 = v811;
            v35 = v808;
            goto LABEL_319;
          }

          v7 = v817;
          if ((*(a2 + 9) & 1) != 0 && AVE_Crypto_AddInfo(dataLength, v77, memoryBlock))
          {
            if (!AVE_Log_CheckLevel(0x2Eu, 4))
            {
              goto LABEL_314;
            }

            v272 = AVE_Log_CheckConsole(0x2Eu);
            v273 = AVE_GetCurrTime();
            v274 = AVE_Log_GetLevelStr(4);
            if (!v272)
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", v273, 46, v274, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0");
              goto LABEL_314;
            }

            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v273, 46, v274, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0", a1, v817[3], *(a2 + 40), v65, dataLength, v77, memoryBlock);
            v161 = AVE_GetCurrTime();
            v275 = AVE_Log_GetLevelStr(4);
            v782 = v77;
            v786 = a1 + 28548;
            v772 = v65;
            v778 = dataLength;
            v734 = v817[3];
            v757 = *(a2 + 40);
            v724 = a1;
            v6 = v804;
            v704 = 2391;
            v163 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p";
            sampleSizeArraya = v275;
LABEL_255:
            syslog(3, v163, v161, 46, sampleSizeArraya, "AVE_FrameRecv", "SendFrame", v704, "ret == 0", v724, v734, v757, v772, v778, v782, v786);
            goto LABEL_314;
          }

          dataLength += v77;
          LODWORD(v77) = v66[4];
          a3 = v813;
        }

        ++v65;
        v66 += 4;
        v64 += 1024;
        if (v65 >= v818[270])
        {
          goto LABEL_170;
        }
      }
    }

    LODWORD(v77) = 0;
    v66 = 0;
LABEL_170:
    v26 = v811;
    if (!dataLength)
    {
      goto LABEL_247;
    }

    goto LABEL_171;
  }

  v36 = &a1[2 * v17 + 3504] + 1;
  v37 = v36[3];
  if (v37 >= 1)
  {
    v38 = a1[*(a2 + 3180) + 3444];
    if (v38)
    {
      v812 = a3;
      v39 = (v38 + (v17 << 10));
      if (AVE_Log_CheckLevel(0x2Eu, 8))
      {
        v807 = v35;
        v40 = AVE_Log_CheckConsole(0x2Eu);
        v41 = v7;
        v42 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(8);
        if (v40)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v42, 46, v43, "AVE_FrameRecv", "SendFrame", 2297, a1, v41[3], a4, v39, v37);
          v44 = v39;
          v45 = AVE_GetCurrTime();
          v46 = AVE_Log_GetLevelStr(8);
          v722 = v41[3];
          v26 = v811;
          blockBufferOut = v45;
          v39 = v44;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", blockBufferOut, 46, v46, "AVE_FrameRecv", "SendFrame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v42, 46, v43, "AVE_FrameRecv", "SendFrame");
        }

        v7 = v41;
        a2 = v816;
        v35 = v807;
      }

      if (AVE_EncFrameInfo_AddBuf(v39, v37, 3u, v828))
      {
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v805 = v6;
          v164 = AVE_Log_CheckConsole(0x2Eu);
          v165 = AVE_GetCurrTime();
          v166 = AVE_Log_GetLevelStr(4);
          if (v164)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v165, 46, v166, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0", a1, v7[3], *(a2 + 40), v39, v37, v828);
            v165 = AVE_GetCurrTime();
            v166 = AVE_Log_GetLevelStr(4);
            v758 = *(a2 + 40);
            v735 = v7[3];
            v26 = v811;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v165, 46, v166, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0");
          v53 = 0;
          v819 = 0;
          a3 = v812;
          goto LABEL_228;
        }

        goto LABEL_160;
      }

      dataLength += v37;
      goto LABEL_164;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v812 = a3;
      v90 = v7;
      v91 = AVE_Log_CheckConsole(0x2Eu);
      v92 = AVE_GetCurrTime();
      v93 = AVE_Log_GetLevelStr(4);
      v94 = v90[3];
      v95 = *(a2 + 3180);
      if (!v91)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v92, 46, v93, "AVE_FrameRecv", "SendFrame", 2295, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v94, *(a2 + 3180), a4);
        v53 = 0;
        v819 = 0;
LABEL_303:
        v7 = v90;
        goto LABEL_46;
      }

      v7 = v90;
      v96 = v6;
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d\n", v92, 46, v93, "AVE_FrameRecv", "SendFrame", 2295, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v94, *(a2 + 3180), a4);
      v97 = AVE_GetCurrTime();
      v98 = AVE_Log_GetLevelStr(4);
      v754 = *(a2 + 3180);
      v771 = a4;
      v723 = a1;
      v731 = v90[3];
      v703 = 2295;
      v712 = "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null";
      v26 = v811;
      sampleSizeArray = v98;
      v99 = "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d";
      goto LABEL_148;
    }

    goto LABEL_149;
  }

LABEL_164:
  v808 = v35;
  v167 = v36 + 1;
  v77 = v36[1];
  if (v77 < 1)
  {
    v66 = v36 + 1;
    goto LABEL_170;
  }

  v168 = a1[*(a2 + 3180) + 3309];
  if (!v168)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v208 = v26;
      v90 = v7;
      v209 = AVE_Log_CheckConsole(0x2Eu);
      v210 = AVE_GetCurrTime();
      v211 = AVE_Log_GetLevelStr(4);
      v212 = *(a2 + 3180);
      if (v209)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v210, 46, v211, "AVE_FrameRecv", "SendFrame", 2315, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v90[3], *(a2 + 3180), a4);
        v210 = AVE_GetCurrTime();
        v211 = AVE_Log_GetLevelStr(4);
        v759 = *(a2 + 3180);
        v737 = v90[3];
        v208 = v811;
      }

      else
      {
        v762 = *(a2 + 3180);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v210, 46, v211, "AVE_FrameRecv");
      v53 = 0;
      v819 = 0;
      v35 = v808;
      v26 = v208;
      goto LABEL_303;
    }

    goto LABEL_321;
  }

  v169 = (v168 + *v36);
  v66 = v36 + 1;
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v814 = a3;
    v170 = v7;
    v171 = AVE_Log_CheckConsole(0x2Eu);
    v172 = AVE_GetCurrTime();
    v173 = AVE_Log_GetLevelStr(8);
    if (v171)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v172, 46, v173, "AVE_FrameRecv", "SendFrame", 2317, a1, v170[3], a4, v169, v77);
      v172 = AVE_GetCurrTime();
      v173 = AVE_Log_GetLevelStr(8);
      v725 = v170[3];
      v66 = v167;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v172, 46, v173, "AVE_FrameRecv", "SendFrame");
    a3 = v814;
    a2 = v816;
    v7 = v170;
    v26 = v811;
  }

  if (AVE_EncFrameInfo_AddBuf(v169, v77, 3u, v828))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v805 = v6;
      v254 = AVE_Log_CheckConsole(0x2Eu);
      v255 = AVE_GetCurrTime();
      v256 = AVE_Log_GetLevelStr(4);
      v257 = v7[3];
      v258 = *(a2 + 40);
      if (!v254)
      {
        v108 = v7;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", v255, 46, v256, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v257, v258, v169, v77, v828);
        v53 = 0;
        v819 = 0;
        v6 = v805;
        v35 = v808;
        goto LABEL_311;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p\n", v255, 46, v256, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v257, v258, v169, v77, v828);
      v259 = AVE_GetCurrTime();
      v260 = AVE_Log_GetLevelStr(4);
      v26 = v811;
      a2 = v816;
      blockBufferOuta = v259;
      v7 = v817;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", blockBufferOuta, 46, v260, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v817[3], *(v816 + 40), v169, v77, v828);
      v53 = 0;
      v819 = 0;
      goto LABEL_395;
    }

    goto LABEL_321;
  }

  if ((*(a2 + 9) & 1) != 0 && AVE_Crypto_AddInfo(dataLength, v77, a1 + 7137))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v805 = v6;
      v261 = AVE_Log_CheckConsole(0x2Eu);
      v262 = AVE_GetCurrTime();
      v263 = AVE_Log_GetLevelStr(4);
      if (v261)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v262, 46, v263, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0", a1, v7[3], *(a2 + 40), a4, dataLength, v77, a1 + 28548);
        v264 = AVE_GetCurrTime();
        v265 = AVE_Log_GetLevelStr(4);
        v741 = v817[3];
        v760 = *(v816 + 40);
        blockBufferOutb = v264;
        a2 = v816;
        v7 = v817;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", blockBufferOutb, 46, v265, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", v262, 46, v263, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0");
      }

      v53 = 0;
      v819 = 0;
      goto LABEL_435;
    }

LABEL_321:
    v53 = 0;
LABEL_322:
    v819 = 0;
    goto LABEL_437;
  }

  dataLength += v77;
  LODWORD(v77) = *v66;
  if (!dataLength)
  {
LABEL_247:
    v819 = 3758097084;
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v266 = AVE_Log_CheckConsole(0x2Eu);
      v267 = AVE_GetCurrTime();
      v268 = AVE_Log_GetLevelStr(4);
      v269 = v7[3];
      if (v266)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size\n", v267, 46, v268, "AVE_FrameRecv", "SendFrame", 2402, "totalSize != 0", a1, v7[3], *(a2 + 40));
        v270 = AVE_GetCurrTime();
        v271 = AVE_Log_GetLevelStr(4);
        v742 = v7[3];
        v761 = *(a2 + 40);
        v26 = v811;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size", v270, 46, v271, "AVE_FrameRecv");
      }

      else
      {
        v743 = v7[3];
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size", v267, 46, v268, "AVE_FrameRecv");
      }
    }

    v53 = 0;
    goto LABEL_437;
  }

LABEL_171:
  if (v798 - 1 == a4)
  {
    v174 = 0;
  }

  else
  {
    v174 = allocator;
  }

  if (v174)
  {
    v788 = v174;
    v812 = a3;
    v53 = 0;
    goto LABEL_176;
  }

  v200 = v818[532];
  if (!v200)
  {
    v788 = v174;
    v53 = 0;
    goto LABEL_203;
  }

  if (-1431655765 * v200 >= 0x55555556)
  {
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_321;
    }

    v201 = AVE_Log_CheckConsole(0x2Eu);
    v202 = AVE_GetCurrTime();
    v203 = AVE_Log_GetLevelStr(4);
    v204 = *(a2 + 40);
    if (!v201)
    {
      v765 = *(a2 + 40);
      v774 = v818[532];
      v745 = v7[3];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d", v202, 46, v203, "AVE_FrameRecv");
      goto LABEL_321;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d\n", v202, 46, v203, "AVE_FrameRecv", "SendFrame", 2412, "m_numCABACzeroWordToBeInserted % 3 == 0", a1, v7[3], *(a2 + 40), v818[532]);
    v205 = AVE_GetCurrTime();
    v206 = AVE_Log_GetLevelStr(4);
    v752 = *(a2 + 40);
    v770 = v818[532];
    v726 = a1;
    v736 = v7[3];
    v705 = 2412;
    v713 = "m_numCABACzeroWordToBeInserted % 3 == 0";
    v26 = v811;
    sampleSizeArrayb = v206;
    v207 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d";
LABEL_189:
    syslog(3, v207, v205, 46, sampleSizeArrayb, "AVE_FrameRecv", "SendFrame", v705, v713, v726, v736, v752, v770);
    goto LABEL_321;
  }

  if (!v66)
  {
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_321;
    }

    v320 = AVE_Log_CheckConsole(0x2Eu);
    v321 = AVE_GetCurrTime();
    v322 = AVE_Log_GetLevelStr(4);
    v323 = v7[3];
    if (!v320)
    {
      v749 = v7[3];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld", v321, 46, v322);
      goto LABEL_321;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld\n", v321, 46, v322, "AVE_FrameRecv", "SendFrame", 2414, "piLastOutputSliceSize != __null", a1, v7[3]);
    v205 = AVE_GetCurrTime();
    v324 = AVE_Log_GetLevelStr(4);
    v726 = a1;
    v736 = v7[3];
    v705 = 2414;
    v713 = "piLastOutputSliceSize != __null";
    v26 = v811;
    sampleSizeArrayb = v324;
    v207 = "%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld";
    goto LABEL_189;
  }

  v788 = v174;
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v797 = v66;
    v248 = AVE_Log_CheckConsole(0x2Eu);
    v249 = AVE_GetCurrTime();
    v250 = AVE_Log_GetLevelStr(8);
    v251 = v818[532];
    if (v248)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld\n", v249, 46, v250, "AVE_FrameRecv", "SendFrame", 2417, a1, v7[3], v818[532], dataLength);
      v252 = AVE_GetCurrTime();
      v253 = AVE_Log_GetLevelStr(8);
      v740 = v818[532];
      v728 = v7[3];
      v26 = v811;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld", v252, 46, v253, "AVE_FrameRecv");
    }

    else
    {
      v748 = v818[532];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld", v249, 46, v250, "AVE_FrameRecv");
    }

    v66 = v797;
  }

  v365 = malloc_type_malloc(v818[532], 0x100004077774924uLL);
  if (!v365)
  {
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_321;
    }

    v369 = AVE_Log_CheckConsole(0x2Eu);
    v370 = AVE_GetCurrTime();
    v371 = AVE_Log_GetLevelStr(4);
    v372 = *(a2 + 3180);
    if (!v369)
    {
      v768 = *(a2 + 3180);
      v775 = v818[532];
      v750 = v7[3];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d", v370, 46, v371, "AVE_FrameRecv");
      goto LABEL_321;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d\n", v370, 46, v371, "AVE_FrameRecv", "SendFrame", 2423, "piCABACZeroWordInsertBuf != __null", a1, v7[3], *(a2 + 3180), v818[532]);
    v205 = AVE_GetCurrTime();
    v373 = AVE_Log_GetLevelStr(4);
    v752 = *(a2 + 3180);
    v770 = v818[532];
    v726 = a1;
    v736 = v7[3];
    v705 = 2423;
    v713 = "piCABACZeroWordInsertBuf != __null";
    v26 = v811;
    sampleSizeArrayb = v373;
    v207 = "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d";
    goto LABEL_189;
  }

  v53 = v365;
  if (v818[532])
  {
    v366 = 0;
    v367 = v365 + 2;
    do
    {
      *(v367 - 1) = 0;
      *v367 = 3;
      v367 += 3;
      v366 += 3;
      v368 = v818[532];
    }

    while (v366 < v368);
  }

  else
  {
    LODWORD(v368) = 0;
  }

  if (AVE_EncFrameInfo_AddBuf(v365, v368, 4u, v828))
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v374 = v26;
      v375 = AVE_Log_CheckConsole(0x2Eu);
      v376 = a2;
      v377 = AVE_GetCurrTime();
      v378 = AVE_Log_GetLevelStr(4);
      v379 = v7[3];
      v380 = *(v376 + 40);
      v381 = v818[532];
      if (!v375)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p", v377, 46, v378, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v379, v380, v53, v818[532], v828);
        v819 = 0;
        v35 = v808;
        a2 = v376;
        v26 = v374;
        goto LABEL_46;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p\n", v377, 46, v378, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v379, v380, v53, v818[532], v828);
      v382 = AVE_GetCurrTime();
      v383 = AVE_Log_GetLevelStr(4);
      v26 = v811;
      a2 = v816;
      v7 = v817;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p", v382, 46, v383, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v817[3], *(v816 + 40), v53, v818[532], v828);
      v819 = 0;
      goto LABEL_437;
    }

    goto LABEL_322;
  }

  v384 = v66;
  v385 = v7;
  v386 = v818;
  dataLength += v818[532];
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v387 = AVE_Log_CheckConsole(0x2Eu);
    v388 = AVE_GetCurrTime();
    v389 = AVE_Log_GetLevelStr(8);
    v390 = v385[3];
    v391 = *v384;
    if (v387)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes\n", v388, 46, v389, "AVE_FrameRecv", "SendFrame", 2440, a1, v385[3], v391);
      v392 = AVE_GetCurrTime();
      v393 = AVE_Log_GetLevelStr(8);
      v26 = v811;
      v386 = v818;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes", v392, 46, v393, "AVE_FrameRecv", "SendFrame", 2440, a1, v385[3], *v384);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes", v388, 46, v389, "AVE_FrameRecv", "SendFrame", 2440, a1, v385[3], v391);
      v386 = v818;
    }
  }

  LODWORD(v77) = v386[532] + v77;
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v440 = AVE_Log_CheckConsole(0x2Eu);
    v441 = AVE_GetCurrTime();
    v442 = AVE_Log_GetLevelStr(8);
    v443 = v385[3];
    v444 = *v384;
    if (v440)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes\n", v441, 46, v442, "AVE_FrameRecv", "SendFrame", 2444, a1, v443, v444);
      v445 = AVE_GetCurrTime();
      v446 = AVE_Log_GetLevelStr(8);
      v26 = v811;
      blockBufferOutc = v445;
      v66 = v384;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes", blockBufferOutc, 46, v446, "AVE_FrameRecv", "SendFrame", 2444, a1, v817[3], *v384);
      a2 = v816;
      goto LABEL_203;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes", v441, 46, v442, "AVE_FrameRecv", "SendFrame", 2444, a1, v443, v444);
    a2 = v816;
  }

  else
  {
    a2 = v816;
  }

  v66 = v384;
LABEL_203:
  v812 = a3;
  if (*(v806 + 77) >= 2u && !*(a2 + 44))
  {
LABEL_176:
    v795 = v66;
    if (v806[682] != 1)
    {
      goto LABEL_180;
    }

    v175 = v794;
    if (*(v806 + 299) < 1)
    {
      v175 = 1;
    }

    if (v175)
    {
      goto LABEL_180;
    }

    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v243 = AVE_Log_CheckConsole(0x2Eu);
      v244 = AVE_GetCurrTime();
      v245 = AVE_Log_GetLevelStr(7);
      if (v243)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d\n", v244, 46, v245, "AVE_FrameRecv", "SendFrame", 2505, a1, v817[3], *(v816 + 40), a1 + 39627, *(v806 + 299));
        v246 = AVE_GetCurrTime();
        v247 = AVE_Log_GetLevelStr(7);
        v773 = *(v806 + 299);
        v727 = v817[3];
        v739 = *(v816 + 40);
        v26 = v811;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v246, 46, v247, "AVE_FrameRecv", "SendFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v244, 46, v245, "AVE_FrameRecv", "SendFrame");
      }
    }

    v325 = a1 + 39627;
    if (AVE_EncFrameInfo_AddBuf(a1 + 39627, *(v806 + 299), 6u, v828))
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v326 = AVE_Log_CheckConsole(0x2Eu);
        v327 = AVE_GetCurrTime();
        v328 = AVE_Log_GetLevelStr(4);
        v329 = v817[3];
        v330 = *(v816 + 40);
        v331 = *(v806 + 299);
        if (!v326)
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p", v327, 46, v328, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v329, v330, v325, *(v806 + 299), v828);
          v819 = 0;
          a3 = v812;
          v7 = v817;
          a2 = v816;
          v35 = v808;
          goto LABEL_46;
        }

        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p\n", v327, 46, v328, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v329, v330, v325, *(v806 + 299), v828);
        v332 = AVE_GetCurrTime();
        v333 = AVE_Log_GetLevelStr(4);
        v26 = v811;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p", v332, 46, v333, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v817[3], *(v816 + 40), v325, *(v806 + 299), v828);
        v819 = 0;
        a3 = v812;
        v7 = v817;
        a2 = v816;
        goto LABEL_437;
      }
    }

    else
    {
      dataLength += *(v806 + 299);
      if ((*(v816 + 9) & 1) == 0)
      {
        goto LABEL_180;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v334 = AVE_Log_CheckConsole(0x2Eu);
        v335 = AVE_GetCurrTime();
        v336 = AVE_Log_GetLevelStr(7);
        v337 = v817[3];
        v338 = *(v816 + 40);
        v339 = *(v806 + 299);
        if (v334)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d\n", v335, 46, v336, "AVE_FrameRecv", "SendFrame", 2519, a1, v337, v338, v325, dataLength, v339);
          v340 = AVE_GetCurrTime();
          v341 = AVE_Log_GetLevelStr(7);
          v26 = v811;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d", v340, 46, v341, "AVE_FrameRecv", "SendFrame", 2519, a1, v817[3], *(v816 + 40), v325, dataLength, *(v806 + 299));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d", v335, 46, v336, "AVE_FrameRecv", "SendFrame", 2519, a1, v337, v338, v325, dataLength, v339);
          v26 = v811;
        }
      }

      v428 = a1 + 28548;
      if (!AVE_Crypto_AddInfo(dataLength, 0, a1 + 7137))
      {
LABEL_180:
        v805 = v6;
        v176 = dataLength;
        v177 = v818[542];
        a2 = v816;
        AVE_Crypto_PrintInfo(a1 + 7137, 46, 8, 0, *(v816 + 40), v11, v12, v13);
        v178 = a1 + 3384;
        v179 = a1[*(v816 + 3180) + 3384];
        if (v179)
        {
          v799 = (v816 + 40);
          v180 = v176 - v177;
          v181 = v179 + 45320;
          v182 = &a1[9 * *(v816 + 44) + 3641];
          *v182 = *v181;
          v183 = *(v181 + 16);
          v184 = *(v181 + 32);
          v185 = *(v181 + 48);
          *(v182 + 64) = *(v181 + 64);
          *(v182 + 32) = v184;
          *(v182 + 48) = v185;
          *(v182 + 16) = v183;
          v7 = v817;
          if (AVE_Log_CheckLevel(0x2Eu, 7))
          {
            v186 = v180;
            v187 = AVE_Log_CheckConsole(0x2Eu);
            v188 = AVE_GetCurrTime();
            v189 = AVE_Log_GetLevelStr(7);
            v190 = v817[3];
            v191 = *(v806 + 77);
            v193 = *(v816 + 40);
            v192 = *(v816 + 44);
            v194 = a1[3639];
            v195 = v818[542];
            v196 = v818[580];
            v197 = *(v818 + 2324);
            if (v187)
            {
              v180 = v186;
              printf("%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld\n", v188, 46, v189, "AVE_FrameRecv", "SendFrame", 2540, a1, v190, v191, v192, v193, v194, v195, v196, v197, v186, dataLength);
              v198 = AVE_GetCurrTime();
              v199 = AVE_Log_GetLevelStr(7);
              v26 = v811;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld", v198, 46, v199, "AVE_FrameRecv", "SendFrame", 2540, a1, v817[3], *(v806 + 77), *(v816 + 44), *(v816 + 40), a1[3639], v818[542], v818[580], *(v818 + 2324), v186, dataLength);
              a2 = v816;
              v7 = v817;
            }

            else
            {
              v180 = v186;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld", v188, 46, v189, "AVE_FrameRecv", "SendFrame", 2540, a1, v190, v191, v192, v193, v194, v195, v196, v197, v186, dataLength);
              a2 = v816;
              v7 = v817;
              v26 = v811;
            }

            v178 = a1 + 3384;
          }

          a3 = v812;
          if (*(v806 + 77) < 2u || *(a2 + 44))
          {
            v276 = *(a2 + 2552);
            Buffer = H264VideoEncoderFrameReceiver::CreateBuffer(a1, dataLength, &cf);
            v278 = Buffer;
            v818[580] = -1;
            v279 = *(v806 + 77);
            if (v279 <= 1)
            {
              *(v818 + 2324) = 0;
            }

            if (Buffer)
            {
              goto LABEL_266;
            }

            if (AVE_Log_CheckLevel(3u, 4))
            {
              v287 = v180;
              v288 = AVE_Log_CheckConsole(3u);
              v289 = AVE_GetCurrTime();
              v290 = AVE_Log_GetLevelStr(4);
              v291 = *v799;
              if (v288)
              {
                printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld\n", v289, 3, v290, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v799, v287);
                v292 = AVE_GetCurrTime();
                v293 = AVE_Log_GetLevelStr(4);
                v26 = v811;
                syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld", v292, 3, v293, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v799, v287);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld", v289, 3, v290, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v799, v287);
              }

              v294 = 3758097085;
            }

            else
            {
              v294 = 3758097085;
            }

LABEL_394:
            v819 = v294;
            goto LABEL_395;
          }

          v309 = *v818;
          if (v180 > v309)
          {
            if (AVE_Log_CheckLevel(0x2Eu, 4))
            {
              v310 = v180;
              v311 = AVE_Log_CheckConsole(0x2Eu);
              v312 = AVE_GetCurrTime();
              v313 = AVE_Log_GetLevelStr(4);
              v314 = v7[3];
              v315 = *(v806 + 77);
              v316 = *(a2 + 44);
              v317 = *v818;
              if (!v311)
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld", v312, 46, v313, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v314, v315, v316, *v818, v310);
                v819 = 4294954394;
                v6 = v805;
                v35 = v808;
                goto LABEL_162;
              }

              printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld\n", v312, 46, v313, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v314, v315, v316, *v818, v310);
              v318 = AVE_GetCurrTime();
              v319 = AVE_Log_GetLevelStr(4);
              v26 = v811;
              a3 = v812;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld", v318, 46, v319, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v7[3], *(v806 + 77), *(a2 + 44), *v818, v310);
              v819 = 4294954394;
LABEL_395:
              v6 = v805;
              goto LABEL_437;
            }

            v294 = 4294954394;
            goto LABEL_394;
          }

          v278 = a1[3639];
          if (v278 || (v278 = malloc_type_malloc(v309, 0x100004077774924uLL), (a1[3639] = v278) != 0))
          {
            v818[542] = v180;
            v818[580] = *(a2 + 40);
            v343 = *(a2 + 2456) == 3 || *(v803 + 40) == 21;
            *(v818 + 2324) = v343;
            v279 = *(v806 + 77);
LABEL_266:
            v821 = v180;
            v280 = v812;
            if (v279 >= 2)
            {
              *(v818 + 2325) = 0;
            }

            v281 = H264VideoEncoderFrameReceiver::CopyEncodedFrameIntoExternalBuffer(a1, v828, dataLength, v278);
            if (v281)
            {
              v282 = v281;
              if (AVE_Log_CheckLevel(0x2Eu, 4))
              {
                v283 = AVE_Log_CheckConsole(0x2Eu);
                v284 = AVE_GetCurrTime();
                v285 = AVE_Log_GetLevelStr(4);
                if (v283)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d\n", v284, 46, v285, "AVE_FrameRecv", "SendFrame", 2589, "ret == 0", v828, dataLength, v278, v282);
                  v286 = AVE_GetCurrTime();
                  v26 = v811;
                  sampleSizeArrayf = AVE_Log_GetLevelStr(4);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d", v286, 46, sampleSizeArrayf, "AVE_FrameRecv", "SendFrame");
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d", v284, 46, v285, "AVE_FrameRecv", "SendFrame");
                }

                v819 = 0;
                a2 = v816;
                a3 = v812;
                goto LABEL_350;
              }

              v819 = 0;
              a2 = v816;
              v7 = v817;
              v6 = v805;
              v35 = v808;
LABEL_309:
              a3 = v812;
              goto LABEL_46;
            }

            if (v795)
            {
              *v795 = v77;
            }

            if ((v788 & 1) == 0 && (*(v806 + 77) < 2u || *(v816 + 44)))
            {
              v295 = 0;
              v296 = 1;
              do
              {
                v297 = v296;
                v298 = a1 + 12 * v295 + 29084;
                if (*(v298 + 8) >= 1)
                {
                  *(v298 + 8) = 0;
                  *v298 = 0;
                }

                v296 = 0;
                v295 = 1;
              }

              while ((v297 & 1) != 0);
            }

            if (*v817)
            {
              v299 = v816;
              v300 = v178[*(v816 + 3180)];
              if (!v300)
              {
                v155 = v817;
                if (AVE_Log_CheckLevel(3u, 4))
                {
                  v398 = AVE_Log_CheckConsole(3u);
                  v399 = AVE_GetCurrTime();
                  v400 = AVE_Log_GetLevelStr(4);
                  v35 = v808;
                  if (v398)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v399, 3, v400, "SendFrame", 2616, "codedHeader != __null");
                    v401 = AVE_GetCurrTime();
                    sampleSizeArrayg = AVE_Log_GetLevelStr(4);
                    v26 = v811;
                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v401, 3, sampleSizeArrayg, "SendFrame", 2616, "codedHeader != __null");
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v399, 3, v400, "SendFrame", 2616, "codedHeader != __null");
                  }

                  v819 = 0;
                  a3 = v812;
                  v6 = v805;
                  goto LABEL_461;
                }

                v819 = 0;
                v6 = v805;
                v35 = v808;
                a2 = v816;
                v7 = v817;
                goto LABEL_309;
              }

              *(v817 + 8) = 0;
              v301 = *(v816 + 4560);
              *(v300 + 2000) = *(v816 + 4576);
              *(v300 + 1984) = v301;
              if (!*(v816 + 20))
              {
                v414 = H264VideoEncoderFrameReceiver::MultiPass_EnqueueStats(a1, (v300 + 1980));
                if (v414)
                {
                  v415 = v414;
                  memcpy((v816 + 31438), v414, 0x626uLL);
                  *(v817 + 8) = 1;
                  File = AVE_Dump_FindFile(*(v806 + 220), 4u, *(v816 + 20));
                  if (File)
                  {
                    v417 = File;
                    fseeko(File, 1574 * v415[11] + 264, 0);
                    fwrite(v415, 1uLL, 0x626uLL, v417);
                  }
                }

                else if (AVE_Log_CheckLevel(0xD8u, 6))
                {
                  v454 = AVE_Log_CheckConsole(0xD8u);
                  v455 = AVE_GetCurrTime();
                  v456 = AVE_Log_GetLevelStr(6);
                  v457 = *v799;
                  if (v454)
                  {
                    printf("%lld %d AVE %s:   F %d pMpStats NULL \n", v455, 216, v456, v457);
                    v458 = AVE_GetCurrTime();
                    sampleSizeArrayj = AVE_Log_GetLevelStr(6);
                    syslog(3, "%lld %d AVE %s:   F %d pMpStats NULL ", v458, 216, sampleSizeArrayj, *v799);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s:   F %d pMpStats NULL ", v455, 216, v456, v457);
                  }

                  v280 = v812;
                  v26 = v811;
                }
              }
            }

            memoryBlocka = v278;
            a2 = v816;
            if ((v788 & 1) == 0)
            {
              if (allocator)
              {
                v302 = a4;
              }

              else
              {
                v302 = 0;
              }

              H264VideoEncoderFrameReceiver::DoneWithThisFrameFromTheHW(a1, v816, v302);
            }

            v7 = v817;
            v6 = v805;
            v303 = v806;
            if (v808)
            {
              free(v808);
            }

            v304 = vshr_n_u32(vadd_s32(a1[3767], 0xF0000000FLL), 4uLL);
            AVE_Dump_WriteMBStats(*(v806 + 220), *(v816 + 24), a1[*(v816 + 3180) + 3224], 432 * v304.i32[0] * v304.i32[1]);
            v305 = *(v816 + 23720);
            if (v305)
            {
              AVE_Dump_WriteRecon(*(v806 + 220), v305);
            }

            a3 = v280;
            if (*(v806 + 77) >= 2u && *(v816 + 44))
            {
              v306 = &a1[2 * *(v816 + 40) + 17446];
              v307 = HIDWORD(a1[2 * *(v816 + 40) + 17446]);
              v308 = v821;
              *v306 += 8 * v821;
              *(v306 + 8) = *(v816 + 4608);
              *(v306 + 4) = v307 + *(v803 + 44);
            }

            else
            {
              v308 = v821;
              v342 = &a1[2 * *(v816 + 40) + 17446];
              *v342 = 8 * v821;
              *(v342 + 8) = *(v816 + 4608);
              *(v342 + 4) = *(v803 + 44);
            }

            AVE_Dump_WriteOutput(*(v806 + 220), *(v816 + 24), &memoryBlocka[v793], v308);
            *(v803 + 3376) = AVE_GetCurrTime();
            if (a1[3669] != 1)
            {
              if (allocator)
              {
                v819 = 0;
LABEL_541:
                v35 = 0;
                *(v803 + 3368) = AVE_GetCurrTime();
                goto LABEL_46;
              }

              v810 = a1 + 3224;
              v394 = v817;
              sampleBufferOut = 0;
              v395 = memoryBlocka;
              if ((v806[508] & 1) == 0)
              {
                LODWORD(v437) = v828[0];
                if (v828[0] >= 1)
                {
                  v790 = v53;
                  v815 = a3;
                  v438 = v830;
                  v439 = v828[0];
                  while (*(v438 - 6) != 3)
                  {
                    v438 += 4;
                    if (!--v439)
                    {
                      goto LABEL_482;
                    }
                  }

                  v461 = *v438;
                  if (*v438)
                  {
                    v462 = v818 + 274;
                    v463 = 32;
                    while (1)
                    {
                      v464 = *v462 + *(v462 - 2);
                      if (!v464)
                      {
LABEL_481:
                        LODWORD(v437) = v828[0];
                        goto LABEL_482;
                      }

                      if (AVE_Log_CheckLevel(0x2Eu, 7))
                      {
                        v465 = AVE_Log_CheckConsole(0x2Eu);
                        v466 = AVE_GetCurrTime();
                        v467 = AVE_Log_GetLevelStr(7);
                        v468 = *(v816 + 3180);
                        v469 = *v461;
                        if (v465)
                        {
                          printf("%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x\n", v466, 46, v467, "AVE_FrameRecv", "SendFrame", 2827, v464, v464 - 4, *(v816 + 3180), v469);
                          v470 = AVE_GetCurrTime();
                          v471 = AVE_Log_GetLevelStr(7);
                          syslog(3, "%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x", v470, 46, v471, "AVE_FrameRecv", "SendFrame", 2827, v464, v464 - 4, *(v816 + 3180), *v461);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x", v466, 46, v467, "AVE_FrameRecv", "SendFrame", 2827, v464, v464 - 4, *(v816 + 3180), v469);
                        }
                      }

                      if (*v461 != 0x1000000)
                      {
                        break;
                      }

                      v462 += 4;
                      *v461 = bswap32(v464 - 4);
                      v461 = (v461 + v464);
                      if (!--v463)
                      {
                        goto LABEL_481;
                      }
                    }

                    if (!AVE_Log_CheckLevel(3u, 4))
                    {
                      goto LABEL_697;
                    }

                    v503 = AVE_Log_CheckConsole(3u);
                    v504 = AVE_GetCurrTime();
                    v505 = AVE_Log_GetLevelStr(4);
                    if (!v503)
                    {
                      v715 = *v461;
                      syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)", v504);
                      goto LABEL_697;
                    }

                    printf("%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)\n", v504, 3, v505, "SendFrame", 2835, "*(uint32_t *)&pSliceAddr[0] == 0x01000000", *v461);
                    v506 = AVE_GetCurrTime();
                    v507 = AVE_Log_GetLevelStr(4);
                    v706 = "*(uint32_t *)&pSliceAddr[0] == 0x01000000";
                    v714 = *v461;
                    v701 = 2835;
                    sampleSizeArrayc = v507;
                    v508 = "%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)";
LABEL_605:
                    syslog(3, v508, v506, 3, sampleSizeArrayc, "SendFrame", v701, v706, v714);
LABEL_697:
                    v819 = 3758097085;
                    goto LABEL_515;
                  }

LABEL_482:
                  a3 = v815;
                  a2 = v816;
                  v394 = v817;
                  v6 = v805;
                  v395 = memoryBlocka;
                  if (v437 >= 1)
                  {
                    v437 = v437;
                    v472 = v830;
                    v473 = v437;
                    while (*(v472 - 6) != 5)
                    {
                      v472 += 4;
                      if (!--v473)
                      {
                        goto LABEL_385;
                      }
                    }

                    v482 = *v472;
                    if (*v472)
                    {
                      if (*(v806 + 77) < 2u || *(v816 + 44))
                      {
                        v483 = 0;
                        v484 = &v829;
                        do
                        {
                          if (*(v484 - 4) == 5)
                          {
                            v483 += *v484;
                          }

                          v484 += 4;
                          --v437;
                        }

                        while (v437);
                        v485 = v483 - 4;
                        if (AVE_Log_CheckLevel(0x2Eu, 8))
                        {
                          v486 = AVE_Log_CheckConsole(0x2Eu);
                          v487 = AVE_GetCurrTime();
                          v488 = AVE_Log_GetLevelStr(8);
                          if (v486)
                          {
                            printf("%lld %d AVE %s: %s:%d %d %p 0x%x\n", v487, 46, v488, "SendFrame", 2861, v485, v482, *v482);
                            v489 = AVE_GetCurrTime();
                            AVE_Log_GetLevelStr(8);
                            v490 = *v482;
                            syslog(3, "%lld %d AVE %s: %s:%d %d %p 0x%x", v489, 46);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s:%d %d %p 0x%x", v487, 46);
                          }
                        }

                        if (*v482 == 0x1000000)
                        {
                          *v482 = bswap32(v485);
                          a3 = v815;
                          a2 = v816;
                          v394 = v817;
                          v6 = v805;
                          v395 = memoryBlocka;
                          goto LABEL_385;
                        }

                        if (!AVE_Log_CheckLevel(3u, 4))
                        {
                          goto LABEL_697;
                        }

                        v573 = AVE_Log_CheckConsole(3u);
                        v574 = AVE_GetCurrTime();
                        v575 = AVE_Log_GetLevelStr(4);
                        if (!v573)
                        {
                          v718 = *v482;
                          syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)", v574);
                          goto LABEL_697;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)\n", v574, 3, v575, "SendFrame", 2864, "*pFillerAddr == 0x01000000", *v482);
                        v506 = AVE_GetCurrTime();
                        v576 = AVE_Log_GetLevelStr(4);
                        v706 = "*pFillerAddr == 0x01000000";
                        v714 = *v482;
                        v701 = 2864;
                        sampleSizeArrayc = v576;
                        v508 = "%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)";
                        goto LABEL_605;
                      }

                      goto LABEL_506;
                    }
                  }
                }
              }

LABEL_385:
              if (*(v806 + 77) >= 2u && !*(a2 + 44))
              {
LABEL_506:
                v790 = v53;
                v815 = a3;
                if (AVE_Log_CheckLevel(0x2Eu, 7))
                {
                  v491 = AVE_Log_CheckConsole(0x2Eu);
                  v492 = AVE_GetCurrTime();
                  v493 = AVE_Log_GetLevelStr(7);
                  if (v491)
                  {
                    printf("%lld %d AVE %s: BAIL for first layer\n", v492, 46, v493);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(7);
                  }

                  syslog(3, "%lld %d AVE %s: BAIL for first layer");
                }

                goto LABEL_514;
              }

              v396 = MEMORY[0x29EDB8ED8];
              if (*(v806 + 126) == 2)
              {
                v397 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x29EDB8ED8], v395, dataLength, a1[3664], 0, 0, dataLength, 1u, &cf);
                v819 = v397;
                if (v397)
                {
                  v7 = v394;
                  H264VideoEncoderFrameReceiver::Emit(v397, v394[3], *(v806 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
                  ++*a1;
                  ++a1[1];
                  goto LABEL_539;
                }
              }

              sampleTimingArray.duration.value = *(a2 + 4584);
              v418 = *(a2 + 4600);
              v419 = *(a2 + 4596);
              sampleTimingArray.duration.timescale = *(a2 + 4592);
              sampleTimingArray.duration.flags = v419;
              v420 = *(a2 + 4560);
              sampleTimingArray.duration.epoch = v418;
              sampleTimingArray.presentationTimeStamp.value = v420;
              v421 = *(a2 + 4576);
              v422 = *(a2 + 4572);
              sampleTimingArray.presentationTimeStamp.timescale = *(a2 + 4568);
              sampleTimingArray.presentationTimeStamp.flags = v422;
              v423 = a3[1];
              sampleTimingArray.presentationTimeStamp.epoch = v421;
              sampleTimingArray.decodeTimeStamp.value = v423;
              *&sampleTimingArray.decodeTimeStamp.timescale = a3[2];
              sampleTimingArray.decodeTimeStamp.epoch = a3[3];
              *&time1[0].value = *&sampleTimingArray.presentationTimeStamp.value;
              time1[0].epoch = v421;
              time2 = sampleTimingArray.decodeTimeStamp;
              if (!CMTimeCompare(time1, &time2) && !v818[750])
              {
                sampleTimingArray.decodeTimeStamp = **&MEMORY[0x29EDB9398];
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v424 = AVE_Log_CheckConsole(0x2Eu);
                  v425 = AVE_GetCurrTime();
                  v426 = AVE_Log_GetLevelStr(8);
                  if (v424)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID\n", v425, 46, v426);
                    v427 = AVE_GetCurrTime();
                    sampleSizeArrayi = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID", v427, 46, sampleSizeArrayi);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID", v425, 46, v426);
                  }

                  a2 = v816;
                  v394 = v817;
                  v6 = v805;
                }
              }

              if (AVE_Log_CheckLevel(0x33u, 7))
              {
                v509 = AVE_Log_CheckConsole(0x33u);
                v510 = AVE_GetCurrTime();
                v511 = AVE_Log_GetLevelStr(7);
                v512 = v394[3];
                v513 = *(a2 + 40);
                if (v509)
                {
                  printf("%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v510, 51, v511, "SendFrame", 2931, v512, v513, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value, sampleTimingArray.presentationTimeStamp.timescale, sampleTimingArray.presentationTimeStamp.flags, sampleTimingArray.presentationTimeStamp.epoch, *(a2 + 4608), *(a2 + 4616), sampleTimingArray.duration.value, sampleTimingArray.duration.timescale, sampleTimingArray.duration.flags, sampleTimingArray.duration.epoch);
                  v514 = AVE_GetCurrTime();
                  v515 = AVE_Log_GetLevelStr(7);
                  v516 = *(a2 + 4616);
                  v787 = *(a2 + 4608);
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v514, 51, v515, "SendFrame", 2931, v394[3], *(a2 + 40), sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v510, 51, v511, "SendFrame", 2931, v512, v513, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                v6 = v805;
              }

              allocatora = *v396;
              v517 = CMSampleBufferCreate(*v396, cf, 1u, 0, 0, a1[3670], 1, 1, &sampleTimingArray, 1, &dataLength, &sampleBufferOut);
              v518 = AVE_Log_CheckLevel(0x2Eu, 7);
              if (v518)
              {
                v519 = AVE_Log_CheckConsole(0x2Eu);
                v520 = AVE_GetCurrTime();
                v521 = AVE_Log_GetLevelStr(7);
                v522 = a1[3670];
                if (v519)
                {
                  printf("%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p\n", v520, 46, v521, v517, sampleBufferOut, v522);
                  v523 = AVE_GetCurrTime();
                  v524 = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p", v523, 46, v524, v517, sampleBufferOut, a1[3670]);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p", v520, 46, v521, v517, sampleBufferOut, v522);
                }
              }

              v819 = v517;
              if (v517)
              {
                v7 = v394;
                H264VideoEncoderFrameReceiver::Emit(v518, v394[3], *(v806 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
                ++*a1;
LABEL_538:
                ++a1[1];
LABEL_539:
                v26 = v811;
                if (sampleBufferOut)
                {
                  CFRelease(sampleBufferOut);
                }

                goto LABEL_541;
              }

              v790 = v53;
              v815 = a3;
              v525 = v818[758];
              v526 = *(a2 + 2456);
              v822 = (a2 + 4756);
              if (v526 == 3)
              {
                v527 = *(a2 + 6112);
              }

              else
              {
                if (*(v803 + 40) == 21)
                {
                  v528 = 1;
                }

                else if (*(v806 + 77) < 2u)
                {
                  v528 = 0;
                }

                else
                {
                  v528 = *(v818 + 2324);
                }

                if (v526 == 2)
                {
                  v527 = 1;
                }

                else
                {
                  v527 = *(a2 + 6112);
                  if ((v822[1356] & 1) == 0 && v525 >= 2)
                  {
                    v527 = v526 == 1 && *(v803 + 36) == v525 - 1;
                  }
                }

                if ((v528 & 1) == 0)
                {
                  v529 = 0;
                  v530 = 0;
                  v531 = v526 == 0;
LABEL_558:
                  if (AVE_Log_CheckLevel(0x2Eu, 7))
                  {
                    v532 = AVE_Log_CheckConsole(0x2Eu);
                    v533 = AVE_GetCurrTime();
                    v534 = AVE_Log_GetLevelStr(7);
                    v535 = *(v816 + 2456);
                    if (v532)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d\n", v533, 46, v534, v535, v530, v531);
                      v536 = AVE_GetCurrTime();
                      sampleSizeArraym = AVE_Log_GetLevelStr(7);
                      syslog(3, "%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d", v536, 46, sampleSizeArraym, *(v816 + 2456), v530, v531);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d", v533, 46, v534, v535, v530, v531);
                    }
                  }

                  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u);
                  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
                  if (!ValueAtIndex)
                  {
                    Mutable = AVE_Log_CheckLevel(0x2Eu, 4);
                    if (Mutable)
                    {
                      v549 = AVE_Log_CheckConsole(0x2Eu);
                      v550 = AVE_GetCurrTime();
                      v551 = AVE_Log_GetLevelStr(4);
                      if (v549)
                      {
                        printf("%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.\n", v550, 46, v551, "SendFrame", 3376);
                        v552 = AVE_GetCurrTime();
                        sampleSizeArrayn = AVE_Log_GetLevelStr(4);
                        syslog(3, "%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.", v552, 46, sampleSizeArrayn, "SendFrame", 3376);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.", v550, 46, v551, "SendFrame", 3376);
                      }
                    }

                    goto LABEL_643;
                  }

                  v539 = ValueAtIndex;
                  v540 = MEMORY[0x29EDB8F00];
                  if ((v529 & 1) == 0)
                  {
                    CFDictionarySetValue(ValueAtIndex, *MEMORY[0x29EDB9388], *MEMORY[0x29EDB8F00]);
                  }

                  v541 = MEMORY[0x29EDB8EF8];
                  if (v531)
                  {
                    v542 = MEMORY[0x29EDB8EF8];
                  }

                  else
                  {
                    v542 = v540;
                  }

                  CFDictionarySetValue(v539, *MEMORY[0x29EDB9358], *v542);
                  if (v527)
                  {
                    CFDictionarySetValue(v539, *MEMORY[0x29EDB9380], *v541);
                  }

                  if (AVE_Log_CheckLevel(0x2Eu, 7))
                  {
                    v543 = AVE_Log_CheckConsole(0x2Eu);
                    v544 = AVE_GetCurrTime();
                    v545 = AVE_Log_GetLevelStr(7);
                    if (v543)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d IsHierarchical %d\n", v544, 46, v545, "AVE_FrameRecv", "SendFrame", 2999, v818[758] > 1);
                      v546 = AVE_GetCurrTime();
                      AVE_Log_GetLevelStr(7);
                      v547 = v818[758] > 1;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v546);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v544);
                    }
                  }

                  Mutable = AVE_Log_CheckLevel(0x2Eu, 7);
                  if (Mutable)
                  {
                    v553 = AVE_Log_CheckConsole(0x2Eu);
                    v554 = AVE_GetCurrTime();
                    v555 = AVE_Log_GetLevelStr(7);
                    v556 = *(v816 + 40);
                    v557 = *(v816 + 2456);
                    v558 = *(v803 + 40);
                    if (v553)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d\n", v554, 46, v555, v556, *(v816 + 2456), v558);
                      v559 = AVE_GetCurrTime();
                      v560 = AVE_Log_GetLevelStr(7);
                      syslog(3, "%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d", v559, 46, v560, *(v816 + 40), *(v816 + 2456), *(v803 + 40));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d", v554, 46, v555, v556, *(v816 + 2456), v558);
                    }
                  }

                  if (v525 >= 2)
                  {
                    memcpy(time1, a1 + 7176, 0x1ACuLL);
                    TemporalLevelInfoDictionary = H264VideoEncoderFrameReceiver::CreateTemporalLevelInfoDictionary(a1, time1, *(v803 + 36));
                    if (TemporalLevelInfoDictionary)
                    {
                      v562 = TemporalLevelInfoDictionary;
                      CFDictionarySetValue(v539, *MEMORY[0x29EDB9370], TemporalLevelInfoDictionary);
                      CFRelease(v562);
                    }

                    v563 = *MEMORY[0x29EDB8F00];
                    v564 = *v541;
                    if ((*(v803 + 40) & 0xFFFFFFFE) == 2)
                    {
                      v565 = *MEMORY[0x29EDB8F00];
                    }

                    else
                    {
                      v565 = *v541;
                    }

                    CFDictionarySetValue(v539, *MEMORY[0x29EDB9378], v565);
                    if ((*(v803 + 40) & 0xFFFFFFFE) == 4)
                    {
                      v566 = v563;
                    }

                    else
                    {
                      v566 = v564;
                    }

                    CFDictionarySetValue(v539, *MEMORY[0x29EDB9360], v566);
                  }

                  if (*(v806 + 131) == 2 && (*(v803 + 40) - 19) <= 2)
                  {
                    Mutable = CFNumberCreate(allocatora, kCFNumberSInt32Type, (v803 + 40));
                    if (Mutable)
                    {
                      v567 = Mutable;
                      if (AVE_Log_CheckLevel(0x2Eu, 7))
                      {
                        v568 = AVE_Log_CheckConsole(0x2Eu);
                        v569 = AVE_GetCurrTime();
                        v570 = AVE_Log_GetLevelStr(7);
                        v571 = *v799;
                        if (v568)
                        {
                          printf("%lld %d AVE %s: H264FrameRec: F %d NUT CRA\n", v569, 46, v570, v571);
                          v572 = AVE_GetCurrTime();
                          sampleSizeArrayo = AVE_Log_GetLevelStr(7);
                          syslog(3, "%lld %d AVE %s: H264FrameRec: F %d NUT CRA", v572, 46, sampleSizeArrayo, *v799);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: H264FrameRec: F %d NUT CRA", v569, 46, v570, v571);
                        }
                      }

                      CFDictionarySetValue(v539, *MEMORY[0x29EDB9368], v567);
                      CFRelease(v567);
                    }
                  }

                  if ((v818[760] & 2) != 0)
                  {
                    if (*v803 == 1)
                    {
                      Mutable = CFNumberCreate(allocatora, kCFNumberIntType, v799);
                      if (Mutable)
                      {
                        v577 = Mutable;
                        CFDictionarySetValue(v539, *MEMORY[0x29EDBD158], Mutable);
                        CFRelease(v577);
                      }
                    }

                    if (*(v803 + 48) == 1 && *(v806 + 161) != 1)
                    {
                      CFDictionarySetValue(v539, *MEMORY[0x29EDBD150], *MEMORY[0x29EDB8F00]);
                    }
                  }

                  if ((*(a1 + 30147) & 8) == 0)
                  {
LABEL_618:
                    if (*(v817 + 4) >= 17 && (v818[615] & 0x3C0) != 0)
                    {
                      Mutable = CFNumberCreate(allocatora, kCFNumberSInt32Type, (v816 + 6116));
                      if (Mutable)
                      {
                        v578 = Mutable;
                        CFDictionarySetValue(v539, *MEMORY[0x29EDBD160], Mutable);
                        CFRelease(v578);
                      }
                    }

                    if (*(v816 + 9))
                    {
                      v579 = AVE_Crypto_Make(a1 + 28548, v539);
                      bzero(a1 + 28548, 0x214uLL);
                      if (v579)
                      {
                        if (AVE_Log_CheckLevel(0x2Eu, 4))
                        {
                          v580 = AVE_Log_CheckConsole(0x2Eu);
                          v581 = AVE_GetCurrTime();
                          v582 = AVE_Log_GetLevelStr(4);
                          if (v580)
                          {
                            printf("%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d\n", v581, 46, v582, "AVE_FrameRecv", "SendFrame", 3116, "ret == 0", a1, v817[3], *(v816 + 8), v539, v579);
                            v583 = AVE_GetCurrTime();
                            v584 = AVE_Log_GetLevelStr(4);
                            v585 = v817[3];
                            v769 = *(v816 + 8);
                            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d", v583, 46, v584, "AVE_FrameRecv", "SendFrame", 3116);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d", v581, 46, v582, "AVE_FrameRecv", "SendFrame", 3116);
                          }
                        }

LABEL_514:
                        v819 = 0;
LABEL_515:
                        v35 = 0;
LABEL_516:
                        a3 = v815;
                        a2 = v816;
                        v7 = v817;
                        v6 = v805;
                        v26 = v811;
                        v53 = v790;
                        goto LABEL_46;
                      }
                    }

                    v595 = *(v806 + 161);
                    if (v595 > 36)
                    {
                      if ((v595 - 37) >= 2 && v595 != 10000)
                      {
                        goto LABEL_643;
                      }

                      goto LABEL_639;
                    }

                    if (v595)
                    {
                      if (v595 != 1)
                      {
                        if (v595 != 20)
                        {
                          goto LABEL_643;
                        }

LABEL_639:
                        LODWORD(time1[0].value) = *(v803 + 172);
                        Mutable = CFNumberCreate(0, kCFNumberSInt32Type, time1);
                        if (Mutable)
                        {
                          v596 = Mutable;
                          v597 = *MEMORY[0x29EDBD148];
LABEL_641:
                          CFDictionarySetValue(v539, v597, v596);
LABEL_642:
                          CFRelease(v596);
                        }

LABEL_643:
                        if (*v817 && *(v817 + 8) == 1 && (Mutable = CFDataCreateMutable(allocatora, 0)) != 0)
                        {
                          v598 = Mutable;
                          CFDataAppendBytes(Mutable, (v816 + 31438), 1574);
                          if (AVE_Log_CheckLevel(0x2Eu, 7))
                          {
                            v599 = AVE_Log_CheckConsole(0x2Eu);
                            v600 = AVE_GetCurrTime();
                            v601 = AVE_Log_GetLevelStr(7);
                            v602 = *(v816 + 20);
                            if (v602 >= 2)
                            {
                              v602 = 2;
                            }

                            if (v599)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d\n", v600, 46, v601, v602);
                              v603 = AVE_GetCurrTime();
                              v604 = AVE_Log_GetLevelStr(7);
                              v605 = *(v816 + 20);
                              if (v605 >= 2)
                              {
                                v605 = 2;
                              }

                              syslog(3, "%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d", v603, 46, v604, v605);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d", v600, 46, v601, v602);
                            }
                          }

                          v633 = *(v803 + 1754);
                          v634 = *(v803 + 1770);
                          v635 = *(v803 + 1762);
                          if (AVE_Log_CheckLevel(0xD8u, 7))
                          {
                            v636 = AVE_Log_CheckConsole(0xD8u);
                            v637 = AVE_GetCurrTime();
                            v638 = AVE_Log_GetLevelStr(7);
                            v639 = *(v816 + 4572);
                            if (v636)
                            {
                              printf("%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v637, 216, v638, *(v816 + 4560), *(v816 + 4568), *(v816 + 4572), *(v816 + 4576));
                              v640 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(7);
                              v641 = *(v816 + 4560);
                              v708 = *(v816 + 4572);
                              v717 = *(v816 + 4576);
                              v702 = *(v816 + 4568);
                              syslog(3, "%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v640);
                            }

                            else
                            {
                              v709 = *(v816 + 4572);
                              syslog(3, "%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v637);
                            }
                          }

                          v642 = *v817;
                          time1[0].value = v633;
                          *&time1[0].timescale = v635;
                          time1[0].epoch = v634;
                          *(v816 + 20);
                          v819 = VTMultiPassStorageSetDataAtTimeStamp();
                          if (v819 && AVE_Log_CheckLevel(0x2Eu, 4))
                          {
                            v643 = AVE_Log_CheckConsole(0x2Eu);
                            v644 = AVE_GetCurrTime();
                            v645 = AVE_Log_GetLevelStr(4);
                            if (v643)
                            {
                              printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v644, 46, v645);
                              v646 = AVE_GetCurrTime();
                              sampleSizeArrayp = AVE_Log_GetLevelStr(4);
                              syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v646, 46, sampleSizeArrayp);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v644, 46, v645);
                            }
                          }

                          CFRelease(v598);
                        }

                        else
                        {
                          v819 = 0;
                        }

                        a2 = v816;
                        v7 = v817;
                        v606 = H264VideoEncoderFrameReceiver::Emit(Mutable, v817[3], *(v806 + 126), a1[3669], *(v816 + 2552), *(v816 + 40), 0, sampleBufferOut);
                        ++*a1;
                        a3 = v815;
                        v6 = v805;
                        v53 = v790;
                        if (!v606)
                        {
                          goto LABEL_539;
                        }

                        goto LABEL_538;
                      }

                      v620 = MEMORY[0x29EDB9000];
                      v621 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                      v622 = CFArrayCreateMutable(0, 0, v620);
                      v623 = (v803 + 68);
                      v624 = 4;
                      do
                      {
                        AVE_CFArray_AddSInt64(*v623, v621);
                        AVE_CFArray_AddSInt64(*(v623 - 4), v622);
                        ++v623;
                        --v624;
                      }

                      while (v624);
                      CFDictionarySetValue(v539, *MEMORY[0x29EDBD180], v621);
                      if (v621)
                      {
                        CFRelease(v621);
                      }

                      CFDictionarySetValue(v539, *MEMORY[0x29EDBD188], v622);
                      if (v622)
                      {
                        CFRelease(v622);
                      }

                      v625 = *(v806 + 131);
                      if (v625 == 2)
                      {
                        v647 = MEMORY[0x29EDB9000];
                        v648 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                        v649 = CFArrayCreateMutable(0, 0, v647);
                        v628 = CFArrayCreateMutable(0, 0, v647);
                        v650 = (v803 + 124);
                        v651 = 4;
                        do
                        {
                          AVE_CFArray_AddSInt64(*(v650 - 8), v648);
                          AVE_CFArray_AddSInt64(*(v650 - 4), v649);
                          v652 = *v650++;
                          AVE_CFArray_AddSInt64(v652, v628);
                          --v651;
                        }

                        while (v651);
                        CFDictionarySetValue(v539, *MEMORY[0x29EDBD1A0], v648);
                        if (v648)
                        {
                          CFRelease(v648);
                        }

                        CFDictionarySetValue(v539, *MEMORY[0x29EDBD198], v649);
                        if (v649)
                        {
                          CFRelease(v649);
                        }

                        v632 = @"NumberOfSkipped8x8Blocks";
                      }

                      else
                      {
                        if (v625 != 1)
                        {
                          v819 = 3758097084;
                          if (AVE_Log_CheckLevel(3u, 4))
                          {
                            v666 = AVE_Log_CheckConsole(3u);
                            v667 = AVE_GetCurrTime();
                            v668 = AVE_Log_GetLevelStr(4);
                            if (v666)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.\n", v667, 3, v668, "SendFrame", 3247, "false", *(v806 + 131));
                              v669 = AVE_GetCurrTime();
                              AVE_Log_GetLevelStr(4);
                              v670 = *(v806 + 131);
                              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.", v669);
                            }

                            else
                            {
                              v719 = *(v806 + 131);
                              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.", v667);
                            }
                          }

                          goto LABEL_515;
                        }

                        v626 = MEMORY[0x29EDB9000];
                        v627 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                        v628 = CFArrayCreateMutable(0, 0, v626);
                        v629 = (v803 + 124);
                        v630 = 4;
                        do
                        {
                          AVE_CFArray_AddSInt64(*(v629 - 8), v627);
                          v631 = *v629++;
                          AVE_CFArray_AddSInt64(v631, v628);
                          --v630;
                        }

                        while (v630);
                        CFDictionarySetValue(v539, *MEMORY[0x29EDBD1A8], v627);
                        if (v627)
                        {
                          CFRelease(v627);
                        }

                        v632 = *MEMORY[0x29EDBD1B0];
                      }

                      CFDictionarySetValue(v539, v632, v628);
                      if (v628)
                      {
                        CFRelease(v628);
                      }

                      v653 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                      for (i = 0; i != 16; i += 4)
                      {
                        AVE_CFArray_AddSInt64(*(v816 + 29828 + i), v653);
                      }

                      if (v653)
                      {
                        CFDictionarySetValue(v539, *MEMORY[0x29EDBD178], v653);
                        CFRelease(v653);
                      }

                      v655 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
                      for (j = 0; j != 16; j += 4)
                      {
                        Mutable = AVE_CFArray_AddSInt64(*(v816 + 29844 + j), v655);
                      }

                      if (v655)
                      {
                        CFDictionarySetValue(v539, @"SliceDataLength", v655);
                        CFRelease(v655);
                      }

                      if (!v818[802] || *(v806 + 131) != 1)
                      {
LABEL_737:
                        if (*v822 == 1)
                        {
                          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                          if (Mutable)
                          {
                            v596 = Mutable;
                            if (!AVE_DPB_MakeSnapshot((v816 + 3184), Mutable))
                            {
                              CFDictionarySetValue(v539, *MEMORY[0x29EDBD1B8], v596);
                              v676 = *(v816 + 23728);
                              if ((v676 & 0x8000) != 0)
                              {
                                v677 = v805[3];
                                if (v677)
                                {
                                  AVE_VCP::ChromaFilter(v677, v596, *(v816 + 40), *(v816 + 4764));
                                  v676 = *(v816 + 23728);
                                }
                              }

                              if ((v676 & 0x10000) != 0)
                              {
                                v678 = v805[3];
                                if (v678)
                                {
                                  AVE_VCP::CalcChecksum(v678, v596, *v799, v539);
                                }
                              }
                            }

                            goto LABEL_642;
                          }
                        }

                        goto LABEL_643;
                      }

                      v657 = v810[*(v816 + 3180)];
                      if (v657)
                      {
                        v658 = v818[796];
                        v659 = v818[797];
                        Mutable = CFDataCreateMutable(allocatora, 0);
                        if (Mutable)
                        {
                          v660 = Mutable;
                          v661 = 432 * ((v658 + 15) >> 4) * ((v659 + 15) >> 4);
                          CFDataAppendBytes(Mutable, v657, v661);
                          if (AVE_Log_CheckLevel(0x2Eu, 7))
                          {
                            v662 = AVE_Log_CheckConsole(0x2Eu);
                            v663 = AVE_GetCurrTime();
                            v664 = AVE_Log_GetLevelStr(7);
                            if (v662)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out\n", v663, 46, v664, v661);
                              v665 = AVE_GetCurrTime();
                              sampleSizeArrayq = AVE_Log_GetLevelStr(7);
                              syslog(3, "%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out", v665, 46, sampleSizeArrayq, v661);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out", v663, 46, v664, v661);
                            }
                          }

                          CFDictionarySetValue(v539, @"MBStatistics", v660);
                          CFRelease(v660);
                        }

                        goto LABEL_737;
                      }

                      v819 = 3758097084;
                      if (!AVE_Log_CheckLevel(3u, 4))
                      {
                        goto LABEL_515;
                      }

                      v671 = AVE_Log_CheckConsole(3u);
                      v672 = AVE_GetCurrTime();
                      v673 = AVE_Log_GetLevelStr(4);
                      if (v671)
                      {
                        v674 = 3281;
LABEL_734:
                        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: stat = NULL.\n", v672, 3, v673, "SendFrame", v674, "stat != __null");
                        AVE_GetCurrTime();
                        AVE_Log_GetLevelStr(4);
                      }
                    }

                    else
                    {
                      if (!v818[802] || *(v806 + 131) != 1 || *(v806 + 132) != 1)
                      {
                        goto LABEL_643;
                      }

                      v610 = v810[*(v816 + 3180)];
                      if (v610)
                      {
                        v611 = v818[796];
                        v612 = v818[797];
                        Mutable = CFDataCreateMutable(allocatora, 0);
                        if (!Mutable)
                        {
                          goto LABEL_643;
                        }

                        v596 = Mutable;
                        v613 = 432 * ((v611 + 15) >> 4) * ((v612 + 15) >> 4);
                        CFDataAppendBytes(Mutable, v610, v613);
                        if (AVE_Log_CheckLevel(0x2Eu, 7))
                        {
                          v614 = AVE_Log_CheckConsole(0x2Eu);
                          v615 = AVE_GetCurrTime();
                          v616 = AVE_Log_GetLevelStr(7);
                          v617 = *(v806 + 132);
                          if (v614)
                          {
                            printf("%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n\n", v615, 46, v616, *(v806 + 132), v613);
                            v618 = AVE_GetCurrTime();
                            v619 = AVE_Log_GetLevelStr(7);
                            syslog(3, "%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n", v618, 46, v619, *(v806 + 132), v613);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n", v615, 46, v616, *(v806 + 132), v613);
                          }
                        }

                        v597 = @"MBStatistics";
                        goto LABEL_641;
                      }

                      v819 = 3758097084;
                      if (!AVE_Log_CheckLevel(3u, 4))
                      {
                        goto LABEL_515;
                      }

                      v675 = AVE_Log_CheckConsole(3u);
                      v672 = AVE_GetCurrTime();
                      v673 = AVE_Log_GetLevelStr(4);
                      if (v675)
                      {
                        v674 = 3340;
                        goto LABEL_734;
                      }
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: stat = NULL.");
                    goto LABEL_515;
                  }

                  v586 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
                  if (v586)
                  {
                    v587 = v586;
                    Dict = AVE_MSE_MakeDict(a1 + 3641, *(v806 + 77), v586);
                    if (!Dict)
                    {
                      CFDictionarySetValue(v539, @"QualityMetrics", v587);
                      CFRelease(v587);
                      goto LABEL_618;
                    }

                    v589 = Dict;
                    if (AVE_Log_CheckLevel(0x2Eu, 4))
                    {
                      v590 = AVE_Log_CheckConsole(0x2Eu);
                      v591 = AVE_GetCurrTime();
                      v592 = AVE_Log_GetLevelStr(4);
                      if (!v590)
                      {
                        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d", v591, 46);
                        goto LABEL_694;
                      }

                      printf("%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d\n", v591, 46, v592, "AVE_FrameRecv", "SendFrame", 3085, "ret == 0", v589);
                      v593 = AVE_GetCurrTime();
                      v716 = "ret == 0";
                      v720 = v589;
                      v707 = 3085;
                      sampleSizeArrayd = AVE_Log_GetLevelStr(4);
                      v594 = "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d";
                      goto LABEL_659;
                    }
                  }

                  else if (AVE_Log_CheckLevel(0x2Eu, 4))
                  {
                    v607 = AVE_Log_CheckConsole(0x2Eu);
                    v608 = AVE_GetCurrTime();
                    v609 = AVE_Log_GetLevelStr(4);
                    if (!v607)
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary", v608);
                      goto LABEL_694;
                    }

                    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary\n", v608, 46, v609, "AVE_FrameRecv", "SendFrame", 3081, "pMSEDict != __null");
                    v593 = AVE_GetCurrTime();
                    v707 = 3081;
                    v716 = "pMSEDict != __null";
                    sampleSizeArrayd = AVE_Log_GetLevelStr(4);
                    v594 = "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary";
LABEL_659:
                    syslog(3, v594, v593, 46, sampleSizeArrayd, "AVE_FrameRecv", "SendFrame", v707, v716, v720);
                  }

LABEL_694:
                  v35 = 0;
                  v819 = 4294966293;
                  goto LABEL_516;
                }
              }

              v529 = 1;
              v530 = 1;
              v531 = 1;
              goto LABEL_558;
            }

            if (!a1[3661] || !a1[3660])
            {
              if (AVE_Log_CheckLevel(0x2Eu, 7))
              {
                v410 = AVE_Log_CheckConsole(0x2Eu);
                v411 = AVE_GetCurrTime();
                v412 = AVE_Log_GetLevelStr(7);
                if (v410)
                {
                  printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v411, 46, v412);
                  v413 = AVE_GetCurrTime();
                  sampleSizeArrayh = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v413, 46, sampleSizeArrayh);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v411, 46, v412);
                }

                v819 = 0;
                v26 = v811;
              }

              else
              {
                v819 = 0;
              }

LABEL_494:
              H264VideoEncoderFrameReceiver::DeleteBuffer(a1, memoryBlocka);
              bzero(a1 + 28548, 0x214uLL);
              goto LABEL_541;
            }

            memset(time1, 0, 32);
            if (*(v806 + 77) < 2u || *(v816 + 44))
            {
              if (allocator)
              {
                v361 = 0;
                v362 = -1;
                v363 = -1;
                v364 = a4;
              }

              else
              {
                v362 = *(v816 + 4560);
                v363 = *(v816 + 4568);
                v364 = -1;
                v361 = *(v816 + 23720);
              }

              time1[0].value = *v799;
              *&time1[0].timescale = v364;
              time1[0].epoch = v362;
              time1[1].value = v363;
              *&time1[1].timescale = v361;
              if (*v817)
              {
                v459 = v308;
                v460 = v53;
                if (*(v817 + 8) == 1)
                {
                  if (*(v816 + 20))
                  {
                    goto LABEL_466;
                  }

                  v494 = CFDataCreateMutable(*MEMORY[0x29EDB8ED8], 0);
                  if (!v494)
                  {
                    goto LABEL_466;
                  }

                  v495 = v494;
                  CFDataAppendBytes(v494, (v816 + 31438), 1574);
                  v496 = *(v803 + 1770);
                  v497 = *v817;
                  sampleTimingArray.duration.value = *(v803 + 1754);
                  *&sampleTimingArray.duration.timescale = *(v803 + 1762);
                  sampleTimingArray.duration.epoch = v496;
                  *(v816 + 20);
                  v498 = VTMultiPassStorageSetDataAtTimeStamp();
                  CFRelease(v495);
                  v819 = v498;
                  if (v498)
                  {
                    if (AVE_Log_CheckLevel(0x2Eu, 4))
                    {
                      v499 = AVE_Log_CheckConsole(0x2Eu);
                      v500 = AVE_GetCurrTime();
                      v501 = AVE_Log_GetLevelStr(4);
                      if (v499)
                      {
                        printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v500, 46, v501);
                        v502 = AVE_GetCurrTime();
                        sampleSizeArrayl = AVE_Log_GetLevelStr(4);
                        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v502, 46, sampleSizeArrayl);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v500, 46, v501);
                      }
                    }
                  }

                  else
                  {
LABEL_466:
                    v819 = 0;
                  }

                  a2 = v816;
                  v7 = v817;
                  v6 = v805;
                }

                else
                {
                  v819 = 0;
                }

                v53 = v460;
                v303 = v806;
              }

              else
              {
                v459 = v308;
                v819 = 0;
              }

              if (AVE_Log_CheckLevel(0x2Eu, 7))
              {
                v474 = AVE_Log_CheckConsole(0x2Eu);
                v475 = AVE_GetCurrTime();
                v476 = AVE_Log_GetLevelStr(7);
                if (v474)
                {
                  printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes\n", v475, 46, v476, memoryBlocka, v459);
                  v477 = AVE_GetCurrTime();
                  sampleSizeArrayk = AVE_Log_GetLevelStr(7);
                  syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes", v477, 46, sampleSizeArrayk, memoryBlocka, v459);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes", v475, 46, v476, memoryBlocka, v459);
                }
              }

              v478 = v7[3];
              v479 = *v799;
              kdebug_trace();
              (a1[3661])(a1[3660], memoryBlocka, dataLength, time1, *(v303 + 131));
              ++*a1;
              v480 = v7[3];
              v481 = *v799;
              kdebug_trace();
              v26 = v811;
              goto LABEL_494;
            }

            v35 = 0;
LABEL_150:
            v819 = 0;
            goto LABEL_46;
          }

          if (!AVE_Log_CheckLevel(0x2Eu, 4))
          {
            v819 = 4294954394;
LABEL_350:
            v7 = v817;
            goto LABEL_395;
          }

          v447 = AVE_Log_CheckConsole(0x2Eu);
          v448 = AVE_GetCurrTime();
          v449 = AVE_Log_GetLevelStr(4);
          v450 = a1[3639];
          if (v447)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d\n", v448, 46, v449, "AVE_FrameRecv", "SendFrame", 2571, "m_sMVBuf.pBuf != __null", a1[3639], *v799);
            v451 = AVE_GetCurrTime();
            v452 = AVE_Log_GetLevelStr(4);
            v453 = a1[3639];
            v751 = *v799;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d", v451, 46, v452);
          }

          else
          {
            v729 = a1[3639];
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d", v448, 46, v449);
          }

          v819 = 4294954394;
          a2 = v816;
          a3 = v812;
LABEL_401:
          v7 = v817;
LABEL_435:
          v6 = v805;
          goto LABEL_436;
        }

        if (!AVE_Log_CheckLevel(3u, 4))
        {
          v819 = 0;
          a3 = v812;
          v6 = v805;
          v35 = v808;
          goto LABEL_257;
        }

        v238 = AVE_Log_CheckConsole(3u);
        v239 = AVE_GetCurrTime();
        v240 = AVE_Log_GetLevelStr(4);
        v6 = v805;
        v35 = v808;
        if (v238)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v239, 3, v240, "SendFrame", 2536, "codedHeader != __null");
          v241 = AVE_GetCurrTime();
          v242 = AVE_Log_GetLevelStr(4);
          a2 = v816;
          v7 = v817;
          v26 = v811;
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v241, 3, v242, "SendFrame", 2536, "codedHeader != __null");
          goto LABEL_161;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v239, 3, v240, "SendFrame", 2536, "codedHeader != __null");
        v819 = 0;
        a3 = v812;
LABEL_429:
        a2 = v816;
        v7 = v817;
        goto LABEL_46;
      }

      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v429 = v6;
        v430 = AVE_Log_CheckConsole(0x2Eu);
        v431 = AVE_GetCurrTime();
        v432 = AVE_Log_GetLevelStr(4);
        v433 = v817[3];
        v434 = *(v816 + 40);
        if (v430)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p\n", v431, 46, v432, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v433, v434, dataLength, v428);
          v435 = AVE_GetCurrTime();
          v436 = AVE_Log_GetLevelStr(4);
          v26 = v811;
          a2 = v816;
          v7 = v817;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p", v435, 46, v436, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v817[3], *(v816 + 40), dataLength, a1 + 28548);
          v819 = 0;
          a3 = v812;
          v6 = v429;
          goto LABEL_437;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p", v431, 46, v432, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v433, v434, dataLength, v428);
        v819 = 0;
        a3 = v812;
        v6 = v429;
        goto LABEL_428;
      }
    }

    v819 = 0;
    a3 = v812;
LABEL_428:
    v35 = v808;
    goto LABEL_429;
  }

  v805 = v6;
  v221 = 0;
  v222 = a1 + 29084;
  v223 = &v833;
  v224 = 1;
  v796 = v66;
  while (1)
  {
    v225 = v224;
    v226 = &v222[12 * v221];
    v227 = v226[7];
    if (v227 < 1 || *(v226 + 2) < 1)
    {
      goto LABEL_219;
    }

    if (!v66)
    {
      if (!AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v819 = 0;
        a3 = v812;
        v6 = v805;
        v26 = v811;
        goto LABEL_428;
      }

      v344 = AVE_Log_CheckConsole(0x2Eu);
      v345 = AVE_GetCurrTime();
      v346 = AVE_Log_GetLevelStr(4);
      v108 = v817;
      v347 = v817[3];
      v26 = v811;
      v35 = v808;
      if (v344)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i\n", v345, 46, v346, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v817[3], v221);
        v348 = AVE_GetCurrTime();
        v349 = AVE_Log_GetLevelStr(4);
        v7 = v817;
        a2 = v816;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i", v348, 46, v349, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v817[3], v221);
        v819 = 0;
        a3 = v812;
        goto LABEL_228;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i", v345, 46, v346, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v817[3], v221);
      v819 = 0;
      a3 = v812;
      a2 = v816;
      goto LABEL_129;
    }

    v800 = *(v226 + 2);
    v820 = v224;
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v228 = AVE_Log_CheckConsole(0x2Eu);
      v789 = AVE_GetCurrTime();
      v229 = AVE_Log_GetLevelStr(7);
      v230 = v817[3];
      v231 = v226[7];
      v232 = *(v226 + 2);
      if (v228)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld\n", v789, 46, v229, "AVE_FrameRecv", "SendFrame", 2467, a1, v230, v221, v231, *(v226 + 2), dataLength);
        v233 = AVE_GetCurrTime();
        v234 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld", v233, 46, v234, "AVE_FrameRecv", "SendFrame", 2467, a1, v817[3], v221, v226[7], *(v226 + 2), dataLength);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld", v789, 46, v229, "AVE_FrameRecv", "SendFrame", 2467, a1, v230, v221, v231, *(v226 + 2), dataLength);
      }

      v66 = v796;
    }

    v235 = v226[7];
    if (v235 >= 2)
    {
      if (AVE_EncFrameInfo_AddBuf(v226, v235 - 1, 5u, v828))
      {
        break;
      }
    }

    v236 = malloc_type_malloc(*(v226 + 2) + 1, 0x100004077774924uLL);
    *v223 = v236;
    if (!v236)
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v350 = AVE_Log_CheckConsole(0x2Eu);
        v351 = AVE_GetCurrTime();
        v352 = AVE_Log_GetLevelStr(4);
        v155 = v817;
        v35 = v808;
        if (v350)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d\n", v351, 46, v352, "AVE_FrameRecv", "SendFrame", 2483, "piFillerBuf[i] != __null", a1, v817[3], *(v816 + 3180), v221, *(v226 + 2));
          v353 = AVE_GetCurrTime();
          v354 = AVE_Log_GetLevelStr(4);
          v779 = *(v226 + 2);
          v746 = v817[3];
          v766 = *(v816 + 3180);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d", v353, 46, v354, "AVE_FrameRecv", "SendFrame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d", v351, 46, v352, "AVE_FrameRecv", "SendFrame");
        }

        v819 = 0;
        a3 = v812;
        v6 = v805;
        a2 = v816;
        v26 = v811;
        goto LABEL_319;
      }

      goto LABEL_400;
    }

    v237 = v236;
    memset(v236, 255, *(v226 + 2));
    v237[*(v226 + 2)] = 0x80;
    if (AVE_EncFrameInfo_AddBuf(v237, *(v226 + 2) + 1, 5u, v828))
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v355 = AVE_Log_CheckConsole(0x2Eu);
        v356 = AVE_GetCurrTime();
        v357 = AVE_Log_GetLevelStr(4);
        v358 = *(v226 + 2);
        if (v355)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p\n", v356, 46, v357, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0", a1, v817[3], *(v816 + 40), v221, v237, *(v226 + 2), v828);
          v359 = AVE_GetCurrTime();
          v360 = AVE_Log_GetLevelStr(4);
          v783 = *(v226 + 2);
          v747 = v817[3];
          v767 = *(v816 + 40);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p", v359, 46, v360, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0");
        }

        else
        {
          v785 = *(v226 + 2);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p", v356, 46, v357, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0");
        }

        v819 = 0;
        a2 = v816;
        a3 = v812;
        v7 = v817;
        goto LABEL_435;
      }

      goto LABEL_400;
    }

    dataLength += (v800 + v227);
    v222 = a1 + 29084;
    v225 = v820;
LABEL_219:
    v224 = 0;
    v223 = &v832;
    v221 = 1;
    if ((v225 & 1) == 0)
    {
      v6 = v805;
      v26 = v811;
      goto LABEL_176;
    }
  }

  if (!AVE_Log_CheckLevel(0x2Eu, 4))
  {
LABEL_400:
    v819 = 0;
    a3 = v812;
    a2 = v816;
    goto LABEL_401;
  }

  v402 = AVE_Log_CheckConsole(0x2Eu);
  v403 = AVE_GetCurrTime();
  v404 = AVE_Log_GetLevelStr(4);
  v155 = v817;
  v405 = v817[3];
  v299 = v816;
  v406 = *(v816 + 40);
  v407 = v226[7];
  if (v402)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p\n", v403, 46, v404, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v405, v406, v221, v226, v226[7], v828);
    v408 = AVE_GetCurrTime();
    v409 = AVE_Log_GetLevelStr(4);
    v784 = v226[7];
    v780 = v226;
    a2 = v816;
    v7 = v817;
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p", v408, 46, v409, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v817[3], *(v816 + 40), v221, v780, v784, v828);
    v819 = 0;
    a3 = v812;
    goto LABEL_435;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p", v403, 46, v404, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v405, v406, v221, v226, v226[7], v828);
  v819 = 0;
  a3 = v812;
  v6 = v805;
  v26 = v811;
  v35 = v808;
LABEL_461:
  a2 = v299;
LABEL_319:
  v7 = v155;
LABEL_46:
  AVE_SEI::DeleteFrame(v6[4], *(a2 + 40));
  if (v35)
  {
    free(v35);
  }

  if (v26)
  {
    v818[542] = 0;
  }

  *(v6 + 4) = 0;
  if (*v6)
  {
    H264VideoEncoderFrameReceiver::DeleteBuffer(a1, *v6);
    *v6 = 0;
  }

  v54 = v6[1];
  if (v54)
  {
    CFRelease(v54);
    v6[1] = 0;
  }

  v55 = &v833;
  v56 = 1;
  v57 = v819;
  do
  {
    v58 = v56;
    if (*v55)
    {
      free(*v55);
      *v55 = 0;
    }

    v56 = 0;
    v55 = &v832;
  }

  while ((v58 & 1) != 0);
  if (v53)
  {
    free(v53);
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v59 = AVE_Log_CheckConsole(0x2Eu);
    v60 = AVE_GetCurrTime();
    v61 = AVE_Log_GetLevelStr(7);
    if (v59)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d\n", v60, 46, v61, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4, v819);
      v62 = AVE_GetCurrTime();
      v63 = AVE_Log_GetLevelStr(7);
      v711 = v7[3];
      v57 = v819;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d", v62, 46, v63, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d", v60, 46, v61, "AVE_FrameRecv");
    }
  }

LABEL_98:
  v88 = *MEMORY[0x29EDCA608];
  return v57;
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

uint64_t H264VideoEncoderFrameReceiver::Recv(H264VideoEncoderFrameReceiver *this, void *a2, int a3, int a4, uint64_t a5)
{
  v5 = a5;
  v8 = a2;
  if (this)
  {
    H264VideoEncoderFrameReceiver::FrameDone(this, a2, a3, a4, a5);
    return 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v10 = AVE_Log_CheckConsole(0x2Eu);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d\n", CurrTime, 46, LevelStr, "Recv", 3528, "pCtx != __null", 0, v8, a3, a4, v5);
        v13 = AVE_GetCurrTime();
        v14 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", v13, 46, v14);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", CurrTime, 46, LevelStr);
      }
    }

    return 4294966295;
  }
}

void H264VideoEncoderFrameReceiver::FrameDone(H264VideoEncoderFrameReceiver *this, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v9 = (this + 137804);
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v10 = AVE_Log_CheckConsole(0x2Eu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d\n", CurrTime, 46, LevelStr, "FrameDone", a2, a3, a4, a5);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d", CurrTime);
  }

  if (!*(this + 3666) || !v9[1])
  {
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v17 = AVE_Log_CheckConsole(0x2Eu);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      v20 = *(this + 3666);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d\n", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(this + 3666), v9[1]);
        v18 = AVE_GetCurrTime();
        v19 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(this + 3666), v9[1]);
    }

    goto LABEL_349;
  }

  if (a2 != -1023)
  {
    if (!a2)
    {
      goto LABEL_22;
    }

    if (a2 != -1004)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v21 = AVE_Log_CheckConsole(3u);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.\n", v22, 3, v23, "FrameDone", 3568, "result == 0");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.");
      }

      goto LABEL_349;
    }
  }

  if (AVE_Log_CheckLevel(0x2Eu, 4))
  {
    v13 = AVE_Log_CheckConsole(0x2Eu);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(4);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources\n", v14, 46, v15);
      v16 = AVE_GetCurrTime();
      v351 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v16, 46, v351);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v14, 46, v15);
    }
  }

LABEL_22:
  v394 = (this + 137792);
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v24 = a5;
    v25 = AVE_Log_CheckConsole(0x2Eu);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(7);
    if (v25)
    {
      printf("%lld %d AVE %s: \nH264FrameRec: counter received = %d\n", v26, 46, v27, a4);
      v28 = AVE_GetCurrTime();
      v352 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v28, 46, v352, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v26, 46, v27, a4);
    }

    a5 = v24;
  }

  v399[0] = 0;
  AVE_DAL::Idx2Addr(*(this + 3666), a4, v399);
  v29 = v399[0];
  v30 = *(v399[0] + 4);
  v31 = *(v9 + 3);
  v32 = *(v399[0] + 40);
  kdebug_trace();
  v398 = v29;
  v33 = *(v29 + 4);
  v395 = a5;
  v396 = a4;
  if (v33 <= 6)
  {
    if (v33 == 5)
    {
      if (a2 != -1023 && a2 != -1004)
      {
        v388 = a2;
        if (AVE_Log_CheckLevel(0x2Eu, 7))
        {
          v66 = AVE_Log_CheckConsole(0x2Eu);
          v67 = AVE_GetCurrTime();
          v68 = AVE_Log_GetLevelStr(7);
          if (v66)
          {
            printf("%lld %d AVE %s: %s:%d DataType_INIT counter %d frame %d\n", v67, 46, v68, "FrameDone", 3788, a4, *(v29 + 40));
            v67 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(7);
            v69 = *(v29 + 40);
          }

          else
          {
            v369 = *(v29 + 40);
          }

          syslog(3, "%lld %d AVE %s: %s:%d DataType_INIT counter %d frame %d", v67);
        }

        v387 = v9;
        v227 = 0;
        v228 = v29 + 2620;
        v229 = (this + 26712);
        do
        {
          v230 = *(v228 + 4 * v227);
          if (v230)
          {
            v231 = IOSurfaceLookup(v230);
            *v229 = v231;
            IOSurfaceLock(v231, 0, 0);
            *(v229 - 30) = IOSurfaceGetBaseAddress(*v229);
            *(this + v227 + 6738) = IOSurfaceGetAllocSize(*v229);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v232 = AVE_Log_CheckConsole(0x2Eu);
              v233 = AVE_GetCurrTime();
              v234 = AVE_Log_GetLevelStr(7);
              v235 = *(v228 + 4 * v227);
              v236 = *v229;
              v237 = *(v229 - 30);
              if (v232)
              {
                printf("%lld %d AVE %s: %s:%d CodedData %d %d %p %p\n", v233, 46, v234, "FrameDone", 3802, v227, v235, *v229, v237);
                v238 = AVE_GetCurrTime();
                v239 = AVE_Log_GetLevelStr(7);
                v240 = *v229;
                syslog(3, "%lld %d AVE %s: %s:%d CodedData %d %d %p %p", v238, 46, v239, "FrameDone", 3802, v227, *(v228 + 4 * v227), *v229, *(v229 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d CodedData %d %d %p %p", v233, 46, v234, "FrameDone", 3802, v227, v235, *v229, v237);
              }
            }
          }

          ++v227;
          ++v229;
        }

        while (v227 != 30);
        v241 = (v398 + 2740);
        v242 = (this + 27312);
        v243 = -30;
        do
        {
          if (*v241)
          {
            v244 = IOSurfaceLookup(*v241);
            *v242 = v244;
            IOSurfaceLock(v244, 0, 0);
            *(v242 - 30) = IOSurfaceGetBaseAddress(*v242);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v245 = AVE_Log_CheckConsole(0x2Eu);
              v246 = AVE_GetCurrTime();
              v247 = AVE_Log_GetLevelStr(7);
              v248 = *v241;
              v249 = *v242;
              v250 = *(v242 - 30);
              if (v245)
              {
                printf("%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p\n", v246, 46, v247, "FrameDone", 3818, v243 + 30, v248, *v242, v250);
                v251 = AVE_GetCurrTime();
                v252 = AVE_Log_GetLevelStr(7);
                v253 = *v242;
                syslog(3, "%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p", v251, 46, v252, "FrameDone", 3818, v243 + 30, *v241, *v242, *(v242 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p", v246, 46, v247, "FrameDone", 3818, v243 + 30, v248, *v242, v250);
              }
            }
          }

          ++v242;
          ++v241;
          v254 = __CFADD__(v243++, 1);
        }

        while (!v254);
        v255 = (v398 + 2860);
        v256 = (this + 27792);
        v257 = -30;
        do
        {
          if (*v255)
          {
            v258 = IOSurfaceLookup(*v255);
            *v256 = v258;
            IOSurfaceLock(v258, 0, 0);
            *(v256 - 30) = IOSurfaceGetBaseAddress(*v256);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v259 = AVE_Log_CheckConsole(0x2Eu);
              v260 = AVE_GetCurrTime();
              v261 = AVE_Log_GetLevelStr(7);
              v262 = *v255;
              v263 = *v256;
              v264 = *(v256 - 30);
              if (v259)
              {
                printf("%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p\n", v260, 46, v261, "FrameDone", 3834, v257 + 30, v262, *v256, v264);
                v265 = AVE_GetCurrTime();
                v266 = AVE_Log_GetLevelStr(7);
                v267 = *v256;
                syslog(3, "%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p", v265, 46, v266, "FrameDone", 3834, v257 + 30, *v255, *v256, *(v256 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p", v260, 46, v261, "FrameDone", 3834, v257 + 30, v262, *v256, v264);
              }
            }
          }

          ++v256;
          ++v255;
          v254 = __CFADD__(v257++, 1);
        }

        while (!v254);
        v268 = (v398 + 2980);
        v269 = (this + 26032);
        v270 = -30;
        do
        {
          if (*v268)
          {
            v271 = IOSurfaceLookup(*v268);
            *v269 = v271;
            IOSurfaceLock(v271, 0, 0);
            *(v269 - 30) = IOSurfaceGetBaseAddress(*v269);
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v272 = AVE_Log_CheckConsole(0x2Eu);
              v273 = AVE_GetCurrTime();
              v274 = AVE_Log_GetLevelStr(7);
              v275 = *v268;
              v276 = *v269;
              v277 = *(v269 - 30);
              if (v272)
              {
                printf("%lld %d AVE %s: %s:%d MBStats %d %d %p %p\n", v273, 46, v274, "FrameDone", 3850, v270 + 30, v275, *v269, v277);
                v278 = AVE_GetCurrTime();
                v279 = AVE_Log_GetLevelStr(7);
                v280 = *v269;
                syslog(3, "%lld %d AVE %s: %s:%d MBStats %d %d %p %p", v278, 46, v279, "FrameDone", 3850, v270 + 30, *v268, *v269, *(v269 - 30));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d MBStats %d %d %p %p", v273, 46, v274, "FrameDone", 3850, v270 + 30, v275, *v269, v277);
              }
            }
          }

          ++v269;
          ++v268;
          v254 = __CFADD__(v270++, 1);
        }

        while (!v254);
        v281 = 0;
        v282 = v398 + 3100;
        do
        {
          v283 = *(v282 + 4 * v281);
          if (v283)
          {
            *(this + v281 + 6598) = v283;
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v284 = AVE_Log_CheckConsole(0x2Eu);
              v285 = AVE_GetCurrTime();
              v286 = AVE_Log_GetLevelStr(7);
              v287 = *(v282 + 4 * v281);
              if (v284)
              {
                printf("%lld %d AVE %s: %s:%d iaLFSResult %d %d\n", v285, 46, v286, "FrameDone", 3864, v281, v287);
                v288 = AVE_GetCurrTime();
                v289 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d iaLFSResult %d %d", v288, 46, v289, "FrameDone", 3864, v281, *(v282 + 4 * v281));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d iaLFSResult %d %d", v285, 46, v286, "FrameDone", 3864, v281, v287);
              }
            }
          }

          ++v281;
        }

        while (v281 != 10);
        v290 = 0;
        v291 = v398 + 3140;
        do
        {
          v292 = *(v291 + 4 * v290);
          if (v292)
          {
            *(this + v290 + 6608) = v292;
            if (AVE_Log_CheckLevel(0x2Eu, 7))
            {
              v293 = AVE_Log_CheckConsole(0x2Eu);
              v294 = AVE_GetCurrTime();
              v295 = AVE_Log_GetLevelStr(7);
              v296 = *(v291 + 4 * v290);
              if (v293)
              {
                printf("%lld %d AVE %s: %s:%d iaLRSResult %d %d\n", v294, 46, v295, "FrameDone", 3876, v290, v296);
                v297 = AVE_GetCurrTime();
                v298 = AVE_Log_GetLevelStr(7);
                syslog(3, "%lld %d AVE %s: %s:%d iaLRSResult %d %d", v297, 46, v298, "FrameDone", 3876, v290, *(v291 + 4 * v290));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d iaLRSResult %d %d", v294, 46, v295, "FrameDone", 3876, v290, v296);
              }
            }
          }

          ++v290;
        }

        while (v290 != 10);
        *(this + 9735) = *(v398 + 4624);
        v9 = v387;
        a2 = v388;
      }

      AVE_DAL::Free(*(this + 3666), v398);
      v393 = -1;
      goto LABEL_105;
    }

    v34 = a2;
    if (v33 == 6)
    {
      v45 = v9;
      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v46 = AVE_Log_CheckConsole(0x2Eu);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(7);
        v49 = *(v29 + 40);
        v50 = *(v9 + 3);
        if (v46)
        {
          printf("%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld \n", v47, 46, v48, *(v29 + 40), v50);
          v51 = AVE_GetCurrTime();
          v52 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v51, 46, v52, *(v29 + 40), *(v9 + 3));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v47, 46, v48, *(v29 + 40), v50);
        }
      }

      v94 = this + 26032;
      v95 = 30;
      do
      {
        if (*v94)
        {
          IOSurfaceUnlock(*v94, 0, 0);
          CFRelease(*v94);
          *v94 = 0;
        }

        v96 = *(v94 + 85);
        if (v96)
        {
          IOSurfaceUnlock(v96, 0, 0);
          CFRelease(*(v94 + 85));
          *(v94 + 85) = 0;
        }

        v97 = *(v94 + 160);
        if (v97)
        {
          IOSurfaceUnlock(v97, 0, 0);
          CFRelease(*(v94 + 160));
          *(v94 + 160) = 0;
        }

        v98 = *(v94 + 220);
        if (v98)
        {
          IOSurfaceUnlock(v98, 0, 0);
          CFRelease(*(v94 + 220));
          *(v94 + 220) = 0;
        }

        v94 += 8;
        --v95;
      }

      while (v95);
      AVE_DAL::Free(*(this + 3666), v398);
      v393 = -1;
      v9 = v45;
      goto LABEL_104;
    }

    goto LABEL_51;
  }

  v34 = a2;
  v35 = this + 25784;
  if (v33 == 10)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v53 = AVE_Log_CheckConsole(0x2Eu);
      v54 = AVE_GetCurrTime();
      v55 = AVE_Log_GetLevelStr(7);
      v56 = *(v29 + 40);
      if (v53)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d\n", v54, 46, v55, v56);
        v57 = AVE_GetCurrTime();
        v353 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v57, 46, v353, *(v29 + 40));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v54, 46, v55, v56);
      }
    }

    if (*v394)
    {
      AVE_MultiPass::FlushStats((this + 16), *v394, 0);
    }

    *v35 = 0;
    if (*(this + 3670))
    {
      FigFormatDescriptionRelease();
      *(this + 3670) = 0;
    }

    goto LABEL_62;
  }

  if (v33 == 8)
  {
    if (AVE_Log_CheckLevel(0x2Eu, 7))
    {
      v58 = v34;
      v59 = AVE_Log_CheckConsole(0x2Eu);
      v60 = AVE_GetCurrTime();
      v61 = AVE_Log_GetLevelStr(7);
      v62 = *(v29 + 40);
      v63 = *(v9 + 3);
      if (v59)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld\n", v60, 46, v61, v62, v396, v63);
        v64 = AVE_GetCurrTime();
        v65 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v64, 46, v65, *(v29 + 40), v396, *(v9 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v60, 46, v61, v62, v396, v63);
      }

      v34 = v58;
    }

LABEL_62:
    AVE_DAL::Free(*(this + 3666), v29);
LABEL_63:
    v393 = -1;
LABEL_104:
    a2 = v34;
    goto LABEL_105;
  }

  if (v33 != 7)
  {
LABEL_51:
    if (AVE_Log_CheckLevel(0x2Eu, 4))
    {
      v70 = AVE_Log_CheckConsole(0x2Eu);
      v71 = AVE_GetCurrTime();
      v72 = AVE_Log_GetLevelStr(4);
      v73 = *(v29 + 4);
      if (v70)
      {
        printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v71, 46, v72, v73);
        v74 = AVE_GetCurrTime();
        v354 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v74, 46, v354, *(v29 + 4));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v71, 46, v72, v73);
      }
    }

    goto LABEL_63;
  }

  v391 = a3;
  v36 = this + 38944;
  *(v29 + 33080) = AVE_GetCurrTime();
  if (AVE_Log_CheckLevel(0x2Eu, 7))
  {
    v37 = a5;
    v38 = a4;
    v39 = v34;
    v40 = AVE_Log_CheckConsole(0x2Eu);
    v41 = AVE_GetCurrTime();
    v42 = AVE_Log_GetLevelStr(7);
    v43 = *(v9 + 3);
    if (v40)
    {
      printf("%lld %d AVE %s: H264FrameRec: DataType_YUV frame %d type %d ClientID %lld counter %d\n", v41, 46, v42, *(v29 + 40), *(v29 + 2456), *(v9 + 3), v38);
      v41 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
      v44 = *(v9 + 3);
      v364 = *(v29 + 40);
      v365 = *(v29 + 2456);
    }

    else
    {
      v366 = *(v9 + 3);
    }

    syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_YUV frame %d type %d ClientID %lld counter %d", v41);
    v34 = v39;
    a4 = v38;
    a5 = v37;
    v36 = this + 38944;
  }

  if (!*(v29 + 40))
  {
    *(this + 3665) = *(v29 + 4608);
  }

  if (*(v36 + 77) >= 2u && *(v29 + 44) && *(this + 29277) == 1)
  {
    *(v29 + 2456) = 4;
  }

  v75 = *v9;
  if (*v9 == 5)
  {
    v84 = H264VideoEncoderFrameReceiver::SendOutputFrameDMV(this, v29);
    AVE_DAL::Free(*(this + 3666), v29);
    if (v84)
    {
      a3 = v391;
      LODWORD(a5) = v395;
      a2 = v34;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v85 = AVE_Log_CheckConsole(3u);
        v86 = AVE_GetCurrTime();
        v87 = AVE_Log_GetLevelStr(4);
        if (v85)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV failed.\n", v86, 3, v87, "FrameDone", 3629, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          a3 = v391;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV failed.");
      }

      goto LABEL_345;
    }

LABEL_87:
    v393 = -1;
    a3 = v391;
    goto LABEL_104;
  }

  if (v75 == 4)
  {
    v80 = H264VideoEncoderFrameReceiver::SendFrameGGM(this, v29);
    AVE_DAL::Free(*(this + 3666), v29);
    if (v80)
    {
      a3 = v391;
      LODWORD(a5) = v395;
      a2 = v34;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v81 = AVE_Log_CheckConsole(0x2Eu);
        v82 = AVE_GetCurrTime();
        v83 = AVE_Log_GetLevelStr(4);
        if (v81)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to send GGM frame done\n", v82, 46, v83, "FrameDone", 3620, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          a3 = v391;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to send GGM frame done");
      }

      goto LABEL_345;
    }

    goto LABEL_87;
  }

  if (v75 == 3)
  {
    v76 = H264VideoEncoderFrameReceiver::SendFrameMCTF(this, v29);
    AVE_DAL::Free(*(this + 3666), v29);
    if (v76)
    {
      a3 = v391;
      LODWORD(a5) = v395;
      a2 = v34;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v77 = AVE_Log_CheckConsole(3u);
        v78 = AVE_GetCurrTime();
        v79 = AVE_Log_GetLevelStr(4);
        if (v77)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF failed.\n", v78, 3, v79, "FrameDone", 3613, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          a3 = v391;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF failed.");
      }

      goto LABEL_345;
    }

    goto LABEL_87;
  }

  v88 = *(v29 + 2456);
  if (v88 >= 4)
  {
    if (v88 == 4)
    {
      a2 = v34;
      if (AVE_Log_CheckLevel(0x2Eu, 5))
      {
        v307 = AVE_Log_CheckConsole(0x2Eu);
        v308 = AVE_GetCurrTime();
        v309 = AVE_Log_GetLevelStr(5);
        v310 = *(v29 + 40);
        v311 = *(v29 + 2456);
        if (v307)
        {
          printf("%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d\n", v308, 46, v309, v310, v311);
          v312 = AVE_GetCurrTime();
          v313 = AVE_Log_GetLevelStr(5);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v312, 46, v313, *(v29 + 40), *(v29 + 2456));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v308, 46, v309, v310, v311);
        }
      }

      v112 = H264VideoEncoderFrameReceiver::DropFrame(this, v29);
      v317 = 0;
      v328 = 0;
      v339 = -1;
LABEL_368:
      v393 = v339;
      goto LABEL_369;
    }

    if (v88 != 6)
    {
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        a2 = v34;
        v222 = AVE_Log_CheckConsole(0x2Eu);
        v223 = AVE_GetCurrTime();
        v224 = AVE_Log_GetLevelStr(4);
        v225 = *(v29 + 2456);
        if (v222)
        {
          printf("%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.\n", v223, 46, v224, v225);
          v226 = AVE_GetCurrTime();
          v361 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.", v226, 46, v361, *(v29 + 2456));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.", v223, 46, v224, v225);
        }

        v317 = 0;
        v328 = 0;
        v112 = 0;
        v393 = -1;
      }

      else
      {
        v317 = 0;
        v328 = 0;
        v112 = 0;
        v393 = -1;
        a2 = v34;
      }

      goto LABEL_369;
    }
  }

  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v89 = v34;
    v90 = AVE_Log_CheckConsole(0x2Eu);
    v91 = AVE_GetCurrTime();
    v92 = AVE_Log_GetLevelStr(8);
    v93 = *(v36 + 126);
    if (v90)
    {
      printf("%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d\n", v91, 46, v92, "AVE_FrameRecv", "FrameDone", 3645, *v9, *(v29 + 40), *(v29 + 2456), *(this + 3670), *v35, *(v36 + 126), *(v29 + 6081));
      v91 = AVE_GetCurrTime();
      v92 = AVE_Log_GetLevelStr(8);
      v382 = *(v36 + 126);
      v384 = *(v29 + 6081);
      v379 = *(this + 3670);
      v381 = *v35;
      v370 = *(v29 + 40);
      v374 = *(v29 + 2456);
      v368 = *v9;
    }

    else
    {
      v383 = *(v36 + 126);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d", v91, 46, v92, "AVE_FrameRecv", "FrameDone");
    v34 = v89;
    a5 = v395;
  }

  v299 = *(this + 3670);
  if (v299 || *v35 == 1)
  {
    a2 = v34;
    if (*(v36 + 126) == 2 && *(v29 + 6081) == 1)
    {
      if (v299)
      {
        FigFormatDescriptionRelease();
        *(this + 3670) = 0;
      }

      if (H264VideoEncoderFrameReceiver::SendPS(this, v29))
      {
        a3 = v391;
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v300 = a5;
          v301 = AVE_Log_CheckConsole(0x2Eu);
          v302 = AVE_GetCurrTime();
          v303 = AVE_Log_GetLevelStr(4);
          if (v301)
          {
            v304 = v398;
            v375 = v398;
            v305 = this;
            v371 = this;
            v306 = 3667;
LABEL_327:
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p\n", v302, 46, v303, "AVE_FrameRecv", "FrameDone", v306, "ret == 0", v371, v375);
            v302 = AVE_GetCurrTime();
            v372 = v305;
            v376 = v304;
            v367 = v306;
            a2 = v34;
            a3 = v391;
            v362 = AVE_Log_GetLevelStr(4);
            v315 = "%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p";
LABEL_387:
            syslog(3, v315, v302, 46, v362, "AVE_FrameRecv", "FrameDone", v367, "ret == 0", v372, v376, v378);
            LODWORD(a5) = v300;
            goto LABEL_345;
          }

          v376 = v398;
          v372 = this;
          v350 = 3667;
          goto LABEL_386;
        }

        goto LABEL_345;
      }
    }
  }

  else
  {
    a2 = v34;
    if (*v9 == 1 && H264VideoEncoderFrameReceiver::SendPS(this, v29))
    {
      a3 = v391;
      if (AVE_Log_CheckLevel(0x2Eu, 4))
      {
        v300 = a5;
        v314 = AVE_Log_CheckConsole(0x2Eu);
        v302 = AVE_GetCurrTime();
        v303 = AVE_Log_GetLevelStr(4);
        if (v314)
        {
          v304 = v398;
          v375 = v398;
          v305 = this;
          v371 = this;
          v306 = 3675;
          goto LABEL_327;
        }

        v376 = v398;
        v372 = this;
        v350 = 3675;
LABEL_386:
        v367 = v350;
        v362 = v303;
        v315 = "%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p";
        goto LABEL_387;
      }

LABEL_345:
      v332 = *(v398 + 2600);
      if (v332)
      {
        CVPixelBufferRelease(v332);
        *(v398 + 2600) = 0;
      }

      v333 = *(v398 + 2608);
      if (v333)
      {
        CVPixelBufferRelease(v333);
        *(v398 + 2608) = 0;
      }

      goto LABEL_349;
    }
  }

  v316 = *(v36 + 1) - 1;
  v317 = v316 == a5;
  if ((a5 & 0x80000000) != 0 || !*v36)
  {
    v324 = *v9;
    if (*v9 == 2)
    {
      if (H264VideoEncoderFrameReceiver::ProcessAndEmitLrmeStats(this, v398))
      {
        a3 = v391;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v325 = AVE_Log_CheckConsole(3u);
          v326 = AVE_GetCurrTime();
          v327 = AVE_Log_GetLevelStr(4);
          if (v325)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats failed\n", v326, 3, v327, "FrameDone", 3704, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            a3 = v391;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats failed");
        }

        goto LABEL_345;
      }

      v328 = 0;
      v339 = a5;
      v112 = 0;
    }

    else
    {
      if (*v36)
      {
        v328 = 0;
        v329 = a5;
        v112 = 0;
        v393 = v329;
LABEL_370:
        if (v324 == 1)
        {
          v342 = *(v36 + 219);
          v343 = AVE_GetCurrTime();
          AVE_TimeStats_AddEndTime(v342, 5u, v343);
        }

        a3 = v391;
        if (v112 && AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v344 = v9;
          v345 = a2;
          v346 = AVE_Log_CheckConsole(0x2Eu);
          v347 = AVE_GetCurrTime();
          v348 = AVE_Log_GetLevelStr(4);
          if (v346)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.\n", v347, 46, v348);
            v349 = AVE_GetCurrTime();
            v363 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v349, 46, v363);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v347, 46, v348);
          }

          a2 = v345;
          v9 = v344;
        }

        AVE_DAL::Free(*(this + 3666), v398);
        if (v317 || (v328 & 1) == 0)
        {
          goto LABEL_105;
        }

        if (!v328)
        {
          goto LABEL_122;
        }

        goto LABEL_380;
      }

      if (H264VideoEncoderFrameReceiver::CollectSlicesInfo(this, *(v398 + 3180), *(v398 + 44)))
      {
        a3 = v391;
        if (!AVE_Log_CheckLevel(0x2Eu, 4))
        {
          goto LABEL_345;
        }

        v300 = a5;
        v338 = AVE_Log_CheckConsole(0x2Eu);
        v302 = AVE_GetCurrTime();
        v319 = AVE_Log_GetLevelStr(4);
        if (v338)
        {
          v320 = v398;
          v377 = *(v398 + 3180);
          v380 = *(v398 + 44);
          v321 = this;
          v373 = this;
          v322 = 3716;
          goto LABEL_334;
        }

        v376 = *(v398 + 3180);
        v378 = *(v398 + 44);
        v372 = this;
        v340 = 3716;
LABEL_362:
        v367 = v340;
        v362 = v319;
        v315 = "%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d";
        goto LABEL_387;
      }

      v401 = 0;
      *v399 = 0u;
      v400 = 0u;
      Connection::peekPacket(*(this + 3667), v399);
      v341 = H264VideoEncoderFrameReceiver::SendFrame(this, v398, v399, 0xFFFFFFFFLL);
      v339 = a5;
      v112 = v341;
      v328 = 0;
    }

    goto LABEL_368;
  }

  if (H264VideoEncoderFrameReceiver::CollectSlicesInfo(this, *(v398 + 3180), *(v398 + 44)))
  {
    a3 = v391;
    if (!AVE_Log_CheckLevel(0x2Eu, 4))
    {
      goto LABEL_345;
    }

    v300 = a5;
    v318 = AVE_Log_CheckConsole(0x2Eu);
    v302 = AVE_GetCurrTime();
    v319 = AVE_Log_GetLevelStr(4);
    if (v318)
    {
      v320 = v398;
      v377 = *(v398 + 3180);
      v380 = *(v398 + 44);
      v321 = this;
      v373 = this;
      v322 = 3692;
LABEL_334:
      printf("%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d\n", v302, 46, v319, "AVE_FrameRecv", "FrameDone", v322, "ret == 0", v373, v377, v380);
      v302 = AVE_GetCurrTime();
      v323 = AVE_Log_GetLevelStr(4);
      v376 = *(v320 + 3180);
      v378 = *(v320 + 44);
      v372 = v321;
      v367 = v322;
      a2 = v34;
      v362 = v323;
      a3 = v391;
      v315 = "%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d";
      goto LABEL_387;
    }

    v376 = *(v398 + 3180);
    v378 = *(v398 + 44);
    v372 = this;
    v340 = 3692;
    goto LABEL_362;
  }

  v401 = 0;
  *v399 = 0u;
  v400 = 0u;
  Connection::peekPacket(*(this + 3667), v399);
  v330 = H264VideoEncoderFrameReceiver::SendFrame(this, v398, v399, a5);
  v331 = a5;
  v112 = v330;
  if (v316 == v331)
  {
    v317 = 1;
    v393 = v331;
    v328 = 1;
LABEL_369:
    v324 = *v9;
    goto LABEL_370;
  }

  v393 = v331;
  a3 = v391;
LABEL_380:
  if (*(v398 + 2456) != 4)
  {
LABEL_122:
    v113 = *(v398 + 4);
    if (v113 <= 6)
    {
      if (v113 == 5)
      {
        *v399 = 0u;
        v400 = 0u;
        a4 = v396;
        LODWORD(v399[0]) = v396;
        v401 = a2;
        v126 = Connection::writePacketBlock(*(this + 3668), v399);
        if (v112)
        {
          LODWORD(a5) = v395;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_345;
          }

          v127 = AVE_Log_CheckConsole(3u);
          v121 = AVE_GetCurrTime();
          v122 = AVE_Log_GetLevelStr(4);
          if (!v127)
          {
            goto LABEL_303;
          }

          v123 = 4018;
          goto LABEL_168;
        }

        if (!v126)
        {
          goto LABEL_175;
        }

        LODWORD(a5) = v395;
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_345;
        }

        v137 = AVE_Log_CheckConsole(3u);
        v134 = AVE_GetCurrTime();
        v135 = AVE_Log_GetLevelStr(4);
        if (!v137)
        {
          goto LABEL_344;
        }

        v136 = 4019;
      }

      else
      {
        a4 = v396;
        if (v113 != 6)
        {
          goto LABEL_147;
        }

        *v399 = 0u;
        v400 = 0u;
        LODWORD(v399[0]) = v396;
        v401 = a2;
        v119 = Connection::writePacketBlock(*(this + 3668), v399);
        if (v112)
        {
          LODWORD(a5) = v395;
          if (!AVE_Log_CheckLevel(3u, 4))
          {
            goto LABEL_345;
          }

          v120 = AVE_Log_CheckConsole(3u);
          v121 = AVE_GetCurrTime();
          v122 = AVE_Log_GetLevelStr(4);
          if (!v120)
          {
            goto LABEL_303;
          }

          v123 = 4034;
LABEL_168:
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: writePacketBlock failed.\n", v121, 3, v122, "FrameDone", v123, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_303;
        }

        if (!v119)
        {
          goto LABEL_175;
        }

        LODWORD(a5) = v395;
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_345;
        }

        v138 = AVE_Log_CheckConsole(3u);
        v134 = AVE_GetCurrTime();
        v135 = AVE_Log_GetLevelStr(4);
        if (!v138)
        {
          goto LABEL_344;
        }

        v136 = 4035;
      }
    }

    else
    {
      a4 = v396;
      if (v113 == 7)
      {
        goto LABEL_175;
      }

      if (v113 != 10)
      {
        if (v113 == 8)
        {
          *v399 = 0u;
          v400 = 0u;
          LODWORD(v399[0]) = v396;
          v401 = a2;
          if (AVE_Log_CheckLevel(0x2Eu, 7))
          {
            v114 = AVE_Log_CheckConsole(0x2Eu);
            v115 = AVE_GetCurrTime();
            v116 = AVE_Log_GetLevelStr(7);
            if (v114)
            {
              printf("%lld %d AVE %s: H264FrameRec: writePacketBlock = %d\n", v115, 46, v116, v396);
              v117 = AVE_GetCurrTime();
              v118 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v117, 46, v118, v396);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v115, 46, v116, v396);
            }

            a4 = v396;
          }

          v139 = Connection::writePacketBlock(*(this + 3668), v399);
          if (v112)
          {
            LODWORD(a5) = v395;
            if (!AVE_Log_CheckLevel(3u, 4))
            {
              goto LABEL_345;
            }

            v140 = AVE_Log_CheckConsole(3u);
            v121 = AVE_GetCurrTime();
            v122 = AVE_Log_GetLevelStr(4);
            if (v140)
            {
              v123 = 4002;
              goto LABEL_168;
            }

LABEL_303:
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: writePacketBlock failed.");
            goto LABEL_345;
          }

          if (v139)
          {
            LODWORD(a5) = v395;
            if (!AVE_Log_CheckLevel(3u, 4))
            {
              goto LABEL_345;
            }

            v141 = AVE_Log_CheckConsole(3u);
            v134 = AVE_GetCurrTime();
            v135 = AVE_Log_GetLevelStr(4);
            if (v141)
            {
              v136 = 4003;
              goto LABEL_173;
            }

LABEL_344:
            syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: Timed Out waiting for space to write packet to main thread");
            goto LABEL_345;
          }

LABEL_175:
          LODWORD(a5) = v395;
          if ((*(AVE_DW_Get() + 412) & 0x20) != 0)
          {
            v392 = a3;
            v142 = this + 139568;
            v143 = *(this + 2 * *(v398 + 40) + 17447);
            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v144 = AVE_Log_CheckConsole(0x2Eu);
              v145 = AVE_GetCurrTime();
              v146 = AVE_Log_GetLevelStr(8);
              if (v144)
              {
                printf("%lld %d AVE %s: \n", v145, 46, v146);
                v147 = AVE_GetCurrTime();
                v357 = AVE_Log_GetLevelStr(8);
                v142 = this + 139568;
                syslog(3, "%lld %d AVE %s: ", v147, 46, v357);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: ", v145, 46, v146);
              }
            }

            v148 = v143;
            v149 = *(v398 + 40) - 1;
            v386 = v9;
            v389 = a2;
            if (v149 < 0)
            {
              v159 = 0;
              LODWORD(v151) = 0;
              v160 = 0;
              *(v398 + 34744) = 0;
              v153 = 0.0;
            }

            else
            {
              v385 = *(v398 + 40);
              v150 = 0;
              LODWORD(v151) = 0;
              while (1)
              {
                v152 = &v142[16 * v149];
                v153 = (v148 - v152[1]) / *(v398 + 4616);
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v154 = AVE_Log_CheckConsole(0x2Eu);
                  v155 = AVE_GetCurrTime();
                  v156 = AVE_Log_GetLevelStr(8);
                  v157 = *(v398 + 40);
                  if (v154)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v155, 46, v156, v157, v149, v151, v153, v150);
                    v158 = AVE_GetCurrTime();
                    v142 = this + 139568;
                    v358 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v158, 46, v358, *(v398 + 40), v149, v151, v153, v150);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v155, 46, v156, v157, v149, v151, v153, v150);
                  }
                }

                v151 = *v152 + v151;
                if (v153 >= 0.1)
                {
                  break;
                }

                --v149;
                ++v150;
                if (v149 == -1)
                {
                  v159 = v385;
                  goto LABEL_191;
                }
              }

              v159 = v150 + 1;
LABEL_191:
              *(v398 + 34744) = v151;
              if (v153 == 0.0)
              {
                v160 = 0;
              }

              else
              {
                v160 = (v151 / v153);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v161 = AVE_Log_CheckConsole(0x2Eu);
              v162 = AVE_GetCurrTime();
              v163 = AVE_Log_GetLevelStr(8);
              if (v161)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d\n", v162, 46, v163, *(v398 + 40), v159, v151, v153, v160);
                v164 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                v165 = *(v398 + 40);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d", v164);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d", v162);
              }
            }

            v166 = *(v398 + 40);
            v167 = v166 - 1;
            if (v166 - 1 < 0)
            {
              v169 = 0;
              LODWORD(v168) = 0;
              v177 = 0;
              *(v398 + 34752) = 0;
              v171 = 0.0;
            }

            else
            {
              LODWORD(v168) = 0;
              v169 = 1;
              while (1)
              {
                v170 = &v142[16 * v167];
                v171 = (v148 - v170[1]) / *(v398 + 4616);
                v168 = *v170 + v168;
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v172 = AVE_Log_CheckConsole(0x2Eu);
                  v173 = AVE_GetCurrTime();
                  v174 = AVE_Log_GetLevelStr(8);
                  v175 = *(v398 + 40);
                  if (v172)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v173, 46, v174, v175, v167, v168, v171, v169);
                    v176 = AVE_GetCurrTime();
                    v359 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v176, 46, v359, *(v398 + 40), v167, v168, v171, v169);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v173, 46, v174, v175, v167, v168, v171, v169);
                  }
                }

                if (v171 >= 0.5)
                {
                  break;
                }

                --v167;
                ++v169;
                if (v167 == -1)
                {
                  v169 = v166;
                  break;
                }
              }

              *(v398 + 34752) = v168;
              if (v171 == 0.0)
              {
                v177 = 0;
              }

              else
              {
                v177 = (v168 / v171);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v178 = AVE_Log_CheckConsole(0x2Eu);
              v179 = AVE_GetCurrTime();
              v180 = AVE_Log_GetLevelStr(8);
              if (v178)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v179, 46, v180, *(v398 + 40), v169, v168, v171, v177);
                v181 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                v182 = *(v398 + 40);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v181);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v179);
              }
            }

            if (*(v398 + 40) - 1 <= 0)
            {
              v184 = 0;
              LODWORD(v183) = 0;
              v195 = 0;
              *(v398 + 34760) = 0;
              v187 = 0.0;
            }

            else
            {
              LODWORD(v183) = 0;
              v184 = 1;
              v390 = *(v398 + 40) - 1;
              v185 = v390;
              while (1)
              {
                v186 = &v142[16 * v185];
                v187 = (v148 - v186[1]) / *(v398 + 4616);
                v183 = *v186 + v183;
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v188 = AVE_Log_CheckConsole(0x2Eu);
                  v189 = AVE_GetCurrTime();
                  v190 = AVE_Log_GetLevelStr(8);
                  v191 = *(v398 + 40);
                  v192 = *v186;
                  if (v188)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d\n", v189, 46, v190, v191, v185, v183, v192, v187, v184);
                    v193 = AVE_GetCurrTime();
                    v194 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d", v193, 46, v194, *(v398 + 40), v185, v183, *v186, v187, v184);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d", v189, 46, v190, v191, v185, v183, v192, v187, v184);
                  }
                }

                if (v187 >= 1.0)
                {
                  break;
                }

                ++v184;
                if (!--v185)
                {
                  v184 = v390;
                  break;
                }
              }

              *(v398 + 34760) = v183;
              if (v187 == 0.0)
              {
                v195 = 0;
              }

              else
              {
                v195 = (v183 / v187);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v196 = AVE_Log_CheckConsole(0x2Eu);
              v197 = AVE_GetCurrTime();
              v198 = AVE_Log_GetLevelStr(8);
              if (v196)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######\n", v197, 46, v198, *(v398 + 40), v184, v183, v187, v195);
                v199 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                v200 = *(v398 + 40);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######", v199);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######", v197);
              }
            }

            v201 = *(v398 + 40);
            v202 = v201 - 1;
            if (v201 - 1 < 0)
            {
              v204 = 0;
              LODWORD(v203) = 0;
              v213 = 0;
              *(v398 + 34768) = 0;
              v206 = 0.0;
              a4 = v396;
              v212 = v386;
            }

            else
            {
              LODWORD(v203) = 0;
              v204 = 1;
              a4 = v396;
              while (1)
              {
                v205 = &v142[16 * v202];
                v206 = (v148 - v205[1]) / *(v398 + 4616);
                v203 = *v205 + v203;
                if (AVE_Log_CheckLevel(0x2Eu, 8))
                {
                  v207 = AVE_Log_CheckConsole(0x2Eu);
                  v208 = AVE_GetCurrTime();
                  v209 = AVE_Log_GetLevelStr(8);
                  v210 = *(v398 + 40);
                  if (v207)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v208, 46, v209, v210, v202, v203, v206, v204);
                    v211 = AVE_GetCurrTime();
                    a4 = v396;
                    v360 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v211, 46, v360, *(v398 + 40), v202, v203, v206, v204);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d", v208, 46, v209, v210, v202, v203, v206, v204);
                  }
                }

                if (v206 >= 2.0)
                {
                  break;
                }

                --v202;
                ++v204;
                if (v202 == -1)
                {
                  v204 = v201;
                  break;
                }
              }

              *(v398 + 34768) = v203;
              v212 = v386;
              if (v206 == 0.0)
              {
                v213 = 0;
              }

              else
              {
                v213 = (v203 / v206);
              }
            }

            if (AVE_Log_CheckLevel(0x2Eu, 8))
            {
              v214 = AVE_Log_CheckConsole(0x2Eu);
              v215 = AVE_GetCurrTime();
              v216 = AVE_Log_GetLevelStr(8);
              if (v214)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v215, 46, v216, *(v398 + 40), v204, v203, v206, v213);
                v217 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                v218 = *(v398 + 40);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v217);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v215);
              }
            }

            v219 = *(this + 9897);
            *(this + 137852) = (*(this + 29992) & 2) != 0;
            v220 = v212[1];
            *(this + 34461) = v219;
            *(this + 34462) = v220;
            *(this + 34460) = *(AVE_DW_Get() + 104) & 0x20;
            *(this + 137853) = *(this + 38944);
            *(this + 34464) = v393;
            File = AVE_Dump_FindFile(*(this + 5088), 5u, *(v398 + 24));
            AVE_FrameStats_PrintStatFrame(this + 137840, v398, File);
            memcpy(this + 137864, (v398 + 33048), 0x698uLL);
            *(this + 8722) = *(v398 + 4608);
            a2 = v389;
            a3 = v392;
            LODWORD(a5) = v395;
          }

          goto LABEL_345;
        }

LABEL_147:
        if (AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v128 = AVE_Log_CheckConsole(0x2Eu);
          v129 = AVE_GetCurrTime();
          v130 = AVE_Log_GetLevelStr(4);
          v131 = *(v398 + 4);
          if (v128)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v129, 46, v130, v131);
            v132 = AVE_GetCurrTime();
            v356 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v132, 46, v356, *(v398 + 4));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v129, 46, v130, v131);
          }
        }

        goto LABEL_175;
      }

      *v399 = 0u;
      v400 = 0u;
      LODWORD(v399[0]) = v396;
      v401 = a2;
      v124 = Connection::writePacketBlock(*(this + 3668), v399);
      if (v112)
      {
        LODWORD(a5) = v395;
        if (!AVE_Log_CheckLevel(3u, 4))
        {
          goto LABEL_345;
        }

        v125 = AVE_Log_CheckConsole(3u);
        v121 = AVE_GetCurrTime();
        v122 = AVE_Log_GetLevelStr(4);
        if (!v125)
        {
          goto LABEL_303;
        }

        v123 = 4050;
        goto LABEL_168;
      }

      if (!v124)
      {
        goto LABEL_175;
      }

      LODWORD(a5) = v395;
      if (!AVE_Log_CheckLevel(3u, 4))
      {
        goto LABEL_345;
      }

      v133 = AVE_Log_CheckConsole(3u);
      v134 = AVE_GetCurrTime();
      v135 = AVE_Log_GetLevelStr(4);
      if (!v133)
      {
        goto LABEL_344;
      }

      v136 = 4051;
    }

LABEL_173:
    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: Timed Out waiting for space to write packet to main thread\n", v134, 3, v135, "FrameDone", v136, "ret == 0");
    AVE_GetCurrTime();
    AVE_Log_GetLevelStr(4);
    goto LABEL_344;
  }

LABEL_105:
  a5 = *(this + 3667);
  pthread_mutex_lock(a5);
  do
  {
    v100 = *(a5 + 208);
    v99 = *(a5 + 216);
    if (v99 > v100)
    {
      v105 = v100 + 1;
      *(a5 + 208) = v105;
      v106 = v99 <= v105;
      v107 = v99 - v105;
      if (v106)
      {
        v107 = 0;
      }

      if (v107 < *(a5 + 200))
      {
        pthread_cond_signal((a5 + 112));
      }

      pthread_mutex_unlock(a5);
      if (AVE_Log_CheckLevel(0x2Eu, 7))
      {
        v108 = AVE_Log_CheckConsole(0x2Eu);
        v109 = AVE_GetCurrTime();
        v110 = AVE_Log_GetLevelStr(7);
        if (v108)
        {
          printf("%lld %d AVE %s: H264FrameRec: readPacketBlock = %d\n", v109, 46, v110, v396);
          v111 = AVE_GetCurrTime();
          v355 = AVE_Log_GetLevelStr(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec: readPacketBlock = %d", v111, 46, v355, v396);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: readPacketBlock = %d", v109, 46, v110, v396);
        }
      }

      v112 = 0;
      goto LABEL_122;
    }

    gettimeofday((a5 + 176), 0);
    v101 = 1000 * *(a5 + 184);
    *(a5 + 160) = *(a5 + 176) + 120;
    *(a5 + 168) = v101;
  }

  while (pthread_cond_timedwait((a5 + 64), a5, (a5 + 160)) != 60);
  pthread_mutex_unlock(a5);
  LODWORD(a5) = v395;
  if (AVE_Log_CheckLevel(3u, 4))
  {
    v102 = AVE_Log_CheckConsole(3u);
    v103 = AVE_GetCurrTime();
    v104 = AVE_Log_GetLevelStr(4);
    if (v102)
    {
      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d\n", v103, 3, v104, "FrameDone", 3978, "err == noErr", -1);
      v103 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d", v103);
  }

  a4 = v396;
  if (v398)
  {
    goto LABEL_345;
  }

LABEL_349:
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    v334 = AVE_Log_CheckConsole(0x2Eu);
    v335 = AVE_GetCurrTime();
    v336 = AVE_Log_GetLevelStr(8);
    if (v334)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d\n", v335, 46, v336, "FrameDone", a2, a3, a4, a5);
      v337 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v337);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v335);
    }
  }
}

uint64_t Connection::peekPacket(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(a1);
  v4 = *(a1 + 208);
  if (*(a1 + 216) > v4)
  {
    v5 = *(a1 + 224) + 40 * (v4 % *(a1 + 192));
    v6 = *v5;
    v7 = *(v5 + 16);
    *(a2 + 32) = *(v5 + 32);
    *a2 = v6;
    *(a2 + 16) = v7;
  }

  return pthread_mutex_unlock(a1);
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
  v13 = xmmword_295650A20;
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

uint64_t AVE_USL_CalcDataSurfaceInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 40) == 0;
  v6 = *(a3 + 23712) != 0;
  *(a4 + 56) = AVE_CalcBufNumOfMultiPassStats(*(a1 + 8), 2 * (*(a1 + 106096) != 0), *(a1 + 106096));
  *(a4 + 60) = AVE_CalcBufSizeOfMultiPassStats(v5, v6);
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
        MEMORY[0x29C24E920]();
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
    MEMORY[0x29C24E920]();
    v2[458] = 0;
  }

  v4 = v2[459];
  if (v4)
  {
    Connection::~Connection(v4);
    MEMORY[0x29C24E920]();
    v2[459] = 0;
  }

  v5 = v2[460];
  if (v5)
  {
    Connection::~Connection(v5);
    MEMORY[0x29C24E920]();
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
  v67 = &unk_295613FE7;
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