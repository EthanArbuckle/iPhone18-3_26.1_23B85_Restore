void sub_11C4F0(uint64_t a1, char *a2, size_t a3, int a4, int a5, int a6, int a7)
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
            v24 = a1 + 20 * v20;
            do
            {
              if (*(v22 + 2 * v23) < 0)
              {
                break;
              }

              ++v23;
            }

            while (v23 != 7);
            v25 = *(v24 + 2 * v23);
            if (v25 < 0 && v21 < a6 * a5)
            {
              _S0 = (v25 << v18);
              __asm { FCVT            H0, S0 }

              v31 = &a2[4 * v21];
              *v31 = LOWORD(_S0);
              _S1 = (*(v24 + 2 * v23) << 17 >> 25 << v18);
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

  if (sub_160EF0(0xDu, 7))
  {
    v35 = sub_160F34(0xDu);
    v36 = sub_175AE4();
    v37 = sub_160F68(7);
    if (v35)
    {
      printf("%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n\n", v36, 13, v37, "AVE_LRME_FillFSResultsBestMV", v16, v15, v14);
      v36 = sub_175AE4();
      sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: OF: %s: total_mbs = %d, total_valid = %d, total_nonzero = %d\n", v36);
  }
}

uint64_t sub_11C71C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (sub_160EF0(0x2Eu, 6))
    {
      v4 = sub_160F34(0x2Eu);
      v5 = sub_175AE4();
      v6 = sub_160F68(6);
      v7 = *(a2 + 40);
      v8 = *(a1 + 29280);
      v9 = *(a2 + 2568);
      if (v4)
      {
        printf("%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p\n", v5, 46, v6, v7, *(a1 + 29280), v9);
        v10 = sub_175AE4();
        v11 = sub_160F68(6);
        v12 = *(a1 + 29280);
        syslog(3, "%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p", v10, 46, v11, *(a2 + 40), v12, *(a2 + 2568));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: Send DMV output buffer: framenumber:%d %p %p", v5, 46, v6, v7, *(a1 + 29280), v9);
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
      if (sub_160EF0(3u, 4))
      {
        v19 = sub_160F34(3u);
        v20 = sub_175AE4();
        v21 = sub_160F68(4);
        if (v19)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped\n", v20, 3, v21, "SendOutputFrameDMV", 1579, "false");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR:: Session callbacks are not set properly, output will be dropped");
      }
    }
  }

  else
  {
    v13 = 3758097084;
    if (sub_160EF0(3u, 4))
    {
      v14 = sub_160F34(3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL\n", v15, 3, v16, "SendOutputFrameDMV", 1564, "pFrame != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV pFrame == NULL");
    }
  }

  sub_117768(a1, a2, 0);
  return v13;
}

void *sub_11C9CC(uint64_t a1, const void *a2)
{
  result = sub_11CA40(a1 + 16);
  if (result)
  {
    v5 = result;
    memcpy(result, a2, 0x626uLL);

    return sub_163A30((a1 + 16), v5, 0);
  }

  return result;
}

uint64_t sub_11CA40(uint64_t a1)
{
  v1 = *(a1 + 25320);
  if (v1)
  {
    v2 = v1 - 1;
    *(a1 + 25320) = v2;
    return *(a1 + 8 * v2 + 25192);
  }

  else
  {
    if (sub_160EF0(0xD8u, 4))
    {
      v4 = sub_160F34(0xD8u);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      if (v4)
      {
        printf("%lld %d AVE %s: %s:%d %s | failed to get free spot \n", v5, 216, v6, "new_stats", 56, "free_pool_available > 0");
        v7 = sub_175AE4();
        v8 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get free spot ", v7, 216, v8, "new_stats", 56, "free_pool_available > 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | failed to get free spot ", v5, 216, v6, "new_stats", 56, "free_pool_available > 0");
      }
    }

    return 0;
  }
}

uint64_t sub_11CB54(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, const void *a8)
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

  if (sub_160EF0(0x2Eu, 5))
  {
    v12 = sub_160F34(0x2Eu);
    v13 = sub_175AE4();
    v14 = sub_160F68(5);
    if (v12)
    {
      v15 = 3;
      printf("%lld %d AVE %s: %s::%s:%d frame drop %lld %d %lld %d 0x%x %p\n", v13, 46, v14, "AVE_FrameRecv", "Emit", 1764, a2, a3, a6, v11, 3, 0);
      v13 = sub_175AE4();
      v14 = sub_160F68(5);
    }

    else
    {
      v15 = 3;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d frame drop %lld %d %lld %d 0x%x %p", v13, 46, v14, "AVE_FrameRecv", "Emit", 1764, a2, a3, a6, v11, 3, 0);
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
    if (sub_160EF0(0x2Eu, 4))
    {
      v20 = sub_160F34(0x2Eu);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s::%s:%d fail to emit %lld %d %lld %d 0x%x %p %d\n", v21, 46, v22, "AVE_FrameRecv", "Emit", 1788, a2, a3, a6, v11, v15, v16, v19);
        v23 = sub_175AE4();
        v24 = sub_160F68(4);
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

uint64_t sub_11CE6C(uint64_t a1, uint64_t a2)
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
    v14 = sub_160EF0(0x2Eu, 7);
    if (v14)
    {
      v15 = sub_160F34(0x2Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(7);
      v18 = *(a1 + 29272);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d\n", v16, 46, v17, "DropFrame", 1824, *v10, *(a2 + 44), *(a2 + 40), *(a1 + 29112), *v13, v13[38], *(a1 + 29276));
        v16 = sub_175AE4();
        v17 = sub_160F68(7);
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

      syslog(3, "%lld %d AVE %s: %s:%d %d %d %d %p %d %d %d", v16, 46, v17, "DropFrame");
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
        if (sub_160EF0(0x2Eu, 7))
        {
          v25 = sub_160F34(0x2Eu);
          v26 = sub_175AE4();
          v27 = sub_160F68(7);
          if (v25)
          {
            printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes\n", v26, 46, v27, 0);
            v28 = sub_175AE4();
            v46 = sub_160F68(7);
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v28, 46, v46, 0);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame on %d bytes", v26, 46, v27, 0);
          }
        }

        (*(a1 + 29288))(*(a1 + 29280), 0, 0, 0, *(a1 + 39468));
      }

      else if (sub_160EF0(0x2Eu, 7))
      {
        v29 = sub_160F34(0x2Eu);
        v30 = sub_175AE4();
        v31 = sub_160F68(7);
        if (v29)
        {
          printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v30, 46, v31);
          v32 = sub_175AE4();
          v47 = sub_160F68(7);
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
      v23 = sub_11CB54(v14, *(v3 + 12), *(a1 + 39448), v22, *(a2 + 2552), *(a2 + 40), -1000, 0);
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

    *(v9 + 3324) = sub_175AE4();
    sub_175D4(*(a1 + 143696), *(a2 + 40));
    v35 = *(a2 + 3180);
    if ((v35 & 0x80000000) == 0)
    {
      if (v35 >= 0x1E)
      {
        if (sub_160EF0(0x2Eu, 4))
        {
          v37 = sub_160F34(0x2Eu);
          v38 = sub_175AE4();
          v39 = sub_160F68(4);
          if (v37)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v38, 46, v39, "AVE_FrameRecv", "DropFrame", 1884, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
            v38 = sub_175AE4();
            sub_160F68(4);
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

        else if (sub_160EF0(3u, 4))
        {
          v41 = sub_160F34(3u);
          v42 = sub_175AE4();
          v43 = sub_160F68(4);
          if (v41)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v42, 3, v43, "DropFrame", 1886, "codedHeader != __null");
            v44 = sub_175AE4();
            v48 = sub_160F68(4);
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
    if (sub_160EF0(0x2Eu, 7))
    {
      v4 = sub_160F34(0x2Eu);
      v5 = sub_175AE4();
      v6 = sub_160F68(7);
      if (v4)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v5, 46, v6);
        v7 = sub_175AE4();
        v45 = sub_160F68(7);
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

__CFDictionary *sub_11D464(uint64_t a1, int *a2, int a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v15 = sub_160F34(0x2Eu);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL\n", v16, 46, v17, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1911, "TemporalLevelInfoDict != __null");
        v16 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | TemporalLevelInfoDict == NULL", v16);
    }

    return 0;
  }

  v7 = Mutable;
  sub_14B9CC(kCMHEVCTemporalLevelInfoKey_TemporalLevel, a3, Mutable);
  sub_14B9CC(kCMHEVCTemporalLevelInfoKey_ProfileSpace, *a2, v7);
  v8 = sub_17D658(a2[1]);
  sub_14B9CC(kCMHEVCTemporalLevelInfoKey_TierFlag, v8, v7);
  v9 = sub_17D4BC(a2[2]);
  sub_14B9CC(kCMHEVCTemporalLevelInfoKey_ProfileIndex, v9, v7);
  v10 = CFDataCreate(0, (a1 + 137776), 4);
  if (!v10)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v18 = sub_160F34(0x2Eu);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_profileCompatibilityFlags == NULL\n", v19, 46, v20, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1922, "cf_profileCompatibilityFlags != __null");
        v19 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | cf_profileCompatibilityFlags == NULL", v19);
    }

    v24 = v7;
    goto LABEL_21;
  }

  v11 = v10;
  CFDictionaryAddValue(v7, kCMHEVCTemporalLevelInfoKey_ProfileCompatibilityFlags, v10);
  v12 = CFDataCreate(0, (a1 + 137780), 6);
  if (!v12)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v21 = sub_160F34(0x2Eu);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | cf_constraintIndicatorFlags == NULL\n", v22, 46, v23, "AVE_FrameRecv", "CreateTemporalLevelInfoDictionary", 1929, "cf_constraintIndicatorFlags != __null");
        v22 = sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | cf_constraintIndicatorFlags == NULL", v22);
    }

    CFRelease(v7);
    v24 = v11;
LABEL_21:
    CFRelease(v24);
    return 0;
  }

  v13 = v12;
  CFDictionaryAddValue(v7, kCMHEVCTemporalLevelInfoKey_ConstraintIndicatorFlags, v12);
  v14 = sub_17DA3C(a2[15]);
  sub_14B9CC(kCMHEVCTemporalLevelInfoKey_LevelIndex, v14, v7);
  CFRelease(v11);
  CFRelease(v13);
  return v7;
}

uint64_t sub_11D888(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v9 = 3758097084;
      if (sub_160EF0(0x2Eu, 4))
      {
        v13 = sub_160F34(0x2Eu);
        v14 = sub_175AE4();
        v15 = sub_160F68(4);
        if (v13)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v14, 46, v15, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          v14 = sub_175AE4();
          v15 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v14, 46, v15, "AVE_FrameRecv", "SendFrameMCTF", 1969, "0 <= pFrame->PlaneNumber && pFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (sub_160EF0(0x2Eu, 6))
      {
        v4 = sub_160F34(0x2Eu);
        v5 = sub_175AE4();
        v6 = sub_160F68(6);
        v7 = *(a1 + 29280);
        if (v4)
        {
          printf("%lld %d AVE %s: Send MCTF PlaneNumber:%d framenumber:%d %p %p\n", v5, 46, v6, *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2568));
          v5 = sub_175AE4();
          sub_160F68(6);
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
    if (sub_160EF0(3u, 4))
    {
      v10 = sub_160F34(3u);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL\n", v11, 3, v12, "SendFrameMCTF", 1966, "pFrame != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF pFrame == NULL");
    }
  }

  return v9;
}

uint64_t sub_11DB70(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 3180) >= 0x1Eu)
    {
      v10 = 3758097084;
      if (sub_160EF0(0x2Eu, 4))
      {
        v14 = sub_160F34(0x2Eu);
        v15 = sub_175AE4();
        v16 = sub_160F68(4);
        if (v14)
        {
          printf("%lld %d AVE %s: %s:%d %s | Wrong plane number %d\n", v15, 46, v16, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
          v15 = sub_175AE4();
          v16 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong plane number %d", v15, 46, v16, "SendFrameGGM", 1999, "0 <= psFrame->PlaneNumber && psFrame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      }
    }

    else
    {
      if (sub_160EF0(0x2Eu, 6))
      {
        v4 = sub_160F34(0x2Eu);
        v5 = sub_175AE4();
        v6 = sub_160F68(6);
        v7 = *(a2 + 2576);
        if (v4)
        {
          printf("%lld %d AVE %s: %s: Send GGM frame done: plane number (%d) frame number (%d), %p %p %p\n", v5, 46, v6, "SendFrameGGM", *(a2 + 3180), *(a2 + 40), *(a1 + 29280), *(a2 + 2576), *(a2 + 2568));
          v5 = sub_175AE4();
          v6 = sub_160F68(6);
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
    if (sub_160EF0(0x2Eu, 4))
    {
      v11 = sub_160F34(0x2Eu);
      v12 = sub_175AE4();
      v13 = sub_160F68(4);
      if (v11)
      {
        printf("%lld %d AVE %s: %s:%d %s | Wrong parameters\n", v12, 46, v13, "SendFrameGGM", 1996, "psFrame != __null");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | Wrong parameters");
    }
  }

  return v10;
}

uint64_t sub_11DEB4(void *a1, uint64_t a2, void *a3, char *a4)
{
  v6 = a1 + 17958;
  v7 = a1 + 17224;
  v8 = (a1 + 4868);
  v9 = (a1 + 3369);
  dataLength = 0;
  v823 = 0;
  v822 = 0;
  cf = 0;
  v10 = *(a1 + 9737);
  bzero(v818, 0x948uLL);
  if (sub_160EF0(0x2Eu, 6))
  {
    v14 = sub_160F34(0x2Eu);
    v15 = sub_175AE4();
    v16 = sub_160F68(6);
    if (v14)
    {
      printf("%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d\n", v15, 46, v16, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4);
      v15 = sub_175AE4();
      v16 = sub_160F68(6);
      v701 = v7[3];
    }

    syslog(3, "%lld %d AVE %s: %s::%s Enter %p %lld %p %p %d", v15, 46, v16, "AVE_FrameRecv");
  }

  if (!a2)
  {
    v809 = 3758097084;
    v808 = v9;
    if (sub_160EF0(3u, 4))
    {
      v26 = sub_160F34(3u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (!v26)
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL");
        goto LABEL_45;
      }

      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrame Frame == NULL\n", v27, 3, v28, "SendFrame", 2137, "Frame != __null");
      sub_175AE4();
      sub_160F68(4);
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
    v809 = 3758097084;
    v808 = v9;
    if (sub_160EF0(0x2Eu, 4))
    {
      v26 = sub_160F34(0x2Eu);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (!v26)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v29, 46);
        goto LABEL_45;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d\n", v29, 46, v30, "AVE_FrameRecv", "SendFrame", 2140, "0 <= Frame->PlaneNumber && Frame->PlaneNumber < (((3 + 2) + 2 + 5 + (2 + 1)) * ((2) < ((63 + 1)) ? (2) : ((63 + 1))))", *(a2 + 3180));
      v31 = sub_175AE4();
      sub_160F68(4);
      v32 = *(a2 + 3180);
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong plane number %d", v31, 46);
    }

    goto LABEL_25;
  }

  v17 = a4;
  if (!a1[3669])
  {
    if (sub_160EF0(0x2Eu, 7))
    {
      v47 = a2;
      v48 = sub_160F34(0x2Eu);
      v49 = sub_175AE4();
      v50 = sub_160F68(7);
      if (v48)
      {
        printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v49, 46, v50);
        v51 = sub_175AE4();
        sampleSizeArraye = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v51, 46, sampleSizeArraye);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v49, 46, v50);
      }

      a2 = v47;
    }

    sub_175D4(v6[4], *(a2 + 40));
    sub_117768(a1, a2, 0);
    return 0;
  }

  v789 = v10;
  v18 = *v8;
  v19 = a4 >= 0;
  v806 = a2;
  v807 = v7;
  v20 = a2;
  v796 = v8;
  v808 = v9;
  if ((*(v8 + 77) < 2u || *(a2 + 44)) && (v21 = v9[580], (v21 & 0x80000000) == 0) && v21 == *(a2 + 40) - 1 && a1[3639] && v9[542] >= 1)
  {
    if (sub_160EF0(0x2Eu, 8))
    {
      v22 = sub_160F34(0x2Eu);
      v23 = sub_175AE4();
      v24 = sub_160F68(8);
      v25 = a1[3639];
      if (v22)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d\n", v23, 46, v24, "AVE_FrameRecv", "SendFrame", 2169, a1, v807[3], a1[3639], v9[542]);
        v23 = sub_175AE4();
        v24 = sub_160F68(8);
        v721 = a1[3639];
        v744 = v9[542];
        v712 = v807[3];
        v20 = a2;
      }

      else
      {
        v729 = a1[3639];
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add MV-HEVC buffer %p %d", v23, 46, v24, "AVE_FrameRecv");
    }

    if (sub_124F68(a1[3639], v9[542], 1u, v818))
    {
      if (sub_160EF0(0x2Eu, 4))
      {
        v26 = sub_160F34(0x2Eu);
        v212 = sub_175AE4();
        v213 = sub_160F68(4);
        v89 = v807;
        v214 = v807[3];
        v215 = *(v20 + 40);
        v216 = a1[3639];
        v217 = v9[542];
        if (v26)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p\n", v212, 46, v213, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v214, v215, v216, v9[542], v818);
          v218 = sub_175AE4();
          v219 = sub_160F68(4);
          a2 = v20;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p", v218, 46, v219, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v807[3], *(v20 + 40), a1[3639], v9[542], v818);
          v26 = 0;
        }

        else
        {
          a2 = v20;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add MV-HEVC buffer failed frame %d %p %d %p", v212, 46, v213, "AVE_FrameRecv", "SendFrame", 2174, "ret == 0", a1, v214, v215, v216, v9[542], v818);
        }

        v53 = 0;
        v35 = 0;
        v809 = 0;
        goto LABEL_303;
      }

      v26 = 0;
      v53 = 0;
      v35 = 0;
      v809 = 0;
      a2 = v20;
LABEL_257:
      v7 = v807;
      goto LABEL_46;
    }

    v784 = v9[542];
    dataLength = v784;
    v26 = 1;
    v17 = a4;
  }

  else
  {
    v26 = 0;
    v784 = 0;
  }

  a2 = v20;
  v793 = v20 + 29688;
  v33 = v19 & v18;
  if (v17)
  {
    v34 = v19 & v18;
  }

  else
  {
    v34 = 0;
  }

  v801 = v26;
  v785 = v34;
  if (v34)
  {
    v35 = 0;
    v7 = v807;
  }

  else
  {
    sub_1E098(v6[4], *(v20 + 40), v808[719]);
    sub_1E500(v6[4], *(v20 + 40), v808[778]);
    sub_1E96C(v6[4], *(v20 + 40), v808[720]);
    if ((*(a1 + 29819) & 0x80) != 0)
    {
      v52 = v808[718];
    }

    else
    {
      v52 = -1;
    }

    sub_1EDD8(v6[4], *(v20 + 40), v52);
    if (*(v8 + 131) == 2)
    {
      if (v808[758] <= 1)
      {
        v87 = v808[750] >= 3 && v808[751] > 2;
      }

      else
      {
        v87 = 1;
      }

      v99 = *(v20 + 2456);
      if (v99 > 6)
      {
        v100 = 0;
      }

      else
      {
        v100 = dword_185C70[v99];
      }

      sub_20C4C(v6[4], *(v20 + 40), *(a1 + 14459));
      sub_20F94(v6[4], *(v20 + 40), v100, v87, *(v20 + 2464), *(v20 + 29728));
      sub_21478(v6[4], *(v20 + 40), *(a1 + 14459));
      v26 = v801;
    }

    sub_1CB40(v6[4], *(v20 + 40));
    sub_20050(v6[4], *(v20 + 40), *(v20 + 4708), *(v20 + 4704), *(v20 + 6116), *(v20 + 4672), *(v20 + 4656), *(v20 + 4664), *(v20 + 4680), *(v20 + 4688));
    v101 = sub_21ECC(v6[4], *(v20 + 40), -1);
    v35 = malloc_type_malloc(v101, 0x100004077774924uLL);
    if (sub_160EF0(0xD3u, 8))
    {
      v799 = v35;
      v102 = a3;
      v103 = sub_160F34(0xD3u);
      v104 = sub_175AE4();
      v105 = sub_160F68(8);
      v106 = v807[3];
      if (v103)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Allocating %d bytes for SEI buffer\n", v104, 211, v105, "AVE_FrameRecv", "SendFrame", 2254, a1, v807[3], v101);
        v104 = sub_175AE4();
        v105 = sub_160F68(8);
        v26 = v801;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Allocating %d bytes for SEI buffer", v104, 211, v105, "AVE_FrameRecv", "SendFrame", 2254, a1, v807[3], v101);
      a3 = v102;
      a2 = v806;
      v35 = v799;
    }

    v7 = v807;
    if (!v35)
    {
      if (!sub_160EF0(3u, 4))
      {
        v53 = 0;
        v35 = 0;
        v809 = 3758097085;
        goto LABEL_46;
      }

      v803 = a3;
      v114 = sub_160F34(3u);
      v115 = sub_175AE4();
      v116 = sub_160F68(4);
      v117 = *(a2 + 40);
      if (v114)
      {
        v118 = v101;
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d\n", v115, 3, v116, "SendFrame", 2258, "pSEIBuffer != __null", *(a2 + 40), v101);
        v119 = sub_175AE4();
        v120 = sub_160F68(4);
        a2 = v806;
        v7 = v807;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d", v119, 3, v120, "SendFrame", 2258, "pSEIBuffer != __null", *(v806 + 40), v118);
        v53 = 0;
        v35 = 0;
        v809 = 3758097085;
LABEL_122:
        a3 = v803;
        v26 = v801;
        goto LABEL_46;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SEIBuffer malloc failed. frame %d; SEIBufferSize %d", v115, 3, v116, "SendFrame", 2258, "pSEIBuffer != __null", *(a2 + 40), v101);
      v53 = 0;
      v35 = 0;
      v809 = 3758097085;
      v26 = v801;
      goto LABEL_257;
    }

    v809 = sub_11846C(a1, a2, v35, v101, v33, a4);
    if (v809)
    {
      if (!sub_160EF0(3u, 4))
      {
        v53 = 0;
        goto LABEL_46;
      }

      v107 = v807;
      v795 = v6;
      v108 = sub_160F34(3u);
      v109 = sub_175AE4();
      v110 = sub_160F68(4);
      v111 = *(a2 + 40);
      if (v108)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d\n", v109, 3, v110, "SendFrame", 2264, "err == 0", *(a2 + 40), v809);
        v112 = sub_175AE4();
        v113 = sub_160F68(4);
        v7 = v807;
        v26 = v801;
        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d", v112, 3, v113, "SendFrame", 2264, "err == 0", *(a2 + 40), v809);
        v53 = 0;
LABEL_228:
        v6 = v795;
        goto LABEL_46;
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: AddAllSEIs failed. frame %d err = %d", v109, 3, v110, "SendFrame", 2264, "err == 0", *(a2 + 40), v809);
      v53 = 0;
LABEL_129:
      v6 = v795;
      goto LABEL_312;
    }

    if (sub_160EF0(0x2Eu, 7))
    {
      v121 = sub_160F34(0x2Eu);
      v122 = sub_175AE4();
      v123 = sub_160F68(7);
      v124 = v807[3];
      v125 = *(v807 + 8);
      if (v121)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer\n", v122, 46, v123, "AVE_FrameRecv", "SendFrame", 2267, a1, v807[3], v125);
        v126 = sub_175AE4();
        v127 = sub_160F68(7);
        v7 = v807;
        v26 = v801;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer", v126, 46, v127, "AVE_FrameRecv", "SendFrame", 2267, a1, v807[3], *(v807 + 8));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Wrote %d bytes to SEI buffer", v122, 46, v123, "AVE_FrameRecv", "SendFrame", 2267, a1, v807[3], v125);
        v7 = v807;
      }
    }

    v145 = *(v7 + 8);
    if (v145 >= 1)
    {
      if (sub_124F68(v35, v145, 2u, v818))
      {
        if (sub_160EF0(0x2Eu, 4))
        {
          v802 = a3;
          v146 = v7;
          v147 = sub_160F34(0x2Eu);
          v148 = sub_175AE4();
          v149 = sub_160F68(4);
          v150 = v146[3];
          v151 = *(a2 + 40);
          v152 = *(v146 + 8);
          if (!v147)
          {
            v107 = v146;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p", v148, 46, v149, "AVE_FrameRecv", "SendFrame", 2275, "ret == 0", a1, v150, v151, v35, *(v146 + 8), v818);
            v53 = 0;
            v809 = 0;
            goto LABEL_312;
          }

          v768 = *(v146 + 8);
          v95 = v6;
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p\n", v148, 46, v149, "AVE_FrameRecv", "SendFrame", 2275, "ret == 0", a1, v150, v151, v35, v768, v818);
          v96 = sub_175AE4();
          v153 = sub_160F68(4);
          v767 = *(v807 + 8);
          v772 = v818;
          v745 = *(a2 + 40);
          v762 = v35;
          v714 = a1;
          v722 = v807[3];
          v694 = 2275;
          v703 = "ret == 0";
          v26 = v801;
          v7 = v807;
          sampleSizeArray = v153;
          v98 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add SEI failed frame %d %p %d %p";
LABEL_148:
          v6 = v95;
          syslog(3, v98, v96, 46, sampleSizeArray, "AVE_FrameRecv", "SendFrame", v694, v703, v714, v722, v745, v762, v767, v772);
LABEL_160:
          v53 = 0;
LABEL_161:
          v809 = 0;
LABEL_162:
          a3 = v802;
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
    v798 = v35;
    if (v808[270] >= 1)
    {
      v64 = 0;
      v65 = 0;
      memoryBlock = a1 + 7137;
      v66 = (a1 + 3503);
      v803 = a3;
      v794 = v6;
      while (1)
      {
        v67 = v66[6];
        if (v67 >= 1)
        {
          v68 = a1[*(a2 + 3180) + 3444];
          if (!v68)
          {
            if (!sub_160EF0(0x2Eu, 4))
            {
              goto LABEL_141;
            }

            v128 = sub_160F34(0x2Eu);
            v129 = sub_175AE4();
            v130 = sub_160F68(4);
            v107 = v807;
            v131 = v807[3];
            v132 = *(a2 + 3180);
            v35 = v798;
            if (v128)
            {
              v7 = v807;
              printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d\n", v129, 46, v130, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v131, *(a2 + 3180), v65);
              v133 = sub_175AE4();
              v134 = sub_160F68(4);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v133, 46, v134, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v807[3], *(a2 + 3180), v65);
              v53 = 0;
              v809 = 0;
              goto LABEL_122;
            }

            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v129, 46, v130, "AVE_FrameRecv", "SendFrame", 2353, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v131, *(a2 + 3180), v65);
            v53 = 0;
            v809 = 0;
            a3 = v803;
LABEL_311:
            v26 = v801;
LABEL_312:
            v7 = v107;
            goto LABEL_46;
          }

          v69 = v66;
          v70 = a2;
          if (sub_160EF0(0x2Eu, 8))
          {
            v71 = sub_160F34(0x2Eu);
            v72 = sub_175AE4();
            v73 = sub_160F68(8);
            v74 = v807[3];
            if (v71)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v72, 46, v73, "AVE_FrameRecv", "SendFrame", 2355, a1, v74, v65, (v68 + v64), v67);
              v75 = sub_175AE4();
              v76 = sub_160F68(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v75, 46, v76, "AVE_FrameRecv", "SendFrame", 2355, a1, v807[3], v65, (v68 + v64), v67);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v72, 46, v73, "AVE_FrameRecv", "SendFrame", 2355, a1, v74, v65, (v68 + v64), v67);
            }

            v70 = v806;
            v6 = v794;
          }

          if (sub_124F68((v68 + v64), v67, 3u, v818))
          {
            a2 = v70;
            if (sub_160EF0(0x2Eu, 4))
            {
              v135 = (v68 + v64);
              v136 = sub_160F34(0x2Eu);
              v137 = sub_175AE4();
              v138 = sub_160F68(4);
              v7 = v807;
              if (v136)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v137, 46, v138, "AVE_FrameRecv", "SendFrame", 2362, "ret == 0", a1, v807[3], *(v70 + 40), v135, v67, v818);
                v137 = sub_175AE4();
                v138 = sub_160F68(4);
                v746 = *(v70 + 40);
                v723 = v807[3];
                v7 = v807;
                a2 = v70;
              }

              else
              {
                v754 = *(v70 + 40);
                v735 = v807[3];
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v137, 46, v138, "AVE_FrameRecv", "SendFrame", 2362, "ret == 0");
LABEL_314:
              v53 = 0;
              v809 = 0;
              a3 = v803;
LABEL_436:
              v26 = v801;
LABEL_437:
              v35 = v798;
              goto LABEL_46;
            }

LABEL_141:
            v53 = 0;
            v809 = 0;
            a3 = v803;
            v7 = v807;
            goto LABEL_436;
          }

          dataLength += v67;
          a2 = v70;
          v66 = v69;
        }

        v77 = v66[4];
        if (v77 < 1)
        {
          a3 = v803;
          v7 = v807;
        }

        else
        {
          v78 = a1[*(a2 + 3180) + 3309];
          if (!v78)
          {
            if (sub_160EF0(0x2Eu, 4))
            {
              v139 = sub_160F34(0x2Eu);
              v140 = sub_175AE4();
              v141 = sub_160F68(4);
              v7 = v807;
              v142 = *(a2 + 3180);
              v35 = v798;
              if (v139)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v140, 46, v141, "AVE_FrameRecv", "SendFrame", 2375, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v807[3], *(a2 + 3180), v65);
                v143 = sub_175AE4();
                v144 = sub_160F68(4);
                v747 = *(a2 + 3180);
                v724 = v807[3];
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v143, 46, v144, "AVE_FrameRecv");
              }

              else
              {
                v755 = *(a2 + 3180);
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v140, 46, v141, "AVE_FrameRecv");
              }

              v53 = 0;
              v809 = 0;
              a3 = v803;
              v26 = v801;
              goto LABEL_46;
            }

            goto LABEL_141;
          }

          v79 = (v78 + v66[3]);
          if (sub_160EF0(0x2Eu, 8))
          {
            v80 = v66;
            v81 = sub_160F34(0x2Eu);
            v82 = sub_175AE4();
            v83 = sub_160F68(8);
            v84 = v807[3];
            if (v81)
            {
              printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v82, 46, v83, "AVE_FrameRecv", "SendFrame", 2377, a1, v84, v65, v79, v77);
              v85 = sub_175AE4();
              v86 = sub_160F68(8);
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v85, 46, v86, "AVE_FrameRecv", "SendFrame", 2377, a1, v807[3], v65, v79, v77);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v82, 46, v83, "AVE_FrameRecv", "SendFrame", 2377, a1, v84, v65, v79, v77);
            }

            a2 = v806;
            v66 = v80;
          }

          if (sub_124F68(v79, v77, 3u, v818))
          {
            v154 = v807;
            if (sub_160EF0(0x2Eu, 4))
            {
              v155 = sub_160F34(0x2Eu);
              v156 = sub_175AE4();
              v157 = sub_160F68(4);
              v158 = v807[3];
              v159 = *(a2 + 40);
              if (v155)
              {
                printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p\n", v156, 46, v157, "AVE_FrameRecv", "SendFrame", 2383, "ret == 0", a1, v158, v159, v79, v77, v818);
                v160 = sub_175AE4();
                v161 = sub_160F68(4);
                v769 = v77;
                v773 = v818;
                v748 = *(a2 + 40);
                v763 = v79;
                v715 = a1;
                v725 = v807[3];
                v7 = v807;
                v695 = 2383;
                sampleSizeArraya = v161;
                v162 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p";
                goto LABEL_255;
              }

              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", v156, 46, v157, "AVE_FrameRecv", "SendFrame", 2383, "ret == 0", a1, v158, v159, v79, v77, v818);
            }

            v53 = 0;
            v809 = 0;
            a3 = v803;
            v26 = v801;
            v35 = v798;
            goto LABEL_319;
          }

          v7 = v807;
          if ((*(a2 + 9) & 1) != 0 && sub_15F8B8(dataLength, v77, memoryBlock))
          {
            if (!sub_160EF0(0x2Eu, 4))
            {
              goto LABEL_314;
            }

            v271 = sub_160F34(0x2Eu);
            v272 = sub_175AE4();
            v273 = sub_160F68(4);
            if (!v271)
            {
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", v272, 46, v273, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0");
              goto LABEL_314;
            }

            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v272, 46, v273, "AVE_FrameRecv", "SendFrame", 2391, "ret == 0", a1, v807[3], *(a2 + 40), v65, dataLength, v77, memoryBlock);
            v160 = sub_175AE4();
            v274 = sub_160F68(4);
            v773 = v77;
            v777 = a1 + 28548;
            v763 = v65;
            v769 = dataLength;
            v725 = v807[3];
            v748 = *(a2 + 40);
            v715 = a1;
            v6 = v794;
            v695 = 2391;
            v162 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p";
            sampleSizeArraya = v274;
LABEL_255:
            syslog(3, v162, v160, 46, sampleSizeArraya, "AVE_FrameRecv", "SendFrame", v695, "ret == 0", v715, v725, v748, v763, v769, v773, v777);
            goto LABEL_314;
          }

          dataLength += v77;
          LODWORD(v77) = v66[4];
          a3 = v803;
        }

        ++v65;
        v66 += 4;
        v64 += 1024;
        if (v65 >= v808[270])
        {
          goto LABEL_170;
        }
      }
    }

    LODWORD(v77) = 0;
    v66 = 0;
LABEL_170:
    v26 = v801;
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
      v802 = a3;
      v39 = (v38 + (v17 << 10));
      if (sub_160EF0(0x2Eu, 8))
      {
        v797 = v35;
        v40 = sub_160F34(0x2Eu);
        v41 = v7;
        v42 = sub_175AE4();
        v43 = sub_160F68(8);
        if (v40)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d\n", v42, 46, v43, "AVE_FrameRecv", "SendFrame", 2297, a1, v41[3], a4, v39, v37);
          v44 = v39;
          v45 = sub_175AE4();
          v46 = sub_160F68(8);
          v713 = v41[3];
          v26 = v801;
          blockBufferOut = v45;
          v39 = v44;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", blockBufferOut, 46, v46, "AVE_FrameRecv", "SendFrame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice header %d %p %d", v42, 46, v43, "AVE_FrameRecv", "SendFrame");
        }

        v7 = v41;
        a2 = v806;
        v35 = v797;
      }

      if (sub_124F68(v39, v37, 3u, v818))
      {
        if (sub_160EF0(0x2Eu, 4))
        {
          v795 = v6;
          v163 = sub_160F34(0x2Eu);
          v164 = sub_175AE4();
          v165 = sub_160F68(4);
          if (v163)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p\n", v164, 46, v165, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0", a1, v7[3], *(a2 + 40), v39, v37, v818);
            v164 = sub_175AE4();
            v165 = sub_160F68(4);
            v749 = *(a2 + 40);
            v726 = v7[3];
            v26 = v801;
          }

          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice header failed frame %d %p %d %p", v164, 46, v165, "AVE_FrameRecv", "SendFrame", 2302, "ret == 0");
          v53 = 0;
          v809 = 0;
          a3 = v802;
          goto LABEL_228;
        }

        goto LABEL_160;
      }

      dataLength += v37;
      goto LABEL_164;
    }

    if (sub_160EF0(0x2Eu, 4))
    {
      v802 = a3;
      v89 = v7;
      v90 = sub_160F34(0x2Eu);
      v91 = sub_175AE4();
      v92 = sub_160F68(4);
      v93 = v89[3];
      v94 = *(a2 + 3180);
      if (!v90)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d", v91, 46, v92, "AVE_FrameRecv", "SendFrame", 2295, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v93, *(a2 + 3180), a4);
        v53 = 0;
        v809 = 0;
LABEL_303:
        v7 = v89;
        goto LABEL_46;
      }

      v7 = v89;
      v95 = v6;
      printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d\n", v91, 46, v92, "AVE_FrameRecv", "SendFrame", 2295, "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null", a1, v93, *(a2 + 3180), a4);
      v96 = sub_175AE4();
      v97 = sub_160F68(4);
      v745 = *(a2 + 3180);
      v762 = a4;
      v714 = a1;
      v722 = v89[3];
      v694 = 2295;
      v703 = "m_CodedBuffPointerSliceHeader[Frame->PlaneNumber] != __null";
      v26 = v801;
      sampleSizeArray = v97;
      v98 = "%lld %d AVE %s: %s::%s:%d %s | wrong slice header %p %lld %d %d";
      goto LABEL_148;
    }

    goto LABEL_149;
  }

LABEL_164:
  v798 = v35;
  v166 = v36 + 1;
  v77 = v36[1];
  if (v77 < 1)
  {
    v66 = v36 + 1;
    goto LABEL_170;
  }

  v167 = a1[*(a2 + 3180) + 3309];
  if (!v167)
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v207 = v26;
      v89 = v7;
      v208 = sub_160F34(0x2Eu);
      v209 = sub_175AE4();
      v210 = sub_160F68(4);
      v211 = *(a2 + 3180);
      if (v208)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d\n", v209, 46, v210, "AVE_FrameRecv", "SendFrame", 2315, "m_CodedBuffPointer[Frame->PlaneNumber] != __null", a1, v89[3], *(a2 + 3180), a4);
        v209 = sub_175AE4();
        v210 = sub_160F68(4);
        v750 = *(a2 + 3180);
        v728 = v89[3];
        v207 = v801;
      }

      else
      {
        v753 = *(a2 + 3180);
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong slice data %p %lld %d %d", v209, 46, v210, "AVE_FrameRecv");
      v53 = 0;
      v809 = 0;
      v35 = v798;
      v26 = v207;
      goto LABEL_303;
    }

    goto LABEL_321;
  }

  v168 = (v167 + *v36);
  v66 = v36 + 1;
  if (sub_160EF0(0x2Eu, 8))
  {
    v804 = a3;
    v169 = v7;
    v170 = sub_160F34(0x2Eu);
    v171 = sub_175AE4();
    v172 = sub_160F68(8);
    if (v170)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d\n", v171, 46, v172, "AVE_FrameRecv", "SendFrame", 2317, a1, v169[3], a4, v168, v77);
      v171 = sub_175AE4();
      v172 = sub_160F68(8);
      v716 = v169[3];
      v66 = v166;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld add slice data %d %p %d", v171, 46, v172, "AVE_FrameRecv", "SendFrame");
    a3 = v804;
    a2 = v806;
    v7 = v169;
    v26 = v801;
  }

  if (sub_124F68(v168, v77, 3u, v818))
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v795 = v6;
      v253 = sub_160F34(0x2Eu);
      v254 = sub_175AE4();
      v255 = sub_160F68(4);
      v256 = v7[3];
      v257 = *(a2 + 40);
      if (!v253)
      {
        v107 = v7;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", v254, 46, v255, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v256, v257, v168, v77, v818);
        v53 = 0;
        v809 = 0;
        v6 = v795;
        v35 = v798;
        goto LABEL_311;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p\n", v254, 46, v255, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v256, v257, v168, v77, v818);
      v258 = sub_175AE4();
      v259 = sub_160F68(4);
      v26 = v801;
      a2 = v806;
      blockBufferOuta = v258;
      v7 = v807;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add slice data failed frame %d %p %d %p", blockBufferOuta, 46, v259, "AVE_FrameRecv", "SendFrame", 2322, "ret == 0", a1, v807[3], *(v806 + 40), v168, v77, v818);
      v53 = 0;
      v809 = 0;
      goto LABEL_395;
    }

    goto LABEL_321;
  }

  if ((*(a2 + 9) & 1) != 0 && sub_15F8B8(dataLength, v77, a1 + 7137))
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v795 = v6;
      v260 = sub_160F34(0x2Eu);
      v261 = sub_175AE4();
      v262 = sub_160F68(4);
      if (v260)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p\n", v261, 46, v262, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0", a1, v7[3], *(a2 + 40), a4, dataLength, v77, a1 + 28548);
        v263 = sub_175AE4();
        v264 = sub_160F68(4);
        v732 = v807[3];
        v751 = *(v806 + 40);
        blockBufferOutb = v263;
        a2 = v806;
        v7 = v807;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", blockBufferOutb, 46, v264, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add crypto info failed frame %d %d %ld %d %p", v261, 46, v262, "AVE_FrameRecv", "SendFrame", 2330, "ret == 0");
      }

      v53 = 0;
      v809 = 0;
      goto LABEL_435;
    }

LABEL_321:
    v53 = 0;
LABEL_322:
    v809 = 0;
    goto LABEL_437;
  }

  dataLength += v77;
  LODWORD(v77) = *v66;
  if (!dataLength)
  {
LABEL_247:
    v809 = 3758097084;
    if (sub_160EF0(0x2Eu, 4))
    {
      v265 = sub_160F34(0x2Eu);
      v266 = sub_175AE4();
      v267 = sub_160F68(4);
      v268 = v7[3];
      if (v265)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size\n", v266, 46, v267, "AVE_FrameRecv", "SendFrame", 2402, "totalSize != 0", a1, v7[3], *(a2 + 40));
        v269 = sub_175AE4();
        v270 = sub_160F68(4);
        v733 = v7[3];
        v752 = *(a2 + 40);
        v26 = v801;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size", v269, 46, v270, "AVE_FrameRecv");
      }

      else
      {
        v734 = v7[3];
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld frame %d wrong encode frame size", v266, 46, v267, "AVE_FrameRecv");
      }
    }

    v53 = 0;
    goto LABEL_437;
  }

LABEL_171:
  if (v789 - 1 == a4)
  {
    v173 = 0;
  }

  else
  {
    v173 = allocator;
  }

  if (v173)
  {
    v779 = v173;
    v802 = a3;
    v53 = 0;
    goto LABEL_176;
  }

  v199 = v808[532];
  if (!v199)
  {
    v779 = v173;
    v53 = 0;
    goto LABEL_203;
  }

  if (-1431655765 * v199 >= 0x55555556)
  {
    if (!sub_160EF0(0x2Eu, 4))
    {
      goto LABEL_321;
    }

    v200 = sub_160F34(0x2Eu);
    v201 = sub_175AE4();
    v202 = sub_160F68(4);
    v203 = *(a2 + 40);
    if (!v200)
    {
      v756 = *(a2 + 40);
      v765 = v808[532];
      v736 = v7[3];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d", v201, 46, v202, "AVE_FrameRecv");
      goto LABEL_321;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d\n", v201, 46, v202, "AVE_FrameRecv", "SendFrame", 2412, "m_numCABACzeroWordToBeInserted % 3 == 0", a1, v7[3], *(a2 + 40), v808[532]);
    v204 = sub_175AE4();
    v205 = sub_160F68(4);
    v743 = *(a2 + 40);
    v761 = v808[532];
    v717 = a1;
    v727 = v7[3];
    v696 = 2412;
    v704 = "m_numCABACzeroWordToBeInserted % 3 == 0";
    v26 = v801;
    sampleSizeArrayb = v205;
    v206 = "%lld %d AVE %s: %s::%s:%d %s | %p %lld wrong CABAC zero word insert number %d %d";
LABEL_189:
    syslog(3, v206, v204, 46, sampleSizeArrayb, "AVE_FrameRecv", "SendFrame", v696, v704, v717, v727, v743, v761);
    goto LABEL_321;
  }

  if (!v66)
  {
    if (!sub_160EF0(0x2Eu, 4))
    {
      goto LABEL_321;
    }

    v319 = sub_160F34(0x2Eu);
    v320 = sub_175AE4();
    v321 = sub_160F68(4);
    v322 = v7[3];
    if (!v319)
    {
      v740 = v7[3];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld", v320, 46, v321);
      goto LABEL_321;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld\n", v320, 46, v321, "AVE_FrameRecv", "SendFrame", 2414, "piLastOutputSliceSize != __null", a1, v7[3]);
    v204 = sub_175AE4();
    v323 = sub_160F68(4);
    v717 = a1;
    v727 = v7[3];
    v696 = 2414;
    v704 = "piLastOutputSliceSize != __null";
    v26 = v801;
    sampleSizeArrayb = v323;
    v206 = "%lld %d AVE %s: %s::%s:%d %s | no last slice %p %lld";
    goto LABEL_189;
  }

  v779 = v173;
  if (sub_160EF0(0x2Eu, 8))
  {
    v788 = v66;
    v247 = sub_160F34(0x2Eu);
    v248 = sub_175AE4();
    v249 = sub_160F68(8);
    v250 = v808[532];
    if (v247)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld\n", v248, 46, v249, "AVE_FrameRecv", "SendFrame", 2417, a1, v7[3], v808[532], dataLength);
      v251 = sub_175AE4();
      v252 = sub_160F68(8);
      v731 = v808[532];
      v719 = v7[3];
      v26 = v801;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld", v251, 46, v252, "AVE_FrameRecv");
    }

    else
    {
      v739 = v808[532];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld CABACzeroWord %d current size %ld", v248, 46, v249, "AVE_FrameRecv");
    }

    v66 = v788;
  }

  v364 = malloc_type_malloc(v808[532], 0x100004077774924uLL);
  if (!v364)
  {
    if (!sub_160EF0(0x2Eu, 4))
    {
      goto LABEL_321;
    }

    v368 = sub_160F34(0x2Eu);
    v369 = sub_175AE4();
    v370 = sub_160F68(4);
    v371 = *(a2 + 3180);
    if (!v368)
    {
      v759 = *(a2 + 3180);
      v766 = v808[532];
      v741 = v7[3];
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d", v369, 46, v370, "AVE_FrameRecv");
      goto LABEL_321;
    }

    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d\n", v369, 46, v370, "AVE_FrameRecv", "SendFrame", 2423, "piCABACZeroWordInsertBuf != __null", a1, v7[3], *(a2 + 3180), v808[532]);
    v204 = sub_175AE4();
    v372 = sub_160F68(4);
    v743 = *(a2 + 3180);
    v761 = v808[532];
    v717 = a1;
    v727 = v7[3];
    v696 = 2423;
    v704 = "piCABACZeroWordInsertBuf != __null";
    v26 = v801;
    sampleSizeArrayb = v372;
    v206 = "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d";
    goto LABEL_189;
  }

  v53 = v364;
  if (v808[532])
  {
    v365 = 0;
    v366 = v364 + 2;
    do
    {
      *(v366 - 1) = 0;
      *v366 = 3;
      v366 += 3;
      v365 += 3;
      v367 = v808[532];
    }

    while (v365 < v367);
  }

  else
  {
    LODWORD(v367) = 0;
  }

  if (sub_124F68(v364, v367, 4u, v818))
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v373 = v26;
      v374 = sub_160F34(0x2Eu);
      v375 = a2;
      v376 = sub_175AE4();
      v377 = sub_160F68(4);
      v378 = v7[3];
      v379 = *(v375 + 40);
      v380 = v808[532];
      if (!v374)
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p", v376, 46, v377, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v378, v379, v53, v808[532], v818);
        v809 = 0;
        v35 = v798;
        a2 = v375;
        v26 = v373;
        goto LABEL_46;
      }

      printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p\n", v376, 46, v377, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v378, v379, v53, v808[532], v818);
      v381 = sub_175AE4();
      v382 = sub_160F68(4);
      v26 = v801;
      a2 = v806;
      v7 = v807;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld insert CABAC zero word failed frame %d %p %d %p", v381, 46, v382, "AVE_FrameRecv", "SendFrame", 2437, "ret == 0", a1, v807[3], *(v806 + 40), v53, v808[532], v818);
      v809 = 0;
      goto LABEL_437;
    }

    goto LABEL_322;
  }

  v383 = v66;
  v384 = v7;
  v385 = v808;
  dataLength += v808[532];
  if (sub_160EF0(0x2Eu, 8))
  {
    v386 = sub_160F34(0x2Eu);
    v387 = sub_175AE4();
    v388 = sub_160F68(8);
    v389 = v384[3];
    v390 = *v383;
    if (v386)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes\n", v387, 46, v388, "AVE_FrameRecv", "SendFrame", 2440, a1, v384[3], v390);
      v391 = sub_175AE4();
      v392 = sub_160F68(8);
      v26 = v801;
      v385 = v808;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes", v391, 46, v392, "AVE_FrameRecv", "SendFrame", 2440, a1, v384[3], *v383);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld previous last slice %d bytes", v387, 46, v388, "AVE_FrameRecv", "SendFrame", 2440, a1, v384[3], v390);
      v385 = v808;
    }
  }

  LODWORD(v77) = v385[532] + v77;
  if (sub_160EF0(0x2Eu, 8))
  {
    v438 = sub_160F34(0x2Eu);
    v439 = sub_175AE4();
    v440 = sub_160F68(8);
    v441 = v384[3];
    v442 = *v383;
    if (v438)
    {
      printf("%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes\n", v439, 46, v440, "AVE_FrameRecv", "SendFrame", 2444, a1, v441, v442);
      v443 = sub_175AE4();
      v444 = sub_160F68(8);
      v26 = v801;
      blockBufferOutc = v443;
      v66 = v383;
      syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes", blockBufferOutc, 46, v444, "AVE_FrameRecv", "SendFrame", 2444, a1, v807[3], *v383);
      a2 = v806;
      goto LABEL_203;
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld after last slice %d bytes", v439, 46, v440, "AVE_FrameRecv", "SendFrame", 2444, a1, v441, v442);
    a2 = v806;
  }

  else
  {
    a2 = v806;
  }

  v66 = v383;
LABEL_203:
  v802 = a3;
  if (*(v796 + 77) >= 2u && !*(a2 + 44))
  {
LABEL_176:
    v786 = v66;
    if (v796[682] != 1)
    {
      goto LABEL_180;
    }

    v174 = v785;
    if (*(v796 + 299) < 1)
    {
      v174 = 1;
    }

    if (v174)
    {
      goto LABEL_180;
    }

    if (sub_160EF0(0x2Eu, 7))
    {
      v242 = sub_160F34(0x2Eu);
      v243 = sub_175AE4();
      v244 = sub_160F68(7);
      if (v242)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d\n", v243, 46, v244, "AVE_FrameRecv", "SendFrame", 2505, a1, v807[3], *(v806 + 40), a1 + 39627, *(v796 + 299));
        v245 = sub_175AE4();
        v246 = sub_160F68(7);
        v764 = *(v796 + 299);
        v718 = v807[3];
        v730 = *(v806 + 40);
        v26 = v801;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v245, 46, v246, "AVE_FrameRecv", "SendFrame");
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut %p %d", v243, 46, v244, "AVE_FrameRecv", "SendFrame");
      }
    }

    v324 = a1 + 39627;
    if (sub_124F68(a1 + 39627, *(v796 + 299), 6u, v818))
    {
      if (sub_160EF0(0x2Eu, 4))
      {
        v325 = sub_160F34(0x2Eu);
        v326 = sub_175AE4();
        v327 = sub_160F68(4);
        v328 = v807[3];
        v329 = *(v806 + 40);
        v330 = *(v796 + 299);
        if (!v325)
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p", v326, 46, v327, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v328, v329, v324, *(v796 + 299), v818);
          v809 = 0;
          a3 = v802;
          v7 = v807;
          a2 = v806;
          v35 = v798;
          goto LABEL_46;
        }

        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p\n", v326, 46, v327, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v328, v329, v324, *(v796 + 299), v818);
        v331 = sub_175AE4();
        v332 = sub_160F68(4);
        v26 = v801;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU nut failed frame %d %p %d %p", v331, 46, v332, "AVE_FrameRecv", "SendFrame", 2512, "ret == 0", a1, v807[3], *(v806 + 40), v324, *(v796 + 299), v818);
        v809 = 0;
        a3 = v802;
        v7 = v807;
        a2 = v806;
        goto LABEL_437;
      }
    }

    else
    {
      dataLength += *(v796 + 299);
      if ((*(v806 + 9) & 1) == 0)
      {
        goto LABEL_180;
      }

      if (sub_160EF0(0x2Eu, 7))
      {
        v333 = sub_160F34(0x2Eu);
        v334 = sub_175AE4();
        v335 = sub_160F68(7);
        v336 = v807[3];
        v337 = *(v806 + 40);
        v338 = *(v796 + 299);
        if (v333)
        {
          printf("%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d\n", v334, 46, v335, "AVE_FrameRecv", "SendFrame", 2519, a1, v336, v337, v324, dataLength, v338);
          v339 = sub_175AE4();
          v340 = sub_160F68(7);
          v26 = v801;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d", v339, 46, v340, "AVE_FrameRecv", "SendFrame", 2519, a1, v807[3], *(v806 + 40), v324, dataLength, *(v796 + 299));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Frame %d add RPU nut in crypto info %p %ld %d", v334, 46, v335, "AVE_FrameRecv", "SendFrame", 2519, a1, v336, v337, v324, dataLength, v338);
          v26 = v801;
        }
      }

      v426 = a1 + 28548;
      if (!sub_15F8B8(dataLength, 0, a1 + 7137))
      {
LABEL_180:
        v795 = v6;
        v175 = dataLength;
        v176 = v808[542];
        a2 = v806;
        sub_15FD9C(a1 + 7137, 46, 8, 0, *(v806 + 40), v11, v12, v13);
        v177 = a1 + 3384;
        v178 = a1[*(v806 + 3180) + 3384];
        if (v178)
        {
          v790 = (v806 + 40);
          v179 = v175 - v176;
          v180 = v178 + 45320;
          v181 = &a1[9 * *(v806 + 44) + 3641];
          *v181 = *v180;
          v182 = *(v180 + 16);
          v183 = *(v180 + 32);
          v184 = *(v180 + 48);
          *(v181 + 64) = *(v180 + 64);
          *(v181 + 32) = v183;
          *(v181 + 48) = v184;
          *(v181 + 16) = v182;
          v7 = v807;
          if (sub_160EF0(0x2Eu, 7))
          {
            v185 = v179;
            v186 = sub_160F34(0x2Eu);
            v187 = sub_175AE4();
            v188 = sub_160F68(7);
            v189 = v807[3];
            v190 = *(v796 + 77);
            v192 = *(v806 + 40);
            v191 = *(v806 + 44);
            v193 = a1[3639];
            v194 = v808[542];
            v195 = v808[580];
            v196 = *(v808 + 2324);
            if (v186)
            {
              v179 = v185;
              printf("%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld\n", v187, 46, v188, "AVE_FrameRecv", "SendFrame", 2540, a1, v189, v190, v191, v192, v193, v194, v195, v196, v185, dataLength);
              v197 = sub_175AE4();
              v198 = sub_160F68(7);
              v26 = v801;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld", v197, 46, v198, "AVE_FrameRecv", "SendFrame", 2540, a1, v807[3], *(v796 + 77), *(v806 + 44), *(v806 + 40), a1[3639], v808[542], v808[580], *(v808 + 2324), v185, dataLength);
              a2 = v806;
              v7 = v807;
            }

            else
            {
              v179 = v185;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld | %d %d %d | %p %d %d %d | %ld %ld", v187, 46, v188, "AVE_FrameRecv", "SendFrame", 2540, a1, v189, v190, v191, v192, v193, v194, v195, v196, v185, dataLength);
              a2 = v806;
              v7 = v807;
              v26 = v801;
            }

            v177 = a1 + 3384;
          }

          a3 = v802;
          if (*(v796 + 77) < 2u || *(a2 + 44))
          {
            v275 = *(a2 + 2552);
            v276 = sub_11A0D0(a1, dataLength, &cf);
            v277 = v276;
            v808[580] = -1;
            v278 = *(v796 + 77);
            if (v278 <= 1)
            {
              *(v808 + 2324) = 0;
            }

            if (v276)
            {
              goto LABEL_266;
            }

            if (sub_160EF0(3u, 4))
            {
              v286 = v179;
              v287 = sub_160F34(3u);
              v288 = sub_175AE4();
              v289 = sub_160F68(4);
              v290 = *v790;
              if (v287)
              {
                printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld\n", v288, 3, v289, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v790, v286);
                v291 = sub_175AE4();
                v292 = sub_160F68(4);
                v26 = v801;
                syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld", v291, 3, v292, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v790, v286);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: FinalOutputFrameBuffer malloc failed. frame %d; FinalOutput_FRAME_Size %ld", v288, 3, v289, "SendFrame", 2578, "FinalOutputFrameBuffer != __null", *v790, v286);
              }

              v293 = 3758097085;
            }

            else
            {
              v293 = 3758097085;
            }

LABEL_394:
            v809 = v293;
            goto LABEL_395;
          }

          v308 = *v808;
          if (v179 > v308)
          {
            if (sub_160EF0(0x2Eu, 4))
            {
              v309 = v179;
              v310 = sub_160F34(0x2Eu);
              v311 = sub_175AE4();
              v312 = sub_160F68(4);
              v313 = v7[3];
              v314 = *(v796 + 77);
              v315 = *(a2 + 44);
              v316 = *v808;
              if (!v310)
              {
                syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld", v311, 46, v312, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v313, v314, v315, *v808, v309);
                v809 = 4294954394;
                v6 = v795;
                v35 = v798;
                goto LABEL_162;
              }

              printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld\n", v311, 46, v312, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v313, v314, v315, *v808, v309);
              v317 = sub_175AE4();
              v318 = sub_160F68(4);
              v26 = v801;
              a3 = v802;
              syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no enough memory in MV-HEVC buffer %d %d %d %ld", v317, 46, v318, "AVE_FrameRecv", "SendFrame", 2562, "m_CodedBuffSize[0] >= FinalOutput_FRAME_Size", a1, v7[3], *(v796 + 77), *(a2 + 44), *v808, v309);
              v809 = 4294954394;
LABEL_395:
              v6 = v795;
              goto LABEL_437;
            }

            v293 = 4294954394;
            goto LABEL_394;
          }

          v277 = a1[3639];
          if (v277 || (v277 = malloc_type_malloc(v308, 0x100004077774924uLL), (a1[3639] = v277) != 0))
          {
            v808[542] = v179;
            v808[580] = *(a2 + 40);
            v342 = *(a2 + 2456) == 3 || *(v793 + 40) == 21;
            *(v808 + 2324) = v342;
            v278 = *(v796 + 77);
LABEL_266:
            v811 = v179;
            v279 = v802;
            if (v278 >= 2)
            {
              *(v808 + 2325) = 0;
            }

            v280 = sub_118BC0(a1, v818, dataLength, v277);
            if (v280)
            {
              v281 = v280;
              if (sub_160EF0(0x2Eu, 4))
              {
                v282 = sub_160F34(0x2Eu);
                v283 = sub_175AE4();
                v284 = sub_160F68(4);
                if (v282)
                {
                  printf("%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d\n", v283, 46, v284, "AVE_FrameRecv", "SendFrame", 2589, "ret == 0", v818, dataLength, v277, v281);
                  v285 = sub_175AE4();
                  v26 = v801;
                  sampleSizeArrayf = sub_160F68(4);
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d", v285, 46, sampleSizeArrayf, "AVE_FrameRecv", "SendFrame");
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to copy to external buffer %p %ld %p %d", v283, 46, v284, "AVE_FrameRecv", "SendFrame");
                }

                v809 = 0;
                a2 = v806;
                a3 = v802;
                goto LABEL_350;
              }

              v809 = 0;
              a2 = v806;
              v7 = v807;
              v6 = v795;
              v35 = v798;
LABEL_309:
              a3 = v802;
              goto LABEL_46;
            }

            if (v786)
            {
              *v786 = v77;
            }

            if ((v779 & 1) == 0 && (*(v796 + 77) < 2u || *(v806 + 44)))
            {
              v294 = 0;
              v295 = 1;
              do
              {
                v296 = v295;
                v297 = a1 + 12 * v294 + 29084;
                if (*(v297 + 8) >= 1)
                {
                  *(v297 + 8) = 0;
                  *v297 = 0;
                }

                v295 = 0;
                v294 = 1;
              }

              while ((v296 & 1) != 0);
            }

            if (*v807)
            {
              v298 = v806;
              v299 = v177[*(v806 + 3180)];
              if (!v299)
              {
                v154 = v807;
                if (sub_160EF0(3u, 4))
                {
                  v396 = sub_160F34(3u);
                  v397 = sub_175AE4();
                  v398 = sub_160F68(4);
                  v35 = v798;
                  if (v396)
                  {
                    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v397, 3, v398, "SendFrame", 2616, "codedHeader != __null");
                    v399 = sub_175AE4();
                    sampleSizeArrayg = sub_160F68(4);
                    v26 = v801;
                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v399, 3, sampleSizeArrayg, "SendFrame", 2616, "codedHeader != __null");
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v397, 3, v398, "SendFrame", 2616, "codedHeader != __null");
                  }

                  v809 = 0;
                  a3 = v802;
                  v6 = v795;
                  goto LABEL_461;
                }

                v809 = 0;
                v6 = v795;
                v35 = v798;
                a2 = v806;
                v7 = v807;
                goto LABEL_309;
              }

              *(v807 + 8) = 0;
              v300 = *(v806 + 4560);
              *(v299 + 2000) = *(v806 + 4576);
              *(v299 + 1984) = v300;
              if (!*(v806 + 20))
              {
                v412 = sub_11C9CC(a1, (v299 + 1980));
                if (v412)
                {
                  v413 = v412;
                  memcpy((v806 + 31438), v412, 0x626uLL);
                  *(v807 + 8) = 1;
                  v414 = sub_CBC74(*(v796 + 220), 4u, *(v806 + 20));
                  if (v414)
                  {
                    v415 = v414;
                    fseeko(v414, 1574 * v413[11] + 264, 0);
                    fwrite(v413, 1uLL, 0x626uLL, v415);
                  }
                }

                else if (sub_160EF0(0xD8u, 6))
                {
                  v452 = sub_160F34(0xD8u);
                  v453 = sub_175AE4();
                  v454 = sub_160F68(6);
                  v455 = *v790;
                  if (v452)
                  {
                    printf("%lld %d AVE %s:   F %d pMpStats NULL \n", v453, 216, v454, v455);
                    v456 = sub_175AE4();
                    sampleSizeArrayj = sub_160F68(6);
                    syslog(3, "%lld %d AVE %s:   F %d pMpStats NULL ", v456, 216, sampleSizeArrayj, *v790);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s:   F %d pMpStats NULL ", v453, 216, v454, v455);
                  }

                  v279 = v802;
                  v26 = v801;
                }
              }
            }

            memoryBlocka = v277;
            a2 = v806;
            if ((v779 & 1) == 0)
            {
              if (allocator)
              {
                v301 = a4;
              }

              else
              {
                v301 = 0;
              }

              sub_117768(a1, v806, v301);
            }

            v7 = v807;
            v6 = v795;
            v302 = v796;
            if (v798)
            {
              free(v798);
            }

            v303 = vshr_n_u32(vadd_s32(a1[3767], 0xF0000000FLL), 4uLL);
            sub_CDC60(*(v796 + 220), *(v806 + 24), a1[*(v806 + 3180) + 3224], 432 * v303.i32[0] * v303.i32[1]);
            v304 = *(v806 + 23720);
            if (v304)
            {
              sub_CEA24(*(v796 + 220), v304);
            }

            a3 = v279;
            if (*(v796 + 77) >= 2u && *(v806 + 44))
            {
              v305 = &a1[2 * *(v806 + 40) + 17446];
              v306 = HIDWORD(a1[2 * *(v806 + 40) + 17446]);
              v307 = v811;
              *v305 += 8 * v811;
              *(v305 + 8) = *(v806 + 4608);
              *(v305 + 4) = v306 + *(v793 + 44);
            }

            else
            {
              v307 = v811;
              v341 = &a1[2 * *(v806 + 40) + 17446];
              *v341 = 8 * v811;
              *(v341 + 8) = *(v806 + 4608);
              *(v341 + 4) = *(v793 + 44);
            }

            sub_CD240(*(v796 + 220), *(v806 + 24), &memoryBlocka[v784], v307);
            *(v793 + 3376) = sub_175AE4();
            if (a1[3669] != 1)
            {
              if (allocator)
              {
                v809 = 0;
LABEL_541:
                v35 = 0;
                *(v793 + 3368) = sub_175AE4();
                goto LABEL_46;
              }

              v800 = a1 + 3224;
              v393 = v807;
              sampleBufferOut = 0;
              v394 = memoryBlocka;
              if ((v796[508] & 1) == 0)
              {
                LODWORD(v435) = v818[0];
                if (v818[0] >= 1)
                {
                  v781 = v53;
                  v805 = a3;
                  v436 = v820;
                  v437 = v818[0];
                  while (*(v436 - 6) != 3)
                  {
                    v436 += 4;
                    if (!--v437)
                    {
                      goto LABEL_482;
                    }
                  }

                  v459 = *v436;
                  if (*v436)
                  {
                    v460 = v808 + 274;
                    v461 = 32;
                    while (1)
                    {
                      v462 = *v460 + *(v460 - 2);
                      if (!v462)
                      {
LABEL_481:
                        LODWORD(v435) = v818[0];
                        goto LABEL_482;
                      }

                      if (sub_160EF0(0x2Eu, 7))
                      {
                        v463 = sub_160F34(0x2Eu);
                        v464 = sub_175AE4();
                        v465 = sub_160F68(7);
                        v466 = *(v806 + 3180);
                        v467 = *v459;
                        if (v463)
                        {
                          printf("%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x\n", v464, 46, v465, "AVE_FrameRecv", "SendFrame", 2827, v462, v462 - 4, *(v806 + 3180), v467);
                          v468 = sub_175AE4();
                          v469 = sub_160F68(7);
                          syslog(3, "%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x", v468, 46, v469, "AVE_FrameRecv", "SendFrame", 2827, v462, v462 - 4, *(v806 + 3180), *v459);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: %s::%s:%d %d %d %d 0x%x", v464, 46, v465, "AVE_FrameRecv", "SendFrame", 2827, v462, v462 - 4, *(v806 + 3180), v467);
                        }
                      }

                      if (*v459 != 0x1000000)
                      {
                        break;
                      }

                      v460 += 4;
                      *v459 = bswap32(v462 - 4);
                      v459 = (v459 + v462);
                      if (!--v461)
                      {
                        goto LABEL_481;
                      }
                    }

                    if (!sub_160EF0(3u, 4))
                    {
                      goto LABEL_697;
                    }

                    v501 = sub_160F34(3u);
                    v502 = sub_175AE4();
                    v503 = sub_160F68(4);
                    if (!v501)
                    {
                      v706 = *v459;
                      syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)", v502);
                      goto LABEL_697;
                    }

                    printf("%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)\n", v502, 3, v503, "SendFrame", 2835, "*(uint32_t *)&pSliceAddr[0] == 0x01000000", *v459);
                    v504 = sub_175AE4();
                    v505 = sub_160F68(4);
                    v697 = "*(uint32_t *)&pSliceAddr[0] == 0x01000000";
                    v705 = *v459;
                    v692 = 2835;
                    sampleSizeArrayc = v505;
                    v506 = "%lld %d AVE %s: %s:%d %s | ERROR *(uint32_t *)&pSliceAddr[0] != 0x01000000 (= 0x%x)";
LABEL_605:
                    syslog(3, v506, v504, 3, sampleSizeArrayc, "SendFrame", v692, v697, v705);
LABEL_697:
                    v809 = 3758097085;
                    goto LABEL_515;
                  }

LABEL_482:
                  a3 = v805;
                  a2 = v806;
                  v393 = v807;
                  v6 = v795;
                  v394 = memoryBlocka;
                  if (v435 >= 1)
                  {
                    v435 = v435;
                    v470 = v820;
                    v471 = v435;
                    while (*(v470 - 6) != 5)
                    {
                      v470 += 4;
                      if (!--v471)
                      {
                        goto LABEL_385;
                      }
                    }

                    v480 = *v470;
                    if (*v470)
                    {
                      if (*(v796 + 77) < 2u || *(v806 + 44))
                      {
                        v481 = 0;
                        v482 = &v819;
                        do
                        {
                          if (*(v482 - 4) == 5)
                          {
                            v481 += *v482;
                          }

                          v482 += 4;
                          --v435;
                        }

                        while (v435);
                        v483 = v481 - 4;
                        if (sub_160EF0(0x2Eu, 8))
                        {
                          v484 = sub_160F34(0x2Eu);
                          v485 = sub_175AE4();
                          v486 = sub_160F68(8);
                          if (v484)
                          {
                            printf("%lld %d AVE %s: %s:%d %d %p 0x%x\n", v485, 46, v486, "SendFrame", 2861, v483, v480, *v480);
                            v487 = sub_175AE4();
                            sub_160F68(8);
                            v488 = *v480;
                            syslog(3, "%lld %d AVE %s: %s:%d %d %p 0x%x", v487, 46);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s:%d %d %p 0x%x", v485, 46);
                          }
                        }

                        if (*v480 == 0x1000000)
                        {
                          *v480 = bswap32(v483);
                          a3 = v805;
                          a2 = v806;
                          v393 = v807;
                          v6 = v795;
                          v394 = memoryBlocka;
                          goto LABEL_385;
                        }

                        if (!sub_160EF0(3u, 4))
                        {
                          goto LABEL_697;
                        }

                        v567 = sub_160F34(3u);
                        v568 = sub_175AE4();
                        v569 = sub_160F68(4);
                        if (!v567)
                        {
                          v709 = *v480;
                          syslog(3, "%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)", v568);
                          goto LABEL_697;
                        }

                        printf("%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)\n", v568, 3, v569, "SendFrame", 2864, "*pFillerAddr == 0x01000000", *v480);
                        v504 = sub_175AE4();
                        v570 = sub_160F68(4);
                        v697 = "*pFillerAddr == 0x01000000";
                        v705 = *v480;
                        v692 = 2864;
                        sampleSizeArrayc = v570;
                        v506 = "%lld %d AVE %s: %s:%d %s | ERROR FillerNAL != 0x01000000 (= 0x%x)";
                        goto LABEL_605;
                      }

                      goto LABEL_506;
                    }
                  }
                }
              }

LABEL_385:
              if (*(v796 + 77) >= 2u && !*(a2 + 44))
              {
LABEL_506:
                v781 = v53;
                v805 = a3;
                if (sub_160EF0(0x2Eu, 7))
                {
                  v489 = sub_160F34(0x2Eu);
                  v490 = sub_175AE4();
                  v491 = sub_160F68(7);
                  if (v489)
                  {
                    printf("%lld %d AVE %s: BAIL for first layer\n", v490, 46, v491);
                    sub_175AE4();
                    sub_160F68(7);
                  }

                  syslog(3, "%lld %d AVE %s: BAIL for first layer");
                }

                goto LABEL_514;
              }

              if (*(v796 + 126) == 2)
              {
                v395 = CMBlockBufferCreateWithMemoryBlock(kCFAllocatorDefault, v394, dataLength, a1[3664], 0, 0, dataLength, 1u, &cf);
                v809 = v395;
                if (v395)
                {
                  v7 = v393;
                  sub_11CB54(v395, v393[3], *(v796 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
                  ++*a1;
                  ++a1[1];
                  goto LABEL_539;
                }
              }

              sampleTimingArray.duration.value = *(a2 + 4584);
              v416 = *(a2 + 4600);
              v417 = *(a2 + 4596);
              sampleTimingArray.duration.timescale = *(a2 + 4592);
              sampleTimingArray.duration.flags = v417;
              v418 = *(a2 + 4560);
              sampleTimingArray.duration.epoch = v416;
              sampleTimingArray.presentationTimeStamp.value = v418;
              v419 = *(a2 + 4576);
              v420 = *(a2 + 4572);
              sampleTimingArray.presentationTimeStamp.timescale = *(a2 + 4568);
              sampleTimingArray.presentationTimeStamp.flags = v420;
              v421 = a3[1];
              sampleTimingArray.presentationTimeStamp.epoch = v419;
              sampleTimingArray.decodeTimeStamp.value = v421;
              *&sampleTimingArray.decodeTimeStamp.timescale = a3[2];
              sampleTimingArray.decodeTimeStamp.epoch = a3[3];
              *&time1[0].value = *&sampleTimingArray.presentationTimeStamp.value;
              time1[0].epoch = v419;
              time2 = sampleTimingArray.decodeTimeStamp;
              if (!CMTimeCompare(time1, &time2) && !v808[750])
              {
                sampleTimingArray.decodeTimeStamp = kCMTimeInvalid;
                if (sub_160EF0(0x2Eu, 8))
                {
                  v422 = sub_160F34(0x2Eu);
                  v423 = sub_175AE4();
                  v424 = sub_160F68(8);
                  if (v422)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID\n", v423, 46, v424);
                    v425 = sub_175AE4();
                    sampleSizeArrayi = sub_160F68(8);
                    syslog(3, "%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID", v425, 46, sampleSizeArrayi);
                  }

                  else
                  {
                    syslog(3, "%lld %d AVE %s: H264FrameRec: final decodeTimeStamp INVALID", v423, 46, v424);
                  }

                  a2 = v806;
                  v393 = v807;
                  v6 = v795;
                }
              }

              if (sub_160EF0(0x33u, 7))
              {
                v507 = sub_160F34(0x33u);
                v508 = sub_175AE4();
                v509 = sub_160F68(7);
                v510 = v393[3];
                v511 = *(a2 + 40);
                if (v507)
                {
                  printf("%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld\n", v508, 51, v509, "SendFrame", 2931, v510, v511, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value, sampleTimingArray.presentationTimeStamp.timescale, sampleTimingArray.presentationTimeStamp.flags, sampleTimingArray.presentationTimeStamp.epoch, *(a2 + 4608), *(a2 + 4616), sampleTimingArray.duration.value, sampleTimingArray.duration.timescale, sampleTimingArray.duration.flags, sampleTimingArray.duration.epoch);
                  v512 = sub_175AE4();
                  v513 = sub_160F68(7);
                  v514 = *(a2 + 4616);
                  v778 = *(a2 + 4608);
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v512, 51, v513, "SendFrame", 2931, v393[3], *(a2 + 40), sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: %s:%d %lld %d DTS %lld %d 0x%x %lld | PTS %lld %d 0x%x %lld -> %lld %d | duration %lld %d 0x%x %lld", v508, 51, v509, "SendFrame", 2931, v510, v511, sampleTimingArray.decodeTimeStamp.value, sampleTimingArray.decodeTimeStamp.timescale, sampleTimingArray.decodeTimeStamp.flags, sampleTimingArray.decodeTimeStamp.epoch, sampleTimingArray.presentationTimeStamp.value);
                }

                v6 = v795;
              }

              v515 = CMSampleBufferCreate(kCFAllocatorDefault, cf, 1u, 0, 0, a1[3670], 1, 1, &sampleTimingArray, 1, &dataLength, &sampleBufferOut);
              v516 = sub_160EF0(0x2Eu, 7);
              if (v516)
              {
                v517 = sub_160F34(0x2Eu);
                v518 = sub_175AE4();
                v519 = sub_160F68(7);
                v520 = a1[3670];
                if (v517)
                {
                  printf("%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p\n", v518, 46, v519, v515, sampleBufferOut, v520);
                  v521 = sub_175AE4();
                  v522 = sub_160F68(7);
                  syslog(3, "%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p", v521, 46, v522, v515, sampleBufferOut, a1[3670]);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: CMSampleBufferCreate err %d sbuf %p m_videoFormatDesc %p", v518, 46, v519, v515, sampleBufferOut, v520);
                }
              }

              v809 = v515;
              if (v515)
              {
                v7 = v393;
                sub_11CB54(v516, v393[3], *(v796 + 126), a1[3669], *(a2 + 2552), *(a2 + 40), 0, 0);
                ++*a1;
LABEL_538:
                ++a1[1];
LABEL_539:
                v26 = v801;
                if (sampleBufferOut)
                {
                  CFRelease(sampleBufferOut);
                }

                goto LABEL_541;
              }

              v781 = v53;
              v805 = a3;
              v523 = v808[758];
              v524 = *(a2 + 2456);
              v812 = (a2 + 4756);
              if (v524 == 3)
              {
                v525 = *(a2 + 6112);
              }

              else
              {
                if (*(v793 + 40) == 21)
                {
                  v526 = 1;
                }

                else if (*(v796 + 77) < 2u)
                {
                  v526 = 0;
                }

                else
                {
                  v526 = *(v808 + 2324);
                }

                if (v524 == 2)
                {
                  v525 = 1;
                }

                else
                {
                  v525 = *(a2 + 6112);
                  if ((v812[1356] & 1) == 0 && v523 >= 2)
                  {
                    v525 = v524 == 1 && *(v793 + 36) == v523 - 1;
                  }
                }

                if ((v526 & 1) == 0)
                {
                  v527 = 0;
                  v528 = 0;
                  v529 = v524 == 0;
LABEL_558:
                  if (sub_160EF0(0x2Eu, 7))
                  {
                    v530 = sub_160F34(0x2Eu);
                    v531 = sub_175AE4();
                    v532 = sub_160F68(7);
                    v533 = *(v806 + 2456);
                    if (v530)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d\n", v531, 46, v532, v533, v528, v529);
                      v534 = sub_175AE4();
                      sampleSizeArraym = sub_160F68(7);
                      syslog(3, "%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d", v534, 46, sampleSizeArraym, *(v806 + 2456), v528, v529);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: H264FrameRec: FrameType %d isSyncSample %d isIFrame %d", v531, 46, v532, v533, v528, v529);
                    }
                  }

                  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sampleBufferOut, 1u);
                  ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
                  if (!ValueAtIndex)
                  {
                    Mutable = sub_160EF0(0x2Eu, 4);
                    if (Mutable)
                    {
                      v545 = sub_160F34(0x2Eu);
                      v546 = sub_175AE4();
                      v547 = sub_160F68(4);
                      if (v545)
                      {
                        printf("%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.\n", v546, 46, v547, "SendFrame", 3376);
                        v548 = sub_175AE4();
                        sampleSizeArrayn = sub_160F68(4);
                        syslog(3, "%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.", v548, 46, sampleSizeArrayn, "SendFrame", 3376);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: %s:%d FigSampleBufferAttached failed.", v546, 46, v547, "SendFrame", 3376);
                      }
                    }

                    goto LABEL_643;
                  }

                  v537 = ValueAtIndex;
                  if ((v527 & 1) == 0)
                  {
                    CFDictionarySetValue(ValueAtIndex, kCMSampleAttachmentKey_NotSync, kCFBooleanTrue);
                  }

                  if (v529)
                  {
                    v538 = &kCFBooleanFalse;
                  }

                  else
                  {
                    v538 = &kCFBooleanTrue;
                  }

                  CFDictionarySetValue(v537, kCMSampleAttachmentKey_DependsOnOthers, *v538);
                  if (v525)
                  {
                    CFDictionarySetValue(v537, kCMSampleAttachmentKey_IsDependedOnByOthers, kCFBooleanFalse);
                  }

                  if (sub_160EF0(0x2Eu, 7))
                  {
                    v539 = sub_160F34(0x2Eu);
                    v540 = sub_175AE4();
                    v541 = sub_160F68(7);
                    if (v539)
                    {
                      printf("%lld %d AVE %s: %s::%s:%d IsHierarchical %d\n", v540, 46, v541, "AVE_FrameRecv", "SendFrame", 2999, v808[758] > 1);
                      v542 = sub_175AE4();
                      sub_160F68(7);
                      v543 = v808[758] > 1;
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v542);
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d IsHierarchical %d", v540);
                    }
                  }

                  Mutable = sub_160EF0(0x2Eu, 7);
                  if (Mutable)
                  {
                    v549 = sub_160F34(0x2Eu);
                    v550 = sub_175AE4();
                    v551 = sub_160F68(7);
                    v552 = *(v806 + 40);
                    v553 = *(v806 + 2456);
                    v554 = *(v793 + 40);
                    if (v549)
                    {
                      printf("%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d\n", v550, 46, v551, v552, *(v806 + 2456), v554);
                      v555 = sub_175AE4();
                      v556 = sub_160F68(7);
                      syslog(3, "%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d", v555, 46, v556, *(v806 + 40), *(v806 + 2456), *(v793 + 40));
                    }

                    else
                    {
                      syslog(3, "%lld %d AVE %s: H264FrameRec: F %d FrameType %d nalUnitType %d", v550, 46, v551, v552, *(v806 + 2456), v554);
                    }
                  }

                  if (v523 >= 2)
                  {
                    memcpy(time1, a1 + 7176, 0x1ACuLL);
                    v557 = sub_11D464(a1, time1, *(v793 + 36));
                    if (v557)
                    {
                      v558 = v557;
                      CFDictionarySetValue(v537, kCMSampleAttachmentKey_HEVCTemporalLevelInfo, v557);
                      CFRelease(v558);
                    }

                    if ((*(v793 + 40) & 0xFFFFFFFE) == 2)
                    {
                      v559 = kCFBooleanTrue;
                    }

                    else
                    {
                      v559 = kCFBooleanFalse;
                    }

                    CFDictionarySetValue(v537, kCMSampleAttachmentKey_HEVCTemporalSubLayerAccess, v559);
                    if ((*(v793 + 40) & 0xFFFFFFFE) == 4)
                    {
                      v560 = kCFBooleanTrue;
                    }

                    else
                    {
                      v560 = kCFBooleanFalse;
                    }

                    CFDictionarySetValue(v537, kCMSampleAttachmentKey_HEVCStepwiseTemporalSubLayerAccess, v560);
                  }

                  if (*(v796 + 131) == 2 && (*(v793 + 40) - 19) <= 2)
                  {
                    Mutable = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, (v793 + 40));
                    if (Mutable)
                    {
                      v561 = Mutable;
                      if (sub_160EF0(0x2Eu, 7))
                      {
                        v562 = sub_160F34(0x2Eu);
                        v563 = sub_175AE4();
                        v564 = sub_160F68(7);
                        v565 = *v790;
                        if (v562)
                        {
                          printf("%lld %d AVE %s: H264FrameRec: F %d NUT CRA\n", v563, 46, v564, v565);
                          v566 = sub_175AE4();
                          sampleSizeArrayo = sub_160F68(7);
                          syslog(3, "%lld %d AVE %s: H264FrameRec: F %d NUT CRA", v566, 46, sampleSizeArrayo, *v790);
                        }

                        else
                        {
                          syslog(3, "%lld %d AVE %s: H264FrameRec: F %d NUT CRA", v563, 46, v564, v565);
                        }
                      }

                      CFDictionarySetValue(v537, kCMSampleAttachmentKey_HEVCSyncSampleNALUnitType, v561);
                      CFRelease(v561);
                    }
                  }

                  if ((v808[760] & 2) != 0)
                  {
                    if (*v793 == 1)
                    {
                      Mutable = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, v790);
                      if (Mutable)
                      {
                        v571 = Mutable;
                        CFDictionarySetValue(v537, kVTSampleAttachmentKey_RequireAcknowledgementToken, Mutable);
                        CFRelease(v571);
                      }
                    }

                    if (*(v793 + 48) == 1 && *(v796 + 161) != 1)
                    {
                      CFDictionarySetValue(v537, kVTSampleAttachmentKey_ReferenceWasRefreshed, kCFBooleanTrue);
                    }
                  }

                  if ((*(a1 + 30147) & 8) == 0)
                  {
LABEL_618:
                    if (*(v807 + 4) >= 17 && (v808[615] & 0x3C0) != 0)
                    {
                      Mutable = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, (v806 + 6116));
                      if (Mutable)
                      {
                        v572 = Mutable;
                        CFDictionarySetValue(v537, kVTSampleAttachmentKey_TemporalNoiseReductionApplied, Mutable);
                        CFRelease(v572);
                      }
                    }

                    if (*(v806 + 9))
                    {
                      v573 = sub_160270(a1 + 28548, v537);
                      bzero(a1 + 28548, 0x214uLL);
                      if (v573)
                      {
                        if (sub_160EF0(0x2Eu, 4))
                        {
                          v574 = sub_160F34(0x2Eu);
                          v575 = sub_175AE4();
                          v576 = sub_160F68(4);
                          if (v574)
                          {
                            printf("%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d\n", v575, 46, v576, "AVE_FrameRecv", "SendFrame", 3116, "ret == 0", a1, v807[3], *(v806 + 8), v537, v573);
                            v577 = sub_175AE4();
                            v578 = sub_160F68(4);
                            v579 = v807[3];
                            v760 = *(v806 + 8);
                            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d", v577, 46, v578, "AVE_FrameRecv", "SendFrame", 3116);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to attach crypto info %p %lld %lld %p %d", v575, 46, v576, "AVE_FrameRecv", "SendFrame", 3116);
                          }
                        }

LABEL_514:
                        v809 = 0;
LABEL_515:
                        v35 = 0;
LABEL_516:
                        a3 = v805;
                        a2 = v806;
                        v7 = v807;
                        v6 = v795;
                        v26 = v801;
                        v53 = v781;
                        goto LABEL_46;
                      }
                    }

                    v589 = *(v796 + 161);
                    if (v589 > 36)
                    {
                      if ((v589 - 37) >= 2 && v589 != 10000)
                      {
                        goto LABEL_643;
                      }

                      goto LABEL_639;
                    }

                    if (v589)
                    {
                      if (v589 != 1)
                      {
                        if (v589 != 20)
                        {
                          goto LABEL_643;
                        }

LABEL_639:
                        LODWORD(time1[0].value) = *(v793 + 172);
                        Mutable = CFNumberCreate(0, kCFNumberSInt32Type, time1);
                        if (Mutable)
                        {
                          v590 = Mutable;
                          v591 = kVTSampleAttachmentKey_EncoderRetryCount;
LABEL_641:
                          CFDictionarySetValue(v537, v591, v590);
LABEL_642:
                          CFRelease(v590);
                        }

LABEL_643:
                        if (*v807 && *(v807 + 8) == 1 && (Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0)) != 0)
                        {
                          v592 = Mutable;
                          CFDataAppendBytes(Mutable, (v806 + 31438), 1574);
                          if (sub_160EF0(0x2Eu, 7))
                          {
                            v593 = sub_160F34(0x2Eu);
                            v594 = sub_175AE4();
                            v595 = sub_160F68(7);
                            v596 = *(v806 + 20);
                            if (v596 >= 2)
                            {
                              v596 = 2;
                            }

                            if (v593)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d\n", v594, 46, v595, v596);
                              v597 = sub_175AE4();
                              v598 = sub_160F68(7);
                              v599 = *(v806 + 20);
                              if (v599 >= 2)
                              {
                                v599 = 2;
                              }

                              syslog(3, "%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d", v597, 46, v598, v599);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec: m_multiPassStorage multiPassEndPassCounter %d", v594, 46, v595, v596);
                            }
                          }

                          v625 = *(v793 + 1754);
                          v626 = *(v793 + 1770);
                          v627 = *(v793 + 1762);
                          if (sub_160EF0(0xD8u, 7))
                          {
                            v628 = sub_160F34(0xD8u);
                            v629 = sub_175AE4();
                            v630 = sub_160F68(7);
                            v631 = *(v806 + 4572);
                            if (v628)
                            {
                              printf("%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld\n", v629, 216, v630, *(v806 + 4560), *(v806 + 4568), *(v806 + 4572), *(v806 + 4576));
                              v632 = sub_175AE4();
                              sub_160F68(7);
                              v633 = *(v806 + 4560);
                              v699 = *(v806 + 4572);
                              v708 = *(v806 + 4576);
                              v693 = *(v806 + 4568);
                              syslog(3, "%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v632);
                            }

                            else
                            {
                              v700 = *(v806 + 4572);
                              syslog(3, "%lld %d AVE %s: RECV_PTS: val %lld, timeScale %d, flags 0x%x, epoch %lld", v629);
                            }
                          }

                          v634 = *v807;
                          time1[0].value = v625;
                          *&time1[0].timescale = v627;
                          time1[0].epoch = v626;
                          *(v806 + 20);
                          v809 = VTMultiPassStorageSetDataAtTimeStamp();
                          if (v809 && sub_160EF0(0x2Eu, 4))
                          {
                            v635 = sub_160F34(0x2Eu);
                            v636 = sub_175AE4();
                            v637 = sub_160F68(4);
                            if (v635)
                            {
                              printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v636, 46, v637);
                              v638 = sub_175AE4();
                              sampleSizeArrayp = sub_160F68(4);
                              syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v638, 46, sampleSizeArrayp);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v636, 46, v637);
                            }
                          }

                          CFRelease(v592);
                        }

                        else
                        {
                          v809 = 0;
                        }

                        a2 = v806;
                        v7 = v807;
                        v600 = sub_11CB54(Mutable, v807[3], *(v796 + 126), a1[3669], *(v806 + 2552), *(v806 + 40), 0, sampleBufferOut);
                        ++*a1;
                        a3 = v805;
                        v6 = v795;
                        if (!v600)
                        {
                          goto LABEL_539;
                        }

                        goto LABEL_538;
                      }

                      v614 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                      v615 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                      v616 = (v793 + 68);
                      v617 = 4;
                      do
                      {
                        sub_14A220(*v616, v614);
                        sub_14A220(*(v616 - 4), v615);
                        ++v616;
                        --v617;
                      }

                      while (v617);
                      CFDictionarySetValue(v537, kVTSampleAttachmentQualityMetricsKey_FrameInterSumSATD, v614);
                      if (v614)
                      {
                        CFRelease(v614);
                      }

                      CFDictionarySetValue(v537, kVTSampleAttachmentQualityMetricsKey_FrameIntraSumSATD, v615);
                      if (v615)
                      {
                        CFRelease(v615);
                      }

                      v618 = *(v796 + 131);
                      if (v618 == 2)
                      {
                        v639 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                        v640 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                        v620 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                        v641 = (v793 + 124);
                        v642 = 4;
                        do
                        {
                          sub_14A220(*(v641 - 8), v639);
                          sub_14A220(*(v641 - 4), v640);
                          v643 = *v641++;
                          sub_14A220(v643, v620);
                          --v642;
                        }

                        while (v642);
                        CFDictionarySetValue(v537, kVTSampleAttachmentQualityMetricsKey_NumberOfIntra8x8Blocks, v639);
                        if (v639)
                        {
                          CFRelease(v639);
                        }

                        CFDictionarySetValue(v537, kVTSampleAttachmentQualityMetricsKey_NumberOfInter8x8Blocks, v640);
                        if (v640)
                        {
                          CFRelease(v640);
                        }

                        v624 = @"NumberOfSkipped8x8Blocks";
                      }

                      else
                      {
                        if (v618 != 1)
                        {
                          v809 = 3758097084;
                          if (sub_160EF0(3u, 4))
                          {
                            v657 = sub_160F34(3u);
                            v658 = sub_175AE4();
                            v659 = sub_160F68(4);
                            if (v657)
                            {
                              printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.\n", v658, 3, v659, "SendFrame", 3247, "false", *(v796 + 131));
                              v660 = sub_175AE4();
                              sub_160F68(4);
                              v661 = *(v796 + 131);
                              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.", v660);
                            }

                            else
                            {
                              v710 = *(v796 + 131);
                              syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: encode type (%d) not recognized.", v658);
                            }
                          }

                          goto LABEL_515;
                        }

                        v619 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                        v620 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                        v621 = (v793 + 124);
                        v622 = 4;
                        do
                        {
                          sub_14A220(*(v621 - 8), v619);
                          v623 = *v621++;
                          sub_14A220(v623, v620);
                          --v622;
                        }

                        while (v622);
                        CFDictionarySetValue(v537, kVTSampleAttachmentQualityMetricsKey_NumberOfIntraMB, v619);
                        if (v619)
                        {
                          CFRelease(v619);
                        }

                        v624 = kVTSampleAttachmentQualityMetricsKey_NumberOfSkippedMB;
                      }

                      CFDictionarySetValue(v537, v624, v620);
                      if (v620)
                      {
                        CFRelease(v620);
                      }

                      v644 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                      for (i = 0; i != 16; i += 4)
                      {
                        sub_14A220(*(v806 + 29828 + i), v644);
                      }

                      if (v644)
                      {
                        CFDictionarySetValue(v537, kVTSampleAttachmentQualityMetricsKey_CodedFrameResidualBits, v644);
                        CFRelease(v644);
                      }

                      v646 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
                      for (j = 0; j != 16; j += 4)
                      {
                        Mutable = sub_14A220(*(v806 + 29844 + j), v646);
                      }

                      if (v646)
                      {
                        CFDictionarySetValue(v537, @"SliceDataLength", v646);
                        CFRelease(v646);
                      }

                      if (!v808[802] || *(v796 + 131) != 1)
                      {
LABEL_737:
                        if (*v812 == 1)
                        {
                          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                          if (Mutable)
                          {
                            v590 = Mutable;
                            if (!sub_16F950((v806 + 3184), Mutable))
                            {
                              CFDictionarySetValue(v537, kVTSampleAttachment_GetDPB, v590);
                              v667 = *(v806 + 23728);
                              if ((v667 & 0x8000) != 0)
                              {
                                v668 = v795[3];
                                if (v668)
                                {
                                  sub_D8F04(v668, v590, *(v806 + 40), *(v806 + 4764));
                                  v667 = *(v806 + 23728);
                                }
                              }

                              if ((v667 & 0x10000) != 0)
                              {
                                v669 = v795[3];
                                if (v669)
                                {
                                  sub_D93A4(v669, v590, *v790, v537);
                                }
                              }
                            }

                            goto LABEL_642;
                          }
                        }

                        goto LABEL_643;
                      }

                      v648 = v800[*(v806 + 3180)];
                      if (v648)
                      {
                        v649 = v808[796];
                        v650 = v808[797];
                        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                        if (Mutable)
                        {
                          v651 = Mutable;
                          v652 = 432 * ((v649 + 15) >> 4) * ((v650 + 15) >> 4);
                          CFDataAppendBytes(Mutable, v648, v652);
                          if (sub_160EF0(0x2Eu, 7))
                          {
                            v653 = sub_160F34(0x2Eu);
                            v654 = sub_175AE4();
                            v655 = sub_160F68(7);
                            if (v653)
                            {
                              printf("%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out\n", v654, 46, v655, v652);
                              v656 = sub_175AE4();
                              sampleSizeArrayq = sub_160F68(7);
                              syslog(3, "%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out", v656, 46, sampleSizeArrayq, v652);
                            }

                            else
                            {
                              syslog(3, "%lld %d AVE %s: H264FrameRec: EnableSelStatsFlags sending %d bytes out", v654, 46, v655, v652);
                            }
                          }

                          CFDictionarySetValue(v537, @"MBStatistics", v651);
                          CFRelease(v651);
                        }

                        goto LABEL_737;
                      }

                      v809 = 3758097084;
                      if (!sub_160EF0(3u, 4))
                      {
                        goto LABEL_515;
                      }

                      v662 = sub_160F34(3u);
                      v663 = sub_175AE4();
                      v664 = sub_160F68(4);
                      if (v662)
                      {
                        v665 = 3281;
LABEL_734:
                        printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: stat = NULL.\n", v663, 3, v664, "SendFrame", v665, "stat != __null");
                        sub_175AE4();
                        sub_160F68(4);
                      }
                    }

                    else
                    {
                      if (!v808[802] || *(v796 + 131) != 1 || *(v796 + 132) != 1)
                      {
                        goto LABEL_643;
                      }

                      v604 = v800[*(v806 + 3180)];
                      if (v604)
                      {
                        v605 = v808[796];
                        v606 = v808[797];
                        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                        if (!Mutable)
                        {
                          goto LABEL_643;
                        }

                        v590 = Mutable;
                        v607 = 432 * ((v605 + 15) >> 4) * ((v606 + 15) >> 4);
                        CFDataAppendBytes(Mutable, v604, v607);
                        if (sub_160EF0(0x2Eu, 7))
                        {
                          v608 = sub_160F34(0x2Eu);
                          v609 = sub_175AE4();
                          v610 = sub_160F68(7);
                          v611 = *(v796 + 132);
                          if (v608)
                          {
                            printf("%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n\n", v609, 46, v610, *(v796 + 132), v607);
                            v612 = sub_175AE4();
                            v613 = sub_160F68(7);
                            syslog(3, "%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n", v612, 46, v613, *(v796 + 132), v607);
                          }

                          else
                          {
                            syslog(3, "%lld %d AVE %s: H264FrameRec: AttachMVStats %d - EnableSelStatsFlags sending %d bytes out\n", v609, 46, v610, *(v796 + 132), v607);
                          }
                        }

                        v591 = @"MBStatistics";
                        goto LABEL_641;
                      }

                      v809 = 3758097084;
                      if (!sub_160EF0(3u, 4))
                      {
                        goto LABEL_515;
                      }

                      v666 = sub_160F34(3u);
                      v663 = sub_175AE4();
                      v664 = sub_160F68(4);
                      if (v666)
                      {
                        v665 = 3340;
                        goto LABEL_734;
                      }
                    }

                    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: stat = NULL.");
                    goto LABEL_515;
                  }

                  v580 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                  if (v580)
                  {
                    v581 = v580;
                    v582 = sub_17215C(a1 + 3641, *(v796 + 77), v580);
                    if (!v582)
                    {
                      CFDictionarySetValue(v537, @"QualityMetrics", v581);
                      CFRelease(v581);
                      goto LABEL_618;
                    }

                    v583 = v582;
                    if (sub_160EF0(0x2Eu, 4))
                    {
                      v584 = sub_160F34(0x2Eu);
                      v585 = sub_175AE4();
                      v586 = sub_160F68(4);
                      if (!v584)
                      {
                        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d", v585, 46);
                        goto LABEL_694;
                      }

                      printf("%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d\n", v585, 46, v586, "AVE_FrameRecv", "SendFrame", 3085, "ret == 0", v583);
                      v587 = sub_175AE4();
                      v707 = "ret == 0";
                      v711 = v583;
                      v698 = 3085;
                      sampleSizeArrayd = sub_160F68(4);
                      v588 = "%lld %d AVE %s: %s::%s:%d %s | fail to make MSE dictionary %d";
                      goto LABEL_659;
                    }
                  }

                  else if (sub_160EF0(0x2Eu, 4))
                  {
                    v601 = sub_160F34(0x2Eu);
                    v602 = sub_175AE4();
                    v603 = sub_160F68(4);
                    if (!v601)
                    {
                      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary", v602);
                      goto LABEL_694;
                    }

                    printf("%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary\n", v602, 46, v603, "AVE_FrameRecv", "SendFrame", 3081, "pMSEDict != __null");
                    v587 = sub_175AE4();
                    v698 = 3081;
                    v707 = "pMSEDict != __null";
                    sampleSizeArrayd = sub_160F68(4);
                    v588 = "%lld %d AVE %s: %s::%s:%d %s | fail to create dictionary";
LABEL_659:
                    syslog(3, v588, v587, 46, sampleSizeArrayd, "AVE_FrameRecv", "SendFrame", v698, v707, v711);
                  }

LABEL_694:
                  v35 = 0;
                  v809 = 4294966293;
                  goto LABEL_516;
                }
              }

              v527 = 1;
              v528 = 1;
              v529 = 1;
              goto LABEL_558;
            }

            if (!a1[3661] || !a1[3660])
            {
              if (sub_160EF0(0x2Eu, 7))
              {
                v408 = sub_160F34(0x2Eu);
                v409 = sub_175AE4();
                v410 = sub_160F68(7);
                if (v408)
                {
                  printf("%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it\n", v409, 46, v410);
                  v411 = sub_175AE4();
                  sampleSizeArrayh = sub_160F68(7);
                  syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v411, 46, sampleSizeArrayh);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: H264FrameRec WARNING: nobody wants this frame. dump it", v409, 46, v410);
                }

                v809 = 0;
                v26 = v801;
              }

              else
              {
                v809 = 0;
              }

LABEL_494:
              sub_11A5A0(a1, memoryBlocka);
              bzero(a1 + 28548, 0x214uLL);
              goto LABEL_541;
            }

            memset(time1, 0, 32);
            if (*(v796 + 77) < 2u || *(v806 + 44))
            {
              if (allocator)
              {
                v360 = 0;
                v361 = -1;
                v362 = -1;
                v363 = a4;
              }

              else
              {
                v361 = *(v806 + 4560);
                v362 = *(v806 + 4568);
                v363 = -1;
                v360 = *(v806 + 23720);
              }

              time1[0].value = *v790;
              *&time1[0].timescale = v363;
              time1[0].epoch = v361;
              time1[1].value = v362;
              *&time1[1].timescale = v360;
              if (*v807)
              {
                v457 = v307;
                v458 = v53;
                if (*(v807 + 8) == 1)
                {
                  if (*(v806 + 20))
                  {
                    goto LABEL_466;
                  }

                  v492 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                  if (!v492)
                  {
                    goto LABEL_466;
                  }

                  v493 = v492;
                  CFDataAppendBytes(v492, (v806 + 31438), 1574);
                  v494 = *(v793 + 1770);
                  v495 = *v807;
                  sampleTimingArray.duration.value = *(v793 + 1754);
                  *&sampleTimingArray.duration.timescale = *(v793 + 1762);
                  sampleTimingArray.duration.epoch = v494;
                  *(v806 + 20);
                  v496 = VTMultiPassStorageSetDataAtTimeStamp();
                  CFRelease(v493);
                  v809 = v496;
                  if (v496)
                  {
                    if (sub_160EF0(0x2Eu, 4))
                    {
                      v497 = sub_160F34(0x2Eu);
                      v498 = sub_175AE4();
                      v499 = sub_160F68(4);
                      if (v497)
                      {
                        printf("%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...\n", v498, 46, v499);
                        v500 = sub_175AE4();
                        sampleSizeArrayl = sub_160F68(4);
                        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v500, 46, sampleSizeArrayl);
                      }

                      else
                      {
                        syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: VTMultiPassStorageSetDataAtTimeStamp failed. need to set up a recovery here...", v498, 46, v499);
                      }
                    }
                  }

                  else
                  {
LABEL_466:
                    v809 = 0;
                  }

                  a2 = v806;
                  v7 = v807;
                  v6 = v795;
                }

                else
                {
                  v809 = 0;
                }

                v53 = v458;
                v302 = v796;
              }

              else
              {
                v457 = v307;
                v809 = 0;
              }

              if (sub_160EF0(0x2Eu, 7))
              {
                v472 = sub_160F34(0x2Eu);
                v473 = sub_175AE4();
                v474 = sub_160F68(7);
                if (v472)
                {
                  printf("%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes\n", v473, 46, v474, memoryBlocka, v457);
                  v475 = sub_175AE4();
                  sampleSizeArrayk = sub_160F68(7);
                  syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes", v475, 46, sampleSizeArrayk, memoryBlocka, v457);
                }

                else
                {
                  syslog(3, "%lld %d AVE %s: H264FrameRec: calling emitEncodedFrame %p on %ld bytes", v473, 46, v474, memoryBlocka, v457);
                }
              }

              v476 = v7[3];
              v477 = *v790;
              kdebug_trace();
              (a1[3661])(a1[3660], memoryBlocka, dataLength, time1, *(v302 + 131));
              ++*a1;
              v478 = v7[3];
              v479 = *v790;
              kdebug_trace();
              v26 = v801;
              goto LABEL_494;
            }

            v35 = 0;
LABEL_150:
            v809 = 0;
            goto LABEL_46;
          }

          if (!sub_160EF0(0x2Eu, 4))
          {
            v809 = 4294954394;
LABEL_350:
            v7 = v807;
            goto LABEL_395;
          }

          v445 = sub_160F34(0x2Eu);
          v446 = sub_175AE4();
          v447 = sub_160F68(4);
          v448 = a1[3639];
          if (v445)
          {
            printf("%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d\n", v446, 46, v447, "AVE_FrameRecv", "SendFrame", 2571, "m_sMVBuf.pBuf != __null", a1[3639], *v790);
            v449 = sub_175AE4();
            v450 = sub_160F68(4);
            v451 = a1[3639];
            v742 = *v790;
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d", v449, 46, v450);
          }

          else
          {
            v720 = a1[3639];
            syslog(3, "%lld %d AVE %s: %s::%s:%d %s | wrong multi view buffer %p %d", v446, 46, v447);
          }

          v809 = 4294954394;
          a2 = v806;
          a3 = v802;
LABEL_401:
          v7 = v807;
LABEL_435:
          v6 = v795;
          goto LABEL_436;
        }

        if (!sub_160EF0(3u, 4))
        {
          v809 = 0;
          a3 = v802;
          v6 = v795;
          v35 = v798;
          goto LABEL_257;
        }

        v237 = sub_160F34(3u);
        v238 = sub_175AE4();
        v239 = sub_160F68(4);
        v6 = v795;
        v35 = v798;
        if (v237)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL\n", v238, 3, v239, "SendFrame", 2536, "codedHeader != __null");
          v240 = sub_175AE4();
          v241 = sub_160F68(4);
          a2 = v806;
          v7 = v807;
          v26 = v801;
          syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v240, 3, v241, "SendFrame", 2536, "codedHeader != __null");
          goto LABEL_161;
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: codedHeader == NULL", v238, 3, v239, "SendFrame", 2536, "codedHeader != __null");
        v809 = 0;
        a3 = v802;
LABEL_429:
        a2 = v806;
        v7 = v807;
        goto LABEL_46;
      }

      if (sub_160EF0(0x2Eu, 4))
      {
        v427 = v6;
        v428 = sub_160F34(0x2Eu);
        v429 = sub_175AE4();
        v430 = sub_160F68(4);
        v431 = v807[3];
        v432 = *(v806 + 40);
        if (v428)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p\n", v429, 46, v430, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v431, v432, dataLength, v426);
          v433 = sub_175AE4();
          v434 = sub_160F68(4);
          v26 = v801;
          a2 = v806;
          v7 = v807;
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p", v433, 46, v434, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v807[3], *(v806 + 40), dataLength, a1 + 28548);
          v809 = 0;
          a3 = v802;
          v6 = v427;
          goto LABEL_437;
        }

        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add RPU crypto info failed frame %d %ld %p", v429, 46, v430, "AVE_FrameRecv", "SendFrame", 2524, "ret == 0", a1, v431, v432, dataLength, v426);
        v809 = 0;
        a3 = v802;
        v6 = v427;
        goto LABEL_428;
      }
    }

    v809 = 0;
    a3 = v802;
LABEL_428:
    v35 = v798;
    goto LABEL_429;
  }

  v795 = v6;
  v220 = 0;
  v221 = a1 + 29084;
  v222 = &v823;
  v223 = 1;
  v787 = v66;
  while (1)
  {
    v224 = v223;
    v225 = &v221[12 * v220];
    v226 = v225[7];
    if (v226 < 1 || *(v225 + 2) < 1)
    {
      goto LABEL_219;
    }

    if (!v66)
    {
      if (!sub_160EF0(0x2Eu, 4))
      {
        v809 = 0;
        a3 = v802;
        v6 = v795;
        v26 = v801;
        goto LABEL_428;
      }

      v343 = sub_160F34(0x2Eu);
      v344 = sub_175AE4();
      v345 = sub_160F68(4);
      v107 = v807;
      v346 = v807[3];
      v26 = v801;
      v35 = v798;
      if (v343)
      {
        printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i\n", v344, 46, v345, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v807[3], v220);
        v347 = sub_175AE4();
        v348 = sub_160F68(4);
        v7 = v807;
        a2 = v806;
        syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i", v347, 46, v348, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v807[3], v220);
        v809 = 0;
        a3 = v802;
        goto LABEL_228;
      }

      syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld no last slice %i", v344, 46, v345, "AVE_FrameRecv", "SendFrame", 2463, "piLastOutputSliceSize != __null", a1, v807[3], v220);
      v809 = 0;
      a3 = v802;
      a2 = v806;
      goto LABEL_129;
    }

    v791 = *(v225 + 2);
    v810 = v223;
    if (sub_160EF0(0x2Eu, 7))
    {
      v227 = sub_160F34(0x2Eu);
      v780 = sub_175AE4();
      v228 = sub_160F68(7);
      v229 = v807[3];
      v230 = v225[7];
      v231 = *(v225 + 2);
      if (v227)
      {
        printf("%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld\n", v780, 46, v228, "AVE_FrameRecv", "SendFrame", 2467, a1, v229, v220, v230, *(v225 + 2), dataLength);
        v232 = sub_175AE4();
        v233 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld", v232, 46, v233, "AVE_FrameRecv", "SendFrame", 2467, a1, v807[3], v220, v225[7], *(v225 + 2), dataLength);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s::%s:%d %p %lld Filler[%d] %d %d %ld", v780, 46, v228, "AVE_FrameRecv", "SendFrame", 2467, a1, v229, v220, v230, *(v225 + 2), dataLength);
      }

      v66 = v787;
    }

    v234 = v225[7];
    if (v234 >= 2)
    {
      if (sub_124F68(v225, v234 - 1, 5u, v818))
      {
        break;
      }
    }

    v235 = malloc_type_malloc(*(v225 + 2) + 1, 0x100004077774924uLL);
    *v222 = v235;
    if (!v235)
    {
      if (sub_160EF0(0x2Eu, 4))
      {
        v349 = sub_160F34(0x2Eu);
        v350 = sub_175AE4();
        v351 = sub_160F68(4);
        v154 = v807;
        v35 = v798;
        if (v349)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d\n", v350, 46, v351, "AVE_FrameRecv", "SendFrame", 2483, "piFillerBuf[i] != __null", a1, v807[3], *(v806 + 3180), v220, *(v225 + 2));
          v352 = sub_175AE4();
          v353 = sub_160F68(4);
          v770 = *(v225 + 2);
          v737 = v807[3];
          v757 = *(v806 + 3180);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d", v352, 46, v353, "AVE_FrameRecv", "SendFrame");
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | fail to create filler buffer %p %lld %d %d %d", v350, 46, v351, "AVE_FrameRecv", "SendFrame");
        }

        v809 = 0;
        a3 = v802;
        v6 = v795;
        a2 = v806;
        v26 = v801;
        goto LABEL_319;
      }

      goto LABEL_400;
    }

    v236 = v235;
    memset(v235, 255, *(v225 + 2));
    v236[*(v225 + 2)] = 0x80;
    if (sub_124F68(v236, *(v225 + 2) + 1, 5u, v818))
    {
      if (sub_160EF0(0x2Eu, 4))
      {
        v354 = sub_160F34(0x2Eu);
        v355 = sub_175AE4();
        v356 = sub_160F68(4);
        v357 = *(v225 + 2);
        if (v354)
        {
          printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p\n", v355, 46, v356, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0", a1, v807[3], *(v806 + 40), v220, v236, *(v225 + 2), v818);
          v358 = sub_175AE4();
          v359 = sub_160F68(4);
          v774 = *(v225 + 2);
          v738 = v807[3];
          v758 = *(v806 + 40);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p", v358, 46, v359, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0");
        }

        else
        {
          v776 = *(v225 + 2);
          syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler data failed frame %d %d %p %d %p", v355, 46, v356, "AVE_FrameRecv", "SendFrame", 2492, "ret == 0");
        }

        v809 = 0;
        a2 = v806;
        a3 = v802;
        v7 = v807;
        goto LABEL_435;
      }

      goto LABEL_400;
    }

    dataLength += (v791 + v226);
    v221 = a1 + 29084;
    v224 = v810;
LABEL_219:
    v223 = 0;
    v222 = &v822;
    v220 = 1;
    if ((v224 & 1) == 0)
    {
      v6 = v795;
      v26 = v801;
      goto LABEL_176;
    }
  }

  if (!sub_160EF0(0x2Eu, 4))
  {
LABEL_400:
    v809 = 0;
    a3 = v802;
    a2 = v806;
    goto LABEL_401;
  }

  v400 = sub_160F34(0x2Eu);
  v401 = sub_175AE4();
  v402 = sub_160F68(4);
  v154 = v807;
  v403 = v807[3];
  v298 = v806;
  v404 = *(v806 + 40);
  v405 = v225[7];
  if (v400)
  {
    printf("%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p\n", v401, 46, v402, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v403, v404, v220, v225, v225[7], v818);
    v406 = sub_175AE4();
    v407 = sub_160F68(4);
    v775 = v225[7];
    v771 = v225;
    a2 = v806;
    v7 = v807;
    syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p", v406, 46, v407, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v807[3], *(v806 + 40), v220, v771, v775, v818);
    v809 = 0;
    a3 = v802;
    goto LABEL_435;
  }

  syslog(3, "%lld %d AVE %s: %s::%s:%d %s | %p %lld add filler header failed frame %d %d %p %d %p", v401, 46, v402, "AVE_FrameRecv", "SendFrame", 2476, "ret == 0", a1, v403, v404, v220, v225, v225[7], v818);
  v809 = 0;
  a3 = v802;
  v6 = v795;
  v26 = v801;
  v35 = v798;
LABEL_461:
  a2 = v298;
LABEL_319:
  v7 = v154;
LABEL_46:
  sub_175D4(v6[4], *(a2 + 40));
  if (v35)
  {
    free(v35);
  }

  if (v26)
  {
    v808[542] = 0;
  }

  *(v6 + 4) = 0;
  if (*v6)
  {
    sub_11A5A0(a1, *v6);
    *v6 = 0;
  }

  v54 = v6[1];
  if (v54)
  {
    CFRelease(v54);
    v6[1] = 0;
  }

  v55 = &v823;
  v56 = 1;
  v57 = v809;
  do
  {
    v58 = v56;
    if (*v55)
    {
      free(*v55);
      *v55 = 0;
    }

    v56 = 0;
    v55 = &v822;
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

  if (sub_160EF0(0x2Eu, 7))
  {
    v59 = sub_160F34(0x2Eu);
    v60 = sub_175AE4();
    v61 = sub_160F68(7);
    if (v59)
    {
      printf("%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d\n", v60, 46, v61, "AVE_FrameRecv", "SendFrame", a1, v7[3], a2, a3, a4, v809);
      v62 = sub_175AE4();
      v63 = sub_160F68(7);
      v702 = v7[3];
      v57 = v809;
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d", v62, 46, v63, "AVE_FrameRecv");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s::%s Exit %p %lld %p %p %d %d", v60, 46, v61, "AVE_FrameRecv");
    }
  }

  return v57;
}

uint64_t sub_124F68(const void *a1, int a2, unsigned int a3, unsigned int *a4)
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

    if (sub_160EF0(0x2Eu, 4))
    {
      v13 = sub_160F34(0x2Eu);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d\n", v14, 46, v15, "AVE_EncFrameInfo_AddBuf", 2098, "0 <= psEncFrameInfo->iNum && psEncFrameInfo->iNum < (2 * ((32) < (256) ? (32) : (256)) + 10)", a1, a2, a4, *a4);
        v16 = sub_175AE4();
        v17 = sub_160F68(4);
        v18 = *a4;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", v16, 46, v17, "AVE_EncFrameInfo_AddBuf");
      }

      else
      {
        v20 = *a4;
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong number of encode frame info %p %d %p %d", v14, 46, v15, "AVE_EncFrameInfo_AddBuf");
      }
    }
  }

  else if (sub_160EF0(0x2Eu, 4))
  {
    v10 = sub_160F34(0x2Eu);
    v11 = sub_175AE4();
    v12 = sub_160F68(4);
    if (v10)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p\n", v11, 46, v12, "AVE_EncFrameInfo_AddBuf", 2093, "(pBuf != __null) && (iSize > 0) && (psEncFrameInfo != __null)", a1, a2, a4);
      v11 = sub_175AE4();
      v19 = sub_160F68(4);
    }

    else
    {
      v19 = v12;
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p %d %p", v11, 46, v19);
  }

  return 4294966295;
}

uint64_t sub_1251A4(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v5 = a5;
  if (a1)
  {
    sub_1252F8(a1, a2, a3, a4, a5);
    return 0;
  }

  else
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v10 = sub_160F34(0x2Eu);
      v11 = sub_175AE4();
      v12 = sub_160F68(4);
      if (v10)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d\n", v11, 46, v12, "Recv", 3528, "pCtx != __null", 0, a2, a3, a4, v5);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", v13, 46, v14);
      }

      else
      {
        syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameter %p %d %d %d %d", v11, 46, v12);
      }
    }

    return 4294966295;
  }
}

void sub_1252F8(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5)
{
  v9 = (a1 + 137804);
  if (sub_160EF0(0x2Eu, 8))
  {
    v10 = sub_160F34(0x2Eu);
    v11 = sub_175AE4();
    v12 = sub_160F68(8);
    if (v10)
    {
      printf("%lld %d AVE %s: %s Enter %d %d %d %d\n", v11, 46, v12, "FrameDone", a2, a3, a4, a5);
      v11 = sub_175AE4();
      sub_160F68(8);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d %d %d", v11);
  }

  if (!*(a1 + 29328) || !v9[1])
  {
    if (sub_160EF0(0x2Eu, 4))
    {
      v17 = sub_160F34(0x2Eu);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      v20 = *(a1 + 29328);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | wrong state %p %d\n", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(a1 + 29328), v9[1]);
        v18 = sub_175AE4();
        v19 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | wrong state %p %d", v18, 46, v19, "FrameDone", 3558, "m_pcDAL != __null && m_DeviceType != AVE_DevType_None", *(a1 + 29328), v9[1]);
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
      if (sub_160EF0(3u, 4))
      {
        v21 = sub_160F34(3u);
        v22 = sub_175AE4();
        v23 = sub_160F68(4);
        if (v21)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.\n", v22, 3, v23, "FrameDone", 3568, "result == 0");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: commandResult != kIOReturnSuccess.");
      }

      goto LABEL_349;
    }
  }

  if (sub_160EF0(0x2Eu, 4))
  {
    v13 = sub_160F34(0x2Eu);
    v14 = sub_175AE4();
    v15 = sub_160F68(4);
    if (v13)
    {
      printf("%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources\n", v14, 46, v15);
      v16 = sub_175AE4();
      v351 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v16, 46, v351);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: FIG: H264FrameRec: commandResult = kIOReturnNoResources", v14, 46, v15);
    }
  }

LABEL_22:
  v394 = (a1 + 137792);
  if (sub_160EF0(0x2Eu, 7))
  {
    v24 = a5;
    v25 = sub_160F34(0x2Eu);
    v26 = sub_175AE4();
    v27 = sub_160F68(7);
    if (v25)
    {
      printf("%lld %d AVE %s: \nH264FrameRec: counter received = %d\n", v26, 46, v27, a4);
      v28 = sub_175AE4();
      v352 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v28, 46, v352, a4);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: \nH264FrameRec: counter received = %d", v26, 46, v27, a4);
    }

    a5 = v24;
  }

  *&v399 = 0;
  sub_E11A4(*(a1 + 29328), a4, &v399);
  v29 = v399;
  v30 = *(v399 + 4);
  v31 = *(v9 + 3);
  v32 = *(v399 + 40);
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
        if (sub_160EF0(0x2Eu, 7))
        {
          v66 = sub_160F34(0x2Eu);
          v67 = sub_175AE4();
          v68 = sub_160F68(7);
          if (v66)
          {
            printf("%lld %d AVE %s: %s:%d DataType_INIT counter %d frame %d\n", v67, 46, v68, "FrameDone", 3788, a4, *(v29 + 40));
            v67 = sub_175AE4();
            sub_160F68(7);
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
        v229 = (a1 + 26712);
        do
        {
          v230 = *(v228 + 4 * v227);
          if (v230)
          {
            v231 = IOSurfaceLookup(v230);
            *v229 = v231;
            IOSurfaceLock(v231, 0, 0);
            *(v229 - 30) = IOSurfaceGetBaseAddress(*v229);
            *(a1 + 26952 + 4 * v227) = IOSurfaceGetAllocSize(*v229);
            if (sub_160EF0(0x2Eu, 7))
            {
              v232 = sub_160F34(0x2Eu);
              v233 = sub_175AE4();
              v234 = sub_160F68(7);
              v235 = *(v228 + 4 * v227);
              v236 = *v229;
              v237 = *(v229 - 30);
              if (v232)
              {
                printf("%lld %d AVE %s: %s:%d CodedData %d %d %p %p\n", v233, 46, v234, "FrameDone", 3802, v227, v235, *v229, v237);
                v238 = sub_175AE4();
                v239 = sub_160F68(7);
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
        v242 = (a1 + 27312);
        v243 = -30;
        do
        {
          if (*v241)
          {
            v244 = IOSurfaceLookup(*v241);
            *v242 = v244;
            IOSurfaceLock(v244, 0, 0);
            *(v242 - 30) = IOSurfaceGetBaseAddress(*v242);
            if (sub_160EF0(0x2Eu, 7))
            {
              v245 = sub_160F34(0x2Eu);
              v246 = sub_175AE4();
              v247 = sub_160F68(7);
              v248 = *v241;
              v249 = *v242;
              v250 = *(v242 - 30);
              if (v245)
              {
                printf("%lld %d AVE %s: %s:%d CodedHeader %d %d %p %p\n", v246, 46, v247, "FrameDone", 3818, v243 + 30, v248, *v242, v250);
                v251 = sub_175AE4();
                v252 = sub_160F68(7);
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
        v256 = (a1 + 27792);
        v257 = -30;
        do
        {
          if (*v255)
          {
            v258 = IOSurfaceLookup(*v255);
            *v256 = v258;
            IOSurfaceLock(v258, 0, 0);
            *(v256 - 30) = IOSurfaceGetBaseAddress(*v256);
            if (sub_160EF0(0x2Eu, 7))
            {
              v259 = sub_160F34(0x2Eu);
              v260 = sub_175AE4();
              v261 = sub_160F68(7);
              v262 = *v255;
              v263 = *v256;
              v264 = *(v256 - 30);
              if (v259)
              {
                printf("%lld %d AVE %s: %s:%d SliceHeader %d %d %p %p\n", v260, 46, v261, "FrameDone", 3834, v257 + 30, v262, *v256, v264);
                v265 = sub_175AE4();
                v266 = sub_160F68(7);
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
        v269 = (a1 + 26032);
        v270 = -30;
        do
        {
          if (*v268)
          {
            v271 = IOSurfaceLookup(*v268);
            *v269 = v271;
            IOSurfaceLock(v271, 0, 0);
            *(v269 - 30) = IOSurfaceGetBaseAddress(*v269);
            if (sub_160EF0(0x2Eu, 7))
            {
              v272 = sub_160F34(0x2Eu);
              v273 = sub_175AE4();
              v274 = sub_160F68(7);
              v275 = *v268;
              v276 = *v269;
              v277 = *(v269 - 30);
              if (v272)
              {
                printf("%lld %d AVE %s: %s:%d MBStats %d %d %p %p\n", v273, 46, v274, "FrameDone", 3850, v270 + 30, v275, *v269, v277);
                v278 = sub_175AE4();
                v279 = sub_160F68(7);
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
            *(a1 + 26392 + 4 * v281) = v283;
            if (sub_160EF0(0x2Eu, 7))
            {
              v284 = sub_160F34(0x2Eu);
              v285 = sub_175AE4();
              v286 = sub_160F68(7);
              v287 = *(v282 + 4 * v281);
              if (v284)
              {
                printf("%lld %d AVE %s: %s:%d iaLFSResult %d %d\n", v285, 46, v286, "FrameDone", 3864, v281, v287);
                v288 = sub_175AE4();
                v289 = sub_160F68(7);
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
            *(a1 + 26432 + 4 * v290) = v292;
            if (sub_160EF0(0x2Eu, 7))
            {
              v293 = sub_160F34(0x2Eu);
              v294 = sub_175AE4();
              v295 = sub_160F68(7);
              v296 = *(v291 + 4 * v290);
              if (v293)
              {
                printf("%lld %d AVE %s: %s:%d iaLRSResult %d %d\n", v294, 46, v295, "FrameDone", 3876, v290, v296);
                v297 = sub_175AE4();
                v298 = sub_160F68(7);
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
        *(a1 + 38940) = *(v398 + 4624);
        v9 = v387;
        a2 = v388;
      }

      sub_E0C68(*(a1 + 29328), v398);
      v393 = -1;
      goto LABEL_105;
    }

    v34 = a2;
    if (v33 == 6)
    {
      v45 = v9;
      if (sub_160EF0(0x2Eu, 7))
      {
        v46 = sub_160F34(0x2Eu);
        v47 = sub_175AE4();
        v48 = sub_160F68(7);
        v49 = *(v29 + 40);
        v50 = *(v9 + 3);
        if (v46)
        {
          printf("%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld \n", v47, 46, v48, *(v29 + 40), v50);
          v51 = sub_175AE4();
          v52 = sub_160F68(7);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v51, 46, v52, *(v29 + 40), *(v9 + 3));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_STOP frame %d ClientID %lld ", v47, 46, v48, *(v29 + 40), v50);
        }
      }

      v94 = (a1 + 26032);
      v95 = 30;
      do
      {
        if (*v94)
        {
          IOSurfaceUnlock(*v94, 0, 0);
          CFRelease(*v94);
          *v94 = 0;
        }

        v96 = v94[85];
        if (v96)
        {
          IOSurfaceUnlock(v96, 0, 0);
          CFRelease(v94[85]);
          v94[85] = 0;
        }

        v97 = v94[160];
        if (v97)
        {
          IOSurfaceUnlock(v97, 0, 0);
          CFRelease(v94[160]);
          v94[160] = 0;
        }

        v98 = v94[220];
        if (v98)
        {
          IOSurfaceUnlock(v98, 0, 0);
          CFRelease(v94[220]);
          v94[220] = 0;
        }

        ++v94;
        --v95;
      }

      while (v95);
      sub_E0C68(*(a1 + 29328), v398);
      v393 = -1;
      v9 = v45;
      goto LABEL_104;
    }

    goto LABEL_51;
  }

  v34 = a2;
  v35 = (a1 + 25784);
  if (v33 == 10)
  {
    if (sub_160EF0(0x2Eu, 7))
    {
      v53 = sub_160F34(0x2Eu);
      v54 = sub_175AE4();
      v55 = sub_160F68(7);
      v56 = *(v29 + 40);
      if (v53)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d\n", v54, 46, v55, v56);
        v57 = sub_175AE4();
        v353 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v57, 46, v353, *(v29 + 40));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_RESETMULTIPASS frame %d", v54, 46, v55, v56);
      }
    }

    if (*v394)
    {
      sub_164AF8((a1 + 16), *v394, 0);
    }

    *v35 = 0;
    if (*(a1 + 29360))
    {
      FigFormatDescriptionRelease();
      *(a1 + 29360) = 0;
    }

    goto LABEL_62;
  }

  if (v33 == 8)
  {
    if (sub_160EF0(0x2Eu, 7))
    {
      v58 = v34;
      v59 = sub_160F34(0x2Eu);
      v60 = sub_175AE4();
      v61 = sub_160F68(7);
      v62 = *(v29 + 40);
      v63 = *(v9 + 3);
      if (v59)
      {
        printf("%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld\n", v60, 46, v61, v62, v396, v63);
        v64 = sub_175AE4();
        v65 = sub_160F68(7);
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v64, 46, v65, *(v29 + 40), v396, *(v9 + 3));
      }

      else
      {
        syslog(3, "%lld %d AVE %s: H264FrameRec: DataType_COMPLETE frame %d counter %d ClientID %lld", v60, 46, v61, v62, v396, v63);
      }

      v34 = v58;
    }

LABEL_62:
    sub_E0C68(*(a1 + 29328), v29);
LABEL_63:
    v393 = -1;
LABEL_104:
    a2 = v34;
    goto LABEL_105;
  }

  if (v33 != 7)
  {
LABEL_51:
    if (sub_160EF0(0x2Eu, 4))
    {
      v70 = sub_160F34(0x2Eu);
      v71 = sub_175AE4();
      v72 = sub_160F68(4);
      v73 = *(v29 + 4);
      if (v70)
      {
        printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v71, 46, v72, v73);
        v74 = sub_175AE4();
        v354 = sub_160F68(4);
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
  v36 = a1 + 38944;
  *(v29 + 33080) = sub_175AE4();
  if (sub_160EF0(0x2Eu, 7))
  {
    v37 = a5;
    v38 = a4;
    v39 = v34;
    v40 = sub_160F34(0x2Eu);
    v41 = sub_175AE4();
    v42 = sub_160F68(7);
    v43 = *(v9 + 3);
    if (v40)
    {
      printf("%lld %d AVE %s: H264FrameRec: DataType_YUV frame %d type %d ClientID %lld counter %d\n", v41, 46, v42, *(v29 + 40), *(v29 + 2456), *(v9 + 3), v38);
      v41 = sub_175AE4();
      sub_160F68(7);
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
    v36 = a1 + 38944;
  }

  if (!*(v29 + 40))
  {
    *(a1 + 29320) = *(v29 + 4608);
  }

  if (*(v36 + 308) >= 2u && *(v29 + 44) && *(a1 + 29277) == 1)
  {
    *(v29 + 2456) = 4;
  }

  v75 = *v9;
  if (*v9 == 5)
  {
    v84 = sub_11C71C(a1, v29);
    sub_E0C68(*(a1 + 29328), v29);
    if (v84)
    {
      a3 = v391;
      LODWORD(a5) = v395;
      a2 = v34;
      if (sub_160EF0(3u, 4))
      {
        v85 = sub_160F34(3u);
        v86 = sub_175AE4();
        v87 = sub_160F68(4);
        if (v85)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendOutputFrameDMV failed.\n", v86, 3, v87, "FrameDone", 3629, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
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
    v80 = sub_11DB70(a1, v29);
    sub_E0C68(*(a1 + 29328), v29);
    if (v80)
    {
      a3 = v391;
      LODWORD(a5) = v395;
      a2 = v34;
      if (sub_160EF0(0x2Eu, 4))
      {
        v81 = sub_160F34(0x2Eu);
        v82 = sub_175AE4();
        v83 = sub_160F68(4);
        if (v81)
        {
          printf("%lld %d AVE %s: %s:%d %s | Failed to send GGM frame done\n", v82, 46, v83, "FrameDone", 3620, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
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
    v76 = sub_11D888(a1, v29);
    sub_E0C68(*(a1 + 29328), v29);
    if (v76)
    {
      a3 = v391;
      LODWORD(a5) = v395;
      a2 = v34;
      if (sub_160EF0(3u, 4))
      {
        v77 = sub_160F34(3u);
        v78 = sub_175AE4();
        v79 = sub_160F68(4);
        if (v77)
        {
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: SendFrameMCTF failed.\n", v78, 3, v79, "FrameDone", 3613, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
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
      if (sub_160EF0(0x2Eu, 5))
      {
        v307 = sub_160F34(0x2Eu);
        v308 = sub_175AE4();
        v309 = sub_160F68(5);
        v310 = *(v29 + 40);
        v311 = *(v29 + 2456);
        if (v307)
        {
          printf("%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d\n", v308, 46, v309, v310, v311);
          v312 = sub_175AE4();
          v313 = sub_160F68(5);
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v312, 46, v313, *(v29 + 40), *(v29 + 2456));
        }

        else
        {
          syslog(3, "%lld %d AVE %s: H264FrameRec: DROPPING frame %d type %d", v308, 46, v309, v310, v311);
        }
      }

      v112 = sub_11CE6C(a1, v29);
      v317 = 0;
      v328 = 0;
      v339 = -1;
LABEL_368:
      v393 = v339;
      goto LABEL_369;
    }

    if (v88 != 6)
    {
      if (sub_160EF0(0x2Eu, 4))
      {
        a2 = v34;
        v222 = sub_160F34(0x2Eu);
        v223 = sub_175AE4();
        v224 = sub_160F68(4);
        v225 = *(v29 + 2456);
        if (v222)
        {
          printf("%lld %d AVE %s: H264FrameRec ERROR: FrameType NOT RECOGNIZED = %d. cannot process frame.\n", v223, 46, v224, v225);
          v226 = sub_175AE4();
          v361 = sub_160F68(4);
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

  if (sub_160EF0(0x2Eu, 8))
  {
    v89 = v34;
    v90 = sub_160F34(0x2Eu);
    v91 = sub_175AE4();
    v92 = sub_160F68(8);
    v93 = *(v36 + 504);
    if (v90)
    {
      printf("%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d\n", v91, 46, v92, "AVE_FrameRecv", "FrameDone", 3645, *v9, *(v29 + 40), *(v29 + 2456), *(a1 + 29360), *v35, *(v36 + 504), *(v29 + 6081));
      v91 = sub_175AE4();
      v92 = sub_160F68(8);
      v382 = *(v36 + 504);
      v384 = *(v29 + 6081);
      v379 = *(a1 + 29360);
      v381 = *v35;
      v370 = *(v29 + 40);
      v374 = *(v29 + 2456);
      v368 = *v9;
    }

    else
    {
      v383 = *(v36 + 504);
    }

    syslog(3, "%lld %d AVE %s: %s::%s:%d %d frame %d type %d %p %d %d %d", v91, 46, v92, "AVE_FrameRecv", "FrameDone");
    v34 = v89;
    a5 = v395;
  }

  v299 = *(a1 + 29360);
  if (v299 || *v35 == 1)
  {
    a2 = v34;
    if (*(v36 + 504) == 2 && *(v29 + 6081) == 1)
    {
      if (v299)
      {
        FigFormatDescriptionRelease();
        *(a1 + 29360) = 0;
      }

      if (sub_1191C0(a1, v29))
      {
        a3 = v391;
        if (sub_160EF0(0x2Eu, 4))
        {
          v300 = a5;
          v301 = sub_160F34(0x2Eu);
          v302 = sub_175AE4();
          v303 = sub_160F68(4);
          if (v301)
          {
            v304 = v398;
            v375 = v398;
            v305 = a1;
            v371 = a1;
            v306 = 3667;
LABEL_327:
            printf("%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p\n", v302, 46, v303, "AVE_FrameRecv", "FrameDone", v306, "ret == 0", v371, v375);
            v302 = sub_175AE4();
            v372 = v305;
            v376 = v304;
            v367 = v306;
            a2 = v34;
            a3 = v391;
            v362 = sub_160F68(4);
            v315 = "%lld %d AVE %s: %s::%s:%d %s | fail to send PS %p %p";
LABEL_387:
            syslog(3, v315, v302, 46, v362, "AVE_FrameRecv", "FrameDone", v367, "ret == 0", v372, v376, v378);
            LODWORD(a5) = v300;
            goto LABEL_345;
          }

          v376 = v398;
          v372 = a1;
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
    if (*v9 == 1 && sub_1191C0(a1, v29))
    {
      a3 = v391;
      if (sub_160EF0(0x2Eu, 4))
      {
        v300 = a5;
        v314 = sub_160F34(0x2Eu);
        v302 = sub_175AE4();
        v303 = sub_160F68(4);
        if (v314)
        {
          v304 = v398;
          v375 = v398;
          v305 = a1;
          v371 = a1;
          v306 = 3675;
          goto LABEL_327;
        }

        v376 = v398;
        v372 = a1;
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

  v316 = *(v36 + 4) - 1;
  v317 = v316 == a5;
  if ((a5 & 0x80000000) != 0 || !*v36)
  {
    v324 = *v9;
    if (*v9 == 2)
    {
      if (sub_11A7B8(a1, v398))
      {
        a3 = v391;
        if (sub_160EF0(3u, 4))
        {
          v325 = sub_160F34(3u);
          v326 = sub_175AE4();
          v327 = sub_160F68(4);
          if (v325)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: ProcessAndEmitLrmeStats failed\n", v326, 3, v327, "FrameDone", 3704, "err == noErr");
            sub_175AE4();
            sub_160F68(4);
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
          v342 = *(v36 + 1752);
          v343 = sub_175AE4();
          sub_1403FC(v342, 5u, v343);
        }

        a3 = v391;
        if (v112 && sub_160EF0(0x2Eu, 4))
        {
          v344 = v9;
          v345 = a2;
          v346 = sub_160F34(0x2Eu);
          v347 = sub_175AE4();
          v348 = sub_160F68(4);
          if (v346)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.\n", v347, 46, v348);
            v349 = sub_175AE4();
            v363 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v349, 46, v363);
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: SendFrame failed. continue.", v347, 46, v348);
          }

          a2 = v345;
          v9 = v344;
        }

        sub_E0C68(*(a1 + 29328), v398);
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

      if (sub_117BCC(a1, *(v398 + 3180), *(v398 + 44)))
      {
        a3 = v391;
        if (!sub_160EF0(0x2Eu, 4))
        {
          goto LABEL_345;
        }

        v300 = a5;
        v338 = sub_160F34(0x2Eu);
        v302 = sub_175AE4();
        v319 = sub_160F68(4);
        if (v338)
        {
          v320 = v398;
          v377 = *(v398 + 3180);
          v380 = *(v398 + 44);
          v321 = a1;
          v373 = a1;
          v322 = 3716;
          goto LABEL_334;
        }

        v376 = *(v398 + 3180);
        v378 = *(v398 + 44);
        v372 = a1;
        v340 = 3716;
LABEL_362:
        v367 = v340;
        v362 = v319;
        v315 = "%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d";
        goto LABEL_387;
      }

      v401 = 0;
      v399 = 0u;
      v400 = 0u;
      sub_1283E8(*(a1 + 29336), &v399);
      v341 = sub_11DEB4(a1, v398, &v399, 0xFFFFFFFFLL);
      v339 = a5;
      v112 = v341;
      v328 = 0;
    }

    goto LABEL_368;
  }

  if (sub_117BCC(a1, *(v398 + 3180), *(v398 + 44)))
  {
    a3 = v391;
    if (!sub_160EF0(0x2Eu, 4))
    {
      goto LABEL_345;
    }

    v300 = a5;
    v318 = sub_160F34(0x2Eu);
    v302 = sub_175AE4();
    v319 = sub_160F68(4);
    if (v318)
    {
      v320 = v398;
      v377 = *(v398 + 3180);
      v380 = *(v398 + 44);
      v321 = a1;
      v373 = a1;
      v322 = 3692;
LABEL_334:
      printf("%lld %d AVE %s: %s::%s:%d %s | %p collect slice size failed %d %d\n", v302, 46, v319, "AVE_FrameRecv", "FrameDone", v322, "ret == 0", v373, v377, v380);
      v302 = sub_175AE4();
      v323 = sub_160F68(4);
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
    v372 = a1;
    v340 = 3692;
    goto LABEL_362;
  }

  v401 = 0;
  v399 = 0u;
  v400 = 0u;
  sub_1283E8(*(a1 + 29336), &v399);
  v330 = sub_11DEB4(a1, v398, &v399, a5);
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
        v399 = 0u;
        v400 = 0u;
        a4 = v396;
        LODWORD(v399) = v396;
        v401 = a2;
        v126 = sub_128458(*(a1 + 29344), &v399);
        if (v112)
        {
          LODWORD(a5) = v395;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_345;
          }

          v127 = sub_160F34(3u);
          v121 = sub_175AE4();
          v122 = sub_160F68(4);
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
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_345;
        }

        v137 = sub_160F34(3u);
        v134 = sub_175AE4();
        v135 = sub_160F68(4);
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

        v399 = 0u;
        v400 = 0u;
        LODWORD(v399) = v396;
        v401 = a2;
        v119 = sub_128458(*(a1 + 29344), &v399);
        if (v112)
        {
          LODWORD(a5) = v395;
          if (!sub_160EF0(3u, 4))
          {
            goto LABEL_345;
          }

          v120 = sub_160F34(3u);
          v121 = sub_175AE4();
          v122 = sub_160F68(4);
          if (!v120)
          {
            goto LABEL_303;
          }

          v123 = 4034;
LABEL_168:
          printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: writePacketBlock failed.\n", v121, 3, v122, "FrameDone", v123, "err == noErr");
          sub_175AE4();
          sub_160F68(4);
          goto LABEL_303;
        }

        if (!v119)
        {
          goto LABEL_175;
        }

        LODWORD(a5) = v395;
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_345;
        }

        v138 = sub_160F34(3u);
        v134 = sub_175AE4();
        v135 = sub_160F68(4);
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
          v399 = 0u;
          v400 = 0u;
          LODWORD(v399) = v396;
          v401 = a2;
          if (sub_160EF0(0x2Eu, 7))
          {
            v114 = sub_160F34(0x2Eu);
            v115 = sub_175AE4();
            v116 = sub_160F68(7);
            if (v114)
            {
              printf("%lld %d AVE %s: H264FrameRec: writePacketBlock = %d\n", v115, 46, v116, v396);
              v117 = sub_175AE4();
              v118 = sub_160F68(7);
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v117, 46, v118, v396);
            }

            else
            {
              syslog(3, "%lld %d AVE %s: H264FrameRec: writePacketBlock = %d", v115, 46, v116, v396);
            }

            a4 = v396;
          }

          v139 = sub_128458(*(a1 + 29344), &v399);
          if (v112)
          {
            LODWORD(a5) = v395;
            if (!sub_160EF0(3u, 4))
            {
              goto LABEL_345;
            }

            v140 = sub_160F34(3u);
            v121 = sub_175AE4();
            v122 = sub_160F68(4);
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
            if (!sub_160EF0(3u, 4))
            {
              goto LABEL_345;
            }

            v141 = sub_160F34(3u);
            v134 = sub_175AE4();
            v135 = sub_160F68(4);
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
          if ((*(sub_1502C8() + 412) & 0x20) != 0)
          {
            v392 = a3;
            v142 = a1 + 139568;
            v143 = *(a1 + 139568 + 16 * *(v398 + 40) + 8);
            if (sub_160EF0(0x2Eu, 8))
            {
              v144 = sub_160F34(0x2Eu);
              v145 = sub_175AE4();
              v146 = sub_160F68(8);
              if (v144)
              {
                printf("%lld %d AVE %s: \n", v145, 46, v146);
                v147 = sub_175AE4();
                v357 = sub_160F68(8);
                v142 = a1 + 139568;
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
                v152 = (v142 + 16 * v149);
                v153 = (v148 - v152[1]) / *(v398 + 4616);
                if (sub_160EF0(0x2Eu, 8))
                {
                  v154 = sub_160F34(0x2Eu);
                  v155 = sub_175AE4();
                  v156 = sub_160F68(8);
                  v157 = *(v398 + 40);
                  if (v154)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/10 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v155, 46, v156, v157, v149, v151, v153, v150);
                    v158 = sub_175AE4();
                    v142 = a1 + 139568;
                    v358 = sub_160F68(8);
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

            if (sub_160EF0(0x2Eu, 8))
            {
              v161 = sub_160F34(0x2Eu);
              v162 = sub_175AE4();
              v163 = sub_160F68(8);
              if (v161)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d, 1/10 -> frames %d, bits %d, timepassed %04.3f, -> bitrate %d\n", v162, 46, v163, *(v398 + 40), v159, v151, v153, v160);
                v164 = sub_175AE4();
                sub_160F68(8);
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
                v170 = (v142 + 16 * v167);
                v171 = (v148 - v170[1]) / *(v398 + 4616);
                v168 = *v170 + v168;
                if (sub_160EF0(0x2Eu, 8))
                {
                  v172 = sub_160F34(0x2Eu);
                  v173 = sub_175AE4();
                  v174 = sub_160F68(8);
                  v175 = *(v398 + 40);
                  if (v172)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v173, 46, v174, v175, v167, v168, v171, v169);
                    v176 = sub_175AE4();
                    v359 = sub_160F68(8);
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

            if (sub_160EF0(0x2Eu, 8))
            {
              v178 = sub_160F34(0x2Eu);
              v179 = sub_175AE4();
              v180 = sub_160F68(8);
              if (v178)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1/2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v179, 46, v180, *(v398 + 40), v169, v168, v171, v177);
                v181 = sub_175AE4();
                sub_160F68(8);
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
                v186 = (v142 + 16 * v185);
                v187 = (v148 - v186[1]) / *(v398 + 4616);
                v183 = *v186 + v183;
                if (sub_160EF0(0x2Eu, 8))
                {
                  v188 = sub_160F34(0x2Eu);
                  v189 = sub_175AE4();
                  v190 = sub_160F68(8);
                  v191 = *(v398 + 40);
                  v192 = *v186;
                  if (v188)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> i %d, bits %d (frame %d), timePassed %4.3f, framesUsed %d\n", v189, 46, v190, v191, v185, v183, v192, v187, v184);
                    v193 = sub_175AE4();
                    v194 = sub_160F68(8);
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

            if (sub_160EF0(0x2Eu, 8))
            {
              v196 = sub_160F34(0x2Eu);
              v197 = sub_175AE4();
              v198 = sub_160F68(8);
              if (v196)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 1 -> frames %d bits %d timepassed %04.3f -> ###### bitrate %d ######\n", v197, 46, v198, *(v398 + 40), v184, v183, v187, v195);
                v199 = sub_175AE4();
                sub_160F68(8);
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
                v205 = (v142 + 16 * v202);
                v206 = (v148 - v205[1]) / *(v398 + 4616);
                v203 = *v205 + v203;
                if (sub_160EF0(0x2Eu, 8))
                {
                  v207 = sub_160F34(0x2Eu);
                  v208 = sub_175AE4();
                  v209 = sub_160F68(8);
                  v210 = *(v398 + 40);
                  if (v207)
                  {
                    printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> i %d, bits %d, timePassed %4.3f, framesUsed %d\n", v208, 46, v209, v210, v202, v203, v206, v204);
                    v211 = sub_175AE4();
                    a4 = v396;
                    v360 = sub_160F68(8);
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

            if (sub_160EF0(0x2Eu, 8))
            {
              v214 = sub_160F34(0x2Eu);
              v215 = sub_175AE4();
              v216 = sub_160F68(8);
              if (v214)
              {
                printf("%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d\n", v215, 46, v216, *(v398 + 40), v204, v203, v206, v213);
                v217 = sub_175AE4();
                sub_160F68(8);
                v218 = *(v398 + 40);
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v217);
              }

              else
              {
                syslog(3, "%lld %d AVE %s: H264FrameRec: DROP F %d 2 -> frames %d bits %d timepassed %04.3f -> bitrate %d", v215);
              }
            }

            v219 = *(a1 + 39588);
            *(a1 + 137852) = (*(a1 + 29992) & 2) != 0;
            v220 = v212[1];
            *(a1 + 137844) = v219;
            *(a1 + 137848) = v220;
            *(a1 + 137840) = *(sub_1502C8() + 104) & 0x20;
            *(a1 + 137853) = *(a1 + 38944);
            *(a1 + 137856) = v393;
            v221 = sub_CBC74(*(a1 + 40704), 5u, *(v398 + 24));
            sub_DA98C((a1 + 137840), v398, v221);
            memcpy((a1 + 137864), (v398 + 33048), 0x698uLL);
            *(a1 + 139552) = *(v398 + 4608);
            a2 = v389;
            a3 = v392;
            LODWORD(a5) = v395;
          }

          goto LABEL_345;
        }

LABEL_147:
        if (sub_160EF0(0x2Eu, 4))
        {
          v128 = sub_160F34(0x2Eu);
          v129 = sub_175AE4();
          v130 = sub_160F68(4);
          v131 = *(v398 + 4);
          if (v128)
          {
            printf("%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame\n", v129, 46, v130, v131);
            v132 = sub_175AE4();
            v356 = sub_160F68(4);
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v132, 46, v356, *(v398 + 4));
          }

          else
          {
            syslog(3, "%lld %d AVE %s: H264FrameRec ERROR: OutputDataFromKernel.type NOT RECOGNIZED = %d. cannot process frame", v129, 46, v130, v131);
          }
        }

        goto LABEL_175;
      }

      v399 = 0u;
      v400 = 0u;
      LODWORD(v399) = v396;
      v401 = a2;
      v124 = sub_128458(*(a1 + 29344), &v399);
      if (v112)
      {
        LODWORD(a5) = v395;
        if (!sub_160EF0(3u, 4))
        {
          goto LABEL_345;
        }

        v125 = sub_160F34(3u);
        v121 = sub_175AE4();
        v122 = sub_160F68(4);
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
      if (!sub_160EF0(3u, 4))
      {
        goto LABEL_345;
      }

      v133 = sub_160F34(3u);
      v134 = sub_175AE4();
      v135 = sub_160F68(4);
      if (!v133)
      {
        goto LABEL_344;
      }

      v136 = 4051;
    }

LABEL_173:
    printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: Timed Out waiting for space to write packet to main thread\n", v134, 3, v135, "FrameDone", v136, "ret == 0");
    sub_175AE4();
    sub_160F68(4);
    goto LABEL_344;
  }

LABEL_105:
  a5 = *(a1 + 29336);
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
      if (sub_160EF0(0x2Eu, 7))
      {
        v108 = sub_160F34(0x2Eu);
        v109 = sub_175AE4();
        v110 = sub_160F68(7);
        if (v108)
        {
          printf("%lld %d AVE %s: H264FrameRec: readPacketBlock = %d\n", v109, 46, v110, v396);
          v111 = sub_175AE4();
          v355 = sub_160F68(7);
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
  if (sub_160EF0(3u, 4))
  {
    v102 = sub_160F34(3u);
    v103 = sub_175AE4();
    v104 = sub_160F68(4);
    if (v102)
    {
      printf("%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d\n", v103, 3, v104, "FrameDone", 3978, "err == noErr", -1);
      v103 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | H264FrameRec ERROR: readPacketBlock failed. %d", v103);
  }

  a4 = v396;
  if (v398)
  {
    goto LABEL_345;
  }

LABEL_349:
  if (sub_160EF0(0x2Eu, 8))
  {
    v334 = sub_160F34(0x2Eu);
    v335 = sub_175AE4();
    v336 = sub_160F68(8);
    if (v334)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d %d\n", v335, 46, v336, "FrameDone", a2, a3, a4, a5);
      v337 = sub_175AE4();
      sub_160F68(8);
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v337);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %d %d %d %d", v335);
    }
  }
}

uint64_t sub_1283E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_128458(uint64_t a1, __int128 *a2)
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
      if (sub_160EF0(0x2Au, 4))
      {
        v9 = sub_160F34(0x2Au);
        v10 = sub_175AE4();
        v11 = sub_160F68(4);
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
          printf("%lld %d AVE %s: H264 Connection: connection full %lld\n", v10, 42, v11, v15);
          v10 = sub_175AE4();
          v11 = sub_160F68(4);
          v17 = *(a1 + 208);
          v16 = *(a1 + 216);
          v14 = v16 <= v17;
          v15 = v16 - v17;
          if (v14)
          {
            v15 = 0;
          }
        }

        syslog(3, "%lld %d AVE %s: H264 Connection: connection full %lld", v10, 42, v11, v15);
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

uint64_t sub_1285DC(uint64_t a1)
{
  *(a1 + 25352) = 0u;
  *(a1 + 25368) = 0;
  v2 = a1 + 24576;
  *(a1 + 25384) = 0u;
  *(a1 + 25400) = 0u;
  *(a1 + 25416) = 0u;
  *(a1 + 25432) = 0u;
  *(a1 + 25448) = 0u;
  *(a1 + 25464) = 0u;
  sub_128654(a1);
  *(v2 + 904) = 0;
  *(a1 + 25488) = 0;
  *(a1 + 25760) = 0;
  bzero((a1 + 25496), 0x108uLL);
  *(v2 + 996) = 0;
  *(a1 + 25344) = 0;
  return a1;
}

void sub_128654(uint64_t a1)
{
  v2 = (a1 + 25352);
  v3 = *(a1 + 25352);
  if (v3)
  {
    *(a1 + 25360) = v3;
    operator delete(v3);
  }

  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v4 = *(a1 + 25392);
  v5 = *(a1 + 25400);
  *(a1 + 25424) = 0;
  v6 = (v5 - v4) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v4);
      v4 = (*(a1 + 25392) + 8);
      *(a1 + 25392) = v4;
      v6 = (*(a1 + 25400) - v4) >> 3;
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

  *(a1 + 25416) = v7;
LABEL_10:
  v8 = *(a1 + 25440);
  v9 = *(a1 + 25448);
  *(a1 + 25472) = 0;
  v10 = (v9 - v8) >> 3;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v8);
      v8 = (*(a1 + 25440) + 8);
      *(a1 + 25440) = v8;
      v10 = (*(a1 + 25448) - v8) >> 3;
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
    *(a1 + 25464) = v11;
  }

  v12 = 0;
  v13 = xmmword_185C60;
  v14 = vdupq_n_s64(a1 + 2);
  v15 = vdupq_n_s64(2uLL);
  do
  {
    v16.i64[0] = 1574 * v13.i64[0];
    v16.i64[1] = 1574 * v13.i64[1];
    *(a1 + 25192 + v12) = vaddq_s64(v14, v16);
    v13 = vaddq_s64(v13, v15);
    v12 += 16;
  }

  while (v12 != 128);
  *(a1 + 25320) = 16;
}

uint64_t sub_1287C0(void *a1)
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

  return sub_12886C(a1);
}

uint64_t sub_12886C(uint64_t a1)
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

void *sub_1288BC(void *a1)
{
  sub_1287C0(a1 + 3179);
  sub_1287C0(a1 + 3173);
  v2 = a1[3169];
  if (v2)
  {
    a1[3170] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_128908(uint64_t a1, _DWORD *a2, uint64_t a3, unsigned int a4)
{
  v5 = *(a1 + 20);
  v6 = a2[2995];
  v7 = a2[662];
  v8 = a2[663];
  *(a3 + 16) = sub_13DC80(*(a1 + 8), v6, HIWORD(a2[166]) & 1, a4);
  *(a3 + 20) = sub_13DC94(v5, v6, v7, v8);
  return 0;
}

uint64_t sub_12897C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 40) == 0;
  v6 = *(a3 + 23712) != 0;
  *(a4 + 56) = sub_13DD24(*(a1 + 8), 2 * (*(a1 + 106096) != 0), *(a1 + 106096));
  *(a4 + 60) = sub_13DD38(v5, v6);
  return 0;
}

uint64_t sub_1289FC(int a1, int a2)
{
  bzero(v15, 0x7A0uLL);
  if (sub_160EF0(0x28u, 6))
  {
    v4 = sub_160F34(0x28u);
    v5 = sub_175AE4();
    v6 = sub_160F68(6);
    if (v4)
    {
      printf("%lld %d AVE %s: %s Enter %d %d\n", v5, 40, v6, "AVE_USL_Drv_Create", a1, a2);
      v5 = sub_175AE4();
      v6 = sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Enter %d %d", v5, 40, v6, "AVE_USL_Drv_Create", a1, a2);
  }

  v7 = malloc_type_malloc(0x19E98uLL, 0x10200409CA022ABuLL);
  if (v7)
  {
    bzero(v7, 0x19E98uLL);
    operator new();
  }

  if (sub_160EF0(0x28u, 4))
  {
    v8 = sub_160F34(0x28u);
    v9 = sub_175AE4();
    v10 = sub_160F68(4);
    if (v8)
    {
      printf("%lld %d AVE %s: %s:%d %s | fail to allocate %d %d\n", v9, 40, v10, "AVE_USL_Drv_Create", 354, "pINS != __null", a1, a2);
      v9 = sub_175AE4();
      v10 = sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | fail to allocate %d %d", v9, 40, v10, "AVE_USL_Drv_Create", 354, "pINS != __null", a1, a2);
  }

  if (sub_160EF0(0x28u, 6))
  {
    v11 = sub_160F34(0x28u);
    v12 = sub_175AE4();
    v13 = sub_160F68(6);
    if (v11)
    {
      printf("%lld %d AVE %s: %s Exit %d %d %d\n", v12, 40, v13, "AVE_USL_Drv_Create", a1, a2, -1003);
      v12 = sub_175AE4();
      v13 = sub_160F68(6);
    }

    syslog(3, "%lld %d AVE %s: %s Exit %d %d %d", v12, 40, v13, "AVE_USL_Drv_Create", a1, a2, -1003);
  }

  return 4294966293;
}

uint64_t sub_129100(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_12910C(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_129118(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t sub_129124(uint64_t result)
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

uint64_t sub_129148(uint64_t result)
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

uint64_t sub_12916C(void *a1)
{
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  memset(v32, 0, sizeof(v32));
  if (sub_160EF0(0x28u, 6))
  {
    v2 = sub_160F34(0x28u);
    v3 = sub_175AE4();
    v4 = sub_160F68(6);
    if (v2)
    {
      printf("%lld %d AVE %s: %s Enter %p\n", v3, 40, v4, "AVE_USL_Drv_Destroy", a1);
      v5 = sub_175AE4();
      v27 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Enter %p", v5, 40, v27, "AVE_USL_Drv_Destroy", a1);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Enter %p", v3, 40, v4, "AVE_USL_Drv_Destroy", a1);
    }
  }

  if (a1)
  {
    if (a1[3])
    {
      *&v33 = *a1;
      *(&v34 + 1) = 118000000;
      v35 = sub_175AE4();
      v6 = sub_E2EF4(a1[3], &v33, v32);
      if (v6)
      {
        v7 = v6;
        if (!sub_160EF0(0x28u, 4))
        {
LABEL_30:
          free(a1);
          goto LABEL_31;
        }

        v8 = sub_160F34(0x28u);
        v9 = sub_175AE4();
        v10 = sub_160F68(4);
        if (v8)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close client %d\n", v9, 40, v10, "AVE_USL_Drv_Destroy", 528, "ret == 0", v7);
          v11 = sub_175AE4();
          sub_160F68(4);
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

      sub_DED78(a1[3]);
      v15 = sub_E2824(a1[3]);
      if (v15)
      {
        v7 = v15;
        if (!sub_160EF0(0x28u, 4))
        {
          goto LABEL_30;
        }

        v16 = sub_160F34(0x28u);
        v9 = sub_175AE4();
        v17 = sub_160F68(4);
        if (v16)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to close driver %d\n", v9, 40, v17, "AVE_USL_Drv_Destroy", 534, "ret == 0", v7);
          v18 = sub_175AE4();
          sub_160F68(4);
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
        sub_DE988(v20);
        operator delete();
      }

      a1[3] = 0;
    }

    sub_129604(a1);
    v21 = a1[13266];
    if (v21)
    {
      CVPixelBufferPoolRelease(v21);
    }

    v7 = 0;
    goto LABEL_30;
  }

  if (sub_160EF0(0x28u, 4))
  {
    v12 = sub_160F34(0x28u);
    v13 = sub_175AE4();
    v14 = sub_160F68(4);
    if (v12)
    {
      printf("%lld %d AVE %s: %s:%d %s | wrong parameters %p\n", v13, 40, v14, "AVE_USL_Drv_Destroy", 518, "pDrv != __null", 0);
      v13 = sub_175AE4();
      sub_160F68(4);
    }

    syslog(3, "%lld %d AVE %s: %s:%d %s | wrong parameters %p", v13);
  }

  v7 = 4294966295;
LABEL_31:
  if (sub_160EF0(0x28u, 6))
  {
    v22 = sub_160F34(0x28u);
    v23 = sub_175AE4();
    v24 = sub_160F68(6);
    if (v22)
    {
      printf("%lld %d AVE %s: %s Exit %p %d\n", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
      v25 = sub_175AE4();
      v29 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v25, 40, v29, "AVE_USL_Drv_Destroy", a1, v7);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s Exit %p %d", v23, 40, v24, "AVE_USL_Drv_Destroy", a1, v7);
    }
  }

  return v7;
}

uint64_t sub_129604(uint64_t a1)
{
  v2 = a1 + 102400;
  if (*(a1 + 106064))
  {
    sub_116028();
    operator delete();
  }

  v3 = *(a1 + 106072);
  if (v3)
  {
    sub_130A9C(v3);
    operator delete();
  }

  v4 = *(v2 + 3680);
  if (v4)
  {
    sub_130A9C(v4);
    operator delete();
  }

  sub_13ED4C(a1 + 136);

  return sub_13E77C(a1 + 128);
}

uint64_t sub_1296B0()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  if (sub_160EF0(0x28u, 7))
  {
    v6 = sub_160F34(0x28u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.\n", v7, 40, v8);
      v9 = sub_175AE4();
      v90 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.", v9, 40, v90);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Prepare.", v7, 40, v8);
    }
  }

  if (!v5)
  {
    if (sub_160EF0(3u, 4))
    {
      v15 = sub_160F34(3u);
      v16 = sub_175AE4();
      v17 = sub_160F68(4);
      if (v15)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_Prepare, Null pointer for driver data.\n", v16, 3, v17, "AVE_USL_Drv_Prepare", 569, "pDriverInstance");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: AVE_USL_Drv_Prepare, Null pointer for driver data.");
    }

    goto LABEL_100;
  }

  if (!v4)
  {
    if (sub_160EF0(3u, 4))
    {
      v18 = sub_160F34(3u);
      v19 = sub_175AE4();
      v20 = sub_160F68(4);
      if (v18)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for AppleAVEVA_InitSettings.\n", v19, 3, v20, "AVE_USL_Drv_Prepare", 570, "pInitSettings");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for AppleAVEVA_InitSettings.");
    }

    goto LABEL_100;
  }

  if (!*v4)
  {
    if (sub_160EF0(3u, 4))
    {
      v21 = sub_160F34(3u);
      v22 = sub_175AE4();
      v23 = sub_160F68(4);
      if (v21)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for psSessionCfg.\n", v22, 3, v23, "AVE_USL_Drv_Prepare", 572, "pInitSettings->psSessionCfg");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for psSessionCfg.");
    }

    goto LABEL_100;
  }

  if (!*(v4 + 8))
  {
    if (sub_160EF0(3u, 4))
    {
      v24 = sub_160F34(3u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParams.\n", v25, 3, v26, "AVE_USL_Drv_Prepare", 573, "pInitSettings->pVideoParams");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParams.");
    }

    goto LABEL_100;
  }

  v10 = *(v4 + 16);
  if (!v10)
  {
    if (sub_160EF0(3u, 4))
    {
      v27 = sub_160F34(3u);
      v28 = sub_175AE4();
      v29 = sub_160F68(4);
      if (v27)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for pVideoParamsDriver.\n", v28, 3, v29, "AVE_USL_Drv_Prepare", 574, "pInitSettings->pVideoParamsDriver");
        sub_175AE4();
        sub_160F68(4);
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
      if (sub_160EF0(3u, 4))
      {
        v43 = sub_160F34(3u);
        v44 = sub_175AE4();
        v45 = sub_160F68(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for VPSHevcParams.\n", v44, 3, v45, "AVE_USL_Drv_Prepare", 588, "pInitSettings->VPSHevcParams");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for VPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 2312))
    {
      if (sub_160EF0(3u, 4))
      {
        v50 = sub_160F34(3u);
        v51 = sub_175AE4();
        v52 = sub_160F68(4);
        if (v50)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSHevcParams.\n", v51, 3, v52, "AVE_USL_Drv_Prepare", 589, "pInitSettings->psaHEVC_SPS[0]");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 2328))
    {
      if (sub_160EF0(3u, 4))
      {
        v53 = sub_160F34(3u);
        v54 = sub_175AE4();
        v55 = sub_160F68(4);
        if (v53)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSHevcParams.\n", v54, 3, v55, "AVE_USL_Drv_Prepare", 590, "pInitSettings->psaHEVC_PPS[0]");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 2344))
    {
      if (sub_160EF0(3u, 4))
      {
        v56 = sub_160F34(3u);
        v57 = sub_175AE4();
        v58 = sub_160F68(4);
        if (v56)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHHevcParams.\n", v57, 3, v58, "AVE_USL_Drv_Prepare", 591, "pInitSettings->SHHevcParams");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHHevcParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 2352))
    {
      if (sub_160EF0(3u, 4))
      {
        v59 = sub_160F34(3u);
        v60 = sub_175AE4();
        v61 = sub_160F68(4);
        if (v59)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for RPSHevcParams.\n", v60, 3, v61, "AVE_USL_Drv_Prepare", 592, "pInitSettings->RPSHevcParams");
          sub_175AE4();
          sub_160F68(4);
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
      if (sub_160EF0(3u, 4))
      {
        v34 = sub_160F34(3u);
        v35 = sub_175AE4();
        v36 = sub_160F68(4);
        v37 = *(*(v4 + 16) + 20);
        if (v34)
        {
          v38 = 597;
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d\n", v35, 3, v36, "AVE_USL_Drv_Prepare", 597, "false", *(*(v4 + 16) + 20));
LABEL_48:
          v35 = sub_175AE4();
          v39 = sub_160F68(4);
          v93 = *(*(v4 + 16) + 20);
          v92 = v38;
          v91 = v39;
LABEL_59:
          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d", v35, 3, v91, "AVE_USL_Drv_Prepare", v92, "false", v93);
          goto LABEL_100;
        }

        v93 = *(*(v4 + 16) + 20);
        v46 = 597;
LABEL_58:
        v92 = v46;
        v91 = v36;
        goto LABEL_59;
      }

LABEL_100:
      v72 = 4294966295;
      goto LABEL_101;
    }

    if (!*(v4 + 808))
    {
      if (sub_160EF0(3u, 4))
      {
        v40 = sub_160F34(3u);
        v41 = sub_175AE4();
        v42 = sub_160F68(4);
        if (v40)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSParams.\n", v41, 3, v42, "AVE_USL_Drv_Prepare", 580, "pInitSettings->SPSParams");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SPSParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 816))
    {
      if (sub_160EF0(3u, 4))
      {
        v47 = sub_160F34(3u);
        v48 = sub_175AE4();
        v49 = sub_160F68(4);
        if (v47)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSParams.\n", v48, 3, v49, "AVE_USL_Drv_Prepare", 581, "pInitSettings->PPSParams");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for PPSParams.");
      }

      goto LABEL_100;
    }

    if (!*(v4 + 824))
    {
      if (sub_160EF0(3u, 4))
      {
        v12 = sub_160F34(3u);
        v13 = sub_175AE4();
        v14 = sub_160F68(4);
        if (v12)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, Null pointer for SHParams.\n", v13, 3, v14, "AVE_USL_Drv_Prepare", 582, "pInitSettings->SHParams");
          sub_175AE4();
          sub_160F68(4);
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

    if (sub_160EF0(3u, 4))
    {
      v83 = sub_160F34(3u);
      v35 = sub_175AE4();
      v36 = sub_160F68(4);
      v84 = *(*(v4 + 16) + 20);
      if (v83)
      {
        v38 = 637;
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Prepare, codectype not recognized = %d\n", v35, 3, v36, "AVE_USL_Drv_Prepare", 637, "false", *(*(v4 + 16) + 20));
        goto LABEL_48;
      }

      v93 = *(*(v4 + 16) + 20);
      v46 = 637;
      goto LABEL_58;
    }

    goto LABEL_100;
  }

LABEL_81:
  bzero(v96, 0x1A098uLL);
  v95 = *v5;
  v67 = &unk_1A7265;
  if (v2)
  {
    LOBYTE(v67) = v2;
  }

  sub_172100(v97, 512, "%s", v62, v63, v64, v65, v66, v67);
  v68 = *(v5 + 13280);
  v69 = *(v5 + 13312);
  v100 = *(v5 + 13296);
  v101 = v69;
  v98 = *(v5 + 13264);
  v99 = v68;
  v102 = *(v5 + 13328);
  v70 = *(v5 + 13380);
  v105 = *(v5 + 13364);
  v106 = v70;
  v107 = *(v5 + 13396);
  v71 = *(v5 + 13348);
  v103 = *(v5 + 13332);
  v104 = v71;
  v96[2] = 118000000;
  v96[3] = sub_175AE4();
  memcpy(v108, (v5 + 232), sizeof(v108));
  memset(v94, 0, sizeof(v94));
  v72 = sub_E3368(*(v5 + 24), &v95, v94);
  if (v72)
  {
    if (sub_160EF0(0x28u, 4))
    {
      v73 = sub_160F34(0x28u);
      v74 = sub_175AE4();
      v75 = sub_160F68(4);
      if (v73)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare %d\n", v74, 40, v75, "AVE_USL_Drv_Prepare", 665, "ret == 0", v72);
        v74 = sub_175AE4();
        sub_160F68(4);
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
  if (sub_160EF0(0x28u, 7))
  {
    v85 = sub_160F34(0x28u);
    v86 = sub_175AE4();
    v87 = sub_160F68(7);
    v88 = *(v5 + 44);
    if (v85)
    {
      printf("%lld %d AVE %s: EXIT AVE_USL_Drv_Prepare F %d %d\n", v86, 40, v87, *(v5 + 44), v72);
      v86 = sub_175AE4();
      v87 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT AVE_USL_Drv_Prepare F %d %d", v86, 40, v87, *(v5 + 44), v72);
  }

  return v72;
}

uint64_t sub_12A644(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, unsigned int *a9, void *__dst)
{
  v10 = __chkstk_darwin();
  v155 = v11;
  v13 = v12;
  v15 = v14;
  v16 = v10;
  v172 = -1;
  bzero(v173, 0x1A0B0uLL);
  memset(v171, 0, sizeof(v171));
  if (sub_160EF0(0x28u, 7))
  {
    v17 = sub_160F34(0x28u);
    v18 = sub_175AE4();
    v19 = sub_160F68(7);
    if (v17)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Start.\n", v18, 40, v19);
      v18 = sub_175AE4();
      v19 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Start.", v18, 40, v19);
  }

  if (!v16)
  {
    if (sub_160EF0(3u, 4))
    {
      v26 = sub_160F34(3u);
      v27 = sub_175AE4();
      v28 = sub_160F68(4);
      if (v26)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.\n", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
        v27 = sub_175AE4();
        v28 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for driver data.", v27, 3, v28, "AVE_USL_Drv_Start", 711, "pDriverInstance");
    }

    goto LABEL_170;
  }

  if (!v15)
  {
    if (sub_160EF0(3u, 4))
    {
      v29 = sub_160F34(3u);
      v30 = sub_175AE4();
      v31 = sub_160F68(4);
      if (v29)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.\n", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
        v30 = sub_175AE4();
        v31 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for AppleAVEVA_InitSettings.", v30, 3, v31, "AVE_USL_Drv_Start", 712, "pInitSettings");
    }

    goto LABEL_170;
  }

  v20 = *v15;
  if (!*v15)
  {
    if (sub_160EF0(3u, 4))
    {
      v32 = sub_160F34(3u);
      v33 = sub_175AE4();
      v34 = sub_160F68(4);
      if (v32)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.\n", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
        v33 = sub_175AE4();
        v34 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for psSessionCfg.", v33, 3, v34, "AVE_USL_Drv_Start", 714, "pInitSettings->psSessionCfg");
    }

    goto LABEL_170;
  }

  if (!v15[1])
  {
    if (sub_160EF0(3u, 4))
    {
      v35 = sub_160F34(3u);
      v36 = sub_175AE4();
      v37 = sub_160F68(4);
      if (v35)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.\n", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
        v36 = sub_175AE4();
        v37 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParams.", v36, 3, v37, "AVE_USL_Drv_Start", 715, "pInitSettings->pVideoParams");
    }

    goto LABEL_170;
  }

  v21 = v15[2];
  if (!v21)
  {
    if (sub_160EF0(3u, 4))
    {
      v38 = sub_160F34(3u);
      v39 = sub_175AE4();
      v40 = sub_160F68(4);
      if (v38)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for pVideoParamsDriver.\n", v39, 3, v40, "AVE_USL_Drv_Start", 716, "pInitSettings->pVideoParamsDriver");
        v39 = sub_175AE4();
        v40 = sub_160F68(4);
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
      if (sub_160EF0(3u, 4))
      {
        v49 = sub_160F34(3u);
        v50 = sub_175AE4();
        v51 = sub_160F68(4);
        if (v49)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.\n", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
          v50 = sub_175AE4();
          v51 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for VPSHevcParams.", v50, 3, v51, "AVE_USL_Drv_Start", 730, "pInitSettings->VPSHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[289])
    {
      if (sub_160EF0(3u, 4))
      {
        v55 = sub_160F34(3u);
        v56 = sub_175AE4();
        v57 = sub_160F68(4);
        if (v55)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.\n", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
          v56 = sub_175AE4();
          v57 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSHevcParams.", v56, 3, v57, "AVE_USL_Drv_Start", 731, "pInitSettings->psaHEVC_SPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[291])
    {
      if (sub_160EF0(3u, 4))
      {
        v58 = sub_160F34(3u);
        v59 = sub_175AE4();
        v60 = sub_160F68(4);
        if (v58)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.\n", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
          v59 = sub_175AE4();
          v60 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSHevcParams.", v59, 3, v60, "AVE_USL_Drv_Start", 732, "pInitSettings->psaHEVC_PPS[0]");
      }

      goto LABEL_170;
    }

    if (!v15[293])
    {
      if (sub_160EF0(3u, 4))
      {
        v74 = sub_160F34(3u);
        v75 = sub_175AE4();
        v76 = sub_160F68(4);
        if (v74)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.\n", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
          v75 = sub_175AE4();
          v76 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHHevcParams.", v75, 3, v76, "AVE_USL_Drv_Start", 733, "pInitSettings->SHHevcParams");
      }

      goto LABEL_170;
    }

    if (!v15[294])
    {
      if (sub_160EF0(3u, 4))
      {
        v93 = sub_160F34(3u);
        v94 = sub_175AE4();
        v95 = sub_160F68(4);
        if (v93)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for RPSHevcParams.\n", v94, 3, v95, "AVE_USL_Drv_Start", 734, "pInitSettings->RPSHevcParams");
          v94 = sub_175AE4();
          v95 = sub_160F68(4);
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
      if (sub_160EF0(3u, 4))
      {
        v43 = sub_160F34(3u);
        v44 = sub_175AE4();
        v45 = sub_160F68(4);
        if (v43)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
          v44 = sub_175AE4();
          v45 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d", v44, 3, v45, "AVE_USL_Drv_Start", 738, "false", *(v15[2] + 5));
      }

      goto LABEL_170;
    }

    if (!v15[101])
    {
      if (sub_160EF0(3u, 4))
      {
        v46 = sub_160F34(3u);
        v47 = sub_175AE4();
        v48 = sub_160F68(4);
        if (v46)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.\n", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
          v47 = sub_175AE4();
          v48 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SPSParams.", v47, 3, v48, "AVE_USL_Drv_Start", 722, "pInitSettings->SPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[102])
    {
      if (sub_160EF0(3u, 4))
      {
        v52 = sub_160F34(3u);
        v53 = sub_175AE4();
        v54 = sub_160F68(4);
        if (v52)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.\n", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
          v53 = sub_175AE4();
          v54 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for PPSParams.", v53, 3, v54, "AVE_USL_Drv_Start", 723, "pInitSettings->PPSParams");
      }

      goto LABEL_170;
    }

    if (!v15[103])
    {
      if (sub_160EF0(3u, 4))
      {
        v23 = sub_160F34(3u);
        v24 = sub_175AE4();
        v25 = sub_160F68(4);
        if (v23)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.\n", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
          v24 = sub_175AE4();
          v25 = sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, Null pointer for SHParams.", v24, 3, v25, "AVE_USL_Drv_Start", 724, "pInitSettings->SHParams");
      }

LABEL_170:
      v101 = 4294966295;
      goto LABEL_171;
    }
  }

  v41 = v16 + 12800;
  v16[13261] = v13;
  memcpy(v16 + 29, v20, 0x300uLL);
  memcpy(v16 + 360, v15[1], 0x2460uLL);
  memcpy(v16 + 1524, v15[2], 0x4E0uLL);
  v42 = *(v15[2] + 5);
  v152 = v16 + 12800;
  if (v42 == 2)
  {
    __src = v16 + 29;
    memcpy(v16 + 1680, v15[288], 0x2FCCuLL);
    v61 = v15;
    v62 = 0;
    v63 = v61 + 289;
    v150 = v61;
    v64 = v61 + 291;
    v154 = v16 + 25676;
    v65 = v16;
    v153 = v16 + 41284;
    v66 = 1;
    do
    {
      v67 = v66;
      v68 = v63[v62];
      if (v68)
      {
        memcpy(&v154[7804 * v62], v68, 0x1E7CuLL);
      }

      v69 = v64[v62];
      if (v69)
      {
        memcpy(&v153[9632 * v62], v69, 0x25A0uLL);
      }

      v66 = 0;
      v62 = 1;
    }

    while ((v67 & 1) != 0);
    v15 = v150;
    v16 = v65;
    memcpy(v65 + 7569, v150[293], 0x53F0uLL);
    memcpy(v65 + 10255, v150[294], 0x5DD8uLL);
    memcpy(v65 + 125, v150 + 295, 0x758uLL);
    v41 = v152;
  }

  else
  {
    if (v42 != 1)
    {
      if (sub_160EF0(3u, 4))
      {
        v71 = sub_160F34(3u);
        v72 = sub_175AE4();
        v73 = sub_160F68(4);
        if (v71)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Start, encode type not recognized = %d\n", v72, 3, v73, "AVE_USL_Drv_Start", 785, "false", *(v15[2] + 5));
          v72 = sub_175AE4();
          v73 = sub_160F68(4);
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
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v89 = 48;
    v156 = 0u;
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

        v105 = sub_FB3F0(*(v16 + 80), *(v16 + 81), *(v16 + 82), *(v16 + 83), v111);
        goto LABEL_154;
      }

      if (v70 != 2)
      {
LABEL_155:
        v115 = sub_DF5F4(v16[3], (v89 + 1), 72736);
        if (!v115)
        {
          operator new();
        }

        v101 = v115;
        if (sub_160EF0(0xEu, 4))
        {
          v116 = sub_160F34(0xEu);
          v117 = sub_175AE4();
          v118 = sub_160F68(4);
          v119 = *v16;
          if (v116)
          {
            printf("%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d\n", v117, 14, v118, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, v101);
            v117 = sub_175AE4();
            v118 = sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to set up IPC %p %lld %d", v117, 14, v118, "AVE_USL_Drv_Start", 837, "ret == 0", v16, *v16, v101);
        }

        goto LABEL_171;
      }
    }

    else if (v70 != 3 && v70 != 4 && v70 != 5)
    {
      goto LABEL_155;
    }

    v105 = sub_1523E0();
LABEL_154:
    v89 = v105;
    goto LABEL_155;
  }

  *&v156 = 0;
  sub_E06B8(v16[3], 72736, &v156);
  sub_E1750(v16[3], v156, &v172);
  v79 = v156;
  if (!v156)
  {
    if (sub_160EF0(3u, 4))
    {
      v90 = sub_160F34(3u);
      v91 = sub_175AE4();
      v92 = sub_160F68(4);
      if (v90)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v91, 3, v92, "AVE_USL_Drv_Start", 926, "Frame");
        v91 = sub_175AE4();
        v92 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.", v91, 3, v92, "AVE_USL_Drv_Start", 926, "Frame");
    }

    goto LABEL_164;
  }

  bzero((v156 + 8), 0x11C18uLL);
  v80 = v172;
  *v79 = v172;
  *(v79 + 4) = 5;
  *(v79 + 40) = *(v16 + 11);
  *(v79 + 33048) = v15[530];
  *(v79 + 16) = v152[461] != 0;
  *(v79 + 20) = *(v152 + 924);
  *&v158 = 0;
  v156 = 0u;
  v157 = 0u;
  LODWORD(v156) = v80;
  if (sub_128458(v152[460], &v156))
  {
    if (sub_160EF0(3u, 4))
    {
      v86 = sub_160F34(3u);
      v87 = sub_175AE4();
      v88 = sub_160F68(4);
      if (v86)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v87, 3, v88, "AVE_USL_Drv_Start", 946, "res == 0");
        v87 = sub_175AE4();
        v88 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread", v87, 3, v88, "AVE_USL_Drv_Start", 946, "res == 0");
    }

LABEL_135:
    v101 = 4294966296;
    v106 = v16;
LABEL_136:
    *&v156 = v15[530];
    sub_12C9EC(v106, &v156, 0);
    goto LABEL_171;
  }

  v173[0] = *v16;
  v96 = &unk_1A7265;
  if (v155)
  {
    LOBYTE(v96) = v155;
  }

  sub_172100(v174, 512, "%s", v81, v82, v83, v84, v85, v96);
  v186 = v172;
  v97 = *(v16 + 830);
  v98 = *(v16 + 832);
  v177 = *(v16 + 831);
  v178 = v98;
  v175 = *(v16 + 829);
  v176 = v97;
  v179 = *(v16 + 3332);
  v99 = *(v16 + 13380);
  v182 = *(v16 + 13364);
  v183 = v99;
  v100 = *(v16 + 13348);
  v180 = *(v16 + 13332);
  v181 = v100;
  v184 = *(v16 + 3349);
  v173[3] = 118000000;
  v173[4] = sub_175AE4();
  memcpy(v185, __src, sizeof(v185));
  *(v79 + 33072) = sub_175AE4();
  v101 = sub_E37DC(v16[3], v173, v171);
  if (v101)
  {
    sub_12C770(v152[460]);
    if (sub_160EF0(0x28u, 4))
    {
      v102 = sub_160F34(0x28u);
      v103 = sub_175AE4();
      v104 = sub_160F68(4);
      if (v102)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to start %d\n", v103, 40, v104, "AVE_USL_Drv_Start", 973, "ret == 0", v101);
        v103 = sub_175AE4();
        v104 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to start %d", v103, 40, v104, "AVE_USL_Drv_Start", 973, "ret == 0", v101);
    }

    goto LABEL_163;
  }

  *&v158 = 0;
  v156 = 0u;
  v157 = 0u;
  v107 = sub_12C7B4(v152[459], &v156, 120000000);
  if (v156 != v172)
  {
    if (sub_160EF0(3u, 4))
    {
      v112 = sub_160F34(3u);
      v113 = sub_175AE4();
      v114 = sub_160F68(4);
      if (v112)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.\n", v113, 3, v114, "AVE_USL_Drv_Start", 984, "status.counter == counter");
        v113 = sub_175AE4();
        v114 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter != counter.", v113, 3, v114, "AVE_USL_Drv_Start", 984, "status.counter == counter");
    }

    goto LABEL_135;
  }

  if (v158)
  {
    if (sub_160EF0(3u, 4))
    {
      v108 = sub_160F34(3u);
      v109 = sub_175AE4();
      v110 = sub_160F68(4);
      if (v108)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.\n", v109, 3, v110, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v158);
        v109 = sub_175AE4();
        v110 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: errorCode = 0x%08x.", v109, 3, v110, "AVE_USL_Drv_Start", 985, "status.errorCode == 0", v158);
    }

    goto LABEL_135;
  }

  if (v107)
  {
    if (sub_160EF0(3u, 4))
    {
      v120 = sub_160F34(3u);
      v121 = sub_175AE4();
      v122 = sub_160F68(4);
      if (v120)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v121, 3, v122, "AVE_USL_Drv_Start", 986, "res == 0");
        v121 = sub_175AE4();
        v122 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread", v121, 3, v122, "AVE_USL_Drv_Start", 986, "res == 0");
    }

    goto LABEL_135;
  }

  v127 = v171[2];
  v128 = DWORD1(v171[2]);
  *(v152 + 925) = v171[2];
  *(v152 + 926) = v128;
  v129 = *a9;
  if (*a9)
  {
    if (v129 != -1 && v129 > v128)
    {
      v128 = *a9;
    }
  }

  else
  {
    v128 = v127;
  }

  *a9 = v128;
  if (sub_12C8CC(v152[460], v128))
  {
    if (sub_160EF0(3u, 4))
    {
      v130 = sub_160F34(3u);
      v131 = sub_175AE4();
      v132 = sub_160F68(4);
      v133 = *a9;
      if (v130)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d\n", v131, 3, v132, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
        v131 = sub_175AE4();
        v132 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverInput connection size fail %d", v131, 3, v132, "AVE_USL_Drv_Start", 1010, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (sub_12C8CC(v152[459], *a9))
  {
    if (sub_160EF0(3u, 4))
    {
      v134 = sub_160F34(3u);
      v135 = sub_175AE4();
      v136 = sub_160F68(4);
      v137 = *a9;
      if (v134)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d\n", v135, 3, v136, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
        v135 = sub_175AE4();
        v136 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Set FrameReceiverOutput connection size fail %d", v135, 3, v136, "AVE_USL_Drv_Start", 1012, "ret == 0", *a9);
    }

    goto LABEL_135;
  }

  if (__dst)
  {
    memcpy(__dst, &v171[2] + 8, 0x128uLL);
  }

  sub_128908(v16, __src, (v16 + 6), *a9);
  if ((*(*v15 + 666) & 1) != 0 && !v152[466])
  {
    v101 = sub_159678(*(v16 + 17), *(v16 + 16), v152 + 466);
    if (v101)
    {
      if (sub_160EF0(0x28u, 4))
      {
        v142 = sub_160F34(0x28u);
        v143 = sub_175AE4();
        v144 = sub_160F68(4);
        v146 = *(v16 + 16);
        v145 = *(v16 + 17);
        v147 = *v16;
        if (v142)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d\n", v143, 40, v144, "AVE_USL_Drv_Start", 1036, "ret == 0", v145, v146, *v16, v101);
          v148 = sub_175AE4();
          v149 = sub_160F68(4);
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v148, 40, v149, "AVE_USL_Drv_Start", 1036, "ret == 0", *(v16 + 17), *(v16 + 16), *v16, v101);
        }

        else
        {
          syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create buffer pool %d %d %llu %d", v143, 40, v144, "AVE_USL_Drv_Start", 1036, "ret == 0", v145, v146, *v16, v101);
        }
      }

      goto LABEL_163;
    }
  }

  v101 = sub_13E648(v16 + 6, *v16, v16 + 16);
  if (v101)
  {
    if (sub_160EF0(0x28u, 4))
    {
      v138 = sub_160F34(0x28u);
      v139 = sub_175AE4();
      v140 = sub_160F68(4);
      v141 = *v16;
      if (v138)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v139, 40, v140, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, v101);
        v139 = sub_175AE4();
        v140 = sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d", v139, 40, v140, "AVE_USL_Drv_Start", 1043, "ret == 0", *v16, v101);
    }

LABEL_163:
    v106 = v16;
    if (v101 != -1003)
    {
      goto LABEL_136;
    }

LABEL_164:
    v101 = 4294966293;
    goto LABEL_171;
  }

  *(v16 + 40) = 1;
LABEL_171:
  if (sub_160EF0(0x28u, 7))
  {
    v123 = sub_160F34(0x28u);
    v124 = sub_175AE4();
    v125 = sub_160F68(7);
    if (v123)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.\n", v124, 40, v125, v101);
      v124 = sub_175AE4();
      v125 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverInit err %d.", v124, 40, v125, v101);
  }

  return v101;
}

void sub_12C700(uint64_t a1)
{
  pthread_mutex_init(a1, 0);
  pthread_cond_init((a1 + 64), 0);
  pthread_cond_init((a1 + 112), 0);
  *(a1 + 192) = vdupq_n_s64(0x80uLL);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  operator new[]();
}

uint64_t sub_12C770(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 216);
  if (v2 >= 1 && v2 > *(a1 + 208))
  {
    *(a1 + 216) = v2 - 1;
  }

  pthread_mutex_unlock(a1);
  return 0;
}

uint64_t sub_12C7B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_12C8CC(uint64_t a1, unsigned int a2)
{
  pthread_mutex_lock(a1);
  if (*(a1 + 192) >= a2)
  {
    v13 = 0;
    *(a1 + 200) = a2;
  }

  else
  {
    if (sub_160EF0(0x2Au, 4))
    {
      v4 = sub_160F34(0x2Au);
      v5 = sub_175AE4();
      v6 = sub_160F68(4);
      v8 = *(a1 + 208);
      v7 = *(a1 + 216);
      v9 = v7 <= v8;
      v10 = v7 - v8;
      if (v9)
      {
        v10 = 0;
      }

      if (v4)
      {
        printf("%lld %d AVE %s: configure connection size fail %lld %lld %d %lld\n", v5, 42, v6, *(a1 + 192), *(a1 + 200), a2, v10);
        v5 = sub_175AE4();
        sub_160F68(4);
        v11 = *(a1 + 192);
        v12 = *(a1 + 200);
        *(a1 + 216);
        *(a1 + 208);
      }

      syslog(3, "%lld %d AVE %s: configure connection size fail %lld %lld %d %lld", v5);
    }

    v13 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock(a1);
  return v13;
}

uint64_t sub_12C9EC(uint64_t a1, uint64_t *a2, int a3)
{
  v50 = -1;
  if (sub_160EF0(0x28u, 7))
  {
    v6 = sub_160F34(0x28u);
    v7 = sub_175AE4();
    v8 = sub_160F68(7);
    if (v6)
    {
      printf("%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.\n", v7, 40, v8);
      v9 = sub_175AE4();
      v43 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", v9, 40, v43);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER AVE_USL_Drv_Stop.", v7, 40, v8);
    }
  }

  if (a1)
  {
    v49 = *a2;
    if (sub_12D170(a1, &v49) == -1004)
    {
      v10 = 4294966292;
    }

    else
    {
      *v47 = 0;
      sub_E06B8(*(a1 + 24), 72736, v47);
      sub_E1750(*(a1 + 24), *v47, &v50);
      v15 = *v47;
      if (!*v47)
      {
        if (sub_160EF0(3u, 4))
        {
          v20 = sub_160F34(3u);
          v21 = sub_175AE4();
          v22 = sub_160F68(4);
          if (v20)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v21, 3, v22, "AVE_USL_Drv_Stop", 1103, "Frame");
            v23 = sub_175AE4();
            v45 = sub_160F68(4);
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

      bzero((*v47 + 8), 0x11C18uLL);
      v16 = v50;
      *v15 = v50;
      *(v15 + 4) = 6;
      *(v15 + 40) = *(a1 + 44);
      *(v15 + 33048) = *a2;
      *(v15 + 16) = *(a1 + 106088) != 0;
      *(v15 + 20) = *(a1 + 106096);
      memset(v47, 0, sizeof(v47));
      *v47 = v16;
      if (sub_128458(*(a1 + 106080), v47))
      {
        if (sub_160EF0(3u, 4))
        {
          v17 = sub_160F34(3u);
          v18 = sub_175AE4();
          v19 = sub_160F68(4);
          if (v17)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v18, 3, v19, "AVE_USL_Drv_Stop", 1123, "res == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }
      }

      else
      {
        *&v47[24] = 0u;
        *&v47[8] = 0u;
        memset(v46, 0, sizeof(v46));
        *v47 = *a1;
        v48 = v50;
        *&v47[24] = 118000000;
        *&v47[32] = sub_175AE4();
        v24 = sub_E3C60(*(a1 + 24), v47, v46);
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
          if (sub_160EF0(0x28u, 4))
          {
            v27 = sub_160F34(0x28u);
            v28 = sub_175AE4();
            v29 = sub_160F68(4);
            if (v27)
            {
              printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v28, 40, v29, "AVE_USL_Drv_Stop", 1140, "ret == 0", v10);
              v28 = sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | fail to process %d", v28);
          }

          goto LABEL_32;
        }

        memset(v47, 0, sizeof(v47));
        v36 = sub_12C7B4(*(a1 + 106072), v47, 120000000);
        if (*v47 == v50)
        {
          if (!v36)
          {
            v10 = 0;
            goto LABEL_32;
          }

          if (sub_160EF0(3u, 4))
          {
            v37 = sub_160F34(3u);
            v38 = sub_175AE4();
            v39 = sub_160F68(4);
            if (v37)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v38, 3, v39, "AVE_USL_Drv_Stop", 1152, "res == 0");
              sub_175AE4();
              sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread");
          }
        }

        else if (sub_160EF0(3u, 4))
        {
          v40 = sub_160F34(3u);
          v41 = sub_175AE4();
          v42 = sub_160F68(4);
          if (v40)
          {
            printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.\n", v41, 3, v42, "AVE_USL_Drv_Stop", 1151, "status.counter == counter");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder ERROR: status.counter != counter.");
        }
      }

      v10 = 4294966296;
    }

LABEL_32:
    if (a3)
    {
      sub_129604(a1);
    }

    *(a1 + 40) = 0;
    goto LABEL_35;
  }

  if (sub_160EF0(3u, 4))
  {
    v11 = sub_160F34(3u);
    v12 = sub_175AE4();
    v13 = sub_160F68(4);
    if (v11)
    {
      printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.\n", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
      v14 = sub_175AE4();
      v44 = sub_160F68(4);
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v14, 3, v44, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }

    else
    {
      syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Stop, Null pointer for driver data.", v12, 3, v13, "AVE_USL_Drv_Stop", 1080, "pDriverInstance");
    }
  }

  v10 = 4294966295;
LABEL_35:
  if (sub_160EF0(0x28u, 7))
  {
    v30 = sub_160F34(0x28u);
    v31 = sub_175AE4();
    v32 = sub_160F68(7);
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
      v31 = sub_175AE4();
      v32 = sub_160F68(7);
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

uint64_t sub_12D170(uint64_t a1, void *a2)
{
  v55 = -1;
  if (sub_160EF0(0x28u, 7))
  {
    v4 = sub_160F34(0x28u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.\n", v5, 40, v6);
      v7 = sub_175AE4();
      v48 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", v7, 40, v48);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeCompleteFrames.", v5, 40, v6);
    }
  }

  if (a1)
  {
    if (*(a1 + 40) != 1)
    {
      v17 = 4294966292;
      goto LABEL_32;
    }

    *v53 = 0;
    sub_E06B8(*(a1 + 24), 72736, v53);
    sub_E1750(*(a1 + 24), *v53, &v55);
    v8 = *v53;
    if (*v53)
    {
      bzero((*v53 + 8), 0x11C18uLL);
      v9 = v55;
      *v8 = v55;
      *(v8 + 4) = 8;
      *(v8 + 40) = *(a1 + 44);
      *(v8 + 33048) = *a2;
      *(v8 + 16) = *(a1 + 106088) != 0;
      *(v8 + 20) = *(a1 + 106096);
      memset(v53, 0, sizeof(v53));
      *v53 = v9;
      if (sub_128458(*(a1 + 106080), v53))
      {
        if (sub_160EF0(3u, 4))
        {
          v10 = sub_160F34(3u);
          v11 = sub_175AE4();
          v12 = sub_160F68(4);
          if (v10)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v11, 3, v12, "AVE_USL_Drv_Complete", 1215, "res == 0");
            sub_175AE4();
            sub_160F68(4);
          }

          syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
        }

LABEL_29:
        v17 = 4294966296;
        goto LABEL_32;
      }

      *&v53[24] = 0u;
      *&v53[8] = 0u;
      v51 = 0u;
      v52 = 0u;
      *v53 = *a1;
      v54 = v55;
      *&v53[24] = 118000000;
      *&v53[32] = sub_175AE4();
      v22 = sub_E4548(*(a1 + 24), v53, &v51);
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
            if (v37 == v55)
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
        if (v55)
        {
          v37 = 0;
LABEL_50:
          if (sub_160EF0(3u, 4))
          {
            v42 = sub_160F34(3u);
            v43 = sub_175AE4();
            v44 = sub_160F68(4);
            if (v42)
            {
              printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).\n", v43, 3, v44, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v37, v55);
              v43 = sub_175AE4();
              v44 = sub_160F68(4);
            }

            syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: status.counter (%d) != counter (%d).", v43, 3, v44, "AVE_USL_Drv_Complete", 1243, "status.counter == counter", v37, v55, v51, v52);
          }

          goto LABEL_29;
        }

        if (sub_160EF0(3u, 4))
        {
          v45 = sub_160F34(3u);
          v46 = sub_175AE4();
          v47 = sub_160F68(4);
          if (v45)
          {
            printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for packet from FrameReceiver thread\n", v46, 3, v47, "AVE_USL_Drv_Complete", 1244, "res == 0");
            sub_175AE4();
            sub_160F68(4);
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
      if (sub_160EF0(0x28u, 4))
      {
        v25 = sub_160F34(0x28u);
        v26 = sub_175AE4();
        v27 = sub_160F68(4);
        if (v25)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to complete %d\n", v26, 40, v27, "AVE_USL_Drv_Complete", 1232, "ret == 0", v17);
          v26 = sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | fail to complete %d", v26);
      }
    }

    else
    {
      if (sub_160EF0(3u, 4))
      {
        v18 = sub_160F34(3u);
        v19 = sub_175AE4();
        v20 = sub_160F68(4);
        if (v18)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Frame = NULL.\n", v19, 3, v20, "AVE_USL_Drv_Complete", 1195, "Frame");
          v21 = sub_175AE4();
          v50 = sub_160F68(4);
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
    if (sub_160EF0(3u, 4))
    {
      v13 = sub_160F34(3u);
      v14 = sub_175AE4();
      v15 = sub_160F68(4);
      if (v13)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: H264VideoEncoderVA_DriverEncodeCompleteFrames, Null pointer for driver data.\n", v14, 3, v15, "AVE_USL_Drv_Complete", 1183, "pDriverInstance");
        v16 = sub_175AE4();
        v49 = sub_160F68(4);
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
  if (sub_160EF0(0x28u, 7))
  {
    v28 = sub_160F34(0x28u);
    v29 = sub_175AE4();
    v30 = sub_160F68(7);
    v31 = *(a1 + 44);
    if (v28)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d\n", v29, 40, v30, *(a1 + 44), v17);
      v29 = sub_175AE4();
      v30 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeCompleteFrames F %d %d", v29, 40, v30, *(a1 + 44), v17);
  }

  return v17;
}

uint64_t sub_12D95C(void *a1, uint64_t a2)
{
  v147[0] = -1;
  pixelBufferOut = 0;
  if (sub_160EF0(0x28u, 7))
  {
    v4 = sub_160F34(0x28u);
    v5 = sub_175AE4();
    v6 = sub_160F68(7);
    if (v4)
    {
      printf("%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame\n", v5, 40, v6);
      v7 = sub_175AE4();
      v129 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", v7, 40, v129);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ENTER H264VideoEncoderVA_DriverEncodeFrame", v5, 40, v6);
    }
  }

  if (!a1)
  {
    if (sub_160EF0(3u, 4))
    {
      v14 = sub_160F34(3u);
      v15 = sub_175AE4();
      v16 = sub_160F68(4);
      if (v14)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.\n", v15, 3, v16, "AVE_USL_Drv_Process", 1268, "pDriverInstance");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for driver data.");
    }

    goto LABEL_58;
  }

  if (!a2)
  {
    if (sub_160EF0(3u, 4))
    {
      v17 = sub_160F34(3u);
      v18 = sub_175AE4();
      v19 = sub_160F68(4);
      if (v17)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.\n", v18, 3, v19, "AVE_USL_Drv_Process", 1269, "pSettings");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, Null pointer for pSettings.");
    }

    goto LABEL_58;
  }

  if ((a1[5] & 1) == 0)
  {
    if (sub_160EF0(3u, 4))
    {
      v20 = sub_160F34(3u);
      v21 = sub_175AE4();
      v22 = sub_160F68(4);
      if (v20)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: H264VideoEncoderVA_DriverEncodeFrame, encoder has not been init-ed.\n", v21, 3, v22, "AVE_USL_Drv_Process", 1270, "pDriverInstance->EncoderInited == true");
        v23 = sub_175AE4();
        v131 = sub_160F68(4);
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
    if (sub_160EF0(3u, 4))
    {
      v24 = sub_160F34(3u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      if (v24)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBuffer == NULL\n", v25, 3, v26, "AVE_USL_Drv_Process", 1271, "pSettings->CVImageBuffer");
        sub_175AE4();
        sub_160F68(4);
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
    if (sub_160EF0(3u, 4))
    {
      v28 = sub_160F34(3u);
      v29 = sub_175AE4();
      v30 = sub_160F68(4);
      if (v28)
      {
        printf("%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL\n", v29, 3, v30, "AVE_USL_Drv_Process", 1276, "pSettings->CVImageBufferOutput");
        sub_175AE4();
        sub_160F68(4);
      }

      syslog(3, "%lld %d AVE %s: %s:%d %s | H264VideoEncoder Error: pSettings->CVImageBufferOutput == NULL");
    }

LABEL_58:
    v27 = 4294966295;
    goto LABEL_59;
  }

  if (sub_160EF0(0x28u, 7))
  {
    v9 = sub_160F34(0x28u);
    v10 = sub_175AE4();
    v11 = sub_160F68(7);
    v12 = *(a2 + 24);
    if (v9)
    {
      printf("%lld %d AVE %s: pSettings->CVImageBufferOutput = %p\n", v10, 40, v11, v12);
      v13 = sub_175AE4();
      v130 = sub_160F68(7);
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v13, 40, v130, *(a2 + 24));
    }

    else
    {
      syslog(3, "%lld %d AVE %s: pSettings->CVImageBufferOutput = %p", v10, 40, v11, v12);
    }
  }

LABEL_36:
  *v144 = 0;
  sub_E06B8(a1[3], 72736, v144);
  sub_E1750(a1[3], *v144, v147);
  v31 = *v144;
  if (*v144)
  {
    v32 = a1 + 13260;
    bzero((*v144 + 8), 0x11C18uLL);
    *v31 = v147[0];
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
        if (sub_160EF0(0x28u, 7))
        {
          v48 = sub_160F34(0x28u);
          v49 = sub_175AE4();
          v50 = sub_160F68(7);
          if (v48)
          {
            printf("%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d\n", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
            v49 = sub_175AE4();
            v50 = sub_160F68(7);
          }

          syslog(3, "%lld %d AVE %s: %s: sSIDDataSet.iInputData = %d", v49, 40, v50, "AVE_USL_Drv_Process", *(v31 + 2508));
        }

        v56 = *(a2 + 32);
        *(v31 + 2576) = v56;
        if (v56)
        {
          v57 = CVPixelBufferGetIOSurface(v56);
          *(v31 + 2536) = IOSurfaceGetID(v57);
          if (sub_160EF0(0x28u, 7))
          {
            v58 = sub_160F34(0x28u);
            v59 = sub_175AE4();
            v60 = sub_160F68(7);
            if (v58)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMStats = %d\n", v59, 40, v60, "AVE_USL_Drv_Process", *(v31 + 2536));
              v59 = sub_175AE4();
              v60 = sub_160F68(7);
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
            if (sub_160EF0(0x28u, 7))
            {
              v67 = sub_160F34(0x28u);
              v68 = sub_175AE4();
              v69 = sub_160F68(7);
              v70 = *(v62 + 4 * v61);
              if (v67)
              {
                printf("%lld %d AVE %s: %s: sSIDDataSet.iaGGMRef[%d] = %d\n", v68, 40, v69, "AVE_USL_Drv_Process", v61, v70);
                v71 = sub_175AE4();
                v72 = sub_160F68(7);
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
          if (sub_160EF0(0x28u, 7))
          {
            v75 = sub_160F34(0x28u);
            v76 = sub_175AE4();
            v77 = sub_160F68(7);
            if (v75)
            {
              printf("%lld %d AVE %s: %s: sSIDDataSet.iGGMOutput = %d\n", v76, 40, v77, "AVE_USL_Drv_Process", *(v31 + 2540));
              v76 = sub_175AE4();
              v77 = sub_160F68(7);
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
            if (sub_160EF0(0x28u, 4))
            {
              v111 = sub_160F34(0x28u);
              v112 = sub_175AE4();
              v113 = sub_160F68(4);
              if (v111)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to get VCP %p\n", v112, 40, v113, "AVE_USL_Drv_Process", 1413, "pDriverInstance->pcVCP != __null", a1);
                v112 = sub_175AE4();
                sub_160F68(4);
              }

              syslog(3, "%lld %d AVE %s: %s:%d %s | fail to get VCP %p", v112);
            }

            v27 = 4294966281;
            goto LABEL_142;
          }

          Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
          if (!Mutable)
          {
            if (sub_160EF0(0x28u, 4))
            {
              v117 = sub_160F34(0x28u);
              v118 = sub_175AE4();
              v119 = sub_160F68(4);
              if (v117)
              {
                printf("%lld %d AVE %s: %s:%d %s | fail to create CFArray\n", v118, 40, v119, "AVE_USL_Drv_Process", 1417, "refInfo != __null");
                v120 = sub_175AE4();
                v135 = sub_160F68(4);
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
          sub_170570((v31 + 4788), *(v31 + 4776), Mutable);
          sub_D8AA4(v32[4], *(a2 + 64), v88);
          CFRelease(v88);
          v86 = *(a2 + 64);
        }

        sub_16F3AC(v86, (v31 + 3184));
      }
    }

    sub_12897C(a1, v85, v31, (a1 + 6));
    v89 = v32[6];
    if (v89)
    {
      v90 = CVPixelBufferPoolCreatePixelBuffer(0, v89, &pixelBufferOut);
      if (v90)
      {
        v27 = v90;
        if (!sub_160EF0(0x28u, 4))
        {
          goto LABEL_142;
        }

        v91 = sub_160F34(0x28u);
        v92 = sub_175AE4();
        v93 = sub_160F68(4);
        v94 = v32[6];
        if (v91)
        {
          printf("%lld %d AVE %s: %s:%d %s | failed to create CVPixelBuf %p %d\n", v92, 40, v93, "AVE_USL_Drv_Process", 1440, "ret == 0", v32[6], v27);
          v92 = sub_175AE4();
          v93 = sub_160F68(4);
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
        if (sub_160EF0(0x28u, 4))
        {
          v108 = sub_160F34(0x28u);
          v109 = sub_175AE4();
          v110 = sub_160F68(4);
          if (v108)
          {
            printf("%lld %d AVE %s: %s:%d %s | failed to create IOSurface %p %d\n", v109, 40, v110, "AVE_USL_Drv_Process", 1444, "pIOSurface != __null", pixelBufferOut, 0);
            v109 = sub_175AE4();
            v110 = sub_160F68(4);
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

    v98 = sub_13E990(a1 + 12, *a1, (a1 + 16), a1 + 17, ID);
    if (v98)
    {
      v27 = v98;
      if (!sub_160EF0(0x28u, 4))
      {
        goto LABEL_142;
      }

      v99 = sub_160F34(0x28u);
      v100 = sub_175AE4();
      v101 = sub_160F68(4);
      v102 = *a1;
      if (v99)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to create surfaces %lld %d\n", v100, 40, v101, "AVE_USL_Drv_Process", 1454, "ret == 0", *a1, *(v31 + 40));
        v100 = sub_175AE4();
        v101 = sub_160F68(4);
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
    v104 = sub_12EE74(a1, v31);
    if (v104)
    {
      v27 = v104;
      if (!sub_160EF0(0x28u, 4))
      {
        goto LABEL_142;
      }

      v105 = sub_160F34(0x28u);
      v100 = sub_175AE4();
      v106 = sub_160F68(4);
      v107 = *a1;
      if (v105)
      {
        printf("%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d\n", v100, 40, v106, "AVE_USL_Drv_Process", 1462, "ret == 0", *a1, *(v31 + 40));
        v100 = sub_175AE4();
        v106 = sub_160F68(4);
      }

      v140 = *a1;
      v142 = *(v31 + 40);
      v138 = 1462;
      v134 = v106;
      v103 = "%lld %d AVE %s: %s:%d %s | fail to prepare MB input control %lld %d";
      goto LABEL_129;
    }

    sub_12F0B4(a1, v31);
    sub_13E888(a1 + 17, (v31 + 2500));
    memset(v144, 0, sizeof(v144));
    *v144 = v147[0];
    *&v144[8] = *(v31 + 4560);
    *&v144[24] = *(v31 + 4576);
    if (sub_128458(*v32, v144))
    {
      if (sub_160EF0(3u, 4))
      {
        v114 = sub_160F34(3u);
        v115 = sub_175AE4();
        v116 = sub_160F68(4);
        if (v114)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread\n", v115, 3, v116, "AVE_USL_Drv_Process", 1482, "res == 0");
          sub_175AE4();
          sub_160F68(4);
        }

        syslog(3, "%lld %d AVE %s: %s:%d %s | AVE ERROR: Timed Out waiting for space in Connection to FrameReceiver thread");
      }

LABEL_141:
      v27 = 4294966296;
      goto LABEL_142;
    }

    *&v144[24] = 0u;
    *&v144[8] = 0u;
    memset(v143, 0, sizeof(v143));
    *v144 = *a1;
    v145 = v147[0];
    *&v144[16] = *(v31 + 40);
    *&v144[24] = 58000000;
    *&v144[32] = sub_175AE4();
    *(v31 + 33072) = sub_175AE4();
    v121 = sub_E40D4(a1[3], v144, v143);
    if (v121)
    {
      v27 = v121;
      sub_12C770(*v32);
      if (sub_160EF0(0x28u, 4))
      {
        v122 = sub_160F34(0x28u);
        v92 = sub_175AE4();
        v123 = sub_160F68(4);
        if (v122)
        {
          printf("%lld %d AVE %s: %s:%d %s | fail to process %d\n", v92, 40, v123, "AVE_USL_Drv_Process", 1503, "ret == 0", v27);
          v92 = sub_175AE4();
          v139 = v27;
          v137 = 1503;
          v133 = sub_160F68(4);
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
      *v144 = sub_175AE4();
      v27 = sub_12D170(a1, v144);
      if (v27 && sub_160EF0(3u, 4))
      {
        v125 = sub_160F34(3u);
        v126 = sub_175AE4();
        v127 = sub_160F68(4);
        if (v125)
        {
          printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: AVE_USL_Drv_Complete call FAILED.\n", v126, 3, v127, "AVE_USL_Drv_Process", 1535, "ret == 0");
          v128 = sub_175AE4();
          v136 = sub_160F68(4);
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
    if (sub_160EF0(3u, 4))
    {
      v42 = sub_160F34(3u);
      v43 = sub_175AE4();
      v44 = sub_160F68(4);
      if (v42)
      {
        printf("%lld %d AVE %s: %s:%d %s | AVE ERROR: info = NULL.\n", v43, 3, v44, "AVE_USL_Drv_Process", 1293, "Frame");
        v45 = sub_175AE4();
        v132 = sub_160F68(4);
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
  sub_13ED4C((a1 + 17));
  if (sub_160EF0(0x28u, 7))
  {
    v51 = sub_160F34(0x28u);
    v52 = sub_175AE4();
    v53 = sub_160F68(7);
    v54 = (*(a1 + 11) - 1);
    if (v51)
    {
      printf("%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d\n", v52, 40, v53, *(a1 + 11) - 1, v27);
      v52 = sub_175AE4();
      v53 = sub_160F68(7);
    }

    syslog(3, "%lld %d AVE %s: EXIT H264VideoEncoderVA_DriverEncodeFrame frame number %d. %d", v52, 40, v53, *(a1 + 11) - 1, v27);
  }

  return v27;
}

uint64_t sub_12EE74(uint64_t a1, uint64_t a2)
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
      v6 = sub_132380(result, 0);
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
        if (sub_160EF0(0x28u, 5))
        {
          v20 = sub_160F34(0x28u);
          v21 = sub_175AE4();
          v22 = sub_160F68(5);
          v23 = *(a2 + 4752);
          if (v20)
          {
            printf("%lld %d AVE %s: UserQpMapSize (%d) is smaller than required (%d), copying only received data\n", v21, 40, v22, *(a2 + 4752), v12);
            v21 = sub_175AE4();
            v22 = sub_160F68(5);
          }

          syslog(3, "%lld %d AVE %s: UserQpMapSize (%d) is smaller than required (%d), copying only received data", v21, 40, v22, *(a2 + 4752), v12);
        }

        v12 = *(a2 + 4752);
      }

      memcpy(v6, v11, v12);
      return 0;
    }

    if (v5 == 1)
    {
      v6 = sub_132380(result, 0);
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

    if (sub_160EF0(0x28u, 4))
    {
      v24 = sub_160F34(0x28u);
      v25 = sub_175AE4();
      v26 = sub_160F68(4);
      v27 = *(a1 + 12212);
      if (v24)
      {
        printf("%lld %d AVE %s: wrong encode type %d\n", v25, 40, v26, v27);
        v28 = sub_175AE4();
        v29 = sub_160F68(4);
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

void sub_12F0B4(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 102400;
  if (!*(a1 + 106096))
  {
    return;
  }

  *(a2 + 24) = 2;
  v5 = *(a1 + 108);
  v6 = sub_132380(*(a1 + 144), 0);
  v7 = v6;
  v8 = *(a2 + 23712);
  if (v8)
  {
    *(a2 + 16) = 1;
LABEL_6:

    memcpy(v6, v8, v5);
    return;
  }

  v9 = (a2 + 23446);
  sub_115EF8(*(v2 + 3664), (a2 + 23446));
  if (*(a1 + 44))
  {
    *(a2 + 4724) = 0;
    memcpy(v7, (a2 + 23446), 0x108uLL);
    v6 = (v7 + 264);
    v8 = (a2 + 6132);
    goto LABEL_6;
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v10 = sub_160F34(0xD8u);
    v11 = sub_175AE4();
    v12 = sub_160F68(6);
    if (v10)
    {
      printf("%lld %d AVE %s: ------ Sequence RC Info ------\n", v11, 216, v12);
      v13 = sub_175AE4();
      v81 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s: ------ Sequence RC Info ------", v13, 216, v81);
    }

    else
    {
      syslog(3, "%lld %d AVE %s: ------ Sequence RC Info ------", v11, 216, v12);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v14 = sub_160F34(0xD8u);
    v15 = sub_175AE4();
    v16 = sub_160F68(6);
    v17 = *v9;
    if (v14)
    {
      printf("%lld %d AVE %s:  total_scenes %u\n", v15, 216, v16, v17);
      v18 = sub_175AE4();
      v82 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v18, 216, v82, *v9);
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  total_scenes %u", v15, 216, v16, v17);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v19 = sub_160F34(0xD8u);
    v20 = sub_175AE4();
    v21 = sub_160F68(6);
    v22 = *(a2 + 23450);
    if (v19)
    {
      printf("%lld %d AVE %s:  cnt_All %u\n", v20, 216, v21, v22);
      v23 = sub_175AE4();
      v83 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v23, 216, v83, *(a2 + 23450));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_All %u", v20, 216, v21, v22);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v24 = sub_160F34(0xD8u);
    v25 = sub_175AE4();
    v26 = sub_160F68(6);
    v27 = *(a2 + 23454);
    if (v24)
    {
      printf("%lld %d AVE %s:  bits_All %llu\n", v25, 216, v26, v27);
      v28 = sub_175AE4();
      v84 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v28, 216, v84, *(a2 + 23454));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_All %llu", v25, 216, v26, v27);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v29 = sub_160F34(0xD8u);
    v30 = sub_175AE4();
    v31 = sub_160F68(6);
    v32 = *(a2 + 23474);
    if (v29)
    {
      printf("%lld %d AVE %s:  cnt_NORMAL %u\n", v30, 216, v31, v32);
      v33 = sub_175AE4();
      v85 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v33, 216, v85, *(a2 + 23474));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_NORMAL %u", v30, 216, v31, v32);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v34 = sub_160F34(0xD8u);
    v35 = sub_175AE4();
    v36 = sub_160F68(6);
    v37 = *(a2 + 23478);
    if (v34)
    {
      printf("%lld %d AVE %s:  bits_NORMAL %llu\n", v35, 216, v36, v37);
      v38 = sub_175AE4();
      v86 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v38, 216, v86, *(a2 + 23478));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_NORMAL %llu", v35, 216, v36, v37);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v39 = sub_160F34(0xD8u);
    v40 = sub_175AE4();
    v41 = sub_160F68(6);
    v42 = *(a2 + 23486);
    if (v39)
    {
      printf("%lld %d AVE %s:  cnt_MIN %u\n", v40, 216, v41, v42);
      v43 = sub_175AE4();
      v87 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v43, 216, v87, *(a2 + 23486));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MIN %u", v40, 216, v41, v42);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v44 = sub_160F34(0xD8u);
    v45 = sub_175AE4();
    v46 = sub_160F68(6);
    v47 = *(a2 + 23490);
    if (v44)
    {
      printf("%lld %d AVE %s:  bits_MIN %llu\n", v45, 216, v46, v47);
      v48 = sub_175AE4();
      v88 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v48, 216, v88, *(a2 + 23490));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MIN %llu", v45, 216, v46, v47);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v49 = sub_160F34(0xD8u);
    v50 = sub_175AE4();
    v51 = sub_160F68(6);
    v52 = *(a2 + 23498);
    if (v49)
    {
      printf("%lld %d AVE %s:  cnt_MAX %u\n", v50, 216, v51, v52);
      v53 = sub_175AE4();
      v89 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v53, 216, v89, *(a2 + 23498));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_MAX %u", v50, 216, v51, v52);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v54 = sub_160F34(0xD8u);
    v55 = sub_175AE4();
    v56 = sub_160F68(6);
    v57 = *(a2 + 23502);
    if (v54)
    {
      printf("%lld %d AVE %s:  bits_MAX %llu\n", v55, 216, v56, v57);
      v58 = sub_175AE4();
      v90 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v58, 216, v90, *(a2 + 23502));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  bits_MAX %llu", v55, 216, v56, v57);
    }
  }

  if (sub_160EF0(0xD8u, 6))
  {
    v59 = sub_160F34(0xD8u);
    v60 = sub_175AE4();
    v61 = sub_160F68(6);
    v62 = *(a2 + 23510);
    if (v59)
    {
      printf("%lld %d AVE %s:  cnt_BLANK %u\n", v60, 216, v61, v62);
      v63 = sub_175AE4();
      v91 = sub_160F68(6);
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v63, 216, v91, *(a2 + 23510));
    }

    else
    {
      syslog(3, "%lld %d AVE %s:  cnt_BLANK %u", v60, 216, v61, v62);
    }
  }

  sub_115EF8(*(v2 + 3664), (a2 + 23446));
  memcpy(v7, (a2 + 23446), 0x108uLL);
  memcpy(v7 + 264, (a2 + 6132), v5);
  for (i = 0; i != 11; ++i)
  {
    if (sub_160EF0(0xD8u, 6))
    {
      v65 = (v7 + 1492);
      v66 = sub_160F34(0xD8u);
      v67 = sub_175AE4();
      v68 = sub_160F68(6);
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
        v78 = sub_175AE4();
        v79 = sub_160F68(6);
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