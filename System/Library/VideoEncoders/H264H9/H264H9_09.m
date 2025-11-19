uint64_t AVE_DAL::TerminateRunLoop(AVE_DAL *this)
{
  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v2 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 36, LevelStr, "AVE_DAL", "TerminateRunLoop", this, *this);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v5 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  v6 = *(this + 10);
  if (v6)
  {
    CFRunLoopStop(v6);
  }

  if (AVE_Log_CheckLevel(0x24u, 6))
  {
    v7 = AVE_Log_CheckConsole(0x24u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(6);
    v10 = *this;
    if (v7)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v8, 36, v9, "AVE_DAL", "TerminateRunLoop", this, *this, 0);
      v8 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
      v11 = *this;
    }

    else
    {
      v13 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v8, 36);
  }

  return 0;
}

void AVE_DAL::RecvThread(AVE_DAL *this, void *a2)
{
  if (AVE_Log_CheckLevel(0x24u, 7))
  {
    v3 = AVE_Log_CheckConsole(0x24u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p\n", CurrTime, 36, LevelStr, "AVE_DAL", "RecvThread", this);
      v6 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", v6, 36, v34, "AVE_DAL", "RecvThread", this);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p", CurrTime, 36, LevelStr, "AVE_DAL", "RecvThread", this);
    }
  }

  if (this)
  {
    v13 = *this;
    if (*this)
    {
      os_retain(*(this + 2));
      v19 = voucher_adopt();
      pthread_setname_np("AVE_UCRecv");
      v20 = AVE_DAL::AdjustThreadPolicy(v13, 0, 0);
      if (v20)
      {
        v21 = v20;
        if (AVE_Log_CheckLevel(0x24u, 4))
        {
          v22 = AVE_Log_CheckConsole(0x24u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(4);
          v25 = *v13;
          if (v22)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d\n", v23, 36, v24, "AVE_DAL", "RecvThread", 1572, "ret == 0", v13, *v13, v21);
            v23 = AVE_GetCurrTime();
            v24 = AVE_Log_GetLevelStr(4);
          }

          v35 = *v13;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set thread policy %p %lld %d", v23, 36, v24, "AVE_DAL");
        }
      }

      else
      {
        v21 = AVE_DAL::SetUpRunLoop(v13);
        if (v21)
        {
          if (AVE_Log_CheckLevel(0x24u, 4))
          {
            v26 = AVE_Log_CheckConsole(0x24u);
            v27 = AVE_GetCurrTime();
            v28 = AVE_Log_GetLevelStr(4);
            v29 = *v13;
            if (v26)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d\n", v27, 36, v28, "AVE_DAL", "RecvThread", 1576, "ret == 0", v13, *v13, v21);
              v27 = AVE_GetCurrTime();
              v28 = AVE_Log_GetLevelStr(4);
            }

            v36 = *v13;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to set up run loop %p %lld %d", v27, 36, v28, "AVE_DAL");
          }
        }

        else
        {
          *(this + 2) = 1;
          CFRunLoopRun();
          AVE_DAL::TearDownRunLoop(v13);
        }
      }

      if (v19 != -1)
      {
        v30 = voucher_adopt();
        os_release(v30);
      }

      if (v21)
      {
        v7 = 4;
      }

      else
      {
        v7 = 7;
      }
    }

    else
    {
      v7 = 4;
      if (AVE_Log_CheckLevel(0x24u, 4))
      {
        v14 = AVE_Log_CheckConsole(0x24u);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong class %p\n", v15, 36, v16, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v17 = AVE_GetCurrTime();
          v7 = 4;
          v18 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v17, 36, v18, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong class %p", v15, 36, v16, "AVE_DAL", "RecvThread", 1560, "pDAL != __null", 0);
          v7 = 4;
        }
      }

      v21 = -1015;
    }
  }

  else
  {
    v7 = 4;
    if (AVE_Log_CheckLevel(0x24u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x24u);
      v9 = AVE_GetCurrTime();
      v10 = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p\n", v9, 36, v10, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v11 = AVE_GetCurrTime();
        v7 = 4;
        v12 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v11, 36, v12, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong parameters %p", v9, 36, v10, "AVE_DAL", "RecvThread", 1554, "pArg != __null", 0);
        v7 = 4;
      }
    }

    v21 = -1001;
  }

  if (AVE_Log_CheckLevel(0x24u, v7))
  {
    v31 = AVE_Log_CheckConsole(0x24u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(v7);
    if (v31)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %d\n", v32, 36, v33, "AVE_DAL", "RecvThread", this, v21);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(v7);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %d", v32, 36, v33, "AVE_DAL", "RecvThread", this, v21);
  }

  pthread_exit(0);
}

void *AVE_DLList_Init_Node(void *result)
{
  if (!result)
  {
    AVE_DLList_Init_Node_cold_1();
  }

  *result = result;
  result[1] = result;
  result[2] = 0;
  return result;
}

uint64_t AVE_DLList_Init(uint64_t result)
{
  if (!result)
  {
    AVE_DLList_Init_cold_1();
  }

  *result = result;
  *(result + 8) = result;
  *(result + 24) = 0;
  *(result + 16) = result;
  return result;
}

uint64_t AVE_DLList_Prev(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_Prev_cold_1();
  }

  return *a1;
}

uint64_t AVE_DLList_Next(uint64_t a1)
{
  if (!a1)
  {
    AVE_DLList_Next_cold_1();
  }

  return *(a1 + 8);
}

uint64_t AVE_DLList_Back(void *a1)
{
  if (!a1)
  {
    AVE_DLList_Back_cold_1();
  }

  if (AVE_DLList_Empty(a1))
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

BOOL AVE_DLList_PopBack(void **a1)
{
  if (!a1)
  {
    AVE_DLList_PopBack_cold_3();
  }

  if (!*a1)
  {
    AVE_DLList_PopBack_cold_2();
  }

  if (!a1[1])
  {
    AVE_DLList_PopBack_cold_1();
  }

  result = AVE_DLList_Empty(a1);
  if (!result)
  {
    v3 = *a1;
    v4 = **a1;
    *a1 = v4;
    v4[1] = a1;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
    --*(a1 + 6);
  }

  return result;
}

uint64_t AVE_DLList_REnd(uint64_t result)
{
  if (!result)
  {
    AVE_DLList_REnd_cold_1();
  }

  return result;
}

uint64_t AVE_DLB_ParseCfg(char *a1, int *a2)
{
  if (!a1)
  {
    return 4294966288;
  }

  v3 = a1;
  v4 = 0;
  v5 = a2 + 2;
  v6 = 0xFFFFFFFFLL;
  v7 = a2 + 2;
  while (1)
  {
    result = *v3;
    if (*v3 <= 0x53u)
    {
      if (*v3 <= 0x4Cu)
      {
        if (*v3 <= 0x43u)
        {
          if (result == 32)
          {
            goto LABEL_59;
          }

          if (!*v3)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (result == 68)
          {
            goto LABEL_31;
          }

          if (result == 71)
          {
LABEL_32:
            v4 = 4;
            goto LABEL_59;
          }
        }
      }

      else if (*v3 > 0x4Fu)
      {
        if (result == 80)
        {
          goto LABEL_34;
        }

        if (result == 83)
        {
LABEL_30:
          v4 = 6;
          goto LABEL_59;
        }
      }

      else
      {
        if (result == 77)
        {
          goto LABEL_24;
        }

        if (result == 78)
        {
LABEL_33:
          v4 = 3;
          goto LABEL_59;
        }
      }
    }

    else if (*v3 > 0x6Du)
    {
      if (*v3 > 0x72u)
      {
        if (result == 115)
        {
          goto LABEL_30;
        }

        if (result == 116)
        {
LABEL_27:
          v4 = 1;
          goto LABEL_59;
        }
      }

      else
      {
        if (result == 110)
        {
          goto LABEL_33;
        }

        if (result == 112)
        {
LABEL_34:
          v4 = 5;
          goto LABEL_59;
        }
      }
    }

    else if (*v3 > 0x66u)
    {
      if (result == 103)
      {
        goto LABEL_32;
      }

      if (result == 109)
      {
LABEL_24:
        v4 = 2;
        goto LABEL_59;
      }
    }

    else
    {
      if (result == 84)
      {
        goto LABEL_27;
      }

      if (result == 100)
      {
LABEL_31:
        v4 = 0;
        goto LABEL_59;
      }
    }

    if ((result - 48) > 9)
    {
      result = 4294966296;
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      return 4294966288;
    }

    v9 = atoi(v3);
    v10 = v9;
    if (v4 <= 1)
    {
      if (v4)
      {
        v10 = v6 & ~(v6 >> 31);
        *v7 = v9 != 0;
        goto LABEL_57;
      }

      if (v9 > 5)
      {
        result = 4294966290;
        if ((v6 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

        return 4294966288;
      }

      v7 = &v5[12 * v9];
    }

    else
    {
      switch(v4)
      {
        case 2:
          v10 = v6 & ~(v6 >> 31);
          v7[1] = v9 != 0;
          break;
        case 3:
          if ((v9 - 5) < 0xFFFFFFFC)
          {
LABEL_67:
            result = 4294966278;
LABEL_68:
            if ((v6 & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            return 4294966288;
          }

          v7[2] = v9;
          v10 = v6 & ~(v6 >> 31);
          break;
        case 4:
          if (v9 > 3)
          {
            goto LABEL_67;
          }

          v11 = v7[3];
          v12 = &v7[2 * v11];
          v12[4] = v9;
          v12[5] = 1;
          v7[3] = v11 + 1;
          v10 = v6 & ~(v6 >> 31);
          break;
        default:
          v13 = v7[3];
          if (v13 < 1)
          {
LABEL_61:
            result = 4294966274;
            if ((v6 & 0x80000000) == 0)
            {
              goto LABEL_69;
            }

            return 4294966288;
          }

          v14 = v7 + 5;
          while (*(v14 - 1) != v9)
          {
            v14 += 2;
            if (!--v13)
            {
              goto LABEL_61;
            }
          }

          *v14 = v4 != 5;
          v10 = v6;
          break;
      }
    }

LABEL_57:
    result = strchr(v3, 32);
    if (!result)
    {
      break;
    }

    v3 = result;
    v6 = v10;
LABEL_59:
    ++v3;
  }

  LODWORD(v6) = v10;
  if ((v10 & 0x80000000) != 0)
  {
    return 4294966288;
  }

LABEL_69:
  v15 = *a2;
  if (*a2 <= v6 + 1)
  {
    v15 = v6 + 1;
  }

  *a2 = v15;
  return result;
}

uint64_t AVE_ISP_RetrieveMetadata(CFDictionaryRef theDict, double *a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v21 = 0;
  *v22 = 0u;
  v23 = 0u;
  if (theDict && a2)
  {
    a2[10] = 0.0;
    *a2 = 0uLL;
    *(a2 + 4) = 0uLL;
    *(a2 + 3) = 0uLL;
    *(a2 + 2) = 0uLL;
    *(a2 + 1) = 0uLL;
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC06B0], a2);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC0618], a2 + 1);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC04D0], a2 + 2);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC0368], a2 + 3);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC0758], a2 + 4);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC0770], a2 + 5);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC0760], a2 + 6);
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDC06E0], a2 + 16);
    AVE_CFDict_GetDouble(theDict, *MEMORY[0x29EDC06B8], a2 + 7);
    AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDC05C0], a2 + 17);
    if (AVE_CFDict_GetSInt32(theDict, *MEMORY[0x29EDC0728], a2 + 18) == -1008)
    {
      *(a2 + 18) = -1;
    }

    Bool = AVE_CFDict_GetBool(theDict, *MEMORY[0x29EDC0730], &v21);
    v5 = v21;
    if (Bool == -1008)
    {
      v5 = -1;
    }

    *(a2 + 19) = v5;
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x29EDC0630]);
    if (Value)
    {
      Str = AVE_CFStr_GetStr(Value, v22, 32);
      if (Str)
      {
        v8 = Str;
        v9 = &dword_29EDCC0B0;
        v10 = 5;
        while (strcmp(v8, *(v9 - 1)))
        {
          v9 += 4;
          if (!--v10)
          {
            v11 = 0;
            goto LABEL_21;
          }
        }

        v11 = *v9;
LABEL_21:
        *(a2 + 20) = v11;
        if (AVE_Log_CheckLevel(0x37u, 6))
        {
          v17 = AVE_Log_CheckConsole(0x37u);
          CurrTime = AVE_GetCurrTime();
          LevelStr = AVE_Log_GetLevelStr(6);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d SF: %f Port: %s %d\n", CurrTime, 55, LevelStr, "AVE_ISP_RetrieveMetadata", 120, a2[7], v8, v11);
            CurrTime = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(6);
            v20 = *(a2 + 7);
          }

          syslog(3, "%lld %d AVE %s: %s:%d SF: %f Port: %s %d", CurrTime);
        }
      }
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x37u, 4))
    {
      v12 = AVE_Log_CheckConsole(0x37u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", v13, 55, v14, "AVE_ISP_RetrieveMetadata", 73, "pDict != __null && pData != __null", theDict, a2);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", v13, 55);
    }

    Bool = 4294966295;
  }

  v15 = *MEMORY[0x29EDCA608];
  return Bool;
}

uint64_t AVE_ISP_CheckMetadata(__CVBuffer *a1)
{
  if (a1)
  {
    v1 = AVE_ISP_CopyCFMetadata(a1);
    v2 = 4294966288;
    if (v1)
    {
      v3 = v1;
      if (CFDictionaryContainsKey(v1, *MEMORY[0x29EDC06E0]))
      {
        v2 = 0;
      }

      else
      {
        v2 = 4294966288;
      }

      CFRelease(v3);
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x37u, 4))
    {
      v4 = AVE_Log_CheckConsole(0x37u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p\n", CurrTime, 55, LevelStr, "AVE_ISP_CheckMetadata", 206, "pImgBuf != __null", 0);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p", CurrTime);
    }

    return 4294966295;
  }

  return v2;
}

const void *AVE_ISP_CopyCFMetadata(__CVBuffer *a1)
{
  v1 = CVBufferCopyAttachments(a1, kCVAttachmentMode_ShouldPropagate);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Value = CFDictionaryGetValue(v1, *MEMORY[0x29EDBFF98]);
  v4 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v2);
  return v4;
}

uint64_t AVE_ISP_GetMetadata(__CVBuffer *a1, double *a2)
{
  if (a1 && a2)
  {
    v4 = AVE_ISP_CopyCFMetadata(a1);
    if (v4)
    {
      v5 = v4;
      Metadata = AVE_ISP_RetrieveMetadata(v4, a2);
      CFRelease(v5);
      return Metadata;
    }

    else
    {
      return 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x37u, 4))
    {
      v8 = AVE_Log_CheckConsole(0x37u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v8)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %p\n", CurrTime, 55, LevelStr, "AVE_ISP_GetMetadata", 240, "pImgBuf != __null && pData != __null", a1, a2);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %p", CurrTime, 55);
    }

    return 4294966295;
  }
}

uint64_t AVE_Log_UpdateConf(unsigned int a1, int a2)
{
  if (a1 > 0xFF)
  {
    return 4294966295;
  }

  if (a2)
  {
    v4 = a2;
    v5 = a1;
    v6 = a2;
  }

  else
  {
    v4 = 0;
    v5 = a1;
    v6 = *(&gs_sAVE_Log_Default + a1);
  }

  gs_sAVE_Log[v5] = v6;
  if ((byte_2A189AC78 & 0xFu) >= 7)
  {
    v7 = byte_2A189AC78;
    CurrTime = AVE_GetCurrTime();
    if ((v7 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %d 0x%x\n", CurrTime, 64, "VERB", "AVE_Log_UpdateConf", 116, a1, v4);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %d 0x%x", CurrTime, 64, "VERB", "AVE_Log_UpdateConf", 116, a1, v4);
  }

  return 0;
}

uint64_t AVE_Log_CheckConsole(unsigned int a1)
{
  if (a1 < 2)
  {
    return 1;
  }

  if (a1 <= 0xFF)
  {
    return (gs_sAVE_Log[a1] >> 4) & 1;
  }

  return 0;
}

void *AVE_Log_GetLevelStr(int a1)
{
  if (a1 >= 0)
  {
    LOBYTE(v1) = a1;
  }

  else
  {
    v1 = -a1;
  }

  v2 = v1 & 0xF;
  if (v2 > 8)
  {
    return &unk_2954B8F4E;
  }

  else
  {
    return *(&gsc_piaAVE_Log_LevelStr + v2);
  }
}

uint64_t AVE_Log_Init(void)
{
  if (!gs_iAVE_Timestamp)
  {
    *&v0 = 0x505050505050505;
    *(&v0 + 1) = 0x505050505050505;
    xmmword_2A189AB50 = v0;
    unk_2A189AB60 = v0;
    xmmword_2A189AC10 = v0;
    unk_2A189AC20 = v0;
    xmmword_2A189ABF0 = v0;
    unk_2A189AC00 = v0;
    xmmword_2A189ABD0 = v0;
    unk_2A189ABE0 = v0;
    xmmword_2A189ABB0 = v0;
    unk_2A189ABC0 = v0;
    xmmword_2A189AB90 = v0;
    unk_2A189ABA0 = v0;
    xmmword_2A189AB70 = v0;
    unk_2A189AB80 = v0;
    gs_sAVE_Log_Default = v0;
    unk_2A189AB40 = v0;
    BYTE4(gs_sAVE_Log_Default) = 6;
    BYTE12(xmmword_2A189AB50) = 6;
    byte_2A189AB6D = 6;
    *(&gs_sAVE_Log_Default + 11) = 1542;
    BYTE5(xmmword_2A189AB90) = 6;
    BYTE1(xmmword_2A189AB70) = 6;
    dword_2A189AC34 = 20000;
    dword_2A189AC30 = 25;
    AVE_MemCpyV2V(gs_sAVE_Log, &gs_sAVE_Log_Default, 256);
    dword_2A189AD3C = dword_2A189AC34;
    dword_2A189AD38 = dword_2A189AC30;
    gs_iAVE_Timestamp = 1;
  }

  return 0;
}

uint64_t AVE_Log_UpdateConsole(int a1)
{
  if ((byte_2A189AC78 & 0xEu) > 5)
  {
    v2 = byte_2A189AC78;
    CurrTime = AVE_GetCurrTime();
    if ((v2 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter %d\n", CurrTime, 64, "INFO", "AVE_Log_UpdateConsole", a1);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d", CurrTime, 64, "INFO", "AVE_Log_UpdateConsole", a1);
  }

  for (i = 0; i != 256; ++i)
  {
    gs_sAVE_Log[i] = gs_sAVE_Log[i] & 0xEF | (16 * ((gs_sAVE_Log[i] & 0xF) <= a1));
  }

  gs_iAVE_Timestamp = AVE_GetAbsTime();
  AVE_Log_Print();
  if ((byte_2A189AC78 & 0xEu) >= 6)
  {
    v5 = byte_2A189AC78;
    v6 = AVE_GetCurrTime();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit %d %d\n", v6, 64, "INFO", "AVE_Log_UpdateConsole", a1, 0);
      v6 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d", v6, 64, "INFO", "AVE_Log_UpdateConsole", a1, 0);
  }

  return 0;
}

void AVE_Log_Print()
{
  if ((byte_2A189AC78 & 0xFu) >= 7)
  {
    v0 = byte_2A189AC78;
    CurrTime = AVE_GetCurrTime();
    if ((v0 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d %llu\n", CurrTime, 64, "VERB", "AVE_Log_Print", 85, gs_iAVE_Timestamp);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s:%d %llu", CurrTime, 64, "VERB", "AVE_Log_Print", 85, gs_iAVE_Timestamp);
  }

  for (i = 0; i != 256; ++i)
  {
    if ((byte_2A189AC78 & 0xFu) >= 7)
    {
      v3 = byte_2A189AC78;
      v4 = AVE_GetCurrTime();
      v5 = gs_sAVE_Log[i];
      if ((v3 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: Log Cfg: %3d = 0x%02x\n", v4, 64, "VERB", i, v5);
        v4 = AVE_GetCurrTime();
        v5 = gs_sAVE_Log[i];
      }

      syslog(3, "%lld %d AVE %s: Log Cfg: %3d = 0x%02x", v4, 64, "VERB", i, v5);
    }
  }

  if ((byte_2A189AC78 & 0xFu) >= 7)
  {
    v6 = byte_2A189AC78;
    v7 = AVE_GetCurrTime();
    if ((v6 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: Log Cfg: %d (us) %d%%\n", v7, 64, "VERB", dword_2A189AD3C, dword_2A189AD38);
      v7 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: Log Cfg: %d (us) %d%%", v7, 64, "VERB", dword_2A189AD3C, dword_2A189AD38);
  }
}

uint64_t AVE_Log_Load(void *a1, uint64_t a2)
{
  result = 4294966295;
  if (a1)
  {
    if (a2)
    {
      *a1 = gs_iAVE_Timestamp;
      AVE_MemCpyV2V(a2, gs_sAVE_Log, 256);
      result = 0;
      *(a2 + 256) = dword_2A189AD38;
      *(a2 + 260) = dword_2A189AD3C;
    }
  }

  return result;
}

uint64_t AVE_Log_PresetConf(unsigned __int8 *a1, int a2, int a3)
{
  for (i = 5; i != 256; ++i)
  {
    v7 = i >> 3;
    if (v7 >= a2)
    {
      break;
    }

    if ((a1[v7] >> (i & 7)))
    {
      AVE_Log_UpdateConf(i, a3);
    }
  }

  return 0;
}

uint64_t AVE_Log_PresetCfg(unsigned int a1, unint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  *v16 = 0u;
  v17 = 0u;
  if ((byte_2A189AC78 & 0xEu) >= 6)
  {
    v5 = byte_2A189AC78;
    CurrTime = AVE_GetCurrTime();
    if ((v5 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Enter 0x%x 0x%llx\n", CurrTime, 64, "INFO", "AVE_Log_PresetCfg", a1, a2);
      CurrTime = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Enter 0x%x 0x%llx", CurrTime, 64, "INFO", "AVE_Log_PresetCfg", a1, a2);
  }

  v7 = (a1 >> 2) & 0x3FFFFFC0;
  v8 = v7 - 64;
  if (a2)
  {
    for (i = 0; i != 64; ++i)
    {
      if ((v8 | i) > 255)
      {
        break;
      }

      v16[(v8 | i) / 8] |= ((a2 >> i) & 1) << ((v8 | i) - (v2 & 0xF8));
    }

    AVE_Log_PresetConf(v16, 32, a1);
  }

  else
  {
    v10 = 320 - v7;
    if ((v8 - 192) >= 0xFFFFFFFFFFFFFF00)
    {
      v11 = 64;
    }

    else
    {
      v11 = v10;
    }

    AVE_MemCpyV2V(&gs_sAVE_Log[v8], &gs_sAVE_Log_Default + v8, v11);
  }

  if ((a1 & 0xFFFFFEFF) != 0)
  {
    gs_iAVE_Timestamp = AVE_GetAbsTime();
  }

  AVE_Log_Print();
  if ((byte_2A189AC78 & 0xEu) >= 6)
  {
    v12 = byte_2A189AC78;
    v13 = AVE_GetCurrTime();
    if ((v12 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s Exit 0x%x 0x%llx %d\n", v13, 64, "INFO", "AVE_Log_PresetCfg", a1, a2, 0);
      v13 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s Exit 0x%x 0x%llx %d", v13, 64, "INFO", "AVE_Log_PresetCfg", a1, a2, 0);
  }

  v14 = *MEMORY[0x29EDCA608];
  return 0;
}

uint64_t AVE_Log_ReadCfg(const char *a1)
{
  v88 = *MEMORY[0x29EDCA608];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  *v76 = 0u;
  v77 = 0u;
  memset(&v75, 0, sizeof(v75));
  v74 = 0;
  v73 = 0;
  gsc_piaAVE_Log_DefaultCfgFilePath[0] = 0;
  qword_2A189AB18 = 0;
  if (a1)
  {
    gsc_piaAVE_Log_DefaultCfgFilePath[0] = a1;
  }

  TemporayPath = AVE_GetTemporayPath(v76, 192);
  if (TemporayPath >= 1)
  {
    AVE_SNPrintf(&v76[TemporayPath], 192 - TemporayPath, "%s", v2, v3, v4, v5, v6, "ave_log.cfg");
    qword_2A189AB18 = v76;
  }

  for (i = 0; i != 4; ++i)
  {
    v8 = gsc_piaAVE_Log_DefaultCfgFilePath[i];
    if (!v8)
    {
      continue;
    }

    if (stat(gsc_piaAVE_Log_DefaultCfgFilePath[i], &v75))
    {
      if ((byte_2A189AC78 & 8) != 0)
      {
        v9 = byte_2A189AC78;
        CurrTime = AVE_GetCurrTime();
        if ((v9 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file doesn't exist at %s\n", CurrTime, 64, "DBG", "AVE_Log_ReadCfg", 650, v8);
          AVE_GetCurrTime();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file doesn't exist at %s");
      }

      continue;
    }

    if ((byte_2A189AC78 & 8) != 0)
    {
      v11 = byte_2A189AC78;
      v12 = AVE_GetCurrTime();
      if ((v11 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file is at %s\n", v12, 64, "DBG", "AVE_Log_ReadCfg", 654, v8);
        v12 = AVE_GetCurrTime();
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file is at %s", v12, 64, "DBG", "AVE_Log_ReadCfg", 654, v8);
    }

    v13 = v75.st_mtimespec.tv_nsec / 1000 + 1000000 * v75.st_mtimespec.tv_sec;
    if (v13 == gs_iAVE_Timestamp && gs_iAVE_Timestamp)
    {
      if ((byte_2A189AC78 & 8) != 0)
      {
        v14 = byte_2A189AC78;
        v15 = AVE_GetCurrTime();
        if ((v14 & 0x10) != 0)
        {
          printf("%lld %d AVE %s: %s:%d log config file has been updated %s %llu\n", v15, 64, "DBG", "AVE_Log_ReadCfg", 662, v8, gs_iAVE_Timestamp);
          v15 = AVE_GetCurrTime();
        }

        syslog(3, "%lld %d AVE %s: %s:%d log config file has been updated %s %llu", v15, 64, "DBG", "AVE_Log_ReadCfg", 662, v8, gs_iAVE_Timestamp);
      }

      continue;
    }

    v16 = fopen(v8, "r");
    if (v16)
    {
      v27 = v16;
      v28 = malloc_type_malloc(0x108uLL, 0x10000400BDB4DB4uLL);
      if (v28)
      {
        v29 = v28;
        *(v28 + 32) = 0;
        *(v28 + 14) = 0u;
        *(v28 + 15) = 0u;
        *(v28 + 12) = 0u;
        *(v28 + 13) = 0u;
        *(v28 + 10) = 0u;
        *(v28 + 11) = 0u;
        *(v28 + 8) = 0u;
        *(v28 + 9) = 0u;
        *(v28 + 6) = 0u;
        *(v28 + 7) = 0u;
        *(v28 + 4) = 0u;
        *(v28 + 5) = 0u;
        *(v28 + 2) = 0u;
        *(v28 + 3) = 0u;
        *v28 = 0u;
        *(v28 + 1) = 0u;
        if ((byte_2A189AC78 & 0xFu) >= 5)
        {
          v30 = byte_2A189AC78;
          v31 = AVE_GetCurrTime();
          if ((v30 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d used log config file is at %s %llu\n", v31, 64, "WARN", "AVE_Log_ReadCfg", 690, v8, v13);
            v31 = AVE_GetCurrTime();
          }

          syslog(3, "%lld %d AVE %s: %s:%d used log config file is at %s %llu", v31, 64, "WARN", "AVE_Log_ReadCfg", 690, v8, v13);
        }

        gs_iAVE_Timestamp = v13;
        v34 = malloc_type_malloc(0x100uLL, 0x100004077774924uLL);
        if (v34)
        {
          v35 = v34;
          *(v34 + 14) = 0u;
          *(v34 + 15) = 0u;
          *(v34 + 12) = 0u;
          *(v34 + 13) = 0u;
          *(v34 + 10) = 0u;
          *(v34 + 11) = 0u;
          *(v34 + 8) = 0u;
          *(v34 + 9) = 0u;
          *(v34 + 6) = 0u;
          *(v34 + 7) = 0u;
          *(v34 + 4) = 0u;
          *(v34 + 5) = 0u;
          *(v34 + 2) = 0u;
          *(v34 + 3) = 0u;
          *v34 = 0u;
          *(v34 + 1) = 0u;
          v72 = 0;
          v36 = fgetln(v27, &v72);
          if (v36)
          {
            v37 = v36;
            v38 = (v29 + 256);
            v39 = (v29 + 260);
            v40 = 1;
            while (1)
            {
              v41 = *v37;
              v42 = v41 > 0x23;
              v43 = (1 << v41) & 0x800002400;
              if (!v42 && v43 != 0)
              {
                goto LABEL_55;
              }

              if (v72 >= 0x100)
              {
                if ((byte_2A189AC78 & 0xFu) >= 5)
                {
                  v45 = byte_2A189AC78;
                  v46 = AVE_GetCurrTime();
                  if ((v45 & 0x10) != 0)
                  {
                    printf("%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld\n", v46, 64, "WARN", "AVE_Log_ReadCfg", 732, v8, v40);
                    v46 = AVE_GetCurrTime();
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d Line too long, skipping %s:%lld", v46, 64, "WARN", "AVE_Log_ReadCfg", 732, v8, v40);
                }

                goto LABEL_55;
              }

              AVE_StrNCpy(v35, v37, v72 + 1);
              LODWORD(v74) = 15;
              v73 = 0;
              if (sscanf(v35, "LOG_ID_%d=%d%c", &v74 + 4, &v74, &v73) >= 2)
              {
                v47 = v74;
                if ((v73 & 0xDF) == 0x43)
                {
                  v47 = v74 | 0x10;
                }

                v29[SHIDWORD(v74)] = v47;
                goto LABEL_55;
              }

              if (sscanf(v35, "THRESHOLD=%d", v38) != 1)
              {
                break;
              }

              v48 = &dword_2A189AC30;
              if (*v38)
              {
                v48 = v38;
              }

              dword_2A189AD38 = *v48;
              if ((byte_2A189AC78 & 0xFu) < 7)
              {
                goto LABEL_55;
              }

              v49 = v38;
              v50 = byte_2A189AC78;
              v51 = AVE_GetCurrTime();
              v71 = v49;
              v52 = *v49;
              if ((v50 & 0x10) == 0)
              {
                v68 = *v49;
                syslog(3, "%lld %d AVE %s: %s:%d Read threshold %d");
LABEL_82:
                v38 = v71;
                goto LABEL_55;
              }

              printf("%lld %d AVE %s: %s:%d Read threshold %d\n", v51, 64, "VERB", "AVE_Log_ReadCfg", 757, *v49);
              v57 = AVE_GetCurrTime();
              syslog(3, "%lld %d AVE %s: %s:%d Read threshold %d", v57, 64, "VERB", "AVE_Log_ReadCfg", 757, *v49);
              v38 = v49;
LABEL_55:
              v72 = 0;
              v37 = fgetln(v27, &v72);
              ++v40;
              if (!v37)
              {
                goto LABEL_83;
              }
            }

            if (sscanf(v35, "INTERVAL=%d", v39) != 1)
            {
              goto LABEL_55;
            }

            v53 = &dword_2A189AC34;
            if (*v39)
            {
              v53 = (v29 + 260);
            }

            dword_2A189AD3C = *v53;
            if ((byte_2A189AC78 & 0xFu) < 7)
            {
              goto LABEL_55;
            }

            v71 = v38;
            v54 = byte_2A189AC78;
            v55 = AVE_GetCurrTime();
            v56 = *v39;
            if ((v54 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d Read interval %d (us)\n", v55, 64, "VERB", "AVE_Log_ReadCfg", 764, *v39);
              AVE_GetCurrTime();
            }

            v69 = *v39;
            syslog(3, "%lld %d AVE %s: %s:%d Read interval %d (us)");
            goto LABEL_82;
          }

LABEL_83:
          if (ferror(v27))
          {
            if ((byte_2A189AC78 & 0xC) != 0)
            {
              v58 = byte_2A189AC78;
              v59 = AVE_GetCurrTime();
              v60 = __error();
              v61 = strerror(*v60);
              if ((v58 & 0x10) != 0)
              {
                printf("%lld %d AVE %s: %s:%d error while reading config file: %s\n", v59, 64, "ERR", "AVE_Log_ReadCfg", 713, v61);
                v66 = AVE_GetCurrTime();
                v67 = __error();
                v70 = strerror(*v67);
                syslog(3, "%lld %d AVE %s: %s:%d error while reading config file: %s", v66, 64, "ERR", "AVE_Log_ReadCfg", 713, v70);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d error while reading config file: %s", v59, 64, "ERR", "AVE_Log_ReadCfg", 713, v61);
              }
            }

            v24 = 4294966284;
          }

          else
          {
            for (j = 0; j != 256; ++j)
            {
              v65 = &v29[j];
              if (!v29[j])
              {
                v65 = v29;
              }

              AVE_Log_UpdateConf(j, *v65);
            }

            AVE_Log_Print();
            v24 = 0;
          }

          free(v35);
        }

        else
        {
          if ((byte_2A189AC78 & 0xC) != 0)
          {
            v62 = byte_2A189AC78;
            v63 = AVE_GetCurrTime();
            if ((v62 & 0x10) != 0)
            {
              printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader\n", v63, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
              v63 = AVE_GetCurrTime();
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for line reader", v63, 64, "ERR", "AVE_Log_ReadCfg", 696, "pLineBuf != __null");
          }

          v24 = 4294966293;
        }

        free(v29);
      }

      else
      {
        if ((byte_2A189AC78 & 0xC) != 0)
        {
          v32 = byte_2A189AC78;
          v33 = AVE_GetCurrTime();
          if ((v32 & 0x10) != 0)
          {
            printf("%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config\n", v33, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
            v33 = AVE_GetCurrTime();
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | cannot allocate memory for log config", v33, 64, "ERR", "AVE_Log_ReadCfg", 686, "pTmpLog != __null");
        }

        v24 = 4294966293;
      }

      fclose(v27);
      goto LABEL_37;
    }

    if ((byte_2A189AC78 & 8) != 0)
    {
      v17 = byte_2A189AC78;
      v18 = AVE_GetCurrTime();
      v19 = __error();
      v20 = strerror(*v19);
      if ((v17 & 0x10) != 0)
      {
        printf("%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s\n", v18, 64, "DBG", "AVE_Log_ReadCfg", 673, v8, v20);
        v18 = AVE_GetCurrTime();
        v21 = __error();
        strerror(*v21);
      }

      syslog(3, "%lld %d AVE %s: %s:%d log config file cannot be opened %s : %s", v18);
    }
  }

  if ((byte_2A189AC78 & 8) != 0)
  {
    v22 = byte_2A189AC78;
    v23 = AVE_GetCurrTime();
    if ((v22 & 0x10) != 0)
    {
      printf("%lld %d AVE %s: %s:%d cannot find available config file\n", v23, 64, "DBG", "AVE_Log_ReadCfg", 679);
      v23 = AVE_GetCurrTime();
    }

    syslog(3, "%lld %d AVE %s: %s:%d cannot find available config file", v23, 64, "DBG", "AVE_Log_ReadCfg", 679);
  }

  v24 = 4294966288;
LABEL_37:
  v25 = *MEMORY[0x29EDCA608];
  return v24;
}

uint64_t AVE_Log_Config(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 44))
    {
      v2 = (result + 44);
    }

    else
    {
      v2 = 0;
    }

    result = AVE_Log_ReadCfg(v2);
    v3 = 256;
    for (i = 2; i != 10; i += 2)
    {
      if ((*v1 & v3) != 0)
      {
        AVE_Log_PresetCfg(v3 + 7, *&v1[i]);
        result = 0;
      }

      v3 += 256;
    }

    v5 = v1[10];
    if (v5)
    {
      AVE_Log_UpdateConsole(v5);
      return 0;
    }
  }

  return result;
}

uint64_t AVE_Dump_Create(uint64_t a1, void *a2)
{
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v4 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %lld %p\n", CurrTime, 61, LevelStr, "AVE_Dump_Create", a1, a2);
      v7 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", v7, 61, v20, "AVE_Dump_Create", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %lld %p", CurrTime, 61, LevelStr, "AVE_Dump_Create", a1, a2);
    }
  }

  if (a2)
  {
    v8 = malloc_type_malloc(0xF0uLL, 0x1020040FC94C6CFuLL);
    if (v8)
    {
      v9 = 0;
      *(v8 + 29) = 0;
      *(v8 + 216) = 0u;
      *(v8 + 200) = 0u;
      *(v8 + 184) = 0u;
      *(v8 + 168) = 0u;
      *(v8 + 152) = 0u;
      *(v8 + 136) = 0u;
      *(v8 + 120) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 8) = 0u;
      *v8 = a1;
      *a2 = v8;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x3Du, 4))
      {
        v13 = AVE_Log_CheckConsole(0x3Du);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p\n", v14, 61, v15, "AVE_Dump_Create", 89, "pDump != __null", a1, a2);
          v14 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create dump %lld %p", v14, 61);
      }

      v9 = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v10 = AVE_Log_CheckConsole(0x3Du);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p\n", v11, 61, v12, "AVE_Dump_Create", 85, "ppDump != __null", a1, 0);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %lld %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v16 = AVE_Log_CheckConsole(0x3Du);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(7);
    if (v16)
    {
      printf("%lld %d AVE %s: %s Exit %lld %p %d\n", v17, 61, v18, "AVE_Dump_Create", a1, a2, v9);
      v17 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %lld %p %d", v17);
  }

  return v9;
}

uint64_t AVE_Dump_Destroy(void *a1)
{
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v2 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 61, LevelStr, "AVE_Dump_Destroy", a1);
      v5 = AVE_GetCurrTime();
      v11 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v11, "AVE_Dump_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 61, LevelStr, "AVE_Dump_Destroy", a1);
    }
  }

  if (a1)
  {
    free(a1);
  }

  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v6 = AVE_Log_CheckConsole(0x3Du);
    v7 = AVE_GetCurrTime();
    v8 = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
      v9 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v9, 61, v12, "AVE_Dump_Destroy", 0, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v7, 61, v8, "AVE_Dump_Destroy", 0, 0);
    }
  }

  return 0;
}

uint64_t AVE_Dump_ComposeFilePath(uint64_t a1, unsigned int a2, int a3, const char *a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v54 = *MEMORY[0x29EDCA608];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *v46 = 0u;
  v47 = 0u;
  v44 = gc_piaAVE_ChromaFmt[*(a1 + 32)];
  v45 = *(a1 + 36);
  v41 = *(a1 + 24);
  v43 = *(a1 + 28);
  v39 = *(&gc_piaAVE_ClientType + *(a1 + 16));
  v14 = AVE_SNPrintf(v46, 128, "%lld-%s-%dx%d-%s-%d", a4, a5, a6, a7, a8, *a1);
  v20 = v14;
  if ((a3 & 0x80000000) == 0)
  {
    v20 = AVE_SNPrintf(&v46[v14], 128 - v14, "-MP%d", v15, v16, v17, v18, v19, a3) + v14;
  }

  if (*(a1 + 16) == 1)
  {
    v40 = *(a1 + 44);
    v20 += AVE_SNPrintf(&v46[v20], 128 - v20, "-%s-%d", v15, v16, v17, v18, v19, *(&gc_piaAVE_EncType + *(a1 + 20)));
  }

  v21 = pthread_self();
  v22 = &gsc_saAVE_DumpInfo[12 * a2];
  rand();
  v42 = *v22;
  v28 = AVE_SNPrintf(&v46[v20], 128 - v20, "-%lu-%d-%s", v23, v24, v25, v26, v27, v21);
  if (a2 == 1)
  {
    v34 = *(a1 + 16);
    if (v34 == 1)
    {
      v35 = &v22[*(a1 + 20)];
    }

    else
    {
      v35 = &v22[v34 + 2];
    }

    goto LABEL_12;
  }

  if (((*(a1 + 12) >> a2) & 1) == 0 || (v36 = v22[2]) == 0)
  {
    v35 = v22 + 1;
LABEL_12:
    v36 = *v35;
  }

  AVE_SNPrintf(&v46[v20 + v28], 128 - (v20 + v28), ".%s", v29, v30, v31, v32, v33, v36);
  result = AVE_ComposeFilePath(a4, 0, v46, a5, v8);
  v38 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t AVE_Dump_OpenFiles(_DWORD *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v55 = *MEMORY[0x29EDCA608];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  *__filename = 0u;
  v40 = 0u;
  if (a1[10] >= 1)
  {
    v8 = a2;
    v10 = 0;
    v38 = 0;
    v11 = a1 + 12;
    while (1)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        if ((a1[2] & (1 << v13)) != 0 && !*&v11[2 * v13])
        {
          if (a1[10] <= 1)
          {
            v14 = -1;
          }

          else
          {
            v14 = v10;
          }

          v38 = AVE_Dump_ComposeFilePath(a1, v13, v14, v8, __filename, 256, a7, a8);
          v15 = (a1[3] & (1 << v13)) != 0 && v12 == 36;
          v16 = 8;
          if (v15)
          {
            v16 = 9;
          }

          v17 = (&gsc_saAVE_DumpInfo[v12])[v16];
          v18 = fopen(__filename, v17);
          *&v11[2 * v13] = v18;
          if (v18)
          {
            if (!AVE_Log_CheckLevel(0x3Du, 6))
            {
              goto LABEL_26;
            }

            v19 = AVE_Log_CheckConsole(0x3Du);
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(6);
            if (v19)
            {
              printf("%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s\n", CurrTime, 61, LevelStr, "AVE_Dump_OpenFiles", 262, a1, *a1, v10, v13, __filename, v17);
              v22 = AVE_GetCurrTime();
              v23 = AVE_Log_GetLevelStr(6);
              v35 = *a1;
              v33 = v23;
              v31 = v22;
            }

            else
            {
              v33 = LevelStr;
              v31 = CurrTime;
            }

            syslog(3, "%lld %d AVE %s: %s:%d open dump file %p %lld | %d %d %s %s", v31, 61, v33, "AVE_Dump_OpenFiles");
          }

          else
          {
            if (!AVE_Log_CheckLevel(0x3Du, 4))
            {
              goto LABEL_26;
            }

            v24 = AVE_Log_CheckConsole(0x3Du);
            v25 = AVE_GetCurrTime();
            v26 = AVE_Log_GetLevelStr(4);
            if (v24)
            {
              printf("%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s\n", v25, 61, v26, "AVE_Dump_OpenFiles", 257, a1, *a1, v10, v13, __filename, v17);
              v27 = AVE_GetCurrTime();
              v28 = AVE_Log_GetLevelStr(4);
              v36 = *a1;
              v34 = v28;
              v32 = v27;
            }

            else
            {
              v34 = v26;
              v32 = v25;
            }

            syslog(3, "%lld %d AVE %s: %s:%d fail to open dump file %p %lld | %d %d %s %s", v32, 61, v34, "AVE_Dump_OpenFiles");
          }

          v8 = a2;
        }

LABEL_26:
        ++v13;
        v12 += 12;
      }

      while (v12 != 144);
      ++v10;
      v11 += 24;
      if (v10 >= a1[10])
      {
        goto LABEL_30;
      }
    }
  }

  v38 = 0;
LABEL_30:
  v29 = *MEMORY[0x29EDCA608];
  return v38;
}

uint64_t AVE_Dump_WriteHeader(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 48;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = v4 + 96 * v2;
    v9 = -2;
    do
    {
      if (*(v8 + v6))
      {
        v10 = v9 > 8;
      }

      else
      {
        v10 = 1;
      }

      if (!v10 && ((0x1C1u >> v9) & 1) != 0)
      {
        if (fprintf(*(v8 + v6), off_29EDCC5C0[v9]) <= 0)
        {
          result = 4294965296;
        }

        else
        {
          result = 0;
        }
      }

      v6 += 8;
      ++v9;
    }

    while (v6 != 96);
    v5 = 0;
    v2 = 1;
  }

  while ((v7 & 1) != 0);
  return result;
}

uint64_t AVE_Dump_Init(uint64_t a1, const char *a2, int a3, int a4, int a5, int a6, void *a7, int a8, int a9, int a10, int a11)
{
  v11 = a8;
  v16 = a10;
  v17 = a11;
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v24 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v24)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", CurrTime, 61, LevelStr, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
      v46 = AVE_GetCurrTime();
      v11 = a8;
      v43 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v46, 61, v43, "AVE_Dump_Init", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %d %d 0x%x 0x%x %p %d %d %d %d", CurrTime, 61, LevelStr, "AVE_Dump_Init", a1);
    }
  }

  if (a1 && a7)
  {
    *(a1 + 8) = a5;
    *(a1 + 12) = a6;
    *(a1 + 16) = a3;
    *(a1 + 20) = a4;
    *(a1 + 24) = *a7;
    *(a1 + 32) = a9;
    *(a1 + 36) = a10;
    *(a1 + 40) = v11;
    *(a1 + 44) = a11;
    v27 = AVE_Dump_OpenFiles(a1, a2, v18, v19, v20, v21, v22, v23);
    if (!v27)
    {
      AVE_Dump_WriteHeader(a1);
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (AVE_Log_CheckLevel(0x3Du, 4))
  {
    v28 = AVE_Log_CheckConsole(0x3Du);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(4);
    if (v28)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d\n", v29, 61, v30, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1, a2, a3, a4, a5, a6, a7, v11, a9, a10, a11);
      v45 = AVE_GetCurrTime();
      v11 = a8;
      v44 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v45, 61, v44, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p %d %d 0x%x 0x%x %p %d %d %d %d", v29, 61, v30, "AVE_Dump_Init", 457, "pDump != __null && pResolution != __null", a1);
    }
  }

  v27 = 4294966295;
  if (a1)
  {
LABEL_14:
    v31 = 0;
    v32 = 1;
    do
    {
      v33 = 0;
      v34 = v32;
      v35 = a1 + 48 + 96 * v31;
      do
      {
        v36 = *(v35 + v33);
        if (v36)
        {
          fclose(v36);
          *(v35 + v33) = 0;
        }

        v33 += 8;
      }

      while (v33 != 96);
      v32 = 0;
      v31 = 1;
    }

    while ((v34 & 1) != 0);
    v16 = a10;
    v17 = a11;
    v11 = a8;
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v37 = AVE_Log_CheckConsole(0x3Du);
    v38 = AVE_GetCurrTime();
    v39 = AVE_Log_GetLevelStr(7);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d\n", v38, 61, v39, "AVE_Dump_Init", a1, a2, a3, a4, a5, a6, a7, v11, a9, v16, v17, v27);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v40, 61, v41, "AVE_Dump_Init", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %d %d 0x%x 0x%x %p %d %d %d %d %d", v38, 61, v39, "AVE_Dump_Init", a1, a2);
    }
  }

  return v27;
}

uint64_t AVE_Dump_Uninit(const void *a1)
{
  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v2 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", CurrTime, 61, LevelStr, "AVE_Dump_Uninit", a1);
      v5 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 61, v17, "AVE_Dump_Uninit", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", CurrTime, 61, LevelStr, "AVE_Dump_Uninit", a1);
    }
  }

  if (a1)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = 0;
      v9 = v7;
      v10 = a1 + 96 * v6 + 48;
      do
      {
        v11 = *(v10 + v8);
        if (v11)
        {
          fclose(v11);
          *(v10 + v8) = 0;
        }

        v8 += 8;
      }

      while (v8 != 96);
      v7 = 0;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
  }

  if (AVE_Log_CheckLevel(0x3Du, 7))
  {
    v12 = AVE_Log_CheckConsole(0x3Du);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
      v15 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v15, 61, v18, "AVE_Dump_Uninit", a1, 0);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v13, 61, v14, "AVE_Dump_Uninit", a1, 0);
    }
  }

  return 0;
}

uint64_t AVE_Dump_WriteISPMetadata(void *a1, int a2, int a3, double *a4)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v8 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteISPMetadata", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 61);
  }

  if (a1)
  {
    v11 = a1[12 * (a2 > 0) + 8];
    if (v11)
    {
      if (a4)
      {
        if (fprintf(v11, "%5d, %4.6f, %4.6f, %4.6f, %f, %f, %d, %d, %d\n", a3, *a4, a4[1], a4[2], a4[3], a4[4], *(a4 + 16), *(a4 + 17), *(a4 + 18)) <= 0)
        {
          v12 = 4294965296;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 4294966287;
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
      v13 = AVE_Log_CheckConsole(0x3Du);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p\n", v14, 61, v15, "AVE_Dump_WriteISPMetadata", 668, "pDump != __null", 0, a2, a3, a4);
        v16 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v16, 61, v22);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %d %p", v14, 61, v15);
      }
    }

    v12 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v17 = AVE_Log_CheckConsole(0x3Du);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(8);
    if (v17)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v18, 61, v19, "AVE_Dump_WriteISPMetadata", a1, a2, a3, a4, v12);
      v20 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v20, 61, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v18, 61, v19);
    }
  }

  return v12;
}

uint64_t AVE_Dump_WriteRecon(uint64_t a1, __CVBuffer *a2)
{
  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v4 = AVE_Log_CheckConsole(0x3Du);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %p\n", CurrTime, 61, LevelStr, "AVE_Dump_WriteRecon", a1, a2);
      v7 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", v7, 61, v17, "AVE_Dump_WriteRecon", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p", CurrTime, 61, LevelStr, "AVE_Dump_WriteRecon", a1, a2);
    }
  }

  if (a1)
  {
    v8 = *(a1 + 136);
    if (v8)
    {
      if (a2)
      {
        v9 = AVE_PixelBuf_Dump(a2, (*(a1 + 12) >> 11) & 1, v8);
      }

      else
      {
        v9 = 4294966287;
      }
    }

    else
    {
      v9 = 4294966288;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0x3Du, 4))
    {
      v10 = AVE_Log_CheckConsole(0x3Du);
      v11 = AVE_GetCurrTime();
      v12 = AVE_Log_GetLevelStr(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %p\n", v11, 61, v12, "AVE_Dump_WriteRecon", 907, "pDump != __null", 0, a2);
        v11 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %p", v11, 61);
    }

    v9 = 4294966295;
  }

  if (AVE_Log_CheckLevel(0x3Du, 8))
  {
    v13 = AVE_Log_CheckConsole(0x3Du);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %d\n", v14, 61, v15, "AVE_Dump_WriteRecon", a1, a2, v9);
      v14 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %p %d", v14);
  }

  return v9;
}

void AVE_VCP::AVE_VCP(AVE_VCP *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t AVE_VCP::Uninit(AVE_VCP *this)
{
  v2 = *this;
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v3 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v3)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld\n", CurrTime, 19, LevelStr, "AVE_VCP", "Uninit", this, v2);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld", CurrTime);
  }

  kdebug_trace();
  v6 = *(this + 3);
  if (v6)
  {
    if (*(this + 4))
    {
      v7 = dlsym(v6, "VCPAVEContextRelease");
      if (v7)
      {
        v7(*(this + 4));
      }

      else if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v8 = AVE_Log_CheckConsole(0x13u);
        v9 = AVE_GetCurrTime();
        v10 = AVE_Log_GetLevelStr(5);
        v11 = *this;
        v12 = dlerror();
        if (v8)
        {
          printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld | %s\n", v9, 19, v10, "AVE_VCP", "Uninit", 160, this, v11, v12);
          v9 = AVE_GetCurrTime();
          v10 = AVE_Log_GetLevelStr(5);
          v13 = *this;
          dlerror();
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld | %s", v9, 19, v10);
      }
    }

    dlclose(*(this + 3));
  }

  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v14 = AVE_Log_CheckConsole(0x13u);
    v15 = AVE_GetCurrTime();
    v16 = AVE_Log_GetLevelStr(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d\n", v15, 19, v16, "AVE_VCP", "Uninit", this, v2, 0);
      v15 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(6);
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d", v15, 19);
  }

  return 0;
}

void AVE_VCP::~AVE_VCP(AVE_VCP *this)
{
  AVE_VCP::Uninit(this);
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t AVE_VCP::Init(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v10 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(6);
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d\n", CurrTime, 19, LevelStr, "AVE_VCP", "Init", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", v13, 19, v54);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %d %d %d", CurrTime, 19, LevelStr);
    }
  }

  kdebug_trace();
  v14 = AVE_VCP::Init(unsigned long long,_E_AVE_EncType,int,int)::sc_iaEncType[a3];
  v15 = dlopen("/System/Library/PrivateFrameworks/VideoProcessing.framework/VideoProcessing", 1);
  a1[3] = v15;
  if (v15)
  {
    v16 = dlsym(v15, "VCPAVEContextCreate");
    if (v16)
    {
      v17 = v16(v14, a4, a5);
      a1[4] = v17;
      if (!v17 && AVE_Log_CheckLevel(0x13u, 5))
      {
        v18 = AVE_Log_CheckConsole(0x13u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(5);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d VCP context create fail %p %lld %d %d %d\n", v19, 19, v20, "AVE_VCP", "Init", 81, a1, a2, a3, a4, a5);
          v19 = AVE_GetCurrTime();
          v55 = AVE_Log_GetLevelStr(5);
        }

        else
        {
          v55 = v20;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d VCP context create fail %p %lld %d %d %d", v19, 19, v55, "AVE_VCP");
      }
    }

    else if (AVE_Log_CheckLevel(0x13u, 5))
    {
      v25 = AVE_Log_CheckConsole(0x13u);
      v26 = AVE_GetCurrTime();
      v27 = AVE_Log_GetLevelStr(5);
      v28 = dlerror();
      if (v25)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v26, 19, v27, "AVE_VCP", "Init", 73, a1, a2, a3, a4, a5, v28);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v26, 19, v27, "AVE_VCP", "Init");
    }

    v29 = dlsym(a1[3], "VCPCompressionAllocateDPB");
    a1[5] = v29;
    if (!v29 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v30 = AVE_Log_CheckConsole(0x13u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(5);
      v33 = dlerror();
      if (v30)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v31, 19, v32, "AVE_VCP", "Init", 90, a1, a2, a3, a4, a5, v33);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v31, 19, v32, "AVE_VCP", "Init");
    }

    v34 = dlsym(a1[3], "VCPAVEScaleReferenceFrames");
    a1[6] = v34;
    if (!v34 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v35 = AVE_Log_CheckConsole(0x13u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(5);
      v38 = dlerror();
      if (v35)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v36, 19, v37, "AVE_VCP", "Init", 98, a1, a2, a3, a4, a5, v38);
        v36 = AVE_GetCurrTime();
        v37 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v36, 19, v37, "AVE_VCP", "Init");
    }

    v39 = dlsym(a1[3], "VCPAVEExtraInloopChromaFilter");
    a1[7] = v39;
    if (!v39 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v40 = AVE_Log_CheckConsole(0x13u);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(5);
      v43 = dlerror();
      if (v40)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v41, 19, v42, "AVE_VCP", "Init", 106, a1, a2, a3, a4, a5, v43);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v41, 19, v42, "AVE_VCP", "Init");
    }

    v44 = dlsym(a1[3], "VCPAVECalculateFrameChecksum");
    a1[8] = v44;
    if (!v44 && AVE_Log_CheckLevel(0x13u, 5))
    {
      v45 = AVE_Log_CheckConsole(0x13u);
      v46 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(5);
      v48 = dlerror();
      if (v45)
      {
        printf("%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s\n", v46, 19, v47, "AVE_VCP", "Init", 114, a1, a2, a3, a4, a5, v48);
        v46 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(5);
        dlerror();
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to find VCP function %p %lld %d %d %d | %s", v46, 19, v47, "AVE_VCP", "Init");
    }

    *a1 = a2;
    *(a1 + 2) = a3;
    *(a1 + 3) = a4;
    *(a1 + 4) = a5;
    *(a1 + 5) = v14;
  }

  else if (AVE_Log_CheckLevel(0x13u, 5))
  {
    v21 = AVE_Log_CheckConsole(0x13u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(5);
    v24 = dlerror();
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d Unable to open VCP lib %p %lld %d %d %d | %s\n", v22, 19, v23, "AVE_VCP", "Init", 64, a1, a2, a3, a4, a5, v24);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(5);
      dlerror();
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d Unable to open VCP lib %p %lld %d %d %d | %s", v22, 19, v23, "AVE_VCP", "Init");
  }

  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 6))
  {
    v49 = AVE_Log_CheckConsole(0x13u);
    v50 = AVE_GetCurrTime();
    v51 = AVE_Log_GetLevelStr(6);
    if (v49)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d\n", v50, 19, v51, "AVE_VCP", "Init", a1, a2, a3, a4, a5, 0);
      v52 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(6);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v52, 19, v56);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %d %d %d %d", v50, 19, v51);
    }
  }

  return 0;
}

uint64_t AVE_VCP::AllocDPB(AVE_VCP *this, const __CFDictionary *a2, uint64_t a3, const __CFArray **a4)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p 0x%x %p\n", CurrTime, 19, LevelStr, "AVE_VCP", "AllocDPB", this, *this, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v11 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p 0x%x %p", CurrTime, 19, LevelStr, "AVE_VCP");
  }

  v12 = *this;
  kdebug_trace();
  v13 = *(this + 5);
  if (v13)
  {
    v14 = v13(a2, *(this + 5), *(this + 3), *(this + 4), a3);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v16 = AVE_Log_CheckConsole(0x13u);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(5);
        v19 = *(this + 4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to allocate DPB %p %lld %p %d %d %d 0x%x\n", v17, 19, v18, "AVE_VCP", "AllocDPB", 204, this, *this, a2, *(this + 5), *(this + 3), *(this + 4), a3);
          v17 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(5);
          v31 = *(this + 4);
          v29 = *(this + 5);
          v30 = *(this + 3);
          v28 = *this;
        }

        else
        {
          v32 = *(this + 4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d fail to allocate DPB %p %lld %p %d %d %d 0x%x", v17, 19, v18, "AVE_VCP", "AllocDPB");
      }

      v14 = 0;
      v15 = 4294966293;
    }
  }

  else
  {
    v14 = 0;
    v15 = 4294966294;
  }

  *a4 = v14;
  v20 = *this;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v21 = AVE_Log_CheckConsole(0x13u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(8);
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d\n", v22, 19, v23, "AVE_VCP", "AllocDPB", this, *this, a2, a3, a4, v15);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(8);
      v27 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d", v24, 19, v25, "AVE_VCP", "AllocDPB");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p 0x%x %p %d", v22, 19, v23, "AVE_VCP", "AllocDPB");
    }
  }

  return v15;
}

uint64_t AVE_VCP::ScaleRefFrames(AVE_VCP *this, const __CFDictionary *a2, const __CFArray *a3)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v6 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p\n", CurrTime, 19, LevelStr, "AVE_VCP", "ScaleRefFrames", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p", CurrTime, 19, LevelStr);
  }

  v10 = *this;
  kdebug_trace();
  v11 = *(this + 6);
  if (v11 && (v12 = *(this + 4)) != 0)
  {
    v13 = v11(v12, a2, a3);
    if (AVE_Log_CheckLevel(0x13u, 8))
    {
      v14 = AVE_Log_CheckConsole(0x13u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(8);
      if (v14)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %p %d\n", v15, 19, v16, "AVE_VCP", "ScaleRefFrames", 243, this, *this, *(this + 4), a2, a3, v13);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(8);
        v17 = *this;
        v30 = *(this + 4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %p %d", v15, 19, v16, "AVE_VCP", "ScaleRefFrames", 243);
    }

    if (v13)
    {
      if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v18 = AVE_Log_CheckConsole(0x13u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(5);
        if (v18)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d\n", v19, 19, v20, "AVE_VCP", "ScaleRefFrames", 249, this, *this, *(this + 4), a2, a3, v13);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(5);
          v31 = *(this + 4);
          v29 = *this;
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d", v21, 19, v22, "AVE_VCP", "ScaleRefFrames", 249);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to scale ref frame %p %lld %p %p %p %d", v19, 19, v20, "AVE_VCP", "ScaleRefFrames", 249);
        }
      }

      v13 = 4294966296;
    }
  }

  else
  {
    v13 = 4294966294;
  }

  v23 = *this;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v24 = AVE_Log_CheckConsole(0x13u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(8);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d\n", v25, 19, v26, "AVE_VCP", "ScaleRefFrames", this, *this, a2, a3, v13);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(8);
      v27 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d", v25, 19, v26, "AVE_VCP");
  }

  return v13;
}

uint64_t AVE_VCP::ChromaFilter(AVE_VCP *this, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %d\n", CurrTime, 19, LevelStr, "AVE_VCP", "ChromaFilter", this, *this, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v11 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %d", CurrTime, 19, LevelStr, "AVE_VCP");
  }

  v12 = *this;
  kdebug_trace();
  v13 = *(this + 7);
  if (v13 && (v14 = *(this + 4)) != 0)
  {
    v15 = v13(v14, a2, a3, a4);
    if (AVE_Log_CheckLevel(0x13u, 8))
    {
      v16 = AVE_Log_CheckConsole(0x13u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(8);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %d %d\n", v17, 19, v18, "AVE_VCP", "ChromaFilter", 287, this, *this, *(this + 4), a2, a3, a4, v15);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(8);
        v32 = *this;
        v34 = *(this + 4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %d %d", v17, 19, v18, "AVE_VCP", "ChromaFilter", 287);
    }

    if (v15)
    {
      if (AVE_Log_CheckLevel(0x13u, 5))
      {
        v19 = AVE_Log_CheckConsole(0x13u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(5);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d\n", v20, 19, v21, "AVE_VCP", "ChromaFilter", 293, this, *this, *(this + 4), a2, a3, a4, v15);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(5);
          v33 = *this;
          v35 = *(this + 4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d", v22, 19, v23, "AVE_VCP", "ChromaFilter", 293);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d fail to filter chroma %p %lld %p %p %lld %d %d", v20, 19, v21, "AVE_VCP", "ChromaFilter", 293);
        }
      }

      v15 = 4294966296;
    }
  }

  else
  {
    v15 = 4294966294;
  }

  v24 = *this;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v25 = AVE_Log_CheckConsole(0x13u);
    v26 = AVE_GetCurrTime();
    v27 = AVE_Log_GetLevelStr(8);
    if (v25)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d\n", v26, 19, v27, "AVE_VCP", "ChromaFilter", this, *this, a2, a3, a4);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(8);
      v30 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d", v28, 19, v29, "AVE_VCP");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %d", v26, 19, v27, "AVE_VCP");
    }
  }

  return v15;
}

uint64_t AVE_VCP::CalcChecksum(AVE_VCP *this, const __CFDictionary *a2, uint64_t a3, __CFDictionary *a4)
{
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v8 = AVE_Log_CheckConsole(0x13u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %p\n", CurrTime, 19, LevelStr, "AVE_VCP", "CalcChecksum", this, *this, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v11 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %lld %p", CurrTime, 19, LevelStr, "AVE_VCP");
  }

  v12 = *this;
  kdebug_trace();
  if (*(this + 8) && *(this + 4))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v14 = Mutable;
      v15 = (*(this + 8))(*(this + 4), a2, a3, 1, Mutable);
      if (AVE_Log_CheckLevel(0x13u, 8))
      {
        v16 = AVE_Log_CheckConsole(0x13u);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(8);
        if (v16)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %p %d\n", v17, 19, v18, "AVE_VCP", "CalcChecksum", 338, this, *this, *(this + 4), a2, a3, v14, v15);
          v17 = AVE_GetCurrTime();
          v18 = AVE_Log_GetLevelStr(8);
          v33 = *this;
          v35 = *(this + 4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld %p %p %lld %p %d", v17, 19, v18, "AVE_VCP", "CalcChecksum", 338, this);
      }

      if (v15)
      {
        if (AVE_Log_CheckLevel(0x13u, 5))
        {
          v22 = AVE_Log_CheckConsole(0x13u);
          v23 = AVE_GetCurrTime();
          v24 = AVE_Log_GetLevelStr(5);
          if (v22)
          {
            printf("%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d\n", v23, 19, v24, "AVE_VCP", "CalcChecksum", 345, this, *this, *(this + 4), a2, a3, v14, v15);
            v25 = AVE_GetCurrTime();
            v26 = AVE_Log_GetLevelStr(5);
            v34 = *this;
            v36 = *(this + 4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d", v25, 19, v26, "AVE_VCP", "CalcChecksum", 345, this);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d fail to calculate checksum %p %lld %p %p %lld %p %d", v23, 19, v24, "AVE_VCP", "CalcChecksum", 345, this);
          }
        }

        v15 = 4294966296;
      }

      else
      {
        CFDictionaryApplyFunction(v14, AVE_VCP::CalcChecksum(__CFDictionary const*,long long,__CFDictionary*)::$_0::__invoke, a4);
      }

      CFRelease(v14);
    }

    else
    {
      if (AVE_Log_CheckLevel(0x13u, 4))
      {
        v19 = AVE_Log_CheckConsole(0x13u);
        v20 = AVE_GetCurrTime();
        v21 = AVE_Log_GetLevelStr(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary\n", v20, 19, v21, "AVE_VCP", "CalcChecksum", 334, "pDict != __null");
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary", v20);
      }

      v15 = 4294966293;
    }
  }

  else
  {
    v15 = 4294966294;
  }

  v27 = *this;
  kdebug_trace();
  if (AVE_Log_CheckLevel(0x13u, 8))
  {
    v28 = AVE_Log_CheckConsole(0x13u);
    v29 = AVE_GetCurrTime();
    v30 = AVE_Log_GetLevelStr(8);
    if (v28)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %p %d\n", v29, 19, v30, "AVE_VCP", "CalcChecksum", this, *this, a2, a3, a4, v15);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(8);
      v31 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %lld %p %d", v29, 19, v30, "AVE_VCP", "CalcChecksum");
  }

  return v15;
}

uint64_t HEVC_FindProfileIdc(int a1)
{
  if ((a1 - 1) < 0xA)
  {
    return gsc_saHEVC_Profiles[6 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "HEVC_FindProfileIdc", 101, "(HEVC_Profile_Invalid < eProfile) && (eProfile < HEVC_Profile_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t HEVC_FindTierFlag(int a1)
{
  if ((a1 - 1) < 2)
  {
    return gsc_saHEVC_Tiers[4 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "HEVC_FindTierFlag", 211, "(HEVC_Tier_Invalid < eTier) && (eTier < HEVC_Tier_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t HEVC_FindLevelIdc(int a1)
{
  if ((a1 - 1) < 0x12)
  {
    return gsc_saHEVC_LevelLimits[12 * (a1 - 1) + 1];
  }

  result = AVE_Log_CheckLevel(0xD1u, 4);
  if (result)
  {
    v3 = AVE_Log_CheckConsole(0xD1u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(4);
    if (v3)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameter %d\n", CurrTime, 209, LevelStr, "HEVC_FindLevelIdc", 378, "(HEVC_Level_Invalid < eLevel) && (eLevel < HEVC_Level_Max)", a1);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %d", CurrTime);
    return 0;
  }

  return result;
}

uint64_t AVE_PixelFmt_AddAll(const unsigned int *a1, int a2, __CFArray *a3)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = a2;
  while (1)
  {
    v6 = *a1++;
    result = AVE_CFArray_AddSInt32(v6, a3);
    if (result)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t AVE_DevCap_FindResolution(int a1, int a2, int a3)
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
    return *(v3 + 24);
  }

  return v3;
}

uint64_t AVE_DevCap_FindSearchRange(int a1, int a2, int a3)
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
    return *(v3 + 40);
  }

  return v3;
}

uint64_t AVE_DevCap_FindPerf(int a1, int a2, int a3)
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
    return *(v3 + 48);
  }

  return v3;
}

uint64_t AVE_DevCap_FindThroughput(int a1, int a2, int a3)
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
    return *(v3 + 56);
  }

  return v3;
}

float AVE_MultiPass::histogram_diff(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = 0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = *(a2 + 16 + v3);
    *&v8 = v7;
    v4 += v7;
    LODWORD(v8) = *(a3 + 16 + v3);
    v6 = v6 + v7 - v8;
    v9 = -v6;
    if (v6 >= 0.0)
    {
      v9 = v6;
    }

    v5 = v5 + v9;
    v3 += 4;
  }

  while (v3 != 1024);
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d\n", CurrTime, 216, LevelStr, v5, v4);
      v13 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d", v13, 216, v15, v5, v4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: histogram_diff() hdiff %lf sum_a %d", CurrTime, 216, LevelStr, v5, v4);
    }
  }

  return v5 / v4;
}

BOOL AVE_MultiPass::scene_change_detect(AVE_MultiPass *this, float a2, float a3, float a4, float a5)
{
  v5 = a3;
  v6 = a4;
  if (v5 <= 0.00272072)
  {
    v10 = a5 <= 0.96605313 && v6 > 1.34009841;
  }

  else
  {
    v7 = a2;
    if (v7 <= 71.5876885)
    {
      v8 = v7 > 26.7539587;
      v9 = 23.2484817;
    }

    else
    {
      v8 = v5 <= 0.03005953;
      v9 = 4.51769352;
    }

    v10 = v6 > v9 && v8;
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v11 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v11)
    {
      printf("%lld %d AVE %s: MP: scene_change_detect() returns %d\n", CurrTime, 216, LevelStr, v10);
      v14 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_detect() returns %d", v14, 216, v16, v10);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_detect() returns %d", CurrTime, 216, LevelStr, v10);
    }
  }

  return v10;
}

void AVE_MultiPass::accumulate_scene_info(uint64_t a1, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v7 = *(a2 + 44);
    if (v4)
    {
      printf("%lld %d AVE %s: MP: accumulate_scene_info() display_order %d\n", CurrTime, 216, LevelStr, v7);
      v8 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: accumulate_scene_info() display_order %d", v8, 216, v31, *(a2 + 44));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: accumulate_scene_info() display_order %d", CurrTime, 216, LevelStr, v7);
    }
  }

  if (*(a2 + 44) != -1)
  {
    v9 = *(a1 + 25500) + 1;
    *(a1 + 25500) = v9;
    if (*(a2 + 1200))
    {
      ++*(a1 + 25496);
    }

    v10 = *(a2 + 64);
    *(a1 + 25504) += v10;
    if (*(a2 + 52) == 2)
    {
      *(a1 + 25516) += v10;
      ++*(a1 + 25512);
      v11 = *(a2 + 1556);
      *(a1 + 25576) = *(a1 + 25576) + v11;
    }

    else
    {
      v11 = *(a2 + 1556);
    }

    v12 = (a2 + 1220);
    v13 = *(a1 + 25760) + v11;
    *(a1 + 25760) = v13;
    *&v13 = v13 / v9;
    *(a1 + 25572) = LODWORD(v13);
    *(a1 + 25584) = vaddq_f64(*(a1 + 25584), vcvtq_f64_f32(*(a2 + 1560)));
    v14 = (a2 + 1460);
    v15 = (a1 + 25664);
    v16 = 16;
    v17 = (a2 + 1460);
    do
    {
      *(v15 - 16) += *(v17 - 16);
      v18 = *v17++;
      *v15 = v18 + *v15;
      ++v15;
      --v16;
    }

    while (v16);
    v19 = *(a2 + 1572);
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        *(a1 + 25552) += *(a2 + 64);
        ++*(a1 + 25548);
      }

      else if (v19 == 3)
      {
        *(a1 + 25564) += *(a2 + 64);
        ++*(a1 + 25560);
      }
    }

    else if (*(a2 + 1572))
    {
      if (v19 == 1)
      {
        *(a1 + 25540) += *(a2 + 64);
        ++*(a1 + 25536);
      }
    }

    else
    {
      *(a1 + 25528) += *(a2 + 64);
      ++*(a1 + 25524);
    }

    if (!*(a2 + 1200))
    {
      v20 = *(a1 + 25488);
      v21 = *(v20 + 1220);
      v22 = vadd_s32(v21, *v12);
      *(v20 + 1216) = ((*(a2 + 1216) * v12->u32[0]) + (*(v20 + 1216) * v21.u32[0])) / v22.u32[0];
      *(v20 + 1220) = v22;
      *(v20 + 1228) = vaddq_s64(*(v20 + 1228), *(a2 + 1228));
      *(v20 + 1244) = vaddq_s64(*(v20 + 1244), *(a2 + 1244));
      *(v20 + 1260) += *(a2 + 1260);
      *(v20 + 1268) = vaddq_f64(*(a2 + 1268), *(v20 + 1268));
      v23 = *(a2 + 1284);
      if (v23 >= *(v20 + 1284))
      {
        v23 = *(v20 + 1284);
      }

      *(v20 + 1284) = v23;
      v24 = *(v20 + 1288);
      if (v24 < *(a2 + 1288))
      {
        v24 = *(a2 + 1288);
      }

      *(v20 + 1288) = v24;
      *(v20 + 1292) += *(a2 + 1292);
      v25 = vaddq_s64(*(v20 + 1316), *(a2 + 1316));
      *(v20 + 1300) = vaddq_s32(*(v20 + 1300), *(a2 + 1300));
      *(v20 + 1316) = v25;
      v26 = vaddq_f64(*(a2 + 1348), *(v20 + 1348));
      *(v20 + 1332) = vaddq_s64(*(v20 + 1332), *(a2 + 1332));
      *(v20 + 1348) = v26;
      v27 = vaddq_f64(*(v20 + 1380), vcvtq_f64_f32(*(a2 + 1560)));
      *(v20 + 1364) = vaddq_f64(*(a2 + 1364), *(v20 + 1364));
      *(v20 + 1380) = v27;
      v28 = (v20 + 1460);
      v29 = 16;
      do
      {
        *(v28 - 16) += *(v14 - 16);
        v30 = *v14++;
        *v28 = v30 + *v28;
        ++v28;
        --v29;
      }

      while (v29);
    }

    AVE_MultiPass::print_sc_info(a1);
  }
}

void AVE_MultiPass::print_sc_info(AVE_MultiPass *this)
{
  v2 = this + 24576;
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v3 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: MP: seq_rc_info()\n", CurrTime, 216, LevelStr);
      v6 = AVE_GetCurrTime();
      v74 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: seq_rc_info()", v6, 216, v74);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: seq_rc_info()", CurrTime, 216, LevelStr);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v7 = AVE_Log_CheckConsole(0xD8u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(7);
    v10 = *(v2 + 230);
    if (v7)
    {
      printf("%lld %d AVE %s:  total_scenes %u\n", v8, 216, v9, v10);
      v11 = AVE_GetCurrTime();
      v75 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v11, 216, v75, *(v2 + 230));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v8, 216, v9, v10);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD8u);
    v13 = AVE_GetCurrTime();
    v14 = AVE_Log_GetLevelStr(7);
    v15 = *(v2 + 231);
    if (v12)
    {
      printf("%lld %d AVE %s:  cnt_All %u\n", v13, 216, v14, v15);
      v16 = AVE_GetCurrTime();
      v76 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v16, 216, v76, *(v2 + 231));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v13, 216, v14, v15);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v17 = AVE_Log_CheckConsole(0xD8u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(7);
    v20 = *(this + 3188);
    if (v17)
    {
      printf("%lld %d AVE %s:  bits_All %llu\n", v18, 216, v19, v20);
      v21 = AVE_GetCurrTime();
      v77 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v21, 216, v77, *(this + 3188));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v18, 216, v19, v20);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v22 = AVE_Log_CheckConsole(0xD8u);
    v23 = AVE_GetCurrTime();
    v24 = AVE_Log_GetLevelStr(7);
    v25 = *(v2 + 237);
    if (v22)
    {
      printf("%lld %d AVE %s:  cnt_NORMAL %u\n", v23, 216, v24, v25);
      v26 = AVE_GetCurrTime();
      v78 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v26, 216, v78, *(v2 + 237));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v23, 216, v24, v25);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v27 = AVE_Log_CheckConsole(0xD8u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(7);
    v30 = *(this + 3191);
    if (v27)
    {
      printf("%lld %d AVE %s:  bits_NORMAL %llu\n", v28, 216, v29, v30);
      v31 = AVE_GetCurrTime();
      v79 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v31, 216, v79, *(this + 3191));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v28, 216, v29, v30);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v32 = AVE_Log_CheckConsole(0xD8u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(7);
    v35 = *(v2 + 240);
    if (v32)
    {
      printf("%lld %d AVE %s:  cnt_MIN %u\n", v33, 216, v34, v35);
      v36 = AVE_GetCurrTime();
      v80 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v36, 216, v80, *(v2 + 240));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v33, 216, v34, v35);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v37 = AVE_Log_CheckConsole(0xD8u);
    v38 = AVE_GetCurrTime();
    v39 = AVE_Log_GetLevelStr(7);
    v40 = *(v2 + 964);
    if (v37)
    {
      printf("%lld %d AVE %s:  bits_MIN %llu\n", v38, 216, v39, v40);
      v41 = AVE_GetCurrTime();
      v81 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v41, 216, v81, *(v2 + 964));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v38, 216, v39, v40);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v42 = AVE_Log_CheckConsole(0xD8u);
    v43 = AVE_GetCurrTime();
    v44 = AVE_Log_GetLevelStr(7);
    v45 = *(v2 + 243);
    if (v42)
    {
      printf("%lld %d AVE %s:  cnt_MAX %u\n", v43, 216, v44, v45);
      v46 = AVE_GetCurrTime();
      v82 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v46, 216, v82, *(v2 + 243));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v43, 216, v44, v45);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v47 = AVE_Log_CheckConsole(0xD8u);
    v48 = AVE_GetCurrTime();
    v49 = AVE_Log_GetLevelStr(7);
    v50 = *(this + 3194);
    if (v47)
    {
      printf("%lld %d AVE %s:  bits_MAX %llu\n", v48, 216, v49, v50);
      v51 = AVE_GetCurrTime();
      v83 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v51, 216, v83, *(this + 3194));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v48, 216, v49, v50);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v52 = AVE_Log_CheckConsole(0xD8u);
    v53 = AVE_GetCurrTime();
    v54 = AVE_Log_GetLevelStr(7);
    v55 = *(v2 + 246);
    if (v52)
    {
      printf("%lld %d AVE %s:  cnt_BLANK %u\n", v53, 216, v54, v55);
      v56 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v56, 216, v84, *(v2 + 246));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v53, 216, v54, v55);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v57 = AVE_Log_CheckConsole(0xD8u);
    v58 = AVE_GetCurrTime();
    v59 = AVE_Log_GetLevelStr(7);
    v60 = *(v2 + 988);
    if (v57)
    {
      printf("%lld %d AVE %s:  bits_BLANK %llu\n", v58, 216, v59, v60);
      v61 = AVE_GetCurrTime();
      v85 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s:  bits_BLANK %llu", v61, 216, v85, *(v2 + 988));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_BLANK %llu", v58, 216, v59, v60);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v62 = AVE_Log_CheckConsole(0xD8u);
    v63 = AVE_GetCurrTime();
    v64 = AVE_Log_GetLevelStr(7);
    v65 = *(v2 + 249);
    if (v62)
    {
      printf("%lld %d AVE %s:  avg_qscale %f\n", v63, 216, v64, *(v2 + 249));
      v63 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s:  avg_qscale %f", v63, 216, v64, *(v2 + 249));
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v66 = AVE_Log_CheckConsole(0xD8u);
    v67 = AVE_GetCurrTime();
    v68 = AVE_Log_GetLevelStr(7);
    v69 = *(this + 3198);
    if (v66)
    {
      printf("%lld %d AVE %s:  current_complexity %lf\n", v67, 216, v68, *(this + 3198));
      v67 = AVE_GetCurrTime();
      v68 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s:  current_complexity %lf", v67, 216, v68, *(this + 3198));
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v70 = AVE_Log_CheckConsole(0xD8u);
    v71 = AVE_GetCurrTime();
    v72 = AVE_Log_GetLevelStr(7);
    v73 = *(this + 3199);
    if (v70)
    {
      printf("%lld %d AVE %s:  totalcplxsum %lf\n", v71, 216, v72, *(this + 3199));
      v71 = AVE_GetCurrTime();
      v72 = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s:  totalcplxsum %lf", v71, 216, v72, *(this + 3199));
  }
}

_DWORD *AVE_MultiPass::scene_change_pipeline(uint64_t a1, _DWORD *a2)
{
  v60 = a2;
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      if (a2)
      {
        v7 = a2[11];
      }

      else
      {
        v7 = -1;
      }

      printf("%lld %d AVE %s: MP: scene_change_pipeline() Entry stats %p display_order %d\n", CurrTime, 216, LevelStr, a2, v7);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else if (!a2)
    {
LABEL_9:
      v8 = -1;
      goto LABEL_10;
    }

    v8 = a2[11];
LABEL_10:
    syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() Entry stats %p display_order %d", CurrTime, 216, LevelStr, a2, v8);
  }

  if (!*(a1 + 25488))
  {
    v9 = v60;
    v60[300] = 1;
    *(a1 + 25488) = v9;
    std::deque<_S_AVE_MultiPassStats *>::push_back((a1 + 25432), (a1 + 25488));
  }

  v10 = std::deque<_S_AVE_MultiPassStats *>::push_back((a1 + 25384), &v60);
  v11 = *(a1 + 25424);
  v12 = v60;
  if (v11 <= 1)
  {
    *(v60 + 151) = 0;
LABEL_19:
    v60 = 0;
    goto LABEL_20;
  }

  v13 = v11 - 2;
  v14 = *(a1 + 25416);
  v15 = v14 + v11 - 2;
  v16 = *(a1 + 25392);
  v17 = v15 >> 9;
  v18 = *(v16 + 8 * (v15 >> 9));
  v19 = v15 & 0x1FF;
  v20 = *(v18 + 8 * v19);
  if (v60[11] == -1)
  {
    v22 = *(v20 + 1208);
  }

  else
  {
    v21 = *(v60 + 304) + *(v20 + 1216);
    if (v21 < 1.0)
    {
      v21 = 1.0;
    }

    v22 = fmaxf(AVE_MultiPass::histogram_diff(v10, (v60 + 40), v20 + 160) / (v21 * 0.0019531), 0.01);
    v14 = *(a1 + 25416);
    v16 = *(a1 + 25392);
    v12 = v60;
    v17 = (v14 + v13) >> 9;
    v19 = (v14 + v13) & 0x1FF;
  }

  v28 = *(*(*(v16 + 8 * v17) + 8 * v19) + 1208);
  if (v22 >= v28)
  {
    v28 = v22;
  }

  v12[302] = v22;
  v12[303] = v28;
  if (v11 < 4)
  {
    if (v11 == 2)
    {
      v38 = *(*(v16 + ((v14 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v14 & 0x1FF));
      *(v38 + 1208) = *(*(*(v16 + (((v14 + 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v14 + 1) & 0x1FF)) + 1208);
      AVE_MultiPass::accumulate_scene_info(a1, v38);
    }

    goto LABEL_19;
  }

  v29 = v11 + v14;
  v30 = *(*(v16 + (((v29 - 3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 3) & 0x1FF));
  v59 = v30;
  v31 = *(*(*(v16 + (((v29 - 4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 4) & 0x1FF)) + 1212);
  v32 = *(v30 + 1208);
  v33 = *(*(*(v16 + (((v29 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v29 - 1) & 0x1FF)) + 1212);
  v34 = v32 / v31;
  v35 = v33 / v32;
  v36 = (v33 / v32) / (v32 / v31);
  if (*(v12 + 11) == -1 || *(v30 + 44) < 3u)
  {
    *(v30 + 1200) = *(v30 + 80) & 1;
    AVE_MultiPass::accumulate_scene_info(a1, v30);
    *(v30 + 1200) |= *(v30 + 44) == -1;
  }

  else
  {
    v37 = *(v30 + 36);
    *(v30 + 1200) = 0;
    if ((*(v30 + 80) & 1) != 0 || AVE_MultiPass::scene_change_detect(v10, v32, (v33 / v32) / (v32 / v31), v32 / v31, v33 / v32) || *(*(a1 + 25488) + 1220) >= ((v37 * 6.0) + 0.5))
    {
      *(v30 + 1200) = 1;
    }

    AVE_MultiPass::accumulate_scene_info(a1, v30);
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v39 = AVE_Log_CheckConsole(0xD8u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(7);
    v42 = *(v30 + 44);
    v43 = *(v30 + 80) & 1;
    v44 = *(v30 + 1200);
    if (v39)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d\n", v40, 216, v41, v42, *(v30 + 80) & 1, v44);
      v45 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d", v45, 216, v46, *(v30 + 44), *(v30 + 80) & 1, *(v30 + 1200));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() display_order %d forceKeyFrame %d scene_change %d", v40, 216, v41, v42, *(v30 + 80) & 1, v44);
    }
  }

  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v47 = AVE_Log_CheckConsole(0xD8u);
    v48 = AVE_GetCurrTime();
    v49 = AVE_Log_GetLevelStr(7);
    v50 = v31;
    v51 = v32;
    v52 = v33;
    v53 = v36;
    v54 = v34;
    v55 = v35;
    if (v47)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() m0 %f m1 %f m2 %f m0m2 %f mdpa_ratio_p %f mdpa_ratio_n %f\n", v48, 216, v49, v50, v51, v52, v53, v54, v55);
      AVE_GetCurrTime();
      AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() m0 %f m1 %f m2 %f m0m2 %f mdpa_ratio_p %f mdpa_ratio_n %f");
  }

  if (*(v30 + 1200))
  {
    std::deque<_S_AVE_MultiPassStats *>::push_back((a1 + 25432), &v59);
    *(a1 + 25488) = v59;
  }

  v56 = vaddq_s64(*(a1 + 25416), xmmword_2954F15C0);
  v60 = *(*(*(a1 + 25392) + ((*(a1 + 25416) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 25416) & 0x1FFLL));
  *(a1 + 25416) = v56;
  std::deque<_S_AVE_MultiPassStats *>::__maybe_remove_front_spare[abi:ne200100](a1 + 25384, 1);
  if (v60[300])
  {
    v60 = 0;
    v57 = *(a1 + 25464);
    if (*(*(*(a1 + 25440) + ((v57 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v57 & 0x1FF)) != *(a1 + 25488))
    {
      v60 = *(*(*(a1 + 25440) + ((*(a1 + 25464) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 25464) & 0x1FFLL));
      --*(a1 + 25472);
      *(a1 + 25464) = v57 + 1;
      std::deque<_S_AVE_MultiPassStats *>::__maybe_remove_front_spare[abi:ne200100](a1 + 25432, 1);
    }
  }

LABEL_20:
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v23 = AVE_Log_CheckConsole(0xD8u);
    v24 = AVE_GetCurrTime();
    v25 = AVE_Log_GetLevelStr(7);
    if (v23)
    {
      printf("%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p\n", v24, 216, v25, v60);
      v26 = AVE_GetCurrTime();
      v58 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p", v26, 216, v58, v60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: scene_change_pipeline() returns stats %p", v24, 216, v25, v60);
    }
  }

  return v60;
}

void *std::deque<_S_AVE_MultiPassStats *>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<_S_AVE_MultiPassStats *>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void AVE_MultiPass::fixup_frame_bits(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (AVE_Log_CheckLevel(0xD8u, 7))
    {
      v5 = AVE_Log_CheckConsole(0xD8u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v8 = *(a2 + 44);
      v9 = *(a2 + 64);
      if (v5)
      {
        printf("%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d\n", CurrTime, 216, LevelStr, v8, *(a2 + 64), a3);
        v10 = AVE_GetCurrTime();
        v11 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d", v10, 216, v11, *(a2 + 44), *(a2 + 64), a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: MP: F %d frame_bits %u correction_bits %d", CurrTime, 216, LevelStr, v8, *(a2 + 64), a3);
      }
    }

    if (a3)
    {
      v12 = *(a2 + 64);
      if (v12 + a3 >= 1)
      {
        v13 = *(a2 + 68) * a3 / v12;
        if (AVE_Log_CheckLevel(0xD8u, 7))
        {
          v14 = AVE_Log_CheckConsole(0xD8u);
          v15 = AVE_GetCurrTime();
          v16 = AVE_Log_GetLevelStr(7);
          v17 = *(a2 + 44);
          v18 = *(a2 + 68);
          if (v14)
          {
            printf("%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d\n", v15, 216, v16, v17, *(a2 + 68), v13);
            v19 = AVE_GetCurrTime();
            v20 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d", v19, 216, v20, *(a2 + 44), *(a2 + 68), v13);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: MP: F %d hdr_bits %u hdr_correction %d", v15, 216, v16, v17, *(a2 + 68), v13);
          }
        }

        v21 = *(a2 + 68);
        v22 = *(a2 + 64) + a3;
        *(a2 + 1228) += a3;
        *(a2 + 1244) += v13;
        *(a2 + 64) = v22;
        *(a2 + 68) = v21 + v13;
        v23 = *(a2 + 52);
        if (v23 == 2)
        {
          v24 = 1252;
        }

        else
        {
          if (v23)
          {
LABEL_17:
            v25 = *(a2 + 1316);
            if (v25)
            {
              *(a2 + 1316) = v25 + a3;
            }

            v26 = *(a2 + 1324);
            if (v26)
            {
              *(a2 + 1324) = v26 + a3;
            }

            v27 = *(a2 + 1332);
            if (v27)
            {
              *(a2 + 1332) = v27 + a3;
            }

            v28 = *(a2 + 1340);
            if (v28)
            {
              *(a2 + 1340) = v28 + a3;
            }

            return;
          }

          v24 = 1260;
        }

        *(a2 + v24) += v13;
        goto LABEL_17;
      }
    }
  }
}

const void *AVE_MultiPass::enqueue_first_pass(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = (a1 + 3072);
  v7 = AVE_Log_CheckLevel(0xD8u, 7);
  if (v7)
  {
    v8 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      if (a2)
      {
        v11 = *(a2 + 44);
      }

      else
      {
        v11 = -1;
      }

      printf("%lld %d AVE %s: MP: enqueue_first_pass() display_order %d flush %d fixup_fifo_len %d\n", CurrTime, 216, LevelStr, v11, a3, v6[192]);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else if (!a2)
    {
LABEL_9:
      v12 = -1;
      goto LABEL_10;
    }

    v12 = *(a2 + 44);
LABEL_10:
    syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() display_order %d flush %d fixup_fifo_len %d", CurrTime, 216, LevelStr, v12, a3, v6[192]);
  }

  v13 = v6[192];
  if ((a3 & 1) == 0)
  {
    if (v13 != 2)
    {
      if (v13 == 1)
      {
        v17 = 0;
        a1[(v6[193] == 0) + 3166] = a2;
        v18 = 2;
      }

      else
      {
        if (v13)
        {
          goto LABEL_66;
        }

        v17 = 0;
        a1[v6[193] + 3166] = a2;
        v18 = 1;
      }

      v6[192] = v18;
      goto LABEL_80;
    }

LABEL_21:
    v19 = a1 + 3166;
    AVE_MultiPass::fixup_frame_bits(v7, a1[v6[193] + 3166], *(a2 + 72));
    v20 = v6[193];
    v21 = a1[3170];
    v22 = a1[3171];
    if (v21 >= v22)
    {
      v29 = a1[3169];
      v30 = (v21 - v29) >> 3;
      if ((v30 + 1) >> 61)
      {
        goto LABEL_85;
      }

      v31 = v22 - v29;
      v32 = v31 >> 2;
      if (v31 >> 2 <= (v30 + 1))
      {
        v32 = v30 + 1;
      }

      if (v31 >= 0x7FFFFFFFFFFFFFF8)
      {
        v33 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v32;
      }

      if (v33)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats *>>((a1 + 3169), v33);
      }

      v44 = (8 * v30);
      *v44 = v19[v20];
      v23 = 8 * v30 + 8;
      v45 = a1[3169];
      v46 = a1[3170] - v45;
      v47 = v44 - v46;
      memcpy(v44 - v46, v45, v46);
      v48 = a1[3169];
      a1[3169] = v47;
      a1[3170] = v23;
      a1[3171] = 0;
      if (v48)
      {
        operator delete(v48);
      }
    }

    else
    {
      *v21 = v19[v20];
      v23 = (v21 + 1);
    }

    a1[3170] = v23;
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(a1[3169], v23, &v82, (v23 - a1[3169]) >> 3);
    if (a3)
    {
      --v6[192];
      v6[193] = v6[193] == 0;
    }

    else
    {
      v49 = v6[193] == 0;
      v19[v6[193]] = a2;
      v6[193] = v49;
    }

    goto LABEL_66;
  }

  if (v13 == 2)
  {
    goto LABEL_21;
  }

  if (v13 == 1)
  {
    v24 = a1 + 3166;
    v25 = v6[193];
    v26 = a1[3170];
    v27 = a1[3171];
    if (v26 >= v27)
    {
      v34 = a1[3169];
      v35 = (v26 - v34) >> 3;
      if ((v35 + 1) >> 61)
      {
        goto LABEL_85;
      }

      v36 = v27 - v34;
      v37 = v36 >> 2;
      if (v36 >> 2 <= (v35 + 1))
      {
        v37 = v35 + 1;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v38 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v37;
      }

      if (v38)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats *>>((a1 + 3169), v38);
      }

      v50 = (8 * v35);
      *v50 = v24[v25];
      v28 = 8 * v35 + 8;
      v51 = a1[3169];
      v52 = a1[3170] - v51;
      v53 = v50 - v52;
      memcpy(v50 - v52, v51, v52);
      v54 = a1[3169];
      a1[3169] = v53;
      a1[3170] = v28;
      a1[3171] = 0;
      if (v54)
      {
        operator delete(v54);
      }
    }

    else
    {
      *v26 = v24[v25];
      v28 = (v26 + 1);
    }

    a1[3170] = v28;
    std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(a1[3169], v28, &v81, (v28 - a1[3169]) >> 3);
    --v6[192];
    v6[193] = v6[193] == 0;
    if (a2)
    {
      v55 = v6[186];
      a1[v55 + 3149] = a2;
      if (v55 < 0x10)
      {
        v56 = v55 + 1;
      }

      else
      {
        v56 = 16;
      }

      v6[186] = v56;
    }

    goto LABEL_66;
  }

  if (v13)
  {
    goto LABEL_66;
  }

  v14 = a1[3170];
  v15 = a1[3171];
  if (v14 >= v15)
  {
    v39 = a1[3169];
    v40 = (v14 - v39) >> 3;
    if (!((v40 + 1) >> 61))
    {
      v41 = v15 - v39;
      v42 = v41 >> 2;
      if (v41 >> 2 <= (v40 + 1))
      {
        v42 = v40 + 1;
      }

      if (v41 >= 0x7FFFFFFFFFFFFFF8)
      {
        v43 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v42;
      }

      if (v43)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats *>>((a1 + 3169), v43);
      }

      v57 = (8 * v40);
      *v57 = a2;
      v16 = 8 * v40 + 8;
      v58 = a1[3169];
      v59 = a1[3170] - v58;
      v60 = v57 - v59;
      memcpy(v57 - v59, v58, v59);
      v61 = a1[3169];
      a1[3169] = v60;
      a1[3170] = v16;
      a1[3171] = 0;
      if (v61)
      {
        operator delete(v61);
      }

      goto LABEL_65;
    }

LABEL_85:
    std::vector<_S_AVE_MultiPassStats *>::__throw_length_error[abi:ne200100]();
  }

  *v14 = a2;
  v16 = (v14 + 1);
LABEL_65:
  a1[3170] = v16;
  std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(a1[3169], v16, &v80, (v16 - a1[3169]) >> 3);
LABEL_66:
  v62 = a1[3169];
  v63 = *v62;
  v64 = *(*v62 + 44);
  v65 = v6[226];
  if (v64 == -1 || v64 == v65)
  {
    v6[226] = v65 + 1;
    v67 = a1[3170];
    v68 = (v67 - v62) >> 3;
    if (v68 >= 2)
    {
      v69 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(v62, &v83, v68);
      v70 = (v67 - 8);
      if ((v67 - 8) == v69)
      {
        *v69 = v63;
      }

      else
      {
        *v69 = *v70;
        *v70 = v63;
        std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(v62, (v69 + 1), &v83, v69 + 1 - v62);
      }
    }

    a1[3170] -= 8;
    v71 = AVE_MultiPass::scene_change_pipeline(a1, v63);
    v17 = v71;
    if (v71)
    {
      v72 = v6[186];
      a1[v72 + 3149] = v71;
      if (v72 < 0x10)
      {
        v73 = v72 + 1;
      }

      else
      {
        v73 = 16;
      }

      v6[186] = v73;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_80:
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v74 = AVE_Log_CheckConsole(0xD8u);
    v75 = AVE_GetCurrTime();
    v76 = AVE_Log_GetLevelStr(7);
    if (v74)
    {
      printf("%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p\n", v75, 216, v76, v17);
      v77 = AVE_GetCurrTime();
      v79 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p", v77, 216, v79, v17);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: enqueue_first_pass() returns stats %p", v75, 216, v76, v17);
    }
  }

  return v17;
}

void AVE_MultiPass::FinalizeSeqRcInfo(AVE_MultiPass *this)
{
  v1 = this + 24576;
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v3 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v3)
    {
      printf("%lld %d AVE %s: MP: FinalizeSeqRcInfo()\n", CurrTime, 216, LevelStr);
      v6 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: FinalizeSeqRcInfo()", v6, 216, v54);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: FinalizeSeqRcInfo()", CurrTime, 216, LevelStr);
    }
  }

  v66 = 0;
  v67 = 0;
  v7 = (v1 + 1088);
  v2.n128_u64[0] = 0;
  v8 = 16;
  v9 = 0.1875;
  v68 = 0;
  do
  {
    v10 = *(v7 - 16);
    if (v10)
    {
      v11 = *v7;
      *&v64 = *(v7 - 16);
      *(&v64 + 1) = v11 / v10;
      *(&v64 + 1) = __PAIR64__(LODWORD(v9), v2.n128_u32[0]);
      std::vector<AVE_MultiPass::_S_AVE_MPCluster>::push_back[abi:ne200100](&v66, &v64);
    }

    v2.n128_f32[0] = v9;
    v9 = v9 + 0.1875;
    ++v7;
    --v8;
  }

  while (v8);
  v12 = v66;
  v13 = v67;
  if (v66 == v67)
  {
    LODWORD(v64) = 1;
    *(&v64 + 4) = 1069547520;
    HIDWORD(v64) = 1077936128;
    std::vector<AVE_MultiPass::_S_AVE_MPCluster>::push_back[abi:ne200100](&v66, &v64);
    v12 = v66;
    v13 = v67;
  }

  v14 = v13 - v12;
  if (v14 <= 3)
  {
    do
    {
      v15 = 126 - 2 * __clz(v14);
      if (v13 == v12)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      v2 = std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,false>(v12, v13, &v64, v16, 1, v2);
      v12 = v66;
      v17 = v66[1];
      v18 = v66[2];
      v19 = (v18 + v17) * 0.5;
      v20 = *v66;
      v21 = *v66 >> 1;
      v2.n128_f32[0] = (v17 + v66[3]) * 0.5;
      v66[1] = v2.n128_f32[0];
      v12->n128_f32[2] = v17;
      v12->n128_u32[0] = LODWORD(v20) - (LODWORD(v20) >> 1);
      v22 = v67;
      if (v67 >= v68)
      {
        v23 = v67 - v12;
        v24 = v67 - v12;
        v25 = v24 + 1;
        if ((v24 + 1) >> 60)
        {
          std::vector<_S_AVE_MultiPassStats *>::__throw_length_error[abi:ne200100]();
        }

        v26 = v68 - v12;
        if ((v68 - v12) >> 3 > v25)
        {
          v25 = v26 >> 3;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFF0)
        {
          v27 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<AVE_MultiPass::_S_AVE_MPCluster>>(&v66, v27);
        }

        v28 = 16 * v24;
        *v28 = v21;
        *(v28 + 4) = v19;
        *(v28 + 8) = v18;
        *(v28 + 12) = v17;
        v13 = (16 * v24 + 16);
        memcpy(0, v12, v23);
        v29 = v66;
        v66 = 0;
        v67 = v13;
        v68 = 0;
        if (v29)
        {
          operator delete(v29);
          v12 = v66;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v67->n128_u32[0] = v21;
        v22[1] = v19;
        v22[2] = v18;
        v13 = (v22 + 4);
        v22[3] = v17;
      }

      v67 = v13;
      v14 = v13 - v12;
    }

    while (v14 < 4);
  }

  v30 = 126 - 2 * __clz(v14);
  if (v13 == v12)
  {
    v31 = 0;
  }

  else
  {
    v31 = v30;
  }

  std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,false>(v12, v13, &v64, v31, 1, v2);
  v64 = 0uLL;
  v65 = 0;
  v32 = v67[-1].n128_f32[3];
  v33 = v66[2];
  std::vector<AVE_MultiPass::_S_AVE_MPCluster>::resize(&v64, 4uLL);
  v34 = 0;
  v35 = (v32 - v33) * 0.25;
  v36 = v33 + v35;
  v37 = (v33 + (v33 + v35)) * 0.5;
  do
  {
    v38 = v64 + v34;
    *(v38 + 4) = v37;
    *(v38 + 8) = v33;
    *(v38 + 12) = v36;
    *v38 = 0;
    if (AVE_Log_CheckLevel(0x2Eu, 8))
    {
      if (AVE_Log_CheckConsole(0x2Eu))
      {
        v39 = AVE_GetCurrTime();
        v40 = AVE_Log_GetLevelStr(8);
        printf("%lld %d AVE %s: center %f left %f right %f count %u\n", v39, 46, v40, *(v64 + v34 + 4), *(v64 + v34 + 8), *(v64 + v34 + 12), *(v64 + v34));
      }

      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: center %f left %f right %f count %u", v41, 46, v42, *(v64 + v34 + 4), *(v64 + v34 + 8), *(v64 + v34 + 12), *(v64 + v34));
    }

    v37 = v35 + v37;
    v33 = v35 + v33;
    v36 = v35 + v36;
    v34 += 16;
  }

  while (v34 != 64);
  __p = 0;
  v62 = 0;
  v63 = 0;
  v43 = std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__init_with_size[abi:ne200100]<AVE_MultiPass::_S_AVE_MPCluster*,AVE_MultiPass::_S_AVE_MPCluster*>(&__p, v66, v67, (v67 - v66) >> 4);
  AVE_MultiPass::QuantizeData(v43, &__p, &v64);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v44 = std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__init_with_size[abi:ne200100]<AVE_MultiPass::_S_AVE_MPCluster*,AVE_MultiPass::_S_AVE_MPCluster*>(&v58, v66, v67, (v67 - v66) >> 4);
  AVE_MultiPass::QuantizeData(v44, &v58, &v64);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  v55 = 0;
  v56 = 0;
  v57 = 0;
  v45 = std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__init_with_size[abi:ne200100]<AVE_MultiPass::_S_AVE_MPCluster*,AVE_MultiPass::_S_AVE_MPCluster*>(&v55, v66, v67, (v67 - v66) >> 4);
  AVE_MultiPass::QuantizeData(v45, &v55, &v64);
  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  v46 = v1 + 1168;
  v47 = (v64 + 4);
  v48 = 4;
  do
  {
    *(v46 - 4) = *(v47 - 1);
    v49 = *v47;
    v47 += 4;
    *v46++ = v49;
    --v48;
  }

  while (v48);
  if (AVE_Log_CheckLevel(0x2Eu, 8))
  {
    if (AVE_Log_CheckConsole(0x2Eu))
    {
      v50 = AVE_GetCurrTime();
      v51 = AVE_Log_GetLevelStr(8);
      printf("%lld %d AVE %s: log10_cplx quantized histogram : values %f %f %f %f counts %u %u %u %u\n", v50, 46, v51, *(v1 + 292), *(v1 + 293), *(v1 + 294), *(v1 + 295), *(v1 + 288), *(v1 + 289), *(v1 + 290), *(v1 + 291));
    }

    v52 = AVE_GetCurrTime();
    v53 = AVE_Log_GetLevelStr(8);
    syslog(3, "%lld %d AVE %s: log10_cplx quantized histogram : values %f %f %f %f counts %u %u %u %u", v52, 46, v53, *(v1 + 292), *(v1 + 293), *(v1 + 294), *(v1 + 295), *(v1 + 288), *(v1 + 289), *(v1 + 290), *(v1 + 291));
  }

  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }
}

void sub_295494004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 120);
  if (v29)
  {
    *(v27 - 112) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AVE_MultiPass::_S_AVE_MPCluster>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<_S_AVE_MultiPassStats *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AVE_MultiPass::_S_AVE_MPCluster>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<AVE_MultiPass::_S_AVE_MPCluster>::resize(uint64_t a1, unint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      *(a1 + 8) = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__append(a1, a2 - v2);
  }
}

void AVE_MultiPass::QuantizeData(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v5 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v5)
    {
      printf("%lld %d AVE %s: MP: QuantizeData()\n", CurrTime, 216, LevelStr);
      v8 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: QuantizeData()", v8, 216, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: QuantizeData()", CurrTime, 216, LevelStr);
    }
  }

  v10 = *a3;
  v9 = a3[1];
  if (*a3 < v9)
  {
    v11 = a2[1];
    v12 = 0.0;
    do
    {
      v13 = *a2;
      v14 = 0.0;
      if (*a2 >= v11)
      {
        v40 = ((v12 + 0.0) + 0.5);
        *v10 = v40;
      }

      else
      {
        v15 = 0.0;
        do
        {
          if (AVE_Log_CheckLevel(0x2Eu, 8))
          {
            v16 = AVE_Log_CheckConsole(0x2Eu);
            v17 = AVE_GetCurrTime();
            v18 = AVE_Log_GetLevelStr(8);
            v19 = *(v13 + 8);
            v20 = *(v13 + 4);
            v21 = *(v13 + 12);
            v22 = *(v10 + 8);
            v23 = *(v10 + 4);
            v24 = *(v10 + 12);
            if (v16)
            {
              printf("%lld %d AVE %s: it %f %f %f q_it %f %f %f\n", v17, 46, v18, v19, v20, v21, v22, *(v10 + 4), v24);
              v17 = AVE_GetCurrTime();
              v18 = AVE_Log_GetLevelStr(8);
              v19 = *(v13 + 8);
              v20 = *(v13 + 4);
              v21 = *(v13 + 12);
              v22 = *(v10 + 8);
              v23 = *(v10 + 4);
              v24 = *(v10 + 12);
            }

            syslog(3, "%lld %d AVE %s: it %f %f %f q_it %f %f %f", v17, 46, v18, v19, v20, v21, v22, v23, v24);
          }

          v25 = *(v13 + 12);
          v26 = *(v10 + 8);
          if (v25 > v26)
          {
            v27 = *(v13 + 8);
            v28 = *(v10 + 12);
            if (v27 < v28)
            {
              v29 = v27 >= v26 ? *(v13 + 8) : *(v10 + 8);
              v30 = v28 >= v25 ? *(v13 + 12) : *(v10 + 12);
              v31 = ((v30 - v29) * *v13) / (v25 - v27);
              v32 = (v29 + v30) * 0.5;
              v14 = v14 + v31;
              v15 = v15 + (v31 * v32);
              if (AVE_Log_CheckLevel(0x2Eu, 8))
              {
                v33 = AVE_Log_CheckConsole(0x2Eu);
                v34 = AVE_GetCurrTime();
                v35 = AVE_Log_GetLevelStr(8);
                v36 = v29;
                v37 = v30;
                v38 = v31;
                v39 = v32;
                if (v33)
                {
                  printf("%lld %d AVE %s: left_overlap %f right_overlap %f l_count %f center %f\n", v34, 46, v35, v36, v37, v38, v39);
                  v34 = AVE_GetCurrTime();
                  v35 = AVE_Log_GetLevelStr(8);
                }

                syslog(3, "%lld %d AVE %s: left_overlap %f right_overlap %f l_count %f center %f", v34, 46, v35, v36, v37, v38, v39);
              }
            }
          }

          v13 += 16;
          v11 = a2[1];
        }

        while (v13 < v11);
        v40 = ((v12 + v14) + 0.5);
        *v10 = v40;
        if (v14 > 0.0)
        {
          *(v10 + 4) = v15 / v14;
        }
      }

      v12 = v14 - v40;
      v10 += 16;
      v9 = a3[1];
    }

    while (v10 < v9);
    v10 = *a3;
  }

  if (v10 < v9)
  {
    do
    {
      v41 = v10 + 16;
      if (v10 + 16 != v9)
      {
        v42 = (*(v10 + 4) + *(v10 + 20)) * 0.5;
        *(v10 + 12) = v42;
        *(v10 + 24) = v42;
      }

      v10 += 16;
    }

    while (v41 < v9);
  }
}

void AVE_MultiPass::FlushStats(AVE_MultiPass *this, OpaqueVTMultiPassStorage *a2, __sFILE *a3)
{
  if (AVE_Log_CheckLevel(0xD8u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD8u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: MP: %s\n", CurrTime, 216, LevelStr, "FlushStats");
      v9 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: MP: %s", v9, 216, v24, "FlushStats");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: MP: %s", CurrTime, 216, LevelStr, "FlushStats");
    }
  }

  pass = 0;
  v11 = *MEMORY[0x29EDB8ED8];
  while (!pass || *(pass + 11) != -1)
  {
    v12 = AVE_MultiPass::new_stats(this);
    if (!v12)
    {
      break;
    }

    *(v12 + 44) = -1;
    pass = AVE_MultiPass::enqueue_first_pass(this, v12, 0);
    if (!AVE_Log_CheckLevel(0xD8u, 7))
    {
      goto LABEL_19;
    }

    v13 = AVE_Log_CheckConsole(0xD8u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(7);
    if (v13)
    {
      if (pass)
      {
        v16 = *(pass + 11);
      }

      else
      {
        v16 = -1;
      }

      printf("%lld %d AVE %s: MP: %s flushes stats %p display_order %d\n", v14, 216, v15, "FlushStats", pass, v16);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      if (!pass)
      {
LABEL_17:
        v17 = -1;
        goto LABEL_18;
      }
    }

    else if (!pass)
    {
      goto LABEL_17;
    }

    v17 = *(pass + 11);
LABEL_18:
    syslog(3, "%lld %d AVE %s: MP: %s flushes stats %p display_order %d", v14, 216, v15, "FlushStats", pass, v17);
LABEL_19:
    if (pass && *(pass + 11) != -1)
    {
      if (a2)
      {
        Mutable = CFDataCreateMutable(v11, 0);
        CFDataAppendBytes(Mutable, pass, 1574);
        v26 = *(pass + 4);
        v27 = *(pass + 12);
        v28 = *(pass + 20);
        v19 = VTMultiPassStorageSetDataAtTimeStamp();
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (v19 && AVE_Log_CheckLevel(0x2Eu, 4))
        {
          v20 = AVE_Log_CheckConsole(0x2Eu);
          v21 = AVE_GetCurrTime();
          v22 = AVE_Log_GetLevelStr(4);
          if (v20)
          {
            printf("%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...\n", v21, 46, v22, "FlushStats");
            v23 = AVE_GetCurrTime();
            v25 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...", v23, 46, v25, "FlushStats");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: MP: %s ERROR: VTMultiPassStorageSetDataAtTimeStamp failed ...", v21, 46, v22, "FlushStats");
          }
        }
      }

      if (a3)
      {
        fseeko(a3, 1574 * *(pass + 11) + 264, 0);
        fwrite(pass, 1uLL, 0x626uLL, a3);
      }
    }
  }

  AVE_MultiPass::empty_queues(this);
  AVE_MultiPass::FinalizeSeqRcInfo(this);
  if (a3)
  {
    fseek(a3, 0, 0);
    fwrite(this + 25496, 1uLL, 0x108uLL, a3);
  }
}

void *std::deque<_S_AVE_MultiPassStats *>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<_S_AVE_MultiPassStats **>::emplace_back<_S_AVE_MultiPassStats **&>(a1, &v10);
}

void sub_2954949C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<_S_AVE_MultiPassStats **>::emplace_back<_S_AVE_MultiPassStats **&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<_S_AVE_MultiPassStats **>::emplace_front<_S_AVE_MultiPassStats **>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<_S_AVE_MultiPassStats **>::emplace_back<_S_AVE_MultiPassStats **>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<_S_AVE_MultiPassStats **>::emplace_front<_S_AVE_MultiPassStats **&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x29EDC9488], MEMORY[0x29EDC9370]);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats **>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<_S_AVE_MultiPassStats *>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x200)
  {
    a2 = 1;
  }

  if (v2 < 0x400)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 512;
  }

  return v4 ^ 1u;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EDCB8F0, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<_S_AVE_MultiPassStats *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 8 * v4);
    v6 = *v5;
    v9 = *(a2 - 8);
    v7 = (a2 - 8);
    v8 = v9;
    v10 = *(v9 + 44);
    if (*(*v5 + 44) > v10)
    {
      do
      {
        v11 = v5;
        *v7 = v6;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 8 * v4);
        v6 = *v5;
        v7 = v11;
      }

      while (*(*v5 + 44) > v10);
      *v11 = v8;
    }
  }

  return result;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPStatsSort &,std::__wrap_iter<_S_AVE_MultiPassStats **>>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3 + 1];
    v5 = (2 * v3) | 1;
    v6 = 2 * v3 + 2;
    if (v6 < a3)
    {
      v7 = *(*v4 + 44) > *(v4[1] + 44);
      v4 += v7;
      if (v7)
      {
        v5 = v6;
      }
    }

    *a1 = *v4;
    a1 = v4;
    v3 = v5;
  }

  while (v5 <= (a3 - 2) / 2);
  return v4;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AVE_MultiPass::_S_AVE_MPCluster>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,false>(unsigned int *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = (a2 - v12) >> 4;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        v48 = a2[-1].n128_u32[0];
        v46 = a2 - 1;
        if (v48 <= *v12)
        {
          return result;
        }

LABEL_77:
        v77 = *v12;
        *v12 = *v46;
        result = v77;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      v43 = (v12 + 4);
      v44 = v12[4];
      v47 = a2[-1].n128_u32[0];
      v46 = a2 - 1;
      v45 = v47;
      if (v44 > *v12)
      {
        if (v45 > v44)
        {
          goto LABEL_77;
        }

        v76 = *v12;
        *v12 = *v43;
        result = v76;
        *v43 = v76;
        if (v46->n128_u32[0] <= v12[4])
        {
          return result;
        }

        result = *v43;
        *v43 = *v46;
LABEL_78:
        *v46 = result;
        return result;
      }

      if (v45 <= v44)
      {
        return result;
      }

      result = *v43;
      *v43 = *v46;
      *v46 = result;
      goto LABEL_109;
    }

    if (v15 == 4)
    {
      break;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,0>(v12, v12 + 1, v12 + 8, v12 + 3, a2[-1].n128_u64, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(v12, a2);
      }

      else if (v12 != a2)
      {
        v52 = (v12 + 4);
        while (v52 != a2)
        {
          v53 = v52;
          v54 = *(a1 + 2);
          if (v54 > *a1)
          {
            v55 = *(a1 + 3);
            v56 = v53;
            do
            {
              result = v56[-1];
              *v56 = result;
              v57 = v56[-2].n128_u32[0];
              --v56;
            }

            while (v54 > v57);
            v56->n128_u64[0] = v54;
            v56->n128_u64[1] = v55;
          }

          v52 = v53 + 1;
          a1 = v53;
        }
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPCluster *>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[4 * (v15 >> 1)];
    v17 = v16;
    v18 = v9->n128_u32[0];
    if (v15 >= 0x81)
    {
      v19 = *v16;
      if (*v16 <= *v12)
      {
        if (v18 > v19)
        {
          v61 = *v16;
          *v16 = *v9;
          *v9 = v61;
          if (*v16 > *v12)
          {
            v62 = *v12;
            *v12 = *v16;
            *v16 = v62;
          }
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v65 = *v12;
          *v12 = *v16;
          *v16 = v65;
          if (v9->n128_u32[0] <= *v16)
          {
            goto LABEL_28;
          }

          v59 = *v16;
          *v16 = *v9;
        }

        else
        {
          v59 = *v12;
          *v12 = *v9;
        }

        *v9 = v59;
      }

LABEL_28:
      v21 = (v12 + 4);
      v22 = (v16 - 4);
      v23 = *(v16 - 4);
      v24 = v10->n128_u32[0];
      if (v23 <= v12[4])
      {
        if (v24 > v23)
        {
          v66 = *v22;
          *v22 = *v10;
          *v10 = v66;
          if (v22->n128_u32[0] > v21->n128_u32[0])
          {
            v26 = *v21;
            *v21 = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v24 <= v23)
        {
          v27 = *v21;
          *v21 = *v22;
          *v22 = v27;
          if (v10->n128_u32[0] <= v22->n128_u32[0])
          {
            goto LABEL_40;
          }

          v68 = *v22;
          *v22 = *v10;
          v25 = v68;
        }

        else
        {
          v25 = *v21;
          *v21 = *v10;
        }

        *v10 = v25;
      }

LABEL_40:
      v28 = (v12 + 8);
      v31 = v16[4];
      v29 = (v16 + 4);
      v30 = v31;
      v32 = v11->n128_u32[0];
      if (v31 <= v12[8])
      {
        if (v32 > v30)
        {
          v69 = *v29;
          *v29 = *v11;
          *v11 = v69;
          if (v29->n128_u32[0] > v28->n128_u32[0])
          {
            v34 = *v28;
            *v28 = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v32 <= v30)
        {
          v35 = *v28;
          *v28 = *v29;
          *v29 = v35;
          if (v11->n128_u32[0] <= v29->n128_u32[0])
          {
            goto LABEL_49;
          }

          v70 = *v29;
          *v29 = *v11;
          v33 = v70;
        }

        else
        {
          v33 = *v28;
          *v28 = *v11;
        }

        *v11 = v33;
      }

LABEL_49:
      v36 = *v17;
      v37 = v29->n128_u32[0];
      if (*v17 <= v22->n128_u32[0])
      {
        if (v37 > v36)
        {
          v72 = *v17;
          *v17 = *v29;
          *v29 = v72;
          if (*v17 > v22->n128_u32[0])
          {
            v73 = *v22;
            *v22 = *v17;
            *v17 = v73;
          }
        }

        goto LABEL_58;
      }

      if (v37 <= v36)
      {
        v74 = *v22;
        *v22 = *v17;
        *v17 = v74;
        if (v29->n128_u32[0] <= *v17)
        {
LABEL_58:
          v75 = *v12;
          *v12 = *v17;
          *v17 = v75;
          goto LABEL_59;
        }

        v71 = *v17;
        *v17 = *v29;
      }

      else
      {
        v71 = *v22;
        *v22 = *v29;
      }

      *v29 = v71;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 <= *v17)
    {
      if (v18 > v20)
      {
        v63 = *v12;
        *v12 = *v9;
        *v9 = v63;
        if (*v12 > *v17)
        {
          v64 = *v17;
          *v17 = *v12;
          *v12 = v64;
        }
      }
    }

    else
    {
      if (v18 > v20)
      {
        v60 = *v17;
        *v17 = *v9;
LABEL_36:
        *v9 = v60;
        goto LABEL_59;
      }

      v67 = *v17;
      *v17 = *v12;
      *v12 = v67;
      if (v9->n128_u32[0] > *v12)
      {
        v60 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *(v12 - 4) <= *v12)
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCount &>(v12, a2);
      goto LABEL_66;
    }

    v38 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCount &>(v12, a2);
    if ((v40 & 1) == 0)
    {
      goto LABEL_64;
    }

    v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(v12, v38, v39);
    v12 = (v38 + 1);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>((v38 + 1), a2, v42))
    {
      a4 = -v14;
      a2 = v38;
      if (v41)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v41)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,false>(a1, v38, a3, -v14, a5 & 1);
      v12 = (v38 + 1);
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v43 = (v12 + 4);
  v49 = v12[4];
  v50 = (v12 + 8);
  v51 = v12[8];
  if (v49 <= *v12)
  {
    if (v51 > v49)
    {
      result = *v43;
      *v43 = *v50;
      *v50 = result;
      if (v12[4] > *v12)
      {
        v79 = *v12;
        *v12 = *v43;
        result = v79;
        *v43 = v79;
      }
    }
  }

  else
  {
    if (v51 > v49)
    {
      v78 = *v12;
      *v12 = *v50;
      result = v78;
      goto LABEL_105;
    }

    v80 = *v12;
    *v12 = *v43;
    result = v80;
    *v43 = v80;
    if (v51 > v12[4])
    {
      result = *v43;
      *v43 = *v50;
LABEL_105:
      *v50 = result;
    }
  }

  if (v9->n128_u32[0] <= v50->n128_u32[0])
  {
    return result;
  }

  result = *v50;
  *v50 = *v9;
  *v9 = result;
  if (v50->n128_u32[0] <= v43->n128_u32[0])
  {
    return result;
  }

  result = *v43;
  *v43 = *v50;
  *v50 = result;
LABEL_109:
  if (v12[4] > *v12)
  {
    v81 = *v12;
    *v12 = *v43;
    result = v81;
    *v43 = v81;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,0>(__n128 *a1, __n128 *a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, __n128 result)
{
  v6 = a2->n128_u32[0];
  v7 = *a3;
  if (a2->n128_u32[0] <= a1->n128_u32[0])
  {
    if (v7 > v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] > a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 > a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 > a2->n128_u32[0])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u32[0] > a1->n128_u32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (*a5 > *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (*a4 > *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (*a3 > a2->n128_u32[0])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u32[0] > a1->n128_u32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[2];
        if (v6 > *v4)
        {
          v7 = v4[3];
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 16);
            v8 -= 16;
            if (v6 <= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

unsigned int *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCount &>(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = *a1;
  if (v3 <= *(a2 - 4))
  {
    v6 = a1 + 4;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v6 += 4;
    }

    while (v3 <= *v4);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4[4];
      v4 += 4;
    }

    while (v3 <= v5);
  }

  if (v4 < a2)
  {
    do
    {
      v7 = *(a2 - 4);
      a2 -= 4;
    }

    while (v3 > v7);
  }

  while (v4 < a2)
  {
    v11 = *v4;
    *v4 = *a2;
    *a2 = v11;
    do
    {
      v8 = v4[4];
      v4 += 4;
    }

    while (v3 <= v8);
    do
    {
      v9 = *(a2 - 4);
      a2 -= 4;
    }

    while (v3 > v9);
  }

  if (v4 - 4 != a1)
  {
    *a1 = *(v4 - 1);
  }

  *(v4 - 1) = v2;
  return v4;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCount &>(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a1;
  do
  {
    v5 = a1[++v2];
  }

  while (v4 < v5);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v6 >= a2)
      {
        break;
      }

      v9 = *(a2-- - 4);
    }

    while (v4 >= v9);
  }

  else
  {
    do
    {
      v8 = *(a2-- - 4);
    }

    while (v4 >= v8);
  }

  if (v6 < a2)
  {
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      v12 = *v10;
      *v10 = *v11;
      *v11 = v12;
      do
      {
        v13 = *(v10++ + 4);
      }

      while (v4 < v13);
      do
      {
        v14 = *(v11-- - 4);
      }

      while (v4 >= v14);
    }

    while (v10 < v11);
    v7 = v10 - 1;
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(uint64_t a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v9 = a2[-1].n128_u32[0];
      v4 = a2 - 1;
      v8 = v9;
      if (v7 > *a1)
      {
        if (v8 <= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (v4->n128_u32[0] <= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v8 <= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) > *a1)
      {
        v42 = *a1;
        *a1 = *v6;
        *v6 = v42;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), a2[-1].n128_u64, a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = a2 - 1;
    v21 = *a1;
    if (v17 <= *a1)
    {
      if (v19 > v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_u32[0] > v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 <= v17)
    {
      v39 = *a1;
      *a1 = *v6;
      *v6 = v39;
      if (v19 <= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (v20->n128_u32[0] <= v18->n128_u32[0])
    {
      return 1;
    }

    v40 = *v18;
    *v18 = *v20;
    *v20 = v40;
    if (v18->n128_u32[0] <= v6->n128_u32[0])
    {
      return 1;
    }

    v41 = *v6;
    *v6 = *v18;
    *v18 = v41;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = a2[-1].n128_u32[0];
    v4 = a2 - 1;
    if (v5 <= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 <= *a1)
  {
    if (v12 > v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_u32[0] > v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 <= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 <= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    v34 = v11->n128_u32[0];
    v35 = *v30;
    if (v35 > v34)
    {
      v36 = v31;
      while (1)
      {
        *(a1 + v36 + 48) = *(a1 + v36 + 32);
        if (v36 == -32)
        {
          break;
        }

        v37 = *(a1 + v36 + 16);
        v36 -= 16;
        if (v35 <= v37)
        {
          v38 = (a1 + v36 + 48);
          goto LABEL_41;
        }
      }

      v38 = a1;
LABEL_41:
      *v38 = v33;
      if (++v32 == 8)
      {
        return &v30[1] == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    if (++v30 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPCluster *>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*v12 > *a1)
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v30 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[v14];
          v17 = v16 + 1;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v20 = *(v16 + 8);
            v19 = v16 + 2;
            if (*(v19 - 4) <= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v19;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v30;
        }

        else
        {
          *v17 = *v6;
          *v6 = v30;
          v21 = (v17 - a1 + 16) >> 4;
          v22 = v21 < 2;
          v23 = v21 - 2;
          if (!v22)
          {
            v24 = v23 >> 1;
            v25 = &a1[v24];
            v26 = *v17;
            if (*v25 > *v17)
            {
              v27 = *(v17 + 1);
              do
              {
                v28 = v25;
                *v17 = *v25;
                if (!v24)
                {
                  break;
                }

                v24 = (v24 - 1) >> 1;
                v25 = &a1[v24];
                v17 = v28;
              }

              while (*v25 > v26);
              *v28 = v26;
              *(v28 + 1) = v27;
            }
          }
        }

        v22 = v8-- <= 2;
      }

      while (!v22);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCount &,AVE_MultiPass::_S_AVE_MPCluster *>(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      v10 = *v8;
      if (v9 < a3 && v10 > *(v8 + 2))
      {
        v10 = *(v8++ + 2);
        v7 = v9;
      }

      v11 = *a4;
      v12 = *a4;
      if (v12 >= v10)
      {
        do
        {
          v13 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = (2 * v7) | 1;
          v8 = (result + 16 * v14);
          v15 = 2 * v7 + 2;
          v16 = *v8;
          if (v15 < a3 && v16 > *(v8 + 2))
          {
            v16 = *(v8++ + 2);
            v14 = v15;
          }

          a4 = v13;
          v7 = v14;
        }

        while (v12 >= v16);
        *v13 = v11;
      }
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[1];
        if (result.n128_f32[0] >= v12->n128_f32[1])
        {
          return result;
        }

LABEL_77:
        v65 = *v12;
        *v12 = *v9;
        result = v65;
        goto LABEL_78;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v42 = v12 + 1;
      v43 = v12 + 2;
      v44 = v12[1].n128_f32[1];
      v45 = v12[2].n128_f32[1];
      if (v44 >= v12->n128_f32[1])
      {
        if (v45 < v44)
        {
          result = *v42;
          *v42 = *v43;
          *v43 = result;
          if (v12[1].n128_f32[1] < v12->n128_f32[1])
          {
            v68 = *v12;
            *v12 = *v42;
            result = v68;
            *v42 = v68;
          }
        }
      }

      else
      {
        if (v45 < v44)
        {
          v66 = *v12;
          *v12 = *v43;
          result = v66;
          goto LABEL_101;
        }

        v69 = *v12;
        *v12 = *v42;
        *v42 = v69;
        if (v45 < v12[1].n128_f32[1])
        {
          result = *v42;
          *v42 = *v43;
LABEL_101:
          *v43 = result;
        }
      }

      result.n128_u32[0] = a2[-1].n128_u32[1];
      if (result.n128_f32[0] < v12[2].n128_f32[1])
      {
        result = *v43;
        *v43 = *v9;
        *v9 = result;
        result.n128_u32[0] = v12[2].n128_u32[1];
        if (result.n128_f32[0] < v12[1].n128_f32[1])
        {
          result = *v42;
          *v42 = *v43;
          *v43 = result;
          result.n128_u32[0] = v12[1].n128_u32[1];
          if (result.n128_f32[0] < v12->n128_f32[1])
          {
            v70 = *v12;
            *v12 = *v42;
            result = v70;
            *v42 = v70;
          }
        }
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPCluster *>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_f32[1];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_f32[1];
      if (v18 >= v12->n128_f32[1])
      {
        if (v17 < v18)
        {
          v49 = *v16;
          *v16 = *v9;
          *v9 = v49;
          if (v16->n128_f32[1] < v12->n128_f32[1])
          {
            v50 = *v12;
            *v12 = *v16;
            *v16 = v50;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v47 = *v12;
          *v12 = *v9;
          goto LABEL_27;
        }

        v53 = *v12;
        *v12 = *v16;
        *v16 = v53;
        if (a2[-1].n128_f32[1] < v16->n128_f32[1])
        {
          v47 = *v16;
          *v16 = *v9;
LABEL_27:
          *v9 = v47;
        }
      }

      v20 = v12 + 1;
      v21 = v16 - 1;
      v22 = v16[-1].n128_f32[1];
      v23 = a2[-2].n128_f32[1];
      if (v22 >= v12[1].n128_f32[1])
      {
        if (v23 < v22)
        {
          v54 = *v21;
          *v21 = *v10;
          *v10 = v54;
          if (v16[-1].n128_f32[1] < v12[1].n128_f32[1])
          {
            v25 = *v20;
            *v20 = *v21;
            *v21 = v25;
          }
        }
      }

      else
      {
        if (v23 < v22)
        {
          v24 = *v20;
          *v20 = *v10;
          goto LABEL_39;
        }

        v26 = *v20;
        *v20 = *v21;
        *v21 = v26;
        if (a2[-2].n128_f32[1] < v16[-1].n128_f32[1])
        {
          v56 = *v21;
          *v21 = *v10;
          v24 = v56;
LABEL_39:
          *v10 = v24;
        }
      }

      v27 = v12 + 2;
      v28 = v16 + 1;
      v29 = v16[1].n128_f32[1];
      v30 = a2[-3].n128_f32[1];
      if (v29 >= v12[2].n128_f32[1])
      {
        if (v30 < v29)
        {
          v57 = *v28;
          *v28 = *v11;
          *v11 = v57;
          if (v16[1].n128_f32[1] < v12[2].n128_f32[1])
          {
            v32 = *v27;
            *v27 = *v28;
            *v28 = v32;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v31 = *v27;
          *v27 = *v11;
          goto LABEL_48;
        }

        v33 = *v27;
        *v27 = *v28;
        *v28 = v33;
        if (a2[-3].n128_f32[1] < v16[1].n128_f32[1])
        {
          v58 = *v28;
          *v28 = *v11;
          v31 = v58;
LABEL_48:
          *v11 = v31;
        }
      }

      v34 = v16->n128_f32[1];
      v35 = v16[1].n128_f32[1];
      if (v34 >= v16[-1].n128_f32[1])
      {
        if (v35 < v34)
        {
          v60 = *v16;
          *v16 = *v28;
          *v28 = v60;
          if (v16->n128_f32[1] < v16[-1].n128_f32[1])
          {
            v61 = *v21;
            *v21 = *v16;
            *v16 = v61;
          }
        }
      }

      else
      {
        if (v35 < v34)
        {
          v59 = *v21;
          *v21 = *v28;
          goto LABEL_57;
        }

        v62 = *v21;
        *v21 = *v16;
        *v16 = v62;
        if (v16[1].n128_f32[1] < v16->n128_f32[1])
        {
          v59 = *v16;
          *v16 = *v28;
LABEL_57:
          *v28 = v59;
        }
      }

      v63 = *v12;
      *v12 = *v16;
      *v16 = v63;
      goto LABEL_59;
    }

    v19 = v12->n128_f32[1];
    if (v19 >= v16->n128_f32[1])
    {
      if (v17 < v19)
      {
        v51 = *v12;
        *v12 = *v9;
        *v9 = v51;
        if (v12->n128_f32[1] < v16->n128_f32[1])
        {
          v52 = *v16;
          *v16 = *v12;
          *v12 = v52;
        }
      }
    }

    else
    {
      if (v17 < v19)
      {
        v48 = *v16;
        *v16 = *v9;
LABEL_36:
        *v9 = v48;
        goto LABEL_59;
      }

      v55 = *v16;
      *v16 = *v12;
      *v12 = v55;
      if (a2[-1].n128_f32[1] < v12->n128_f32[1])
      {
        v48 = *v12;
        *v12 = *v9;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && v12[-1].n128_f32[1] >= v12->n128_f32[1])
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCenter &>(v12, a2);
      goto LABEL_66;
    }

    v36 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCenter &>(v12, a2);
    if ((v38 & 1) == 0)
    {
      goto LABEL_64;
    }

    v39 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(v12, v36, v37);
    v12 = v36 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(v36 + 1, a2, v40))
    {
      a4 = -v14;
      a2 = v36;
      if (v39)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v39)
    {
LABEL_64:
      std::__introsort<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,false>(a1, v36, a3, -v14, a5 & 1);
      v12 = v36 + 1;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u32[0] = v12[1].n128_u32[1];
  v41 = a2[-1].n128_f32[1];
  if (result.n128_f32[0] < v12->n128_f32[1])
  {
    if (v41 < result.n128_f32[0])
    {
      goto LABEL_77;
    }

    v64 = *v12;
    *v12 = v12[1];
    result = v64;
    v12[1] = v64;
    result.n128_u32[0] = a2[-1].n128_u32[1];
    if (result.n128_f32[0] >= v12[1].n128_f32[1])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v9;
LABEL_78:
    *v9 = result;
    return result;
  }

  if (v41 < result.n128_f32[0])
  {
    result = v12[1];
    v12[1] = *v9;
    *v9 = result;
    result.n128_u32[0] = v12[1].n128_u32[1];
    if (result.n128_f32[0] < v12->n128_f32[1])
    {
      v67 = *v12;
      *v12 = v12[1];
      result = v67;
      v12[1] = v67;
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f32[1];
  v7 = a3->n128_f32[1];
  if (v6 >= a1->n128_f32[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[1] < a1->n128_f32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f32[1] < a2->n128_f32[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f32[1] < a3->n128_f32[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f32[1] < a2->n128_f32[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[1] < a1->n128_f32[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u32[0] = a5->n128_u32[1];
  if (result.n128_f32[0] < a4->n128_f32[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u32[0] = a4->n128_u32[1];
    if (result.n128_f32[0] < a3->n128_f32[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u32[0] = a3->n128_u32[1];
      if (result.n128_f32[0] < a2->n128_f32[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u32[0] = a2->n128_u32[1];
        if (result.n128_f32[0] < a1->n128_f32[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 2);
        if (*(&v6 + 1) < v4[1])
        {
          v7 = *(v4 + 3);
          v8 = v3;
          while (1)
          {
            *(result + v8 + 16) = *(result + v8);
            if (!v8)
            {
              break;
            }

            v9 = *(result + v8 - 12);
            v8 -= 16;
            if (*(&v6 + 1) >= v9)
            {
              v10 = (result + v8 + 16);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v6;
          v10[1] = v7;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result + 16;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 16);
      if (*(&v4 + 1) < *(result + 4))
      {
        v5 = *(result + 24);
        v6 = v3;
        do
        {
          *v6 = *(v6 - 16);
          v7 = *(v6 - 28);
          v6 -= 16;
        }

        while (*(&v4 + 1) < v7);
        *v6 = v4;
        *(v6 + 8) = v5;
      }

      v2 = v3 + 16;
      result = v3;
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCenter &>(float *a1, float *a2)
{
  v2 = *a1;
  LODWORD(v3) = HIDWORD(*a1);
  if (v3 >= *(a2 - 3))
  {
    v7 = a1 + 4;
    do
    {
      v5 = v7;
      if (v7 >= a2)
      {
        break;
      }

      v8 = v7[1];
      v7 += 4;
    }

    while (v3 >= v8);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = (v4 + 4);
      v6 = v4[5];
      v4 += 4;
    }

    while (v3 >= v6);
  }

  if (v5 >= a2)
  {
    v9 = a2;
  }

  else
  {
    do
    {
      v9 = a2 - 4;
      v10 = *(a2 - 3);
      a2 -= 4;
    }

    while (v3 < v10);
  }

  while (v5 < v9)
  {
    v14 = *v5;
    *v5 = *v9;
    *v9 = v14;
    do
    {
      v11 = *(v5 + 20);
      v5 += 16;
    }

    while (v3 >= v11);
    do
    {
      v12 = *(v9 - 3);
      v9 -= 4;
    }

    while (v3 < v12);
  }

  if ((v5 - 16) != a1)
  {
    *a1 = *(v5 - 16);
  }

  *(v5 - 16) = v2;
  return v5;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPClusterSortCenter &>(__int128 *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  LODWORD(v4) = HIDWORD(*a1);
  do
  {
    v5 = *(&a1[++v2] + 1);
  }

  while (v5 < v4);
  v6 = &a1[v2];
  v7 = &a1[v2 - 1];
  if (v2 == 1)
  {
    while (v6 < a2)
    {
      v8 = a2 - 4;
      v10 = *(a2 - 3);
      a2 -= 4;
      if (v10 < v4)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 4;
      v9 = *(a2 - 3);
      a2 -= 4;
    }

    while (v9 >= v4);
  }

LABEL_9:
  if (v6 < v8)
  {
    v11 = v6;
    v12 = v8;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = *(v11 + 20);
        v11 += 16;
      }

      while (v14 < v4);
      do
      {
        v15 = *(v12 - 3);
        v12 -= 4;
      }

      while (v15 >= v4);
    }

    while (v11 < v12);
    v7 = (v11 - 16);
  }

  if (v7 != a1)
  {
    *a1 = *v7;
  }

  *v7 = v3;
  return v7;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = a2 - 1;
      v5 = a1[1].n128_f32[1];
      v6 = a2[-1].n128_f32[1];
      if (v5 >= a1->n128_f32[1])
      {
        if (v6 < v5)
        {
          v21 = a1[1];
          a1[1] = *v4;
          *v4 = v21;
          if (a1[1].n128_f32[1] < a1->n128_f32[1])
          {
            v22 = *a1;
            *a1 = a1[1];
            a1[1] = v22;
          }
        }

        return 1;
      }

      if (v6 < v5)
      {
        goto LABEL_49;
      }

      v7 = *a1;
      *a1 = a1[1];
      a1[1] = v7;
      if (a2[-1].n128_f32[1] < a1[1].n128_f32[1])
      {
        v8 = a1[1];
        a1[1] = *v4;
LABEL_50:
        *v4 = v8;
        return 1;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_14;
    }

    v4 = a1 + 1;
    v15 = a1 + 2;
    v16 = a2 - 1;
    v17 = a1[1].n128_f32[1];
    v18 = a1->n128_f32[1];
    v19 = a1[2].n128_f32[1];
    if (v17 >= v18)
    {
      if (v19 < v17)
      {
        v25 = *v4;
        *v4 = *v15;
        *v15 = v25;
        if (a1[1].n128_f32[1] < v18)
        {
          v26 = *a1;
          *a1 = *v4;
          *v4 = v26;
        }
      }
    }

    else
    {
      if (v19 < v17)
      {
        v20 = *a1;
        *a1 = *v15;
LABEL_45:
        *v15 = v20;
        goto LABEL_46;
      }

      v36 = *a1;
      *a1 = *v4;
      *v4 = v36;
      if (v19 < a1[1].n128_f32[1])
      {
        v20 = *v4;
        *v4 = *v15;
        goto LABEL_45;
      }
    }

LABEL_46:
    if (a2[-1].n128_f32[1] >= a1[2].n128_f32[1])
    {
      return 1;
    }

    v37 = *v15;
    *v15 = *v16;
    *v16 = v37;
    if (a1[2].n128_f32[1] >= a1[1].n128_f32[1])
    {
      return 1;
    }

    v38 = *v4;
    *v4 = *v15;
    *v15 = v38;
    if (a1[1].n128_f32[1] >= a1->n128_f32[1])
    {
      return 1;
    }

    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f32[1] < a1->n128_f32[1])
    {
      v4 = a2 - 1;
LABEL_49:
      v8 = *a1;
      *a1 = *v4;
      goto LABEL_50;
    }

    return 1;
  }

LABEL_14:
  v9 = a1 + 2;
  v10 = a1 + 1;
  v11 = a1[1].n128_f32[1];
  v12 = a1->n128_f32[1];
  v13 = a1[2].n128_f32[1];
  if (v11 >= v12)
  {
    if (v13 < v11)
    {
      v23 = *v10;
      *v10 = *v9;
      *v9 = v23;
      if (a1[1].n128_f32[1] < v12)
      {
        v24 = *a1;
        *a1 = *v10;
        *v10 = v24;
      }
    }
  }

  else
  {
    if (v13 >= v11)
    {
      v27 = *a1;
      *a1 = *v10;
      *v10 = v27;
      if (v13 >= a1[1].n128_f32[1])
      {
        goto LABEL_32;
      }

      v14 = *v10;
      *v10 = *v9;
    }

    else
    {
      v14 = *a1;
      *a1 = *v9;
    }

    *v9 = v14;
  }

LABEL_32:
  v28 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v29 = 0;
  v30 = 0;
  while (1)
  {
    v31 = *v28;
    LODWORD(v32) = HIDWORD(v28->n128_u64[0]);
    if (v32 < v9->n128_f32[1])
    {
      v33 = v29;
      while (1)
      {
        *(a1 + v33 + 48) = *(a1 + v33 + 32);
        if (v33 == -32)
        {
          break;
        }

        v34 = *(&a1[1].n128_f32[1] + v33);
        v33 -= 16;
        if (v32 >= v34)
        {
          v35 = (a1 + v33 + 48);
          goto LABEL_40;
        }
      }

      v35 = a1;
LABEL_40:
      *v35 = v31;
      if (++v30 == 8)
      {
        return &v28[1] == a2;
      }
    }

    v9 = v28;
    v29 += 16;
    if (++v28 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *,AVE_MultiPass::_S_AVE_MPCluster *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (*(v12 + 1) < *(a1 + 4))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v21 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[v14];
          v17 = v16 + 1;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else if (*(v16 + 5) >= *(v16 + 9))
          {
            v14 = v18;
          }

          else
          {
            v17 = v16 + 2;
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v17 == --v6)
        {
          *v17 = v21;
        }

        else
        {
          *v17 = *v6;
          *v6 = v21;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(a1, (v17 + 1), a4, (v17 - a1 + 16) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = result + 16 * v7;
      v9 = v6 + 2;
      if (v9 < a3 && *(v8 + 4) < *(v8 + 20))
      {
        v8 += 16;
        v7 = v9;
      }

      v10 = *a4;
      LODWORD(v11) = HIDWORD(*a4);
      if (*(v8 + 4) >= v11)
      {
        do
        {
          v12 = v8;
          *a4 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = result + 16 * v7;
          v14 = v13 + 2;
          if (v14 < a3 && *(v8 + 4) < *(v8 + 20))
          {
            v8 += 16;
            v7 = v14;
          }

          a4 = v12;
        }

        while (*(v8 + 4) >= v11);
        *v12 = v10;
      }
    }
  }

  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,AVE_MultiPass::_S_AVE_MPClusterSortCenter &,AVE_MultiPass::_S_AVE_MPCluster *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v7 = (a2 - 16);
    v6 = *(a2 - 16);
    if (*(v5 + 4) < *(&v6 + 1))
    {
      v8 = *(a2 - 8);
      do
      {
        v9 = v5;
        *v7 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
        v7 = v9;
      }

      while (*(v5 + 4) < *(&v6 + 1));
      *v9 = v6;
      v9[1] = v8;
    }
  }

  return result;
}

void std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (a2 <= (v4 - v5) >> 4)
  {
    a1[1] = &v5[16 * a2];
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      std::vector<_S_AVE_MultiPassStats *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v7 >> 4;
    v10 = v4 - v6;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF0;
    v12 = 0xFFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v8;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<AVE_MultiPass::_S_AVE_MPCluster>>(a1, v12);
    }

    memcpy(0, v6, v7);
    v13 = *a1;
    *a1 = 0;
    a1[1] = (16 * v9 + 16 * a2);
    a1[2] = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

uint64_t std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__init_with_size[abi:ne200100]<AVE_MultiPass::_S_AVE_MPCluster*,AVE_MultiPass::_S_AVE_MPCluster*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_295497698(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<AVE_MultiPass::_S_AVE_MPCluster>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<AVE_MultiPass::_S_AVE_MPCluster>>(a1, a2);
  }

  std::vector<_S_AVE_MultiPassStats *>::__throw_length_error[abi:ne200100]();
}

uint64_t AVE_MSE_MakeDict(double *a1, int a2, __CFDictionary *a3)
{
  if (a2 <= 1)
  {
    AVE_CFDict_AddDouble(*MEMORY[0x29EDBD190], a1[3], a3);
    AVE_CFDict_AddDouble(*MEMORY[0x29EDBD168], a1[4], a3);
    AVE_CFDict_AddDouble(*MEMORY[0x29EDBD170], a1[5], a3);
    return 0;
  }

  LODWORD(v6) = a2;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (!Mutable)
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v14 = AVE_Log_CheckConsole(0x10u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", CurrTime, 16, LevelStr, "AVE_MSE_MakeDict", 48, "pLumaMSEArr != __null", a1, v6, a3);
        v17 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v17, 16, v27);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", CurrTime, 16, LevelStr);
      }
    }

    return 4294966293;
  }

  v8 = Mutable;
  v9 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (!v9)
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v18 = AVE_Log_CheckConsole(0x10u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", v19, 16, v20, "AVE_MSE_MakeDict", 52, "pChromaBlueMSEArr != __null", a1, v6, a3);
        v21 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v21, 16, v28);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v19, 16, v20);
      }
    }

    CFRelease(v8);
    return 4294966293;
  }

  v10 = v9;
  v11 = CFArrayCreateMutable(0, 0, MEMORY[0x29EDB9000]);
  if (v11)
  {
    v6 = v6;
    v12 = a1 + 5;
    do
    {
      AVE_CFArray_AddDouble(*(v12 - 2), v8);
      AVE_CFArray_AddDouble(*(v12 - 1), v10);
      v13 = *v12;
      v12 += 9;
      AVE_CFArray_AddDouble(v13, v11);
      --v6;
    }

    while (v6);
    CFDictionaryAddValue(a3, *MEMORY[0x29EDBD190], v8);
    CFDictionaryAddValue(a3, *MEMORY[0x29EDBD168], v10);
    CFDictionaryAddValue(a3, *MEMORY[0x29EDBD170], v11);
    v5 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0x10u, 4))
    {
      v22 = AVE_Log_CheckConsole(0x10u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p\n", v23, 16, v24, "AVE_MSE_MakeDict", 56, "pChromaRedMSEArr != __null", a1, v6, a3);
        v25 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v25, 16, v29);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create CFArray %p %d %p", v23, 16, v24);
      }
    }

    v5 = 4294966293;
  }

  CFRelease(v8);
  CFRelease(v10);
  if (v11)
  {
    CFRelease(v11);
  }

  return v5;
}

uint64_t AVE_PixelFmt_FindType(_DWORD *a1)
{
  v1 = a1[8];
  v2 = &dword_2954F15E0;
  v3 = 86;
  while (v1 != -1 && v1 != v2[4] || a1[6] != v2[2] || a1[3] != *(v2 - 1) || a1[1] != *(v2 - 3) || a1[2] != *(v2 - 2) || a1[4] != *v2 || a1[5] != v2[1])
  {
    v2 += 11;
    if (!--v3)
    {
      return 0;
    }
  }

  return *(v2 - 4);
}

uint64_t AVE_PS_CalcSizeOfavcC(int a1, int *a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v6 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v6)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %d\n", CurrTime, 212, LevelStr, "AVE_PS_CalcSizeOfavcC", a1, a2, a3);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %d", CurrTime);
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v9 = AVE_Log_CheckConsole(0xD4u);
    v10 = AVE_GetCurrTime();
    v11 = AVE_Log_GetLevelStr(8);
    v12 = *a2;
    if (v9)
    {
      printf("%lld %d AVE %s: %s:%d pInfo->iNum %d\n", v10, 212, v11, "AVE_PS_CalcSizeOfavcC", 80, v12);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s:%d pInfo->iNum %d", v13, 212, v14, "AVE_PS_CalcSizeOfavcC", 80, *a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d pInfo->iNum %d", v10, 212, v11, "AVE_PS_CalcSizeOfavcC", 80, v12);
    }
  }

  v33 = a3;
  if (*a2 < 1)
  {
    v17 = 7;
  }

  else
  {
    v15 = 0;
    v16 = (a2 + 4);
    v17 = 7;
    do
    {
      if (*v16)
      {
        if (*(v16 - 2) == a1 && (*(v16 - 3) & 0xFFFFFFFE) == 2)
        {
          v17 = v17 + *v16 - 2;
          if (AVE_Log_CheckLevel(0xD4u, 8))
          {
            v18 = AVE_Log_CheckConsole(0xD4u);
            v19 = AVE_GetCurrTime();
            v20 = AVE_Log_GetLevelStr(8);
            v21 = *v16;
            if (v18)
            {
              printf("%lld %d AVE %s: %s:%d i %d iSize %d size %d\n", v19, 212, v20, "AVE_PS_CalcSizeOfavcC", 92, v15, *v16, v17);
              v19 = AVE_GetCurrTime();
              v20 = AVE_Log_GetLevelStr(8);
            }

            syslog(3, "%lld %d AVE %s: %s:%d i %d iSize %d size %d", v19, 212, v20, "AVE_PS_CalcSizeOfavcC", 92, v15, *v16, v17);
          }
        }
      }

      ++v15;
      v16 += 4;
    }

    while (v15 < *a2);
  }

  if ((v33 - 6) >= 3)
  {
    v22 = v17;
  }

  else
  {
    v22 = (v17 + 4);
    if (AVE_Log_CheckLevel(0xD4u, 8))
    {
      v23 = AVE_Log_CheckConsole(0xD4u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(8);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d size %d\n", v24, 212, v25, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
        v26 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s:%d size %d", v26, 212, v32, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d size %d", v24, 212, v25, "AVE_PS_CalcSizeOfavcC", 101, v17 + 4);
      }
    }
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v27 = AVE_Log_CheckConsole(0xD4u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(8);
    if (v27)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d %d\n", v28, 212, v29, "AVE_PS_CalcSizeOfavcC", a1, a2, v33, v22);
      v30 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d", v30);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d", v28);
    }
  }

  return v22;
}

uint64_t AVE_PS_Compose_avcC(int a1, char *a2, unsigned int *a3, int *a4, _BYTE *a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p %d\n", CurrTime, 212, LevelStr, "AVE_PS_Compose_avcC", a1, a2, a3, a4, a5, a6);
      v13 = AVE_GetCurrTime();
      v53 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p %d", v13, 212, v53, "AVE_PS_Compose_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p %d", CurrTime, 212, LevelStr, "AVE_PS_Compose_avcC");
    }
  }

  *a5 = 1;
  a5[1] = AVC_FindProfileIdc(*a4);
  v14 = a4[5];
  v15 = a4[6];
  v16 = (a4[2] << 6) | (a4[1] << 7) | (32 * a4[3]) | (16 * a4[4]) | (8 * v14) | (4 * v15);
  a5[2] = (*(a4 + 8) << 6) | (*(a4 + 4) << 7) | (32 * *(a4 + 12)) | (16 * *(a4 + 16)) | (8 * v14) | (4 * v15);
  a5[3] = AVC_FindLevelIdc(a4[7]);
  a5[4] = -1;
  v17 = *a3;
  if (*a3 < 1)
  {
    goto LABEL_43;
  }

  v57 = a4;
  v18 = 0;
  v19 = 0;
  v20 = a2 + 4;
  v21 = a3 + 2;
  v22 = 6;
  do
  {
    v23 = v21[2];
    if (v23 && *v21 == a1 && *(v21 - 1) == 2)
    {
      v24 = v23 - 4;
      *&a5[v22] = bswap32(v23 - 4) >> 16;
      v25 = v22 + 2;
      memcpy(&a5[v25], &v20[v21[1]], (v23 - 4));
      v22 = v25 + v24;
      ++v19;
      v17 = *a3;
    }

    ++v18;
    v21 += 4;
  }

  while (v18 < v17);
  a4 = v57;
  if (!v19)
  {
LABEL_43:
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v37 = AVE_Log_CheckConsole(0xD4u);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      if (!v37)
      {
        v56 = *a3;
        v55 = 191;
        v54 = v39;
        v46 = "%lld %d AVE %s: %s:%d %s | no SPS %d";
        goto LABEL_34;
      }

      printf("%lld %d AVE %s: %s:%d %s | no SPS %d\n", v38, 212, v39, "AVE_PS_Compose_avcC", 191, "cnt != 0", *a3);
      v40 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      v41 = *a3;
      syslog(3, "%lld %d AVE %s: %s:%d %s | no SPS %d", v40);
    }

LABEL_35:
    v36 = 4294966295;
    goto LABEL_36;
  }

  a5[5] = v19 | 0xE0;
  v26 = *a3;
  if (*a3 < 1)
  {
    goto LABEL_44;
  }

  v27 = 0;
  v28 = 0;
  v29 = v22 + 1;
  v30 = a3 + 2;
  do
  {
    v31 = v30[2];
    if (v31 && *v30 == a1 && *(v30 - 1) == 3)
    {
      v32 = v31 - 4;
      *&a5[v29] = bswap32(v31 - 4) >> 16;
      v33 = a3;
      v34 = v29 + 2;
      memcpy(&a5[v34], &v20[v30[1]], (v31 - 4));
      v29 = v34 + v32;
      a3 = v33;
      ++v28;
      v26 = *v33;
    }

    ++v27;
    v30 += 4;
  }

  while (v27 < v26);
  a4 = v57;
  if (!v28)
  {
LABEL_44:
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v42 = AVE_Log_CheckConsole(0xD4u);
      v38 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | no PPS %d\n", v38, 212, v43, "AVE_PS_Compose_avcC", 226, "cnt != 0", *a3);
        v44 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        v45 = *a3;
        syslog(3, "%lld %d AVE %s: %s:%d %s | no PPS %d", v44);
        goto LABEL_35;
      }

      v56 = *a3;
      v55 = 226;
      v54 = v43;
      v46 = "%lld %d AVE %s: %s:%d %s | no PPS %d";
LABEL_34:
      syslog(3, v46, v38, 212, v54, "AVE_PS_Compose_avcC", v55, "cnt != 0", v56);
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  a5[v22] = v28;
  if ((*v57 - 6) <= 2)
  {
    v35 = &a5[v29];
    *v35 = *(v57 + 36) | 0xFC;
    v35[1] = *(v57 + 44) | 0xF8;
    v35[2] = *(v57 + 48) | 0xF8;
    v35[3] = 0;
    v29 += 4;
  }

  if (v29 <= a6)
  {
    v36 = 0;
  }

  else
  {
    v36 = 4294966277;
  }

LABEL_36:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v47 = AVE_Log_CheckConsole(0xD4u);
    v48 = AVE_GetCurrTime();
    v49 = AVE_Log_GetLevelStr(8);
    if (v47)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d\n", v48, 212, v49, "AVE_PS_Compose_avcC", a1, a2, a3, a4, a5, a6, v36);
      v50 = AVE_GetCurrTime();
      v51 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d", v50, 212, v51, "AVE_PS_Compose_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d %d", v48, 212, v49, "AVE_PS_Compose_avcC");
    }
  }

  return v36;
}

uint64_t AVE_PS_CalcSizeOfhvcC(int a1, unsigned int *a2, int a3, int a4)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v8 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %d %d\n", CurrTime, 212, LevelStr, "AVE_PS_CalcSizeOfhvcC", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %p %d %d", CurrTime);
  }

  v24 = 0;
  v11 = *a2;
  if (v11 < 1)
  {
    v13 = 23;
  }

  else
  {
    v12 = a2 + 2;
    v13 = 23;
    do
    {
      v14 = v12[2];
      if (v14)
      {
        if (*v12 == a1)
        {
          v15 = *(v12 - 1);
          if ((v15 - 1) <= 2)
          {
            if ((*(&v24 + v15) & 1) == 0)
            {
              v13 += 3;
              *(&v24 + v15) = 1;
            }

            v13 = v14 + v13 - 2;
          }
        }
      }

      v12 += 4;
      --v11;
    }

    while (v11);
  }

  if (a3)
  {
    v16 = a3 + 1;
  }

  else
  {
    v16 = 0;
  }

  v17 = a4 + 5;
  if (!a4)
  {
    v17 = 0;
  }

  v18 = (v17 + v16 + v13);
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v19 = AVE_Log_CheckConsole(0xD4u);
    v20 = AVE_GetCurrTime();
    v21 = AVE_Log_GetLevelStr(8);
    if (v19)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d %d %d\n", v20, 212, v21, "AVE_PS_CalcSizeOfhvcC", a1, a2, a3, a4, v18);
      v22 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d %d", v22, 212);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d %d %d", v20, 212);
    }
  }

  return v18;
}

uint64_t AVE_PS_ComposeNALUArray(int a1, unsigned int a2, char *a3, unsigned int *a4, _BYTE *a5)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v9 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v9)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_ComposeNALUArray", a1, a2, a3, a4, a5);
      v12 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %d %p %p %p", v12, 212, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %d %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (a2 - 1 <= 2)
  {
    *a5 = (a2 - 1) | 0xA0;
    v13 = *a4;
    v48 = a4;
    if (*a4 >= 1)
    {
      v14 = 0;
      v15 = 0;
      v46 = a3;
      v47 = a3 + 4;
      v16 = a4 + 1;
      v17 = 3;
      v18 = a1;
      do
      {
        v19 = &v16[4 * v14];
        v20 = v19[3];
        if (v20 && *v19 == __PAIR64__(v18, a2))
        {
          v51 = v15;
          *&a5[v17] = bswap32(v20 - 4) >> 16;
          v49 = v17 + 2;
          v50 = v20 - 4;
          v21 = (v20 - 4);
          memcpy(&a5[v49], &v47[v19[2]], v21);
          if (AVE_Log_CheckLevel(0xD4u, 8))
          {
            v22 = AVE_Log_CheckConsole(0xD4u);
            v23 = AVE_GetCurrTime();
            v24 = AVE_Log_GetLevelStr(8);
            v25 = *v19;
            v26 = v19[1];
            if (v22)
            {
              printf("%lld %d AVE %s: type %d layer id %d\n", v23, 212, v24, *v19, v26);
              v23 = AVE_GetCurrTime();
              v24 = AVE_Log_GetLevelStr(8);
              v25 = *v19;
              v26 = v19[1];
            }

            syslog(3, "%lld %d AVE %s: type %d layer id %d", v23, 212, v24, v25, v26);
          }

          if (v21)
          {
            v27 = 0;
            v28 = v46;
            do
            {
              if (AVE_Log_CheckLevel(0xD4u, 8))
              {
                v29 = AVE_Log_CheckConsole(0xD4u);
                v30 = AVE_GetCurrTime();
                v31 = AVE_Log_GetLevelStr(8);
                v32 = &v28[v19[2]];
                v33 = *v32;
                if (v29)
                {
                  printf("%lld %d AVE %s: %p: 0x%x\n", v30, 212, v31, &v28[v19[2]], v33);
                  v30 = AVE_GetCurrTime();
                  v31 = AVE_Log_GetLevelStr(8);
                  v32 = &v28[v19[2]];
                  v33 = *v32;
                }

                syslog(3, "%lld %d AVE %s: %p: 0x%x", v30, 212, v31, v32, v33);
              }

              v27 += 2;
              v28 += 2;
            }

            while (v27 < v21);
          }

          v17 = v49 + v50;
          v15 = v51 + 1;
          a4 = v48;
          v13 = *v48;
          v18 = a1;
        }

        ++v14;
      }

      while (v14 < v13);
      a3 = v46;
      if (v15)
      {
        *(a5 + 1) = BYTE1(v15) | (v15 << 8);
        goto LABEL_31;
      }
    }

    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v34 = AVE_Log_CheckConsole(0xD4u);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | no PS %d\n", v35, 212, v36, "AVE_PS_ComposeNALUArray", 489, "cnt != 0", *a4);
        v35 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
        v37 = *v48;
        a4 = v48;
      }

      else
      {
        v45 = *a4;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | no PS %d", v35);
    }
  }

  v17 = 4294966295;
LABEL_31:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v38 = AVE_Log_CheckConsole(0xD4u);
    v39 = AVE_GetCurrTime();
    v40 = AVE_Log_GetLevelStr(8);
    if (v38)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %p %p %p %d\n", v39, 212, v40, "AVE_PS_ComposeNALUArray", a1, a2, a3, a4, a5, v17);
      v41 = AVE_GetCurrTime();
      v44 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %p %p %d", v41, 212, v44, "AVE_PS_ComposeNALUArray");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %p %p %p %d", v39, 212, v40, "AVE_PS_ComposeNALUArray");
    }
  }

  return v17;
}

uint64_t AVE_PS_Compose_hvcC(uint64_t a1, char *a2, int *a3, uint64_t a4, int a5, const void *a6, int a7, uint64_t a8, _BYTE *a9, int a10)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v14 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v14)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d\n", CurrTime, 212, LevelStr, "AVE_PS_Compose_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
      v48 = AVE_GetCurrTime();
      v17 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d", v48, 212, v17, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %d %p %d %p %p %d", CurrTime, 212, LevelStr, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }
  }

  *a9 = 1;
  v18 = *(a8 + 20);
  LOBYTE(v18) = (32 * HEVC_FindTierFlag(*(a8 + 24))) | (v18 << 6);
  a9[1] = v18 | HEVC_FindProfileIdc(*(a8 + 28));
  AVE_PS_Compose_general_profile_compatibility_flag(a8, (a9 + 2), 4);
  AVE_PS_Compose_general_constraint_indicator_flags(a8, a9 + 6, 6);
  a9[12] = HEVC_FindLevelIdc(*(a8 + 80));
  *(a9 + 13) = 240;
  a9[15] = -4;
  a9[16] = *(a8 + 452) | 0xFC;
  a9[17] = *(a8 + 496) | 0xF8;
  a9[18] = *(a8 + 500) | 0xF8;
  *(a9 + 19) = 0;
  a9[21] = 11;
  v19 = AVE_PS_CalcNumOfType(a3, a1);
  v20 = a4 != 0;
  if (a6)
  {
    ++v20;
  }

  a9[22] = v20 + v19;
  v21 = AVE_PS_ComposeNALUArray(a1, 1u, a2, a3, a9 + 23);
  if (v21 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v32 = AVE_Log_CheckConsole(0xD4u);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose VPS failed\n", v33, 212, v34, "AVE_PS_Compose_hvcC", 593, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose VPS failed");
    }

    goto LABEL_32;
  }

  v22 = (v21 + 23);
  v23 = AVE_PS_ComposeNALUArray(a1, 2u, a2, a3, &a9[v22]);
  if (v23 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v35 = AVE_Log_CheckConsole(0xD4u);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose SPS failed\n", v36, 212, v37, "AVE_PS_Compose_hvcC", 599, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose SPS failed");
    }

    goto LABEL_32;
  }

  v24 = (v23 + v22);
  v25 = AVE_PS_ComposeNALUArray(a1, 3u, a2, a3, &a9[v24]);
  if (v25 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v38 = AVE_Log_CheckConsole(0xD4u);
      v39 = AVE_GetCurrTime();
      v40 = AVE_Log_GetLevelStr(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose PPS failed\n", v39, 212, v40, "AVE_PS_Compose_hvcC", 605, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose PPS failed");
    }

LABEL_32:
    v41 = 4294966296;
    goto LABEL_33;
  }

  v26 = v25 + v24;
  if (a4)
  {
    v27 = &a9[v26];
    *v27 = -89;
    *(v27 + 1) = 256;
    *(v27 + 3) = ((a5 - 4) >> 8) | ((a5 - 4) << 8);
    v26 = (v26 + 5);
    memcpy(&a9[v26], (a4 + 4), a5 - 4);
    LODWORD(v26) = v26 + a5 - 4;
  }

  if (a6)
  {
    v28 = &a9[v26];
    *v28 = -89;
    *(v28 + 1) = 256;
    *(v28 + 3) = BYTE1(a7) | (a7 << 8);
    v26 = v26 + 5;
    memcpy(&a9[v26], a6, a7);
    LODWORD(v26) = v26 + a7;
  }

  if (v26 <= a10)
  {
    v41 = 0;
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v29 = AVE_Log_CheckConsole(0xD4u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d offset > num %d > %d\n", v30, 212, v31, "AVE_PS_Compose_hvcC", 651, v26, a10);
        v30 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d offset > num %d > %d", v30);
    }

    v41 = 4294966277;
  }

LABEL_33:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v42 = AVE_Log_CheckConsole(0xD4u);
    v43 = AVE_GetCurrTime();
    v44 = AVE_Log_GetLevelStr(8);
    if (v42)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d\n", v43, 212, v44, "AVE_PS_Compose_hvcC", a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, v41);
      v45 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d", v45, 212, v47, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %d %p %d %p %p %d %d", v43, 212, v44, "AVE_PS_Compose_hvcC", a1, a2, a3, a4);
    }
  }

  return v41;
}

uint64_t AVE_PS_CalcNumOfType(int *a1, int a2)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v4 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d\n", CurrTime, 212, LevelStr, "AVE_PS_CalcNumOfType", a1, a2);
      v7 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", v7, 212, v20, "AVE_PS_CalcNumOfType", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d", CurrTime, 212, LevelStr, "AVE_PS_CalcNumOfType", a1, a2);
    }
  }

  if (a1)
  {
    v8 = 0;
    for (i = 1; i != 4; ++i)
    {
      if (*a1 >= 1)
      {
        v10 = *a1;
        v11 = a1 + 2;
        while (*(v11 - 1) != i || *v11 != a2)
        {
          v11 += 4;
          if (!--v10)
          {
            goto LABEL_14;
          }
        }

        v8 = (v8 + 1);
      }

LABEL_14:
      ;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v12 = AVE_Log_CheckConsole(0xD4u);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(4);
      if (v12)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d\n", v13, 212, v14, "AVE_PS_CalcNumOfType", 386, "psInfo != __null", 0, a2);
        v13 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d", v13, 212);
    }

    v8 = 0xFFFFFFFFLL;
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v15 = AVE_Log_CheckConsole(0xD4u);
    v16 = AVE_GetCurrTime();
    v17 = AVE_Log_GetLevelStr(8);
    if (v15)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d\n", v16, 212, v17, "AVE_PS_CalcNumOfType", a1, a2, v8);
      v18 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v18);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d", v16);
    }
  }

  return v8;
}

uint64_t AVE_PS_CalcSizeOflhvC(int a1, unsigned int *a2)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v4 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %p\n", CurrTime, 212, LevelStr, "AVE_PS_CalcSizeOflhvC", a1, a2);
      v7 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", v7, 212, v18, "AVE_PS_CalcSizeOflhvC", a1, a2);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p", CurrTime, 212, LevelStr, "AVE_PS_CalcSizeOflhvC", a1, a2);
    }
  }

  v19 = 0;
  v8 = *a2;
  if (v8 < 1)
  {
    v10 = 6;
  }

  else
  {
    v9 = a2 + 2;
    v10 = 6;
    do
    {
      v11 = v9[2];
      if (v11)
      {
        if (*v9 == a1)
        {
          v12 = *(v9 - 1);
          if ((v12 & 0xFFFFFFFE) == 2)
          {
            if ((*(&v19 + v12) & 1) == 0)
            {
              LODWORD(v10) = v10 + 3;
              *(&v19 + v12) = 1;
            }

            v10 = (v11 + v10 - 2);
          }
        }
      }

      v9 += 4;
      --v8;
    }

    while (v8);
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v13 = AVE_Log_CheckConsole(0xD4u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(8);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %d\n", v14, 212, v15, "AVE_PS_CalcSizeOflhvC", a1, a2, v10);
      v16 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v16);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %d", v14);
    }
  }

  return v10;
}

uint64_t AVE_PS_Compose_lhvC(int a1, char *a2, int *a3, const void *a4, _BYTE *a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v12 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %p %p %p %d\n", CurrTime, 212, LevelStr, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6);
      v15 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", v15, 212, v31);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %p %p %p %d", CurrTime, 212, LevelStr);
    }
  }

  *a5 = -67047423;
  a5[4] = -53;
  a5[5] = AVE_PS_CalcNumOfType(a3, a1);
  v16 = AVE_PS_ComposeNALUArray(a1, 2u, a2, a3, a5 + 6);
  if (v16 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v20 = AVE_Log_CheckConsole(0xD4u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose SPS failed\n", v21, 212, v22, "AVE_PS_Compose_lhvC", 789, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose SPS failed");
    }

    goto LABEL_18;
  }

  v17 = (v16 + 6);
  v18 = AVE_PS_ComposeNALUArray(a1, 3u, a2, a3, &a5[v17]);
  if (v18 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xD4u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (v23)
      {
        printf("%lld %d AVE %s: %s:%d %s | compose PPS failed\n", v24, 212, v25, "AVE_PS_Compose_lhvC", 795, "retOffset > 0");
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | compose PPS failed");
    }

LABEL_18:
    v19 = 4294966296;
    goto LABEL_19;
  }

  if (v18 + v17 <= a6)
  {
    v19 = 0;
  }

  else
  {
    v19 = 4294966277;
  }

LABEL_19:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v26 = AVE_Log_CheckConsole(0xD4u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(8);
    if (v26)
    {
      printf("%lld %d AVE %s: %s Exit %p %p %p %p %d %d\n", v27, 212, v28, "AVE_PS_Compose_lhvC", a2, a3, a4, a5, a6, v19);
      v29 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v29, 212, v32);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %p %p %p %d %d", v27, 212, v28);
    }
  }

  return v19;
}

uint64_t AVE_PS_Make_avcC(int a1, char *a2, int *a3, int *a4, __CFData **a5)
{
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_avcC", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v52 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v52);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (!a2 || !a3 || !a4 || !a5)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v24 = AVE_Log_CheckConsole(0xD4u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v25, 212, v26, "AVE_PS_Make_avcC", 835, "pInData != __null && pInfo != __null && pSPS != __null && ppCFData != __null", a1, a2, a3, a4, a5);
        v27 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v27, 212, v54, "AVE_PS_Make_avcC", 835);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v25, 212, v26, "AVE_PS_Make_avcC", 835);
      }
    }

    goto LABEL_29;
  }

  *a5 = 0;
  v14 = AVE_PS_CalcSizeOfavcC(a1, a3, *a4);
  if (v14 <= 0)
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v28 = AVE_Log_CheckConsole(0xD4u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d\n", v29, 212, v30, "AVE_PS_Make_avcC", 842, "size > 0", a1, a2, a3, a4, v14);
        v31 = AVE_GetCurrTime();
        v55 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v31, 212, v55, "AVE_PS_Make_avcC", 842);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to calculate the size %d %p %p %p %d", v29, 212, v30, "AVE_PS_Make_avcC", 842);
      }
    }

LABEL_29:
    v19 = 4294966296;
    goto LABEL_30;
  }

  Mutable = CFDataCreateMutable(0, v14);
  if (Mutable)
  {
    v60 = a5;
    v16 = Mutable;
    CFDataSetLength(Mutable, v14);
    v59 = v16;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    if (MutableBytePtr)
    {
      v18 = MutableBytePtr;
      v19 = AVE_PS_Compose_avcC(a1, a2, a3, a4, MutableBytePtr, v14);
      if (AVE_Log_CheckLevel(0xD4u, 8))
      {
        v20 = AVE_Log_CheckConsole(0xD4u);
        v21 = AVE_GetCurrTime();
        v22 = AVE_Log_GetLevelStr(8);
        if (v20)
        {
          printf("%lld %d AVE %s: %s:%d avcC data: size %d\n", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
          v23 = AVE_GetCurrTime();
          v53 = AVE_Log_GetLevelStr(8);
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v23, 212, v53, "AVE_PS_Make_avcC", 861, v14);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d avcC data: size %d", v21, 212, v22, "AVE_PS_Make_avcC", 861, v14);
        }
      }

      v58 = a1;
      for (i = 0; i < v14; i += 2)
      {
        if (AVE_Log_CheckLevel(0xD4u, 8))
        {
          v46 = AVE_Log_CheckConsole(0xD4u);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(8);
          v49 = *v18;
          if (v46)
          {
            printf("%lld %d AVE %s: %p: 0x%x\n", v47, 212, v48, v18, v49);
            v50 = AVE_GetCurrTime();
            v51 = AVE_Log_GetLevelStr(8);
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v50, 212, v51, v18, *v18);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %p: 0x%x", v47, 212, v48, v18, v49);
          }
        }

        v18 += 2;
      }

      v44 = v59;
      a5 = v60;
      *v60 = v59;
      a1 = v58;
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v36 = AVE_Log_CheckConsole(0xD4u);
      v37 = AVE_GetCurrTime();
      v38 = AVE_Log_GetLevelStr(4);
      if (v36)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", a1, a2, a3, a4, v16, v14);
        v37 = AVE_GetCurrTime();
        v38 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get memory address %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC", 854, "pData != __null", a1, a2, a3, a4, v16, v14);
      v44 = v16;
      v19 = 4294966293;
    }

    else
    {
      v19 = 4294966293;
      v44 = v16;
    }

    CFRelease(v44);
    goto LABEL_30;
  }

  if (AVE_Log_CheckLevel(0xD4u, 4))
  {
    v32 = AVE_Log_CheckConsole(0xD4u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(4);
    if (v32)
    {
      printf("%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d\n", v33, 212, v34, "AVE_PS_Make_avcC", 847, "pCFData != __null", a1, a2, a3, a4, v14);
      v35 = AVE_GetCurrTime();
      v56 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v35, 212, v56, "AVE_PS_Make_avcC", 847);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to allocate memory %d %p %p %p %d", v33, 212, v34, "AVE_PS_Make_avcC", 847);
    }
  }

  v19 = 4294966293;
LABEL_30:
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v39 = AVE_Log_CheckConsole(0xD4u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(8);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v40, 212, v41, "AVE_PS_Make_avcC", a1, a2, a3, a4, a5, v19);
      v42 = AVE_GetCurrTime();
      v57 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v42, 212, v57, "AVE_PS_Make_avcC");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v40, 212, v41, "AVE_PS_Make_avcC");
    }
  }

  return v19;
}

uint64_t AVE_PS_Make_avcC_Dict(int a1, char *a2, int *a3, int *a4, __CFDictionary **a5)
{
  v47 = 0;
  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v10 = AVE_Log_CheckConsole(0xD4u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %p %p %p %p\n", CurrTime, 212, LevelStr, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5);
      v13 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", v13, 212, v41);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %d %p %p %p %p", CurrTime, 212, LevelStr);
    }
  }

  if (a2 && a3 && a4 && a5)
  {
    *a5 = 0;
    avcC = AVE_PS_Make_avcC(a1, a2, a3, a4, &v47);
    if (avcC)
    {
      v15 = avcC;
      if (AVE_Log_CheckLevel(0xD4u, 4))
      {
        v16 = AVE_Log_CheckConsole(0xD4u);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d\n", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0", a1, a2, a3, a4, a5, v15);
          v19 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v19, 212, v42, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | failed to compose %d %p %p %p %p %d", v17, 212, v18, "AVE_PS_Make_avcC_Dict", 918, "ret == 0");
        }
      }

      v25 = 0;
      v27 = 0;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      if (Mutable)
      {
        v25 = Mutable;
        CFDictionaryAddValue(Mutable, @"avcC", v47);
        v26 = CFDictionaryCreateMutable(0, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
        if (v26)
        {
          v27 = v26;
          CFDictionaryAddValue(v26, *MEMORY[0x29EDB92C8], v25);
          CFDictionaryAddValue(v27, *MEMORY[0x29EDB92B8], @"H.264");
          v15 = 0;
          *a5 = v27;
          goto LABEL_33;
        }

        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v32 = AVE_Log_CheckConsole(0xD4u);
          v33 = AVE_GetCurrTime();
          v34 = AVE_Log_GetLevelStr(4);
          if (v32)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p\n", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932, "pDict != __null", a1, a2, a3, a4, v25);
            v35 = AVE_GetCurrTime();
            v45 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v35, 212, v45, "AVE_PS_Make_avcC_Dict", 932);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create dictionary %d %p %p %p %p", v33, 212, v34, "AVE_PS_Make_avcC_Dict", 932);
          }
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD4u, 4))
        {
          v28 = AVE_Log_CheckConsole(0xD4u);
          v29 = AVE_GetCurrTime();
          v30 = AVE_Log_GetLevelStr(4);
          if (v28)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p\n", v29, 212, v30, "AVE_PS_Make_avcC_Dict", 924, "pDataDict != __null", a2, a3, a4, v47);
            v31 = AVE_GetCurrTime();
            v44 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v31, 212, v44, "AVE_PS_Make_avcC_Dict");
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d %s | failed to create data dictionary %p %p %p %p", v29, 212, v30, "AVE_PS_Make_avcC_Dict");
          }
        }

        v25 = 0;
      }

      v27 = 0;
      v15 = 4294966293;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD4u, 4))
    {
      v20 = AVE_Log_CheckConsole(0xD4u);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p\n", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911, "pInData != __null && pInfo != __null && pSPS != __null && ppCFDict != __null", a1, a2, a3, a4, a5);
        v23 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v23, 212, v43, "AVE_PS_Make_avcC_Dict", 911);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %d %p %p %p %p", v21, 212, v22, "AVE_PS_Make_avcC_Dict", 911);
      }
    }

    v25 = 0;
    v27 = 0;
    v15 = 4294966296;
  }

LABEL_33:
  if (v47)
  {
    CFRelease(v47);
    v47 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v15 && v27)
  {
    CFRelease(v27);
  }

  if (AVE_Log_CheckLevel(0xD4u, 8))
  {
    v36 = AVE_Log_CheckConsole(0xD4u);
    v37 = AVE_GetCurrTime();
    v38 = AVE_Log_GetLevelStr(8);
    if (v36)
    {
      printf("%lld %d AVE %s: %s Exit %d %p %p %p %p %d\n", v37, 212, v38, "AVE_PS_Make_avcC_Dict", a1, a2, a3, a4, a5, v15);
      v39 = AVE_GetCurrTime();
      v46 = AVE_Log_GetLevelStr(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v39, 212, v46, "AVE_PS_Make_avcC_Dict");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %p %p %p %p %d", v37, 212, v38, "AVE_PS_Make_avcC_Dict");
    }
  }

  return v15;
}