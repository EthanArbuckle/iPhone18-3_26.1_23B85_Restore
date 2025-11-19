int *AVE_MCTF_SMap_FindMap(int *result, int a2)
{
  if (result)
  {
    v3 = *result++;
    v2 = v3;
    if (v3 < 1)
    {
      return 0;
    }

    else
    {
      while (*result != a2)
      {
        result += 24;
        if (!--v2)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t AVE_MCTF_SMap_FindRange(uint64_t result, int a2)
{
  if (result)
  {
    if (*(result + 8) <= a2)
    {
      return 0;
    }

    else
    {
      result += 12 * a2 + 12;
    }
  }

  return result;
}

uint64_t AVE_MCTF_SMap_GetStrengthLevel(uint64_t result, int a2, _DWORD *a3)
{
  if (result)
  {
    v3 = result;
    if (*(result + 8) <= a2)
    {
      return 4294966296;
    }

    else
    {
      result = 0;
      *a3 = *(v3 + 12 * a2 + 20);
    }
  }

  return result;
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

uint64_t AVE_MCTF_SMap_Print(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  v7 = a3;
  if (AVE_Log_CheckLevel(a2, a3))
  {
    v8 = *(a1 + 8);
    if (v8 >= 1)
    {
      v9 = 0;
      if (v8 >= 7)
      {
        v10 = 7;
      }

      else
      {
        v10 = v8;
      }

      v11 = (a1 + 12);
      do
      {
        if (AVE_Log_CheckLevel(a2, v7))
        {
          v12 = AVE_Log_CheckConsole(a2);
          if (a3 < 0)
          {
            if ((-a3 & 0x20) != 0)
            {
              v18 = 0;
            }

            else
            {
              v18 = v12;
            }

            v19 = v11[1];
            if (v18 == 1)
            {
              printf("\t[%p %s rI:%d/%d L:%d U:%d S:%d]\n", v11, a4, v9, *(a1 + 8), *v11, v11[1], v11[2]);
              v20 = *(a1 + 8);
              v24 = v11[1];
              v26 = v11[2];
            }

            else
            {
              v25 = v11[1];
              v28 = v11[2];
              v22 = *(a1 + 8);
            }

            v23 = *v11;
            syslog(3, "\t[%p %s rI:%d/%d L:%d U:%d S:%d]", v11);
          }

          else
          {
            v13 = v12 ^ 1;
            CurrTime = AVE_GetCurrTime();
            LevelStr = AVE_Log_GetLevelStr(v7);
            v16 = v11[1];
            if ((v13 | ((a3 & 0x20) >> 5)))
            {
              v31 = v11[1];
              v33 = v11[2];
              v27 = *(a1 + 8);
            }

            else
            {
              printf("%lld %d AVE %s: \t[%p %s rI:%d/%d L:%d U:%d S:%d]\n", CurrTime, a2, LevelStr, v11, a4, v9, *(a1 + 8), *v11, v11[1], v11[2]);
              CurrTime = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(v7);
              v17 = *(a1 + 8);
              v30 = v11[1];
              v32 = v11[2];
            }

            v29 = *v11;
            syslog(3, "%lld %d AVE %s: \t[%p %s rI:%d/%d L:%d U:%d S:%d]", CurrTime, a2);
          }
        }

        ++v9;
        v11 += 3;
      }

      while (v10 != v9);
    }
  }

  return 0;
}

_DWORD *AVE_DevCap_Throughput_Find(int *a1, int a2, uint64_t a3)
{
  v5 = *a1;
  v3 = a1 + 2;
  v4 = v5;
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    while (1)
    {
      v7 = &v3[8 * v6];
      if (v7[1] == a2)
      {
        break;
      }

      if (++v6 >= v4)
      {
        return v7;
      }
    }

    ++v6;
  }

  while (*(v7 + 1) >= a3 && v6 < v4);
  return v7;
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
      MEMORY[0x29C24E920]();
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
      MEMORY[0x29C24E920]();
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

uint64_t AVE_SEI::GenerateAmbientViewingEnvironmentNALU(void *a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, _DWORD *a6)
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

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v16, a5, a6);
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

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x40) == 0)
  {
    goto LABEL_21;
  }

  v35 = 0;
  v18 = AVE_SEI_WriteAmbientViewingEnvironment(a2, a3, (a4 + 148), *(a1 + 5), &v35);
  v19 = v35;
  *a6 = v35;
  if (!v18)
  {
    if ((a1[2] & 2) != 0)
    {
      *a2 = bswap32(v19 - 4);
    }

LABEL_21:
    v20 = 0;
    v25 = 7;
    goto LABEL_24;
  }

  v20 = v18;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v21 = AVE_Log_CheckConsole(0xD3u);
    v22 = AVE_GetCurrTime();
    v23 = AVE_Log_GetLevelStr(4);
    v24 = *a1;
    if (v21)
    {
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", 2237, "ret == 0", a1, *a1, v20);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
    }

    v33 = *a1;
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Content Color Volume SEI %d", v22, 211, v23, "AVE_SEI");
  }

  v25 = 4;
LABEL_24:
  if (AVE_Log_CheckLevel(0xD3u, v25))
  {
    v26 = AVE_Log_CheckConsole(0xD3u);
    v27 = AVE_GetCurrTime();
    v28 = AVE_Log_GetLevelStr(v25);
    v29 = *a1;
    if (v26)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d\n", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29, a2, a4, *(a4 + 24), a5, a6, v20);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(v25);
      v34 = *(a4 + 24);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v30, 211, v31, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, *a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p id:%llu %p %p %lld 0x%llx %p %d", v27, 211, v28, "AVE_SEI", "GenerateAmbientViewingEnvironmentNALU", a1, v29);
    }
  }

  return v20;
}

uint64_t AVE_SEI::GenerateLuxLevelNALU(void *a1, unsigned __int8 *a2, int a3, uint64_t a4, uint64_t a5, int *a6)
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

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v16, a5, a6);
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

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %p %lld 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateLuxLevelNALU", a1, v15, a2, a4, v17, a5, a6);
  }

  *a6 = 0;
  if ((a5 & a1[1] & *(a4 + 32) & 0x80) == 0)
  {
    goto LABEL_19;
  }

  v18 = AVE_SEI_WriteLuxLevel(a2, a3, *(a4 + 24), *(a4 + 60), *(a1 + 5), 1, a6);
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
      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d\n", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v25 = AVE_GetCurrTime();
      v20 = 4;
      v26 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v25, 211, v26, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Error while writing Lux Level SEI %d", v22, 211, v23, "AVE_SEI", "GenerateLuxLevelNALU", 1957, "ret == 0", a1, *a1, v19);
      v20 = 4;
    }
  }

LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v20))
  {
    v27 = AVE_Log_CheckConsole(0xD3u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(v20);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d\n", v28, 211, v29, "AVE_SEI", "GenerateLuxLevelNALU", a1, *a1, a4, *(a4 + 24), a5, a6, v19);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(v20);
      v32 = *(a4 + 24);
      v31 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %p %d", v28, 211, v29, "AVE_SEI", "GenerateLuxLevelNALU", a1);
  }

  return v19;
}

uint64_t AVE_SEI::GenerateUnregisteredSEINALU(uint64_t *a1, unsigned __int8 *a2, int a3, void *a4, uint64_t a5, unsigned int *a6)
{
  v199 = *MEMORY[0x29EDCA608];
  *v198 = xmmword_295650730;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v13 = *a1;
    if (v10)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, a3, a4, a5, a6);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", v14, 211, v15, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, a3, a4, a5, a6);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %d %p 0x%llx %p", CurrTime, 211, LevelStr, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v13, a2, a3, a4, a5, a6);
    }
  }

  *a6 = 0;
  v16 = a4[4] & a1[1];
  if ((a5 & v16 & 0x3FF00000000) == 0)
  {
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v28 = AVE_Log_CheckConsole(0xD3u);
      v29 = AVE_GetCurrTime();
      v30 = AVE_Log_GetLevelStr(7);
      v31 = *a1;
      if (v28)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early\n", v29, 211, v30, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v31);
        v32 = AVE_GetCurrTime();
        v33 = AVE_Log_GetLevelStr(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early", v32, 211, v33, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, *a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu no unregistered SEI bits active, exiting early", v29, 211, v30, "AVE_SEI", "GenerateUnregisteredSEINALU", 1743, a1, v31);
      }
    }

    goto LABEL_21;
  }

  v17 = v16 & a5;
  v18 = AVE_SEI::EstimateUnregisteredSEIMessageSizes(a1, a4, v16 & a5);
  if (v18 < 1)
  {
LABEL_21:
    v23 = 0;
    goto LABEL_46;
  }

  v19 = v18;
  v20 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v20)
  {
    v21 = v20;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v20, a2, a3, 0);
    v22 = AVE_SyntaxWriter::WriteStartCode(v21);
    if (v22)
    {
      v23 = v22;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v24 = AVE_Log_CheckConsole(0xD3u);
        v25 = AVE_GetCurrTime();
        v26 = AVE_Log_GetLevelStr(4);
        v27 = *a1;
        if (v24)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
          v25 = AVE_GetCurrTime();
          v26 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v25, 211, v26, "AVE_SEI", "GenerateUnregisteredSEINALU", 1762, "ret == 0", a1, *a1, v23);
      }

      goto LABEL_41;
    }

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v37 = AVE_Log_CheckConsole(0xD3u);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(8);
      v40 = *(v21 + 3);
      v41 = *(v21 + 4) + v40;
      if (v37)
      {
        printf("%lld %d AVE %s: %s::%s:%d start code %p (%d)\n", v38, 211, v39, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + v40), v40);
        v42 = AVE_GetCurrTime();
        v43 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v42, 211, v43, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d start code %p (%d)", v38, 211, v39, "AVE_SEI", "GenerateUnregisteredSEINALU", 1765, (*(v21 + 4) + v40), v40);
      }
    }

    v44 = *(a1 + 5);
    if (v44 == 2)
    {
      HEVCHeaderStart = AVE_SEI_GenerateHEVCHeaderStart(39, v21);
      if (HEVCHeaderStart)
      {
        v23 = HEVCHeaderStart;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v46 = v21;
          v52 = AVE_Log_CheckConsole(0xD3u);
          v53 = AVE_GetCurrTime();
          v54 = AVE_Log_GetLevelStr(4);
          v55 = *a1;
          if (v52)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v53, 211, v54, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
            v53 = AVE_GetCurrTime();
            v54 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v53, 211, v54, "AVE_SEI", "GenerateUnregisteredSEINALU", 1778, "ret == 0", a1, *a1, v23);
          goto LABEL_74;
        }

LABEL_41:
        v56 = 0;
        v57 = 0;
        goto LABEL_42;
      }
    }

    else
    {
      if (v44 != 1)
      {
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v67 = AVE_Log_CheckConsole(0xD3u);
          v68 = AVE_GetCurrTime();
          v69 = AVE_Log_GetLevelStr(4);
          v70 = *a1;
          v71 = *(a1 + 5);
          if (v67)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL\n", v68, 211, v69, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v71);
            v72 = AVE_GetCurrTime();
            v73 = AVE_Log_GetLevelStr(4);
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v72, 211, v73, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, *(a1 + 5));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu encType %d not recognized. FAIL", v68, 211, v69, "AVE_SEI", "GenerateUnregisteredSEINALU", 1783, "false", a1, *a1, v71);
          }
        }

        v56 = 0;
        v57 = 0;
        v23 = 4294966295;
        goto LABEL_42;
      }

      AVCHeaderStart = AVE_SEI_GenerateAVCHeaderStart(v21);
      if (AVCHeaderStart)
      {
        v23 = AVCHeaderStart;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v46 = v21;
          v47 = AVE_Log_CheckConsole(0xD3u);
          v48 = AVE_GetCurrTime();
          v49 = AVE_Log_GetLevelStr(4);
          v50 = *a1;
          if (v47)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v48, 211, v49, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
            v48 = AVE_GetCurrTime();
            v49 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v48, 211, v49, "AVE_SEI", "GenerateUnregisteredSEINALU", 1772, "ret == 0", a1, *a1, v23);
LABEL_74:
          v56 = 0;
          v57 = 0;
          v21 = v46;
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v74 = AVE_Log_CheckConsole(0xD3u);
      v75 = AVE_GetCurrTime();
      v76 = AVE_Log_GetLevelStr(8);
      v77 = *a1;
      v78 = *(v21 + 3);
      v79 = *(v21 + 4) + v78;
      if (v74)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)\n", v75, 211, v76, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v77, (*(v21 + 4) + v78), v78);
        v80 = AVE_GetCurrTime();
        v81 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v80, 211, v81, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, *a1, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu nal_unit_type %p (%d)", v75, 211, v76, "AVE_SEI", "GenerateUnregisteredSEINALU", 1788, a1, v77, (*(v21 + 4) + v78), v78);
      }
    }

    AVE_SyntaxWriter::WriteU(v21, 5u, 8);
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v82 = AVE_Log_CheckConsole(0xD3u);
      v83 = AVE_GetCurrTime();
      v84 = AVE_Log_GetLevelStr(8);
      v85 = *a1;
      v86 = *(v21 + 3);
      v87 = *(v21 + 4) + v86;
      if (v82)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)\n", v83, 211, v84, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v85, (*(v21 + 4) + v86), v86);
        v88 = AVE_GetCurrTime();
        v89 = AVE_Log_GetLevelStr(8);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v88, 211, v89, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, *a1, (*(v21 + 4) + *(v21 + 3)), *(v21 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu payloadType %p (%d)", v83, 211, v84, "AVE_SEI", "GenerateUnregisteredSEINALU", 1794, a1, v85, (*(v21 + 4) + v86), v86);
      }
    }

    v90 = malloc_type_malloc(v19, 0x100004077774924uLL);
    if (!v90)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v95 = AVE_Log_CheckConsole(0xD3u);
        v96 = AVE_GetCurrTime();
        v97 = AVE_Log_GetLevelStr(4);
        v98 = *a1;
        if (v95)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.\n", v96, 211, v97, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v98);
          v99 = AVE_GetCurrTime();
          v100 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v99, 211, v100, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu malloc for SEI failed.", v96, 211, v97, "AVE_SEI", "GenerateUnregisteredSEINALU", 1800, "pSEIData != __null", a1, v98);
        }
      }

      v56 = 0;
      v57 = 0;
      v23 = 4294966293;
      goto LABEL_42;
    }

    v193 = v21;
    v194 = v90;
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v91 = AVE_Log_CheckConsole(0xD3u);
      v92 = AVE_GetCurrTime();
      v93 = AVE_Log_GetLevelStr(8);
      v94 = *a1;
      if (v91)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer\n", v92, 211, v93, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
        v92 = AVE_GetCurrTime();
        v93 = AVE_Log_GetLevelStr(8);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for SEI Buffer", v92, 211, v93, "AVE_SEI", "GenerateUnregisteredSEINALU", 1803, a1, *a1, v19);
    }

    v101 = 0;
    v102 = &off_2A1C82C38;
    v103 = 10;
    v104 = v194;
    do
    {
      if ((v17 >> *(v102 - 2)))
      {
        v197 = 0;
        (*v102)(a4, v104, v19, &v197);
        v104 += v197;
        v19 = (v19 - v197);
        v101 += v197;
      }

      v102 += 2;
      --v103;
    }

    while (v103);
    v192 = v101 + v101 / 2 + 17;
    v56 = malloc_type_malloc(v192, 0x100004077774924uLL);
    if (v56)
    {
      if (AVE_Log_CheckLevel(0xD3u, 8))
      {
        v105 = AVE_Log_CheckConsole(0xD3u);
        v106 = AVE_GetCurrTime();
        v107 = AVE_Log_GetLevelStr(8);
        v108 = *a1;
        if (v105)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer\n", v106, 211, v107, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v192);
          v106 = AVE_GetCurrTime();
          v107 = AVE_Log_GetLevelStr(8);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu allocated %d bytes for EPB Buffer", v106, 211, v107, "AVE_SEI", "GenerateUnregisteredSEINALU", 1828, a1, *a1, v192);
      }

      v115 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
      if (v115)
      {
        v116 = v115;
        AVE_SyntaxWriter::AVE_SyntaxWriter(v115, v56, v192, 1);
        v191 = v116;
        v23 = AVE_SyntaxWriter::WriteBytes(v116, v198, 16);
        if (v23)
        {
          if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v117 = AVE_Log_CheckConsole(0xD3u);
            v118 = AVE_GetCurrTime();
            v119 = AVE_Log_GetLevelStr(4);
            v120 = *a1;
            if (v117)
            {
              printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v118, 211, v119, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
              v118 = AVE_GetCurrTime();
              v119 = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v118, 211, v119, "AVE_SEI", "GenerateUnregisteredSEINALU", 1838, "ret == 0", a1, *a1, v23);
          }
        }

        else
        {
          v23 = AVE_SyntaxWriter::WriteBytes(v116, v194, v101);
          if (v23)
          {
            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v124 = AVE_Log_CheckConsole(0xD3u);
              v125 = AVE_GetCurrTime();
              v126 = AVE_Log_GetLevelStr(4);
              v127 = *a1;
              if (v124)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v125, 211, v126, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
                v125 = AVE_GetCurrTime();
                v126 = AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v125, 211, v126, "AVE_SEI", "GenerateUnregisteredSEINALU", 1843, "ret == 0", a1, *a1, v23);
            }
          }

          else
          {
            v129 = *(v116 + 3);
            v128 = *(v191 + 4);
            if (v128 >= 0)
            {
              v130 = *(v191 + 4);
            }

            else
            {
              v130 = v128 + 7;
            }

            v190 = *(v193 + 3);
            v131 = v129 - (v130 >> 3);
            if (AVE_Log_CheckLevel(0xD3u, 8))
            {
              v132 = AVE_Log_CheckConsole(0xD3u);
              v133 = AVE_GetCurrTime();
              v134 = AVE_Log_GetLevelStr(8);
              v135 = *a1;
              v136 = *(v193 + 3);
              v137 = *(v193 + 4) + v136;
              if (v132)
              {
                printf("%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)\n", v133, 211, v134, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v135, v129 - (v130 >> 3), (*(v193 + 4) + v136), v136);
                v138 = AVE_GetCurrTime();
                v139 = AVE_Log_GetLevelStr(8);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v138, 211, v139, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, *a1, v131, (*(v193 + 4) + *(v193 + 3)), *(v193 + 3));
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu start payloadSize %d %p (%d)", v133, 211, v134, "AVE_SEI", "GenerateUnregisteredSEINALU", 1852, a1, v135, v129 - (v130 >> 3), (*(v193 + 4) + v136), v136);
              }
            }

            v23 = AVE_SEI_WritePayloadSize(v131, v193);
            if (v23)
            {
              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v140 = AVE_Log_CheckConsole(0xD3u);
                v141 = AVE_GetCurrTime();
                v142 = AVE_Log_GetLevelStr(4);
                v143 = *a1;
                if (v140)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v141, 211, v142, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
                  v141 = AVE_GetCurrTime();
                  v142 = AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v141, 211, v142, "AVE_SEI", "GenerateUnregisteredSEINALU", 1856, "ret == 0", a1, *a1, v23);
              }
            }

            else
            {
              if (AVE_Log_CheckLevel(0xD3u, 8))
              {
                v144 = AVE_Log_CheckConsole(0xD3u);
                v145 = AVE_GetCurrTime();
                v146 = AVE_Log_GetLevelStr(8);
                v147 = *a1;
                v148 = *(v193 + 3);
                v149 = *(v193 + 4) + v148;
                if (v144)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)\n", v145, 211, v146, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v147, v148 - v190, (*(v193 + 4) + v148), v148);
                  v150 = AVE_GetCurrTime();
                  v151 = AVE_Log_GetLevelStr(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v150, 211, v151, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, *a1, *(v193 + 3) - v190, (*(v193 + 4) + *(v193 + 3)), *(v193 + 3));
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu end payloadSize bytes %d %p (%d)", v145, 211, v146, "AVE_SEI", "GenerateUnregisteredSEINALU", 1860, a1, v147, v148 - v190, (*(v193 + 4) + v148), v148);
                }
              }

              if (AVE_Log_CheckLevel(0xD3u, 8))
              {
                v152 = AVE_Log_CheckConsole(0xD3u);
                v153 = AVE_GetCurrTime();
                v154 = AVE_Log_GetLevelStr(8);
                v155 = *(v191 + 3);
                v156 = *(v193 + 3);
                if (v152)
                {
                  printf("%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d\n", v153, 211, v154, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v155, v192, *(v193 + 3), a3);
                  v157 = AVE_GetCurrTime();
                  v158 = AVE_Log_GetLevelStr(8);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v157, 211, v158, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, *(v191 + 3), v192, *(v193 + 3), a3);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d Copying SyntaxWriter %d/%d into SyntaxWriterNALU %d/%d", v153, 211, v154, "AVE_SEI", "GenerateUnregisteredSEINALU", 1864, v155, v192, *(v193 + 3), a3);
                }
              }

              v23 = AVE_SyntaxWriter::CopyFromSyntaxWriter(v193, v191);
              if (v23)
              {
                if (AVE_Log_CheckLevel(0xD3u, 4))
                {
                  v159 = AVE_Log_CheckConsole(0xD3u);
                  v160 = AVE_GetCurrTime();
                  v161 = AVE_Log_GetLevelStr(4);
                  v162 = *a1;
                  if (v159)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d\n", v160, 211, v161, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                    v160 = AVE_GetCurrTime();
                    v161 = AVE_Log_GetLevelStr(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to copy payload into SyntaxWriterNALU ret %d", v160, 211, v161, "AVE_SEI", "GenerateUnregisteredSEINALU", 1870, "ret == 0", a1, *a1, v23);
                }
              }

              else
              {
                if (AVE_Log_CheckLevel(0xD3u, 8))
                {
                  v163 = AVE_Log_CheckConsole(0xD3u);
                  v164 = AVE_GetCurrTime();
                  v165 = AVE_Log_GetLevelStr(8);
                  v166 = *a1;
                  v167 = *(v193 + 3);
                  v168 = *(v193 + 4) + v167;
                  if (v163)
                  {
                    printf("%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)\n", v164, 211, v165, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v166, (*(v193 + 4) + v167), v167);
                    v169 = AVE_GetCurrTime();
                    v170 = AVE_Log_GetLevelStr(8);
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v169, 211, v170, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, *a1, (*(v193 + 4) + *(v193 + 3)), *(v193 + 3));
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu data %p (%d)", v164, 211, v165, "AVE_SEI", "GenerateUnregisteredSEINALU", 1874, a1, v166, (*(v193 + 4) + v167), v167);
                  }
                }

                v23 = AVE_SyntaxWriter::AlignToByte(v193);
                if (v23)
                {
                  if (AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    v171 = AVE_Log_CheckConsole(0xD3u);
                    v172 = AVE_GetCurrTime();
                    v173 = AVE_Log_GetLevelStr(4);
                    v174 = *a1;
                    if (v171)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu %d\n", v172, 211, v173, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                      v172 = AVE_GetCurrTime();
                      v173 = AVE_Log_GetLevelStr(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu %d", v172, 211, v173, "AVE_SEI", "GenerateUnregisteredSEINALU", 1879, "ret == 0", a1, *a1, v23);
                  }
                }

                else
                {
                  if (AVE_Log_CheckLevel(0xD3u, 8))
                  {
                    v175 = AVE_Log_CheckConsole(0xD3u);
                    v176 = AVE_GetCurrTime();
                    v177 = AVE_Log_GetLevelStr(8);
                    v178 = *a1;
                    v179 = *(v193 + 3);
                    v180 = *(v193 + 4) + v179;
                    if (v175)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)\n", v176, 211, v177, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v178, (*(v193 + 4) + v179), v179);
                      v181 = AVE_GetCurrTime();
                      v182 = AVE_Log_GetLevelStr(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v181, 211, v182, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, *a1, (*(v193 + 4) + *(v193 + 3)), *(v193 + 3));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu rbsp_trailing_bits %p (%d)", v176, 211, v177, "AVE_SEI", "GenerateUnregisteredSEINALU", 1882, a1, v178, (*(v193 + 4) + v179), v179);
                    }
                  }

                  *a6 = *(v193 + 3);
                  if (AVE_Log_CheckLevel(0xD3u, 8))
                  {
                    v183 = AVE_Log_CheckConsole(0xD3u);
                    v184 = AVE_GetCurrTime();
                    v185 = AVE_Log_GetLevelStr(8);
                    v186 = *a1;
                    v187 = *a6;
                    if (v183)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d\n", v184, 211, v185, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v187);
                      v188 = AVE_GetCurrTime();
                      v189 = AVE_Log_GetLevelStr(8);
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v188, 211, v189, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, *a6);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu: final SEISize %d", v184, 211, v185, "AVE_SEI", "GenerateUnregisteredSEINALU", 1885, a1, *a1, v187);
                    }
                  }

                  v23 = 0;
                  if ((a1[2] & 2) != 0)
                  {
                    *a2 = bswap32(*a6 - 4);
                  }
                }
              }
            }
          }
        }

        v21 = v193;
        v57 = v194;
        (*(*v191 + 8))(v191);
        goto LABEL_42;
      }

      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v121 = AVE_Log_CheckConsole(0xD3u);
        v122 = AVE_GetCurrTime();
        v123 = AVE_Log_GetLevelStr(4);
        if (v121)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v122, 211, v123, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
          v122 = AVE_GetCurrTime();
          v123 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v122, 211, v123, "GenerateUnregisteredSEINALU", 1832, "pcSyntaxWriter != __null");
      }
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v109 = AVE_Log_CheckConsole(0xD3u);
        v110 = AVE_GetCurrTime();
        v111 = AVE_Log_GetLevelStr(4);
        v112 = *a1;
        if (v109)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed\n", v110, 211, v111, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v112);
          v113 = AVE_GetCurrTime();
          v114 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v113, 211, v114, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, *a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu SEI EPB buffer malloc failed", v110, 211, v111, "AVE_SEI", "GenerateUnregisteredSEINALU", 1825, "pEPB_SEIData != __null", a1, v112);
        }
      }

      v56 = 0;
    }

    v23 = 4294966293;
    v21 = v193;
    v57 = v194;
LABEL_42:
    (*(*v21 + 8))(v21);
    if (v56)
    {
      free(v56);
    }

    if (v57)
    {
      free(v57);
    }

    goto LABEL_46;
  }

  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v34 = AVE_Log_CheckConsole(0xD3u);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter\n", v35, 211, v36, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter", v35, 211, v36, "GenerateUnregisteredSEINALU", 1757, "pcSyntaxWriter_NALU != __null");
  }

  v23 = 4294966293;
LABEL_46:
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v58 = AVE_Log_CheckConsole(0xD3u);
    v59 = AVE_GetCurrTime();
    v60 = AVE_Log_GetLevelStr(7);
    v61 = *a1;
    v62 = *a6;
    if (v58)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d\n", v59, 211, v60, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v61, a2, a3, a4, a5, a6, *a6, v23);
      v63 = AVE_GetCurrTime();
      v64 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v63, 211, v64, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, *a1, a2, a3, a4, a5, a6, *a6, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %d %p 0x%llx %p %d %d", v59, 211, v60, "AVE_SEI", "GenerateUnregisteredSEINALU", a1, v61, a2, a3, a4, a5, a6, *a6, v23);
    }
  }

  v65 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t AVE_SEI::SetISPMetadata(AVE_SEI *this, uint64_t a2, const __CFDictionary *a3)
{
  error = 0;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetISPMetadata", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
  }

  if (a3 && (v10 = CFGetTypeID(a3), v10 == CFDictionaryGetTypeID()))
  {
    v11 = CFPropertyListCreateData(*MEMORY[0x29EDB8ED8], a3, kCFPropertyListXMLFormat_v1_0, 0, &error);
    if (v11)
    {
      v12 = v11;
      v13 = AVE_Mutex_Lock(*(this + 4));
      Frame = AVE_SEI::FindOrCreateFrame(this, a2);
      if (Frame)
      {
        Frame[4] |= 1uLL;
        Frame[27] = v12;
        AVE_Mutex_Unlock(*(this + 4));
        if (!v13)
        {
          v15 = 7;
          goto LABEL_21;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v27 = AVE_Log_CheckConsole(0xD3u);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          v30 = *this;
          if (v27)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetISPMetadata", 496, "pPFData != __null", this, *this, a2);
            v28 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
            v31 = *this;
          }

          else
          {
            v37 = *this;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI");
        }

        AVE_Mutex_Unlock(*(this + 4));
        v13 = 4294966296;
      }

      CFRelease(v12);
    }

    else
    {
      if (error)
      {
        Domain = CFErrorGetDomain(error);
        if (Domain)
        {
          CStringPtr = CFStringGetCStringPtr(Domain, 0);
        }

        else
        {
          CStringPtr = 0;
        }

        Code = CFErrorGetCode(error);
      }

      else
      {
        CStringPtr = 0;
        Code = 0;
      }

      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v33 = AVE_Log_CheckConsole(0xD3u);
        v34 = AVE_GetCurrTime();
        v35 = AVE_Log_GetLevelStr(4);
        if (v33)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p\n", v34, 211, v35, "AVE_SEI", "SetISPMetadata", 487, "false", this, *this, a2, CStringPtr, Code, a3);
          v34 = AVE_GetCurrTime();
          v35 = AVE_Log_GetLevelStr(4);
          v36 = *this;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | Failed to serialize ISP metadata %p %lld %lld %s %ld %p", v34, 211, v35, "AVE_SEI", "SetISPMetadata", 487, "false");
      }

      v13 = 4294966296;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 5))
    {
      v16 = AVE_Log_CheckConsole(0xD3u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(5);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu ISPMetadata %p was null or not a dictionary for frame %lld, skipping\n", v17, 211, v18, "AVE_SEI", "SetISPMetadata", 464, "pISPMetadata != NULL && CFGetTypeID(pISPMetadata) == CFDictionaryGetTypeID()", this, *this, a3, a2);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(5);
        v19 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu ISPMetadata %p was null or not a dictionary for frame %lld, skipping", v17, 211, v18, "AVE_SEI", "SetISPMetadata");
    }

    v13 = 4294966295;
  }

  if (error)
  {
    CFRelease(error);
  }

  error = 0;
  v15 = 4;
LABEL_21:
  if (AVE_Log_CheckLevel(0xD3u, v15))
  {
    v20 = AVE_Log_CheckConsole(0xD3u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(v15);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v21, 211, v22, "AVE_SEI", "SetISPMetadata", this, *this, a2, a3, v13);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(v15);
      v23 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v21, 211, v22, "AVE_SEI");
  }

  return v13;
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

uint64_t AVE_SEI::SetAmbientViewingEnvironment(AVE_SEI *this, uint64_t a2, const __CFData *a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetAmbientViewingEnvironment", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
  }

  if (!a3)
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xD3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping", v15, 211, v16);
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetAmbientViewingEnvironment", 610, "pViewingEnvironment != __null", this, *this);
      v17 = AVE_GetCurrTime();
      v13 = 4;
      v18 = AVE_Log_GetLevelStr(4);
      v19 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Ambient Viewing Environment data was null, skipping", v17, 211, v18);
    }

LABEL_25:
    v11 = 4294966295;
    goto LABEL_26;
  }

  Length = CFDataGetLength(a3);
  if (Length != 8)
  {
    v20 = Length;
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v21 = AVE_Log_CheckConsole(0xD3u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      v24 = *this;
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld\n", v22, 211, v23, "AVE_SEI", "SetAmbientViewingEnvironment", 617, "dataLength == 8", this, *this, v20);
        v25 = AVE_GetCurrTime();
        v13 = 4;
        v26 = AVE_Log_GetLevelStr(4);
        v37 = *this;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld", v25, 211, v26, "AVE_SEI");
        goto LABEL_25;
      }

      v38 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Ambient Viewing Environment length %ld", v22, 211, v23, "AVE_SEI");
LABEL_24:
      v13 = 4;
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v11 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x40uLL;
    v40.location = 0;
    v40.length = 8;
    CFDataGetBytes(a3, v40, Frame + 148);
    AVE_Mutex_Unlock(*(this + 4));
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v27 = AVE_Log_CheckConsole(0xD3u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      v30 = *this;
      if (v27)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetAmbientViewingEnvironment", 624, "pPFData != __null", this, *this, a2);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        v31 = *this;
      }

      else
      {
        v39 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI");
    }

    AVE_Mutex_Unlock(*(this + 4));
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_26:
  if (AVE_Log_CheckLevel(0xD3u, v13))
  {
    v32 = AVE_Log_CheckConsole(0xD3u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(v13);
    if (v32)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v33, 211, v34, "AVE_SEI", "SetAmbientViewingEnvironment", this, *this, a2, a3, v11);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(v13);
      v35 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v33, 211, v34, "AVE_SEI");
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

uint64_t AVE_SEI::SetLookAheadInfo(AVE_SEI *this, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetLookAheadInfo", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d", CurrTime, 211, LevelStr);
  }

  v10 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    Frame[4] |= 0x20000000000uLL;
    *(Frame + 23) = a3;
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
      v13 = AVE_Log_CheckConsole(0xD3u);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(4);
      v16 = *this;
      if (v13)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetLookAheadInfo", 850, "pPFData != __null", this, *this, a2);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(4);
        v17 = *this;
      }

      else
      {
        v25 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI");
    }

    AVE_Mutex_Unlock(*(this + 4));
    v12 = 4;
    v10 = 4294966296;
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v18 = AVE_Log_CheckConsole(0xD3u);
    v19 = AVE_GetCurrTime();
    v20 = AVE_Log_GetLevelStr(v12);
    if (v18)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d\n", v19, 211, v20, "AVE_SEI", "SetLookAheadInfo", this, *this, a2, a3, v10);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(v12);
      v23 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v21, 211, v22);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d", v19, 211, v20);
    }
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

uint64_t AVE_SEI::SetMasteringDisplayColorVolume(AVE_SEI *this, uint64_t a2, const __CFData *a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetMasteringDisplayColorVolume", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
  }

  if (!a3)
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xD3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping", v15, 211, v16);
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetMasteringDisplayColorVolume", 923, "pColorVolumeData != __null", this, *this);
      v17 = AVE_GetCurrTime();
      v13 = 4;
      v18 = AVE_Log_GetLevelStr(4);
      v19 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Mastering Display Color Volume data was null, skipping", v17, 211, v18);
    }

LABEL_25:
    v11 = 4294966295;
    goto LABEL_26;
  }

  Length = CFDataGetLength(a3);
  if (Length != 24)
  {
    v20 = Length;
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v21 = AVE_Log_CheckConsole(0xD3u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      v24 = *this;
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld\n", v22, 211, v23, "AVE_SEI", "SetMasteringDisplayColorVolume", 930, "dataLength == 24", this, *this, v20);
        v25 = AVE_GetCurrTime();
        v13 = 4;
        v26 = AVE_Log_GetLevelStr(4);
        v37 = *this;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld", v25, 211, v26, "AVE_SEI");
        goto LABEL_25;
      }

      v38 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Mastering Display Color Volume length %ld", v22, 211, v23, "AVE_SEI");
LABEL_24:
      v13 = 4;
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v11 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x100uLL;
    v40.location = 0;
    v40.length = 24;
    CFDataGetBytes(a3, v40, Frame + 120);
    AVE_Mutex_Unlock(*(this + 4));
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v27 = AVE_Log_CheckConsole(0xD3u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      v30 = *this;
      if (v27)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetMasteringDisplayColorVolume", 937, "pPFData != __null", this, *this, a2);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        v31 = *this;
      }

      else
      {
        v39 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI");
    }

    AVE_Mutex_Unlock(*(this + 4));
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_26:
  if (AVE_Log_CheckLevel(0xD3u, v13))
  {
    v32 = AVE_Log_CheckConsole(0xD3u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(v13);
    if (v32)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v33, 211, v34, "AVE_SEI", "SetMasteringDisplayColorVolume", this, *this, a2, a3, v11);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(v13);
      v35 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v33, 211, v34, "AVE_SEI");
  }

  return v11;
}

uint64_t AVE_SEI::SetContentLightLevelInfo(AVE_SEI *this, uint64_t a2, const __CFData *a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %p\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetContentLightLevelInfo", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %p", CurrTime, 211, LevelStr);
  }

  if (!a3)
  {
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xD3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (!v14)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping", v15, 211, v16);
        goto LABEL_24;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping\n", v15, 211, v16, "AVE_SEI", "SetContentLightLevelInfo", 971, "pLightLevelData != __null", this, *this);
      v17 = AVE_GetCurrTime();
      v13 = 4;
      v18 = AVE_Log_GetLevelStr(4);
      v19 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Content Level Light Info data was null, skipping", v17, 211, v18);
    }

LABEL_25:
    v11 = 4294966295;
    goto LABEL_26;
  }

  Length = CFDataGetLength(a3);
  if (Length != 4)
  {
    v20 = Length;
    v13 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v21 = AVE_Log_CheckConsole(0xD3u);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(4);
      v24 = *this;
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld\n", v22, 211, v23, "AVE_SEI", "SetContentLightLevelInfo", 977, "dataLength == 4", this, *this, v20);
        v25 = AVE_GetCurrTime();
        v13 = 4;
        v26 = AVE_Log_GetLevelStr(4);
        v37 = *this;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld", v25, 211, v26, "AVE_SEI");
        goto LABEL_25;
      }

      v38 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid Light Level Info length %ld", v22, 211, v23, "AVE_SEI");
LABEL_24:
      v13 = 4;
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  v11 = AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    *(Frame + 4) |= 0x200uLL;
    v40.location = 0;
    v40.length = 4;
    CFDataGetBytes(a3, v40, Frame + 144);
    AVE_Mutex_Unlock(*(this + 4));
    if (v11)
    {
      v13 = 4;
    }

    else
    {
      v13 = 7;
    }
  }

  else
  {
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v27 = AVE_Log_CheckConsole(0xD3u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      v30 = *this;
      if (v27)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v28, 211, v29, "AVE_SEI", "SetContentLightLevelInfo", 984, "pPFData != __null", this, *this, a2);
        v28 = AVE_GetCurrTime();
        v29 = AVE_Log_GetLevelStr(4);
        v31 = *this;
      }

      else
      {
        v39 = *this;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v28, 211, v29, "AVE_SEI");
    }

    AVE_Mutex_Unlock(*(this + 4));
    v13 = 4;
    v11 = 4294966296;
  }

LABEL_26:
  if (AVE_Log_CheckLevel(0xD3u, v13))
  {
    v32 = AVE_Log_CheckConsole(0xD3u);
    v33 = AVE_GetCurrTime();
    v34 = AVE_Log_GetLevelStr(v13);
    if (v32)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d\n", v33, 211, v34, "AVE_SEI", "SetContentLightLevelInfo", this, *this, a2, a3, v11);
      v33 = AVE_GetCurrTime();
      v34 = AVE_Log_GetLevelStr(v13);
      v35 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %p %d", v33, 211, v34, "AVE_SEI");
  }

  return v11;
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

uint64_t AVE_SEI::SetActiveParameterSets(AVE_SEI *this, uint64_t a2, int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetActiveParameterSets", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", CurrTime, 211, LevelStr);
  }

  AVE_Mutex_Lock(*(this + 4));
  Frame = AVE_SEI::FindOrCreateFrame(this, a2);
  if (Frame)
  {
    v11 = 0;
    Frame[4] |= 4uLL;
    *(Frame + 57) = a3;
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
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", this, *this, a2);
    v17 = AVE_GetCurrTime();
    v12 = 4;
    v18 = AVE_Log_GetLevelStr(4);
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v17, 211, v18, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", this, *this, a2);
LABEL_11:
    v11 = 4294966296;
    goto LABEL_13;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v14, 211, v15, "AVE_SEI", "SetActiveParameterSets", 1149, "pPFData != __null", this, *this, a2);
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
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v20, 211, v21, "AVE_SEI", "SetActiveParameterSets", this, *this, a2, a3, v11);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(v12);
      v24 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v22, 211, v23);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v20, 211, v21);
    }
  }

  return v11;
}

uint64_t AVE_SEI::SetPictureTiming(pthread_mutex_t **a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v15 = *a1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %d %d %u %d", CurrTime, 211, LevelStr, "AVE_SEI");
  }

  if (a3 >= 4)
  {
    v18 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v19 = AVE_Log_CheckConsole(0xD3u);
      v20 = AVE_GetCurrTime();
      v21 = AVE_Log_GetLevelStr(4);
      v22 = *a1;
      if (v19)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d\n", v20, 211, v21, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
        v23 = AVE_GetCurrTime();
        v18 = 4;
        v24 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d", v23, 211, v24, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid frame type %d", v20, 211, v21, "AVE_SEI", "SetPictureTiming", 1185, "AVE_FrameType_None <= eFrameType && eFrameType < AVE_FrameType_Max", a1, *a1, a3);
        v18 = 4;
      }
    }

    v17 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(a1[4]);
    Frame = AVE_SEI::FindOrCreateFrame(a1, a2);
    if (Frame)
    {
      Frame[4] |= 0xAuLL;
      *(Frame + 58) = a4;
      *(Frame + 59) = a5;
      *(Frame + 56) = a3;
      *(Frame + 60) = a6;
      AVE_Mutex_Unlock(a1[4]);
      v17 = 0;
      v18 = 7;
    }

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v25 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        v28 = *a1;
        if (v25)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v26, 211, v27, "AVE_SEI", "SetPictureTiming", 1192, "pPFData != __null", a1, *a1, a2);
          v26 = AVE_GetCurrTime();
          v27 = AVE_Log_GetLevelStr(4);
        }

        v36 = *a1;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld", v26, 211, v27, "AVE_SEI");
      }

      AVE_Mutex_Unlock(a1[4]);
      v18 = 4;
      v17 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v18))
  {
    v29 = AVE_Log_CheckConsole(0xD3u);
    v30 = AVE_GetCurrTime();
    v31 = AVE_Log_GetLevelStr(v18);
    if (v29)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d\n", v30, 211, v31, "AVE_SEI", "SetPictureTiming", a1, *a1, a2, a3, a4, a5, a6, v17);
      v32 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(v18);
      v35 = *a1;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d", v32, 211, v33, "AVE_SEI", "SetPictureTiming");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %d %d %u %d %d", v30, 211, v31, "AVE_SEI", "SetPictureTiming");
    }
  }

  return v17;
}

uint64_t AVE_SEI::SetBufferingPeriod(AVE_SEI *this, uint64_t a2, unsigned int a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v6)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %llu %lld %u\n", CurrTime, 211, LevelStr, "AVE_SEI", "SetBufferingPeriod", this, *this, a2, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *this;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %lld %u", CurrTime, 211, LevelStr);
  }

  if (a3 >= 0x10)
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
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u\n", v14, 211, v15, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", this, *this, a3);
        v17 = AVE_GetCurrTime();
        v12 = 4;
        v18 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u", v17, 211, v18, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", this, *this, a3);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %llu invalid sps_seq_parameter_set_id value %u", v14, 211, v15, "AVE_SEI", "SetBufferingPeriod", 1229, "iSPSID <= 15", this, *this, a3);
        v12 = 4;
      }
    }

    v11 = 4294966295;
  }

  else
  {
    AVE_Mutex_Lock(*(this + 4));
    Frame = AVE_SEI::FindOrCreateFrame(this, a2);
    if (Frame)
    {
      Frame[4] |= 0x10uLL;
      *(Frame + 57) = a3;
      AVE_Mutex_Unlock(*(this + 4));
      v11 = 0;
      v12 = 7;
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
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %llu Failed to find or create frame number %lld\n", v20, 211, v21, "AVE_SEI", "SetBufferingPeriod", 1236, "pPFData != __null", this, *this, a2);
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
      v11 = 4294966296;
    }
  }

  if (AVE_Log_CheckLevel(0xD3u, v12))
  {
    v24 = AVE_Log_CheckConsole(0xD3u);
    v25 = AVE_GetCurrTime();
    v26 = AVE_Log_GetLevelStr(v12);
    if (v24)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d\n", v25, 211, v26, "AVE_SEI", "SetBufferingPeriod", this, *this, a2, a3, v11);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(v12);
      v29 = *this;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v27, 211, v28);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %lld %u %d", v25, 211, v26);
    }
  }

  return v11;
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

uint64_t AVE_SEI::PrintAllPFData(AVE_SEI *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x29EDCA608];
  memset(v15, 0, sizeof(v15));
  v14 = *this;
  AVE_SNPrintf(v15, 32, "%p %llu", a4, a5, a6, a7, a8, this);
  for (i = AVE_DLList_Begin(this + 48); ; i = AVE_DLList_Next(v11))
  {
    v11 = i;
    if (i == AVE_DLList_End(this + 48))
    {
      break;
    }

    AVE_SEI_PrintPFData(v11, a2, v15);
  }

  v12 = *MEMORY[0x29EDCA608];
  return 0;
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

uint64_t AVE_SEI::EstimateUnregisteredSEIMessageSizes(uint64_t *a1, void *a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v9 = *a1;
    if (v6)
    {
      if (a2)
      {
        v10 = a2[3];
      }

      else
      {
        v10 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx\n", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, v9, a2, v10, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *a1;
      if (a2)
      {
        v11 = a2[3];
      }

      else
      {
        v11 = -1;
      }
    }

    else if (a2)
    {
      v11 = a2[3];
    }

    else
    {
      v11 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, v9, a2, v11, a3);
  }

  v12 = a1[1] & a2[4] & a3;
  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v13 = AVE_Log_CheckConsole(0xD3u);
    v14 = AVE_GetCurrTime();
    v15 = AVE_Log_GetLevelStr(8);
    v16 = a2[3];
    if (v13)
    {
      printf("%lld %d AVE %s: Active bits for frame %lld: 0x%016llx\n", v14, 211, v15, a2[3], v12);
      v14 = AVE_GetCurrTime();
      v15 = AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: Active bits for frame %lld: 0x%016llx", v14, 211, v15, a2[3], v12);
  }

  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v17 = AVE_Log_CheckConsole(0xD3u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(8);
    v20 = a1[1];
    v21 = a2[4];
    if (v17)
    {
      printf("%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx\n", v18, 211, v19, a1[1], v21);
      v22 = AVE_GetCurrTime();
      v23 = AVE_Log_GetLevelStr(8);
      v24 = a1[1];
      syslog(3, "%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx", v22, 211, v23, v24, a2[4]);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: SEI bits 0x%016llx Frame bits 0x%016llx", v18, 211, v19, a1[1], v21);
    }
  }

  if (v12)
  {
    if ((v12 & 0x400000000) != 0)
    {
      v25 = 5;
    }

    else
    {
      v25 = 0;
    }

    if ((v12 & 0x800000000) != 0)
    {
      v25 += 5;
    }

    if ((v12 & 0x1000000000) != 0)
    {
      v25 += 5;
    }

    if ((v12 & 0x20000000000) != 0)
    {
      v25 += 5;
    }

    if ((v12 & 0x100000000) != 0)
    {
      v25 += 9;
    }

    if ((v12 & 0x200000000) != 0)
    {
      v25 += 9;
    }

    if ((v12 & 0x2000000000) != 0)
    {
      v25 += 13;
    }

    if ((v12 & 0x4000000000) != 0)
    {
      v25 += 15;
    }

    if ((v12 & 0x8000000000) != 0)
    {
      v25 += 9;
    }

    if ((v12 & 0x10000000000) != 0)
    {
      v26 = v25 + 5;
    }

    else
    {
      v26 = v25;
    }
  }

  else
  {
    v26 = 0;
  }

  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v27 = AVE_Log_CheckConsole(0xD3u);
    v28 = AVE_GetCurrTime();
    v29 = AVE_Log_GetLevelStr(7);
    if (v27)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v28, 211, v29, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes", a1, *a1, a2, a2[3], a3, v26);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(7);
      v30 = *a1;
      v32 = a2[3];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v28, 211, v29, "AVE_SEI", "EstimateUnregisteredSEIMessageSizes");
  }

  return v26;
}

uint64_t AVE_SEI::EstimateRegisteredSEINALUSizes(uint64_t *a1, void *a2, uint64_t a3)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v6 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v9 = *a1;
    if (v6)
    {
      if (a2)
      {
        v10 = a2[3];
      }

      else
      {
        v10 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx\n", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, v9, a2, v10, a3);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v9 = *a1;
      if (a2)
      {
        v11 = a2[3];
      }

      else
      {
        v11 = -1;
      }
    }

    else if (a2)
    {
      v11 = a2[3];
    }

    else
    {
      v11 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld 0x%llx", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, v9, a2, v11, a3);
  }

  v12 = a1[1] & a2[4] & a3;
  if (v12)
  {
    if ((v12 & 0x20) != 0)
    {
      v13 = 34;
    }

    else
    {
      v13 = 0;
    }

    if ((v12 & 2) != 0)
    {
      v13 += 56;
    }

    v14 = v13 + ((v12 >> 2) & 0x10);
    if ((v12 & 0x80) != 0)
    {
      v14 += 33;
    }

    v15 = v14 + ((v12 >> 3) & 0x20);
    if ((v12 & 0x200) != 0)
    {
      v16 = v15 + 12;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0;
  }

  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v17 = AVE_Log_CheckConsole(0xD3u);
    v18 = AVE_GetCurrTime();
    v19 = AVE_Log_GetLevelStr(7);
    if (v17)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d\n", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes", a1, *a1, a2, a2[3], a3, v16);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(7);
      v20 = *a1;
      v22 = a2[3];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld 0x%llx %d", v18, 211, v19, "AVE_SEI", "EstimateRegisteredSEINALUSizes");
  }

  return v16;
}

uint64_t AVE_SEI::EstimateISPMetadataSEITagSize(uint64_t *a1, uint64_t a2)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    v7 = *a1;
    if (v4)
    {
      if (a2)
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = -1;
      }

      printf("%lld %d AVE %s: %s::%s Enter %p %llu %p %lld\n", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, v7, a2, v8);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
      v7 = *a1;
      if (a2)
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = -1;
      }
    }

    else if (a2)
    {
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = -1;
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %llu %p %lld", CurrTime, 211, LevelStr, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, v7, a2, v9);
  }

  if (a1[1] & *(a2 + 32))
  {
    Length = CFDataGetLength(*(a2 + 216));
    v11 = Length;
    v12 = Length - 509;
    if (Length < 0x1FD)
    {
      v12 = 0;
    }

    v13 = (v12 + 254) / 0xFFu + 2;
    if (Length >= 255)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    v15 = (Length + Length / 2 + v14 + 513);
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v16 = AVE_Log_CheckConsole(0xD3u);
      v17 = AVE_GetCurrTime();
      v18 = AVE_Log_GetLevelStr(8);
      if (v16)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d\n", v17, 211, v18, "AVE_SEI", "EstimateISPMetadataSEITagSize", 1687, a1, *a1, v11, v15);
        v17 = AVE_GetCurrTime();
        v18 = AVE_Log_GetLevelStr(8);
        v19 = *a1;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %llu ISP metadata length: %d, payload size: %d", v17, 211, v18);
    }
  }

  else
  {
    v15 = 0;
  }

  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v20 = AVE_Log_CheckConsole(0xD3u);
    v21 = AVE_GetCurrTime();
    v22 = AVE_Log_GetLevelStr(7);
    v23 = *(a2 + 24);
    if (v20)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d\n", v21, 211, v22, "AVE_SEI", "EstimateISPMetadataSEITagSize", a1, *a1, a2, *(a2 + 24), v15);
      v21 = AVE_GetCurrTime();
      v22 = AVE_Log_GetLevelStr(7);
      v24 = *a1;
    }

    v26 = *(a2 + 24);
    syslog(3, "%lld %d AVE %s: %s::%s Exit %p %llu %p %lld %d", v21, 211, v22, "AVE_SEI");
  }

  return v15;
}

void AVE_SEI_PrintPFData(uint64_t a1, int a2, const char *a3)
{
  v4 = a2;
  v243 = *MEMORY[0x29EDCA608];
  v6 = a2;
  if (AVE_Log_CheckLevel(0xD3u, a2))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v7 && (-v4 & 0x20) == 0)
      {
        printf("%s Frame #%lld Bits 0x%016llx\n", a3, *(a1 + 24), *(a1 + 32));
      }

      syslog(3, "%s Frame #%lld Bits 0x%016llx", a3, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v8 = v4 & 0x20;
      v9 = v7 ^ 1;
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(v6);
      v12 = *(a1 + 24);
      v13 = *(a1 + 32);
      if ((v9 | (v8 >> 5)))
      {
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", CurrTime, 211, LevelStr, a3, *(a1 + 24), v13);
      }

      else
      {
        printf("%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx\n", CurrTime, 211, LevelStr, a3, *(a1 + 24), v13);
        v14 = AVE_GetCurrTime();
        v15 = AVE_Log_GetLevelStr(v6);
        syslog(3, "%lld %d AVE %s: %s Frame #%lld Bits 0x%016llx", v14, 211, v15, a3, *(a1 + 24), *(a1 + 32));
      }

      v4 = a2;
    }
  }

  v239 = a3;
  if (*(a1 + 32))
  {
    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v16 = AVE_Log_CheckConsole(0xD3u);
      if (v4 < 0)
      {
        if (v16 && (-v4 & 0x20) == 0)
        {
          printf("%s ISP Metadata: %p\n", a3, *(a1 + 216));
        }

        syslog(3, "%s ISP Metadata: %p", a3, *(a1 + 216));
      }

      else
      {
        v17 = v4 & 0x20;
        v18 = v16 ^ 1;
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(v6);
        v21 = *(a1 + 216);
        if ((v18 | (v17 >> 5)))
        {
          syslog(3, "%lld %d AVE %s: %s ISP Metadata: %p", v19, 211, v20, a3, v21);
        }

        else
        {
          printf("%lld %d AVE %s: %s ISP Metadata: %p\n", v19, 211, v20, a3, v21);
          v22 = AVE_GetCurrTime();
          v23 = AVE_Log_GetLevelStr(v6);
          syslog(3, "%lld %d AVE %s: %s ISP Metadata: %p", v22, 211, v23, a3, *(a1 + 216));
        }

        v4 = a2;
      }
    }

    v24 = *(a1 + 216);
    if (v24)
    {
      BytePtr = CFDataGetBytePtr(v24);
      if (BytePtr)
      {
        v26 = BytePtr;
        v242 = 0;
        memset(v241, 0, sizeof(v241));
        Length = CFDataGetLength(*(a1 + 216));
        v33 = Length;
        if (Length >= 1)
        {
          v34 = 0;
          v35 = Length & 0x7FFFFFFF;
          v237 = Length;
          do
          {
            v36 = 0;
            v37 = v34;
            do
            {
              if (v37 >= v35)
              {
                break;
              }

              AVE_SNPrintf(v241 + v36, 4, "%02x ", v28, v29, v30, v31, v32, v26[v37]);
              v36 += 3;
              ++v37;
            }

            while (v36 != 96);
            if (AVE_Log_CheckLevel(0xD3u, v6))
            {
              v38 = AVE_Log_CheckConsole(0xD3u);
              if (a2 < 0)
              {
                if ((-a2 & 0x20) != 0)
                {
                  v43 = 0;
                }

                else
                {
                  v43 = v38;
                }

                if ((v34 | 0x1F) >= v33)
                {
                  v44 = v33;
                }

                else
                {
                  v44 = v34 | 0x1F;
                }

                if (v43 == 1)
                {
                  printf("%s ISPData[%d-%d] %s\n", a3, v34, v44, v241);
                }

                syslog(3, "%s ISPData[%d-%d] %s", a3, v34, v44, v241);
              }

              else
              {
                v39 = v33;
                v40 = v38 ^ 1;
                v41 = AVE_GetCurrTime();
                v42 = AVE_Log_GetLevelStr(v6);
                if ((v34 | 0x1F) < v33)
                {
                  v39 = v34 | 0x1F;
                }

                if ((v40 | ((a2 & 0x20) >> 5)))
                {
                  a3 = v239;
                }

                else
                {
                  a3 = v239;
                  printf("%lld %d AVE %s: %s ISPData[%d-%d] %s\n", v41, 211, v42, v239, v34, v39, v241);
                  v41 = AVE_GetCurrTime();
                  v42 = AVE_Log_GetLevelStr(v6);
                }

                syslog(3, "%lld %d AVE %s: %s ISPData[%d-%d] %s", v41, 211, v42, v239, v34, v39, v241);
                v33 = v237;
              }
            }

            v34 += 32;
          }

          while (v34 < v33);
        }

        v4 = a2;
      }
    }
  }

  if ((*(a1 + 32) & 4) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v45 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v45 && (-v4 & 0x20) == 0)
      {
        printf("%s Active Parameter Sets %d\n", a3, *(a1 + 228));
      }

      v50 = *(a1 + 228);
      syslog(3, "%s Active Parameter Sets %d");
    }

    else
    {
      v46 = v45 ^ 1;
      v47 = AVE_GetCurrTime();
      v48 = AVE_Log_GetLevelStr(v6);
      if (((v46 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Active Parameter Sets %d\n", v47, 211, v48, a3, *(a1 + 228));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v49 = *(a1 + 228);
      }

      syslog(3, "%lld %d AVE %s: %s Active Parameter Sets %d");
    }
  }

  if ((*(a1 + 32) & 8) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v51 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v51 && (-v4 & 0x20) == 0)
      {
        printf("%s Picture Timing %d %d %d %d %d\n", a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
      }

      v55 = *(a1 + 232);
      v210 = *(a1 + 224);
      v218 = *(a1 + 240);
      v206 = *(a1 + 236);
      syslog(3, "%s Picture Timing %d %d %d %d %d");
    }

    else
    {
      v52 = v51 ^ 1;
      v53 = AVE_GetCurrTime();
      v54 = AVE_Log_GetLevelStr(v6);
      if (((v52 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Picture Timing %d %d %d %d %d\n", v53, 211, v54, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
        v53 = AVE_GetCurrTime();
        v54 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Picture Timing %d %d %d %d %d", v53, 211, v54, a3, *(a1 + 224), *(a1 + 232), *(a1 + 236), *(a1 + 224), *(a1 + 240));
    }
  }

  if ((*(a1 + 32) & 0x10) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v56 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v56 && (-v4 & 0x20) == 0)
      {
        printf("%s Buffering Period %d\n", a3, *(a1 + 228));
      }

      v61 = *(a1 + 228);
      syslog(3, "%s Buffering Period %d");
    }

    else
    {
      v57 = v56 ^ 1;
      v58 = AVE_GetCurrTime();
      v59 = AVE_Log_GetLevelStr(v6);
      if (((v57 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Buffering Period %d\n", v58, 211, v59, a3, *(a1 + 228));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v60 = *(a1 + 228);
      }

      syslog(3, "%lld %d AVE %s: %s Buffering Period %d");
    }
  }

  if ((*(a1 + 32) & 0x20) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v62 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v62 && (-v4 & 0x20) == 0)
      {
        printf("%s Content Color Volume bit is set\n", a3);
      }

      syslog(3, "%s Content Color Volume bit is set");
    }

    else
    {
      v63 = v62 ^ 1;
      v64 = AVE_GetCurrTime();
      v65 = AVE_Log_GetLevelStr(v6);
      if (((v63 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Color Volume bit is set\n", v64, 211, v65, a3);
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Color Volume bit is set");
    }
  }

  if ((*(a1 + 32) & 0x40) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v66 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v66 && (-v4 & 0x20) == 0)
      {
        printf("%s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
      }

      v224 = *(a1 + 154);
      v227 = *(a1 + 155);
      v219 = *(a1 + 152);
      v221 = *(a1 + 153);
      v207 = *(a1 + 150);
      v211 = *(a1 + 151);
      v203 = *(a1 + 149);
      syslog(3, "%s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x", a3, *(a1 + 148));
    }

    else
    {
      v67 = v66 ^ 1;
      v68 = AVE_GetCurrTime();
      v69 = AVE_Log_GetLevelStr(v6);
      v70 = *(a1 + 154);
      if (((v67 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x\n", v68, 211, v69, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
        v68 = AVE_GetCurrTime();
        v69 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Ambient Viewing Environment 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x 0x%02x", v68, 211, v69, a3, *(a1 + 148), *(a1 + 149), *(a1 + 150), *(a1 + 151), *(a1 + 152), *(a1 + 153), *(a1 + 154), *(a1 + 155));
    }
  }

  if ((*(a1 + 32) & 0x80) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v71 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v71 && (-v4 & 0x20) == 0)
      {
        printf("%s Lux Level %d\n", a3, *(a1 + 60));
      }

      v76 = *(a1 + 60);
      syslog(3, "%s Lux Level %d");
    }

    else
    {
      v72 = v71 ^ 1;
      v73 = AVE_GetCurrTime();
      v74 = AVE_Log_GetLevelStr(v6);
      if (((v72 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Lux Level %d\n", v73, 211, v74, a3, *(a1 + 60));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v75 = *(a1 + 60);
      }

      syslog(3, "%lld %d AVE %s: %s Lux Level %d");
    }
  }

  if ((*(a1 + 36) & 1) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v77 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v77 && (-v4 & 0x20) == 0)
      {
        printf("%s Exposure Time %f\n", a3, *(a1 + 64));
      }

      v83 = *(a1 + 64);
      syslog(3, "%s Exposure Time %f");
    }

    else
    {
      v78 = v77 ^ 1;
      v79 = AVE_GetCurrTime();
      v80 = AVE_Log_GetLevelStr(v6);
      v81 = *(a1 + 64);
      if ((v78 | ((v4 & 0x20) >> 5)))
      {
        v212 = *(a1 + 64);
      }

      else
      {
        printf("%lld %d AVE %s: %s Exposure Time %f\n", v79, 211, v80, a3, *(a1 + 64));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v82 = *(a1 + 64);
      }

      syslog(3, "%lld %d AVE %s: %s Exposure Time %f");
    }
  }

  if ((*(a1 + 36) & 2) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v84 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v84 && (-v4 & 0x20) == 0)
      {
        printf("%s SNR %f\n", a3, *(a1 + 72));
      }

      v90 = *(a1 + 72);
      syslog(3, "%s SNR %f");
    }

    else
    {
      v85 = v84 ^ 1;
      v86 = AVE_GetCurrTime();
      v87 = AVE_Log_GetLevelStr(v6);
      v88 = *(a1 + 72);
      if ((v85 | ((v4 & 0x20) >> 5)))
      {
        v213 = *(a1 + 72);
      }

      else
      {
        printf("%lld %d AVE %s: %s SNR %f\n", v86, 211, v87, a3, *(a1 + 72));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v89 = *(a1 + 72);
      }

      syslog(3, "%lld %d AVE %s: %s SNR %f");
    }
  }

  if ((*(a1 + 36) & 4) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v91 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v91 && (-v4 & 0x20) == 0)
      {
        printf("%s RC %d\n", a3, *(a1 + 80));
      }

      v96 = *(a1 + 80);
      syslog(3, "%s RC %d");
    }

    else
    {
      v92 = v91 ^ 1;
      v93 = AVE_GetCurrTime();
      v94 = AVE_Log_GetLevelStr(v6);
      if (((v92 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s RC %d\n", v93, 211, v94, a3, *(a1 + 80));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v95 = *(a1 + 80);
      }

      syslog(3, "%lld %d AVE %s: %s RC %d");
    }
  }

  if ((*(a1 + 36) & 8) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v97 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v97 && (-v4 & 0x20) == 0)
      {
        printf("%s Throughput Mode %d\n", a3, *(a1 + 84));
      }

      v102 = *(a1 + 84);
      syslog(3, "%s Throughput Mode %d");
    }

    else
    {
      v98 = v97 ^ 1;
      v99 = AVE_GetCurrTime();
      v100 = AVE_Log_GetLevelStr(v6);
      if (((v98 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Throughput Mode %d\n", v99, 211, v100, a3, *(a1 + 84));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v101 = *(a1 + 84);
      }

      syslog(3, "%lld %d AVE %s: %s Throughput Mode %d");
    }
  }

  if ((*(a1 + 36) & 0x10) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v103 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v103 && (-v4 & 0x20) == 0)
      {
        printf("%s Bitrate %d\n", a3, *(a1 + 88));
      }

      v108 = *(a1 + 88);
      syslog(3, "%s Bitrate %d");
    }

    else
    {
      v104 = v103 ^ 1;
      v105 = AVE_GetCurrTime();
      v106 = AVE_Log_GetLevelStr(v6);
      if (((v104 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Bitrate %d\n", v105, 211, v106, a3, *(a1 + 88));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v107 = *(a1 + 88);
      }

      syslog(3, "%lld %d AVE %s: %s Bitrate %d");
    }
  }

  if ((*(a1 + 36) & 0x20) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v109 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v109 && (-v4 & 0x20) == 0)
      {
        printf("%s Timecode %d %lld\n", a3, *(a1 + 104), *(a1 + 96));
      }

      v115 = *(a1 + 96);
      v202 = *(a1 + 104);
      syslog(3, "%s Timecode %d %lld");
    }

    else
    {
      v110 = v109 ^ 1;
      v111 = AVE_GetCurrTime();
      v112 = AVE_Log_GetLevelStr(v6);
      v113 = *(a1 + 104);
      if (((v110 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Timecode %d %lld\n", v111, 211, v112, a3, *(a1 + 104), *(a1 + 96));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v114 = *(a1 + 96);
      }

      v214 = *(a1 + 104);
      syslog(3, "%lld %d AVE %s: %s Timecode %d %lld");
    }
  }

  if (*(a1 + 33))
  {
    v116 = 0;
    *v238 = -v4;
    v117 = (a1 + 123);
    do
    {
      if (AVE_Log_CheckLevel(0xD3u, v6))
      {
        v118 = AVE_Log_CheckConsole(0xD3u);
        if (v4 < 0)
        {
          if ((v238[0] & 0x20) != 0)
          {
            v129 = 0;
          }

          else
          {
            v129 = v118;
          }

          v130 = *(v117 - 3);
          v131 = *(v117 - 2);
          v132 = *(v117 - 1);
          v133 = *v117;
          if (v129 == 1)
          {
            printf("%s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, v116, v130, v131, *(v117 - 1), v133);
            v130 = *(v117 - 3);
            v131 = *(v117 - 2);
            v132 = *(v117 - 1);
            v133 = *v117;
          }

          syslog(3, "%s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", a3, v116, v130, v131, v132, v133);
        }

        else
        {
          v119 = v4 & 0x20;
          v120 = v118 ^ 1;
          v121 = AVE_GetCurrTime();
          v122 = AVE_Log_GetLevelStr(v6);
          v123 = *(v117 - 3);
          v124 = *(v117 - 2);
          v125 = *(v117 - 1);
          v126 = *v117;
          if ((v120 | (v119 >> 5)))
          {
            a3 = v239;
            syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", v121, 211, v122, v239, v116, v123, v124, *(v117 - 1), v126);
          }

          else
          {
            a3 = v239;
            printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x\n", v121, 211, v122, v239, v116, v123, v124, *(v117 - 1), v126);
            v127 = AVE_GetCurrTime();
            v128 = AVE_Log_GetLevelStr(v6);
            syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Display Primaries[%d] 0x%02x 0x%02x 0x%02x 0x%02x", v127, 211, v128, v239, v116, *(v117 - 3), *(v117 - 2), *(v117 - 1), *v117);
          }

          v4 = a2;
        }
      }

      ++v116;
      v117 += 4;
    }

    while (v116 != 3);
    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v134 = AVE_Log_CheckConsole(0xD3u);
      if (v4 < 0)
      {
        if ((v238[0] & 0x20) != 0)
        {
          v139 = 0;
        }

        else
        {
          v139 = v134;
        }

        v140 = *(a1 + 134);
        if (v139 == 1)
        {
          printf("%s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
          v141 = *(a1 + 132);
          v142 = *(a1 + 133);
          v143 = *(a1 + 134);
          v144 = *(a1 + 135);
        }

        syslog(3, "%s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v135 = v134 ^ 1;
        v136 = AVE_GetCurrTime();
        v137 = AVE_Log_GetLevelStr(v6);
        v138 = *(a1 + 134);
        if (((v135 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x\n", v136, 211, v137, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
          v136 = AVE_GetCurrTime();
          v137 = AVE_Log_GetLevelStr(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume White Point 0x%02x 0x%02x 0x%02x 0x%02x", v136, 211, v137, a3, *(a1 + 132), *(a1 + 133), *(a1 + 134), *(a1 + 135));
      }
    }

    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v145 = AVE_Log_CheckConsole(0xD3u);
      if (v4 < 0)
      {
        if ((v238[0] & 0x20) != 0)
        {
          v150 = 0;
        }

        else
        {
          v150 = v145;
        }

        v151 = *(a1 + 138);
        if (v150 == 1)
        {
          printf("%s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
          v152 = *(a1 + 136);
          v153 = *(a1 + 137);
          v154 = *(a1 + 138);
          v155 = *(a1 + 139);
        }

        syslog(3, "%s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v146 = v145 ^ 1;
        v147 = AVE_GetCurrTime();
        v148 = AVE_Log_GetLevelStr(v6);
        v149 = *(a1 + 138);
        if (((v146 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v147, 211, v148, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
          v147 = AVE_GetCurrTime();
          v148 = AVE_Log_GetLevelStr(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Max Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v147, 211, v148, a3, *(a1 + 136), *(a1 + 137), *(a1 + 138), *(a1 + 139));
      }
    }

    if (AVE_Log_CheckLevel(0xD3u, v6))
    {
      v156 = AVE_Log_CheckConsole(0xD3u);
      if (v4 < 0)
      {
        if ((v238[0] & 0x20) != 0)
        {
          v161 = 0;
        }

        else
        {
          v161 = v156;
        }

        v162 = *(a1 + 142);
        if (v161 == 1)
        {
          printf("%s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
          v163 = *(a1 + 140);
          v164 = *(a1 + 141);
          v165 = *(a1 + 142);
          v166 = *(a1 + 143);
        }

        syslog(3, "%s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x");
      }

      else
      {
        v157 = v156 ^ 1;
        v158 = AVE_GetCurrTime();
        v159 = AVE_Log_GetLevelStr(v6);
        v160 = *(a1 + 142);
        if (((v157 | ((v4 & 0x20) >> 5)) & 1) == 0)
        {
          printf("%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x\n", v158, 211, v159, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
          v158 = AVE_GetCurrTime();
          v159 = AVE_Log_GetLevelStr(v6);
        }

        syslog(3, "%lld %d AVE %s: %s MasteringDisplayColorVolume Min Luminance 0x%02x 0x%02x 0x%02x 0x%02x", v158, 211, v159, a3, *(a1 + 140), *(a1 + 141), *(a1 + 142), *(a1 + 143));
      }
    }
  }

  if ((*(a1 + 33) & 2) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v167 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v167 && (-v4 & 0x20) == 0)
      {
        printf("%s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x\n", a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
      }

      v172 = *(a1 + 144);
      v208 = *(a1 + 146);
      v215 = *(a1 + 147);
      v204 = *(a1 + 145);
      syslog(3, "%s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x");
    }

    else
    {
      v168 = v167 ^ 1;
      v169 = AVE_GetCurrTime();
      v170 = AVE_Log_GetLevelStr(v6);
      v171 = *(a1 + 146);
      if (((v168 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x\n", v169, 211, v170, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
        v169 = AVE_GetCurrTime();
        v170 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Content Light Level Info 0x%02x 0x%02x 0x%02x 0x%02x", v169, 211, v170, a3, *(a1 + 144), *(a1 + 145), *(a1 + 146), *(a1 + 147));
    }
  }

  if ((*(a1 + 36) & 0x40) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v173 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v173 && (-v4 & 0x20) == 0)
      {
        printf("%s MCTF %f %f %f %f %f %d %d %d\n", a3, *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 204), *(a1 + 208));
      }

      v178 = *(a1 + 160);
      v179 = *(a1 + 176);
      v180 = *(a1 + 192);
      v181 = *(a1 + 200);
      v225 = *(a1 + 204);
      v229 = *(a1 + 208);
      syslog(3, "%s MCTF %f %f %f %f %f %d %d %d");
    }

    else
    {
      v174 = v173 ^ 1;
      v175 = AVE_GetCurrTime();
      v176 = AVE_Log_GetLevelStr(v6);
      v177 = *(a1 + 204);
      if ((v174 | ((v4 & 0x20) >> 5)))
      {
        v234 = *(a1 + 204);
        v236 = *(a1 + 208);
        v232 = *(a1 + 200);
        v226 = *(a1 + 184);
        v230 = *(a1 + 192);
        v220 = *(a1 + 168);
        v223 = *(a1 + 176);
        v217 = *(a1 + 160);
      }

      else
      {
        printf("%lld %d AVE %s: %s MCTF %f %f %f %f %f %d %d %d\n", v175, 211, v176, a3, *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 204), *(a1 + 208));
        v175 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v233 = *(a1 + 204);
        v235 = *(a1 + 208);
        v231 = *(a1 + 200);
        v228 = *(a1 + 192);
        v216 = *(a1 + 160);
        v222 = *(a1 + 176);
      }

      syslog(3, "%lld %d AVE %s: %s MCTF %f %f %f %f %f %d %d %d", v175);
    }
  }

  if ((*(a1 + 36) & 0x80) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v182 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v182 && (-v4 & 0x20) == 0)
      {
        printf("%s Session ID %llu\n", a3, *(a1 + 40));
      }

      v187 = *(a1 + 40);
      syslog(3, "%s Session ID %llu");
    }

    else
    {
      v183 = v182 ^ 1;
      v184 = AVE_GetCurrTime();
      v185 = AVE_Log_GetLevelStr(v6);
      if (((v183 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Session ID %llu\n", v184, 211, v185, a3, *(a1 + 40));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v186 = *(a1 + 40);
      }

      syslog(3, "%lld %d AVE %s: %s Session ID %llu");
    }
  }

  if ((*(a1 + 37) & 1) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v188 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v188 && (-v4 & 0x20) == 0)
      {
        printf("%s Driver Version %d.%d.%d\n", a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
      }

      v193 = *(a1 + 48);
      v205 = *(a1 + 52);
      v209 = *(a1 + 56);
      syslog(3, "%s Driver Version %d.%d.%d");
    }

    else
    {
      v189 = v188 ^ 1;
      v190 = AVE_GetCurrTime();
      v191 = AVE_Log_GetLevelStr(v6);
      v192 = *(a1 + 52);
      if (((v189 | ((v4 & 0x20) >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s Driver Version %d.%d.%d\n", v190, 211, v191, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
        v190 = AVE_GetCurrTime();
        v191 = AVE_Log_GetLevelStr(v6);
      }

      syslog(3, "%lld %d AVE %s: %s Driver Version %d.%d.%d", v190, 211, v191, a3, *(a1 + 48), *(a1 + 52), *(a1 + 56));
    }
  }

  if ((*(a1 + 37) & 2) != 0 && AVE_Log_CheckLevel(0xD3u, v6))
  {
    v194 = AVE_Log_CheckConsole(0xD3u);
    if (v4 < 0)
    {
      if (v194 && (-v4 & 0x20) == 0)
      {
        printf("%s LookAhead Frame Count %d\n", a3, *(a1 + 92));
      }

      v200 = *(a1 + 92);
      syslog(3, "%s LookAhead Frame Count %d");
    }

    else
    {
      v195 = v4 & 0x20;
      v196 = v194 ^ 1;
      v197 = AVE_GetCurrTime();
      v198 = AVE_Log_GetLevelStr(v6);
      if (((v196 | (v195 >> 5)) & 1) == 0)
      {
        printf("%lld %d AVE %s: %s LookAhead Frame Count %d\n", v197, 211, v198, a3, *(a1 + 92));
        AVE_GetCurrTime();
        AVE_Log_GetLevelStr(v6);
        v199 = *(a1 + 92);
      }

      syslog(3, "%lld %d AVE %s: %s LookAhead Frame Count %d");
    }
  }

  v201 = *MEMORY[0x29EDCA608];
}

uint64_t AVE_SEI_WritePayloadSize(int a1, AVE_SyntaxWriter *this)
{
  v3 = a1;
  if (a1 < 255)
  {
    v5 = a1;
LABEL_7:

    return AVE_SyntaxWriter::WriteU(this, v5, 8);
  }

  else
  {
    while (1)
    {
      result = AVE_SyntaxWriter::WriteU(this, 0xFFu, 8);
      if (result)
      {
        break;
      }

      v5 = v3 - 255;
      v6 = v3 <= 509;
      v3 -= 255;
      if (v6)
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t AVE_SEI_StartNALU(uint64_t a1, int a2, unsigned int a3, const char *a4)
{
  v8 = AVE_SyntaxWriter::WriteStartCode(a1);
  if (!v8)
  {
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v16 = AVE_Log_CheckConsole(0xD3u);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v19 = *(a1 + 12);
      v20 = *(a1 + 32) + v19;
      if (v16)
      {
        printf("%lld %d AVE %s: %s:%d %s start code %p (%d)\n", CurrTime, 211, LevelStr, "AVE_SEI_StartNALU", 112, a4, (*(a1 + 32) + v19), v19);
        CurrTime = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
        v21 = *(a1 + 32) + *(a1 + 12);
      }

      else
      {
        v54 = *(a1 + 32) + v19;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s start code %p (%d)", CurrTime, 211);
    }

    if (a2 == 2)
    {
      v26 = AVE_SyntaxWriter::WriteU(a1, 0x4E01u, 16);
      if (v26)
      {
        v9 = v26;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          return v9;
        }

        v27 = AVE_Log_CheckConsole(0xD3u);
        v11 = AVE_GetCurrTime();
        v28 = AVE_Log_GetLevelStr(4);
        v29 = *(a1 + 32);
        if (!v27)
        {
          v57 = *(a1 + 32);
          goto LABEL_10;
        }

        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v28, "AVE_SEI_StartNALU", 123, "(ret) == 0", *(a1 + 32), v9);
        goto LABEL_37;
      }
    }

    else
    {
      if (a2 != 1)
      {
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v30 = AVE_Log_CheckConsole(0xD3u);
          v31 = AVE_GetCurrTime();
          v32 = AVE_Log_GetLevelStr(4);
          if (v30)
          {
            printf("%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p\n", v31, 211, v32, "AVE_SEI_StartNALU", 128, "false", a4, a2, *(a1 + 32));
            v31 = AVE_GetCurrTime();
            v32 = AVE_Log_GetLevelStr(4);
            v33 = *(a1 + 32);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | %s encType %d not recognized. FAIL %p", v31, 211, v32);
        }

        return 4294966295;
      }

      v22 = AVE_SyntaxWriter::WriteU(a1, 6u, 8);
      if (v22)
      {
        v9 = v22;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          return v9;
        }

        v23 = AVE_Log_CheckConsole(0xD3u);
        v11 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(4);
        v25 = *(a1 + 32);
        if (!v23)
        {
          v56 = *(a1 + 32);
          goto LABEL_10;
        }

        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v24, "AVE_SEI_StartNALU", 119, "(ret) == 0", *(a1 + 32), v9);
        goto LABEL_37;
      }
    }

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v34 = AVE_Log_CheckConsole(0xD3u);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(8);
      v37 = *(a1 + 12);
      v38 = *(a1 + 32) + v37;
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s nal_unit_type %p (%d)\n", v35, 211, v36, "AVE_SEI_StartNALU", 133, a4, (*(a1 + 32) + v37), v37);
        v35 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
        v39 = *(a1 + 32) + *(a1 + 12);
      }

      else
      {
        v55 = *(a1 + 32) + v37;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s nal_unit_type %p (%d)", v35, 211);
    }

    v40 = AVE_SyntaxWriter::WriteU(a1, a3, 8);
    if (!v40)
    {
      if (AVE_Log_CheckLevel(0xD3u, 8))
      {
        v47 = AVE_Log_CheckConsole(0xD3u);
        v48 = AVE_GetCurrTime();
        v49 = AVE_Log_GetLevelStr(8);
        v50 = *(a1 + 12);
        v51 = *(a1 + 32) + v50;
        if (v47)
        {
          printf("%lld %d AVE %s: %s:%d %s payloadType %p (%d)\n", v48, 211, v49, "AVE_SEI_StartNALU", 140, a4, (*(a1 + 32) + v50), v50);
          v48 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(8);
          v52 = *(a1 + 32) + *(a1 + 12);
        }

        else
        {
          v59 = *(a1 + 32) + v50;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s payloadType %p (%d)", v48, 211);
      }

      return 0;
    }

    v9 = v40;
    if (!AVE_Log_CheckLevel(0xD3u, 4))
    {
      return v9;
    }

    v41 = AVE_Log_CheckConsole(0xD3u);
    v11 = AVE_GetCurrTime();
    v42 = AVE_Log_GetLevelStr(4);
    v43 = *(a1 + 32);
    if (!v41)
    {
      v58 = *(a1 + 32);
      goto LABEL_10;
    }

    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v42, "AVE_SEI_StartNALU", 137, "(ret) == 0", *(a1 + 32), v9);
LABEL_37:
    v44 = AVE_GetCurrTime();
    AVE_Log_GetLevelStr(4);
    v45 = *(a1 + 32);
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v44, 211);
    return v9;
  }

  v9 = v8;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    v11 = AVE_GetCurrTime();
    v12 = AVE_Log_GetLevelStr(4);
    v13 = *(a1 + 32);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v11, 211, v12, "AVE_SEI_StartNALU", 109, "(ret) == 0", *(a1 + 32), v9);
      v14 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      v15 = *(a1 + 32);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v14, 211);
      return v9;
    }

    v53 = *(a1 + 32);
LABEL_10:
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v11, 211);
  }

  return v9;
}

uint64_t AVE_SEI_WriteAmbientViewingEnvironment(unsigned __int8 *a1, int a2, const unsigned __int8 *a3, int a4, int *a5)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v7)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteAmbientViewingEnvironment", a1, a2, a3, a4, a5);
      v10 = AVE_GetCurrTime();
      v60 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %p", v10, 211, v60);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %p", CurrTime, 211, LevelStr);
    }
  }

  if (!a3 || !a1 || !a5)
  {
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v22 = AVE_Log_CheckConsole(0xD3u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(4);
      if (!v22)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p", v23, 211, v24);
        goto LABEL_27;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p\n", v23, 211, v24, "AVE_SEI_WriteAmbientViewingEnvironment", 222, "pBuf != __null && pBytesWritten != __null && pViewingEnv != __null", a1, a3, a5);
      v25 = AVE_GetCurrTime();
      v21 = 4;
      v61 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid parameters %p %p %p", v25, 211, v61);
    }

LABEL_28:
    v16 = 4294966295;
    goto LABEL_29;
  }

  if (a4 != 2)
  {
    v21 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v26 = AVE_Log_CheckConsole(0xD3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v27, 211, v28, "AVE_SEI_WriteAmbientViewingEnvironment", 226, "encType == AVE_EncType_HEVC", a4, a1);
        v29 = AVE_GetCurrTime();
        v21 = 4;
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v29, 211);
        goto LABEL_28;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v27, 211);
LABEL_27:
      v21 = 4;
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v11 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v11)
  {
    v12 = v11;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v11);
    v13 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v14 = v13;
    if (v13)
    {
      AVE_SyntaxWriter::AVE_SyntaxWriter(v13, a1, a2, 0);
    }

    *a5 = 0;
    started = AVE_SEI_StartNALU(v14, 2, 0x94u, "AVE_SEI_WriteAmbientViewingEnvironment");
    if (started)
    {
      v16 = started;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_52;
      }

      v17 = AVE_Log_CheckConsole(0xD3u);
      v18 = AVE_GetCurrTime();
      v19 = AVE_Log_GetLevelStr(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v19, "AVE_SEI_WriteAmbientViewingEnvironment", 240, "(ret) == 0", a1, v16);
        v20 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(4);
LABEL_38:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
        goto LABEL_52;
      }
    }

    else
    {
      v40 = AVE_SyntaxWriter::WriteBytes(v12, a3, 8);
      if (v40)
      {
        v16 = v40;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_52;
        }

        v41 = AVE_Log_CheckConsole(0xD3u);
        v18 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
        if (v41)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v42, "AVE_SEI_WriteAmbientViewingEnvironment", 245, "(ret) == 0", a1, v16);
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_38;
        }
      }

      else if (*(v12 + 2) && (v43 = AVE_SyntaxWriter::AlignToByte(v12), v43))
      {
        v16 = v43;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_52;
        }

        v44 = AVE_Log_CheckConsole(0xD3u);
        v18 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v44)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v45, "AVE_SEI_WriteAmbientViewingEnvironment", 251, "(ret) == 0", a1, v16);
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_38;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD3u, 8))
        {
          v46 = AVE_Log_CheckConsole(0xD3u);
          v47 = AVE_GetCurrTime();
          v48 = AVE_Log_GetLevelStr(8);
          v49 = *(v12 + 3);
          v50 = (*(v12 + 2) + 8 * v49);
          if (v46)
          {
            printf("%lld %d AVE %s: %s:%d New bits %d (%d bytes)\n", v47, 211, v48, "AVE_SEI_WriteAmbientViewingEnvironment", 254, *(v12 + 2) + 8 * v49, v49);
            v47 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(8);
            v63 = (*(v12 + 2) + 8 * *(v12 + 3));
          }

          else
          {
            v64 = (*(v12 + 2) + 8 * v49);
          }

          syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v47);
        }

        v51 = AVE_SEI_FinishNALU(v12, v14, "AVE_SEI_WriteAmbientViewingEnvironment");
        if (!v51)
        {
          *a5 = *(v14 + 3);
          if (AVE_Log_CheckLevel(0xD3u, 7))
          {
            v54 = AVE_Log_CheckConsole(0xD3u);
            v55 = AVE_GetCurrTime();
            v56 = AVE_Log_GetLevelStr(7);
            v57 = *a5;
            if (v54)
            {
              printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v55, 211, v56, "AVE_SEI_WriteAmbientViewingEnvironment", 260, v57);
              v58 = AVE_GetCurrTime();
              v59 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v58, 211, v59, "AVE_SEI_WriteAmbientViewingEnvironment", 260, *a5);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v55, 211, v56, "AVE_SEI_WriteAmbientViewingEnvironment", 260, v57);
            }
          }

          v16 = 0;
          goto LABEL_52;
        }

        v16 = v51;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
LABEL_52:
          (*(*v12 + 8))(v12);
          (*(*v14 + 8))(v14);
          if (v16)
          {
            v21 = 4;
          }

          else
          {
            v21 = 7;
          }

          goto LABEL_29;
        }

        v52 = AVE_Log_CheckConsole(0xD3u);
        v18 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v18, 211, v53, "AVE_SEI_WriteAmbientViewingEnvironment", 257, "(ret) == 0", a1, v16);
          v20 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          goto LABEL_38;
        }
      }
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v18, 211);
    goto LABEL_52;
  }

  v21 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v30 = AVE_Log_CheckConsole(0xD3u);
    v31 = AVE_GetCurrTime();
    v32 = AVE_Log_GetLevelStr(4);
    if (v30)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v31, 211, v32, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
      v33 = AVE_GetCurrTime();
      v21 = 4;
      v34 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v33, 211, v34, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v31, 211, v32, "AVE_SEI_WriteAmbientViewingEnvironment", 230, "pcSyntaxWriter != __null", a1);
      v21 = 4;
    }
  }

  v16 = 4294966293;
LABEL_29:
  if (AVE_Log_CheckLevel(0xD3u, v21))
  {
    v35 = AVE_Log_CheckConsole(0xD3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(v21);
    if (v35)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %p %d\n", v36, 211, v37, "AVE_SEI_WriteAmbientViewingEnvironment", a1, a2, a3, a4, a5, v16);
      v38 = AVE_GetCurrTime();
      v62 = AVE_Log_GetLevelStr(v21);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %p %d", v38, 211, v62, "AVE_SEI_WriteAmbientViewingEnvironment");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %p %d", v36, 211, v37, "AVE_SEI_WriteAmbientViewingEnvironment");
    }
  }

  return v16;
}

uint64_t AVE_SEI_FinishNALU(const AVE_SyntaxWriter *a1, AVE_SyntaxWriter *a2, const char *a3)
{
  v6 = *(a1 + 3) - *(a1 + 4) / 8;
  v7 = *(a2 + 3);
  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v8 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(8);
    v11 = *(a2 + 3);
    v12 = *(a2 + 4) + v11;
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)\n", CurrTime, 211, LevelStr, "AVE_SEI_FinishNALU", 171, a3, v6, (*(a2 + 4) + v11), v11);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(8);
      v13 = *(a2 + 4) + *(a2 + 3);
    }

    else
    {
      v48 = *(a2 + 4) + v11;
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s start payload size %d %p (%d)", CurrTime, 211, LevelStr);
  }

  v14 = AVE_SEI_WritePayloadSize(v6, a2);
  if (!v14)
  {
    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v22 = AVE_Log_CheckConsole(0xD3u);
      v23 = AVE_GetCurrTime();
      v24 = AVE_Log_GetLevelStr(8);
      v25 = *(a2 + 3);
      v26 = *(a2 + 4) + v25;
      if (v22)
      {
        printf("%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)\n", v23, 211, v24, "AVE_SEI_FinishNALU", 179, a3, v25 - v7, (*(a2 + 4) + v25), v25);
        v23 = AVE_GetCurrTime();
        v24 = AVE_Log_GetLevelStr(8);
        v49 = *(a2 + 4) + *(a2 + 3);
      }

      else
      {
        v50 = *(a2 + 4) + v25;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s end payload size %d %p (%d)", v23, 211, v24);
    }

    v27 = AVE_SyntaxWriter::CopyFromSyntaxWriter(a2, a1);
    if (v27)
    {
      v15 = v27;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        return v15;
      }

      v28 = AVE_Log_CheckConsole(0xD3u);
      v17 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      v30 = *(a2 + 4);
      if (!v28)
      {
        v45 = *(a2 + 4);
        goto LABEL_31;
      }

      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v17, 211, v29, "AVE_SEI_FinishNALU", 183, "(ret) == 0", *(a2 + 4), v15);
    }

    else
    {
      v31 = AVE_SyntaxWriter::AlignToByte(a2);
      if (!v31)
      {
        if (AVE_Log_CheckLevel(0xD3u, 8))
        {
          v37 = AVE_Log_CheckConsole(0xD3u);
          v38 = AVE_GetCurrTime();
          v39 = AVE_Log_GetLevelStr(8);
          v40 = *(a2 + 3);
          v41 = *(a2 + 4) + v40;
          if (v37)
          {
            printf("%lld %d AVE %s: %s:%d %s rbsp_trailing_bits %p (%d)\n", v38, 211, v39, "AVE_SEI_FinishNALU", 191, a3, (*(a2 + 4) + v40), v40);
            v38 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(8);
            v42 = *(a2 + 4) + *(a2 + 3);
          }

          else
          {
            v47 = *(a2 + 4) + v40;
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s rbsp_trailing_bits %p (%d)", v38, 211);
        }

        return 0;
      }

      v15 = v31;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        return v15;
      }

      v32 = AVE_Log_CheckConsole(0xD3u);
      v17 = AVE_GetCurrTime();
      v33 = AVE_Log_GetLevelStr(4);
      v34 = *(a2 + 4);
      if (!v32)
      {
        v46 = *(a2 + 4);
        goto LABEL_31;
      }

      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v17, 211, v33, "AVE_SEI_FinishNALU", 187, "(ret) == 0", *(a2 + 4), v15);
    }

    v35 = AVE_GetCurrTime();
    AVE_Log_GetLevelStr(4);
    v36 = *(a2 + 4);
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v35, 211);
    return v15;
  }

  v15 = v14;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v16 = AVE_Log_CheckConsole(0xD3u);
    v17 = AVE_GetCurrTime();
    v18 = AVE_Log_GetLevelStr(4);
    v19 = *(a2 + 4);
    if (v16)
    {
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v17, 211, v18, "AVE_SEI_FinishNALU", 174, "(ret) == 0", *(a2 + 4), v15);
      v20 = AVE_GetCurrTime();
      AVE_Log_GetLevelStr(4);
      v21 = *(a2 + 4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
      return v15;
    }

    v44 = *(a2 + 4);
LABEL_31:
    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v17, 211);
  }

  return v15;
}

uint64_t AVE_SEI_WriteContentColorVolume(unsigned __int8 *a1, int a2, int a3, int *a4)
{
  v121[3] = *MEMORY[0x29EDCA608];
  memset(v121, 0, 24);
  v120[0] = xmmword_295650740;
  v120[1] = xmmword_295650750;
  v120[2] = xmmword_295650760;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v4 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4);
      CurrTime = AVE_GetCurrTime();
      LevelStr = AVE_Log_GetLevelStr(7);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4);
  }

  if (!a1 || !a4)
  {
    v10 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v11 = AVE_Log_CheckConsole(0xD3u);
      v12 = AVE_GetCurrTime();
      v13 = AVE_Log_GetLevelStr(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v12, 211, v13, "AVE_SEI_WriteContentColorVolume", 319, "pBuf != __null && pBytesWritten != __null", a1, a4);
        v12 = AVE_GetCurrTime();
        v13 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v12, 211, v13, "AVE_SEI_WriteContentColorVolume", 319, "pBuf != __null && pBytesWritten != __null", a1, a4);
      goto LABEL_41;
    }

LABEL_42:
    v26 = 4294966295;
    goto LABEL_43;
  }

  if (a3 != 2)
  {
    v10 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v14 = AVE_Log_CheckConsole(0xD3u);
      v15 = AVE_GetCurrTime();
      v16 = AVE_Log_GetLevelStr(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
        v15 = AVE_GetCurrTime();
        v16 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v15, 211, v16, "AVE_SEI_WriteContentColorVolume", 323, "encType == AVE_EncType_HEVC", a3, a1);
LABEL_41:
      v10 = 4;
      goto LABEL_42;
    }

    goto LABEL_42;
  }

  if (AVE_Log_CheckLevel(0xD3u, 8))
  {
    v7 = AVE_Log_CheckConsole(0xD3u);
    v8 = AVE_GetCurrTime();
    v9 = AVE_Log_GetLevelStr(8);
    if (v7)
    {
      printf("%lld %d AVE %s: %s:%d ccv primaries\n", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
      v8 = AVE_GetCurrTime();
      v9 = AVE_Log_GetLevelStr(8);
    }

    syslog(3, "%lld %d AVE %s: %s:%d ccv primaries", v8, 211, v9, "AVE_SEI_WriteContentColorVolume", 328);
  }

  v17 = 0;
  v118 = vdupq_n_s64(0x40E86A0000000000uLL);
  do
  {
    v119 = vmovn_s64(vcvtq_s64_f64(vmulq_f64(v120[v17], v118)));
    v121[v17] = v119;
    if (AVE_Log_CheckLevel(0xD3u, 7))
    {
      v18 = AVE_Log_CheckConsole(0xD3u);
      v19 = AVE_GetCurrTime();
      v20 = AVE_Log_GetLevelStr(7);
      if (v18)
      {
        printf("%lld %d AVE %s: ccv_primaries %d (x, y) (%d, %d)\n", v19, 211, v20, v17, v119.i32[0], v119.i32[1]);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(7);
      }

      syslog(3, "%lld %d AVE %s: ccv_primaries %d (x, y) (%d, %d)", v19, 211, v20, v17, v119.i32[0], v119.i32[1]);
    }

    ++v17;
  }

  while (v17 != 3);
  v21 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v21)
  {
    v22 = v21;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v21);
    v23 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v24 = v23;
    if (v23)
    {
      AVE_SyntaxWriter::AVE_SyntaxWriter(v23, a1, a2, 0);
      started = AVE_SEI_StartNALU(v24, 2, 0x95u, "AVE_SEI_WriteContentColorVolume");
      if (started)
      {
        v26 = started;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v27 = AVE_Log_CheckConsole(0xD3u);
          v28 = AVE_GetCurrTime();
          v29 = AVE_Log_GetLevelStr(4);
          if (v27)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
            v28 = AVE_GetCurrTime();
            v29 = AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v28, 211, v29, "AVE_SEI_WriteContentColorVolume", 352, "(ret) == 0", a1, v26);
        }
      }

      else
      {
        v43 = AVE_SyntaxWriter::WriteBit(v22, 0);
        if (v43)
        {
          v26 = v43;
          if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v44 = AVE_Log_CheckConsole(0xD3u);
            v45 = AVE_GetCurrTime();
            v46 = AVE_Log_GetLevelStr(4);
            if (v44)
            {
              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v45, 211, v46, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
              v45 = AVE_GetCurrTime();
              v46 = AVE_Log_GetLevelStr(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v45, 211, v46, "AVE_SEI_WriteContentColorVolume", 356, "(ret) == 0", a1, v26);
          }
        }

        else
        {
          v47 = AVE_SyntaxWriter::WriteBit(v22, 1);
          if (v47)
          {
            v26 = v47;
            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v48 = AVE_Log_CheckConsole(0xD3u);
              v49 = AVE_GetCurrTime();
              v50 = AVE_Log_GetLevelStr(4);
              if (v48)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v49, 211, v50, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
                v49 = AVE_GetCurrTime();
                v50 = AVE_Log_GetLevelStr(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v49, 211, v50, "AVE_SEI_WriteContentColorVolume", 361, "(ret) == 0", a1, v26);
            }
          }

          else
          {
            v51 = AVE_SyntaxWriter::WriteBit(v22, 1);
            if (v51)
            {
              v26 = v51;
              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v52 = AVE_Log_CheckConsole(0xD3u);
                v53 = AVE_GetCurrTime();
                v54 = AVE_Log_GetLevelStr(4);
                if (v52)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v53, 211, v54, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
                  v53 = AVE_GetCurrTime();
                  v54 = AVE_Log_GetLevelStr(4);
                }

                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v53, 211, v54, "AVE_SEI_WriteContentColorVolume", 363, "(ret) == 0", a1, v26);
              }
            }

            else
            {
              v55 = AVE_SyntaxWriter::WriteBit(v22, 1);
              if (v55)
              {
                v26 = v55;
                if (AVE_Log_CheckLevel(0xD3u, 4))
                {
                  v56 = AVE_Log_CheckConsole(0xD3u);
                  v57 = AVE_GetCurrTime();
                  v58 = AVE_Log_GetLevelStr(4);
                  if (v56)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v57, 211, v58, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                    v57 = AVE_GetCurrTime();
                    v58 = AVE_Log_GetLevelStr(4);
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v57, 211, v58, "AVE_SEI_WriteContentColorVolume", 365, "(ret) == 0", a1, v26);
                }
              }

              else
              {
                v59 = AVE_SyntaxWriter::WriteBit(v22, 1);
                if (v59)
                {
                  v26 = v59;
                  if (AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    v60 = AVE_Log_CheckConsole(0xD3u);
                    v61 = AVE_GetCurrTime();
                    v62 = AVE_Log_GetLevelStr(4);
                    if (v60)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v61, 211, v62, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                      v61 = AVE_GetCurrTime();
                      v62 = AVE_Log_GetLevelStr(4);
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v61, 211, v62, "AVE_SEI_WriteContentColorVolume", 367, "(ret) == 0", a1, v26);
                  }
                }

                else
                {
                  v63 = AVE_SyntaxWriter::WriteBit(v22, 1);
                  if (v63)
                  {
                    v26 = v63;
                    if (AVE_Log_CheckLevel(0xD3u, 4))
                    {
                      v64 = AVE_Log_CheckConsole(0xD3u);
                      v65 = AVE_GetCurrTime();
                      v66 = AVE_Log_GetLevelStr(4);
                      if (v64)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v65, 211, v66, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                        v65 = AVE_GetCurrTime();
                        v66 = AVE_Log_GetLevelStr(4);
                      }

                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v65, 211, v66, "AVE_SEI_WriteContentColorVolume", 369, "(ret) == 0", a1, v26);
                    }
                  }

                  else
                  {
                    v67 = AVE_SyntaxWriter::WriteU(v22, 0, 2);
                    if (v67)
                    {
                      v26 = v67;
                      if (AVE_Log_CheckLevel(0xD3u, 4))
                      {
                        v68 = AVE_Log_CheckConsole(0xD3u);
                        v69 = AVE_GetCurrTime();
                        v70 = AVE_Log_GetLevelStr(4);
                        if (v68)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v69, 211, v70, "AVE_SEI_WriteContentColorVolume", 371, "(ret) == 0", a1, v26);
                          v69 = AVE_GetCurrTime();
                          v70 = AVE_Log_GetLevelStr(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v69, 211, v70, "AVE_SEI_WriteContentColorVolume", 371, "(ret) == 0", a1, v26);
                      }
                    }

                    else
                    {
                      v71 = v121 + 1;
                      v72 = 3;
                      while (1)
                      {
                        v73 = AVE_SyntaxWriter::WriteI(v22, *(v71 - 1), 32);
                        if (v73)
                        {
                          break;
                        }

                        v74 = AVE_SyntaxWriter::WriteI(v22, *v71, 32);
                        if (v74)
                        {
                          v26 = v74;
                          if (AVE_Log_CheckLevel(0xD3u, 4))
                          {
                            v82 = AVE_Log_CheckConsole(0xD3u);
                            v83 = AVE_GetCurrTime();
                            v84 = AVE_Log_GetLevelStr(4);
                            if (v82)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v83, 211, v84, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                              v83 = AVE_GetCurrTime();
                              v84 = AVE_Log_GetLevelStr(4);
                            }

                            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v83, 211, v84, "AVE_SEI_WriteContentColorVolume", 381, "(ret) == 0", a1, v26);
                          }

                          goto LABEL_62;
                        }

                        v71 += 2;
                        if (!--v72)
                        {
                          v75 = AVE_SyntaxWriter::WriteU(v22, 0, 32);
                          if (v75)
                          {
                            v26 = v75;
                            if (AVE_Log_CheckLevel(0xD3u, 4))
                            {
                              v76 = AVE_Log_CheckConsole(0xD3u);
                              v77 = AVE_GetCurrTime();
                              v78 = AVE_Log_GetLevelStr(4);
                              if (v76)
                              {
                                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v77, 211, v78, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                                v77 = AVE_GetCurrTime();
                                v78 = AVE_Log_GetLevelStr(4);
                              }

                              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v77, 211, v78, "AVE_SEI_WriteContentColorVolume", 388, "(ret) == 0", a1, v26);
                            }
                          }

                          else
                          {
                            v85 = AVE_SyntaxWriter::WriteU(v22, 0xF4240u, 32);
                            if (v85)
                            {
                              v26 = v85;
                              if (AVE_Log_CheckLevel(0xD3u, 4))
                              {
                                v86 = AVE_Log_CheckConsole(0xD3u);
                                v87 = AVE_GetCurrTime();
                                v88 = AVE_Log_GetLevelStr(4);
                                if (v86)
                                {
                                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v87, 211, v88, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                                  v87 = AVE_GetCurrTime();
                                  v88 = AVE_Log_GetLevelStr(4);
                                }

                                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v87, 211, v88, "AVE_SEI_WriteContentColorVolume", 393, "(ret) == 0", a1, v26);
                              }
                            }

                            else
                            {
                              v89 = AVE_SyntaxWriter::WriteU(v22, 0x186A0u, 32);
                              if (v89)
                              {
                                v26 = v89;
                                if (AVE_Log_CheckLevel(0xD3u, 4))
                                {
                                  v90 = AVE_Log_CheckConsole(0xD3u);
                                  v91 = AVE_GetCurrTime();
                                  v92 = AVE_Log_GetLevelStr(4);
                                  if (v90)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v91, 211, v92, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                    v91 = AVE_GetCurrTime();
                                    v92 = AVE_Log_GetLevelStr(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v91, 211, v92, "AVE_SEI_WriteContentColorVolume", 398, "(ret) == 0", a1, v26);
                                }
                              }

                              else if (*(v22 + 2) && (v93 = AVE_SyntaxWriter::AlignToByte(v22), v93))
                              {
                                v26 = v93;
                                if (AVE_Log_CheckLevel(0xD3u, 4))
                                {
                                  v94 = AVE_Log_CheckConsole(0xD3u);
                                  v95 = AVE_GetCurrTime();
                                  v96 = AVE_Log_GetLevelStr(4);
                                  if (v94)
                                  {
                                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v95, 211, v96, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                    v95 = AVE_GetCurrTime();
                                    v96 = AVE_Log_GetLevelStr(4);
                                  }

                                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v95, 211, v96, "AVE_SEI_WriteContentColorVolume", 406, "(ret) == 0", a1, v26);
                                }
                              }

                              else
                              {
                                if (AVE_Log_CheckLevel(0xD3u, 8))
                                {
                                  v97 = AVE_Log_CheckConsole(0xD3u);
                                  v98 = AVE_GetCurrTime();
                                  v99 = AVE_Log_GetLevelStr(8);
                                  v100 = *(v22 + 3);
                                  v101 = (*(v22 + 2) + 8 * v100);
                                  if (v97)
                                  {
                                    printf("%lld %d AVE %s: %s:%d New bits %d (%d bytes)\n", v98, 211, v99, "AVE_SEI_WriteContentColorVolume", 410, *(v22 + 2) + 8 * v100, v100);
                                    v102 = AVE_GetCurrTime();
                                    v103 = AVE_Log_GetLevelStr(8);
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v102, 211, v103, "AVE_SEI_WriteContentColorVolume", 410, *(v22 + 2) + 8 * *(v22 + 3), *(v22 + 3));
                                  }

                                  else
                                  {
                                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (%d bytes)", v98, 211, v99, "AVE_SEI_WriteContentColorVolume", 410, *(v22 + 2) + 8 * v100, v100);
                                  }
                                }

                                v104 = AVE_SEI_FinishNALU(v22, v24, "AVE_SEI_WriteContentColorVolume");
                                if (v104)
                                {
                                  v26 = v104;
                                  if (AVE_Log_CheckLevel(0xD3u, 4))
                                  {
                                    v105 = AVE_Log_CheckConsole(0xD3u);
                                    v106 = AVE_GetCurrTime();
                                    v107 = AVE_Log_GetLevelStr(4);
                                    if (v105)
                                    {
                                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v106, 211, v107, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                      v106 = AVE_GetCurrTime();
                                      v107 = AVE_Log_GetLevelStr(4);
                                    }

                                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v106, 211, v107, "AVE_SEI_WriteContentColorVolume", 413, "(ret) == 0", a1, v26);
                                  }
                                }

                                else
                                {
                                  *a4 = *(v24 + 3);
                                  if (AVE_Log_CheckLevel(0xD3u, 7))
                                  {
                                    v108 = AVE_Log_CheckConsole(0xD3u);
                                    v109 = AVE_GetCurrTime();
                                    v110 = AVE_Log_GetLevelStr(7);
                                    v111 = *a4;
                                    if (v108)
                                    {
                                      printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v109, 211, v110, "AVE_SEI_WriteContentColorVolume", 416, v111);
                                      v112 = AVE_GetCurrTime();
                                      v113 = AVE_Log_GetLevelStr(7);
                                      syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v112, 211, v113, "AVE_SEI_WriteContentColorVolume", 416, *a4);
                                    }

                                    else
                                    {
                                      syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v109, 211, v110, "AVE_SEI_WriteContentColorVolume", 416, v111);
                                    }
                                  }

                                  v26 = 0;
                                }
                              }
                            }
                          }

                          goto LABEL_62;
                        }
                      }

                      v26 = v73;
                      if (AVE_Log_CheckLevel(0xD3u, 4))
                      {
                        v79 = AVE_Log_CheckConsole(0xD3u);
                        v80 = AVE_GetCurrTime();
                        v81 = AVE_Log_GetLevelStr(4);
                        if (v79)
                        {
                          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v80, 211, v81, "AVE_SEI_WriteContentColorVolume", 378, "(ret) == 0", a1, v26);
                          v80 = AVE_GetCurrTime();
                          v81 = AVE_Log_GetLevelStr(4);
                        }

                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v80, 211, v81, "AVE_SEI_WriteContentColorVolume", 378, "(ret) == 0", a1, v26);
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

    else
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v40 = AVE_Log_CheckConsole(0xD3u);
        v41 = AVE_GetCurrTime();
        v42 = AVE_Log_GetLevelStr(4);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v41, 211, v42, "AVE_SEI_WriteContentColorVolume", 348, "pcSyntaxWriter_NALU != __null", a1);
          v41 = AVE_GetCurrTime();
          v42 = AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v41, 211, v42, "AVE_SEI_WriteContentColorVolume", 348, "pcSyntaxWriter_NALU != __null", a1);
      }

      v26 = 4294966293;
    }

LABEL_62:
    (*(*v22 + 8))(v22);
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    if (v26)
    {
      v10 = 4;
    }

    else
    {
      v10 = 7;
    }
  }

  else
  {
    v10 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
        v31 = AVE_GetCurrTime();
        v32 = AVE_Log_GetLevelStr(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v31, 211, v32, "AVE_SEI_WriteContentColorVolume", 342, "pcSyntaxWriter != __null", a1);
      v10 = 4;
    }

    v26 = 4294966293;
  }

LABEL_43:
  if (AVE_Log_CheckLevel(0xD3u, v10))
  {
    v33 = AVE_Log_CheckConsole(0xD3u);
    v34 = AVE_GetCurrTime();
    v35 = AVE_Log_GetLevelStr(v10);
    if (v33)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %p %d\n", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
      v36 = AVE_GetCurrTime();
      v37 = AVE_Log_GetLevelStr(v10);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v36, 211, v37, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %p %d", v34, 211, v35, "AVE_SEI_WriteContentColorVolume", a1, a2, a3, a4, v26);
    }
  }

  v38 = *MEMORY[0x29EDCA608];
  return v26;
}

uint64_t AVE_SEI_WriteExposureTime(unsigned __int8 *a1, double a2)
{
  v3 = AVE_Double2FixedPoint(a2);
  *a1 = 0;
  *(a1 + 1) = bswap64(v3);
  return 9;
}

uint64_t AVE_SEI_WriteSNR(unsigned __int8 *a1, double a2)
{
  v3 = AVE_Double2FixedPoint(a2);
  *a1 = 4;
  *(a1 + 1) = bswap64(v3);
  return 9;
}

uint64_t AVE_SEI_WriteRC(uint64_t a1, unsigned int a2)
{
  *a1 = 1;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteThroughputMode(uint64_t a1, unsigned int a2)
{
  *a1 = 3;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteBitrate(unsigned __int8 *a1, unsigned int a2)
{
  *a1 = 2;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteLookAheadInfo(unsigned __int8 *a1, unsigned int a2)
{
  *a1 = 13;
  *(a1 + 1) = bswap32(a2);
  return 5;
}

uint64_t AVE_SEI_WriteTimecode(unsigned __int8 *a1, unsigned int a2, unint64_t a3)
{
  *a1 = 9;
  *(a1 + 1) = bswap32(a2);
  *(a1 + 5) = bswap64(a3);
  return 13;
}

uint64_t AVE_SEI_WriteMCTF(unsigned __int8 *a1, double a2, double a3, double a4, double a5, double a6, char a7, unsigned __int8 a8, char a9)
{
  v9 = 0;
  if (a2 <= 0.0 || a3 <= 0.0 || a4 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    if (a5 > 0.0)
    {
      v9 = (a2 * a3 * a4 / (a5 * 16777216.0));
      v10 = 32;
    }
  }

  *a1 = 1380865034;
  a1[4] = a8;
  if (v9 >= 0xFF)
  {
    LOBYTE(v9) = -1;
  }

  a1[5] = v9;
  a1[6] = v10 | (a7 << 6) | a9 & 0x1F;
  *(a1 + 7) = bswap64(AVE_Double2FixedPoint(a6));
  return 15;
}

uint64_t AVE_SEI_WriteSessionID(unsigned __int8 *a1, unint64_t a2)
{
  *a1 = 11;
  *(a1 + 1) = bswap64(a2);
  return 9;
}

uint64_t AVE_SEI_WriteDriverVersion(unsigned __int8 *a1, unsigned int a2, unsigned __int8 a3, unsigned __int8 a4)
{
  *a1 = 12;
  *(a1 + 1) = __rev16(a2);
  a1[3] = a3;
  a1[4] = a4;
  return 5;
}

uint64_t AVE_SEI_WriteSEIISPMetadata(unsigned __int8 *a1, int a2, const unsigned __int8 *a3, int a4, uint64_t a5, int a6, int a7, int *a8)
{
  v94 = *MEMORY[0x29EDCA608];
  *v93 = xmmword_295650770;
  *v92 = 1635018093;
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
      v13 = AVE_GetCurrTime();
      v14 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p", v13, 211, v14, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %p %d %lld %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  if (!a1 || !a3 || !a8)
  {
    v29 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | Invalid arguments %p %p %p\n", v31, 211, v32, "AVE_SEI_WriteSEIISPMetadata", 844, "pBuf != __null && pSEIData != __null && pSEISize != __null", a1, a3, a8);
        v33 = AVE_GetCurrTime();
        v34 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Invalid arguments %p %p %p", v33, 211, v34, "AVE_SEI_WriteSEIISPMetadata", 844, "pBuf != __null && pSEIData != __null && pSEISize != __null", a1, a3, a8);
LABEL_41:
        v29 = 4;
        goto LABEL_42;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Invalid arguments %p %p %p", v31, 211, v32, "AVE_SEI_WriteSEIISPMetadata", 844, "pBuf != __null && pSEIData != __null && pSEISize != __null", a1, a3, a8);
    }

LABEL_42:
    v23 = 4294966293;
    goto LABEL_43;
  }

  if ((a6 - 1) < 2)
  {
    v15 = a4 + a4 / 2 + 1;
    v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
    if (v16)
    {
      v17 = v16;
      v18 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
      if (v18)
      {
        v19 = v18;
        AVE_SyntaxWriter::AVE_SyntaxWriter(v18, v17, v15, a7);
        v20 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
        v21 = v20;
        if (v20)
        {
          AVE_SyntaxWriter::AVE_SyntaxWriter(v20, a1, a2, 0);
          started = AVE_SEI_StartNALU(v21, a6, 5u, "AVE_SEI_WriteSEIISPMetadata");
          if (started)
          {
            v23 = started;
            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v24 = AVE_Log_CheckConsole(0xD3u);
              v25 = AVE_GetCurrTime();
              v26 = AVE_Log_GetLevelStr(4);
              if (v24)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v25, 211, v26, "AVE_SEI_WriteSEIISPMetadata", 869, "(ret) == 0", a1, v23);
                v27 = AVE_GetCurrTime();
                v28 = AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v27, 211, v28, "AVE_SEI_WriteSEIISPMetadata", 869, "(ret) == 0", a1, v23);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v25, 211, v26, "AVE_SEI_WriteSEIISPMetadata", 869, "(ret) == 0", a1, v23);
              }
            }
          }

          else
          {
            v23 = AVE_SyntaxWriter::WriteBytes(v19, v93, 16);
            if (v23)
            {
              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v55 = AVE_Log_CheckConsole(0xD3u);
                v56 = AVE_GetCurrTime();
                v57 = AVE_Log_GetLevelStr(4);
                if (v55)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v56, 211, v57, "AVE_SEI_WriteSEIISPMetadata", 875, "(ret) == 0", a1, v23);
                  v58 = AVE_GetCurrTime();
                  v59 = AVE_Log_GetLevelStr(4);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v58, 211, v59, "AVE_SEI_WriteSEIISPMetadata", 875, "(ret) == 0", a1, v23);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v56, 211, v57, "AVE_SEI_WriteSEIISPMetadata", 875, "(ret) == 0", a1, v23);
                }
              }
            }

            else
            {
              v23 = AVE_SyntaxWriter::WriteBytes(v19, v92, 4);
              if (v23)
              {
                if (AVE_Log_CheckLevel(0xD3u, 4))
                {
                  v65 = AVE_Log_CheckConsole(0xD3u);
                  v66 = AVE_GetCurrTime();
                  v67 = AVE_Log_GetLevelStr(4);
                  if (v65)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v66, 211, v67, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                    v68 = AVE_GetCurrTime();
                    v69 = AVE_Log_GetLevelStr(4);
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v68, 211, v69, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v66, 211, v67, "AVE_SEI_WriteSEIISPMetadata", 879, "(ret) == 0", a1, v23);
                  }
                }
              }

              else
              {
                v23 = AVE_SyntaxWriter::WriteBytes(v19, a3, a4);
                if (v23)
                {
                  if (AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    v70 = AVE_Log_CheckConsole(0xD3u);
                    v71 = AVE_GetCurrTime();
                    v72 = AVE_Log_GetLevelStr(4);
                    if (v70)
                    {
                      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v71, 211, v72, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                      v73 = AVE_GetCurrTime();
                      v74 = AVE_Log_GetLevelStr(4);
                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v73, 211, v74, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v71, 211, v72, "AVE_SEI_WriteSEIISPMetadata", 883, "(ret) == 0", a1, v23);
                    }
                  }
                }

                else
                {
                  v23 = AVE_SEI_FinishNALU(v19, v21, "AVE_SEI_WriteSEIISPMetadata");
                  if (v23)
                  {
                    if (AVE_Log_CheckLevel(0xD3u, 4))
                    {
                      v75 = AVE_Log_CheckConsole(0xD3u);
                      v76 = AVE_GetCurrTime();
                      v77 = AVE_Log_GetLevelStr(4);
                      if (v75)
                      {
                        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v76, 211, v77, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                        v78 = AVE_GetCurrTime();
                        v79 = AVE_Log_GetLevelStr(4);
                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v78, 211, v79, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v76, 211, v77, "AVE_SEI_WriteSEIISPMetadata", 886, "(ret) == 0", a1, v23);
                      }
                    }
                  }

                  else
                  {
                    *a8 = *(v21 + 3);
                    if (AVE_Log_CheckLevel(0xD3u, 7))
                    {
                      v80 = AVE_Log_CheckConsole(0xD3u);
                      v81 = AVE_GetCurrTime();
                      v82 = AVE_Log_GetLevelStr(7);
                      v83 = *a8;
                      if (v80)
                      {
                        printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v81, 211, v82, "AVE_SEI_WriteSEIISPMetadata", 889, v83);
                        v84 = AVE_GetCurrTime();
                        v85 = AVE_Log_GetLevelStr(7);
                        syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v84, 211, v85, "AVE_SEI_WriteSEIISPMetadata", 889, *a8);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v81, 211, v82, "AVE_SEI_WriteSEIISPMetadata", 889, v83);
                      }
                    }

                    v23 = 0;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v50 = AVE_Log_CheckConsole(0xD3u);
            v51 = AVE_GetCurrTime();
            v52 = AVE_Log_GetLevelStr(4);
            if (v50)
            {
              printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v51, 211, v52, "AVE_SEI_WriteSEIISPMetadata", 865, "pcSyntaxWriter_NALU != __null", a1);
              v53 = AVE_GetCurrTime();
              v54 = AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v53, 211, v54, "AVE_SEI_WriteSEIISPMetadata", 865, "pcSyntaxWriter_NALU != __null", a1);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v51, 211, v52, "AVE_SEI_WriteSEIISPMetadata", 865, "pcSyntaxWriter_NALU != __null", a1);
            }
          }

          v23 = 4294966293;
        }

        (*(*v19 + 8))(v19);
        if (v21)
        {
          (*(*v21 + 8))(v21);
        }

        free(v17);
        if (v23)
        {
          v29 = 4;
        }

        else
        {
          v29 = 7;
        }

        goto LABEL_43;
      }

      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v45 = AVE_Log_CheckConsole(0xD3u);
        v46 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        if (v45)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v46, 211, v47, "AVE_SEI_WriteSEIISPMetadata", 859, "pcSyntaxWriter != __null", a1);
          v48 = AVE_GetCurrTime();
          v49 = AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v48, 211, v49, "AVE_SEI_WriteSEIISPMetadata", 859, "pcSyntaxWriter != __null", a1);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v46, 211, v47, "AVE_SEI_WriteSEIISPMetadata", 859, "pcSyntaxWriter != __null", a1);
        }
      }

      free(v17);
      goto LABEL_41;
    }

    v29 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v40 = AVE_Log_CheckConsole(0xD3u);
      v41 = AVE_GetCurrTime();
      v42 = AVE_Log_GetLevelStr(4);
      if (v40)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p\n", v41, 211, v42, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
        v43 = AVE_GetCurrTime();
        v44 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p", v43, 211, v44, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
        goto LABEL_41;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | failed to malloc SEI EPB buffer %p", v41, 211, v42, "AVE_SEI_WriteSEIISPMetadata", 855, "pEPB_SEIData != __null", a1);
    }

    goto LABEL_42;
  }

  v29 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v35 = AVE_Log_CheckConsole(0xD3u);
    v36 = AVE_GetCurrTime();
    v37 = AVE_Log_GetLevelStr(4);
    if (v35)
    {
      printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v36, 211, v37, "AVE_SEI_WriteSEIISPMetadata", 848, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a6, a1);
      v38 = AVE_GetCurrTime();
      v39 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v38, 211, v39, "AVE_SEI_WriteSEIISPMetadata", 848, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a6, a1);
      v29 = 4;
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v36, 211, v37, "AVE_SEI_WriteSEIISPMetadata", 848, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a6, a1);
    }
  }

  v23 = 4294966295;
LABEL_43:
  if (AVE_Log_CheckLevel(0xD3u, v29))
  {
    v60 = AVE_Log_CheckConsole(0xD3u);
    v61 = AVE_GetCurrTime();
    v62 = AVE_Log_GetLevelStr(v29);
    if (v60)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %p %d %lld %d %d %p %d\n", v61, 211, v62, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8, v23);
      v61 = AVE_GetCurrTime();
      v62 = AVE_Log_GetLevelStr(v29);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %p %d %p %d %lld %d %d %p %d", v61, 211, v62, "AVE_SEI_WriteSEIISPMetadata", a1, a2, a3, a4, a5, a6, a7, a8, v23);
  }

  v63 = *MEMORY[0x29EDCA608];
  return v23;
}

uint64_t AVE_SEI_WriteLuxLevel(unsigned __int8 *a1, int a2, uint64_t a3, unsigned int a4, int a5, int a6, int *a7)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v12 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v12)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteLuxLevel", a1, a2, a3, a4, a5, a6, a7);
      v15 = AVE_GetCurrTime();
      v67 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p", v15, 211, v67, "AVE_SEI_WriteLuxLevel");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteLuxLevel");
    }
  }

  if (!a1 || !a7)
  {
    v25 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v26 = AVE_Log_CheckConsole(0xD3u);
      v27 = AVE_GetCurrTime();
      v28 = AVE_Log_GetLevelStr(4);
      if (!v26)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v27, 211);
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v27, 211, v28, "AVE_SEI_WriteLuxLevel", 947, "pBuf != __null && pSEISize != __null", a1, a7);
      v29 = AVE_GetCurrTime();
      v25 = 4;
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v29, 211);
    }

LABEL_26:
    v21 = 4294966295;
    goto LABEL_27;
  }

  if ((a5 - 1) >= 2)
  {
    v25 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (v30)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v31, 211, v32, "AVE_SEI_WriteLuxLevel", 951, "encType == AVE_EncType_HEVC || encType == AVE_EncType_AVC", a5, a1);
        v33 = AVE_GetCurrTime();
        v25 = 4;
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v33, 211);
        goto LABEL_26;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v31, 211);
LABEL_25:
      v25 = 4;
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v16 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v16)
  {
    v17 = v16;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v16);
    v18 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v19 = v18;
    if (!v18)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v45 = a6;
        v46 = AVE_Log_CheckConsole(0xD3u);
        v47 = AVE_GetCurrTime();
        v48 = AVE_Log_GetLevelStr(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v47, 211, v48, "AVE_SEI_WriteLuxLevel", 961, "pcSyntaxWriter_NALU != __null", a1);
          v49 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v49);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v47);
        }

        v21 = 4294966293;
        a6 = v45;
      }

      else
      {
        v21 = 4294966293;
      }

      goto LABEL_56;
    }

    AVE_SyntaxWriter::AVE_SyntaxWriter(v18, a1, a2, 0);
    started = AVE_SEI_StartNALU(v19, a5, 4u, "AVE_SEI_WriteLuxLevel");
    if (started)
    {
      v21 = started;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v22 = AVE_Log_CheckConsole(0xD3u);
        v72 = AVE_GetCurrTime();
        v23 = AVE_Log_GetLevelStr(4);
        if (v22)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v23, "AVE_SEI_WriteLuxLevel", 965, "(ret) == 0", a1, v21);
          v24 = AVE_GetCurrTime();
          v70 = a1;
          v71 = v21;
          v69 = 965;
          v68 = AVE_Log_GetLevelStr(4);
LABEL_50:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v24, 211, v68, "AVE_SEI_WriteLuxLevel", v69, "(ret) == 0", v70, v71);
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    else
    {
      AVE_SyntaxWriter::WriteU(v17, 0xB5u, 8);
      AVE_SyntaxWriter::WriteU(v17, 0xBEEFu, 16);
      AVE_SyntaxWriter::WriteU(v17, 0x55AAu, 16);
      AVE_SyntaxWriter::WriteU(v17, a4, 32);
      if (AVE_Log_CheckLevel(0xD3u, 8))
      {
        v50 = a6;
        v51 = AVE_Log_CheckConsole(0xD3u);
        v52 = AVE_GetCurrTime();
        v53 = AVE_Log_GetLevelStr(8);
        v54 = *(v17 + 3);
        if (v51)
        {
          printf("%lld %d AVE %s: %s:%d payloadSize EPB %d\n", v52, 211, v53, "AVE_SEI_WriteLuxLevel", 980, v54);
          v55 = AVE_GetCurrTime();
          v56 = AVE_Log_GetLevelStr(8);
          syslog(3, "%lld %d AVE %s: %s:%d payloadSize EPB %d", v55, 211, v56, "AVE_SEI_WriteLuxLevel", 980, *(v17 + 3));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d payloadSize EPB %d", v52, 211, v53, "AVE_SEI_WriteLuxLevel", 980, v54);
        }

        a6 = v50;
      }

      v57 = AVE_SEI_FinishNALU(v17, v19, "AVE_SEI_WriteLuxLevel");
      if (!v57)
      {
        *a7 = *(v19 + 3);
        if (AVE_Log_CheckLevel(0xD3u, 7))
        {
          v60 = a6;
          v61 = AVE_Log_CheckConsole(0xD3u);
          v62 = AVE_GetCurrTime();
          v63 = AVE_Log_GetLevelStr(7);
          v64 = *a7;
          if (v61)
          {
            printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v62, 211, v63, "AVE_SEI_WriteLuxLevel", 987, v64);
            v65 = AVE_GetCurrTime();
            v66 = AVE_Log_GetLevelStr(7);
            syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v65, 211, v66, "AVE_SEI_WriteLuxLevel", 987, *a7);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v62, 211, v63, "AVE_SEI_WriteLuxLevel", 987, v64);
          }

          a6 = v60;
          v21 = 0;
        }

        else
        {
          v21 = 0;
        }

        goto LABEL_56;
      }

      v21 = v57;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v58 = AVE_Log_CheckConsole(0xD3u);
        v72 = AVE_GetCurrTime();
        v59 = AVE_Log_GetLevelStr(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v59, "AVE_SEI_WriteLuxLevel", 984, "(ret) == 0", a1, v21);
          v24 = AVE_GetCurrTime();
          v70 = a1;
          v71 = v21;
          v69 = 984;
          v68 = AVE_Log_GetLevelStr(4);
          goto LABEL_50;
        }

LABEL_55:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v72, 211);
      }
    }

LABEL_56:
    (*(*v17 + 8))(v17);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    if (v21)
    {
      v25 = 4;
    }

    else
    {
      v25 = 7;
    }

    goto LABEL_27;
  }

  v25 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v34 = AVE_Log_CheckConsole(0xD3u);
    v35 = AVE_GetCurrTime();
    v36 = AVE_Log_GetLevelStr(4);
    if (v34)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v35, 211, v36, "AVE_SEI_WriteLuxLevel", 955, "pcSyntaxWriter != __null", a1);
      v37 = AVE_GetCurrTime();
      v25 = 4;
      v38 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v37, 211, v38, "AVE_SEI_WriteLuxLevel", 955, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v35, 211, v36, "AVE_SEI_WriteLuxLevel", 955, "pcSyntaxWriter != __null", a1);
      v25 = 4;
    }
  }

  v21 = 4294966293;
LABEL_27:
  if (AVE_Log_CheckLevel(0xD3u, v25))
  {
    v39 = AVE_Log_CheckConsole(0xD3u);
    v40 = AVE_GetCurrTime();
    v41 = AVE_Log_GetLevelStr(v25);
    if (v39)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d\n", v40, 211, v41, "AVE_SEI_WriteLuxLevel", a1, a2, a3, a4, a5, a6, a7, v21);
      v42 = AVE_GetCurrTime();
      v43 = AVE_Log_GetLevelStr(v25);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d", v42, 211, v43, "AVE_SEI_WriteLuxLevel", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %d %p %d", v40, 211, v41, "AVE_SEI_WriteLuxLevel", a1);
    }
  }

  return v21;
}

uint64_t AVE_SEI_WriteAccessUnitDelimiter(unsigned __int8 *a1, int a2, uint64_t a3, int a4, int a5, unsigned int *a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v8 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v8)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteAccessUnitDelimiter", a1, a2, a3, a4, a5, a6);
      v11 = AVE_GetCurrTime();
      v93 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", v11, 211, v93);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %p", CurrTime, 211, LevelStr);
    }
  }

  if (a1 && a6)
  {
    v12 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    if (v12)
    {
      v13 = v12;
      AVE_SyntaxWriter::AVE_SyntaxWriter(v12);
      v14 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
      v15 = v14;
      if (v14)
      {
        AVE_SyntaxWriter::AVE_SyntaxWriter(v14, a1, a2, 0);
        v16 = AVE_SyntaxWriter::WriteStartCode(v15);
        if (!v16)
        {
          if (AVE_Log_CheckLevel(0xD3u, 8))
          {
            v37 = AVE_Log_CheckConsole(0xD3u);
            v38 = AVE_GetCurrTime();
            v39 = AVE_Log_GetLevelStr(8);
            v40 = *(v15 + 3);
            v41 = *(v15 + 4) + v40;
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d nal_unit_type %p (%d)\n", v38, 211, v39, "AVE_SEI_WriteAccessUnitDelimiter", 1050, (*(v15 + 4) + v40), v40);
              v42 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(8);
              v43 = *(v15 + 4) + *(v15 + 3);
              syslog(3, "%lld %d AVE %s: %s:%d nal_unit_type %p (%d)", v42);
            }

            else
            {
              v95 = *(v15 + 4) + v40;
              syslog(3, "%lld %d AVE %s: %s:%d nal_unit_type %p (%d)", v38);
            }
          }

          if (a4 == 2)
          {
            v44 = AVE_SyntaxWriter::WriteU(v15, 0x4601u, 16);
            if (v44)
            {
              v17 = v44;
              if (!AVE_Log_CheckLevel(0xD3u, 4))
              {
                goto LABEL_48;
              }

              v18 = a5;
              v45 = AVE_Log_CheckConsole(0xD3u);
              v20 = AVE_GetCurrTime();
              v46 = AVE_Log_GetLevelStr(4);
              if (v45)
              {
                printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v46, "AVE_SEI_WriteAccessUnitDelimiter", 1055, "(ret) == 0", a1, v17);
                v22 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
                goto LABEL_13;
              }

LABEL_31:
              syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v20, 211);
              goto LABEL_33;
            }

            if (AVE_Log_CheckLevel(0xD3u, 8))
            {
              v51 = AVE_Log_CheckConsole(0xD3u);
              v52 = AVE_GetCurrTime();
              v53 = AVE_Log_GetLevelStr(8);
              v54 = *(v15 + 4) + *(v15 + 3);
              v55 = *(v54 - 2);
              v56 = *(v54 - 1);
              if (v51)
              {
                printf("%lld %d AVE %s: %s:%d NUT %0x %0x\n", v52, 211, v53, "AVE_SEI_WriteAccessUnitDelimiter", 1059, v55, v56);
                v57 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(8);
                v58 = *(v15 + 4) + *(v15 + 3);
                v96 = *(v58 - 2);
                v100 = *(v58 - 1);
                syslog(3, "%lld %d AVE %s: %s:%d NUT %0x %0x", v57);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d NUT %0x %0x", v52);
              }
            }

            if ((a5 - 1) < 3)
            {
              v64 = AVE_SyntaxWriter::WriteU(v13, a5 - 1, 3);
              if (v64)
              {
                v17 = v64;
                if (!AVE_Log_CheckLevel(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v65 = AVE_Log_CheckConsole(0xD3u);
                v20 = AVE_GetCurrTime();
                v66 = AVE_Log_GetLevelStr(4);
                if (v65)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v66, "AVE_SEI_WriteAccessUnitDelimiter", 1089, "(ret) == 0", a1, v17);
                  v22 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                  goto LABEL_13;
                }
              }

              else if (*(v13 + 2) && (v71 = AVE_SyntaxWriter::AlignToByte(v13), v71))
              {
                v17 = v71;
                if (!AVE_Log_CheckLevel(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v72 = AVE_Log_CheckConsole(0xD3u);
                v20 = AVE_GetCurrTime();
                v73 = AVE_Log_GetLevelStr(4);
                if (v72)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v73, "AVE_SEI_WriteAccessUnitDelimiter", 1095, "(ret) == 0", a1, v17);
                  v22 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                  goto LABEL_13;
                }
              }

              else
              {
                if (AVE_Log_CheckLevel(0xD3u, 8))
                {
                  v74 = AVE_Log_CheckConsole(0xD3u);
                  v75 = AVE_GetCurrTime();
                  v76 = AVE_Log_GetLevelStr(8);
                  if (v74)
                  {
                    printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v75, 211, v76, "AVE_SEI_WriteAccessUnitDelimiter", 1099, *(v13 + 2) + 8 * *(v13 + 3), (*(v13 + 2) + 8 * *(v13 + 3)) >> 3);
                    v77 = AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(8);
                    v97 = (*(v13 + 2) + 8 * *(v13 + 3));
                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v77);
                  }

                  else
                  {
                    v98 = (*(v13 + 2) + 8 * *(v13 + 3));
                    syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v75);
                  }
                }

                v78 = AVE_SyntaxWriter::CopyFromSyntaxWriter(v15, v13);
                if (!v78)
                {
                  v17 = AVE_SyntaxWriter::AlignToByte(v15);
                  if (AVE_Log_CheckLevel(0xD3u, 8))
                  {
                    v81 = a5;
                    v82 = AVE_Log_CheckConsole(0xD3u);
                    v83 = AVE_GetCurrTime();
                    v84 = AVE_Log_GetLevelStr(8);
                    v85 = *(v15 + 3);
                    v86 = *(v15 + 4) + v85;
                    if (v82)
                    {
                      printf("%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)\n", v83, 211, v84, "AVE_SEI_WriteAccessUnitDelimiter", 1109, (*(v15 + 4) + v85), v85);
                      v87 = AVE_GetCurrTime();
                      AVE_Log_GetLevelStr(8);
                      v88 = *(v15 + 4) + *(v15 + 3);
                      syslog(3, "%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)", v87);
                    }

                    else
                    {
                      v99 = *(v15 + 4) + v85;
                      syslog(3, "%lld %d AVE %s: %s:%d rbsp_trailing_bits %p (%d)", v83);
                    }

                    a5 = v81;
                  }

                  *a6 = *(v15 + 3);
                  if (!AVE_Log_CheckLevel(0xD3u, 7))
                  {
                    goto LABEL_48;
                  }

                  v18 = a5;
                  v89 = AVE_Log_CheckConsole(0xD3u);
                  v90 = AVE_GetCurrTime();
                  v91 = AVE_Log_GetLevelStr(7);
                  if (v89)
                  {
                    printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v90, 211, v91, "AVE_SEI_WriteAccessUnitDelimiter", 1112, *a6);
                    AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(7);
                    v92 = *a6;
                  }

                  syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d");
                  goto LABEL_33;
                }

                v17 = v78;
                if (!AVE_Log_CheckLevel(0xD3u, 4))
                {
                  goto LABEL_48;
                }

                v18 = a5;
                v79 = AVE_Log_CheckConsole(0xD3u);
                v20 = AVE_GetCurrTime();
                v80 = AVE_Log_GetLevelStr(4);
                if (v79)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v80, "AVE_SEI_WriteAccessUnitDelimiter", 1103, "(ret) == 0", a1, v17);
                  v22 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                  goto LABEL_13;
                }
              }

              goto LABEL_31;
            }

            if (AVE_Log_CheckLevel(0xD3u, 4))
            {
              v67 = AVE_Log_CheckConsole(0xD3u);
              v68 = AVE_GetCurrTime();
              v69 = AVE_Log_GetLevelStr(4);
              if (v67)
              {
                printf("%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p\n", v68, 211, v69, "AVE_SEI_WriteAccessUnitDelimiter", 1084, "false", a5, a1);
                v70 = AVE_GetCurrTime();
                AVE_Log_GetLevelStr(4);
                syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p", v70, 211);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR: FrameType NOT RECOGNIZED = %d. FAIL %p", v68, 211);
              }

              v17 = 4294966295;
              goto LABEL_48;
            }
          }

          else if (AVE_Log_CheckLevel(0xD3u, 4))
          {
            v47 = AVE_Log_CheckConsole(0xD3u);
            v48 = AVE_GetCurrTime();
            v49 = AVE_Log_GetLevelStr(4);
            if (v47)
            {
              printf("%lld %d AVE %s: %s:%d %s | encType %d not recognized. FAIL %p\n", v48, 211, v49, "AVE_SEI_WriteAccessUnitDelimiter", 1064, "false", a4, a1);
              v50 = AVE_GetCurrTime();
              AVE_Log_GetLevelStr(4);
              syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not recognized. FAIL %p", v50, 211);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not recognized. FAIL %p", v48, 211);
            }
          }

          v17 = 4294966295;
          goto LABEL_48;
        }

        v17 = v16;
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v18 = a5;
          v19 = AVE_Log_CheckConsole(0xD3u);
          v20 = AVE_GetCurrTime();
          v21 = AVE_Log_GetLevelStr(4);
          if (v19)
          {
            printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v20, 211, v21, "AVE_SEI_WriteAccessUnitDelimiter", 1047, "(ret) == 0", a1, v17);
            v22 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
LABEL_13:
            syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v22, 211);
LABEL_33:
            a5 = v18;
            goto LABEL_48;
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD3u, 4))
        {
          v18 = a5;
          v34 = AVE_Log_CheckConsole(0xD3u);
          v35 = AVE_GetCurrTime();
          v36 = AVE_Log_GetLevelStr(4);
          if (v34)
          {
            printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v35, 211, v36, "AVE_SEI_WriteAccessUnitDelimiter", 1043, "pcSyntaxWriter_NALU != __null", a1);
            v35 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v35);
          v17 = 4294966293;
          goto LABEL_33;
        }

        v17 = 4294966293;
      }

LABEL_48:
      (*(*v13 + 8))(v13);
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      if (v17)
      {
        v23 = 4;
      }

      else
      {
        v23 = 7;
      }

      goto LABEL_53;
    }

    v23 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v29 = AVE_Log_CheckConsole(0xD3u);
      v30 = AVE_GetCurrTime();
      v31 = AVE_Log_GetLevelStr(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v30, 211, v31, "AVE_SEI_WriteAccessUnitDelimiter", 1039, "pcSyntaxWriter != __null", a1);
        v32 = AVE_GetCurrTime();
        v23 = 4;
        v33 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v32, 211, v33, "AVE_SEI_WriteAccessUnitDelimiter", 1039, "pcSyntaxWriter != __null", a1);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v30, 211, v31, "AVE_SEI_WriteAccessUnitDelimiter", 1039, "pcSyntaxWriter != __null", a1);
        v23 = 4;
      }
    }

    v17 = 4294966293;
  }

  else
  {
    v23 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v24 = AVE_Log_CheckConsole(0xD3u);
      v25 = AVE_GetCurrTime();
      v26 = AVE_Log_GetLevelStr(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v25, 211, v26, "AVE_SEI_WriteAccessUnitDelimiter", 1035, "pBuf != __null && pSEISize != __null", a1, a6);
        v27 = AVE_GetCurrTime();
        v23 = 4;
        v28 = AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v27, 211, v28, "AVE_SEI_WriteAccessUnitDelimiter", 1035, "pBuf != __null && pSEISize != __null", a1, a6);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v25, 211, v26, "AVE_SEI_WriteAccessUnitDelimiter", 1035, "pBuf != __null && pSEISize != __null", a1, a6);
        v23 = 4;
      }
    }

    v17 = 4294966295;
  }

LABEL_53:
  if (AVE_Log_CheckLevel(0xD3u, v23))
  {
    v59 = AVE_Log_CheckConsole(0xD3u);
    v60 = AVE_GetCurrTime();
    v61 = AVE_Log_GetLevelStr(v23);
    if (v59)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d\n", v60, 211, v61, "AVE_SEI_WriteAccessUnitDelimiter", a1, a2, a3, a4, a5, a6, v17);
      v62 = AVE_GetCurrTime();
      v94 = AVE_Log_GetLevelStr(v23);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v62, 211, v94, "AVE_SEI_WriteAccessUnitDelimiter");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %lld %d %d %p %d", v60, 211, v61, "AVE_SEI_WriteAccessUnitDelimiter");
    }
  }

  return v17;
}

uint64_t AVE_SEI_WriteActiveParameterSets(unsigned __int8 *a1, int a2, int a3, uint64_t a4, int a5, int *a6)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v10 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %d %lld %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WriteActiveParameterSets", a1, a2, a3, a4, a5, a6);
      v13 = AVE_GetCurrTime();
      v72 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %d %p", v13, 211, v72, "AVE_SEI_WriteActiveParameterSets");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %d %lld %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WriteActiveParameterSets");
    }
  }

  if (!a1 || !a6)
  {
    v22 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v23 = AVE_Log_CheckConsole(0xD3u);
      v24 = AVE_GetCurrTime();
      v25 = AVE_Log_GetLevelStr(4);
      if (!v23)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v24, 211);
        goto LABEL_25;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v24, 211, v25, "AVE_SEI_WriteActiveParameterSets", 1166, "pBuf != __null && pSEISize != __null", a1, a6);
      v26 = AVE_GetCurrTime();
      v22 = 4;
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v26, 211);
    }

LABEL_26:
    v36 = 4294966295;
    goto LABEL_27;
  }

  if (a5 != 2)
  {
    v22 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v27 = AVE_Log_CheckConsole(0xD3u);
      v28 = AVE_GetCurrTime();
      v29 = AVE_Log_GetLevelStr(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v28, 211, v29, "AVE_SEI_WriteActiveParameterSets", 1169, "encType == AVE_EncType_HEVC", a5, a1);
        v30 = AVE_GetCurrTime();
        v22 = 4;
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v30, 211);
        goto LABEL_26;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v28, 211);
LABEL_25:
      v22 = 4;
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v14 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v14)
  {
    v15 = v14;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v14);
    v16 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v17 = v16;
    if (!v16)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v43 = AVE_Log_CheckConsole(0xD3u);
        v44 = AVE_GetCurrTime();
        v45 = AVE_Log_GetLevelStr(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v44, 211, v45, "AVE_SEI_WriteActiveParameterSets", 1177, "pcSyntaxWriter_NALU != __null", a1);
          v44 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v44);
      }

      started = 4294966293;
      goto LABEL_76;
    }

    AVE_SyntaxWriter::AVE_SyntaxWriter(v16, a1, a2, 0);
    started = AVE_SEI_StartNALU(v17, 2, 0x81u, "AVE_SEI_WriteActiveParameterSets");
    if (started)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v18 = AVE_Log_CheckConsole(0xD3u);
        v19 = AVE_GetCurrTime();
        v20 = AVE_Log_GetLevelStr(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v20, "AVE_SEI_WriteActiveParameterSets", 1181, "(ret) == 0", a1, started);
          v21 = AVE_GetCurrTime();
          v77 = a1;
          v79 = started;
          v74 = 1181;
          v73 = AVE_Log_GetLevelStr(4);
LABEL_65:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v21, 211, v73, "AVE_SEI_WriteActiveParameterSets", v74, "(ret) == 0", v77, v79);
          goto LABEL_76;
        }

LABEL_75:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v19, 211);
        goto LABEL_76;
      }

      goto LABEL_76;
    }

    started = AVE_SyntaxWriter::WriteU(v15, 0, 4);
    if (started)
    {
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_76;
      }

      v46 = AVE_Log_CheckConsole(0xD3u);
      v19 = AVE_GetCurrTime();
      v47 = AVE_Log_GetLevelStr(4);
      if (!v46)
      {
        goto LABEL_75;
      }

      v81 = v17;
      v48 = started;
      v80 = started;
      v49 = a1;
      v78 = a1;
      v82 = a5;
      v50 = a3;
      v51 = 1185;
    }

    else
    {
      started = AVE_SyntaxWriter::WriteBit(v15, 1);
      if (started)
      {
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_76;
        }

        v52 = AVE_Log_CheckConsole(0xD3u);
        v19 = AVE_GetCurrTime();
        v47 = AVE_Log_GetLevelStr(4);
        if (!v52)
        {
          goto LABEL_75;
        }

        v81 = v17;
        v48 = started;
        v80 = started;
        v49 = a1;
        v78 = a1;
        v82 = a5;
        v50 = a3;
        v51 = 1187;
      }

      else
      {
        started = AVE_SyntaxWriter::WriteBit(v15, 1);
        if (started)
        {
          if (!AVE_Log_CheckLevel(0xD3u, 4))
          {
            goto LABEL_76;
          }

          v53 = AVE_Log_CheckConsole(0xD3u);
          v19 = AVE_GetCurrTime();
          v47 = AVE_Log_GetLevelStr(4);
          if (!v53)
          {
            goto LABEL_75;
          }

          v81 = v17;
          v48 = started;
          v80 = started;
          v49 = a1;
          v78 = a1;
          v82 = a5;
          v50 = a3;
          v51 = 1189;
        }

        else
        {
          started = AVE_SyntaxWriter::WriteUE(v15, 0);
          if (started)
          {
            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_76;
            }

            v54 = AVE_Log_CheckConsole(0xD3u);
            v19 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
            if (!v54)
            {
              goto LABEL_75;
            }

            v81 = v17;
            v48 = started;
            v80 = started;
            v49 = a1;
            v78 = a1;
            v82 = a5;
            v50 = a3;
            v51 = 1191;
          }

          else
          {
            started = AVE_SyntaxWriter::WriteUE(v15, a3);
            if (!started)
            {
              if (*(v15 + 2))
              {
                started = AVE_SyntaxWriter::AlignToByte(v15);
                if (started)
                {
                  if (!AVE_Log_CheckLevel(0xD3u, 4))
                  {
                    goto LABEL_76;
                  }

                  v56 = AVE_Log_CheckConsole(0xD3u);
                  v19 = AVE_GetCurrTime();
                  v57 = AVE_Log_GetLevelStr(4);
                  if (v56)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v57, "AVE_SEI_WriteActiveParameterSets", 1199, "(ret) == 0", a1, started);
                    v58 = AVE_GetCurrTime();
                    AVE_Log_GetLevelStr(4);
                    syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v58, 211);
                    goto LABEL_76;
                  }

                  goto LABEL_75;
                }
              }

              if (AVE_Log_CheckLevel(0xD3u, 8))
              {
                v59 = AVE_Log_CheckConsole(0xD3u);
                v60 = AVE_GetCurrTime();
                v61 = AVE_Log_GetLevelStr(8);
                if (v59)
                {
                  printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v60, 211, v61, "AVE_SEI_WriteActiveParameterSets", 1203, *(v15 + 2) + 8 * *(v15 + 3), (*(v15 + 2) + 8 * *(v15 + 3)) >> 3);
                  v62 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(8);
                  v75 = (*(v15 + 2) + 8 * *(v15 + 3));
                  syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v62);
                }

                else
                {
                  v76 = (*(v15 + 2) + 8 * *(v15 + 3));
                  syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v60);
                }
              }

              started = AVE_SEI_FinishNALU(v15, v17, "AVE_SEI_WriteActiveParameterSets");
              if (!started)
              {
                *a6 = *(v17 + 3);
                if (AVE_Log_CheckLevel(0xD3u, 7))
                {
                  v66 = AVE_Log_CheckConsole(0xD3u);
                  v67 = AVE_GetCurrTime();
                  v68 = AVE_Log_GetLevelStr(7);
                  v69 = *a6;
                  if (v66)
                  {
                    printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v67, 211, v68, "AVE_SEI_WriteActiveParameterSets", 1209, v69);
                    v70 = AVE_GetCurrTime();
                    v71 = AVE_Log_GetLevelStr(7);
                    syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v70, 211, v71, "AVE_SEI_WriteActiveParameterSets", 1209, *a6);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v67, 211, v68, "AVE_SEI_WriteActiveParameterSets", 1209, v69);
                  }
                }

                started = 0;
                goto LABEL_76;
              }

              if (AVE_Log_CheckLevel(0xD3u, 4))
              {
                v63 = AVE_Log_CheckConsole(0xD3u);
                v19 = AVE_GetCurrTime();
                v64 = AVE_Log_GetLevelStr(4);
                if (v63)
                {
                  printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v64, "AVE_SEI_WriteActiveParameterSets", 1206, "(ret) == 0", a1, started);
                  v65 = AVE_GetCurrTime();
                  AVE_Log_GetLevelStr(4);
                  syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v65, 211);
                  goto LABEL_76;
                }

                goto LABEL_75;
              }

LABEL_76:
              (*(*v15 + 8))(v15);
              if (v17)
              {
                (*(*v17 + 8))(v17);
              }

              v36 = started;
              if (started)
              {
                v22 = 4;
              }

              else
              {
                v22 = 7;
              }

              goto LABEL_27;
            }

            if (!AVE_Log_CheckLevel(0xD3u, 4))
            {
              goto LABEL_76;
            }

            v55 = AVE_Log_CheckConsole(0xD3u);
            v19 = AVE_GetCurrTime();
            v47 = AVE_Log_GetLevelStr(4);
            if (!v55)
            {
              goto LABEL_75;
            }

            v81 = v17;
            v48 = started;
            v80 = started;
            v49 = a1;
            v78 = a1;
            v82 = a5;
            v50 = a3;
            v51 = 1193;
          }
        }
      }
    }

    printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v19, 211, v47, "AVE_SEI_WriteActiveParameterSets", v51, "(ret) == 0", v78, v80);
    v21 = AVE_GetCurrTime();
    v77 = v49;
    v79 = v48;
    v74 = v51;
    a3 = v50;
    v17 = v81;
    a5 = v82;
    v73 = AVE_Log_GetLevelStr(4);
    goto LABEL_65;
  }

  v22 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v31 = AVE_Log_CheckConsole(0xD3u);
    v32 = AVE_GetCurrTime();
    v33 = AVE_Log_GetLevelStr(4);
    if (v31)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v32, 211, v33, "AVE_SEI_WriteActiveParameterSets", 1173, "pcSyntaxWriter != __null", a1);
      v34 = AVE_GetCurrTime();
      v22 = 4;
      v35 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v34, 211, v35, "AVE_SEI_WriteActiveParameterSets", 1173, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v32, 211, v33, "AVE_SEI_WriteActiveParameterSets", 1173, "pcSyntaxWriter != __null", a1);
      v22 = 4;
    }
  }

  v36 = 4294966293;
LABEL_27:
  if (AVE_Log_CheckLevel(0xD3u, v22))
  {
    v37 = AVE_Log_CheckConsole(0xD3u);
    v38 = AVE_GetCurrTime();
    v39 = AVE_Log_GetLevelStr(v22);
    if (v37)
    {
      printf("%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d\n", v38, 211, v39, "AVE_SEI_WriteActiveParameterSets", a1, a2, a3, a4, a5, a6, v36);
      v40 = AVE_GetCurrTime();
      v41 = AVE_Log_GetLevelStr(v22);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d", v40, 211, v41, "AVE_SEI_WriteActiveParameterSets", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d %d %lld %d %p %d", v38, 211, v39, "AVE_SEI_WriteActiveParameterSets", a1);
    }
  }

  return v36;
}

uint64_t AVE_SEI_WritePictureTiming(unsigned __int8 *a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int *a9)
{
  if (AVE_Log_CheckLevel(0xD3u, 7))
  {
    v13 = AVE_Log_CheckConsole(0xD3u);
    CurrTime = AVE_GetCurrTime();
    LevelStr = AVE_Log_GetLevelStr(7);
    if (v13)
    {
      printf("%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p\n", CurrTime, 211, LevelStr, "AVE_SEI_WritePictureTiming", a1, a2, a3, a4, a5, a6, a7, a8, a9);
      v16 = AVE_GetCurrTime();
      v91 = AVE_Log_GetLevelStr(7);
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p", v16, 211, v91, "AVE_SEI_WritePictureTiming", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p %d %lld %d %d %u %d %d %p", CurrTime, 211, LevelStr, "AVE_SEI_WritePictureTiming", a1);
    }
  }

  if (!a1 || !a9)
  {
    v29 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v30 = AVE_Log_CheckConsole(0xD3u);
      v31 = AVE_GetCurrTime();
      v32 = AVE_Log_GetLevelStr(4);
      if (!v30)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v31, 211);
        goto LABEL_34;
      }

      printf("%lld %d AVE %s: %s:%d %s | invalid args %p %p\n", v31, 211, v32, "AVE_SEI_WritePictureTiming", 1267, "pBuf != __null && pSEISize != __null", a1, a9);
      v33 = AVE_GetCurrTime();
      v29 = 4;
      AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | invalid args %p %p", v33, 211);
    }

LABEL_35:
    v24 = 4294966295;
    goto LABEL_36;
  }

  if (a4 != 2)
  {
    v29 = 4;
    if (AVE_Log_CheckLevel(0xD3u, 4))
    {
      v34 = AVE_Log_CheckConsole(0xD3u);
      v35 = AVE_GetCurrTime();
      v36 = AVE_Log_GetLevelStr(4);
      if (v34)
      {
        printf("%lld %d AVE %s: %s:%d %s | encType %d not supported %p\n", v35, 211, v36, "AVE_SEI_WritePictureTiming", 1270, "encType == AVE_EncType_HEVC", a4, a1);
        v37 = AVE_GetCurrTime();
        v29 = 4;
        AVE_Log_GetLevelStr(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v37, 211);
        goto LABEL_35;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | encType %d not supported %p", v35, 211);
LABEL_34:
      v29 = 4;
      goto LABEL_35;
    }

    goto LABEL_35;
  }

  v17 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
  if (v17)
  {
    v18 = v17;
    AVE_SyntaxWriter::AVE_SyntaxWriter(v17);
    v19 = operator new(0x1030uLL, MEMORY[0x29EDC9418]);
    v20 = v19;
    if (!v19)
    {
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v48 = AVE_Log_CheckConsole(0xD3u);
        v49 = AVE_GetCurrTime();
        v50 = AVE_Log_GetLevelStr(4);
        if (v48)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v49, 211, v50, "AVE_SEI_WritePictureTiming", 1279, "pcSyntaxWriter_NALU != __null", a1);
          v51 = AVE_GetCurrTime();
          AVE_Log_GetLevelStr(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v51);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v49);
        }
      }

      v24 = 4294966293;
      goto LABEL_74;
    }

    AVE_SyntaxWriter::AVE_SyntaxWriter(v19, a1, a2, 0);
    if (AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded == AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::LastBufferingPeriodFrame)
    {
      v21 = 0;
    }

    else
    {
      v21 = AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded + ~AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::LastBufferingPeriodFrame;
    }

    if (a5)
    {
      v22 = a6 - AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded + 2;
    }

    else
    {
      v22 = 0;
    }

    if (a7 == 1 || a8 == 21)
    {
      AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::LastBufferingPeriodFrame = AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded;
    }

    ++AVE_SEI_WritePictureTiming(unsigned char *,int,long long,_E_AVE_EncType,BOOL,unsigned int,_E_AVE_FrameType,NalUnitType,int *)::Coded;
    started = AVE_SEI_StartNALU(v20, 2, 1u, "AVE_SEI_WritePictureTiming");
    if (started)
    {
      v24 = started;
      if (AVE_Log_CheckLevel(0xD3u, 4))
      {
        v25 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v27 = AVE_Log_GetLevelStr(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v26, 211, v27, "AVE_SEI_WritePictureTiming", 1304, "(ret) == 0", a1, v24);
          v28 = AVE_GetCurrTime();
          v99 = a1;
          v100 = v24;
          v94 = 1304;
          v92 = AVE_Log_GetLevelStr(4);
LABEL_63:
          syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v28, 211, v92, "AVE_SEI_WritePictureTiming", v94, "(ret) == 0", v99, v100);
          goto LABEL_74;
        }

LABEL_73:
        syslog(3, "%lld %d AVE %s: %s:%d %s | %p %d", v26, 211);
      }

LABEL_74:
      (*(*v18 + 8))(v18);
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }

      if (v24)
      {
        v29 = 4;
      }

      else
      {
        v29 = 7;
      }

      goto LABEL_36;
    }

    if (AVE_Log_CheckLevel(0xD3u, 8))
    {
      v52 = v21;
      v53 = AVE_Log_CheckConsole(0xD3u);
      v54 = AVE_GetCurrTime();
      v55 = AVE_Log_GetLevelStr(8);
      v56 = *(v20 + 3);
      v57 = *(v20 + 4) + v56;
      if (v53)
      {
        printf("%lld %d AVE %s: %s:%d payloadType %p (%d)\n", v54, 211, v55, "AVE_SEI_WritePictureTiming", 1308, (*(v20 + 4) + v56), v56);
        v58 = AVE_GetCurrTime();
        AVE_Log_GetLevelStr(8);
        v95 = *(v20 + 4) + *(v20 + 3);
        syslog(3, "%lld %d AVE %s: %s:%d payloadType %p (%d)", v58);
      }

      else
      {
        v96 = *(v20 + 4) + v56;
        syslog(3, "%lld %d AVE %s: %s:%d payloadType %p (%d)", v54);
      }

      v21 = v52;
    }

    v59 = AVE_SyntaxWriter::WriteU(v18, v21, 24);
    if (v59)
    {
      v24 = v59;
      if (!AVE_Log_CheckLevel(0xD3u, 4))
      {
        goto LABEL_74;
      }

      v60 = AVE_Log_CheckConsole(0xD3u);
      v26 = AVE_GetCurrTime();
      v61 = AVE_Log_GetLevelStr(4);
      if (!v60)
      {
        goto LABEL_73;
      }

      v62 = v26;
      v63 = v24;
      v64 = a1;
      v65 = a8;
      v66 = a4;
      v67 = a7;
      v68 = 1312;
      printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v62, 211, v61, "AVE_SEI_WritePictureTiming", 1312, "(ret) == 0", a1, v24);
    }

    else
    {
      v69 = AVE_SyntaxWriter::WriteU(v18, v22, 24);
      if (v69)
      {
        v24 = v69;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v70 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v71 = AVE_Log_GetLevelStr(4);
        if (!v70)
        {
          goto LABEL_73;
        }

        v72 = v26;
        v63 = v24;
        v64 = a1;
        v65 = a8;
        v66 = a4;
        v67 = a7;
        v68 = 1314;
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v72, 211, v71, "AVE_SEI_WritePictureTiming", 1314, "(ret) == 0", a1, v24);
      }

      else if (*(v18 + 2) && (v73 = AVE_SyntaxWriter::AlignToByte(v18), v73))
      {
        v24 = v73;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v74 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v75 = AVE_Log_GetLevelStr(4);
        if (!v74)
        {
          goto LABEL_73;
        }

        v76 = v26;
        v63 = v24;
        v64 = a1;
        v65 = a8;
        v66 = a4;
        v67 = a7;
        v68 = 1320;
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v76, 211, v75, "AVE_SEI_WritePictureTiming", 1320, "(ret) == 0", a1, v24);
      }

      else
      {
        if (AVE_Log_CheckLevel(0xD3u, 8))
        {
          v77 = AVE_Log_CheckConsole(0xD3u);
          v78 = AVE_GetCurrTime();
          v79 = AVE_Log_GetLevelStr(8);
          if (v77)
          {
            printf("%lld %d AVE %s: %s:%d New bits %d (bytes %d)\n", v78, 211, v79, "AVE_SEI_WritePictureTiming", 1324, *(v18 + 2) + 8 * *(v18 + 3), (*(v18 + 2) + 8 * *(v18 + 3)) >> 3);
            v80 = AVE_GetCurrTime();
            AVE_Log_GetLevelStr(8);
            v97 = (*(v18 + 2) + 8 * *(v18 + 3));
            syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v80);
          }

          else
          {
            v98 = (*(v18 + 2) + 8 * *(v18 + 3));
            syslog(3, "%lld %d AVE %s: %s:%d New bits %d (bytes %d)", v78);
          }
        }

        v81 = AVE_SEI_FinishNALU(v18, v20, "AVE_SEI_WritePictureTiming");
        if (!v81)
        {
          *a9 = *(v20 + 3);
          if (AVE_Log_CheckLevel(0xD3u, 7))
          {
            v85 = AVE_Log_CheckConsole(0xD3u);
            v86 = AVE_GetCurrTime();
            v87 = AVE_Log_GetLevelStr(7);
            v88 = *a9;
            if (v85)
            {
              printf("%lld %d AVE %s: %s:%d final SEISize %d\n", v86, 211, v87, "AVE_SEI_WritePictureTiming", 1330, v88);
              v89 = AVE_GetCurrTime();
              v90 = AVE_Log_GetLevelStr(7);
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v89, 211, v90, "AVE_SEI_WritePictureTiming", 1330, *a9);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s:%d final SEISize %d", v86, 211, v87, "AVE_SEI_WritePictureTiming", 1330, v88);
            }
          }

          v24 = 0;
          goto LABEL_74;
        }

        v24 = v81;
        if (!AVE_Log_CheckLevel(0xD3u, 4))
        {
          goto LABEL_74;
        }

        v82 = AVE_Log_CheckConsole(0xD3u);
        v26 = AVE_GetCurrTime();
        v83 = AVE_Log_GetLevelStr(4);
        if (!v82)
        {
          goto LABEL_73;
        }

        v84 = v26;
        v63 = v24;
        v64 = a1;
        v65 = a8;
        v66 = a4;
        v67 = a7;
        v68 = 1327;
        printf("%lld %d AVE %s: %s:%d %s | %p %d\n", v84, 211, v83, "AVE_SEI_WritePictureTiming", 1327, "(ret) == 0", a1, v24);
      }
    }

    v28 = AVE_GetCurrTime();
    v99 = v64;
    v100 = v63;
    v94 = v68;
    a7 = v67;
    a4 = v66;
    a8 = v65;
    v92 = AVE_Log_GetLevelStr(4);
    goto LABEL_63;
  }

  v29 = 4;
  if (AVE_Log_CheckLevel(0xD3u, 4))
  {
    v38 = AVE_Log_CheckConsole(0xD3u);
    v39 = AVE_GetCurrTime();
    v40 = AVE_Log_GetLevelStr(4);
    if (v38)
    {
      printf("%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p\n", v39, 211, v40, "AVE_SEI_WritePictureTiming", 1274, "pcSyntaxWriter != __null", a1);
      v41 = AVE_GetCurrTime();
      v29 = 4;
      v42 = AVE_Log_GetLevelStr(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v41, 211, v42, "AVE_SEI_WritePictureTiming", 1274, "pcSyntaxWriter != __null", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | Failed to create SyntaxWriter %p", v39, 211, v40, "AVE_SEI_WritePictureTiming", 1274, "pcSyntaxWriter != __null", a1);
      v29 = 4;
    }
  }

  v24 = 4294966293;
LABEL_36:
  if (AVE_Log_CheckLevel(0xD3u, v29))
  {
    v43 = AVE_Log_CheckConsole(0xD3u);
    v44 = AVE_GetCurrTime();
    v45 = AVE_Log_GetLevelStr(v29);
    if (v43)
    {
      printf("%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d\n", v44, 211, v45, "AVE_SEI_WritePictureTiming", a1, a3, a4, a5, a6, a7, a8, a9, v24);
      v46 = AVE_GetCurrTime();
      v93 = AVE_Log_GetLevelStr(v29);
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d", v46, 211, v93, "AVE_SEI_WritePictureTiming", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %lld %d %d %u %d %d %p %d", v44, 211, v45, "AVE_SEI_WritePictureTiming", a1);
    }
  }

  return v24;
}