void AVE_DAL::UCRecv(AVE_DAL *this, void *a2, unsigned int *a3, unint64_t *a4)
{
  v4 = a4;
  v6 = a2;
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d\n", CurrTime, 36, LevelStr, "AVE_DAL", "UCRecv", this, v6, a3, v4);
      v11 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", v11, 36, v42);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p 0x%x %p %d", CurrTime, 36, LevelStr);
    }
  }

  if (this && a3 && v4 > 0)
  {
    if (*(this + 28))
    {
      if (*(this + 15))
      {
        v12 = AVE_DAL::SetThreadPolicy(this);
        if (v12)
        {
          v13 = v12;
          if (AVE_Log_CheckLevel(0x24u, 4))
          {
            v14 = AVE_Log_CheckConsole(0x24u);
            v15 = AVE_GetCurrTime();
            v16 = AVE_Log_GetLevelStr(4);
            v17 = *this;
            if (v14)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v15, 36, v16, "AVE_DAL", "UCRecv", 1184, "ret == 0", this, *this, v13);
              v15 = AVE_GetCurrTime();
              v16 = AVE_Log_GetLevelStr(4);
            }

            v46 = *this;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v15, 36, v16, "AVE_DAL");
          }

          v25 = 5;
        }

        else
        {
          v30 = AVE_IOReturn2RetCode(v6);
          v31 = *a3;
          v32 = a3[2];
          v33 = a3[4];
          if (AVE_Log_CheckLevel(0x24u, 8))
          {
            v34 = v6;
            v35 = AVE_Log_CheckConsole(0x24u);
            v36 = AVE_GetCurrTime();
            v37 = AVE_Log_GetLevelStr(8);
            if (v35)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d\n", v36, 36, v37, "AVE_DAL", "UCRecv", 1192, this, *this, v30, v31, v32, v33);
              v36 = AVE_GetCurrTime();
              v37 = AVE_Log_GetLevelStr(8);
              v45 = *this;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d %d", v36, 36, v37, "AVE_DAL");
            v6 = v34;
          }

          v13 = (*(this + 15))(*(this + 16), v30, v31, v32, v33);
          if (v13)
          {
            v25 = 5;
          }

          else
          {
            v25 = 8;
          }
        }

        goto LABEL_36;
      }

      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v26 = AVE_Log_CheckConsole(0x24u);
        v27 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v29 = *(this + 15);
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p\n", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null", this, v6, a3, v4, *(this + 15), *(this + 16));
          v27 = AVE_GetCurrTime();
          v28 = AVE_Log_GetLevelStr(4);
        }

        v48 = *(this + 15);
        v49 = *(this + 16);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | invalid configuration %p 0x%x %p %d %p %p", v27, 36, v28, "AVE_DAL", "UCRecv", 1179, "pDAL->m_pCB != __null");
      }
    }

    else if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x24u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d\n", v23, 36, v24, "AVE_DAL", "UCRecv", 1175, "pDAL->m_iThreadState != 0", this, v6, a3, v4, *(this + 28));
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
      }

      v47 = *(this + 28);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p 0x%x %p %d %d", v23, 36, v24, "AVE_DAL", "UCRecv");
    }

    v25 = 5;
    v13 = -1011;
    goto LABEL_36;
  }

  if (AVE_Log_CheckLevel(0x24u, 4))
  {
    v18 = AVE_Log_CheckConsole(0x24u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(4);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d\n", v19, 36, v20, "AVE_DAL", "UCRecv", 1169, "pCtx != __null && pArgs != __null && num > 0", this, v6, a3, v4);
      v21 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d", v21, 36, v43, "AVE_DAL", "UCRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p 0x%x %p %d", v19, 36, v20, "AVE_DAL", "UCRecv");
    }
  }

  v25 = 5;
  v13 = -1001;
LABEL_36:
  if (AVE_Log_CheckLevel(0x24u, v25))
  {
    v38 = AVE_Log_CheckConsole(0x24u);
    v39 = AVE_GetCurrTime();
    v40 = AVE_Log_GetLevelStr(v25);
    if (v38)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d\n", v39, 36, v40, "AVE_DAL", "UCRecv", this, v6, a3, v4, v13);
      v41 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v41, 36, v44);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p 0x%x %p %d %d", v39, 36, v40);
    }
  }
}

uint64_t AVE_DAL::SetThreadPolicy(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "SetThreadPolicy", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  AVE_Mutex_Lock(*(this + 6));
  if (*(this + 16) <= 0)
  {
    AVE_Mutex_Unlock(*(this + 6));
  }

  else
  {
    v6 = AVE_DAL::AdjustThreadPolicy(this, *(this + 14), *(this + 15));
    *(this + 16) = 0;
    AVE_Mutex_Unlock(*(this + 6));
    if (v6)
    {
      v7 = 4;
      goto LABEL_11;
    }
  }

  v6 = 0;
  v7 = 8;
LABEL_11:
  if (AVE_Log_CheckLevel(0x24u, v7))
  {
    v8 = AVE_Log_CheckConsole(0x24u);
    v9 = AVE_GetCurrTime();
    v10 = AVE_Log_GetLevelStr(v7);
    v11 = *this;
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v9, 36, v10, "AVE_DAL", "SetThreadPolicy", this, *this, v6);
      v9 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(v7);
      v12 = *this;
    }

    else
    {
      v14 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v9, 36);
  }

  return v6;
}

BOOL AVE_Log_CheckLevel(unsigned int a1, int a2)
{
  if (a2 >= 0)
  {
    LOBYTE(v2) = a2;
  }

  else
  {
    v2 = -a2;
  }

  return a1 < 5 || a1 <= 0xFF && (v2 & 0xFu) <= (gs_sAVE_Log[a1] & 0xFu);
}

uint64_t AVE_Mutex_Lock(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_lock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t AVE_Mutex_Unlock(pthread_mutex_t *a1)
{
  if (!a1)
  {
    return 4294966295;
  }

  if (pthread_mutex_unlock(a1))
  {
    return 4294966296;
  }

  return 0;
}

uint64_t AVE_IOReturn2RetCode(int a1)
{
  v1 = &dword_2954FC00C;
  v2 = 26;
  while (*v1 != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      return 4294966296;
    }
  }

  return *(v1 - 1);
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

BOOL AVE_DLList_Empty(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Empty_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_Empty_cold_2();
  }

  v1 = a1[1];
  if (!v1)
  {
    AVE_DLList_Empty_cold_1();
  }

  return *a1 == a1 || v1 == a1;
}

uint64_t AVE_Session_AVC_Process()
{
  v0 = MEMORY[0x2A1C7C4A8]();
  theDict = v2;
  v133 = v1;
  v134 = v3;
  v135 = v4;
  v6 = v5;
  v131 = v7;
  v136 = v0;
  v176 = *MEMORY[0x29EDCA608];
  pixelBuffer = v5;
  v158 = 0;
  v157 = 0;
  v156 = 0;
  v151 = 0uLL;
  v8 = AVE_DW_Get();
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v9 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_Session_AVC_Process", v136, v131, v6, v133, v134, v135, theDict);
      v12 = AVE_GetCurrTime();
      v117 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", v12, 12, v117, "AVE_Session_AVC_Process", v136);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p %p %p", CurrTime, 12, LevelStr, "AVE_Session_AVC_Process", v136);
    }
  }

  if (v135 && v134 && v133 && v136 && pixelBuffer)
  {
    if (!*(v136 + 16468))
    {
      v29 = AVE_SEI::SetSEIBits(*(v136 + 16488), *(v136 + 1096));
      if (v29)
      {
        PerFrameData = v29;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v31 = AVE_Log_CheckConsole(3u);
          v32 = AVE_GetCurrTime();
          v33 = AVE_Log_GetLevelStr(4);
          if (v31)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration\n", v32, 3, v33, "AVE_Session_AVC_Process", 5104, "ret == 0");
            v34 = AVE_GetCurrTime();
            v119 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v34, 3, v119, "AVE_Session_AVC_Process", 5104, "ret == 0");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to update SEI configuration", v32, 3, v33, "AVE_Session_AVC_Process", 5104, "ret == 0");
          }
        }

        goto LABEL_70;
      }

      v58 = *(v136 + 12000);
      v59 = AVE_GetCurrTime();
      AVE_TimeStats_AddStartTime(v58, 5u, v59);
    }

    v13 = AVE_GetCurrTime();
    v154 = *v134;
    v155 = v134[2];
    v152 = *v135;
    v153 = v135[2];
    *&v151 = v154;
    DWORD2(v151) = DWORD2(v154);
    AVE_Time_Conv(0, &v151);
    if (AVE_Log_CheckLevel(0x33u, 7))
    {
      v14 = AVE_Log_CheckConsole(0x33u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(7);
      v17 = *(v136 + 56);
      v18 = *(v136 + 16468);
      v19 = *v134;
      v20 = *(v134 + 2);
      v21 = *(v135 + 3);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v15, 51, v16, "AVE_Session_AVC_Process", 5124, v17, v18, v19, v20, *(v134 + 3), v134[2], v151, DWORD2(v151), *v135, *(v135 + 2), *(v135 + 3), v135[2]);
        v22 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(7);
        v24 = *(v135 + 3);
        v130 = v135[2];
        v127 = *v135;
        v128 = *(v135 + 2);
        v125 = *(v134 + 3);
        v126 = v134[2];
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v22, 51, v23, "AVE_Session_AVC_Process", 5124, *(v136 + 56), *(v136 + 16468), *v134, *(v134 + 2));
      }

      else
      {
        v129 = *(v135 + 3);
        syslog(3, "%lld %d AVE %s: %s:%d %lld %d timestamp %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v15, 51, v16, "AVE_Session_AVC_Process", 5124, v17, v18, v19, v20);
      }
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
    *(v136 + 18080) = PixelFormatType;
    if (!*(v136 + 16468))
    {
      v164 = *(v136 + 1440);
      v37 = AVE_PixelFmt_FindByType(PixelFormatType);
      if (!v37)
      {
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v60 = AVE_Log_CheckConsole(3u);
          v61 = AVE_GetCurrTime();
          v62 = AVE_Log_GetLevelStr(4);
          v63 = *(v136 + 56);
          if (v60)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x\n", v61, 3, v62, "AVE_Session_AVC_Process", 5141, "pPixelFmt != __null", v136, *(v136 + 56), *(v136 + 18080));
            v61 = AVE_GetCurrTime();
            v62 = AVE_Log_GetLevelStr(4);
            v64 = *(v136 + 56);
            v124 = *(v136 + 18080);
          }

          else
          {
            v123 = *(v136 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to find pixel format %p %lld 0x%x", v61, 3, v62);
        }

        v35 = 0;
        goto LABEL_79;
      }

      if (v8[420])
      {
        v38 = v8 + 420;
      }

      else
      {
        v38 = 0;
      }

      AVE_Dump_Init(*(v136 + 18064), v38, *(v136 + 64), *(v136 + 10772), *(v8 + 103), *(v8 + 104), &v164, 1, *(v37 + 3), *(v37 + 1), *(v136 + 1136));
    }

    AVE_Dump_WriteInput(*(v136 + 18064), -1, pixelBuffer);
    v39 = *(v136 + 16464);
    if (v39 != 30566)
    {
      if (v39 != 30567)
      {
        if (v39 != 30568)
        {
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v54 = AVE_Log_CheckConsole(3u);
            v55 = AVE_GetCurrTime();
            v56 = AVE_Log_GetLevelStr(4);
            if (v54)
            {
              printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.\n", v55, 3, v56, "AVE_Session_AVC_Process", 5280, "false", *(v136 + 16464));
              v55 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
              v57 = *(v136 + 16464);
            }

            else
            {
              v122 = *(v136 + 16464);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264EncodeFrame pINS->SessionStatus = 0x%08x.", v55);
          }

          v35 = 0;
          goto LABEL_134;
        }

        v40 = AVE_AVC_VerifyImageBuffer(v136, &pixelBuffer, &v158, &v157, &v156 + 1, &v156, 0);
        if (v40)
        {
          v35 = v40;
          if (AVE_Log_CheckLevel(3u, 4))
          {
            v41 = AVE_Log_CheckConsole(3u);
            v42 = AVE_GetCurrTime();
            v43 = AVE_Log_GetLevelStr(4);
            if (!v41)
            {
LABEL_78:
              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
              goto LABEL_79;
            }

            v44 = 5160;
LABEL_44:
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v42, 3, v43, "AVE_Session_AVC_Process", v44, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
            goto LABEL_78;
          }

          goto LABEL_79;
        }

        goto LABEL_95;
      }

      if (AVE_ISP_CheckMetadata(pixelBuffer))
      {
        v45 = 1;
      }

      else
      {
        v45 = 2;
      }

      *(v136 + 10804) = v45;
      AVE_UpdateCropParams(v136, pixelBuffer);
      v46 = AVE_AVC_VerifyImageBuffer(v136, &pixelBuffer, &v158, &v157, &v156 + 1, &v156, 1);
      if (v46)
      {
        v35 = v46;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v47 = AVE_Log_CheckConsole(3u);
          v42 = AVE_GetCurrTime();
          v43 = AVE_Log_GetLevelStr(4);
          if (!v47)
          {
            goto LABEL_78;
          }

          v44 = 5177;
          goto LABEL_44;
        }

LABEL_79:
        PerFrameData = -1002;
        goto LABEL_135;
      }

      AVE_SetEncoderBasedOnFirstFrame();
      v65 = AVE_ValidateEncoderParameters(v136);
      if (v65)
      {
        v35 = v65;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v66 = AVE_Log_CheckConsole(3u);
          v67 = AVE_GetCurrTime();
          v68 = AVE_Log_GetLevelStr(4);
          if (v66)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v67, 3, v68, "AVE_Session_AVC_Process", 5187, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_79;
      }

      AVE_PrepareSequenceHeader(v136, pixelBuffer);
      bzero(v170, 0x1058uLL);
      v164 = v136 + 672;
      v165 = v136 + 1440;
      v73 = *(v136 + 12000);
      v166 = v136 + 10752;
      v167 = v73;
      v74 = *(v136 + 18064);
      v169 = *(v136 + 16480);
      v168 = v74;
      v171 = v136 + 12008;
      v172 = v136 + 13724;
      v173 = v136 + 14108;
      memcpy(v174, (v136 + 16592), sizeof(v174));
      v175 = v13;
      v75 = AVE_USL_Drv_Start(*(v136 + 120), &v164, v136 + 128, *(v136 + 16), *(v136 + 112), *(v136 + 16472), *(v136 + 16496), v136 + 160, (v136 + 11772), (v136 + 11464));
      if (v75)
      {
        v35 = v75;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v76 = AVE_Log_CheckConsole(3u);
          v77 = AVE_GetCurrTime();
          v78 = AVE_Log_GetLevelStr(4);
          if (!v76)
          {
            goto LABEL_133;
          }

          v79 = 5212;
          goto LABEL_94;
        }

        goto LABEL_134;
      }

      goto LABEL_95;
    }

    if (AVE_ISP_CheckMetadata(pixelBuffer))
    {
      v48 = 1;
    }

    else
    {
      v48 = 2;
    }

    *(v136 + 10804) = v48;
    v49 = AVE_ManageSessionSettings(v136);
    if (!v49)
    {
      AVE_UpdateCropParams(v136, pixelBuffer);
      v69 = AVE_AVC_VerifyImageBuffer(v136, &pixelBuffer, &v158, &v157, &v156 + 1, &v156, 1);
      if (v69)
      {
        v35 = v69;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v70 = AVE_Log_CheckConsole(3u);
          v71 = AVE_GetCurrTime();
          v72 = AVE_Log_GetLevelStr(4);
          if (v70)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.\n", v71, 3, v72, "AVE_Session_AVC_Process", 5237, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_AVC_VerifyImageBuffer failed.");
        }

        goto LABEL_134;
      }

      AVE_SetEncoderBasedOnFirstFrame();
      v80 = AVE_ValidateEncoderParameters(v136);
      if (v80)
      {
        v35 = v80;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v81 = AVE_Log_CheckConsole(3u);
          v82 = AVE_GetCurrTime();
          v83 = AVE_Log_GetLevelStr(4);
          if (v81)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed\n", v82, 3, v83, "AVE_Session_AVC_Process", 5247, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ValidateEncoderParameters failed");
        }

        goto LABEL_134;
      }

      AVE_PrepareSequenceHeader(v136, pixelBuffer);
      bzero(v170, 0x1058uLL);
      v164 = v136 + 672;
      v165 = v136 + 1440;
      v84 = *(v136 + 12000);
      v166 = v136 + 10752;
      v167 = v84;
      v85 = *(v136 + 18064);
      v169 = *(v136 + 16480);
      v168 = v85;
      v171 = v136 + 12008;
      v172 = v136 + 13724;
      v173 = v136 + 14108;
      memcpy(v174, (v136 + 16592), sizeof(v174));
      v175 = v13;
      v86 = AVE_USL_Drv_Start(*(v136 + 120), &v164, v136 + 128, *(v136 + 16), *(v136 + 112), *(v136 + 16472), *(v136 + 16496), v136 + 160, (v136 + 11772), (v136 + 11464));
      if (v86)
      {
        v35 = v86;
        if (AVE_Log_CheckLevel(3u, 4))
        {
          v87 = AVE_Log_CheckConsole(3u);
          v77 = AVE_GetCurrTime();
          v78 = AVE_Log_GetLevelStr(4);
          if (!v87)
          {
LABEL_133:
            syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.");
            goto LABEL_134;
          }

          v79 = 5272;
LABEL_94:
          printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Start failed.\n", v77, 3, v78, "AVE_Session_AVC_Process", v79, "err == noErr");
          AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_133;
        }

LABEL_134:
        PerFrameData = -1000;
        goto LABEL_135;
      }

LABEL_95:
      *(v136 + 16464) = 30568;
      bzero(v161, 0x1738uLL);
      v137 = 0;
      v142 = 0u;
      v143 = 0u;
      v144 = 0u;
      memset(v145, 0, sizeof(v145));
      v146 = 0u;
      memset(v147, 0, sizeof(v147));
      v148 = 0u;
      v149 = 0u;
      v150 = 0u;
      memset(v138, 0, sizeof(v138));
      *v139 = 0u;
      v140 = 0;
      bzero(&v164, 0x4A40uLL);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"ResetRCState");
        if (Value)
        {
          if (CFEqual(Value, *MEMORY[0x29EDB8F00]))
          {
            v13 = AVE_GetCurrTime();
            v137 = v13;
            AVE_USL_Drv_Complete(*(v136 + 120), &v137);
          }
        }
      }

      *&v145[1] = v154;
      v146 = v152;
      v141[0] = v131;
      v141[1] = pixelBuffer;
      v145[3] = v155;
      v147[0] = v153;
      *&v147[1] = v151;
      *(&v148 + 1) = v161;
      *&v149 = v13;
      DWORD2(v149) = *(v136 + 16508);
      *&v148 = &v164;
      if (*(v136 + 10804) == 2)
      {
        AVE_ISP_GetMetadata(pixelBuffer, v138);
        AVE_Dump_WriteISPMetadata(*(v136 + 18064), *(v136 + 16508), *(v136 + 16468), v138);
      }

      v147[3] = v138;
      if ((*(v136 + 1337) & 2) != 0 && *(v136 + 76) >= 4 && !AVE_ANFD_GetInfo(theDict, v162))
      {
        memset(v160, 0, sizeof(v160));
        __dst = *(v136 + 16468);
        AVE_SNPrintf(v160, 32, "%llu %d %d", v89, v90, v91, v92, v93, *(v136 + 56));
        AVE_ANFD_PrintInfo(v162, 47, 6, v160, 0, v94, v95, v96);
        v163 = v163 & 0xFFFFFDFF | ((v162[0] > 0) << 9);
      }

      v97 = CMGetAttachment(pixelBuffer, *MEMORY[0x29EDBFF98], 0);
      if (v97)
      {
        AVE_SEI::SetISPMetadata(*(v136 + 16488), *(v136 + 16468), v97);
      }

      AVE_SEI::SetDriverVersion(*(v136 + 16488), *(v136 + 16468));
      AVE_SEI::SetSessionID(*(v136 + 16488), *(v136 + 16468), *(v136 + 56));
      AVE_SEI::SetExposureTime(*(v136 + 16488), *(v136 + 16468), *&v138[1]);
      AVE_SEI::SetSNR(*(v136 + 16488), *(v136 + 16468), *v138);
      AVE_SEI::SetLuxLevel(*(v136 + 16488), *(v136 + 16468), v139[1]);
      AVE_SEI::SetPTS(*(v136 + 16488), *(v136 + 16468), *(v134 + 2), *v134);
      PerFrameData = AVE_GetPerFrameData(v136, theDict, v161, &v164, v141);
      if (!*(v136 + 11476))
      {
        AVE_H264_UpdateSettingsBasedOnSNR(v136, &v164, *v147[3]);
      }

      if (*(v136 + 16508))
      {
        if (*(v136 + 16496))
        {
          v98 = AVE_H264MultipassDataFetch(v136, &v154);
          if (v98)
          {
            v35 = v98;
            if (AVE_Log_CheckLevel(3u, 4))
            {
              v99 = AVE_Log_CheckConsole(3u);
              v100 = AVE_GetCurrTime();
              v101 = AVE_Log_GetLevelStr(4);
              if (v99)
              {
                printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_H264MultipassDataFetch failed.\n", v100, 3, v101, "AVE_Session_AVC_Process", 5404, "err == noErr");
                AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_H264MultipassDataFetch failed.");
            }

            goto LABEL_134;
          }
        }
      }

      *(&v150 + 1) = *(v136 + 16468);
      if (v157)
      {
        v102 = pixelBuffer;
      }

      else
      {
        v102 = 0;
      }

      *(&v144 + 1) = v102;
      v103 = AVE_USL_Drv_Process(*(v136 + 120), v141);
      if (v103)
      {
        v35 = v103;
        if (v103 == -536870173)
        {
          v35 = 3758097123;
          if (AVE_Log_CheckLevel(0x10u, 5))
          {
            v104 = AVE_Log_CheckConsole(0x10u);
            v105 = AVE_GetCurrTime();
            v106 = AVE_Log_GetLevelStr(5);
            if (v104)
            {
              printf("%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame\n", v105, 16, v106);
              AVE_GetCurrTime();
              AVE_Log_GetLevelStr(5);
            }

            syslog(3, "%lld %d AVE %s: FIG: device returned kIOReturnNoPower. reject the frame");
          }
        }

        else if (AVE_Log_CheckLevel(3u, 4))
        {
          v107 = AVE_Log_CheckConsole(3u);
          v108 = AVE_GetCurrTime();
          v109 = AVE_Log_GetLevelStr(4);
          if (v107)
          {
            printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.\n", v108, 3, v109, "AVE_Session_AVC_Process", 5429, "err == noErr");
            AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_USL_Drv_Process failed.");
        }

        goto LABEL_134;
      }

      if (!PerFrameData)
      {
        v35 = 0;
        ++*(v136 + 16468);
        goto LABEL_135;
      }

LABEL_70:
      v35 = 0;
      goto LABEL_135;
    }

    v35 = v49;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v50 = AVE_Log_CheckConsole(3u);
      v51 = AVE_GetCurrTime();
      v52 = AVE_Log_GetLevelStr(4);
      if (v50)
      {
        printf("%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed\n", v51, 3, v52, "AVE_Session_AVC_Process", 5227, "err == 0");
        v53 = AVE_GetCurrTime();
        v120 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed", v53, 3, v120, "AVE_Session_AVC_Process", 5227, "err == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: AVE_ManageSessionSettings failed", v51, 3, v52, "AVE_Session_AVC_Process", 5227, "err == 0");
      }
    }

    PerFrameData = v35;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xCu, 4))
    {
      v25 = AVE_Log_CheckConsole(0xCu);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(4);
      if (v25)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p\n", v26, 12, v27, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v136, v131, pixelBuffer, v133, v134, v135, theDict);
        v28 = AVE_GetCurrTime();
        v118 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v28, 12, v118, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v136);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %p %p %p %p", v26, 12, v27, "AVE_Session_AVC_Process", 5096, "pINS != __null && imageBuffer != __null && pRect != __null && pPTS != __null && pDuration != __null", v136);
      }
    }

    v35 = 0;
    PerFrameData = -1001;
  }

LABEL_135:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v110 = AVE_Log_CheckConsole(0xCu);
    v111 = AVE_GetCurrTime();
    v112 = AVE_Log_GetLevelStr(7);
    if (v110)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d\n", v111, 12, v112, "AVE_Session_AVC_Process", v136, v131, pixelBuffer, v133, v134, v135, theDict, PerFrameData);
      v113 = AVE_GetCurrTime();
      v121 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v113, 12, v121, "AVE_Session_AVC_Process", v136, v131);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %p %p %d", v111, 12, v112, "AVE_Session_AVC_Process", v136, v131);
    }
  }

  v114 = *MEMORY[0x29EDCA608];
  return v35;
}

uint64_t AVE_Plugin_AVC_EncodeFrame(const void *a1, const void *a2, const void *a3, uint64_t *a4, void *a5, const void *a6, _DWORD *a7)
{
  CurrTime = AVE_GetCurrTime();
  v75 = a7;
  if (AVE_Log_CheckLevel(0xBu, 8))
  {
    v15 = AVE_Log_CheckConsole(0xBu);
    v16 = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    v18 = *a4;
    v19 = *(a4 + 2);
    v20 = *(a4 + 3);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld\n", v16, 11, LevelStr, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, v18, v19, v20, a4[2], *a5, *(a5 + 2), *(a5 + 3), a5[2], a6, a7, 0);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(8);
      v66 = *(a5 + 3);
      v68 = a5[2];
      v59 = *a5;
      v62 = *(a5 + 2);
      v58 = a4[2];
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v21, 11, v22, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, *a4, *(a4 + 2), *(a4 + 3));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld", v16, 11, LevelStr, "AVE_Plugin_AVC_EncodeFrame", a1, a2, a3, v18, v19, v20);
    }
  }

  v73 = a3;
  v74 = a1;
  if (a1 && a3)
  {
    v23 = a6;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v25 = DerivedStorage;
    if (DerivedStorage)
    {
      v26 = a4[1];
      v80 = a4[2];
      v76 = *a5;
      v77 = a5[1];
      v78 = a5[2];
      v79 = *a4;
      AVE_Mutex_Lock(*DerivedStorage);
      v27 = v25[7];
      kdebug_trace();
      v28 = AVE_Session_AVC_Process();
      v25[6] = (v25[6] + 1);
    }

    else if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v37 = AVE_Log_CheckConsole(0xBu);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      v40 = *a4;
      v41 = *(a4 + 2);
      if (v37)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d\n", v38, 11, v39, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, v40, v41, *a5, *(a5 + 2), v23, v75, 0, 0);
        v70 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
        v61 = *a5;
        v64 = *(a5 + 2);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d", v70, 11, v42, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, *a4, *(a4 + 2));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get AVC %p %p %p %lld %d %lld %d %p %p %lld %d", v38, 11, v39, "AVE_Plugin_AVC_EncodeFrame", 381, "pPI != __null", a1, a2, a3, v40, v41);
      }

      v27 = 0;
      v28 = 4294966296;
    }

    else
    {
      v27 = 0;
      v28 = 4294966296;
    }

    v36 = a2;
    kdebug_trace();
    if (v75)
    {
      *v75 |= 1u;
    }

    AVE_Mutex_Unlock(*v25);
    a6 = v23;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xBu, 4))
    {
      v29 = AVE_Log_CheckConsole(0xBu);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      v32 = *a4;
      v33 = *(a4 + 2);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d\n", v30, 11, v31, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, a3, v32, v33, *a5, *(a5 + 2), a6, a7, 0, 0);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        v60 = *a5;
        v63 = *(a5 + 2);
        v56 = a3;
        v36 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v34, 11, v35, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, v56, *a4, *(a4 + 2));
      }

      else
      {
        v57 = a3;
        v36 = a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p %p %lld %d %lld %d %p %p %lld %d", v30, 11, v31, "AVE_Plugin_AVC_EncodeFrame", 373, "encoder != __null && imageBuffer != __null", a1, a2, v57, v32, v33);
      }
    }

    else
    {
      v36 = a2;
    }

    v27 = 0;
    v28 = 4294966295;
  }

  v43 = AVE_GetCurrTime() - CurrTime;
  if (v43 >= 50000)
  {
    v44 = 5;
  }

  else
  {
    v44 = 8;
  }

  v45 = AVE_RetCode2OSStatus(v28);
  if (v28)
  {
    v46 = 4;
  }

  else
  {
    v46 = v44;
  }

  if (AVE_Log_CheckLevel(0xBu, v46))
  {
    v47 = AVE_Log_CheckConsole(0xBu);
    v71 = AVE_GetCurrTime();
    v48 = AVE_Log_GetLevelStr(v46);
    v49 = *a4;
    v50 = *(a4 + 2);
    v51 = *(a4 + 3);
    v52 = a4[2];
    v53 = *a5;
    if (v47)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d\n", v71, 11, v48, "AVE_Plugin_AVC_EncodeFrame", v74, v36, v73, v49, v50, v51, v52, v53, *(a5 + 2), *(a5 + 3), a5[2], a6, v75, v27, v43, v28, v45);
      v72 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(v46);
      v67 = *(a5 + 3);
      v69 = a5[2];
      v65 = *(a5 + 2);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v72, 11, v54, "AVE_Plugin_AVC_EncodeFrame", v74, v36, v73, *a4, *(a4 + 2), *(a4 + 3), a4[2], *a5);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %lld %d 0x%x %lld %lld %d 0x%x %lld %p %p %lld %lld %d %d", v71, 11, v48, "AVE_Plugin_AVC_EncodeFrame", v74, v36, v73, v49, v50, v51, v52, v53);
    }
  }

  return v45;
}

uint64_t AVE_AVC_VerifyImageBuffer(uint64_t a1, CVPixelBufferRef *a2, _BYTE *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, char a7)
{
  v68 = 0;
  v14 = (a1 + 16448);
  v15 = a1 + 10171;
  v67 = 0u;
  v66 = 0u;
  v65 = 0u;
  v64 = 0u;
  v63 = 0u;
  v62 = 0u;
  v61 = 0u;
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  HIDWORD(v62) = PixelFormatType;
  v17 = v14[24];
  if (!v17)
  {
    v17 = *(a1 + 1440);
  }

  v54 = v17;
  v18 = v14[25];
  if (!v18)
  {
    v18 = *(a1 + 1444);
  }

  v55 = v18;
  v19 = *(a1 + 10772);
  v56 = vrev64_s32(*(a1 + 64));
  v57 = *(a1 + 716);
  v58 = v19;
  v20 = *(a1 + 10892);
  v59 = *(a1 + 10752);
  v60 = v20;
  LODWORD(v62) = *(a1 + 10860);
  BYTE4(v62) = *(a1 + 692) > 0;
  DWORD2(v62) = *(a1 + 10804);
  HIBYTE(v68) = *(a1 + 76) > 11;
  if (*(v15 + 3013) == 1)
  {
    v61 = *(v15 + 3017);
  }

  if (v14[5] && *(a1 + 11972) != PixelFormatType)
  {
    v21 = *(a1 + 56);
    kdebug_trace();
    v22 = AVE_ImageBuf_Transfer(&v54, a2, (a1 + 16568), *(a1 + 11972));
    v23 = *(a1 + 56);
    v24 = v14[5];
    v25 = *(a1 + 11972);
    kdebug_trace();
    if (v22)
    {
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v26 = AVE_Log_CheckConsole(3u);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
        v29 = *(a1 + 11972);
        if (v26)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.\n", CurrTime, 3, LevelStr, "AVE_AVC_VerifyImageBuffer", 2946, "err == noErr", *a2, HIDWORD(v62), *(a1 + 11972), v22);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(4);
          v30 = *a2;
        }

        v51 = *(a1 + 11972);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to transfer a pixel buffer to another format %p (0x%X -> 0x%X) %d.", CurrTime, 3, LevelStr);
      }

      return v22;
    }

    *a4 = 1;
  }

  v22 = AVE_VerifyImageBuffer(&v54, a2, (a1 + 16560));
  if (v22)
  {
    return v22;
  }

  *a3 = v68;
  v32 = DWORD1(v66);
  *a5 = v66;
  *a6 = v32;
  if (*(a1 + 76) < 12)
  {
    *(v15 + 351) = BYTE1(v68);
  }

  else
  {
    *(v15 + 351) = 0;
    if (v54 != *(a1 + 1440) || v55 != *(a1 + 1444))
    {
      v33 = 1;
      goto LABEL_22;
    }
  }

  v33 = BYTE2(v68);
LABEL_22:
  *(v15 + 679) = v33;
  v34 = DWORD1(v64);
  *(v15 + 33) = (DWORD1(v64) & 0xFFFFFFFE) == 2;
  if (v34 == 3)
  {
    *(v15 + 358) = BYTE12(v64);
  }

  if (*(a1 + 10752) == 2)
  {
    *(a1 + 10864) = DWORD2(v66);
    *(v15 + 697) = *(&v65 + 1);
    *(v15 + 705) = vuzp2q_s32(vextq_s8(v67, v67, 4uLL), v67);
    if (a7)
    {
      *(a1 + 10768) = HIDWORD(v62);
LABEL_29:
      v36 = DWORD2(v63);
      v37 = v63;
      *(a1 + 12044) = DWORD2(v63);
      *(a1 + 10188) = v36;
      *(a1 + 10192) = v37;
      *v15 = DWORD1(v64) != 1;
      *(v15 + 610) = 1;
      if (*(a1 + 10892) == 37 && v36 == 3)
      {
        *(v15 + 685) = 1;
        *(a1 + 1088) &= ~2uLL;
      }
    }
  }

  else if (a7)
  {
    v35 = HIDWORD(v62);
    *(a1 + 10768) = HIDWORD(v62);
    if (!v14[5])
    {
      v43 = *(a1 + 12052) + 8;
      if (v43 <= *(a1 + 12056) + 8)
      {
        v43 = *(a1 + 12056) + 8;
      }

      updated = AVE_UpdatePixelBufferDict(*(a1 + 68), *(a1 + 64), *(a1 + 716), 1, *(a1 + 11452), *(a1 + 11456), *(a1 + 1440), *(a1 + 1444), v43, *v14, v35, *(a1 + 16));
      if (updated)
      {
        v45 = updated;
        if (AVE_Log_CheckLevel(0x1Eu, 5))
        {
          v46 = AVE_Log_CheckConsole(0x1Eu);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(5);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d\n", v47, 30, v48, "AVE_AVC_VerifyImageBuffer", 3018, a1, *(a1 + 56), 0, v45);
            v47 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(5);
            v49 = *(a1 + 56);
          }

          syslog(3, "%lld %d AVE %s: %s:%d fail to update pixel buffer dictionary %p %lld %d %d", v47, 30);
        }
      }
    }

    goto LABEL_29;
  }

  if (v14[5])
  {
    if (*(a1 + 11972) == HIDWORD(v62))
    {
      return 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0xCu, 4))
      {
        v38 = AVE_Log_CheckConsole(0xCu);
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(4);
        v41 = *(a1 + 11972);
        if (v38)
        {
          printf("%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x\n", v39, 12, v40, "AVE_AVC_VerifyImageBuffer", 3051, "false", *(a1 + 56), v14[5], *(a1 + 11972), HIDWORD(v62));
          v39 = AVE_GetCurrTime();
          v40 = AVE_Log_GetLevelStr(4);
          v42 = *(a1 + 56);
          v52 = *(a1 + 11972);
          v50 = v14[5];
        }

        else
        {
          v53 = *(a1 + 11972);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | FIG: pixel format change not supported %lld %d 0x%x 0x%x", v39, 12, v40);
      }

      return 4294954394;
    }
  }

  else
  {
    v22 = 0;
    *(a1 + 11972) = HIDWORD(v62);
  }

  return v22;
}

uint64_t AVE_VerifyImageBuffer(unsigned int *a1, const void **a2, CVPixelBufferPoolRef *a3)
{
  pixelBufferOut = 0;
  poolOut = 0;
  if (!a3 || !*a2)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v15 = AVE_Log_CheckConsole(3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      v18 = *a2;
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", CurrTime, 3, LevelStr, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
        CurrTime = AVE_GetCurrTime();
        LevelStr = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", CurrTime, 3, LevelStr, "AVE_VerifyImageBuffer", 476, "pImgBuf != __null && ppImgBufPool != __null", *a2, a3);
    }

    goto LABEL_43;
  }

  CVPixelBufferRetain(*a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(*a2);
  v7 = AVE_PixelFmt_FindByType(PixelFormatType);
  if (!v7)
  {
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v19 = AVE_Log_CheckConsole(3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      if (v19)
      {
        printf("%lld %d AVE %s: %s:%d %s | pixel format is not supported %d\n", v20, 3, v21, "AVE_VerifyImageBuffer", 483, "pPixelFmt != __null", PixelFormatType);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | pixel format is not supported %d", v20);
    }

    goto LABEL_43;
  }

  v8 = v7;
  v9 = AVE_EdgeReplication_DetermineMode(*a2, v7, a1[2], a1[6], *(a1 + 52), a1[14], a1[7], a1 + 8, a1[12]);
  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v10 = AVE_Log_CheckConsole(0x12u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(7);
    v13 = *(v8 + 24);
    if (v10)
    {
      printf("%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d\n", v11, 18, v12, PixelFormatType, *(v8 + 4), *(v8 + 8), *(v8 + 12), *(v8 + 16), *(v8 + 20), *(v8 + 24), *(v8 + 28));
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(7);
      v14 = *(v8 + 4);
      v120 = *(v8 + 24);
      v122 = *(v8 + 28);
      v117 = *(v8 + 16);
      v119 = *(v8 + 20);
      v113 = *(v8 + 8);
      v114 = *(v8 + 12);
    }

    else
    {
      v121 = *(v8 + 24);
    }

    syslog(3, "%lld %d AVE %s: PixelFormat %x | %d %d (%d %d %d) %d %d", v11, 18, v12);
  }

  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v22 = AVE_Log_CheckConsole(0x12u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(7);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(*a2, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(*a2, 0);
    if (v22)
    {
      printf("%lld %d AVE %s: Pixel Buffer Width %d Height %d\n", v23, 18, v24, WidthOfPlane, HeightOfPlane);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(7);
      v29 = CVPixelBufferGetWidthOfPlane(*a2, 0);
      v111 = CVPixelBufferGetHeightOfPlane(*a2, 0);
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v27, 18, v28, v29, v111);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: Pixel Buffer Width %d Height %d", v23, 18, v24, WidthOfPlane, HeightOfPlane);
    }
  }

  if ((v9 & 2) == 0)
  {
    v30 = *a2;
    v31 = a1[2];
    v32 = a1[3];
    v33 = a1[4];
    v34 = a1[5];
    v35 = *a1;
    v36 = a1[1];
    v37 = *(a1 + 147);
    AVE_ImgBuf_Verify();
  }

  v38 = *a3;
  if (!*a3)
  {
    v45 = CVPixelBufferGetWidthOfPlane(*a2, 0);
    v46 = CVPixelBufferGetHeightOfPlane(*a2, 0);
    v47 = AVE_PixelBuf_CreatePool(a1[2], a1[3], a1[4], a1[5], v45, v46, *a1, a1[1], PixelFormatType, &poolOut);
    if (v47)
    {
      v48 = v47;
      if (AVE_Log_CheckLevel(3u, 4))
      {
        v49 = AVE_Log_CheckConsole(3u);
        v50 = AVE_GetCurrTime();
        v51 = AVE_Log_GetLevelStr(4);
        if (!v49)
        {
          v115 = v48;
          v112 = 511;
          v110 = v51;
          v109 = "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d";
          goto LABEL_75;
        }

        printf("%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d\n", v50, 3, v51, "AVE_VerifyImageBuffer", 511, "rc == noErr", v48);
        v52 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create a buffer pool %d", v52);
      }

LABEL_44:
      if (pixelBufferOut)
      {
        CVPixelBufferRelease(pixelBufferOut);
        pixelBufferOut = 0;
      }

      if (poolOut)
      {
        CFRelease(poolOut);
        poolOut = 0;
      }

      goto LABEL_48;
    }

    v38 = *a3;
  }

  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = poolOut;
  }

  v40 = CVPixelBufferPoolCreatePixelBuffer(0, v39, &pixelBufferOut);
  if (v40)
  {
    v41 = v40;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v42 = AVE_Log_CheckConsole(3u);
      v43 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d\n", v43, 3, v44, "AVE_VerifyImageBuffer", 517, "cvrc == kCVReturnSuccess", v41);
        v43 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to crete pixel buffer from a pool %d", v43);
    }

LABEL_43:
    v48 = 4294954394;
    goto LABEL_44;
  }

  v53 = AVE_PixelBuf_Copy(*a2, pixelBufferOut);
  if (v53)
  {
    v48 = v53;
    if (AVE_Log_CheckLevel(3u, 4))
    {
      v54 = AVE_Log_CheckConsole(3u);
      v50 = AVE_GetCurrTime();
      v55 = AVE_Log_GetLevelStr(4);
      if (v54)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d\n", v50, 3, v55, "AVE_VerifyImageBuffer", 521, "rc == noErr", *a2, pixelBufferOut, v48);
        v56 = AVE_GetCurrTime();
        v57 = AVE_Log_GetLevelStr(4);
        v58 = *a2;
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d", v56, 3, v57);
        goto LABEL_44;
      }

      v116 = pixelBufferOut;
      v118 = v48;
      v115 = *a2;
      v112 = 521;
      v110 = v55;
      v109 = "%lld %d AVE %s: %s:%d %s | fail to copy a pixel buffer to another %p %p %d";
LABEL_75:
      syslog(3, v109, v50, 3, v110, "AVE_VerifyImageBuffer", v112, "rc == noErr", v115, v116, v118);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  CVPixelBufferRelease(*a2);
  v60 = pixelBufferOut;
  *a2 = pixelBufferOut;
  pixelBufferOut = 0;
  v61 = v9 & 2;
  AVE_EdgeReplication_Fill(v60, v9, v8);
  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v62 = AVE_Log_CheckConsole(0x12u);
    v150 = AVE_GetCurrTime();
    v63 = AVE_Log_GetLevelStr(7);
    v64 = a1[1];
    v147 = *a1;
    v148 = v63;
    v65 = a1[2];
    v66 = a1[3];
    v67 = a1[4];
    v68 = a1[5];
    v69 = a1[6];
    v70 = *(a1 + 145);
    if (v62)
    {
      printf("%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v150, 18, v148, "AVE_VerifyImageBuffer", 541, v147, v64, v65, v66, v67, v68, v69, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v151 = AVE_GetCurrTime();
      v149 = AVE_Log_GetLevelStr(7);
      v71 = a1[7];
      v72 = a1[12];
      v73 = a1[14];
      v74 = a1[26];
      v75 = a1[27];
      v76 = a1[32];
      v143 = *(a1 + 145);
      v139 = *(a1 + 146);
      v141 = *(a1 + 144);
      v135 = a1[28];
      v137 = a1[29];
      v131 = a1[30];
      v133 = a1[31];
      v127 = a1[34];
      v129 = a1[35];
      v125 = a1[33];
      v123 = *(a1 + 52);
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v151, 18, v149, "AVE_VerifyImageBuffer", 541, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      v144 = *(a1 + 145);
      syslog(3, "%lld %d AVE %s: VIB IN %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v150, 18, v148, "AVE_VerifyImageBuffer", 541, v147, v64, v65, v66, v67, v68, v69);
    }

    v61 = v9 & 2;
  }

  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(*a2, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v77 = CVPixelBufferGetWidthOfPlane(*a2, 0);
  v78 = CVPixelBufferGetHeightOfPlane(*a2, 0);
  v79 = extraColumnsOnLeft;
  v80 = extraColumnsOnRight;
  v81 = extraColumnsOnLeft + extraColumnsOnRight + v77;
  v82 = extraRowsOnTop;
  v83 = extraRowsOnBottom;
  v84 = extraRowsOnTop + extraRowsOnBottom + v78;
  v85 = *(v8 + 28);
  v86 = *(v8 + 16);
  *(a1 + 15) = *v8;
  *(a1 + 19) = v86;
  *(a1 + 22) = v85;
  a1[26] = v81;
  a1[27] = v84;
  a1[32] = v79;
  a1[33] = v80;
  a1[34] = v82;
  a1[35] = v83;
  a1[30] = CVPixelBufferGetBytesPerRowOfPlane(*a2, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(*a2, 1uLL);
  a1[31] = BytesPerRowOfPlane;
  if (*(v8 + 12))
  {
    v88 = BytesPerRowOfPlane;
  }

  else
  {
    v88 = 0;
  }

  a1[28] = a1[30];
  a1[29] = v88;
  v89 = v9 & 1;
  if ((v9 & 0x10) != 0)
  {
    v89 = 1;
  }

  *(a1 + 146) = v89;
  *(a1 + 144) = v61 >> 1;
  if ((~v9 & 0x500) != 0)
  {
    v90 = 0;
  }

  else
  {
    v90 = 5;
  }

  if ((~v9 & 0x50000) == 0)
  {
    v90 |= 0xAu;
  }

  *(a1 + 145) = v90;
  if (poolOut)
  {
    *a3 = poolOut;
  }

  if (AVE_Log_CheckLevel(0x12u, 7))
  {
    v91 = AVE_Log_CheckConsole(0x12u);
    v152 = AVE_GetCurrTime();
    v92 = AVE_Log_GetLevelStr(7);
    v93 = *a1;
    v94 = a1[1];
    v95 = a1[2];
    v96 = a1[3];
    v97 = a1[4];
    v98 = a1[5];
    v99 = a1[6];
    v100 = *(a1 + 145);
    if (v91)
    {
      printf("%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x\n", v152, 18, v92, "AVE_VerifyImageBuffer", 616, v93, v94, v95, v96, v97, v98, v99, a1[7], a1[12], *(a1 + 52), a1[14], a1[26], a1[27], a1[32], a1[33], a1[34], a1[35], a1[30], a1[31], a1[28], a1[29], *(a1 + 146), *(a1 + 144), *(a1 + 145), v9);
      v101 = AVE_GetCurrTime();
      v102 = AVE_Log_GetLevelStr(7);
      v103 = a1[7];
      v104 = a1[12];
      v105 = a1[14];
      v106 = a1[26];
      v107 = a1[27];
      v108 = a1[32];
      v145 = *(a1 + 145);
      v140 = *(a1 + 146);
      v142 = *(a1 + 144);
      v136 = a1[28];
      v138 = a1[29];
      v132 = a1[30];
      v134 = a1[31];
      v128 = a1[34];
      v130 = a1[35];
      v126 = a1[33];
      v124 = *(a1 + 52);
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v101, 18, v102, "AVE_VerifyImageBuffer", 616, *a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
    }

    else
    {
      v146 = *(a1 + 145);
      syslog(3, "%lld %d AVE %s: VIB OUT %s:%d | %d %d | %d %d 0x%x %d | %d %d %d %d %d || %d %d | %d %d %d %d | %d %d | %d %d | %d %d %d | %x", v152, 18, v92, "AVE_VerifyImageBuffer", 616, v93, v94, v95, v96, v97, v98, v99);
    }
  }

  v48 = 0;
LABEL_48:
  if ((a1[36] & 1) == 0)
  {
    CVPixelBufferRelease(*a2);
  }

  return v48;
}

const char *AVE_PixelFmt_FindByType(int a1)
{
  result = "v024\b";
  v3 = 86;
  while (*result != a1)
  {
    result += 44;
    if (!--v3)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_EdgeReplication_DetermineMode(__CVBuffer *a1, int *a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7, unsigned int *a8, int a9)
{
  extraRowsOnBottom = 0;
  extraColumnsOnRight[0] = 0;
  v16 = AVE_DevID2Type(a3);
  v17 = v16;
  v52 = v16;
  if (a4 == 2 && v16 < 12 || !a8[1] && !a8[3])
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_67;
  }

  if (a9 != -1)
  {
    v18 = a9 + 3;
    goto LABEL_19;
  }

  if (!a5)
  {
    v18 = 2;
    goto LABEL_19;
  }

  v18 = 1;
  if (a6 != 2 || a7)
  {
LABEL_19:
    CVPixelBufferGetExtendedPixels(a1, 0, extraColumnsOnRight, 0, &extraRowsOnBottom);
    v28 = a2[6];
    if (v28)
    {
      v20 = 0;
      v29 = 1;
      if (v28 != 1 || !extraRowsOnBottom)
      {
LABEL_26:
        if (v17 < 12)
        {
          if (v17 < 4)
          {
            v21 = 0;
          }

          else
          {
            if (a8[1] == 8u >> (a2[4] >> 1))
            {
              v39 = 3328;
            }

            else
            {
              v39 = 0;
            }

            if (a8[3] == 8u >> (a2[5] >> 1))
            {
              v21 = v39 | 0x50000;
            }

            else
            {
              v21 = v39;
            }
          }
        }

        else
        {
          v32 = a8[1];
          v33 = a2[4] >> 1;
          if (v32 > (0xEu >> v33) || v32 < (2u >> v33))
          {
            v35 = 0;
          }

          else
          {
            v35 = 3328;
          }

          v36 = a8[3];
          v37 = a2[5] >> 1;
          if (v36 > (0xEu >> v37) || v36 < (2u >> v37))
          {
            v21 = v35;
          }

          else
          {
            v21 = v35 | 0x50000;
          }
        }

        v40 = 0;
        if (v18 <= 4)
        {
          if ((v18 - 1) >= 2)
          {
            if (v18)
            {
              if (v18 == 4)
              {
                v40 = v21 & 0xFF00;
              }

              goto LABEL_66;
            }

            if ((v21 & 0x70000) == 0)
            {
              if (v29)
              {
                v41 = 0;
              }

              else
              {
                v41 = v20;
              }

              v40 = v21 & 0xFF00 | v41;
              goto LABEL_66;
            }
          }

          goto LABEL_58;
        }

        switch(v18)
        {
          case 5:
            v40 = v21 & 0x70000;
            break;
          case 6:
            v40 = v20 | 2;
            if (v29)
            {
              v40 = 0;
            }

            break;
          case 7:
LABEL_58:
            v40 = v21 & 0x7FF00;
            break;
        }

LABEL_66:
        v19 = v40 | ((v40 & 0x10100) != 0);
        goto LABEL_67;
      }
    }

    else if (!extraRowsOnBottom)
    {
      v20 = 0;
      v29 = 1;
      goto LABEL_26;
    }

    v30 = a8[3];
    v31 = v30 != 0;
    v29 = v30 == 0;
    v20 = v31 << 16;
    goto LABEL_26;
  }

  v22 = a4;
  v23 = a6;
  v24 = a5;
  v25 = CVBufferCopyAttachment(a1, *MEMORY[0x29EDB96B8], 0);
  if (!v25)
  {
LABEL_17:
    v18 = 0;
    a5 = v24;
    a6 = v23;
    a4 = v22;
    a7 = 0;
    goto LABEL_19;
  }

  v26 = v25;
  if (CFEqual(v25, *MEMORY[0x29EDB8F00]))
  {
    v27 = v17 < 7;
  }

  else
  {
    v27 = 0;
  }

  if (!v27)
  {
    CFRelease(v26);
    goto LABEL_17;
  }

  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 16;
  a5 = v24;
  a6 = v23;
  a4 = v22;
  a7 = 0;
LABEL_67:
  if (AVE_Log_CheckLevel(0x11u, 7))
  {
    v51 = a4;
    v42 = a5;
    v43 = AVE_Log_CheckConsole(0x11u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v43)
    {
      printf("%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n\n", CurrTime, 17, LevelStr, "AVE_EdgeReplication_DetermineMode", 240, v52, v51, v42, a6, a7, a9, *a8, a8[1], a8[2], a8[3], LODWORD(extraColumnsOnRight[0]), extraRowsOnBottom, v18, v20, v21, v19);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v48 = a8[2];
      v49 = a8[3];
      v46 = *a8;
      v47 = a8[1];
    }

    syslog(3, "%lld %d AVE %s: %s:%d | %d | %d %d %d %d %d | (%d %d %d %d) (%d %d) | %d %x %x %x\n", CurrTime, 17, LevelStr, "AVE_EdgeReplication_DetermineMode", 240, v52, v51, v42);
  }

  return v19;
}

char *AVE_DevCap_Find(int a1)
{
  if (a1 >= 35)
  {
    return 0;
  }

  else
  {
    return &gsc_saAVE_DevCap + 72 * a1;
  }
}

char *AVE_DevID2Type(int a1)
{
  result = AVE_DevCap_Find(a1);
  if (result)
  {
    return *(result + 1);
  }

  return result;
}

uint64_t AVE_GetPerFrameData(uint64_t a1, const __CFDictionary *a2, unint64_t *a3, unsigned int *a4, void *a5)
{
  v264 = *MEMORY[0x29EDCA608];
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v9 = AVE_Log_CheckConsole(0xCu);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %p\n", CurrTime, 12, LevelStr, "AVE_GetPerFrameData", a1, a2, a3, a4, a5);
      v12 = AVE_GetCurrTime();
      v233 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", v12, 12, v233);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %p", CurrTime, 12, LevelStr);
    }
  }

  if (a4)
  {
    v13 = a1 + 16460;
    *(a3 + 216) = *(a1 + 1136);
    *(a3 + 212) = *(a1 + 1112);
    v14 = *(a1 + 1160);
    v15 = *(a1 + 1176);
    a3[113] = *(a1 + 1192);
    *(a3 + 109) = v14;
    *(a3 + 111) = v15;
    *(a1 + 16460) = 0;
    *(a3 + 28) = *(a1 + 688) & 2;
    *(a4 + 1362) = *(a1 + 10204);
    v16 = *(a1 + 16544);
    if (!v16)
    {
      v16 = *(a1 + 1440);
    }

    a4[140] = v16;
    v17 = *(a1 + 16548);
    if (!v17)
    {
      v17 = *(a1 + 1444);
    }

    a4[141] = v17;
    a4[342] = *(a1 + 10808);
    *a4 = 0;
    if ((*(a1 + 716) & 0x3C0) == 0)
    {
      *a3 &= ~4uLL;
LABEL_28:
      *(a4 + 3) = 0;
      *(a4 + 30) = 0;
      a5[8] = 0;
      *&v34 = -1;
      *(&v34 + 1) = -1;
      *(a4 + 17) = v34;
      *(a4 + 1392) = 0;
      *(a4 + 48) = 0;
      a4[13] = -1;
      *(a4 + 15) = 0;
      *(a4 + 5) = 0xFFFFFFF3FFFFFFFFLL;
      *(a4 + 21) = v34;
      *(a4 + 66) = 0;
      a4[343] = -1;
      a4[135] = -1;
      if (a2)
      {
        v257 = a4 + 132;
        if (AVE_Log_CheckLevel(0x1Du, 6))
        {
          v35 = AVE_Log_CheckConsole(0x1Du);
          v36 = AVE_GetCurrTime();
          v37 = AVE_Log_GetLevelStr(6);
          v38 = *(a1 + 16468);
          if (v35)
          {
            printf("%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d\n", v36, 29, v37, v38);
            v39 = AVE_GetCurrTime();
            v235 = AVE_Log_GetLevelStr(6);
            syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v39, 29, v235, *(a1 + 16468));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: FIG: frameProperties is NOT NULL -> start parsing - Buffer F %d", v36, 29, v37, v38);
          }
        }

        Value = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCED0]);
        v42 = MEMORY[0x29EDB8F00];
        if (Value && CFEqual(Value, *MEMORY[0x29EDB8F00]))
        {
          v43 = (*(a1 + 1240) & 0x100) != 0 ? 1 : 2;
          *a4 = v43;
          *(a3 + 230) |= 1u;
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v44 = AVE_Log_CheckConsole(0x1Du);
            v45 = AVE_GetCurrTime();
            v46 = AVE_Log_GetLevelStr(6);
            v47 = *a4;
            v48 = *(a3 + 230);
            if (v44)
            {
              printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x\n", v45, 29, v46, *a4, v48);
              v49 = AVE_GetCurrTime();
              v50 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v49, 29, v50, *a4, *(a3 + 230));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceKeyFrame = %d 0x%x", v45, 29, v46, *a4, v48);
            }
          }
        }

        v52 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEC8]);
        if (v52)
        {
          v53 = v52;
          TypeID = CFDataGetTypeID();
          if (TypeID == CFGetTypeID(v53))
          {
            *(a3 + 232) |= 0x10u;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v55 = AVE_Log_CheckConsole(0x1Du);
              v56 = AVE_GetCurrTime();
              v57 = AVE_Log_GetLevelStr(6);
              if (v55)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices\n", v56, 29, v57);
                v58 = AVE_GetCurrTime();
                v236 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v58, 29, v236);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FirstMbInRecvSlices", v56, 29, v57);
              }
            }
          }
        }

        v59 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCED8]);
        if (v59)
        {
          if (CFEqual(v59, *v42))
          {
            *(a3 + 232) |= 0x10u;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v60 = AVE_Log_CheckConsole(0x1Du);
              v61 = AVE_GetCurrTime();
              v62 = AVE_Log_GetLevelStr(6);
              v63 = *(a3 + 232);
              if (v60)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x\n", v61, 29, v62, v63);
                v64 = AVE_GetCurrTime();
                v237 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v64, 29, v237, *(a3 + 232));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_ForceRefresh = 0x%x", v61, 29, v62, v63);
              }
            }
          }
        }

        v65 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEF8]);
        if (v65)
        {
          if (CFEqual(v65, *v42))
          {
            *a3 |= 8uLL;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v66 = AVE_Log_CheckConsole(0x1Du);
              v67 = AVE_GetCurrTime();
              v68 = AVE_Log_GetLevelStr(6);
              v69 = *a3;
              if (v66)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx\n", v67, 29, v68, v69);
                v70 = AVE_GetCurrTime();
                v238 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v70, 29, v238, *a3);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_RepeatedFrame = %llx", v67, 29, v68, v69);
              }
            }
          }
        }

        v71 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF18]);
        a4[8] = 0;
        *(a4 + 3) = 0;
        *(a3 + 234) &= ~0x10000u;
        if (*(a1 + 1338))
        {
          v72 = v71;
          if (v71)
          {
            a4[8] = CFDataGetLength(v71);
            *(a4 + 3) = CFDataGetBytePtr(v72);
            *(a3 + 234) |= 0x10000u;
          }
        }

        v73 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF20]);
        if (v73)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v73, kCFNumberSInt32Type, &valuePtr);
          v74 = valuePtr;
          a4[2] = WORD1(valuePtr);
          a4[3] = v74;
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v75 = AVE_Log_CheckConsole(0x1Du);
            v76 = AVE_GetCurrTime();
            v77 = AVE_Log_GetLevelStr(6);
            v78 = a4[2];
            v79 = a4[3];
            if (v75)
            {
              printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d\n", v76, 29, v77, a4[2], v79);
              v80 = AVE_GetCurrTime();
              v81 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v80, 29, v81, a4[2], a4[3]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_VRAUsedDimension = %d x %d", v76, 29, v77, a4[2], v79);
            }
          }
        }

        v82 = CFDictionaryGetValue(a2, @"AttachDPB");
        if (v82 && CFEqual(v82, *v42))
        {
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v83 = AVE_Log_CheckConsole(0x1Du);
            v84 = AVE_GetCurrTime();
            v85 = AVE_Log_GetLevelStr(6);
            v86 = *(a1 + 16468);
            if (v83)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)\n", v84, 29, v85, v86);
              v87 = AVE_GetCurrTime();
              v239 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v87, 29, v239, *(a1 + 16468));
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncodeFrameOptionKey_AttachDPB found (%d)", v84, 29, v85, v86);
            }
          }

          *(a4 + 36) = 1;
        }

        v88 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF08]);
        if (v88)
        {
          if (*(a1 + 16468))
          {
            v89 = v88;
            if (AVE_Log_CheckLevel(0x1Eu, 6))
            {
              v90 = AVE_Log_CheckConsole(0x1Eu);
              v91 = AVE_GetCurrTime();
              v92 = AVE_Log_GetLevelStr(6);
              v93 = *(a1 + 16468);
              if (v90)
              {
                printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)\n", v91, 30, v92, v93);
                v94 = AVE_GetCurrTime();
                v240 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v94, 30, v240, *(a1 + 16468));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SetDPB found (%d)", v91, 30, v92, v93);
              }

              v13 = a1 + 16460;
            }

            *(a4 + 37) = 1;
            a5[8] = v89;
          }

          else
          {
            if (AVE_Log_CheckLevel(0x1Du, 5))
            {
              v95 = AVE_Log_CheckConsole(0x1Du);
              v96 = AVE_GetCurrTime();
              v97 = AVE_Log_GetLevelStr(5);
              if (v95)
              {
                printf("%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true\n", v96, 29, v97);
                v98 = AVE_GetCurrTime();
                v241 = AVE_Log_GetLevelStr(5);
                syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v98, 29, v241);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: frameNumber = 0 and updateDPB = true", v96, 29, v97);
              }
            }

            if (AVE_Log_CheckLevel(0x1Du, 5))
            {
              v99 = AVE_Log_CheckConsole(0x1Du);
              v100 = AVE_GetCurrTime();
              v101 = AVE_Log_GetLevelStr(5);
              if (v99)
              {
                printf("%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag\n", v100, 29, v101);
                v102 = AVE_GetCurrTime();
                v242 = AVE_Log_GetLevelStr(5);
                syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v102, 29, v242);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: you need to encode at least one picture to prime AVE before using this feature. -> will disregard updateDPB flag", v100, 29, v101);
              }
            }
          }
        }

        v103 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCE08]);
        if (v103)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v103, kCFNumberSInt32Type, &valuePtr);
          if (valuePtr)
          {
            *a3 |= 0x10000uLL;
          }
        }

        v104 = CFDictionaryGetValue(a2, @"MarkCurrentFrameAsLTR");
        if (v104)
        {
          if (CFEqual(v104, *v42))
          {
            *(a4 + 48) = 1;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v105 = AVE_Log_CheckConsole(0x1Du);
              v106 = AVE_GetCurrTime();
              v107 = AVE_Log_GetLevelStr(6);
              if (v105)
              {
                printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE\n", v106, 29, v107);
                v108 = AVE_GetCurrTime();
                v243 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v108, 29, v243);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_MarkCurrentFrameAsLTR = TRUE", v106, 29, v107);
              }
            }
          }
        }

        v109 = CFDictionaryGetValue(a2, @"RVRADimension");
        if (v109)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v109, kCFNumberSInt32Type, &valuePtr);
          v110 = valuePtr;
          a4[15] = WORD1(valuePtr);
          a4[16] = v110;
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v111 = AVE_Log_CheckConsole(0x1Du);
            v112 = AVE_GetCurrTime();
            v113 = AVE_Log_GetLevelStr(6);
            v114 = a4[15];
            v115 = a4[16];
            if (v111)
            {
              printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d\n", v112, 29, v113, a4[15], v115);
              v116 = AVE_GetCurrTime();
              v117 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v116, 29, v117, a4[15], a4[16]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_RVRADimension = %d x %d", v112, 29, v113, a4[15], v115);
            }
          }
        }

        v118 = CFDictionaryGetValue(a2, @"FrameNumForLTRToReplace");
        if (v118)
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(v118, kCFNumberSInt32Type, &valuePtr);
          a4[13] = valuePtr;
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v119 = AVE_Log_CheckConsole(0x1Du);
            v120 = AVE_GetCurrTime();
            v121 = AVE_Log_GetLevelStr(6);
            v122 = a4[13];
            if (v119)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)\n", v120, 29, v121, v122);
              v123 = AVE_GetCurrTime();
              v244 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v123, 29, v244, a4[13]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_FrameNumForLTRToReplace found (%d)", v120, 29, v121, v122);
            }
          }
        }

        v124 = CFDictionaryGetValue(a2, @"UserFrameType");
        if (v124)
        {
          LODWORD(valuePtr) = 5;
          CFNumberGetValue(v124, kCFNumberSInt32Type, &valuePtr);
          a4[10] = valuePtr;
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v125 = AVE_Log_CheckConsole(0x1Du);
            v126 = AVE_GetCurrTime();
            v127 = AVE_Log_GetLevelStr(6);
            v128 = a4[10];
            if (v125)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)\n", v126, 29, v127, v128);
              v129 = AVE_GetCurrTime();
              v245 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v129, 29, v245, a4[10]);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_UserFrameType found (%d)", v126, 29, v127, v128);
            }
          }
        }

        v130 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEF0]);
        if (v130)
        {
          v131 = v130;
          v132 = CFArrayGetTypeID();
          if (v132 == CFGetTypeID(v131))
          {
            LODWORD(valuePtr) = 4;
            AVE_Ref_RetrieveArray(v131, a4 + 17, &valuePtr);
            *(a4 + 56) = valuePtr;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v133 = AVE_Log_CheckConsole(0x1Du);
              v134 = AVE_GetCurrTime();
              v135 = AVE_Log_GetLevelStr(6);
              v136 = *(a4 + 56);
              if (v133)
              {
                printf("%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d\n", v134, 29, v135, v136);
                v137 = AVE_GetCurrTime();
                v246 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v137, 29, v246, *(a4 + 56));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncoderFrameOptionKey_ReferenceL0, count = %d", v134, 29, v135, v136);
              }
            }
          }
        }

        v138 = CFDictionaryGetValue(a2, @"SliceAlphaC0OffsetDiv2");
        if (v138)
        {
          CFNumberGetValue(v138, kCFNumberSInt32Type, v257);
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v139 = AVE_Log_CheckConsole(0x1Du);
            v140 = AVE_GetCurrTime();
            v141 = AVE_Log_GetLevelStr(6);
            v142 = *v257;
            if (v139)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)\n", v140, 29, v141, v142);
              v143 = AVE_GetCurrTime();
              v247 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)", v143, 29, v247, *v257);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceAlphaC0OffsetDiv2 found (%d)", v140, 29, v141, v142);
            }
          }
        }

        v144 = CFDictionaryGetValue(a2, @"SliceBetaOffsetDiv2");
        if (v144)
        {
          v145 = (a4 + 133);
          CFNumberGetValue(v144, kCFNumberSInt32Type, a4 + 133);
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v146 = AVE_Log_CheckConsole(0x1Du);
            v147 = AVE_GetCurrTime();
            v148 = AVE_Log_GetLevelStr(6);
            v149 = *v145;
            if (v146)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)\n", v147, 29, v148, v149);
              v150 = AVE_GetCurrTime();
              v248 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v150, 29, v248, *v145);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_SliceBetaOffsetDiv2 found (%d)", v147, 29, v148, v149);
            }

            v42 = MEMORY[0x29EDB8F00];
          }
        }

        if ((*(a1 + 1296) & 1) != 0 && a4[10] == 1)
        {
          Info = AVE_WtPred_GetInfo(a2, *(a4 + 56), a4 + 25);
          if (!Info)
          {
            valuePtr = 0u;
            v263 = 0u;
            v231 = *(v13 + 8);
            AVE_SNPrintf(&valuePtr, 32, "%llu %d", v151, v152, v153, v154, v155, *(a1 + 56));
            AVE_WtPred_PrintInfo(a4 + 25, 0xD7u, 6, &valuePtr, 0, v156, v157, v158);
          }
        }

        else
        {
          Info = 0;
        }

        v159 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEC0]);
        if (v159)
        {
          if (CFEqual(v159, *v42))
          {
            *a3 |= 2uLL;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v160 = AVE_Log_CheckConsole(0x1Du);
              v161 = AVE_GetCurrTime();
              v162 = AVE_Log_GetLevelStr(6);
              if (v160)
              {
                printf("%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE\n", v161, 29, v162);
                v163 = AVE_GetCurrTime();
                v249 = AVE_Log_GetLevelStr(6);
                v42 = MEMORY[0x29EDB8F00];
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v163, 29, v249);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: received kVTEncodeFrameOptionKey_FinalFrame = TRUE", v161, 29, v162);
              }
            }
          }
        }

        v164 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCEE0]);
        if (v164)
        {
          v165 = (a4 + 135);
          CFNumberGetValue(v164, kCFNumberSInt32Type, a4 + 135);
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v258 = Info;
            v166 = v13;
            v167 = AVE_Log_CheckConsole(0x1Du);
            v168 = AVE_GetCurrTime();
            v169 = AVE_Log_GetLevelStr(6);
            v170 = *v165;
            if (v167)
            {
              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)\n", v168, 29, v169, v170);
              v171 = AVE_GetCurrTime();
              v250 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v171, 29, v250, *v165);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_PicParameterSetId found (%d)", v168, 29, v169, v170);
            }

            v13 = v166;
            Info = v258;
          }
        }

        v172 = (a4 + 11);
        v173 = CFDictionaryGetValue(a2, @"POCLsb");
        if (v173)
        {
          v174 = (a4 + 343);
          CFNumberGetValue(v173, kCFNumberSInt32Type, a4 + 343);
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v259 = Info;
            v175 = v13;
            v176 = AVE_Log_CheckConsole(0x1Du);
            v177 = AVE_GetCurrTime();
            v178 = AVE_Log_GetLevelStr(6);
            v179 = *v174;
            if (v176)
            {
              printf("%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)\n", v177, 29, v178, v179);
              v180 = AVE_GetCurrTime();
              v251 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v180, 29, v251, *v174);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: AVE_kVTEncoderFrameOptionKey_POCLsb found (%d)", v177, 29, v178, v179);
            }

            v13 = v175;
            Info = v259;
          }
        }

        v181 = *MEMORY[0x29EDBCF10];
        v182 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF10]);
        if (v182)
        {
          CFNumberGetValue(v182, kCFNumberSInt32Type, a4 + 11);
          if (AVE_Log_CheckLevel(0x1Du, 6))
          {
            v183 = AVE_Log_CheckConsole(0x1Du);
            v184 = AVE_GetCurrTime();
            v185 = AVE_Log_GetLevelStr(6);
            v186 = *v172;
            if (v183)
            {
              printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)\n", v184, 29, v185, v186);
              v187 = AVE_GetCurrTime();
              v252 = AVE_Log_GetLevelStr(6);
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v187, 29, v252, *v172);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP found (%d)", v184, 29, v185, v186);
            }
          }
        }

        else
        {
          v188 = CFDictionaryGetValue(a2, v181);
          if (v188)
          {
            v189 = v188;
            v190 = CFArrayGetTypeID();
            if (v190 == CFGetTypeID(v189))
            {
              v256 = v13;
              v260 = Info;
              Count = CFArrayGetCount(v189);
              LODWORD(valuePtr) = 0;
              if (Count >= 1)
              {
                v192 = Count;
                for (i = 0; i < v192; i = (i + 1))
                {
                  AVE_CFArray_GetSInt32(v189, i, &valuePtr);
                  if (!i)
                  {
                    *v172 = valuePtr;
                  }

                  if (AVE_Log_CheckLevel(0x1Du, 6))
                  {
                    v194 = AVE_Log_CheckConsole(0x1Du);
                    v195 = AVE_GetCurrTime();
                    v196 = AVE_Log_GetLevelStr(6);
                    if (v194)
                    {
                      printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)\n", v195, 29, v196, i, valuePtr);
                      v195 = AVE_GetCurrTime();
                      v196 = AVE_Log_GetLevelStr(6);
                    }

                    syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_SliceQP[%d] found (%d)", v195, 29, v196, i, valuePtr);
                    v42 = MEMORY[0x29EDB8F00];
                  }
                }
              }

              v13 = v256;
              Info = v260;
            }
          }
        }

        v197 = CFDictionaryGetValue(a2, *MEMORY[0x29EDBCF00]);
        if (v197)
        {
          if (CFEqual(v197, *v42))
          {
            *(a4 + 1392) = 1;
            if (AVE_Log_CheckLevel(0x1Du, 6))
            {
              v198 = AVE_Log_CheckConsole(0x1Du);
              v199 = AVE_GetCurrTime();
              v200 = AVE_Log_GetLevelStr(6);
              v201 = *(a4 + 1392);
              if (v198)
              {
                printf("%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)\n", v199, 29, v200, v201);
                v202 = AVE_GetCurrTime();
                v253 = AVE_Log_GetLevelStr(6);
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v202, 29, v253, *(a4 + 1392));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: FIG: kVTEncodeFrameOptionKey_RequestNonReferenceFrame found (%d)", v199, 29, v200, v201);
              }
            }
          }
        }

        v203 = CFDictionaryGetValue(a2, @"ResetRCState");
        if (v203)
        {
          v204 = CFEqual(v203, *v42);
          *(a4 + 4) = v204 != 0;
          if (v204)
          {
            v205 = *(a1 + 1132);
            if (v205 == 1)
            {
              *a4 = 2;
              if (AVE_Log_CheckLevel(0x1Du, 6))
              {
                v209 = AVE_Log_CheckConsole(0x1Du);
                v210 = AVE_GetCurrTime();
                v211 = AVE_Log_GetLevelStr(6);
                if (v209)
                {
                  printf("%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR\n", v210, 29, v211, *(a4 + 4));
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(6);
                  v212 = *(a4 + 4);
                }

                syslog(3, "%lld %d AVE %s: FIG: received AVE_kVTEncodeFrameOptionKey_ResetRCState = %d, set forceKeyFrame to IDR");
              }
            }

            else if (v205 == 20)
            {
              *(a4 + 4) = 0;
              if (AVE_Log_CheckLevel(0x1Du, 5))
              {
                v206 = AVE_Log_CheckConsole(0x1Du);
                v207 = AVE_GetCurrTime();
                v208 = AVE_Log_GetLevelStr(5);
                if (v206)
                {
                  printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.\n", v207, 29, v208);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state for Direct RC.");
              }
            }

            else
            {
              *(a4 + 4) = 0;
              if (AVE_Log_CheckLevel(0x1Du, 5))
              {
                v213 = AVE_Log_CheckConsole(0x1Du);
                v214 = AVE_GetCurrTime();
                v215 = AVE_Log_GetLevelStr(5);
                if (v213)
                {
                  printf("%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.\n", v214, 29, v215);
                  AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(5);
                }

                syslog(3, "%lld %d AVE %s: AVE FIG WARNING: Cannot reset rc state if RC is NOT On.");
              }
            }
          }
        }

        v216 = a3 + 100;
        if ((*(a1 + 1337) & 4) != 0)
        {
          if (!AVE_PIP_GetInfo(a2, a3 + 200))
          {
            valuePtr = 0u;
            v263 = 0u;
            v232 = *(v13 + 8);
            v254 = *v216;
            AVE_SNPrintf(&valuePtr, 32, "%llu %d %d", v217, v218, v219, v220, v221, *(a1 + 56));
            AVE_PIP_PrintInfo(a3 + 200, 50, 6, &valuePtr, 0, v222, v223, v224);
          }
        }

        else
        {
          *v216 = 0;
        }
      }

      else
      {
        Info = 0;
      }

      goto LABEL_205;
    }

    if (*(a1 + 11810) == 1)
    {
      v18 = *(AVE_DW_Get() + 263);
      if (v18 >= 1)
      {
        v19 = *(a1 + 16468);
        if (v19 <= 3)
        {
          v20 = *a3 | 4;
          *a3 = v20;
          *(a1 + 18088) |= 4uLL;
LABEL_22:
          if (*(a1 + 16468) <= 5u)
          {
            *a3 = v20 | 4;
          }

          if (AVE_Log_CheckLevel(0x10u, 8))
          {
            v26 = AVE_Log_CheckConsole(0x10u);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(8);
            v29 = *(a1 + 16468);
            v30 = *(a5[17] + 72);
            v31 = *a3;
            if (v26)
            {
              printf("%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx\n", v27, 16, v28, v29, *(a5[17] + 72), v31);
              v32 = AVE_GetCurrTime();
              v33 = AVE_Log_GetLevelStr(8);
              syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v32, 16, v33, *(a1 + 16468), *(a5[17] + 72), *a3);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: MCTF F %d iBand0Strength %d OpFlag 0x%llx", v27, 16, v28, v29, *(a5[17] + 72), v31);
            }
          }

          goto LABEL_28;
        }

        v51 = v19 % v18;
        v20 = *(a1 + 18088);
        if (!v51)
        {
          v20 = (*a3 & 0xFFFFFFFFFFFFFFFBLL | (4 * ((v20 >> 2) & 1))) ^ 4;
          *a3 = v20;
          *(a1 + 18088) = v20;
          goto LABEL_22;
        }

LABEL_21:
        *a3 = v20;
        goto LABEL_22;
      }

      v25 = *a3;
      if (*(a5[17] + 72) > 254)
      {
        v20 = v25 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_21;
      }
    }

    else
    {
      v25 = *a3;
    }

    v20 = v25 | 4;
    goto LABEL_21;
  }

  if (AVE_Log_CheckLevel(0xCu, 4))
  {
    v21 = AVE_Log_CheckConsole(0xCu);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    if (v21)
    {
      printf("%lld %d AVE %s: %s:%d %s | PerFrameData = NULL\n", v22, 12, v23, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
      v24 = AVE_GetCurrTime();
      v234 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v24, 12, v234, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | PerFrameData = NULL", v22, 12, v23, "AVE_GetPerFrameData", 597, "PerFrameData != __null");
    }
  }

  Info = 4294966295;
LABEL_205:
  if (AVE_Log_CheckLevel(0xCu, 7))
  {
    v225 = AVE_Log_CheckConsole(0xCu);
    v226 = AVE_GetCurrTime();
    v227 = AVE_Log_GetLevelStr(7);
    if (v225)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %p %d\n", v226, 12, v227, "AVE_GetPerFrameData", a1, a2, a3, a4, a5, Info);
      v228 = AVE_GetCurrTime();
      v255 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v228, 12, v255, "AVE_GetPerFrameData");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %p %d", v226, 12, v227, "AVE_GetPerFrameData");
    }
  }

  v229 = *MEMORY[0x29EDCA608];
  return Info;
}

double AVE_Time_Conv(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  if ((a1 & 0x80000000) == 0)
  {
    if (a2)
    {
      v3 = *(a2 + 8);
      if (v3 >= 1)
      {
        if (!a1)
        {
          v2 = 14400000;
        }

        result = v2 * *a2 / v3;
        *a2 = result;
        *(a2 + 8) = v2;
      }
    }
  }

  return result;
}

uint64_t AVE_Dump_WriteInput(_DWORD *a1, int a2, __CVBuffer *a3)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteInput", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %p", CurrTime);
  }

  if (a1)
  {
    v9 = *&a1[24 * (a2 > 0) + 12];
    if (v9)
    {
      if (a3)
      {
        v10 = AVE_PixelBuf_Dump(a3, a1[3] & 1, v9);
      }

      else
      {
        v10 = 4294966287;
      }
    }

    else
    {
      v10 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v11 = AVE_Log_CheckConsole(0x3Du);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v12, 61, v13, "AVE_Dump_WriteInput", 533, "pDump != __null", 0, a2, a3);
        v14 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v14, 61, v20);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v12, 61, v13);
      }
    }

    v10 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v15 = AVE_Log_CheckConsole(0x3Du);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d\n", v16, 61, v17, "AVE_Dump_WriteInput", a1, a2, a3, v10);
      v18 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v18, 61);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d", v16, 61);
    }
  }

  return v10;
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

uint64_t AVE_DAL::Idx2Addr(AVE_DAL *this, int a2, unint64_t *a3)
{
  if (AVE_Log_CheckLevel(0x24u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "Idx2Addr", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %p", CurrTime, 36, LevelStr);
  }

  if (a2 < 0 || !a3)
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
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p\n", v17, 36, v18, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, v19, a2, a3);
        v20 = AVE_GetCurrTime();
        v15 = 4;
        v21 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v20, 36, v21, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, *this, a2, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p %lld %d %p", v17, 36, v18, "AVE_DAL", "Idx2Addr", 432, "idx >= 0 && pAddr != __null", this, v19, a2, a3);
        v15 = 4;
      }
    }

    v11 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(*(this + 1));
    v10 = *(this + 4);
    if (v10)
    {
      v11 = AVE_BlkPool::Idx2Addr(v10, a2, a3);
      if (v11)
      {
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v12 = AVE_Log_CheckConsole(0x24u);
          v13 = AVE_GetCurrTime();
          v14 = AVE_Log_GetLevelStr(4);
          if (v12)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d\n", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443, "ret == 0", this, *this, a2, a3, v11);
            v13 = AVE_GetCurrTime();
            v14 = AVE_Log_GetLevelStr(4);
            v35 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to convert index in UC info pool %p %lld %d %p %d", v13, 36, v14, "AVE_DAL", "Idx2Addr", 443);
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
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p\n", v23, 36, v24, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, v25, a2, a3);
          v26 = AVE_GetCurrTime();
          v15 = 4;
          v27 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v26, 36, v27, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, *this, a2, a3);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong state %p %lld %d %p", v23, 36, v24, "AVE_DAL", "Idx2Addr", 438, "m_pcUCInfoPool != __null", this, v25, a2, a3);
          v15 = 4;
        }
      }

      v11 = 4294966285;
    }
  }

  if (AVE_Log_CheckLevel(0x24u, v15))
  {
    v28 = AVE_Log_CheckConsole(0x24u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(v15);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d\n", v29, 36, v30, "AVE_DAL", "Idx2Addr", this, *this, a2, a3, v11);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(v15);
      v34 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v31, 36, v32, "AVE_DAL");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %p %d", v29, 36, v30, "AVE_DAL");
    }
  }

  return v11;
}

uint64_t AVE_BlkPool::Idx2Addr(pthread_mutex_t **this, int a2, unint64_t *a3)
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
    v6 = AVE_BlkBuf_Idx2Addr(v7, a2, a3);
  }

  if (*this)
  {
    AVE_Mutex_Unlock(this[3]);
  }

  return v6;
}

uint64_t AVE_DLList_Front(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Front_cold_1();
  }

  if (AVE_DLList_Empty(a1))
  {
    return 0;
  }

  else
  {
    return a1[1];
  }
}

uint64_t AVE_BlkBuf_Idx2Addr(uint64_t a1, int a2, void *a3)
{
  if (!a1)
  {
    return 4294966295;
  }

  result = 4294966295;
  if (a3)
  {
    if (*(a1 + 76) > a2)
    {
      result = 0;
      *a3 = *(a1 + 64) + *(a1 + 80) * a2;
    }
  }

  return result;
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

void *AVE_SEI::FindOrCreateFrame(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    v7 = *this;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "FindOrCreateFrame", this, *this, a2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      v8 = *this;
    }

    else
    {
      v16 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld", CurrTime, 211);
  }

  Frame = AVE_SEI::FindFrame(this, a2);
  if (Frame)
  {
    v9 = 0;
LABEL_8:
    v10 = 8;
    goto LABEL_11;
  }

  v9 = AVE_SEI::CreateFrame(this, a2, &Frame);
  if (!v9)
  {
    goto LABEL_8;
  }

  Frame = 0;
  v10 = 4;
LABEL_11:
  if (AVE_Log_CheckLevel(0xD3u, v10))
  {
    v11 = AVE_Log_CheckConsole(0xD3u);
    v12 = AVE_GetCurrTime();
    v13 = AVE_Log_GetLevelStr(v10);
    if (v11)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p\n", v12, 211, v13, "AVE_SEI", "FindOrCreateFrame", this, *this, a2, v9, Frame);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(v10);
      v14 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %p", v12, 211, v13, "AVE_SEI");
  }

  return Frame;
}

void *AVE_SEI::FindFrame(AVE_SEI *this, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v7 = *this;
    if (v4)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "FindFrame", this, *this, a2);
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

  v9 = AVE_DLList_Begin(this + 48);
  if (v9 != AVE_DLList_End(this + 48))
  {
    while (!AVE_Log_CheckLevel(0xD3u, 8))
    {
LABEL_17:
      if (v9[3] == a2)
      {
        goto LABEL_20;
      }

      v9 = AVE_DLList_Next(v9);
      if (v9 == AVE_DLList_End(this + 48))
      {
        goto LABEL_19;
      }
    }

    v10 = AVE_Log_CheckConsole(0xD3u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      if (v9)
      {
        v13 = v9[3];
        v14 = v9[4];
      }

      else
      {
        v13 = -1;
        v14 = -1;
      }

      printf("%lld %d AVE %s: %s::%s node: %p num: %lld, bits: 0x%016llx\n", v11, 211, v12, "AVE_SEI", "FindFrame", v9, v13, v14);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(8);
      if (!v9)
      {
        goto LABEL_15;
      }
    }

    else if (!v9)
    {
LABEL_15:
      v15 = -1;
      v16 = -1;
      goto LABEL_16;
    }

    v15 = v9[3];
    v16 = v9[4];
LABEL_16:
    syslog(3, "%lld %d AVE %s: %s::%s node: %p num: %lld, bits: 0x%016llx", v11, 211, v12, "AVE_SEI", "FindFrame", v9, v15, v16);
    goto LABEL_17;
  }

LABEL_19:
  v9 = 0;
LABEL_20:
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v17 = AVE_Log_CheckConsole(0xD3u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p\n", v18, 211, v19, "AVE_SEI", "FindFrame", this, *this, a2, v9);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(7);
      v20 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p", v18, 211, v19);
  }

  return v9;
}

uint64_t AVE_DLList_Begin(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_Begin_cold_1();
  }

  return *(a1 + 8);
}

uint64_t AVE_DLList_End(uint64_t result)
{
  if (!result)
  {
    AVE_DLList_End_cold_1();
  }

  return result;
}

uint64_t AVE_SEI::SetBitrate(AVE_SEI *this, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetBitrate", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
  }

  if (a3 <= 0)
  {
    v12 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      v16 = *this;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d\n", v14, 211, v15, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", this, *this, a3);
        v17 = AVE_GetCurrTime();
        v12 = 4;
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d", v17, 211, v18, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", this, *this, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid bitrate %d", v14, 211, v15, "AVE_SEI", "SetBitrate", 809, "bitrate > 0", this, *this, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = AVE_Mutex_Lock(*(this + 4));
    Frame = AVE_SEI::FindOrCreateFrame(this, a2);
    if (Frame)
    {
      Frame[4] |= 0x1000000000uLL;
      *(Frame + 22) = a3;
      AVE_Mutex_Unlock(*(this + 4));
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v19 = AVE_Log_CheckConsole(0xD3u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        v22 = *this;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetBitrate", 816, "pPFData != __null", this, *this, a2);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          v23 = *this;
        }

        else
        {
          v31 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      AVE_Mutex_Unlock(*(this + 4));
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v24 = AVE_Log_CheckConsole(0xD3u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v25, 211, v26, "AVE_SEI", "SetBitrate", this, *this, a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(v12);
      v29 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v27, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v26);
    }
  }

  return v10;
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
        v101 = dword_2954EBA60[v100];
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

uint64_t AVE_SEI::SetRCMode(pthread_mutex_t **a1, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetRCMode", a1, *a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
  }

  if (a3 < 0)
  {
    v12 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d\n", v14, 211, v15, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
        v17 = AVE_GetCurrTime();
        v12 = 4;
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d", v17, 211, v18, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid RCMode %d", v14, 211, v15, "AVE_SEI", "SetRCMode", 733, "eRCMode >= AVE_RCMode_None", a1, *a1, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = AVE_Mutex_Lock(a1[4]);
    Frame = AVE_SEI::FindOrCreateFrame(a1, a2);
    if (Frame)
    {
      Frame[4] |= 0x400000000uLL;
      *(Frame + 20) = a3;
      AVE_Mutex_Unlock(a1[4]);
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v19 = AVE_Log_CheckConsole(0xD3u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        v22 = *a1;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetRCMode", 740, "pPFData != __null", a1, *a1, a2);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          v23 = *a1;
        }

        else
        {
          v31 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      AVE_Mutex_Unlock(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v24 = AVE_Log_CheckConsole(0xD3u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v25, 211, v26, "AVE_SEI", "SetRCMode", a1, *a1, a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(v12);
      v29 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v27, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v26);
    }
  }

  return v10;
}

uint64_t AVE_SEI::SetThroughputMode(pthread_mutex_t **a1, uint64_t a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetThroughputMode", a1, *a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
  }

  if (a3 >= 8)
  {
    v12 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      v16 = *a1;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d\n", v14, 211, v15, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
        v17 = AVE_GetCurrTime();
        v12 = 4;
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d", v17, 211, v18, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid ThroughputMode %d", v14, 211, v15, "AVE_SEI", "SetThroughputMode", 772, "AVE_ThroughputMode_Invalid <= eThroughputMode && eThroughputMode < AVE_ThroughputMode_Max", a1, *a1, a3);
        v12 = 4;
      }
    }

    v10 = 4294966295;
  }

  else
  {
    v10 = AVE_Mutex_Lock(a1[4]);
    Frame = AVE_SEI::FindOrCreateFrame(a1, a2);
    if (Frame)
    {
      Frame[4] |= 0x800000000uLL;
      *(Frame + 21) = a3;
      AVE_Mutex_Unlock(a1[4]);
      if (v10)
      {
        v12 = 4;
      }

      else
      {
        v12 = 7;
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v19 = AVE_Log_CheckConsole(0xD3u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        v22 = *a1;
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetThroughputMode", 779, "pPFData != __null", a1, *a1, a2);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          v23 = *a1;
        }

        else
        {
          v31 = *a1;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v20, 211, v21, "AVE_SEI");
      }

      AVE_Mutex_Unlock(a1[4]);
      v12 = 4;
      v10 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v24 = AVE_Log_CheckConsole(0xD3u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v25, 211, v26, "AVE_SEI", "SetThroughputMode", a1, *a1, a2, a3, v10);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(v12);
      v29 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v27, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v25, 211, v26);
    }
  }

  return v10;
}