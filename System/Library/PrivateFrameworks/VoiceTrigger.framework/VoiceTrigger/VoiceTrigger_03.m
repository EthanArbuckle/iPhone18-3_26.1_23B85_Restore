float *IntNovDetect::updateBestScore(float *this, const float *a2, float *a3, float *a4, const unsigned int *a5, const unsigned int *a6)
{
  v6 = *a2;
  if (*a2 > this[740] && *a6 > *a5)
  {
    *(this + 734) = *a6 - *a5;
    this[735] = *a3;
    this[736] = *a4;
    *(this + 740) = v6;
  }

  return this;
}

void initndlib(void)
{
  if ((initndlib(void)::bNDLibInitialized & 1) == 0)
  {
    initndlib(void)::bNDLibInitialized = 1;
  }
}

void NDEAcAnal::~NDEAcAnal(NDEAcAnal *this)
{
  *(this + 69) = off_28370A538;
  v2 = *(this + 70);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
  }

  *(this + 66) = off_28370A538;
  v3 = *(this + 67);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  AccelWin2MFCC::~AccelWin2MFCC(this + 11);
  *(this + 7) = off_28370A538;
  v4 = *(this + 8);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  *(this + 4) = off_28370A538;
  v5 = *(this + 5);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  *(this + 1) = off_28370A538;
  v6 = *(this + 2);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
  }
}

uint64_t IntNovDetectE::reset(IntNovDetectE *this)
{
  if (*(this + 1072) == 1)
  {
    *(this + 796) = 0;
    *(this + 724) = 0u;
    v2 = *(this + 178);
    *(this + 185) = v2;
    v3 = *(this + 180);
    if (v3 > v2 + 1)
    {
      *(this + 185) = v3 - 1;
    }

    v4 = *(this + 179);
    if (v4)
    {
      bzero(*(this + 97), 4 * v4);
    }
  }

  *(this + 22) = 0;
  *(this + 128) = *(this + 124) + 1;
  *(this + 65) = 0;
  *(this + 516) = 0;
  *(this + 248) = -8388609;
  *(this + 996) = 0u;
  if (*(this + 210))
  {
    v5 = 0;
    v6 = *(this + 104);
    do
    {
      v7 = v6 + 136 * v5;
      if (*(v7 + 72))
      {
        v8 = *(v7 + 88);
        *v8 = 0;
        v9 = *(v7 + 112);
        *v9 = 0;
        if (*(v7 + 72))
        {
          v10 = 1;
          do
          {
            v8[v10] = -8388609;
            v9[v10++] = 0;
          }

          while (v10 <= *(v7 + 72));
        }
      }

      ++v5;
    }

    while (v5 < *(this + 210));
  }

  *(this + 460) = 1;
  *(this + 884) = 0;
  v11 = *(this + 101);
  if (v11 && *(this + 102))
  {
    (*(*v11 + 160))(v11);
  }

  *(this + 136) = 0;
  *(this + 1048) = 0u;
  *(this + 133) = vdup_n_s32(0xC9742400);
  return 0;
}

uint64_t IntNovDetectE::process(uint64_t a1, const char *a2, signed int a3, _BYTE *a4, _BYTE *a5, uint64_t a6)
{
  if (*a1 != 1)
  {
    Error::chuck("NovDetectE: process() can only be called after initialize()", a2);
  }

  if (*(a1 + 1073))
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 1052);
  v9 = *(a1 + 1040);
  if (a3 < 1)
  {
    v15 = *(a1 + 1052);
  }

  else
  {
    v10 = a2;
    v11 = a6;
    v12 = a4;
    v13 = a5;
    do
    {
      v14 = a3 - v9;
      if (a3 >= v9)
      {
        a3 = v9;
      }

      IntNovDetectE::wavedata(a1, v10, a3);
      v10 += 2 * v9;
      a3 = v14;
    }

    while (v14 > 0);
    v15 = *(a1 + 1052);
    v9 = *(a1 + 1040);
    a5 = v13;
    a4 = v12;
    a6 = v11;
  }

  v16 = *(a1 + 1056);
  v17 = *(a1 + 1060);
  v18 = v16 >= v17;
  v20 = v16 - v17;
  v19 = v20 != 0 && v18;
  v21 = *(a1 + 1044) + v9 * v16;
  v22 = v20 * v9;
  if (!v19)
  {
    v22 = 0;
  }

  *a6 = *(a1 + 1048);
  *(a6 + 4) = v22;
  *(a6 + 8) = v21;
  v23 = *(a1 + 1064);
  *(a6 + 12) = v23;
  *(a6 + 16) = 0;
  *a4 = 0;
  *a5 = 0;
  v24 = v15 - v8;
  if (!v24)
  {
    return 0;
  }

  v25 = *(a1 + 1088);
  if (v23 <= *(a1 + 1076))
  {
    if (v25 < 1)
    {
      goto LABEL_21;
    }

    v27 = v25 - v24;
    *(a1 + 1088) = v27;
    if (v27 <= 0)
    {
      goto LABEL_21;
    }

LABEL_25:
    v28 = *(a1 + 1092);
    if (v28 >= 1)
    {
      result = 0;
      *(a1 + 1092) = v28 - v24;
      return result;
    }

    return 0;
  }

  if (v25 <= 0)
  {
    *a4 = 1;
  }

  v26 = *(a1 + 1084);
  *(a1 + 1088) = v26;
  *(a1 + 1056) = 0;
  *(a1 + 1064) = vdup_n_s32(0xC9742400);
  if (v26 > 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (*(a1 + 1068) <= *(a1 + 1080))
  {
    goto LABEL_25;
  }

  if (*(a1 + 1092) <= 0)
  {
    *a5 = 1;
  }

  result = 0;
  *(a1 + 1092) = *(a1 + 1084);
  *(a1 + 1068) = -915135488;
  return result;
}

uint64_t IntNovDetectE::wavedata(IntNovDetectE *this, const char *a2, unsigned int a3)
{
  v5 = *(this + 262);
  v6 = v5 + a3;
  *(this + 262) = v5 + a3;
  if (__CFADD__(v5, a3))
  {
    v7 = -v5;
    v17 = -v5;
    v18 = v5 + a3;
    NDEAcAnal::feedFromInt((this + 8), a2, &v17);
    *(this + 248) = -8388609;
    *(this + 996) = 0u;
    if (*(this + 210))
    {
      v8 = 0;
      v9 = *(this + 104);
      do
      {
        v10 = v9 + 136 * v8;
        if (*(v10 + 72))
        {
          v11 = *(v10 + 88);
          *v11 = 0;
          v12 = *(v10 + 112);
          *v12 = 0;
          if (*(v10 + 72))
          {
            v13 = 1;
            do
            {
              v11[v13] = -8388609;
              v12[v13++] = 0;
            }

            while (v13 <= *(v10 + 72));
          }
        }

        ++v8;
      }

      while (v8 < *(this + 210));
    }

    *(this + 460) = 1;
    *(this + 884) = 0;
    v14 = *(this + 101);
    if (v14 && *(this + 102))
    {
      (*(*v14 + 160))(v14);
    }

    *(this + 22) = 0;
    *(this + 128) = *(this + 124) + 1;
    *(this + 65) = 0;
    *(this + 516) = 0;
    if (*(this + 1072) == 1)
    {
      NLocalCepNorm::resync(this + 712);
    }

    *(this + 131) = 0;
    NDEAcAnal::feedFromInt((this + 8), &a2[2 * v7], &v18);
    *(this + 262) += v6;
  }

  else
  {
    v16 = a3;
    NDEAcAnal::feedFromInt((this + 8), a2, &v16);
  }

  if (*(this + 668) == 1)
  {
    IntNovDetectE::feedFrameToNorm(this, (this + 560));
  }

  return 0;
}

uint64_t IntNovDetectE::feedFrameToNorm(int32x2_t *this, const NFrame *a2)
{
  if (this[134].i8[0] == 1)
  {
    NLocalCepNorm::pushFrame(this + 89, a2);
    v3 = this[99].u8[4];
    v4 = this[91].i32[0];
    v5 = v4;
    if (v3 == 1)
    {
      if (v4)
      {
LABEL_9:
        while ((v3 & 1) != 0 && v4 || v4 == this[92].i32[1] + 1)
        {
          NLocalCepNorm::setOutputFrame(&this[89], &this[127]);
          NDEHMMDetector::feedFrame(&this[100], &this[127]);
          IntNovDetectE::advanceDetectionAfterFeed(this);
          v4 = this[91].i32[0];
          LOBYTE(v3) = this[99].i8[4];
        }

        return 1;
      }

      v5 = 0;
    }

    if (v5 != this[92].i32[1] + 1)
    {
      return 0;
    }

    goto LABEL_9;
  }

  NDEHMMDetector::feedFrame(&this[100], a2);
  IntNovDetectE::advanceDetectionAfterFeed(this);
  return 1;
}

uint64_t IntNovDetectE::advanceDetectionAfterFeed(uint64_t this)
{
  v1 = *(this + 1052) + 1;
  *(this + 1052) = v1;
  v2 = *(this + 1075);
  if (v2 == 1)
  {
    v3 = *(this + 656) / *(this + 664);
  }

  else
  {
    v3 = 100.0;
  }

  v4 = 0;
  v5 = 0;
  v6 = *(this + 840);
  v7 = 0.0;
  while (v6 != v5)
  {
    if (v5 < v6)
    {
      v8 = *(this + 1004);
      v9 = *(this + 832);
      v10 = *(v9 + v4 + 72);
      v11 = v8 - *(*(v9 + v4 + 112) + 4 * v10);
      if (v11)
      {
        v12 = *(*(v9 + v4 + 88) + 4 * v10) * (*(this + 936) + 1);
        if (*(this + 1074) == 1)
        {
          v12 = v12 / v11;
        }

        v13 = v12 + *(v9 + v4 + 128);
        if (v5 & 1) == 0 && (v2)
        {
          v7 = v13;
        }

        else if (v13 > *(this + 1064))
        {
          if (v2)
          {
            v11 = ((v3 * fmaxf(v7, 0.0)) + 0.5);
            v7 = 0.0;
          }

          *(this + 1056) = v1 - ((*(this + 1000) - v8 + *(this + 940)) & ~((*(this + 1000) - v8 + *(this + 940)) >> 31));
          *(this + 1060) = v11;
          *(this + 1064) = v13;
        }
      }
    }

    ++v5;
    v4 += 136;
  }

  if (*(this + 932))
  {
    v14 = *(this + 1004) - *(this + 996);
    if (v14)
    {
      v15 = *(this + 992);
      if (*(this + 1074) == 1)
      {
        v15 = v15 / v14;
      }

      if (v15 > *(this + 1068))
      {
        *(this + 1068) = v15;
      }
    }
  }

  return this;
}

float IntNovDetectE::getResult(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1056);
  v3 = *(a1 + 1040);
  v4 = *(a1 + 1044);
  v5 = *(a1 + 1060);
  v6 = v2 >= v5;
  v8 = v2 - v5;
  v7 = v8 != 0 && v6;
  v9 = v8 * v3;
  if (!v7)
  {
    v9 = 0;
  }

  *a2 = *(a1 + 1048);
  *(a2 + 4) = v9;
  *(a2 + 8) = v4 + v3 * v2;
  result = *(a1 + 1064);
  *(a2 + 12) = result;
  *(a2 + 16) = 0;
  return result;
}

uint64_t IntNovDetectE::setTriggerSignal(uint64_t this, BOOL *a2, BOOL *a3, const unsigned int *a4)
{
  *a2 = 0;
  *a3 = 0;
  if (!*a4)
  {
    return this;
  }

  v4 = *(this + 1088);
  if (*(this + 1064) <= *(this + 1076))
  {
    if (v4 >= 1)
    {
      v6 = v4 - *a4;
      *(this + 1088) = v6;
      if (v6 > 0)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    if (v4 <= 0)
    {
      *a2 = 1;
    }

    v5 = *(this + 1084);
    *(this + 1088) = v5;
    *(this + 1056) = 0;
    *(this + 1064) = vdup_n_s32(0xC9742400);
    if (v5 > 0)
    {
      goto LABEL_13;
    }
  }

  if (*(this + 1068) > *(this + 1080))
  {
    if (*(this + 1092) <= 0)
    {
      *a3 = 1;
    }

    *(this + 1092) = *(this + 1084);
    *(this + 1068) = -915135488;
    return this;
  }

LABEL_13:
  v7 = *(this + 1092);
  if (v7 >= 1)
  {
    *(this + 1092) = v7 - *a4;
  }

  return this;
}

uint64_t IntNovDetectE::processframe(uint64_t a1, float32x4_t *a2, unsigned int a3, _BYTE *a4, _BYTE *a5, uint64_t a6)
{
  if (*a1 != 1)
  {
    Error::chuck("NovDetectE: process() can only be called after initialize()", a2);
  }

  if (*(a1 + 1073) != 1)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 1048);
  v11 = *(a1 + 1040);
  *(a1 + 1048) = v11 + v10;
  if (__CFADD__(v11, v10))
  {
    *(a1 + 992) = -8388609;
    *(a1 + 996) = 0u;
    if (*(a1 + 840))
    {
      v12 = 0;
      v13 = *(a1 + 832);
      do
      {
        v14 = v13 + 136 * v12;
        if (*(v14 + 72))
        {
          v15 = *(v14 + 88);
          *v15 = 0;
          v16 = *(v14 + 112);
          *v16 = 0;
          if (*(v14 + 72))
          {
            v17 = 1;
            do
            {
              v15[v17] = -8388609;
              v16[v17++] = 0;
            }

            while (v17 <= *(v14 + 72));
          }
        }

        ++v12;
      }

      while (v12 < *(a1 + 840));
    }

    *(a1 + 920) = 1;
    *(a1 + 884) = 0;
    v19 = *(a1 + 808);
    if (v19 && *(a1 + 816))
    {
      (*(*v19 + 160))(v19);
    }

    *(a1 + 88) = 0;
    *(a1 + 512) = *(a1 + 496) + 1;
    *(a1 + 520) = 0;
    *(a1 + 516) = 0;
    if (*(a1 + 1072) == 1)
    {
      NLocalCepNorm::resync(a1 + 712);
    }

    *(a1 + 1052) = 0;
  }

  else
  {
    v35 = a3;
    NDEFrameProc::apply((a1 + 672), a2, &v35);
    IntNovDetectE::feedFrameToNorm(a1, (a1 + 672));
  }

  v20 = *(a1 + 1056);
  v21 = *(a1 + 1040);
  v22 = *(a1 + 1044);
  v23 = *(a1 + 1060);
  v24 = v20 >= v23;
  v26 = v20 - v23;
  v25 = v26 != 0 && v24;
  v27 = v26 * v21;
  if (!v25)
  {
    v27 = 0;
  }

  *a6 = *(a1 + 1048);
  *(a6 + 4) = v27;
  *(a6 + 8) = v22 + v21 * v20;
  v28 = *(a1 + 1064);
  *(a6 + 12) = v28;
  *(a6 + 16) = 0;
  *a4 = 0;
  *a5 = 0;
  v29 = *(a1 + 1088);
  if (v28 <= *(a1 + 1076))
  {
    v31 = __OFSUB__(v29, 1);
    v32 = v29 - 1;
    if (v32 < 0 == v31)
    {
      *(a1 + 1088) = v32;
      if (v32 > 0)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    if (v29 <= 0)
    {
      *a4 = 1;
    }

    v30 = *(a1 + 1084);
    *(a1 + 1088) = v30;
    *(a1 + 1056) = 0;
    *(a1 + 1064) = vdup_n_s32(0xC9742400);
    if (v30 > 0)
    {
      goto LABEL_33;
    }
  }

  if (*(a1 + 1068) > *(a1 + 1080))
  {
    if (*(a1 + 1092) <= 0)
    {
      *a5 = 1;
    }

    result = 0;
    *(a1 + 1092) = *(a1 + 1084);
    *(a1 + 1068) = -915135488;
    return result;
  }

LABEL_33:
  v33 = *(a1 + 1092);
  result = 0;
  v31 = __OFSUB__(v33, 1);
  v34 = v33 - 1;
  if (v34 < 0 == v31)
  {
    *(a1 + 1092) = v34;
  }

  return result;
}

uint64_t IntNovDetectE::framedata(IntNovDetectE *this, float32x4_t *a2, unsigned int a3)
{
  v4 = *(this + 262);
  v5 = *(this + 260);
  *(this + 262) = v5 + v4;
  if (__CFADD__(v5, v4))
  {
    *(this + 248) = -8388609;
    *(this + 996) = 0u;
    if (*(this + 210))
    {
      v6 = 0;
      v7 = *(this + 104);
      do
      {
        v8 = v7 + 136 * v6;
        if (*(v8 + 72))
        {
          v9 = *(v8 + 88);
          *v9 = 0;
          v10 = *(v8 + 112);
          *v10 = 0;
          if (*(v8 + 72))
          {
            v11 = 1;
            do
            {
              v9[v11] = -8388609;
              v10[v11++] = 0;
            }

            while (v11 <= *(v8 + 72));
          }
        }

        ++v6;
      }

      while (v6 < *(this + 210));
    }

    *(this + 460) = 1;
    *(this + 884) = 0;
    v12 = *(this + 101);
    if (v12 && *(this + 102))
    {
      (*(*v12 + 160))(v12);
    }

    *(this + 22) = 0;
    *(this + 128) = *(this + 124) + 1;
    *(this + 65) = 0;
    *(this + 516) = 0;
    if (*(this + 1072) == 1)
    {
      NLocalCepNorm::resync(this + 712);
    }

    *(this + 263) = 0;
  }

  else
  {
    v14 = a3;
    NDEFrameProc::apply((this + 672), a2, &v14);
    IntNovDetectE::feedFrameToNorm(this, (this + 672));
  }

  return 0;
}

uint64_t IntNovDetectE::resetbest(int32x2_t *this)
{
  this[132] = 0;
  this[133] = vdup_n_s32(0xC9742400);
  return 0;
}

uint64_t IntNovDetectE::handleWavedataOverflow(IntNovDetectE *this, const char *a2, const int *a3)
{
  v5 = *(this + 262);
  v6 = *a3 - v5;
  v15 = v6;
  v16 = v5;
  NDEAcAnal::feedFromInt((this + 8), a2, &v15);
  *(this + 248) = -8388609;
  *(this + 996) = 0u;
  if (*(this + 210))
  {
    v7 = 0;
    v8 = *(this + 104);
    do
    {
      v9 = v8 + 136 * v7;
      if (*(v9 + 72))
      {
        v10 = *(v9 + 88);
        *v10 = 0;
        v11 = *(v9 + 112);
        *v11 = 0;
        if (*(v9 + 72))
        {
          v12 = 1;
          do
          {
            v10[v12] = -8388609;
            v11[v12++] = 0;
          }

          while (v12 <= *(v9 + 72));
        }
      }

      ++v7;
    }

    while (v7 < *(this + 210));
  }

  *(this + 460) = 1;
  *(this + 884) = 0;
  v13 = *(this + 101);
  if (v13 && *(this + 102))
  {
    (*(*v13 + 160))(v13);
  }

  *(this + 22) = 0;
  *(this + 128) = *(this + 124) + 1;
  *(this + 65) = 0;
  *(this + 516) = 0;
  if (*(this + 1072) == 1)
  {
    NLocalCepNorm::resync(this + 712);
  }

  *(this + 131) = 0;
  result = NDEAcAnal::feedFromInt((this + 8), &a2[2 * v6], &v16);
  *(this + 262) += v5;
  return result;
}

uint64_t __Block_byref_object_copy__1988(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _AssistantPrefsChangedNotification(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = AFPreferencesAssistantEnabled();
  v4 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"Disabled";
    if (v3)
    {
      v5 = @"Enabled";
    }

    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_223A31000, v4, OS_LOG_TYPE_DEFAULT, "Siri Enabled = %{public}@", &v7, 0xCu);
  }

  return [a2 _didReceiveSiriSettingChanged:v3 != 0];
}

void NLocalCepNorm::NLocalCepNorm(NLocalCepNorm *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = &unk_2837076F0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = &unk_28370A4D8;
  *(this + 20) = 1065353048;
  *(this + 84) = 0;
  v1 = 1;
  NArray<NFrame>::resize(this + 32, &v1);
}

{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = &unk_2837076F0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = &unk_28370A4D8;
  *(this + 20) = 1065353048;
  *(this + 84) = 0;
  v1 = 1;
  NArray<NFrame>::resize(this + 32, &v1);
}

void sub_223A9398C(_Unwind_Exception *a1)
{
  *v2 = off_28370A538;
  if (*v3)
  {
    MEMORY[0x223DF1D00](*v3, 0x1000C8052888210);
  }

  NArray<NFrame>::~NArray(v1);
  _Unwind_Resume(a1);
}

void sub_223A93A88(_Unwind_Exception *a1)
{
  *v2 = off_28370A538;
  if (*v3)
  {
    MEMORY[0x223DF1D00](*v3, 0x1000C8052888210);
  }

  NArray<NFrame>::~NArray(v1);
  _Unwind_Resume(a1);
}

void NLocalCepNorm::configure(NLocalCepNorm *this, char *a2, const unsigned int *a3, float *a4, unsigned int *a5, const unsigned int *a6)
{
  v9 = *a5;
  if (*a5 == -1)
  {
    v10 = 0;
  }

  else if (v9 == -2)
  {
    if ((*a2 & 1) == 0)
    {
      Error::chuck("NLocalCepNorm::configure() - only an odd number of frames supported", a2, a3, a4);
    }

    v10 = *a2 >> 1;
  }

  else
  {
    v11 = *a2;
    if (v9 >= v11)
    {
      Error::chuck("NLocalCepNorm::configure() - offset %d lies outside window %d", a2, a3, a4, *a5, v11);
    }

    v10 = v11 + ~v9;
  }

  *this = v10;
  v12 = *a2;
  if (*(this + 2) > v12)
  {
    Error::chuck("NLocalCepNorm::configure() - minframes %d cannot exceed total buffer size %d", a2, a3, a4, *(this + 2), v12);
  }

  *(this + 2) = *a6;
  *(this + 1) = *a3;
  *(this + 20) = *a4;
  NArray<NFrame>::resize(this + 32, a2);
  if (*(this + 18) != *a3)
  {
    *(this + 18) = *a3;
    operator new[]();
  }

  if (*a2)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      (*(*(*(this + 5) + v13) + 32))(*(this + 5) + v13, a3);
      ++v14;
      v13 += 24;
    }

    while (v14 < *a2);
  }

  *(this + 84) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  v15 = *this;
  *(this + 7) = *this;
  v16 = *(this + 2);
  if (v16 > v15 + 1)
  {
    *(this + 7) = v16 - 1;
  }

  v17 = *(this + 1);
  if (v17)
  {
    v18 = *(this + 8);

    bzero(v18, 4 * v17);
  }
}

void NLocalCepNorm::reset(NLocalCepNorm *this)
{
  *(this + 84) = 0;
  *(this + 20) = 0;
  *(this + 12) = 0;
  v1 = *this;
  *(this + 7) = *this;
  v2 = *(this + 2);
  if (v2 > v1 + 1)
  {
    *(this + 7) = v2 - 1;
  }

  v3 = *(this + 1);
  if (v3)
  {
    bzero(*(this + 8), 4 * v3);
  }
}

uint64_t NLocalCepNorm::resync(uint64_t this)
{
  if ((*(this + 84) & 1) == 0)
  {
    v1 = *(this + 4);
    if (v1)
    {
      v2 = this;
      bzero(*(this + 64), 4 * v1);
      this = v2;
    }

    v3 = *(this + 20);
    v4 = *(this + 12);
    if (v3 <= v4)
    {
      if (!v3)
      {
        return this;
      }

      v5 = *(this + 48);
      if (!v1)
      {
        return this;
      }
    }

    else
    {
      v5 = *(this + 48);
      v4 += v5;
      if (!v1)
      {
        return this;
      }
    }

    v6 = v4 - v3;
    v7 = *(this + 40);
    v8 = *(this + 64);
    if (v1 > 7)
    {
      v11 = v1;
      v12 = &v8[v1];
      if ((v1 & 0xFFFFFFF8) == v1)
      {
        v13 = 0;
        this = 24;
        do
        {
          v14 = *(v7 + 24 * v6 + 8);
          if (v8 >= &v14[v11] || v14 >= v12)
          {
            v16 = (v14 + 4);
            v17 = (v8 + 4);
            v18 = v1 & 0xFFFFFFF8;
            do
            {
              v19 = vaddq_f32(*v16, *v17);
              v17[-1] = vaddq_f32(v16[-1], v17[-1]);
              *v17 = v19;
              v17 += 2;
              v16 += 2;
              v18 -= 8;
            }

            while (v18);
          }

          else
          {
            v20 = v8;
            v21 = v1;
            do
            {
              v22 = *v14++;
              *v20 = v22 + *v20;
              ++v20;
              --v21;
            }

            while (v21);
          }

          if (v6 + 1 < v5)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          ++v13;
        }

        while (v13 != v3);
      }

      else
      {
        v23 = 0;
        this = 24;
        do
        {
          v24 = *(v7 + 24 * v6 + 8);
          if (v8 >= &v24->f32[v11] || v24 >= v12)
          {
            v26 = v24 + 1;
            v27 = (v8 + 4);
            v28 = v1 & 0xFFFFFFF8;
            do
            {
              v29 = vaddq_f32(*v26, *v27);
              v27[-1] = vaddq_f32(v26[-1], v27[-1]);
              *v27 = v29;
              v27 += 2;
              v26 += 2;
              v28 -= 8;
            }

            while (v28);
            v30 = v1 & 0xFFFFFFF8;
          }

          else
          {
            v30 = 0;
          }

          v31 = v1 - v30;
          v32 = v30;
          v33 = &v8[v30];
          v34 = &v24->f32[v32];
          do
          {
            v35 = *v34++;
            *v33 = v35 + *v33;
            ++v33;
            --v31;
          }

          while (v31);
          if (v6 + 1 < v5)
          {
            ++v6;
          }

          else
          {
            v6 = 0;
          }

          ++v23;
        }

        while (v23 != v3);
      }
    }

    else
    {
      v9 = *v8;
      do
      {
        v10 = *(v7 + 24 * v6 + 8);
        v9 = *v10 + v9;
        *v8 = v9;
        if (v1 != 1)
        {
          v8[1] = v10[1] + v8[1];
          if (v1 != 2)
          {
            v8[2] = v10[2] + v8[2];
            if (v1 != 3)
            {
              v8[3] = v10[3] + v8[3];
              if (v1 != 4)
              {
                v8[4] = v10[4] + v8[4];
                if (v1 != 5)
                {
                  v8[5] = v10[5] + v8[5];
                  if (v1 != 6)
                  {
                    v8[6] = v10[6] + v8[6];
                  }
                }
              }
            }
          }
        }

        if (v6 + 1 < v5)
        {
          ++v6;
        }

        else
        {
          v6 = 0;
        }

        --v3;
      }

      while (v3);
    }
  }

  return this;
}

unsigned int *NLocalCepNorm::endFrames(unsigned int *this, const char *a2)
{
  if (*(this + 84) == 1)
  {
    Error::chuck("NLocalCepNorm::endFrames() - endFrames() already called", a2);
  }

  v2 = this[7];
  if (this[4] > v2)
  {
    Error::chuck("NLocalCepNorm::endFrames() - buffer full", a2);
  }

  v3 = this[5];
  v4 = this[12];
  if (v3 >= v4)
  {
    Error::chuck("NLocalCepNorm::endFrames() - buffer full - redundant test", a2);
  }

  v5 = v4 + ~v3;
  this[6] = v5;
  v6 = v4 + ~v2;
  if (v5 <= v6)
  {
    v6 = v5;
  }

  else
  {
    v7 = this[3];
    do
    {
      if (v7 + 1 < v4)
      {
        ++v7;
      }

      else
      {
        v7 = 0;
      }

      --v5;
    }

    while (v5 > v6);
    this[3] = v7;
    this[6] = v6;
  }

  v8 = *this;
  if (v2 > *this)
  {
    v9 = this[3];
    v10 = v2;
    do
    {
      if (--v9 >= v4)
      {
        v9 = v4 - 1;
      }

      --v10;
    }

    while (v10 > v8);
    this[3] = v9;
    this[6] = v2 + v6 - v8;
    this[7] = v8;
  }

  *(this + 84) = 1;
  return this;
}

int32x2_t NLocalCepNorm::pushFrame(int32x2_t *this, const NFrame *a2)
{
  v2 = *(a2 + 4);
  if (v2 != this->i32[1])
  {
    Error::chuck("NLocalCepNorm::pushFrame() - mismatched input frame size", a2);
  }

  if (this[10].i8[4] == 1)
  {
    Error::chuck("NLocalCepNorm::pushFrame() - endFrames() already called", a2);
  }

  if (this[2].i32[0] > this[3].i32[1])
  {
    Error::chuck("NLocalCepNorm::pushFrame() - buffer full", a2);
  }

  if (this[2].i32[1] >= this[6].i32[0])
  {
    Error::chuck("NLocalCepNorm::pushFrame() - buffer full - redundant test", a2);
  }

  v4 = *&this[5] + 24 * this[1].u32[1];
  if (v4 != a2)
  {
    if (*(v4 + 16) != v2)
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
        v2 = *(a2 + 4);
      }

      *(v4 + 16) = v2;
      operator new[]();
    }

    if (v2)
    {
      v6 = 0;
      v7 = *(a2 + 1);
      v8 = *(v4 + 8);
      v9 = v2;
      if (v2 < 8)
      {
        goto LABEL_16;
      }

      if ((v8 - v7) < 0x20)
      {
        goto LABEL_16;
      }

      v6 = v2 & 0xFFFFFFF8;
      v10 = (v8 + 16);
      v11 = (v7 + 16);
      v12 = v9 & 0xFFFFFFF8;
      do
      {
        v13 = *v11;
        *(v10 - 1) = *(v11 - 1);
        *v10 = v13;
        v10 += 2;
        v11 += 2;
        v12 -= 8;
      }

      while (v12);
      if (v6 != v9)
      {
LABEL_16:
        v14 = v9 - v6;
        v15 = 4 * v6;
        v16 = (v8 + v15);
        v17 = (v7 + v15);
        do
        {
          v18 = *v17++;
          *v16++ = v18;
          --v14;
        }

        while (v14);
      }
    }
  }

  v19 = this[1].i32[1];
  if ((v19 + 1) < this[6].i32[0])
  {
    v20 = v19 + 1;
  }

  else
  {
    v20 = 0;
  }

  this[1].i32[1] = v20;
  v21 = this->u32[1];
  if (v21)
  {
    v22 = *(a2 + 1);
    v23 = this[8];
    if (v21 <= 7 || (v23 < v22 + 4 * v21 ? (v24 = v22 >= v23 + 4 * v21) : (v24 = 1), !v24))
    {
      v25 = 0;
LABEL_33:
      v30 = v21 - v25;
      v31 = 4 * v25;
      v32 = (v23 + v31);
      v33 = (v22 + v31);
      do
      {
        v34 = *v33++;
        *v32 = v34 + *v32;
        ++v32;
        --v30;
      }

      while (v30);
      goto LABEL_35;
    }

    v25 = v21 & 0xFFFFFFF8;
    v26 = (v23 + 16);
    v27 = (v22 + 16);
    v28 = v25;
    do
    {
      v29 = vaddq_f32(*v27, *v26);
      v26[-1] = vaddq_f32(v27[-1], v26[-1]);
      *v26 = v29;
      v26 += 2;
      v27 += 2;
      v28 -= 8;
    }

    while (v28);
    if (v25 != v21)
    {
      goto LABEL_33;
    }
  }

LABEL_35:
  result = vadd_s32(this[2], 0x100000001);
  this[2] = result;
  return result;
}

uint64_t NLocalCepNorm::setOutputFrame(NLocalCepNorm *this, NFrame *a2)
{
  v5 = this + 84;
  v6 = *(this + 4);
  if (*(this + 84) == 1)
  {
    v7 = *(this + 7);
    if (v6)
    {
      _ZF = 1;
    }

    else
    {
      _ZF = v7 == -1;
    }

    if (!_ZF)
    {
LABEL_71:
      Error::chuck("NLocalCepNorm::setOutputFrame() - buffer empty", a2);
    }

    v9 = *(this + 3);
    v10 = *(this + 12);
    if (v9 + 1 < v10)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = 0;
    }

    *(this + 3) = v11;
  }

  else
  {
    v7 = *(this + 7);
    if (v6 != v7 + 1)
    {
      goto LABEL_71;
    }

    v10 = *(this + 12);
    v11 = *(this + 3);
  }

  LODWORD(v2) = *(this + 5);
  v12 = *(this + 5);
  result = (*(*a2 + 32))(a2, this + 4);
  v15 = *(this + 1);
  if (v15)
  {
    v14.i64[0] = 1.0;
    v16 = 1.0 / v2;
    *&v16 = v16;
    v17 = *(v12 + 24 * ((v10 + v11 + ~v7) % v10) + 8);
    v18 = *(this + 8);
    v19 = *(a2 + 1);
    if (v15 <= 7)
    {
      v20 = 0;
LABEL_16:
      v21 = v15 - v20;
      v22 = v20;
      v23 = &v19->f32[v22];
      v24 = &v18->f32[v22];
      v25 = &v17->f32[v22];
      do
      {
        v26 = *v25++;
        v27 = v26;
        v28 = *v24++;
        *v23++ = v27 - (v28 * *&v16);
        --v21;
      }

      while (v21);
      goto LABEL_18;
    }

    v20 = 0;
    if ((v19 - v17) < 0x20)
    {
      goto LABEL_16;
    }

    if ((v19 - v18) < 0x20)
    {
      goto LABEL_16;
    }

    v20 = v15 & 0xFFFFFFF8;
    v14 = vdupq_lane_s32(*&v16, 0);
    v51 = v19 + 1;
    v52 = v18 + 1;
    v53 = v17 + 1;
    v54 = v20;
    do
    {
      v55 = vmlsq_f32(*v53, v14, *v52);
      v51[-1] = vmlsq_f32(v53[-1], v14, v52[-1]);
      *v51 = v55;
      v51 += 2;
      v52 += 2;
      v53 += 2;
      v54 -= 8;
    }

    while (v54);
    if (v20 != v15)
    {
      goto LABEL_16;
    }
  }

LABEL_18:
  v29 = *(this + 6);
  if (v29)
  {
    *(this + 6) = v29 - 1;
    goto LABEL_51;
  }

  v30 = *(this + 5);
  if (v30 == *(this + 12) || *v5 == 1)
  {
    v31 = (this + 80);
    v14.i32[0] = *(this + 20);
    if (v14.f32[0] < 1.0 && v15 != 0)
    {
      v33 = v30;
      v34 = *(a2 + 1);
      v35 = *(this + 8);
      if (v15 < 8)
      {
        v36 = 0;
LABEL_28:
        v37 = v15 - v36;
        v38 = 4 * v36;
        v39 = (v35 + v38);
        v40 = (v34 + v38);
        do
        {
          v41 = *v40++;
          v42 = *v39 + (1.0 - *v31) * v33 * v41;
          *v39++ = v42;
          --v37;
        }

        while (v37);
        goto LABEL_30;
      }

      v36 = 0;
      v62 = v35 + 4 * v15;
      v64 = v35 < v34 + 4 * v15 && v34 < v62;
      if (v31 < v62 && v35 < v5)
      {
        goto LABEL_28;
      }

      if (v64)
      {
        goto LABEL_28;
      }

      v36 = v15 & 0xFFFFFFFC;
      __asm { FMOV            V2.2D, #1.0 }

      v69 = vmulq_n_f64(vsubq_f64(_Q2, vcvtq_f64_f32(vdup_lane_s32(*v14.f32, 0))), v33);
      v70 = *(a2 + 1);
      v71 = *(this + 8);
      v72 = v36;
      do
      {
        v73 = *v70++;
        *v71->f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*v71), vcvtq_f64_f32(*v73.f32), v69)), vmlaq_f64(vcvt_hight_f64_f32(*v71->f32), vcvt_hight_f64_f32(v73), v69));
        v71 += 2;
        v72 -= 4;
      }

      while (v72);
      if (v36 != v15)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    if (v15)
    {
      v43 = *(*(this + 5) + 24 * *(this + 3) + 8);
      v44 = *(this + 8);
      if (v15 > 7 && (v44 < v43 + 4 * v15 ? (_CF = v43 >= v44 + 4 * v15) : (_CF = 1), _CF))
      {
        v46 = v15 & 0xFFFFFFF8;
        v47 = (v44 + 16);
        v48 = (v43 + 16);
        v49 = v46;
        do
        {
          v50 = vsubq_f32(*v47, *v48);
          v47[-1] = vsubq_f32(v47[-1], v48[-1]);
          *v47 = v50;
          v47 += 2;
          v48 += 2;
          v49 -= 8;
        }

        while (v49);
        if (v46 == v15)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v46 = 0;
      }

      v56 = v15 - v46;
      v57 = 4 * v46;
      v58 = (v44 + v57);
      v59 = (v43 + v57);
      do
      {
        v60 = *v59++;
        *v58 = *v58 - v60;
        ++v58;
        --v56;
      }

      while (v56);
    }

LABEL_50:
    *(this + 5) = v30 - 1;
  }

LABEL_51:
  --*(this + 4);
  if ((*(this + 84) & 1) == 0)
  {
    v61 = *(this + 7);
    if (v61 > *this)
    {
      *(this + 7) = v61 - 1;
    }
  }

  return result;
}

uint64_t NLocalCepNorm::getFrame@<X0>(NLocalCepNorm *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *a2 = &unk_28370A4D8;
  *(a2 + 8) = 0;
  return NLocalCepNorm::setOutputFrame(this, a2);
}

void sub_223A94788(_Unwind_Exception *exception_object)
{
  *v1 = off_28370A538;
  v3 = v1[1];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void NChunkGaussianMixtureModelsHeader::NChunkGaussianMixtureModelsHeader(NChunkGaussianMixtureModelsHeader *this)
{
  *this = 0;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

{
  *this = 0;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

void NChunkGaussianMixtureModelsHeader::~NChunkGaussianMixtureModelsHeader(NChunkGaussianMixtureModelsHeader *this)
{
  v2 = (this + 40);
  *(this + 5) = &unk_2837086D8;
  *(this + 26) = &unk_283708F80;
  v3 = *(this + 27);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 22) = &unk_283708F80;
  v4 = *(this + 23);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales(v2);
  *(this + 1) = &unk_28370A720;
  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8077774924);
  }
}

{
  v2 = (this + 40);
  *(this + 5) = &unk_2837086D8;
  *(this + 26) = &unk_283708F80;
  v3 = *(this + 27);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 22) = &unk_283708F80;
  v4 = *(this + 23);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales(v2);
  *(this + 1) = &unk_28370A720;
  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8077774924);
  }
}

void NChunkGaussianMixtureModelsHeader::read(NChunkGaussianMixtureModelsHeader *this, const NString *a2, NFilePtr *a3, const NString *a4, const BOOL *a5)
{
  v5 = &unk_28370A720;
  v6 = *(a4 + 2);
  operator new[]();
}

void sub_223A95890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a19)
  {
    MEMORY[0x223DF1D00](a19, v22);
  }

  if (a22)
  {
    MEMORY[0x223DF1D00](a22, v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NChunkGaussianMixtureModelsHeader::readField(NChunkGaussianMixtureModelsHeader *this, const NString *a2, NFilePtr *a3, const NString *a4, NString *a5)
{
  if (*(this + 252) != 1)
  {
    v8 = &unk_28370A720;
    v9 = 0;
    operator new[]();
  }

  v6 = *(a3 + 1);
  if (!v6)
  {
    Error::chuck("NSmartPointer::checkptr() - pointer unset", a2);
  }

  (*(*v6 + 88))(&v8);
  (*(*a5 + 32))(a5, &v8);
  v8 = &unk_28370A720;
  result = v10;
  if (v10)
  {
    return MEMORY[0x223DF1D00]();
  }

  return result;
}

void sub_223A95F3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a25)
  {
    MEMORY[0x223DF1D00](a25, v25);
  }

  *(v26 - 120) = a15;
  if (*(v26 - 104))
  {
    MEMORY[0x223DF1D00]();
  }

  _Unwind_Resume(exception_object);
}

uint64_t NChunkGaussianMixtureModelsHeader::readField<unsigned int>(char a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if ((a1 & 1) == 0)
  {
    v11 = &unk_28370A720;
    v12 = 0;
    operator new[]();
  }

  v5 = *(a3 + 8);
  if (!v5)
  {
    Error::chuck("NSmartPointer::checkptr() - pointer unset", a2);
  }

  (*(*v5 + 64))(&v11);
  if (v12 != 4)
  {
    *a5 = 0;
    NString::~NString(&v11);
    Error::chuck("NChunkGaussianMixtureModelsHeader::readBinary() - failed to read %s from file %s", v9, *(a4 + 16), *(a2 + 16));
  }

  *a5 = *v13;
  v11 = &unk_28370A720;
  return MEMORY[0x223DF1D00]();
}

void sub_223A96638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v26 - 120) = a14;
  v28 = *(v26 - 104);
  if (v28)
  {
    MEMORY[0x223DF1D00](v28, v25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NChunkGaussianMixtureModelsHeader::readField<unsigned char>(char a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if ((a1 & 1) == 0)
  {
    v11 = &unk_28370A720;
    v12 = 0;
    operator new[]();
  }

  v5 = *(a3 + 8);
  if (!v5)
  {
    Error::chuck("NSmartPointer::checkptr() - pointer unset", a2);
  }

  (*(*v5 + 64))(&v11);
  if (v12 != 1)
  {
    *a5 = 0;
    NString::~NString(&v11);
    Error::chuck("NChunkGaussianMixtureModelsHeader::readBinary() - failed to read %s from file %s", v9, *(a4 + 16), *(a2 + 16));
  }

  *a5 = *v13;
  v11 = &unk_28370A720;
  return MEMORY[0x223DF1D00]();
}

void sub_223A96CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  *(v26 - 120) = a14;
  v28 = *(v26 - 104);
  if (v28)
  {
    MEMORY[0x223DF1D00](v28, v25);
  }

  _Unwind_Resume(exception_object);
}

void NChunkGaussianMixtureModelsHeader::write(NChunkGaussianMixtureModelsHeader *this, NFilePtr *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 1);
  if (*(this + 253) == 1)
  {
    if (v2)
    {
      *__str = &unk_28370A720;
      v4 = 13;
      operator new[]();
    }
  }

  else if (v2)
  {
    *__str = &unk_28370A720;
    v4 = 13;
    operator new[]();
  }

  Error::chuck("NSmartPointer::checkptr() - pointer unset", a2);
}

void sub_223A982A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a22)
  {
    MEMORY[0x223DF1D00](a22, v22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void NChunkGaussianMixtureModelsHeader::writeBinary(NChunkGaussianMixtureModelsHeader *this, NFilePtr *a2)
{
  v2 = *(a2 + 1);
  if (*(this + 253) == 1)
  {
    if (v2)
    {
      v3 = &unk_28370A720;
      v4 = 13;
      operator new[]();
    }
  }

  else if (v2)
  {
    v3 = &unk_28370A720;
    v4 = 13;
    operator new[]();
  }

  Error::chuck("NSmartPointer::checkptr() - pointer unset", a2, v3);
}

void sub_223A98DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

void NChunkGaussianMixtureModelsHeader::encodingString(NChunkGaussianMixtureModelsHeader *this)
{
  v1 = &unk_28370A720;
  v2 = 0;
  operator new[]();
}

void sub_223A98F24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    MEMORY[0x223DF1D00](a18, v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NFastFixedGaussians<signed char,int,unsigned char>::score(uint64_t a1, _DWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = *(a1 + 24);
  v12 = (*(a1 + 232) * *a2);
  v13 = *(a1 + 216);
  v14 = *(v11 + v12);
  if (v13)
  {
    v15 = (v11 + v12 + 4);
    v16 = *(a3 + 8);
    v17 = *(a1 + 208);
    if (v13 < 8)
    {
      v18 = 0;
      goto LABEL_15;
    }

    if (v13 >= 0x20)
    {
      v18 = v13 & 0xFFFFFFE0;
      v19 = *(v11 + v12);
      v20 = 0uLL;
      v21 = (v12 + v11 + 36);
      v22 = v17 + 4;
      v23 = v16 + 2;
      v24 = v18;
      v25 = 0uLL;
      a11 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30 = v21 - 32;
        v92 = vld2q_s8(v30);
        v93 = vld2q_s8(v21);
        v31 = v23[-2];
        v32 = v23[-1];
        v33 = vmovl_high_s16(v32);
        v34 = vmovl_high_s16(v31);
        v35 = *v23;
        v36 = v23[1];
        v23 += 4;
        v37 = vmovl_high_s16(v36);
        v38 = vmovl_high_s16(v35);
        v39 = vmovl_s8(*v92.val[0].i8);
        v40 = vmovl_high_s8(v92.val[0]);
        v41 = vmovl_s8(*v93.val[0].i8);
        v42 = vmovl_high_s8(v93.val[0]);
        v43 = vsubq_s32(vmovl_s16(*v31.i8), vshll_n_s16(*v39.i8, 8uLL));
        v44 = vsubq_s32(v34, vshll_high_n_s16(v39, 8uLL));
        v45 = vsubq_s32(vmovl_s16(*v32.i8), vshll_n_s16(*v40.i8, 8uLL));
        v46 = vsubq_s32(v33, vshll_high_n_s16(v40, 8uLL));
        v47 = vsubq_s32(vmovl_s16(*v35.i8), vshll_n_s16(*v41.i8, 8uLL));
        v48 = vsubq_s32(v38, vshll_high_n_s16(v41, 8uLL));
        v49 = vsubq_s32(vmovl_s16(*v36.i8), vshll_n_s16(*v42.i8, 8uLL));
        v50 = vsubq_s32(v37, vshll_high_n_s16(v42, 8uLL));
        v51 = vqtbl1q_s8(v92.val[1], xmmword_223B132A0);
        v52 = vqtbl1q_s8(v92.val[1], xmmword_223B132B0);
        v53 = vqtbl1q_s8(v92.val[1], xmmword_223B132C0);
        v92.val[0] = vqtbl1q_s8(v92.val[1], xmmword_223B132D0);
        v92.val[1] = vqtbl1q_s8(v93.val[1], xmmword_223B132A0);
        v54 = vqtbl1q_s8(v93.val[1], xmmword_223B132B0);
        v55 = vqtbl1q_s8(v93.val[1], xmmword_223B132C0);
        v93.val[0] = vqtbl1q_s8(v93.val[1], xmmword_223B132D0);
        v92.val[0] = vshlq_n_s32(vmulq_s32(v92.val[0], vshrq_n_u32(vmulq_s32(v46, v46), 0xFuLL)), 8uLL);
        v93.val[1] = vshlq_n_s32(vmulq_s32(v53, vshrq_n_u32(vmulq_s32(v45, v45), 0xFuLL)), 8uLL);
        v56 = vshlq_n_s32(vmulq_s32(v52, vshrq_n_u32(vmulq_s32(v44, v44), 0xFuLL)), 8uLL);
        v57 = vshlq_n_s32(vmulq_s32(v51, vshrq_n_u32(vmulq_s32(v43, v43), 0xFuLL)), 8uLL);
        v93.val[0] = vshlq_n_s32(vmulq_s32(v93.val[0], vshrq_n_u32(vmulq_s32(v50, v50), 0xFuLL)), 8uLL);
        v58 = vshlq_n_s32(vmulq_s32(v55, vshrq_n_u32(vmulq_s32(v49, v49), 0xFuLL)), 8uLL);
        v59 = vshlq_n_s32(vmulq_s32(v54, vshrq_n_u32(vmulq_s32(v48, v48), 0xFuLL)), 8uLL);
        v92.val[1] = vshlq_n_s32(vmulq_s32(v92.val[1], vshrq_n_u32(vmulq_s32(v47, v47), 0xFuLL)), 8uLL);
        v61 = v22[-2];
        v60 = v22[-1];
        v63 = v22[-4];
        v62 = v22[-3];
        v65 = v22[2];
        v64 = v22[3];
        v67 = *v22;
        v66 = v22[1];
        v22 += 8;
        a11 = vaddq_s32(vshlq_u32(v92.val[0], vnegq_s32(v60)), a11);
        v25 = vaddq_s32(vshlq_u32(v93.val[1], vnegq_s32(v61)), v25);
        v20 = vaddq_s32(vshlq_u32(v56, vnegq_s32(v62)), v20);
        v19 = vaddq_s32(vshlq_u32(v57, vnegq_s32(v63)), v19);
        v29 = vaddq_s32(vshlq_u32(v93.val[0], vnegq_s32(v64)), v29);
        v21 += 64;
        v28 = vaddq_s32(vshlq_u32(v58, vnegq_s32(v65)), v28);
        v27 = vaddq_s32(vshlq_u32(v59, vnegq_s32(v66)), v27);
        v26 = vaddq_s32(vshlq_u32(v92.val[1], vnegq_s32(v67)), v26);
        v24 -= 32;
      }

      while (v24);
      v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v26, v19), vaddq_s32(v28, v25)), vaddq_s32(vaddq_s32(v27, v20), vaddq_s32(v29, a11))));
      if (v18 == v13)
      {
        return ((1 - (v14 >> *(a1 + 164))) >> 1);
      }

      if ((v13 & 0x18) == 0)
      {
        v15 += 2 * v18;
LABEL_15:
        v85 = v13 - v18;
        v86 = &v17->i32[v18];
        v87 = &v16->i16[v18];
        do
        {
          v88 = *v87++;
          v89 = (v15[1] * (((v88 - (*v15 << 8)) * (v88 - (*v15 << 8))) >> 15)) << 8;
          v90 = *v86++;
          v14 += v89 >> v90;
          v15 += 2;
          --v85;
        }

        while (v85);
        return ((1 - (v14 >> *(a1 + 164))) >> 1);
      }
    }

    else
    {
      v18 = 0;
    }

    v68 = v18;
    v18 = v13 & 0xFFFFFFF8;
    v69 = 0uLL;
    v70 = v14;
    v71 = v68 - v18;
    v72 = (v17 + 4 * v68);
    v73 = 2 * v68;
    v74 = (v16 + 2 * v68);
    v75 = (v73 + v11 + v12 + 4);
    do
    {
      v76 = *v74++;
      *(&a11 - 8) = vld2_s8(v75);
      v75 += 16;
      v78 = vmovl_s8(v77);
      v79 = vsubq_s32(vmovl_s16(*v76.i8), vshll_n_s16(*v78.i8, 8uLL));
      v80 = vsubq_s32(vmovl_high_s16(v76), vshll_high_n_s16(v78, 8uLL));
      v81 = vshlq_n_s32(vmulq_s32(vqtbl1q_s8(a11, xmmword_223B132B0), vshrq_n_u32(vmulq_s32(v80, v80), 0xFuLL)), 8uLL);
      v82 = vshlq_n_s32(vmulq_s32(vqtbl1q_s8(a11, xmmword_223B132A0), vshrq_n_u32(vmulq_s32(v79, v79), 0xFuLL)), 8uLL);
      v84 = *v72;
      v83 = v72[1];
      v72 += 2;
      a11 = vnegq_s32(v84);
      v69 = vaddq_s32(vshlq_u32(v81, vnegq_s32(v83)), v69);
      v70 = vaddq_s32(vshlq_u32(v82, a11), v70);
      v71 += 8;
    }

    while (v71);
    v14 = vaddvq_s32(vaddq_s32(v70, v69));
    if (v18 != v13)
    {
      v15 += 2 * (v13 & 0xFFFFFFF8);
      goto LABEL_15;
    }
  }

  return ((1 - (v14 >> *(a1 + 164))) >> 1);
}

uint64_t NFastFixedGaussians<short,int,unsigned char>::score(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = (*(a1 + 232) * *a2);
  v5 = v3 + v4;
  v6 = *(a1 + 216);
  v7 = *(v3 + v4);
  if (v6)
  {
    v8 = *(a3 + 8);
    v9 = *(a1 + 208);
    if (v6 < 4)
    {
      v10 = 0;
      goto LABEL_15;
    }

    if (v6 >= 0x10)
    {
      v10 = v6 & 0xFFFFFFF0;
      v11 = 0uLL;
      v12 = *(v3 + v4);
      v13 = (v5 + 36);
      v14 = v9 + 2;
      v15 = v8 + 2;
      v16 = v10;
      v17 = 0uLL;
      v18 = 0uLL;
      do
      {
        v19 = v13 - 16;
        v20 = *v15[-2].i8;
        v50 = vld2q_s16(v19);
        v51 = vld2q_s16(v13);
        v21 = vsubl_s16(*v20.i8, *v50.val[0].i8);
        v22 = vsubl_high_s16(v20, v50.val[0]);
        v23 = vsubl_s16(*v15, *v51.val[0].i8);
        v24 = vsubl_high_s16(*v15->i8, v51.val[0]);
        v25 = vmull_high_u16(vuzp1q_s16(v11, vshrq_n_u32(vmulq_s32(v22, v22), 0xFuLL)), v50.val[1]);
        v50.val[0] = vmull_u16(vshrn_n_s32(vmulq_s32(v21, v21), 0xFuLL), *v50.val[1].i8);
        v26 = vmull_high_u16(vuzp1q_s16(v11, vshrq_n_u32(vmulq_s32(v24, v24), 0xFuLL)), v51.val[1]);
        v50.val[1] = vmull_u16(vshrn_n_s32(vmulq_s32(v23, v23), 0xFuLL), *v51.val[1].i8);
        v51.val[1] = v14[-2];
        v51.val[0] = v14[-1];
        v28 = *v14;
        v27 = v14[1];
        v14 += 4;
        v11 = vaddq_s32(vshlq_u32(v25, vnegq_s32(v51.val[0])), v11);
        v12 = vaddq_s32(vshlq_u32(v50.val[0], vnegq_s32(v51.val[1])), v12);
        v18 = vaddq_s32(vshlq_u32(v26, vnegq_s32(v27)), v18);
        v17 = vaddq_s32(vshlq_u32(v50.val[1], vnegq_s32(v28)), v17);
        v13 += 32;
        v15 += 4;
        v16 -= 16;
      }

      while (v16);
      v7 = vaddvq_s32(vaddq_s32(vaddq_s32(v17, v12), vaddq_s32(v18, v11)));
      if (v10 == v6)
      {
        return ((1 - (v7 >> *(a1 + 164))) >> 1);
      }

      if ((v6 & 0xC) == 0)
      {
        v5 += 4 * v10;
LABEL_15:
        v39 = v6 - v10;
        v40 = &v9->i32[v10];
        v41 = (v5 + 6);
        v42 = v8 + v10;
        do
        {
          v43 = *v42++;
          v44 = ((v43 - *(v41 - 1)) * (v43 - *(v41 - 1))) >> 15;
          v45 = *v41;
          v41 += 2;
          v46 = v44 * v45;
          v47 = *v40++;
          v7 += v46 >> v47;
          --v39;
        }

        while (v39);
        return ((1 - (v7 >> *(a1 + 164))) >> 1);
      }
    }

    else
    {
      v10 = 0;
    }

    v29 = v10;
    v10 = v6 & 0xFFFFFFFC;
    v30 = v7;
    v31 = v29 - v10;
    v32 = 4 * v29;
    v33 = (v9 + 4 * v29);
    v34 = (v8 + 2 * v29);
    v35 = (v32 + v3 + v4 + 4);
    do
    {
      v36 = *v34++;
      v49 = vld2_s16(v35);
      v35 += 8;
      v37 = vsubl_s16(v36, v49.val[0]);
      v38 = *v33++;
      v30 = vaddq_s32(vshlq_u32(vmull_u16(vshrn_n_s32(vmulq_s32(v37, v37), 0xFuLL), v49.val[1]), vnegq_s32(v38)), v30);
      v31 += 4;
    }

    while (v31);
    v7 = vaddvq_s32(v30);
    if (v10 != v6)
    {
      v5 += 4 * (v6 & 0xFFFFFFFC);
      goto LABEL_15;
    }
  }

  return ((1 - (v7 >> *(a1 + 164))) >> 1);
}

uint64_t NFastFixedGaussians<signed char,int,unsigned short>::score(uint64_t a1, _DWORD *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int32x4_t a11)
{
  v11 = *(a1 + 24);
  v12 = (*(a1 + 232) * *a2);
  v13 = *(a1 + 216);
  v14 = *(v11 + v12);
  if (v13)
  {
    v15 = (v11 + v12 + 4);
    v16 = *(a3 + 8);
    v17 = *(a1 + 208);
    if (v13 < 8)
    {
      v18 = 0;
      goto LABEL_15;
    }

    if (v13 >= 0x20)
    {
      v18 = v13 & 0xFFFFFFE0;
      v19 = *(v11 + v12);
      v20 = 0uLL;
      v21 = (v12 + v11 + 36);
      v22 = v17 + 4;
      v23 = v16 + 2;
      v24 = v18;
      v25 = 0uLL;
      a11 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      do
      {
        v30 = v21 - 32;
        v90 = vld2q_s8(v30);
        v91 = vld2q_s8(v21);
        v31 = v23[-2];
        v32 = v23[-1];
        v33 = vmovl_high_s16(v32);
        v34 = vmovl_high_s16(v31);
        v35 = *v23;
        v36 = v23[1];
        v23 += 4;
        v37 = vmovl_high_s16(v36);
        v38 = vmovl_high_s16(v35);
        v39 = vmovl_s8(*v90.val[0].i8);
        v40 = vmovl_high_s8(v90.val[0]);
        v41 = vmovl_s8(*v91.val[0].i8);
        v42 = vmovl_high_s8(v91.val[0]);
        v43 = vshll_high_n_s16(v39, 7uLL);
        v44 = vshll_high_n_s16(v42, 7uLL);
        v45 = vshll_high_n_s16(v41, 7uLL);
        v46 = vsubq_s32(vmovl_s16(*v31.i8), vshll_n_s16(*v39.i8, 7uLL));
        v47 = vsubq_s32(vmovl_s16(*v32.i8), vshll_n_s16(*v40.i8, 7uLL));
        v48 = vsubq_s32(v33, vshll_high_n_s16(v40, 7uLL));
        v49 = vsubq_s32(vmovl_s16(*v35.i8), vshll_n_s16(*v41.i8, 7uLL));
        v50 = vsubq_s32(vmovl_s16(*v36.i8), vshll_n_s16(*v42.i8, 7uLL));
        v51 = vqtbl1q_s8(v90.val[1], xmmword_223B132A0);
        v52 = vqtbl1q_s8(v90.val[1], xmmword_223B132B0);
        v53 = vqtbl1q_s8(v90.val[1], xmmword_223B132C0);
        v90.val[0] = vqtbl1q_s8(v90.val[1], xmmword_223B132D0);
        v90.val[1] = vqtbl1q_s8(v91.val[1], xmmword_223B132A0);
        v54 = vqtbl1q_s8(v91.val[1], xmmword_223B132B0);
        v55 = vqtbl1q_s8(v91.val[1], xmmword_223B132C0);
        v91.val[0] = vqtbl1q_s8(v91.val[1], xmmword_223B132D0);
        v91.val[1] = vmulq_s32(v47, v53);
        v56 = vshrq_n_s32(vmulq_s32(v46, v51), 7uLL);
        v57 = vshrq_n_s32(vmulq_s32(vsubq_s32(v34, v43), v52), 7uLL);
        v91.val[1] = vshrq_n_s32(v91.val[1], 7uLL);
        v90.val[0] = vshrq_n_s32(vmulq_s32(v48, v90.val[0]), 7uLL);
        v90.val[1] = vshrq_n_s32(vmulq_s32(v49, v90.val[1]), 7uLL);
        v58 = vshrq_n_s32(vmulq_s32(vsubq_s32(v38, v45), v54), 7uLL);
        v59 = vshrq_n_s32(vmulq_s32(v50, v55), 7uLL);
        v91.val[0] = vshrq_n_s32(vmulq_s32(vsubq_s32(v37, v44), v91.val[0]), 7uLL);
        v61 = v22[-2];
        v60 = v22[-1];
        v63 = v22[-4];
        v62 = v22[-3];
        v65 = v22[2];
        v64 = v22[3];
        v67 = *v22;
        v66 = v22[1];
        v22 += 8;
        a11 = vaddq_s32(vshlq_u32(vmulq_s32(v90.val[0], v90.val[0]), vnegq_s32(v60)), a11);
        v25 = vaddq_s32(vshlq_u32(vmulq_s32(v91.val[1], v91.val[1]), vnegq_s32(v61)), v25);
        v20 = vaddq_s32(vshlq_u32(vmulq_s32(v57, v57), vnegq_s32(v62)), v20);
        v19 = vaddq_s32(vshlq_u32(vmulq_s32(v56, v56), vnegq_s32(v63)), v19);
        v29 = vaddq_s32(vshlq_u32(vmulq_s32(v91.val[0], v91.val[0]), vnegq_s32(v64)), v29);
        v21 += 64;
        v28 = vaddq_s32(vshlq_u32(vmulq_s32(v59, v59), vnegq_s32(v65)), v28);
        v27 = vaddq_s32(vshlq_u32(vmulq_s32(v58, v58), vnegq_s32(v66)), v27);
        v26 = vaddq_s32(vshlq_u32(vmulq_s32(v90.val[1], v90.val[1]), vnegq_s32(v67)), v26);
        v24 -= 32;
      }

      while (v24);
      v14 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v26, v19), vaddq_s32(v28, v25)), vaddq_s32(vaddq_s32(v27, v20), vaddq_s32(v29, a11))));
      if (v18 == v13)
      {
        return ((1 - (v14 >> *(a1 + 164))) >> 1);
      }

      if ((v13 & 0x18) == 0)
      {
        v15 += 2 * v18;
LABEL_15:
        v83 = v13 - v18;
        v84 = &v17->i32[v18];
        v85 = &v16->i16[v18];
        do
        {
          v86 = *v85++;
          v87 = ((v86 - (*v15 << 7)) * v15[1]) >> 7;
          v88 = *v84++;
          v14 += (v87 * v87) >> v88;
          v15 += 2;
          --v83;
        }

        while (v83);
        return ((1 - (v14 >> *(a1 + 164))) >> 1);
      }
    }

    else
    {
      v18 = 0;
    }

    v68 = v18;
    v18 = v13 & 0xFFFFFFF8;
    v69 = 0uLL;
    v70 = v14;
    v71 = v68 - v18;
    v72 = (v17 + 4 * v68);
    v73 = 2 * v68;
    v74 = (v16 + 2 * v68);
    v75 = (v73 + v11 + v12 + 4);
    do
    {
      v76 = *v74++;
      *(&a11 - 8) = vld2_s8(v75);
      v75 += 16;
      v78 = vmovl_s8(v77);
      v79 = vshrq_n_s32(vmulq_s32(vsubq_s32(vmovl_s16(*v76.i8), vshll_n_s16(*v78.i8, 7uLL)), vqtbl1q_s8(a11, xmmword_223B132A0)), 7uLL);
      v80 = vshrq_n_s32(vmulq_s32(vsubq_s32(vmovl_high_s16(v76), vshll_high_n_s16(v78, 7uLL)), vqtbl1q_s8(a11, xmmword_223B132B0)), 7uLL);
      v82 = *v72;
      v81 = v72[1];
      v72 += 2;
      a11 = vnegq_s32(v82);
      v69 = vaddq_s32(vshlq_u32(vmulq_s32(v80, v80), vnegq_s32(v81)), v69);
      v70 = vaddq_s32(vshlq_u32(vmulq_s32(v79, v79), a11), v70);
      v71 += 8;
    }

    while (v71);
    v14 = vaddvq_s32(vaddq_s32(v70, v69));
    if (v18 != v13)
    {
      v15 += 2 * (v13 & 0xFFFFFFF8);
      goto LABEL_15;
    }
  }

  return ((1 - (v14 >> *(a1 + 164))) >> 1);
}

void sub_223A99F0C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t __deviceReportCallback()
{
  v0 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_223A31000, v0, OS_LOG_TYPE_DEFAULT, "Posting HID device report received (Indicating VT first pass triggered in remote darwin)", v2, 2u);
  }

  return notify_post("com.apple.voicetrigger.RemoteDarwin.EarlyDetect");
}

uint64_t __deviceCallback(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    v3 = @"Connected";
    if (!a1)
    {
      v3 = @"Disconnected";
    }

    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_223A31000, v2, OS_LOG_TYPE_DEFAULT, "Posting HID device connection changed : %{public}@", &v5, 0xCu);
  }

  return notify_post("com.apple.voicetrigger.RemoteDarwin.ConnectionChanged");
}

void NBaseFile::writeString(NBaseFile *this, const NString *a2)
{
  v2 = &unk_28370A720;
  v3 = 0;
  operator new[]();
}

void sub_223A9A898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    MEMORY[0x223DF1D00](a15, v15);
  }

  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_223A9A9E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NArray<void *>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<void *>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x80C80B8603338);
      v5 = *a3;
    }

    *(v3 + 16) = v5;
    operator new[]();
  }

  if (v4)
  {
    v8 = 0;
    v9 = 8 * *(result + 16);
    do
    {
      *(*(result + 8) + v8) = *(a2 + v8);
      v8 += 8;
    }

    while (v9 != v8);
  }

  return result;
}

uint64_t NArray<void *>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 16);
    v4 = *(a2 + 16);
    if (v3 != v4)
    {
      if (*(result + 8))
      {
        v5 = result;
        MEMORY[0x223DF1D00](*(result + 8), 0x80C80B8603338);
        result = v5;
        v4 = *(a2 + 16);
      }

      *(result + 16) = v4;
      operator new[]();
    }

    if (v3)
    {
      v6 = 0;
      do
      {
        *(*(result + 8) + v6) = *(*(a2 + 8) + v6);
        v6 += 8;
      }

      while (8 * v3 != v6);
    }
  }

  return result;
}

void *NArray<void *>::~NArray(void *result)
{
  *result = &unk_2837085C0;
  if (result[1])
  {
    v1 = result;
    MEMORY[0x223DF1D00](result[1], 0x80C80B8603338);
    return v1;
  }

  return result;
}

uint64_t NDeepnetDistribution::forwardComputeFixed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x28223BE20](a1);
  result = MEMORY[0x28223BE20](v5);
  v10 = (v53 - v9);
  v11 = *(result + 12);
  if (v11)
  {
    v12 = *(v7 + 8);
    v13 = *(a1 + 216);
    if (v11 >= 4)
    {
      v15 = vdupq_n_s32(0x46FFFE00u);
      v14 = v11 & 0xFFFFFFFC;
      v16.i64[0] = 0xC7000000C7000000;
      v16.i64[1] = 0xC7000000C7000000;
      v17 = *(v7 + 8);
      v18 = *(a1 + 216);
      v19 = v10;
      v20 = v14;
      do
      {
        v21 = *v17++;
        v22 = v21;
        v23 = *v18++;
        v24 = vmulq_f32(v22, v23);
        v25 = vbslq_s8(vcgtq_f32(v24, v15), v15, v24);
        v26 = vbslq_s8(vcgtq_f32(v16, v25), v16, v25);
        *v19++ = vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v26.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v26, v26, 8uLL)))));
        v20 -= 4;
      }

      while (v20);
      if (v14 == v11)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v14 = 0;
    }

    v27 = v11 - v14;
    v28 = 4 * v14;
    v29 = &v10->i8[4 * v14];
    v30 = (v13 + v28);
    v31 = (v12 + v28);
    do
    {
      v32 = *v31++;
      v33 = v32;
      v34 = *v30++;
      v35 = v33 * v34;
      if (v35 > 32767.0)
      {
        v35 = 32767.0;
      }

      if (v35 < -32768.0)
      {
        v35 = -32768.0;
      }

      *v29 = rintf(v35);
      v29 += 4;
      --v27;
    }

    while (v27);
  }

LABEL_13:
  v36 = *(a1 + 48);
  if (!v36)
  {
    v39 = v10;
    v40 = *(a1 + 8);
    if (!v40)
    {
      return result;
    }

LABEL_20:
    v41 = *(a3 + 8);
    if (v40 >= 8)
    {
      v42 = v40 & 0xFFFFFFF8;
      v43 = v41 + 1;
      v44 = v39 + 1;
      v45.i64[0] = 0x3800000038000000;
      v45.i64[1] = 0x3800000038000000;
      v46 = v42;
      do
      {
        v47 = vmulq_f32(vcvtq_f32_s32(*v44), v45);
        v43[-1] = vmulq_f32(vcvtq_f32_s32(v44[-1]), v45);
        *v43 = v47;
        v43 += 2;
        v44 += 2;
        v46 -= 8;
      }

      while (v46);
      if (v42 == v40)
      {
        return result;
      }
    }

    else
    {
      v42 = 0;
    }

    v48 = v40 - v42;
    v49 = v42;
    v50 = &v41->f32[v49];
    v51 = &v39->i32[v49];
    do
    {
      v52 = *v51++;
      *v50++ = v52 * 0.000030518;
      --v48;
    }

    while (v48);
    return result;
  }

  v37 = 8;
  do
  {
    v38 = *(*(a1 + 40) + v37);
    if (!v38)
    {
      Error::chuck("NSmartPointer::checkptr() - pointer unset", v7);
    }

    v39 = v8;
    result = (*(*v38 + 32))(v38, v10, v8);
    v37 += 16;
    v8 = v10;
    v10 = v39;
    --v36;
  }

  while (v36);
  v40 = *(a1 + 8);
  if (v40)
  {
    goto LABEL_20;
  }

  return result;
}

void NDeepnetDistribution::read(NDeepnetDistribution *this, const NString *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  LODWORD(v11) = 0;
  NArray<NLayer>::resize(this + 32, &v11);
  v4 = *(this + 7);
  LODWORD(v11) = 0;
  (*(v4 + 64))(this + 56, "", &v11);
  *(this + 24) = 0;
  *(this + 13) = 0;
  v5 = *(this + 36);
  if (v5)
  {
    munmap(*(this + 19), v5);
  }

  *(this + 36) = 0;
  *(this + 19) = 0;
  LODWORD(v11) = 0;
  (*(*(this + 14) + 64))(this + 112, "", &v11);
  v6 = *(a2 + 2);
  if (v6 >= 7)
  {
    v7 = *(a2 + 2);
    v8 = *v7;
    v9 = *(v7 + 3);
    if (v8 == 1684957549 && v9 == 980968804)
    {
      goto LABEL_12;
    }
  }

  else if (v6 < 4)
  {
LABEL_11:
    v11 = &unk_28370A720;
    v12 = 1;
    operator new[]();
  }

  if (**(a2 + 2) != 980443501)
  {
    goto LABEL_11;
  }

LABEL_12:
  NLoadedMemory::load((this + 88), a2);
  NDeepnetDistribution::mapFromMemory(this, *(this + 13), this + 24, *(a2 + 2));
}

void sub_223A9C1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (a24)
  {
    MEMORY[0x223DF1D00](a24, 0x1000C8052888210);
  }

  if (a30)
  {
    MEMORY[0x223DF1D00](a30, 0x1000C8077774924);
  }

  *(v30 - 160) = a17;
  v32 = *(v30 - 152);
  if (v32)
  {
    MEMORY[0x223DF1D00](v32, 0x1000C8052888210);
  }

  *(v30 - 136) = &unk_28370A720;
  v33 = *(v30 - 120);
  if (v33)
  {
    MEMORY[0x223DF1D00](v33, 0x1000C8077774924);
  }

  *(v30 - 112) = &unk_28370AA90;
  v34 = *(v30 - 104);
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  _Unwind_Resume(exception_object);
}

void NFixedPointSigmoidTable::initialize(NFixedPointSigmoidTable *this, const unsigned int *a2, const float *a3, float a4)
{
  v4 = a2;
  *this = a4;
  *(this + 1) = a2;
  v6 = a4 / a2;
  *(this + 2) = v6;
  v8 = logf(v6) / -0.69315;
  v9 = (v8 + 0.5);
  *(this + 3) = v9;
  if (vabds_f32(v8, v9) > 0.0001)
  {
    Error::chuck("NFixedPointSigmoidTable::initialize() - scale is not a power of 2", v7);
  }

  if (*(this + 8) != v4)
  {
    *(this + 8) = v4;
    operator new[]();
  }

  if (v4)
  {
    v10 = -*(this + 2);
    v11 = *(this + 3);
    v12 = v4;
    v36 = v10;
    if (v4 < 8)
    {
      for (i = 0; i != v12; ++i)
      {
LABEL_10:
        v26 = expf(i * v10);
        v10 = v36;
        v27 = 1.0 / (v26 + 1.0);
        v11->i16[i] = rintf(v27 * 32767.0);
      }

      return;
    }

    i = v4 & 0xFFFFFFF8;
    v14 = xmmword_223B132E0;
    v15 = xmmword_223B13270;
    __asm { FMOV            V4.2D, #1.0 }

    v28 = vdupq_n_s32(0x46FFFE00u);
    v29 = _Q4;
    v21 = v11;
    v22 = v12 & 0xFFFFFFF8;
    do
    {
      v37 = v15;
      v38 = v14;
      v39 = vmulq_n_f32(vcvtq_f32_u32(v14), v10);
      v40 = vmulq_n_f32(vcvtq_f32_u32(v15), v10);
      v35 = expf(v39.f32[0]);
      v34 = expf(v39.f32[1]);
      v33 = expf(v39.f32[2]);
      v39.i32[0] = expf(v39.f32[3]);
      v32 = expf(v40.f32[0]);
      v30 = expf(v40.f32[1]);
      v31 = expf(v40.f32[2]);
      v23 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v29, vaddq_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(v30), LODWORD(v32))), v29))), vdivq_f64(v29, vaddq_f64(vcvtq_f64_f32(__PAIR64__(COERCE_UNSIGNED_INT(expf(v40.f32[3])), LODWORD(v31))), v29))), v28);
      v24 = vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v29, vaddq_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(v34), LODWORD(v35))), v29))), vdivq_f64(v29, vaddq_f64(vcvtq_f64_f32(__PAIR64__(v39.u32[0], LODWORD(v33))), v29))), v28);
      v10 = v36;
      *v21++ = vuzp1q_s16(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v23.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v23, v23, 8uLL))))), vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v24.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v24, v24, 8uLL))))));
      v25.i64[0] = 0x800000008;
      v25.i64[1] = 0x800000008;
      v15 = vaddq_s32(v37, v25);
      v14 = vaddq_s32(v38, v25);
      v22 -= 8;
    }

    while (v22);
    if (i != v12)
    {
      goto LABEL_10;
    }
  }
}

void NFixedPointLogaddTable::initialize(NFixedPointLogaddTable *this, const unsigned int *a2, const float *a3, float a4)
{
  v4 = a2;
  *this = a4;
  *(this + 1) = a2;
  v6 = a4 / a2;
  v8 = logf(v6) / -0.69315;
  v9 = (v8 + 0.5);
  if (vabds_f32(v8, v9) > 0.0001)
  {
    Error::chuck("NFixedPointLogaddTable::initialize() - scale is not a power of 2", v7);
  }

  *(this + 2) = 2.0 / v6;
  *(this + 3) = v9 + 1;
  if (*(this + 8) != v4)
  {
    *(this + 8) = v4;
    operator new[]();
  }

  if (v4)
  {
    v10 = -v6;
    v51 = *(this + 2);
    v11 = *(this + 3);
    v12 = v4;
    if (v4 < 8)
    {
      for (i = 0; i != v12; ++i)
      {
LABEL_10:
        v47 = expf(v10 * i);
        v48 = logf(v47 + 1.0);
        v10 = -v6;
        v11->i16[i] = ((v48 * v51) + 0.5);
      }

      return;
    }

    i = v4 & 0xFFFFFFF8;
    v14 = xmmword_223B132E0;
    v15 = xmmword_223B13270;
    __asm
    {
      FMOV            V4.4S, #1.0
      FMOV            V3.2D, #0.5
    }

    v49 = _Q3;
    v50 = _Q4;
    v22 = v11;
    v23 = v12 & 0xFFFFFFF8;
    do
    {
      v52 = v15;
      v53 = v14;
      v60 = vmulq_n_f32(vcvtq_f32_u32(v14), v10);
      v54 = vmulq_n_f32(vcvtq_f32_u32(v15), v10);
      v62 = expf(v54.f32[1]);
      v24.f32[0] = expf(v54.f32[0]);
      v24.f32[1] = v62;
      v63 = v24;
      v25 = expf(v54.f32[2]);
      v26 = v63;
      v26.f32[2] = v25;
      v64 = v26;
      v27 = expf(v54.f32[3]);
      v28 = v64;
      v28.f32[3] = v27;
      v65 = v28;
      v54.i32[0] = expf(v60.f32[1]);
      v29.f32[0] = expf(v60.f32[0]);
      v29.i32[1] = v54.i32[0];
      v55 = v29;
      v30 = expf(v60.f32[2]);
      v31 = v55;
      v31.f32[2] = v30;
      v56 = v31;
      v32 = expf(v60.f32[3]);
      v33 = v56;
      v33.f32[3] = v32;
      v61 = vaddq_f32(v33, v50);
      v57 = vaddq_f32(v65, v50);
      v65.i32[0] = logf(v57.f32[1]);
      v34.f32[0] = logf(v57.f32[0]);
      v34.i32[1] = v65.i32[0];
      v66 = v34;
      v35 = logf(v57.f32[2]);
      v36 = v66;
      v36.f32[2] = v35;
      v67 = v36;
      v37 = logf(v57.f32[3]);
      v38 = v67;
      v38.f32[3] = v37;
      v68 = v38;
      v57.i32[0] = logf(v61.f32[1]);
      v39.f32[0] = logf(v61.f32[0]);
      v39.i32[1] = v57.i32[0];
      v58 = v39;
      v40 = logf(v61.f32[2]);
      v41 = v58;
      v41.f32[2] = v40;
      v59 = v41;
      v42 = logf(v61.f32[3]);
      v43 = v59;
      v43.f32[3] = v42;
      v44 = vmulq_n_f32(v43, v51);
      v45 = vmulq_n_f32(v68, v51);
      v69.val[0].i64[1] = *&v49.f64[1];
      *v69.val[1].i8 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vcvt_hight_f64_f32(v45), v49)));
      *v69.val[3].i8 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vcvt_hight_f64_f32(v44), v49)));
      *v69.val[0].i8 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vcvtq_f64_f32(*v45.f32), v49)));
      *v69.val[2].i8 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vcvtq_f64_f32(*v44.f32), v49)));
      *v22++ = vqtbl4q_s8(v69, xmmword_223B132F0);
      v10 = -v6;
      v46.i64[0] = 0x800000008;
      v46.i64[1] = 0x800000008;
      v15 = vaddq_s32(v52, v46);
      v14 = vaddq_s32(v53, v46);
      v23 -= 8;
    }

    while (v23);
    if (i != v12)
    {
      goto LABEL_10;
    }
  }
}

void Nfp16AMPalettizedLayer::compute(Nfp16AMPalettizedLayer *this, float *a2, float16x8_t *a3, void *a4)
{
  v77 = *MEMORY[0x277D85DE8];
  v5 = *(this + 3);
  if (!v5)
  {
    Error::chuck("Nfp16AMPalettizedLayer::compute() - Layer uninitialized", a2, 0, a4);
  }

  v6 = *(this + 3);
  v7 = (2 * *(this + 2));
  v8 = (2 * v6);
  if (v8 == 64 && v7 == 64)
  {

    _ZN12accelerateml53AccelerateMLFullyConnected_InOutBiasFP16_WeightsUINT4ILm64ELm64ELm64ELm64EL39AccelerateMLFullyConnectedWeightsLayout2ELm1ELb0EXtl32AccelerateMLActivationDescriptorEEEEiPDF16_PKDF16_PKhS5_(a3, a2, v5);
    return;
  }

  if (v8 == 64 && v7 == 248)
  {

    _ZN12accelerateml53AccelerateMLFullyConnected_InOutBiasFP16_WeightsUINT4ILm64ELm64ELm248ELm248EL39AccelerateMLFullyConnectedWeightsLayout2ELm1ELb0EXtl32AccelerateMLActivationDescriptorEEEEiPDF16_PKDF16_PKhS5_(a3, a2, v5);
    return;
  }

  if (v8 == 48 && v7 == 64)
  {

    _ZN12accelerateml53AccelerateMLFullyConnected_InOutBiasFP16_WeightsUINT4ILm48ELm48ELm64ELm64EL39AccelerateMLFullyConnectedWeightsLayout2ELm1ELb0EXtl32AccelerateMLActivationDescriptorEEEEiPDF16_PKDF16_PKhS5_(a3, a2, v5);
    return;
  }

  v10 = a3;
  v11 = *(this + 3);
  bzero(a3, 2 * (2 * v6));
  v16 = *v11;
  v17 = v11[1];
  if ((v6 & 7) != 0)
  {
    v76[0] = vzip1q_s8(v16, v17);
    v76[1] = vzip2q_s8(v16, v17);
  }

  if (v8 && v7)
  {
    v18 = 0;
    v19 = v11 + 2;
    v20.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v20.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v21 = 2 * v6;
    do
    {
      v22 = 0;
      v23 = v21 - 64;
      if (v21 >= 0x40)
      {
        LOBYTE(v21) = 64;
      }

      v24 = (((v21 & 0x70) - 1) & 0xFFFFFFF0) + 16;
      v25 = v8 - v18;
      if ((v8 - v18) >= 0x40)
      {
        v25 = 64;
      }

      v26 = v25 & 0x70;
      v27 = &v10[v18 / 8];
      do
      {
        v28 = &a2[v22 / 2];
        v29 = *v28;
        v30 = v28[1];
        if ((v25 & 0x70) != 0)
        {
          v31 = vandq_s8(*v19, v20);
          v32 = vshrq_n_u8(*v19, 4uLL);
          v33 = vqtbl1q_s8(v16, v31);
          v34 = vqtbl1q_s8(v17, v31);
          v35 = vqtbl1q_s8(v16, v32);
          v36 = vqtbl1q_s8(v17, v32);
          v37 = vzip1q_s8(v33, v34);
          v38 = vzip2q_s8(v33, v34);
          v14 = vaddq_f16(vmulq_n_f16(v37, v29), vmulq_n_f16(vzip1q_s8(v35, v36), v30));
          v39 = vaddq_f16(vmulq_n_f16(v38, v29), vmulq_n_f16(vzip2q_s8(v35, v36), v30));
          v15 = v27[1];
          v13 = vaddq_f16(*v27, v14);
          v12 = vaddq_f16(v15, v39);
          *v27 = v13;
          v27[1] = v12;
          if (v26 <= 0x10)
          {
            v70 = v24;
            v71 = v27 + 2;
            ++v19;
            if ((v25 & 8) == 0)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v40 = v19[1];
            v41 = vandq_s8(v40, v20);
            v42 = vshrq_n_u8(v40, 4uLL);
            v43 = vqtbl1q_s8(v16, v41);
            v44 = vqtbl1q_s8(v17, v41);
            v45 = vqtbl1q_s8(v16, v42);
            v46 = vqtbl1q_s8(v17, v42);
            v47 = vzip1q_s8(v43, v44);
            v48 = vzip2q_s8(v43, v44);
            v14 = vaddq_f16(vmulq_n_f16(v47, v29), vmulq_n_f16(vzip1q_s8(v45, v46), v30));
            v49 = vaddq_f16(vmulq_n_f16(v48, v29), vmulq_n_f16(vzip2q_s8(v45, v46), v30));
            v15 = v27[3];
            v13 = vaddq_f16(v27[2], v14);
            v12 = vaddq_f16(v15, v49);
            v27[2] = v13;
            v27[3] = v12;
            if (v26 < 0x21)
            {
              v19 += 2;
              v70 = v24;
              v71 = v27 + 4;
              if ((v25 & 8) == 0)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v50 = v19[2];
              v51 = vandq_s8(v50, v20);
              v52 = vshrq_n_u8(v50, 4uLL);
              v53 = vqtbl1q_s8(v16, v51);
              v54 = vqtbl1q_s8(v17, v51);
              v55 = vqtbl1q_s8(v16, v52);
              v56 = vqtbl1q_s8(v17, v52);
              v57 = vzip1q_s8(v53, v54);
              v58 = vzip2q_s8(v53, v54);
              v14 = vaddq_f16(vmulq_n_f16(v57, v29), vmulq_n_f16(vzip1q_s8(v55, v56), v30));
              v59 = vaddq_f16(vmulq_n_f16(v58, v29), vmulq_n_f16(vzip2q_s8(v55, v56), v30));
              v15 = v27[5];
              v13 = vaddq_f16(v27[4], v14);
              v12 = vaddq_f16(v15, v59);
              v27[4] = v13;
              v27[5] = v12;
              if (v26 < 0x31)
              {
                v19 += 3;
                v70 = v24;
                v71 = v27 + 6;
                if ((v25 & 8) == 0)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v60 = v19[3];
                v61 = vandq_s8(v60, v20);
                v62 = vshrq_n_u8(v60, 4uLL);
                v63 = vqtbl1q_s8(v16, v61);
                v64 = vqtbl1q_s8(v17, v61);
                v65 = vqtbl1q_s8(v16, v62);
                v66 = vqtbl1q_s8(v17, v62);
                v67 = vzip1q_s8(v63, v64);
                v68 = vzip2q_s8(v63, v64);
                v14 = vaddq_f16(vmulq_n_f16(v67, v29), vmulq_n_f16(vzip1q_s8(v65, v66), v30));
                v69 = vaddq_f16(vmulq_n_f16(v68, v29), vmulq_n_f16(vzip2q_s8(v65, v66), v30));
                v15 = v27[7];
                v13 = vaddq_f16(v27[6], v14);
                v12 = vaddq_f16(v15, v69);
                v27[6] = v13;
                v27[7] = v12;
                v19 += 4;
                v70 = v24;
                v71 = v27 + 8;
                if ((v25 & 8) == 0)
                {
                  goto LABEL_42;
                }
              }
            }
          }
        }

        else
        {
          v70 = 0;
          v71 = &v10[v18 / 8];
          if ((v25 & 8) == 0)
          {
            goto LABEL_42;
          }
        }

        v72 = *v19->i8;
        v19 = (v19 + 8);
        *v13.i8 = vand_s8(v72, 0xF0F0F0F0F0F0F0FLL);
        *v12.i8 = vshr_n_u8(v72, 4uLL);
        *v14.i8 = vqtbl1_s8(v16, *v13.i8);
        *v13.i8 = vqtbl1_s8(v17, *v13.i8);
        *v15.i8 = vqtbl1_s8(v16, *v12.i8);
        *v12.i8 = vqtbl1_s8(v17, *v12.i8);
        v73 = vaddq_f16(vmulq_n_f16(vzip1q_s8(v14, v13), v29), vmulq_n_f16(vzip1q_s8(v15, v12), v30));
        v13 = *v71;
        v12 = vaddq_f16(*v71, v73);
        *v71++ = v12;
        v70 |= 8u;
LABEL_42:
        while (v70 < v25)
        {
          v74 = v19->u16[0];
          v19 = (v19 + 2);
          v75 = (v30 * *(v76 + (v74 >> 12))) + (*(v76 + ((v74 >> 8) & 0xF)) * v29);
          *v71->i16 = ((v30 * *(v76 + (v74 >> 4))) + (*(v76 + (v74 & 0xF)) * v29)) + *v71->i16;
          *&v71->i16[1] = v75 + *&v71->i16[1];
          v71 = (v71 + 4);
          v70 += 2;
        }

        v22 += 2;
      }

      while (v22 < v7);
      v18 += 64;
      v21 = v23;
    }

    while (v18 < v8);
  }
}

float16x8_t *_ZN12accelerateml53AccelerateMLFullyConnected_InOutBiasFP16_WeightsUINT4ILm64ELm64ELm64ELm64EL39AccelerateMLFullyConnectedWeightsLayout2ELm1ELb0EXtl32AccelerateMLActivationDescriptorEEEEiPDF16_PKDF16_PKhS5_(float16x8_t *result, __int32 *a2, int8x16_t *a3)
{
  v3 = a3 + 2;
  v4.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v4.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v5 = *a3;
  v6 = a3[1];
  v7 = 32;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  do
  {
    v17 = *v3;
    v16 = v3 + 1;
    v18 = vandq_s8(v17, v4);
    v19 = vshrq_n_u8(v17, 4uLL);
    v20 = vqtbl1q_s8(v5, v18);
    v21 = vqtbl1q_s8(v6, v18);
    v22 = *v16++;
    v23 = vqtbl1q_s8(v5, v19);
    v24 = vqtbl1q_s8(v6, v19);
    v25 = vzip1q_s8(v20, v21);
    v26 = vzip2q_s8(v20, v21);
    v27 = vzip1q_s8(v23, v24);
    v28 = vzip2q_s8(v23, v24);
    v29 = vandq_s8(v22, v4);
    v30 = vshrq_n_u8(v22, 4uLL);
    v31 = vqtbl1q_s8(v5, v29);
    v32 = vqtbl1q_s8(v6, v29);
    v33 = *v16++;
    v34 = vqtbl1q_s8(v5, v30);
    v35 = vqtbl1q_s8(v6, v30);
    v36 = vzip1q_s8(v31, v32);
    v37 = vzip2q_s8(v31, v32);
    v38 = vzip1q_s8(v34, v35);
    v39 = vzip2q_s8(v34, v35);
    v40 = vandq_s8(v33, v4);
    v41 = vshrq_n_u8(v33, 4uLL);
    v42 = vqtbl1q_s8(v5, v40);
    v43 = vqtbl1q_s8(v6, v40);
    v44 = *v16;
    v3 = v16 + 1;
    v45 = vqtbl1q_s8(v5, v41);
    v46 = vqtbl1q_s8(v6, v41);
    v47 = vzip1q_s8(v42, v43);
    v48 = vzip2q_s8(v42, v43);
    v49 = vzip1q_s8(v45, v46);
    v50 = vzip2q_s8(v45, v46);
    v51 = vandq_s8(v44, v4);
    v52 = vshrq_n_u8(v44, 4uLL);
    v53 = vqtbl1q_s8(v5, v51);
    v54 = vqtbl1q_s8(v6, v51);
    v44.i32[0] = *a2++;
    v51.i32[0] = v44.i32[0];
    v55 = vqtbl1q_s8(v5, v52);
    v56 = vqtbl1q_s8(v6, v52);
    v8 = vmlaq_lane_f16(vmlaq_n_f16(v8, v25, *v44.i16), v27, *v51.i8, 1);
    v9 = vmlaq_lane_f16(vmlaq_n_f16(v9, v26, *v44.i16), v28, *v51.i8, 1);
    v10 = vmlaq_lane_f16(vmlaq_n_f16(v10, v36, *v44.i16), v38, *v51.i8, 1);
    v11 = vmlaq_lane_f16(vmlaq_n_f16(v11, v37, *v44.i16), v39, *v51.i8, 1);
    v12 = vmlaq_lane_f16(vmlaq_n_f16(v12, v47, *v44.i16), v49, *v51.i8, 1);
    v13 = vmlaq_lane_f16(vmlaq_n_f16(v13, v48, *v44.i16), v50, *v51.i8, 1);
    v14 = vmlaq_lane_f16(vmlaq_n_f16(v14, vzip1q_s8(v53, v54), *v44.i16), vzip1q_s8(v55, v56), *v51.i8, 1);
    v15 = vmlaq_lane_f16(vmlaq_n_f16(v15, vzip2q_s8(v53, v54), *v44.i16), vzip2q_s8(v55, v56), *v51.i8, 1);
  }

  while (v7-- > 1);
  *result = v8;
  result[1] = v9;
  result[2] = v10;
  result[3] = v11;
  result[4] = v12;
  result[5] = v13;
  result[6] = v14;
  result[7] = v15;
  return result;
}

float16x8_t *_ZN12accelerateml53AccelerateMLFullyConnected_InOutBiasFP16_WeightsUINT4ILm64ELm64ELm248ELm248EL39AccelerateMLFullyConnectedWeightsLayout2ELm1ELb0EXtl32AccelerateMLActivationDescriptorEEEEiPDF16_PKDF16_PKhS5_(float16x8_t *result, __int32 *a2, int8x16_t *a3)
{
  v3 = a3 + 2;
  v4.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v4.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v5 = *a3;
  v6 = a3[1];
  v7 = 124;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  do
  {
    v17 = *v3;
    v16 = v3 + 1;
    v18 = vandq_s8(v17, v4);
    v19 = vshrq_n_u8(v17, 4uLL);
    v20 = vqtbl1q_s8(v5, v18);
    v21 = vqtbl1q_s8(v6, v18);
    v22 = *v16++;
    v23 = vqtbl1q_s8(v5, v19);
    v24 = vqtbl1q_s8(v6, v19);
    v25 = vzip1q_s8(v20, v21);
    v26 = vzip2q_s8(v20, v21);
    v27 = vzip1q_s8(v23, v24);
    v28 = vzip2q_s8(v23, v24);
    v29 = vandq_s8(v22, v4);
    v30 = vshrq_n_u8(v22, 4uLL);
    v31 = vqtbl1q_s8(v5, v29);
    v32 = vqtbl1q_s8(v6, v29);
    v33 = *v16++;
    v34 = vqtbl1q_s8(v5, v30);
    v35 = vqtbl1q_s8(v6, v30);
    v36 = vzip1q_s8(v31, v32);
    v37 = vzip2q_s8(v31, v32);
    v38 = vzip1q_s8(v34, v35);
    v39 = vzip2q_s8(v34, v35);
    v40 = vandq_s8(v33, v4);
    v41 = vshrq_n_u8(v33, 4uLL);
    v42 = vqtbl1q_s8(v5, v40);
    v43 = vqtbl1q_s8(v6, v40);
    v44 = *v16;
    v3 = v16 + 1;
    v45 = vqtbl1q_s8(v5, v41);
    v46 = vqtbl1q_s8(v6, v41);
    v47 = vzip1q_s8(v42, v43);
    v48 = vzip2q_s8(v42, v43);
    v49 = vzip1q_s8(v45, v46);
    v50 = vzip2q_s8(v45, v46);
    v51 = vandq_s8(v44, v4);
    v52 = vshrq_n_u8(v44, 4uLL);
    v53 = vqtbl1q_s8(v5, v51);
    v54 = vqtbl1q_s8(v6, v51);
    v44.i32[0] = *a2++;
    v51.i32[0] = v44.i32[0];
    v55 = vqtbl1q_s8(v5, v52);
    v56 = vqtbl1q_s8(v6, v52);
    v8 = vmlaq_lane_f16(vmlaq_n_f16(v8, v25, *v44.i16), v27, *v51.i8, 1);
    v9 = vmlaq_lane_f16(vmlaq_n_f16(v9, v26, *v44.i16), v28, *v51.i8, 1);
    v10 = vmlaq_lane_f16(vmlaq_n_f16(v10, v36, *v44.i16), v38, *v51.i8, 1);
    v11 = vmlaq_lane_f16(vmlaq_n_f16(v11, v37, *v44.i16), v39, *v51.i8, 1);
    v12 = vmlaq_lane_f16(vmlaq_n_f16(v12, v47, *v44.i16), v49, *v51.i8, 1);
    v13 = vmlaq_lane_f16(vmlaq_n_f16(v13, v48, *v44.i16), v50, *v51.i8, 1);
    v14 = vmlaq_lane_f16(vmlaq_n_f16(v14, vzip1q_s8(v53, v54), *v44.i16), vzip1q_s8(v55, v56), *v51.i8, 1);
    v15 = vmlaq_lane_f16(vmlaq_n_f16(v15, vzip2q_s8(v53, v54), *v44.i16), vzip2q_s8(v55, v56), *v51.i8, 1);
  }

  while (v7-- > 1);
  *result = v8;
  result[1] = v9;
  result[2] = v10;
  result[3] = v11;
  result[4] = v12;
  result[5] = v13;
  result[6] = v14;
  result[7] = v15;
  return result;
}

float16x8_t *_ZN12accelerateml53AccelerateMLFullyConnected_InOutBiasFP16_WeightsUINT4ILm48ELm48ELm64ELm64EL39AccelerateMLFullyConnectedWeightsLayout2ELm1ELb0EXtl32AccelerateMLActivationDescriptorEEEEiPDF16_PKDF16_PKhS5_(float16x8_t *result, uint64_t a2, int8x16_t *a3)
{
  v3 = 0;
  v4 = a3 + 2;
  v5 = 0uLL;
  v6 = *a3;
  v7 = a3[1];
  v8.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v8.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  v9 = 0uLL;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  do
  {
    v14 = (a2 + 2 * v3);
    v15 = vld1q_dup_s16(v14++);
    v16 = v4[1];
    v17 = vandq_s8(*v4, v8);
    v18 = vshrq_n_u8(*v4, 4uLL);
    v19 = vqtbl1q_s8(v6, v17);
    v20 = vqtbl1q_s8(v7, v17);
    v21 = vzip1q_s8(v19, v20);
    v22 = vzip2q_s8(v19, v20);
    v23 = vqtbl1q_s8(v6, v18);
    v24 = vqtbl1q_s8(v7, v18);
    v25 = vzip1q_s8(v23, v24);
    v26 = vzip2q_s8(v23, v24);
    v27 = vandq_s8(v16, v8);
    v28 = vshrq_n_u8(v16, 4uLL);
    v29 = vqtbl1q_s8(v6, v27);
    v30 = vqtbl1q_s8(v7, v27);
    v31 = vzip1q_s8(v29, v30);
    v32 = vzip2q_s8(v29, v30);
    v33 = vqtbl1q_s8(v6, v28);
    v34 = vqtbl1q_s8(v7, v28);
    v35 = vzip1q_s8(v33, v34);
    v36 = vzip2q_s8(v33, v34);
    v37 = v4[2];
    v38 = vandq_s8(v37, v8);
    v39 = vshrq_n_u8(v37, 4uLL);
    v40 = vqtbl1q_s8(v6, v38);
    v41 = vqtbl1q_s8(v7, v38);
    v42 = vzip1q_s8(v40, v41);
    v43 = vzip2q_s8(v40, v41);
    v44 = vqtbl1q_s8(v6, v39);
    v45 = vqtbl1q_s8(v7, v39);
    v13 = vmlaq_n_f16(vmlaq_f16(v13, v21, v15), v25, *v14);
    v12 = vmlaq_n_f16(vmlaq_f16(v12, v22, v15), v26, *v14);
    v11 = vmlaq_n_f16(vmlaq_f16(v11, v31, v15), v35, *v14);
    v10 = vmlaq_n_f16(vmlaq_f16(v10, v32, v15), v36, *v14);
    v9 = vmlaq_n_f16(vmlaq_f16(v9, v42, v15), vzip1q_s8(v44, v45), *v14);
    v5 = vmlaq_n_f16(vmlaq_f16(v5, v43, v15), vzip2q_s8(v44, v45), *v14);
    v3 += 2;
    v4 += 3;
  }

  while (v3 < 0x3F);
  *result = v13;
  result[1] = v12;
  result[2] = v11;
  result[3] = v10;
  result[4] = v9;
  result[5] = v5;
  return result;
}

uint64_t Nfp16AMPalettizedLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a2;
  if (*a5 != ((2 * ((*a2 * *a3) & 0x3FFFFFFF) + 16 * ((*a3 & 3) != 0) + 15) & 0xFFFFFFF0) + 32)
  {
    Error::chuck("Nfp16AMPalettizedLayer::initialize() - Incorrect data size", a2);
  }

  if (!v5)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  if (!*a3)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size output", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  *(this + 24) = a4;
  return this;
}

uint64_t Nfp16SigmoidOnlyLayer::compute(Nfp16SigmoidOnlyLayer *this, float16x8_t *a2, float16x8_t *a3, void *a4)
{
  if (!*(this + 2))
  {
    Error::chuck("Nfp16SigmoidOnlyLayer::compute() - Layer uninitialized", a2->i8, a3, a4, v4, v5);
  }

  v6 = (2 * *(this + 3));

  return AccelerateMLSigmoid_FP16(a3, a2, v6);
}

uint64_t Nfp16SigmoidOnlyLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a2;
  if (*a2 != *a3)
  {
    Error::chuck("Nfp16SigmoidOnlyLayer::initialize() - input and output size must be the same", a2);
  }

  if (!v5)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

void Nfp16PalettizedLayer::compute(Nfp16PalettizedLayer *this, const float *a2, float *a3, void *a4)
{
  v4 = *(this + 3);
  if (!v4)
  {
    Error::chuck("Nfp16PalettizedLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v5 = (2 * *(this + 3));
  if (v5)
  {
    v6 = (2 * *(this + 2));
    if (v6)
    {
      v7 = 0;
      v8 = *(this + 2);
      do
      {
        v9 = 0;
        _S0 = 0.0;
        v11 = v4;
        do
        {
          v12 = *v11++;
          _H1 = (*(v8 + 2 * (v12 >> 4)) * *(&a2[v9 / 2] + 1)) + (*(v8 + 2 * (v12 & 0xF)) * *&a2[v9 / 2]);
          __asm { FCVT            S1, H1 }

          _S0 = _S0 + _S1;
          v9 += 2;
        }

        while (v9 < v6);
        v4 += ((v6 - 1) >> 1) + 1;
        __asm { FCVT            H0, S0 }

        *(a3 + v7++) = _H0;
      }

      while (v7 != v5);
    }

    else
    {

      bzero(a3, 2 * v5);
    }
  }
}

uint64_t Nfp16PalettizedLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a2;
  if (*a5 != ((2 * ((*a2 * *a3) & 0x3FFFFFFF) + 15) & 0xFFFFFFF0) + 32)
  {
    Error::chuck("Nfp16PalettizedLayer::initialize() - Incorrect data size", a2);
  }

  if (!v5)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  if (!*a3)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size output", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  *(this + 24) = a4 + 32;
  return this;
}

unsigned __int16 Nfp16MatrixLayer::compute@<H0>(Nfp16MatrixLayer *this@<X0>, const float *a2@<X1>, float *a3@<X2>, void *a4@<X3>)
{
  v60[1] = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  if (!v4)
  {
    Error::chuck("Nfp16MatrixLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v6 = *(this + 3);
  v7 = (-2 * *(this + 2)) & 6;
  v8 = (v7 + 2 * *(this + 2));
  _Q0.i16[0] = MEMORY[0x28223BE20](this).n128_u16[0];
  v13 = (v60 - v11);
  if (v7)
  {
    v14 = 2 * v10;
    memcpy(v60 - v11, v9, v14);
    bzero(&v13->i8[v14], (2 * v7));
    v9 = v13;
  }

  v15 = (2 * v6);
  v16 = v6 & 0xFFFFFFFC;
  if ((v6 & 0xFFFFFFFC) != 0)
  {
    v17 = (4 * v8);
    v18 = 0;
    if (v8)
    {
      do
      {
        v19 = 0;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = v4;
        v24 = v9;
        v25 = 0uLL;
        do
        {
          v26 = *v24++;
          v20 = vmlaq_f16(v20, *v23, v26);
          v21 = vmlaq_f16(v21, *(v23 + 2 * v8), v26);
          v22 = vmlaq_f16(v22, *(v23 + 2 * (2 * v8)), v26);
          v25 = vmlaq_f16(v25, *(v23++ + 2 * (3 * v8)), v26);
          v19 += 8;
        }

        while (v19 < v8);
        v4 = (v4 + 2 * v17);
        _Q0 = vpaddq_f16(vpaddq_f16(v20, v21), vpaddq_f16(v22, v25));
        _Q0.i64[0] = vpaddq_f16(_Q0, _Q0).u64[0];
        *(a3 + 2 * v18) = _Q0.i64[0];
        v18 += 4;
      }

      while (v18 < v16);
    }

    else
    {
      v27 = vpaddq_f16(0, 0);
      _Q0 = vpaddq_f16(v27, v27);
      _Q0.i64[0] = vpaddq_f16(_Q0, _Q0).u64[0];
      v28 = 2 * v17;
      v29 = a3;
      do
      {
        *v29 = _Q0.i64[0];
        v29 += 2;
        v18 += 4;
        v4 = (v4 + v28);
      }

      while (v18 < v16);
    }
  }

  else
  {
    LODWORD(v18) = 0;
  }

  if (v18 < v15)
  {
    v30 = v18;
    do
    {
      if (v8)
      {
        v37 = 0;
        v38 = 0;
        _Q0 = 0uLL;
        do
        {
          _Q0 = vmlaq_f16(_Q0, v4[v37], v9[v37]);
          v38 += 8;
          ++v37;
        }

        while (v38 < v8);
      }

      else
      {
        _Q0 = 0uLL;
      }

      v4 = (v4 + 2 * v8);
      _Q0.i64[0] = vpaddq_f16(_Q0, _Q0).u64[0];
      v31 = vaddv_f32(*&vcvtq_f32_f16(*_Q0.i8));
      _H2 = _Q0.u16[2];
      __asm { FCVT            S2, H2 }

      _Q0.i16[0] = _Q0.i16[3];
      __asm { FCVT            S0, H0 }

      *_Q0.i32 = (v31 + _S2) + *_Q0.i32;
      __asm { FCVT            H0, S0 }

      *(a3 + v30++) = _Q0.i16[0];
    }

    while (v30 != v15);
  }

  LODWORD(v39) = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v40 = 0;
    v41 = a3;
    do
    {
      v42 = *v4++;
      _Q0 = vaddq_f16(*v41, v42);
      *v41++ = _Q0;
      v40 += 8;
    }

    while (v40 < v39);
    LODWORD(v39) = ((v39 - 1) & 0xFFFFFFF8) + 8;
  }

  if (v39 < v15)
  {
    v39 = v39;
    v43 = v15 - v39;
    if (v43 <= 3)
    {
      goto LABEL_43;
    }

    if (a3 + 2 * v39 < v4->i32 + 2 * v15 - 2 * v39 && v4 < (a3 + 2 * v15))
    {
      goto LABEL_43;
    }

    if (v43 >= 0x10)
    {
      v45 = v43 & 0xFFFFFFFFFFFFFFF0;
      v46 = (a3 + 2 * v39 + 16);
      v47 = v4 + 1;
      v48 = v43 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        _Q0 = vaddq_f16(v47[-1], v46[-1]);
        v49 = vaddq_f16(*v47, *v46);
        v46[-1] = _Q0;
        *v46 = v49;
        v46 += 2;
        v47 += 2;
        v48 -= 16;
      }

      while (v48);
      if (v43 == v45)
      {
        return _Q0.i16[0];
      }

      if ((v43 & 0xC) == 0)
      {
        v4 = (v4 + 2 * v45);
        v39 = v45 + v39;
LABEL_43:
        v56 = v15 - v39;
        v57 = a3 + v39;
        do
        {
          v58 = *v4->i16;
          v4 = (v4 + 2);
          *_Q0.i16 = v58 + *v57;
          *v57++ = *_Q0.i16;
          --v56;
        }

        while (v56);
        return _Q0.i16[0];
      }
    }

    else
    {
      v45 = 0;
    }

    v50 = v43 & 0xFFFFFFFFFFFFFFFCLL;
    v51 = v45 - (v43 & 0xFFFFFFFFFFFFFFFCLL);
    v52 = 2 * v45;
    v53 = (a3 + 2 * v45 + 2 * v39);
    v54 = &v4->i8[v52];
    do
    {
      v55 = *v54++;
      *_Q0.i8 = vadd_f16(v55, *v53);
      *v53++ = *_Q0.i8;
      v51 += 4;
    }

    while (v51);
    if (v43 != v50)
    {
      v39 = v50 + v39;
      v4 = (v4 + 2 * (v43 & 0xFFFFFFFFFFFFFFFCLL));
      goto LABEL_43;
    }
  }

  return _Q0.i16[0];
}

uint64_t Nfp16MatrixLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (((2 * v6 + 7) & 0xFFFFFFF8) + ((2 * *a2 + 7) & 0x7FFFFFF8) * 2 * v6 != *a5 >> 1)
  {
    Error::chuck("Nfp16MatrixLayer::initialize() - Incorrect data size", a2);
  }

  if (!v5)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  if (!v6)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size output", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

double Nfp16OffsetLayer::compute(Nfp16OffsetLayer *this, const float *a2, float *a3, void *a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    Error::chuck("Nfp16OffsetLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v5 = *(this + 2);
  v6 = (2 * v5);
  if (v6 >= 8)
  {
    v7 = v6 >> 3;
    v8 = *(this + 2);
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *v8++;
      v12 = v11;
      v13 = *v10;
      v10 += 4;
      v14 = vaddq_f16(v12, v13);
      *v9 = v14;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  if ((v5 & 3) != 0)
  {
    v15 = v6 & 0xFFFFFFF8;
    if ((v15 | 1) > v6)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = (2 * v5);
    }

    v17 = v16 - v15;
    if (v16 - v15 <= 3 || (a3 - a2) < 0x20 || a3 - v4 < 0x20)
    {
      goto LABEL_10;
    }

    if (v17 >= 0x10)
    {
      v18 = v17 & 0xFFFFFFFFFFFFFFF0;
      v19 = 16 * ((v5 >> 2) & 0x1FFFFFFF) + 16;
      v20 = (a2 + v19);
      v21 = (a3 + v19);
      v22 = (v4 + v19);
      v23 = v17 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v14 = vaddq_f16(v20[-1], v22[-1]);
        v24 = vaddq_f16(*v20, *v22);
        v21[-1] = v14;
        *v21 = v24;
        v20 += 2;
        v21 += 2;
        v22 += 2;
        v23 -= 16;
      }

      while (v23);
      if (v17 == v18)
      {
        return *v14.i64;
      }

      if ((v17 & 0xC) == 0)
      {
        v15 += v18;
        do
        {
LABEL_10:
          *v14.i16 = *(a2 + v15) + *(v4 + 2 * v15);
          *(a3 + v15++) = v14.i16[0];
        }

        while (v15 < v6);
        return *v14.i64;
      }
    }

    else
    {
      v18 = 0;
    }

    v25 = v16 & 3;
    v26 = v17 - v25;
    v27 = v16 - v18 - v25 - v15;
    v28 = 16 * ((v5 >> 2) & 0x1FFFFFFF) + 2 * v18;
    v29 = (a3 + v28);
    v30 = (v4 + v28);
    v31 = (a2 + v28);
    do
    {
      v32 = *v31++;
      v33 = v32;
      v34 = *v30++;
      *v14.i8 = vadd_f16(v33, v34);
      *v29++ = v14.i64[0];
      v27 -= 4;
    }

    while (v27);
    if (v25)
    {
      v15 += v26;
      goto LABEL_10;
    }
  }

  return *v14.i64;
}

uint64_t Nfp16OffsetLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a5 >> 2;
  if (v5 != *a2)
  {
    Error::chuck("Nfp16OffsetLayer::initialize() - Incorrect data size", a2, a3, a4);
  }

  if (v5 != *a3)
  {
    Error::chuck("Nfp16OffsetLayer::initialize() - Input and output not same", a2);
  }

  if (*a5 <= 3)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

double Nfp16ScaleLayer::compute(Nfp16ScaleLayer *this, const float *a2, float *a3, void *a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    Error::chuck("Nfp16ScaleLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v5 = *(this + 2);
  v6 = (2 * v5);
  if (v6 >= 8)
  {
    v7 = v6 >> 3;
    v8 = *(this + 2);
    v9 = a3;
    v10 = a2;
    do
    {
      v11 = *v8++;
      v12 = v11;
      v13 = *v10;
      v10 += 4;
      v14 = vmulq_f16(v12, v13);
      *v9 = v14;
      v9 += 4;
      --v7;
    }

    while (v7);
  }

  if ((v5 & 3) != 0)
  {
    v15 = v6 & 0xFFFFFFF8;
    if ((v15 | 1) > v6)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = (2 * v5);
    }

    v17 = v16 - v15;
    if (v16 - v15 <= 3 || (a3 - a2) < 0x20 || a3 - v4 < 0x20)
    {
      goto LABEL_10;
    }

    if (v17 >= 0x10)
    {
      v18 = v17 & 0xFFFFFFFFFFFFFFF0;
      v19 = 16 * ((v5 >> 2) & 0x1FFFFFFF) + 16;
      v20 = (a2 + v19);
      v21 = (a3 + v19);
      v22 = (v4 + v19);
      v23 = v17 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v14 = vmulq_f16(v20[-1], v22[-1]);
        v24 = vmulq_f16(*v20, *v22);
        v21[-1] = v14;
        *v21 = v24;
        v20 += 2;
        v21 += 2;
        v22 += 2;
        v23 -= 16;
      }

      while (v23);
      if (v17 == v18)
      {
        return *v14.i64;
      }

      if ((v17 & 0xC) == 0)
      {
        v15 += v18;
        do
        {
LABEL_10:
          *v14.i16 = *(a2 + v15) * *(v4 + 2 * v15);
          *(a3 + v15++) = v14.i16[0];
        }

        while (v15 < v6);
        return *v14.i64;
      }
    }

    else
    {
      v18 = 0;
    }

    v25 = v16 & 3;
    v26 = v17 - v25;
    v27 = v16 - v18 - v25 - v15;
    v28 = 16 * ((v5 >> 2) & 0x1FFFFFFF) + 2 * v18;
    v29 = (a3 + v28);
    v30 = (v4 + v28);
    v31 = (a2 + v28);
    do
    {
      v32 = *v31++;
      v33 = v32;
      v34 = *v30++;
      *v14.i8 = vmul_f16(v33, v34);
      *v29++ = v14.i64[0];
      v27 -= 4;
    }

    while (v27);
    if (v25)
    {
      v15 += v26;
      goto LABEL_10;
    }
  }

  return *v14.i64;
}

uint64_t Nfp16ScaleLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a5 >> 2;
  if (v5 != *a2)
  {
    Error::chuck("Nfp16ScaleLayer::initialize() - Incorrect data size", a2, a3, a4);
  }

  if (v5 != *a3)
  {
    Error::chuck("Nfp16ScaleLayer::initialize() - Input and output not same", a2);
  }

  if (*a5 <= 3)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

float32_t Nfp16tofp32Layer::compute(Nfp16tofp32Layer *this, float16x4_t *a2, float *a3, void *a4)
{
  if (!*(this + 2))
  {
    Error::chuck("Nfp16tofp32Layer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v4 = *(this + 3);
  if (v4)
  {
    if (v4 <= 3)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 >= 0x10)
    {
      v5 = v4 & 0xFFFFFFF0;
      v6 = a3 + 8;
      v7 = a2 + 2;
      v8 = v5;
      do
      {
        v9 = *v7[-2].i8;
        v10 = vcvtq_f32_f16(*v9.i8);
        _Q0 = vcvt_hight_f32_f16(v9);
        v12 = vcvtq_f32_f16(*v7);
        v13 = vcvt_hight_f32_f16(*v7->i8);
        *(v6 - 2) = v10;
        *(v6 - 1) = _Q0;
        *v6 = v12;
        *(v6 + 1) = v13;
        v6 += 16;
        v7 += 4;
        v8 -= 16;
      }

      while (v8);
      if (v5 == v4)
      {
        return _Q0.f32[0];
      }

      if ((v4 & 0xC) == 0)
      {
LABEL_14:
        v19 = v4 - v5;
        v20 = &a3[v5];
        v21 = a2 + v5;
        do
        {
          v22 = *v21++;
          _H0 = v22;
          __asm { FCVT            S0, H0 }

          *v20++ = _Q0.f32[0];
          --v19;
        }

        while (v19);
        return _Q0.f32[0];
      }
    }

    else
    {
      v5 = 0;
    }

    v14 = v5;
    v5 = v4 & 0xFFFFFFFC;
    v15 = v14 - v5;
    v16 = &a3[v14];
    v17 = (a2 + 2 * v14);
    do
    {
      v18 = *v17++;
      _Q0 = vcvtq_f32_f16(v18);
      *v16 = _Q0;
      v16 += 4;
      v15 += 4;
    }

    while (v15);
    if (v5 != v4)
    {
      goto LABEL_14;
    }
  }

  return _Q0.f32[0];
}

uint64_t Nfp16tofp32Layer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a3 + 1;
  if (v5 >> 1 != *a2)
  {
    Error::chuck("Nfp16tofp32Layer::initialize() - input and output size must be in ratio 1:2", a2);
  }

  if (v5 <= 1)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  *(this + 8) = v5 >> 1;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

__int16 Nfp32tofp16Layer::compute@<H0>(Nfp32tofp16Layer *this@<X0>, const float *a2@<X1>, float *a3@<X2>, void *a4@<X3>)
{
  if (!*(this + 2))
  {
    Error::chuck("Nfp32tofp16Layer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v4 = *(this + 2);
  a3[*(this + 3) - 1] = 0.0;
  if (v4)
  {
    if (v4 <= 3)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (v4 >= 0x10)
    {
      v5 = v4 & 0xFFFFFFF0;
      v6 = a3 + 4;
      v7 = a2 + 8;
      v8 = v5;
      do
      {
        v10 = *(v7 - 8);
        v9 = *(v7 - 4);
        v12 = *v7;
        v11 = *(v7 + 4);
        v7 += 16;
        v13 = vcvt_hight_f16_f32(vcvt_f16_f32(v10), v9);
        _Q0 = vcvt_hight_f16_f32(vcvt_f16_f32(v12), v11);
        *(v6 - 1) = v13;
        *v6 = _Q0;
        v6 += 8;
        v8 -= 16;
      }

      while (v8);
      if (v5 == v4)
      {
        return _Q0.i16[0];
      }

      if ((v4 & 0xC) == 0)
      {
LABEL_14:
        v20 = v4 - v5;
        v21 = a3 + v5;
        v22 = &a2[v5];
        do
        {
          v23 = *v22++;
          _Q0.i32[0] = v23;
          __asm { FCVT            H0, S0 }

          *v21++ = _Q0.i16[0];
          --v20;
        }

        while (v20);
        return _Q0.i16[0];
      }
    }

    else
    {
      v5 = 0;
    }

    v15 = v5;
    v5 = v4 & 0xFFFFFFFC;
    v16 = v15 - v5;
    v17 = (a3 + 2 * v15);
    v18 = &a2[v15];
    do
    {
      v19 = *v18;
      v18 += 4;
      *_Q0.i8 = vcvt_f16_f32(v19);
      *v17++ = _Q0.i64[0];
      v16 += 4;
    }

    while (v16);
    if (v5 != v4)
    {
      goto LABEL_14;
    }
  }

  return _Q0.i16[0];
}

uint64_t Nfp32tofp16Layer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a2;
  if (*a3 != (*a2 + 1) >> 1)
  {
    Error::chuck("Nfp32tofp16Layer::initialize() - input and output size must be in ratio 2:1", a2);
  }

  if (!v5)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  if ((v5 + 1) <= 1)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size output", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

uint64_t NSigned8BitMatrixLayer::compute(void **this, const float *a2, float *a3, void *a4)
{
  v82[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20](this);
  v12 = (v82 - v11);
  if (v9 >= 0x10)
  {
    v13 = v9 >> 4;
    v14 = v7 + 2;
    v15 = &v12->i8[8];
    v16 = vdupq_n_s32(0x437F0000u);
    do
    {
      v17 = vmulq_f32(v14[-2], v16);
      v18 = vmulq_f32(v14[-1], v16);
      v19 = *v14;
      v20 = v14[1];
      v14 += 4;
      v83.val[0] = vcvtnq_s32_f32(v17);
      v83.val[1] = vcvtnq_s32_f32(v18);
      v83.val[2] = vcvtnq_s32_f32(vmulq_f32(v19, v16));
      v83.val[3] = vcvtnq_s32_f32(vmulq_f32(v20, v16));
      *(v15 - 8) = vqtbl4q_s8(v83, xmmword_223B13300);
      v15 += 16;
      --v13;
    }

    while (v13);
  }

  v21 = v9 & 0xFFFFFFF0;
  if ((v9 & 0xFFFFFFF0) != v9)
  {
    if ((v21 | 1) > v9)
    {
      v22 = v21 + 1;
    }

    else
    {
      v22 = v9;
    }

    v23 = v22 - v21;
    if (v22 - v21 <= 3)
    {
      goto LABEL_20;
    }

    v24 = 4 * v9;
    if (v23 >= 0x10)
    {
      v25 = v23 - (v22 & 0xF);
      v26 = (v12 + v21);
      v6 = (v7 + (v24 & 0x3FFFFFFC0));
      v27 = vdupq_n_s32(0x437F0000u);
      v28 = v25;
      do
      {
        v30 = v6[2];
        v29 = v6[3];
        v32 = *v6;
        v31 = v6[1];
        v6 += 4;
        v33 = vmulq_f32(v32, v27);
        v34 = vmulq_f32(v31, v27);
        v35 = vmulq_f32(v30, v27);
        v36 = vmulq_f32(v29, v27);
        v84.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v36.i8)));
        v84.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v35.i8)));
        v84.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v36, v36, 8uLL))));
        v84.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v35, v35, 8uLL))));
        v85.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8)));
        v85.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v33.i8)));
        v85.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL))));
        v85.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v33, v33, 8uLL))));
        v36.i64[0] = vqtbl4q_s8(v85, xmmword_223B13310).u64[0];
        v36.i64[1] = vqtbl4q_s8(v84, xmmword_223B13310).u64[0];
        *v26++ = v36;
        v28 -= 16;
      }

      while (v28);
      if ((v22 & 0xF) == 0)
      {
        goto LABEL_21;
      }

      if ((v22 & 0xF) < 4)
      {
        v21 += v25;
        goto LABEL_20;
      }
    }

    else
    {
      v25 = 0;
    }

    v37 = v22 & 3;
    v38 = v23 - v37;
    v39 = v25 + v21 + v37 - v22;
    v40 = &v12->i8[v25 + v21];
    v41 = (v7 + 4 * v25 + (v24 & 0x3FFFFFFC0));
    v42 = vdupq_n_s32(0x437F0000u);
    do
    {
      v43 = *v41++;
      v44 = vmulq_f32(v43, v42);
      v45 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v44.i8)));
      *v44.i8 = vmovn_s64(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v44, v44, 8uLL)))));
      *v45.i8 = vmovn_s64(v45);
      v6 = v44.u32[1];
      v45.i16[1] = v45.i16[2];
      v45.i16[2] = v44.i16[0];
      v45.i16[3] = v44.i16[2];
      *v40 = vmovn_s16(v45).u32[0];
      v40 += 4;
      v39 += 4;
    }

    while (v39);
    if (v37)
    {
      v21 += v38;
      do
      {
LABEL_20:
        v12->i8[v21] = rintf(v7->f32[v21] * 255.0);
        ++v21;
      }

      while (v21 < v9);
    }
  }

LABEL_21:
  if (!v9)
  {
    goto LABEL_35;
  }

  if (v9 < 8)
  {
    v46 = 0;
    goto LABEL_33;
  }

  if (v9 >= 0x20)
  {
    v46 = v9 & 0xFFFFFFE0;
    v47 = v12 + 1;
    v48.i64[0] = 0x8080808080808080;
    v48.i64[1] = 0x8080808080808080;
    v49 = v46;
    do
    {
      v50 = veorq_s8(*v47, v48);
      v47[-1] = veorq_s8(v47[-1], v48);
      *v47 = v50;
      v47 += 2;
      v49 -= 32;
    }

    while (v49);
    if (v46 == v9)
    {
      goto LABEL_35;
    }

    if ((v9 & 0x18) == 0)
    {
LABEL_33:
      v54 = v9 - v46;
      v55 = &v12->i8[v46];
      do
      {
        *v55++ ^= 0x80u;
        --v54;
      }

      while (v54);
      goto LABEL_35;
    }
  }

  else
  {
    v46 = 0;
  }

  v51 = v46;
  v46 = v9 & 0xFFFFFFF8;
  v52 = v51 - v46;
  v53 = &v12->i8[v51];
  do
  {
    *v53 = veor_s8(*v53, 0x8080808080808080);
    ++v53;
    v52 += 8;
  }

  while (v52);
  if (v46 != v9)
  {
    goto LABEL_33;
  }

LABEL_35:
  if (v9 < v8)
  {
    bzero(&v12->i8[v9], (v10 - 1) + 1);
  }

  MEMORY[0x28223BE20](v6);
  v57 = (v82 - ((v56 + 15) & 0x7FFFFFFF0));
  result = BNNSFilterApply(this[5], v12, v57);
  if (result == -1)
  {
    Error::chuck("NSigned8BitMatrixLayer::compute() - BNNSFilterApply failed", v59);
  }

  v60 = *(this + 3);
  if (!v60)
  {
    return result;
  }

  v61 = this[3];
  if (v60 > 7)
  {
    v62 = v60 & 0xFFFFFFF8;
    v63 = v57 + 1;
    v64 = v61 + 1;
    v65 = v62;
    do
    {
      v66 = vaddq_f32(*v63, vcvtq_f32_s32(*v64));
      v63[-1] = vaddq_f32(v63[-1], vcvtq_f32_s32(v64[-1]));
      *v63 = v66;
      v63 += 2;
      v64 += 2;
      v65 -= 8;
    }

    while (v65);
    if (v62 == v60)
    {
      goto LABEL_47;
    }

    v61 = (v61 + 4 * (v60 & 0xFFFFFFF8));
  }

  else
  {
    v62 = 0;
  }

  v67 = v60 - v62;
  v68 = &v57->f32[v62];
  do
  {
    v69 = v61->i32[0];
    v61 = (v61 + 4);
    *v68 = *v68 + v69;
    ++v68;
    --v67;
  }

  while (v67);
LABEL_47:
  v70 = this + 9;
  if (v60 <= 7 || this + 5 > a3 && v70 < &a3[v60])
  {
    v71 = 0;
LABEL_51:
    v72 = v60 - v71;
    v73 = v71;
    v74 = &a3[v71];
    v75 = &v57->f32[v73];
    do
    {
      v76 = *v75++;
      *v74++ = v76 * *v70;
      --v72;
    }

    while (v72);
    return result;
  }

  v71 = v60 & 0xFFFFFFF8;
  v77 = vld1q_dup_f32(v70);
  v78 = a3 + 4;
  v79 = v57 + 1;
  v80 = v71;
  do
  {
    v81 = vmulq_f32(*v79, v77);
    *(v78 - 1) = vmulq_f32(v79[-1], v77);
    *v78 = v81;
    v78 += 8;
    v79 += 2;
    v80 -= 8;
  }

  while (v80);
  if (v71 != v60)
  {
    goto LABEL_51;
  }

  return result;
}

void *NSigned8BitMatrixLayer::initialize(NSigned8BitMatrixLayer *this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  N8BitMatrixLayer::initialize(this, a2, a3, a4, a5);
  v6 = *(this + 3);
  v7 = (*(this + 8) + *(this + 2));
  v8 = *(this + 2);
  *&layer_params.i_desc.flags = 0x1000000000000;
  layer_params.i_desc.size[0] = v7;
  memset(&layer_params.i_desc.size[1], 0, 128);
  *(&layer_params.i_desc.data_type + 1) = 0;
  layer_params.i_desc.data_type = BNNSDataTypeInt8;
  HIDWORD(layer_params.i_desc.table_data) = 0;
  *&layer_params.i_desc.table_data_type = 0x3F80000000020008;
  *&layer_params.i_desc.data_bias = 0;
  *&layer_params.w_desc.flags = 0x2000000000000;
  layer_params.w_desc.size[0] = v7;
  layer_params.w_desc.size[1] = v6;
  memset(&layer_params.w_desc.size[2], 0, 112);
  layer_params.w_desc.data = v8;
  *&layer_params.w_desc.data_type = 131080;
  layer_params.w_desc.table_data = 0;
  *&layer_params.w_desc.table_data_type = 0x3F80000000020008;
  *&layer_params.w_desc.data_bias = 0;
  *&layer_params.o_desc.flags = 0x1000000000000;
  layer_params.o_desc.size[0] = v6;
  memset(&layer_params.o_desc.size[1], 0, 128);
  layer_params.o_desc.data_type = BNNSDataTypeFloat32;
  *(&layer_params.o_desc.data_type + 1) = 0;
  HIDWORD(layer_params.o_desc.table_data) = 0;
  *&layer_params.o_desc.table_data_type = 0x3F80000000010020;
  memset(&layer_params.o_desc.data_bias, 0, 232);
  *&v11.alloc_memory = 0u;
  *&v11.flags = 1;
  v11.n_threads = 1;
  result = BNNSFilterCreateLayerFullyConnected(&layer_params, &v11);
  *(this + 5) = result;
  if (!result)
  {
    Error::chuck("NSigned8BitMatrixLayer::compute() - BNNSFilter has not been successfully created at initialization", v10);
  }

  return result;
}

void NSigned8BitMatrixLayer::~NSigned8BitMatrixLayer(NSigned8BitMatrixLayer *this)
{
  *this = &unk_283708158;
  v1 = *(this + 5);
  if (v1)
  {
    BNNSFilterDestroy(v1);
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283708158;
  v1 = *(this + 5);
  if (v1)
  {
    BNNSFilterDestroy(v1);
  }
}

void N8BitLSTMLayer::MatrixMultiply8Bit(N8BitLSTMLayer *this, const unsigned int *a2, const unsigned int *a3, int8x8_t *a4, float *a5, float32x4_t *a6, const float *a7, const BOOL *a8)
{
  v126 = *MEMORY[0x277D85DE8];
  v13 = *a3;
  if (*a3)
  {
    v14 = 0.0;
    v16 = *a3;
    do
    {
      v17 = *a5++;
      v18 = v17;
      if (v17 > v14)
      {
        v14 = v18;
      }

      v19 = -v18;
      if (v14 < v19)
      {
        v14 = v19;
      }

      --v16;
    }

    while (v16);
  }

  v20 = v13 + 15;
  v21 = (v13 + 15) & 0xFFFFFFF0;
  MEMORY[0x28223BE20](this);
  v22 = (&v125 - v21);
  v24 = *v23;
  v28 = MEMORY[0x28223BE20](v25);
  v31 = (&v125 - ((v30 + 15) & 0x7FFFFFFF0));
  if (v27)
  {
    if (v27 <= 3)
    {
      v32 = 0;
      goto LABEL_20;
    }

    if (v27 >= 0x10)
    {
      v32 = v27 & 0xFFFFFFF0;
      v28.n128_u32[1] = 942680096;
      v33 = v26;
      v34 = (&v125 - v21);
      v35 = v32;
      do
      {
        v36 = v33[2];
        v37 = v33[3];
        v39 = *v33;
        v38 = v33[1];
        v33 += 4;
        v40 = vmulq_n_f32(v39, v29.n128_f32[0]);
        v41 = vmulq_n_f32(v38, v29.n128_f32[0]);
        v42 = vmulq_n_f32(v37, v29.n128_f32[0]);
        v43 = vmulq_n_f32(v36, v29.n128_f32[0]);
        v127.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v43.i8)));
        v127.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8)));
        v127.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v43, v43, 8uLL))));
        v127.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))));
        v128.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v41.i8)));
        v128.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8)));
        v128.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))));
        v128.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))));
        v43.i64[0] = vqtbl4q_s8(v128, xmmword_223B13310).u64[0];
        v43.i64[1] = vqtbl4q_s8(v127, xmmword_223B13310).u64[0];
        *v34++ = v43;
        v35 -= 16;
      }

      while (v35);
      if (v32 == v27)
      {
        goto LABEL_22;
      }

      if ((v27 & 0xC) == 0)
      {
LABEL_20:
        v50 = v27 - v32;
        v51 = v22 + v32;
        v52 = &v26->f32[v32];
        do
        {
          v53 = *v52++;
          *v51++ = rintf(v29.n128_f32[0] * v53);
          --v50;
        }

        while (v50);
        goto LABEL_22;
      }
    }

    else
    {
      v32 = 0;
    }

    v44 = v32;
    v32 = v27 & 0xFFFFFFFC;
    v45 = v44 - v32;
    v46 = v22 + v44;
    v47 = (v26 + 4 * v44);
    do
    {
      v48 = *v47++;
      v28 = vmulq_n_f32(v48, v29.n128_f32[0]);
      v49 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(v28.n128_u64[0])));
      v28.n128_u64[0] = vmovn_s64(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v28, v28, 8uLL)))));
      *v49.i8 = vmovn_s64(v49);
      v49.i16[1] = v49.i16[2];
      v49.i16[2] = v28.n128_u16[0];
      v49.i16[3] = v28.n128_i16[2];
      v28.n128_u64[0] = vmovn_s16(v49);
      *v46 = v28.n128_u32[0];
      v46 += 4;
      v45 += 4;
    }

    while (v45);
    if (v32 != v27)
    {
      goto LABEL_20;
    }
  }

LABEL_22:
  if (v27 < v21)
  {
    v125 = v29;
    bzero(v22 + v27, (v21 + ~v27) + 1);
    v29 = v125;
  }

  v54 = *(this + 3) & 0xFFFFFFFC;
  if (v54)
  {
    for (i = 0; i < v54; i += 4)
    {
      if (v21)
      {
        v65 = 0;
        v59 = 0uLL;
        v58 = 0uLL;
        v57 = 0uLL;
        v66 = a4;
        v67 = (&v125 - v21);
        v56 = 0uLL;
        do
        {
          v68 = *v67++;
          v69 = vmovl_s8(v68);
          v70 = vmovl_s8(*v66);
          v71 = vmovl_s8(*(v66 + v21));
          v72 = vmovl_s8(*(v66 + (2 * v21)));
          v73 = vmovl_s8(*(v66 + (3 * v21)));
          v59 = vmlal_s16(vmlal_high_s16(v59, v69, v70), *v69.i8, *v70.i8);
          v58 = vmlal_s16(vmlal_high_s16(v58, v69, v71), *v69.i8, *v71.i8);
          v57 = vmlal_s16(vmlal_high_s16(v57, v69, v72), *v69.i8, *v72.i8);
          v56 = vmlal_s16(vmlal_high_s16(v56, v69, v73), *v69.i8, *v73.i8);
          ++v66;
          v65 += 8;
        }

        while (v65 < v21);
      }

      else
      {
        v56 = 0uLL;
        v57 = 0uLL;
        v58 = 0uLL;
        v59 = 0uLL;
      }

      v60 = vpaddlq_s32(v59);
      v61 = vpaddlq_s32(v58);
      v62 = vpaddlq_s32(v57);
      v63 = vpaddlq_s32(v56);
      v64.i64[0] = vzip1q_s32(v60, v61).u64[0];
      v64.i64[1] = __PAIR64__(v63.u32[0], v62.u32[0]);
      a4 = (a4 + (4 * v21));
      v60.i64[0] = vzip2q_s32(v60, v61).u64[0];
      v60.i64[1] = __PAIR64__(v63.u32[2], v62.u32[2]);
      v28 = vaddq_s32(v64, v60);
      *(v31 + 4 * i) = v28;
    }
  }

  else
  {
    LODWORD(i) = 0;
  }

  if (i < v24)
  {
    if (v21)
    {
      v74 = (v21 - 16) + 16;
      i = i;
      v75 = &a4[2];
      while (1)
      {
        if (v20 >= 0x20)
        {
          v86 = 0uLL;
          v87 = v75;
          v88 = 0uLL;
          v89 = v22 + 2;
          v90 = v21 & 0xFFFFFFE0;
          v91 = 0uLL;
          v92 = 0uLL;
          v93 = 0uLL;
          v94 = 0uLL;
          v95 = 0uLL;
          v96 = 0uLL;
          do
          {
            v97 = *v87[-2].i8;
            v98 = *v89[-2].i8;
            v99 = vmull_s8(*v98.i8, *v97.i8);
            v100 = vmull_high_s8(v98, v97);
            v101 = vmull_s8(*v89, *v87);
            v102 = vmull_high_s8(*v89->i8, *v87->i8);
            v92 = vaddw_high_s16(v92, v100);
            v91 = vaddw_s16(v91, *v100.i8);
            v88 = vaddw_high_s16(v88, v99);
            v86 = vaddw_s16(v86, *v99.i8);
            v96 = vaddw_high_s16(v96, v102);
            v95 = vaddw_s16(v95, *v102.i8);
            v94 = vaddw_high_s16(v94, v101);
            v93 = vaddw_s16(v93, *v101.i8);
            v89 += 4;
            v87 += 4;
            v90 -= 32;
          }

          while (v90);
          v28 = vaddq_s32(vaddq_s32(vaddq_s32(v93, v86), vaddq_s32(v95, v91)), vaddq_s32(vaddq_s32(v94, v88), vaddq_s32(v96, v92)));
          v76 = vaddvq_s32(v28);
          if ((v21 & 0xFFFFFFE0) == v21)
          {
            goto LABEL_36;
          }

          v77 = v21 & 0xFFFFFFE0;
          v103 = v77;
          if ((v21 & 0x10) == 0)
          {
            do
            {
              v76 += v22->i8[v103] * a4->i8[v103];
              ++v103;
            }

            while (v21 != v103);
            goto LABEL_36;
          }
        }

        else
        {
          v76 = 0;
          v77 = 0;
        }

        v78 = 0uLL;
        v79 = v76;
        v80 = 0uLL;
        v81 = 0uLL;
        do
        {
          v82 = *&a4->i8[v77];
          v83 = *&v22->i8[v77];
          v84 = vmull_s8(*v83.i8, *v82.i8);
          v85 = vmull_high_s8(v83, v82);
          v81 = vaddw_high_s16(v81, v85);
          v80 = vaddw_s16(v80, *v85.i8);
          v78 = vaddw_high_s16(v78, v84);
          v79 = vaddw_s16(v79, *v84.i8);
          v77 += 16;
        }

        while (v21 != v77);
        v28 = vaddq_s32(vaddq_s32(v79, v80), vaddq_s32(v78, v81));
        v76 = vaddvq_s32(v28);
LABEL_36:
        a4 = (a4 + v74);
        v31->i32[i++] = v76;
        v75 += v74;
        if (i == v24)
        {
          goto LABEL_49;
        }
      }
    }

    v125 = v29;
    bzero(v31 + 4 * i, 4 * (v24 + ~i) + 4);
    v29.n128_u32[0] = v125.n128_u32[0];
  }

LABEL_49:
  v28.n128_f32[0] = *a7 / v29.n128_f32[0];
  if (!*a8)
  {
    if (!v24)
    {
      return;
    }

    if (v24 > 7)
    {
      v105 = v24 & 0xFFFFFFF8;
      f32 = a6[1].f32;
      v117 = v31 + 1;
      v118 = v105;
      do
      {
        v119 = vmulq_n_f32(vcvtq_f32_s32(*v117), v28.n128_f32[0]);
        *(f32 - 1) = vmulq_n_f32(vcvtq_f32_s32(v117[-1]), v28.n128_f32[0]);
        *f32 = v119;
        f32 += 8;
        v117 += 2;
        v118 -= 8;
      }

      while (v118);
      if (v105 == v24)
      {
        return;
      }
    }

    else
    {
      v105 = 0;
    }

    v120 = v24 - v105;
    v121 = v105;
    v122 = &a6->f32[v105];
    v123 = &v31->i32[v121];
    do
    {
      v124 = *v123++;
      *v122++ = v28.n128_f32[0] * v124;
      --v120;
    }

    while (v120);
    return;
  }

  if (!v24)
  {
    return;
  }

  if (v24 < 8)
  {
    v104 = 0;
LABEL_59:
    v111 = v24 - v104;
    v112 = v104;
    v113 = &a6->f32[v104];
    v114 = &v31->i32[v112];
    do
    {
      v115 = *v114++;
      *v113 = *v113 + (v115 * v28.n128_f32[0]);
      ++v113;
      --v111;
    }

    while (v111);
    return;
  }

  v104 = v24 & 0xFFFFFFF8;
  v106 = vdupq_lane_s32(v28.n128_u64[0], 0);
  v107 = a6 + 1;
  v108 = v31 + 1;
  v109 = v104;
  do
  {
    v110 = vmlaq_f32(*v107, v106, vcvtq_f32_s32(*v108));
    v107[-1] = vmlaq_f32(v107[-1], v106, vcvtq_f32_s32(v108[-1]));
    *v107 = v110;
    v107 += 2;
    v108 += 2;
    v109 -= 8;
  }

  while (v109);
  if (v104 != v24)
  {
    goto LABEL_59;
  }
}

uint64_t N8BitLSTMLayer::computeIFOC(N8BitLSTMLayer *this, const unsigned int *a2, const float *a3, const float *a4, const float *a5, const float *a6, float *a7)
{
  v17 = 4 * *a2;
  v16 = 0;
  v12 = this + 12;
  (*(*this + 88))(this, &v17, this + 8, a3, a5, a7, this + 92, &v16);
  v15 = 4 * *a2;
  v14 = 1;
  return (*(*this + 88))(this, &v15, v12, a4, a6, a7, this + 96, &v14);
}

uint64_t N8BitLSTMLayer::loadHeader(N8BitLSTMLayer *this, const char *a2, const char **a3, unsigned int *a4, BOOL *a5, BOOL *a6)
{
  if (*a2 <= 31)
  {
    Error::chuck("N8BitLSTMLayer::initialize() - data block too small for header", a2, a3, a4, a5, a6, v6, v7);
  }

  v8 = *a3;
  *a4 = **a3;
  *(this + 22) = v8[1];
  *a5 = *(v8 + 8);
  *a6 = *(v8 + 9);
  v9 = v8 + ((6 - v8) & 0xF);
  *(this + 23) = *(v9 + 10);
  *(this + 24) = *(v9 + 14);
  *(this + 25) = *(v9 + 18);
  *a3 = v9 + 26;
  return 1;
}

void NLSTMLayer::resetState(NLSTMLayer *this, void *a2)
{
  if (!a2)
  {
    Error::chuck("NLSTMLayer::compute() - State uninitialized", a2, v2, v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    v5 = a2[1];

    bzero(v5, 4 * v4);
  }
}

uint64_t NLSTMLayer::deallocateState(NLSTMLayer *this, void *a2)
{
  if (!a2)
  {
    Error::chuck("NLSTMLayer::compute() - State uninitialized", a2, v2, v3);
  }

  v4 = *(*a2 + 8);

  return v4(a2);
}

float32_t NLSTMLayer::compute(NLSTMLayer *this, const float *a2, float *a3, void *a4)
{
  v185 = *MEMORY[0x277D85DE8];
  v5 = (this + 16);
  v4 = *(this + 4);
  if (!v4)
  {
    Error::chuck("NLSTMLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  if (!a4)
  {
    Error::chuck("NLSTMLayer::compute() - State uninitialized", a2, a3);
  }

  v8 = a4[1];
  v9 = *(this + 6);
  v10 = MEMORY[0x28223BE20](this);
  v12 = (&v179 - v11);
  v13 = (2 * v4);
  v14 = (3 * v4);
  v180 = (&v179 + 4 * v14 - v11);
  (*(*v15 + 72))(v15, v5, v15[4], v15[5], v10);
  v16 = *(this + 4);
  v17 = (4 * v16);
  if (v17)
  {
    v18 = *(this + 6);
    if (v17 > 7 && (v12 < v18 + 4 * v17 ? (v19 = v18 >= &v12[v17]) : (v19 = 1), v19))
    {
      v20 = v17 & 0xFFFFFFF8;
      v21 = (v12 + 4);
      v22 = (v18 + 16);
      v23 = v20;
      do
      {
        v24 = vaddq_f32(*v22, *v21);
        v21[-1] = vaddq_f32(v22[-1], v21[-1]);
        *v21 = v24;
        v21 += 2;
        v22 += 2;
        v23 -= 8;
      }

      while (v23);
      if (v20 == v17)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v20 = 0;
    }

    v25 = v17 - v20;
    v26 = 4 * v20;
    v27 = &v12[v20];
    v28 = (v18 + v26);
    do
    {
      v29 = *v28++;
      *v27 = v29 + *v27;
      ++v27;
      --v25;
    }

    while (v25);
  }

LABEL_17:
  v181 = a3;
  v182 = v5;
  v30 = &v8[v9];
  v31 = &v12[v4];
  v32 = *(this + 7);
  if (v32)
  {
    v33 = v16 == 0;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {
    goto LABEL_29;
  }

  if (v16 > 0xB)
  {
    v34 = 0;
    v138 = &v12[v16];
    v140 = v12 < &v8[v16 + v9] && v30 < v138;
    if ((v32 >= v138 || v12 >= &v32->f32[v16]) && !v140)
    {
      v34 = v16 & 0xFFFFFFF8;
      v142 = (v12 + 4);
      v143 = v30 + 1;
      v144 = v32 + 1;
      v145 = v34;
      do
      {
        v146 = vmlaq_f32(*v142, *v143, *v144);
        v142[-1] = vmlaq_f32(v142[-1], v143[-1], v144[-1]);
        *v142 = v146;
        v142 += 2;
        v143 += 2;
        v144 += 2;
        v145 -= 8;
      }

      while (v145);
      if (v34 == v16)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = v16 - v34;
  v36 = v34;
  v37 = &v12[v34];
  v38 = &v8[v9 + v36];
  v39 = &v32->f32[v36];
  do
  {
    v40 = *v39++;
    v41 = v40;
    v42 = *v38++;
    *v37 = *v37 + (v41 * v42);
    ++v37;
    --v35;
  }

  while (v35);
LABEL_25:
  v43 = *(this + 8);
  if (v16 <= 0xB)
  {
    v44 = 0;
LABEL_27:
    v45 = v16 - v44;
    v46 = v44;
    v47 = &v12[v44 + v4];
    v48 = &v8[v9 + v46];
    v49 = &v43->f32[v46];
    do
    {
      v50 = *v49++;
      v51 = v50;
      v52 = *v48++;
      *v47 = *v47 + (v51 * v52);
      ++v47;
      --v45;
    }

    while (v45);
    goto LABEL_29;
  }

  v44 = 0;
  v147 = &v12[v16 + v4];
  v149 = v31 < &v8[v16 + v9] && v30 < v147;
  if (v43 < v147 && v31 < v43->u64 + 4 * v16)
  {
    goto LABEL_27;
  }

  if (v149)
  {
    goto LABEL_27;
  }

  v44 = v16 & 0xFFFFFFF8;
  v151 = v43 + 1;
  v152 = (v31 + 16);
  v153 = v30 + 1;
  v154 = v44;
  do
  {
    v155 = vmlaq_f32(*v152, *v153, *v151);
    v152[-1] = vmlaq_f32(v152[-1], v153[-1], v151[-1]);
    *v152 = v155;
    v151 += 2;
    v152 += 2;
    v153 += 2;
    v154 -= 8;
  }

  while (v154);
  if (v44 != v16)
  {
    goto LABEL_27;
  }

LABEL_29:
  v179 = &v12[v13];
  v53 = v8;
  v54 = &v12[v4];
  v55 = (2 * v16);
  MEMORY[0x223DF29B0](v12, 1, v12, 1, v55);
  v184 = v55;
  vvexpf(v12, v12, &v184);
  v183 = 1065353216;
  MEMORY[0x223DF29C0](v12, 1, &v183, v12, 1, v55);
  vvrecf(v12, v12, &v184);
  v56 = v182;
  v184 = *v182;
  vvtanhf(v180, v180, &v184);
  v57 = *v56;
  if (!v57)
  {
    v57 = 0;
    v60 = v182;
    v61 = v53;
    v62 = v179;
    goto LABEL_60;
  }

  if (v57 <= 7)
  {
    v58 = 0;
    v59 = v30;
    v60 = v182;
LABEL_36:
    v66 = v57 - v58;
    v67 = &v12[v58];
    do
    {
      *v67 = v67[v14] * *v67;
      ++v67;
      --v66;
    }

    while (v66);
    goto LABEL_38;
  }

  v58 = v57 & 0xFFFFFFF8;
  v63 = v12;
  v64 = v58;
  v59 = v30;
  do
  {
    v65 = vmulq_f32(*(v63 + 4 * v14 + 16), v63[1]);
    *v63 = vmulq_f32(*(v63 + 4 * v14), *v63);
    v63[1] = v65;
    v63 += 2;
    v64 -= 8;
  }

  while (v64);
  v60 = v182;
  if (v58 != v57)
  {
    goto LABEL_36;
  }

LABEL_38:
  if (v57 <= 7 || v54 < &v53[v57 + v9] && v59 < &v12[v57 + v4])
  {
    v68 = 0;
    v61 = v53;
LABEL_42:
    v69 = v57 - v68;
    v70 = v68;
    v71 = &v12[v68 + v4];
    v72 = &v61[v9 + v70];
    do
    {
      v73 = *v72++;
      *v71 = v73 * *v71;
      ++v71;
      --v69;
    }

    while (v69);
    goto LABEL_44;
  }

  v68 = v57 & 0xFFFFFFF8;
  v165 = (v54 + 16);
  v166 = (v59 + 16);
  v167 = v68;
  do
  {
    v168 = vmulq_f32(*v166, *v165);
    v165[-1] = vmulq_f32(v166[-1], v165[-1]);
    *v165 = v168;
    v165 += 2;
    v166 += 2;
    v167 -= 8;
  }

  while (v167);
  v61 = v53;
  if (v68 != v57)
  {
    goto LABEL_42;
  }

LABEL_44:
  v62 = v179;
  v74 = 0;
  if (v57 <= 0xB)
  {
    goto LABEL_45;
  }

  v98 = &v61[v9] - v12;
  if (v98 - 4 * v4 < 0x20)
  {
    goto LABEL_45;
  }

  if (v98 < 0x20)
  {
    goto LABEL_45;
  }

  v74 = v57 & 0xFFFFFFF8;
  v99 = (v12 + 4);
  v100 = &v61[v9 + 4];
  v101 = v74;
  do
  {
    v102 = vaddq_f32(*v99, *(v99 + 4 * v4));
    v100[-1] = vaddq_f32(v99[-1], *(v99 + 4 * v4 - 16));
    *v100 = v102;
    v99 += 2;
    v100 += 2;
    v101 -= 8;
  }

  while (v101);
  if (v74 != v57)
  {
LABEL_45:
    v75 = v57 - v74;
    v76 = v74;
    v77 = &v61[v74 + v9];
    v78 = &v12[v76];
    do
    {
      v79 = v78[v4];
      v80 = *v78++;
      *v77++ = v80 + v79;
      --v75;
    }

    while (v75);
  }

  if (*(this + 22) != 0.0)
  {
    v81 = v59;
    v82 = v57;
    do
    {
      v83 = *(this + 22);
      if (*v81 <= v83)
      {
        v84 = *(this + 22);
        v83 = *v81;
      }

      else
      {
        *v81 = v83;
        v84 = *(this + 22);
      }

      v85 = -v84;
      if (v83 < v85)
      {
        *v81 = v85;
      }

      ++v81;
      --v82;
    }

    while (v82);
  }

  v86 = *(this + 9);
  if (v86)
  {
    if (v57 < 0xC)
    {
      v87 = 0;
LABEL_58:
      v88 = v57 - v87;
      v89 = v87;
      v90 = &v12[v87 + v13];
      v91 = &v61[v9 + v89];
      v92 = &v86->f32[v89];
      do
      {
        v93 = *v92++;
        v94 = v93;
        v95 = *v91++;
        *v90 = *v90 + (v94 * v95);
        ++v90;
        --v88;
      }

      while (v88);
      goto LABEL_60;
    }

    v87 = 0;
    v156 = &v12[v57 + v13];
    v158 = v62 < &v61[v57 + v9] && v59 < v156;
    if (v86 < v156 && v62 < &v86->f32[v57])
    {
      goto LABEL_58;
    }

    if (v158)
    {
      goto LABEL_58;
    }

    v87 = v57 & 0xFFFFFFF8;
    v160 = v86 + 1;
    v161 = &v12[v13 + 4];
    v162 = (v59 + 16);
    v163 = v87;
    do
    {
      v164 = vmlaq_f32(*v161, *v162, *v160);
      v161[-1] = vmlaq_f32(v161[-1], v162[-1], v160[-1]);
      *v161 = v164;
      v160 += 2;
      v161 += 2;
      v162 += 2;
      v163 -= 8;
    }

    while (v163);
    if (v87 != v57)
    {
      goto LABEL_58;
    }
  }

LABEL_60:
  MEMORY[0x223DF29B0](v62, 1, v62, 1, v57);
  v184 = *v60;
  vvexpf(v62, v62, &v184);
  v183 = 1065353216;
  MEMORY[0x223DF29C0](v62, 1, &v183, v62, 1, *v60);
  vvrecf(v62, v62, &v184);
  v96 = *v60;
  if (!v96)
  {
    goto LABEL_74;
  }

  if (v96 <= 7)
  {
    v97 = 0;
LABEL_72:
    v106 = v96 - v97;
    v107 = &v61[v97];
    do
    {
      *v107 = v107[v9];
      ++v107;
      --v106;
    }

    while (v106);
    goto LABEL_74;
  }

  v97 = v96 & 0xFFFFFFF8;
  v103 = v61;
  v104 = v97;
  do
  {
    v105 = *&v103[v9 + 4];
    *v103 = *&v103[v9];
    *(v103 + 1) = v105;
    v103 += 8;
    v104 -= 8;
  }

  while (v104);
  if (v97 != v96)
  {
    goto LABEL_72;
  }

LABEL_74:
  v184 = v96;
  vvtanhf(v61, v61, &v184);
  v109 = *v60;
  if (!v109)
  {
    goto LABEL_88;
  }

  if (v109 <= 7 || (v61 < &v12[v109 + v13] ? (v110 = v62 >= &v61[v109]) : (v110 = 1), !v110))
  {
    v111 = 0;
LABEL_86:
    v116 = v109 - v111;
    v117 = v111;
    v118 = &v61[v111];
    v119 = &v12[v13 + v117];
    do
    {
      v120 = *v119++;
      v108.f32[0] = v120 * *v118;
      *v118++ = v108.f32[0];
      --v116;
    }

    while (v116);
    goto LABEL_88;
  }

  v111 = v109 & 0xFFFFFFF8;
  v112 = (v61 + 4);
  v113 = &v12[v13 + 4];
  v114 = v111;
  do
  {
    v108 = vmulq_f32(v113[-1], v112[-1]);
    v115 = vmulq_f32(*v113, *v112);
    v112[-1] = v108;
    *v112 = v115;
    v112 += 2;
    v113 += 2;
    v114 -= 8;
  }

  while (v114);
  if (v111 != v109)
  {
    goto LABEL_86;
  }

LABEL_88:
  v121 = *(this + 10);
  if (!v121)
  {
    v134 = *(this + 3);
    v135 = v181;
    if (!v134)
    {
      return v108.f32[0];
    }

    if (v134 >= 8 && (v181 - v61) > 0x1F)
    {
      v137 = v134 & 0xFFFFFFF8;
      v169 = (v181 + 4);
      v170 = (v61 + 4);
      v171 = v137;
      do
      {
        v108 = v170[-1];
        v172 = *v170;
        v169[-1] = v108;
        *v169 = v172;
        v169 += 2;
        v170 += 2;
        v171 -= 8;
      }

      while (v171);
      if (v137 == v134)
      {
        return v108.f32[0];
      }
    }

    else
    {
      v137 = 0;
    }

    v173 = v134 - v137;
    v174 = v137;
    v175 = &v135[v137];
    v176 = &v61[v174];
    do
    {
      v177 = *v176++;
      v108.i32[0] = v177;
      *v175++ = v177;
      --v173;
    }

    while (v173);
    return v108.f32[0];
  }

  v122 = v181;
  (*(*this + 80))(this, v60, v121, v61, v181);
  v123 = *(this + 3);
  if (v123)
  {
    v124 = 0;
    if (v123 < 8)
    {
      goto LABEL_95;
    }

    if ((v61 - v122) < 0x20)
    {
      goto LABEL_95;
    }

    v124 = v123 & 0xFFFFFFF8;
    v125 = (v61 + 4);
    v126 = (v122 + 4);
    v127 = v124;
    do
    {
      v108 = v126[-1];
      v128 = *v126;
      v125[-1] = v108;
      *v125 = v128;
      v125 += 2;
      v126 += 2;
      v127 -= 8;
    }

    while (v127);
    if (v124 != v123)
    {
LABEL_95:
      v129 = v123 - v124;
      v130 = v124;
      v131 = &v61[v124];
      v132 = &v122[v130];
      do
      {
        v133 = *v132++;
        v108.i32[0] = v133;
        *v131++ = v133;
        --v129;
      }

      while (v129);
    }
  }

  return v108.f32[0];
}

uint64_t NLSTMLayer::initialize(NLSTMLayer *this, const char *a2, unsigned int *a3, const char *a4, const unsigned int *a5)
{
  if ((a4 & 0xF) != 0)
  {
    Error::chuck("NLSTMLayer::initialize() - Unaligned data block", a2, a3);
  }

  v29 = a4;
  v28 = 0;
  v27 = 0;
  v26 = *a5;
  result = (*(*this + 64))(this, &v26, &v29, &v28, &v27 + 1, &v27);
  v12 = v27;
  v13 = v28;
  v14 = *a3;
  if (v27 == 1)
  {
    if (v28 <= v14)
    {
      Error::chuck("NLSTMLayer::initialize() - must be fewer outputs than cells when projecting", v11);
    }
  }

  else if (v28 != v14)
  {
  }

  v15 = *a2;
  v16 = 4 * v28;
  v17 = v16 * ((*a2 * result + 15) & 0x3FFFFFF0);
  v18 = v29;
  v19 = -v29;
  v20 = (v16 * ((v14 * result + 15) & 0x3FFFFFF0));
  v21 = &v29[(v16 * ((*a2 * result + 15) & 0x3FFFFFF0)) & 0xFFFFFFF0 | -v29 & 0xFLL];
  *(this + 4) = v29;
  *(this + 5) = v21;
  v22 = 16 * v13;
  *(this + 6) = &v18[&v20[v17] & 0xFFFFFFFFFFFFFFF0 | v19 & 0xF];
  v23 = &v18[&v20[v17 + v22] & 0xFFFFFFFFFFFFFFF0 | v19 & 0xF];
  v29 = v23;
  if (HIBYTE(v27) == 1)
  {
    *(this + 7) = v23;
    *(this + 8) = v23 + v16;
    *(this + 9) = v23 + v16 + v16;
    v23 = &v18[12 * v13 + ((4 * v13) & 0xC) + v20 + v17 + v22 + (v19 & 0xF)];
    v29 = v23;
  }

  if (v12)
  {
    *(this + 10) = v23;
    v23 += (((v13 * result + 15) & 0xFFFFFFF0) * v14) & 0xFFFFFFF0 | -v23 & 0xFLL;
    v29 = v23;
  }

  v24 = *a5;
  if (v23 - a4 != v24)
  {
    Error::chuck("NLSTMLayer::initialize() - data block wrong size (%d != %d)", v20, v23 - a4, v24);
  }

  if ((v18 & 0xF) != 0 || (v21 & 0xF) != 0 || (*(this + 80) & 0xF) != 0)
  {
    Error::chuck("NLSTMLayer::initialize() - Unaligned matrix", v20);
  }

  if (!v15)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", v20);
  }

  if (!v14)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size output", v20);
  }

  *(this + 2) = v15;
  *(this + 3) = *a3;
  *(this + 4) = v13;
  v25 = v13 + (-v13 & 0xF);
  *(this + 5) = 2 * v25;
  *(this + 6) = v25;
  return result;
}

void NLSTMLayer::computeProjection(NLSTMLayer *this, const unsigned int *a2, const float *a3, float32x4_t *a4, float *a5)
{
  v5 = *(this + 3);
  if (v5)
  {
    v6 = *a2;
    if (v6)
    {
      v7 = 4 * (v6 - 1) + 4;
      if (v6 > 7)
      {
        if ((v6 & 0xFFFFFFF8) == v6)
        {
          v10 = 0;
          v11 = a3 + 4;
          do
          {
            v12 = 0.0;
            v13 = v11;
            v14 = a4 + 1;
            v15 = v6;
            do
            {
              v16 = vmulq_f32(v13[-1], v14[-1]);
              v17 = vmulq_f32(*v13, *v14);
              v12 = (((((((v12 + v16.f32[0]) + v16.f32[1]) + v16.f32[2]) + v16.f32[3]) + v17.f32[0]) + v17.f32[1]) + v17.f32[2]) + v17.f32[3];
              v14 += 2;
              v13 += 2;
              v15 -= 8;
            }

            while (v15);
            a5[v10++] = v12;
            v11 = (v11 + v7);
          }

          while (v10 != v5);
        }

        else
        {
          v18 = 0;
          v19 = a3 + 4;
          do
          {
            v20 = 0.0;
            v21 = v19;
            v22 = a4 + 1;
            v23 = v6 & 0xFFFFFFF8;
            do
            {
              v24 = vmulq_f32(v21[-1], v22[-1]);
              v25 = vmulq_f32(*v21, *v22);
              v20 = (((((((v20 + v24.f32[0]) + v24.f32[1]) + v24.f32[2]) + v24.f32[3]) + v25.f32[0]) + v25.f32[1]) + v25.f32[2]) + v25.f32[3];
              v22 += 2;
              v21 += 2;
              v23 -= 8;
            }

            while (v23);
            v26 = v6 & 0xFFFFFFF8;
            do
            {
              v20 = v20 + (a3[v26] * a4->f32[v26]);
              ++v26;
            }

            while (v6 != v26);
            a3 = (a3 + v7);
            a5[v18++] = v20;
            v19 = (v19 + v7);
          }

          while (v18 != v5);
        }
      }

      else
      {
        v8 = a3 + 3;
        do
        {
          v9 = (*(v8 - 3) * a4->f32[0]) + 0.0;
          if (v6 != 1)
          {
            v9 = v9 + (*(v8 - 2) * a4->f32[1]);
            if (v6 != 2)
            {
              v9 = v9 + (*(v8 - 1) * a4->f32[2]);
              if (v6 != 3)
              {
                v9 = v9 + (*v8 * a4->f32[3]);
                if (v6 != 4)
                {
                  v9 = v9 + (v8[1] * a4[1].f32[0]);
                  if (v6 != 5)
                  {
                    v9 = v9 + (v8[2] * a4[1].f32[1]);
                    if (v6 != 6)
                    {
                      v9 = v9 + (v8[3] * a4[1].f32[2]);
                    }
                  }
                }
              }
            }
          }

          *a5++ = v9;
          v8 = (v8 + v7);
          --v5;
        }

        while (v5);
      }
    }

    else
    {
      bzero(a5, 4 * v5);
    }
  }
}

void NLSTMLayer::computeIFOC(NLSTMLayer *this, const unsigned int *a2, const float *a3, const float *a4, float32x4_t *a5, float32x4_t *a6, float *a7)
{
  v8 = 4 * *a2;
  if (v8)
  {
    v10 = *(this + 2);
    v9 = *(this + 3);
    v11 = -v9 & 3;
    if (v10)
    {
      v12 = -v10 & 3;
      v13 = 4 * (v10 - 1);
      if (v9)
      {
        v14 = 0;
        v15 = v13 + 4;
        v16 = 4 * (v9 - 1) + 4;
        v17 = a3 + 4;
        v18 = v13 + 4 * v12 + 4;
        v19 = a4 + 4;
        while (v10 >= 8)
        {
          v21 = 0.0;
          v23 = v17;
          v24 = a5 + 1;
          v25 = v10 & 0xFFFFFFF8;
          do
          {
            v26 = vmulq_f32(v23[-1], v24[-1]);
            v27 = vmulq_f32(*v23, *v24);
            v21 = (((((((v21 + v26.f32[0]) + v26.f32[1]) + v26.f32[2]) + v26.f32[3]) + v27.f32[0]) + v27.f32[1]) + v27.f32[2]) + v27.f32[3];
            v24 += 2;
            v23 += 2;
            v25 -= 8;
          }

          while (v25);
          if ((v10 & 0xFFFFFFF8) != v10)
          {
            v22 = &a3[v10 & 0xFFFFFFF8];
            v20 = v10 & 0xFFFFFFF8;
LABEL_12:
            v28 = v10 - v20;
            v29 = &a5->f32[v20];
            do
            {
              v30 = *v22++;
              v31 = v30;
              v32 = *v29++;
              v21 = v21 + (v31 * v32);
              --v28;
            }

            while (v28);
          }

          if (v9 >= 8)
          {
            v35 = v19;
            v36 = a6 + 1;
            v37 = v9 & 0xFFFFFFF8;
            do
            {
              v38 = vmulq_f32(v35[-1], v36[-1]);
              v39 = vmulq_f32(*v35, *v36);
              v21 = (((((((v21 + v38.f32[0]) + v38.f32[1]) + v38.f32[2]) + v38.f32[3]) + v39.f32[0]) + v39.f32[1]) + v39.f32[2]) + v39.f32[3];
              v36 += 2;
              v35 += 2;
              v37 -= 8;
            }

            while (v37);
            if ((v9 & 0xFFFFFFF8) == v9)
            {
              goto LABEL_5;
            }

            v34 = &a4[v9 & 0xFFFFFFF8];
            v33 = v9 & 0xFFFFFFF8;
          }

          else
          {
            v33 = 0;
            v34 = a4;
          }

          v40 = v9 - v33;
          v41 = &a6->f32[v33];
          do
          {
            v42 = *v34++;
            v43 = v42;
            v44 = *v41++;
            v21 = v21 + (v43 * v44);
            --v40;
          }

          while (v40);
LABEL_5:
          a3 = (a3 + 4 * v12 + v15);
          a7[v14++] = v21;
          v17 = (v17 + v18);
          a4 = (a4 + 4 * v11 + v16);
          v19 = (v19 + 4 * v11 + v16);
          if (v14 == v8)
          {
            return;
          }
        }

        v20 = 0;
        v21 = 0.0;
        v22 = a3;
        goto LABEL_12;
      }

      if (v10 >= 8)
      {
        v61 = 0;
        v62 = a3 + 4;
        v63 = v13 + 4 * v12 + 4;
        do
        {
          v64 = 0.0;
          v65 = v62;
          v66 = a5 + 1;
          v67 = v10 & 0xFFFFFFF8;
          do
          {
            v68 = vmulq_f32(v65[-1], v66[-1]);
            v69 = vmulq_f32(*v65, *v66);
            v64 = (((((((v64 + v68.f32[0]) + v68.f32[1]) + v68.f32[2]) + v68.f32[3]) + v69.f32[0]) + v69.f32[1]) + v69.f32[2]) + v69.f32[3];
            v66 += 2;
            v65 += 2;
            v67 -= 8;
          }

          while (v67);
          if ((v10 & 0xFFFFFFF8) != v10)
          {
            v70 = v10 & 0xFFFFFFF8;
            do
            {
              v64 = v64 + (a3[v70] * a5->f32[v70]);
              ++v70;
            }

            while (v10 != v70);
          }

          a7[v61++] = v64;
          v62 = (v62 + v63);
          a3 = (a3 + v63);
        }

        while (v61 != v8);
      }

      else
      {
        v49 = a3 + 3;
        do
        {
          v50 = (*(v49 - 3) * a5->f32[0]) + 0.0;
          if (v10 != 1)
          {
            v50 = v50 + (*(v49 - 2) * a5->f32[1]);
            if (v10 != 2)
            {
              v50 = v50 + (*(v49 - 1) * a5->f32[2]);
              if (v10 != 3)
              {
                v50 = v50 + (*v49 * a5->f32[3]);
                if (v10 != 4)
                {
                  v50 = v50 + (v49[1] * a5[1].f32[0]);
                  if (v10 != 5)
                  {
                    v50 = v50 + (v49[2] * a5[1].f32[1]);
                    if (v10 != 6)
                    {
                      v50 = v50 + (v49[3] * a5[1].f32[2]);
                    }
                  }
                }
              }
            }
          }

          *a7++ = v50;
          v49 = (v49 + 4 * v12 + v13 + 4);
          --v8;
        }

        while (v8);
      }
    }

    else if (v9)
    {
      v45 = 4 * (v9 - 1);
      if (v9 >= 8)
      {
        v51 = 0;
        v52 = a4 + 4;
        v53 = v45 + 4 * v11 + 4;
        do
        {
          v54 = 0.0;
          v55 = v52;
          v56 = a6 + 1;
          v57 = v9 & 0xFFFFFFF8;
          do
          {
            v58 = vmulq_f32(v55[-1], v56[-1]);
            v59 = vmulq_f32(*v55, *v56);
            v54 = (((((((v54 + v58.f32[0]) + v58.f32[1]) + v58.f32[2]) + v58.f32[3]) + v59.f32[0]) + v59.f32[1]) + v59.f32[2]) + v59.f32[3];
            v56 += 2;
            v55 += 2;
            v57 -= 8;
          }

          while (v57);
          if ((v9 & 0xFFFFFFF8) != v9)
          {
            v60 = v9 & 0xFFFFFFF8;
            do
            {
              v54 = v54 + (a4[v60] * a6->f32[v60]);
              ++v60;
            }

            while (v9 != v60);
          }

          a7[v51++] = v54;
          v52 = (v52 + v53);
          a4 = (a4 + v53);
        }

        while (v51 != v8);
      }

      else
      {
        v46 = a4 + 3;
        v47 = v45 + 4 * v11 + 4;
        do
        {
          v48 = (*(v46 - 3) * a6->f32[0]) + 0.0;
          if (v9 != 1)
          {
            v48 = v48 + (*(v46 - 2) * a6->f32[1]);
            if (v9 != 2)
            {
              v48 = v48 + (*(v46 - 1) * a6->f32[2]);
              if (v9 != 3)
              {
                v48 = v48 + (*v46 * a6->f32[3]);
                if (v9 != 4)
                {
                  v48 = v48 + (v46[1] * a6[1].f32[0]);
                  if (v9 != 5)
                  {
                    v48 = v48 + (v46[2] * a6[1].f32[1]);
                    if (v9 != 6)
                    {
                      v48 = v48 + (v46[3] * a6[1].f32[2]);
                    }
                  }
                }
              }
            }
          }

          *a7++ = v48;
          v46 = (v46 + v47);
          --v8;
        }

        while (v8);
      }
    }

    else
    {

      bzero(a7, 4 * v8);
    }
  }
}

uint64_t NLSTMLayer::loadHeader(NLSTMLayer *this, const char *a2, const char **a3, unsigned int *a4, BOOL *a5, BOOL *a6)
{
  if (*a2 <= 15)
  {
    Error::chuck("NLSTMLayer::initialize() - data block too small for header", a2, a3, a4, a5, a6, v6, v7);
  }

  v8 = *a3;
  *a4 = **a3;
  *(this + 22) = v8[1];
  *a5 = *(v8 + 8);
  *a6 = *(v8 + 9);
  *a3 = v8 + ((6 - v8) & 0xF) + 10;
  return 4;
}

void N4BitMatrixLayer::compute(N4BitMatrixLayer *this, const float *a2, float *a3, void *a4)
{
  v86[1] = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  if (!v4)
  {
    Error::chuck("N4BitMatrixLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v7 = (*(this + 6) + *(this + 2));
  MEMORY[0x28223BE20](this);
  v13 = v86 - v12;
  if (v10)
  {
    if (v10 <= 3)
    {
      v14 = 0;
      goto LABEL_14;
    }

    if (v10 >= 0x10)
    {
      v14 = v10 & 0xFFFFFFF0;
      v15 = vdupq_n_s32(0x437F0000u);
      v16.i64[0] = 0x8080808080808080;
      v16.i64[1] = 0x8080808080808080;
      v17 = v9;
      v18 = (v86 - v12);
      v19 = v14;
      do
      {
        v21 = v17[2];
        v20 = v17[3];
        v23 = *v17;
        v22 = v17[1];
        v17 += 4;
        v24 = vmulq_f32(v23, v15);
        v25 = vmulq_f32(v22, v15);
        v26 = vmulq_f32(v21, v15);
        v27 = vmulq_f32(v20, v15);
        v89.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v27.i8)));
        v89.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v26.i8)));
        v89.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v27, v27, 8uLL))));
        v89.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v26, v26, 8uLL))));
        v90.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v25.i8)));
        v90.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v24.i8)));
        v90.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v25, v25, 8uLL))));
        v90.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v24, v24, 8uLL))));
        v27.i64[0] = vqtbl4q_s8(v90, xmmword_223B13310).u64[0];
        v27.i64[1] = vqtbl4q_s8(v89, xmmword_223B13310).u64[0];
        *v18++ = veorq_s8(v27, v16);
        v19 -= 16;
      }

      while (v19);
      if (v14 == v10)
      {
        goto LABEL_16;
      }

      if ((v10 & 0xC) == 0)
      {
LABEL_14:
        v35 = v10 - v14;
        v36 = &v13[v14];
        v37 = &v9->f32[v14];
        do
        {
          v38 = *v37++;
          *v36++ = rintf(v38 * 255.0) ^ 0x80;
          --v35;
        }

        while (v35);
        goto LABEL_16;
      }
    }

    else
    {
      v14 = 0;
    }

    v28 = v14;
    v14 = v10 & 0xFFFFFFFC;
    v29 = v28 - v14;
    v30 = &v13[v28];
    v31 = (v9 + 4 * v28);
    v32 = vdupq_n_s32(0x437F0000u);
    do
    {
      v33 = *v31++;
      v34 = vmulq_f32(v33, v32);
      *v30 = vuzp1_s8(veor_s8(vmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v34.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v34, v34, 8uLL)))))), 0x80008000800080), *v32.f32).u32[0];
      v30 += 4;
      v29 += 4;
    }

    while (v29);
    if (v14 != v10)
    {
      goto LABEL_14;
    }
  }

LABEL_16:
  if (v10 < v7)
  {
    bzero(&v13[v10], (v11 - 1) + 1);
  }

  v39 = *(this + 3);
  MEMORY[0x28223BE20](v8);
  v41 = (v86 - ((v40 + 15) & 0x7FFFFFFF0));
  if (v39)
  {
    if (v7)
    {
      v42 = 0;
      v43 = ((v7 - 1) >> 1) + 1;
      v44 = v43 & 0xFFFFFFFFFFFFFFE0;
      while (1)
      {
        if (v7 >= 0x3F)
        {
          v47 = 0uLL;
          v48 = v4 + 1;
          v49 = 0uLL;
          v50 = v13 + 32;
          v51 = v43 & 0xFFFFFFFFFFFFFFE0;
          v52 = 0uLL;
          v53 = 0uLL;
          v54 = 0uLL;
          v55 = 0uLL;
          v56 = 0uLL;
          v57 = 0uLL;
          do
          {
            v58 = v48[-1];
            v59 = v50 - 32;
            v87 = vld2q_s8(v59);
            v60 = vshrq_n_s8(vshlq_n_s8(v58, 4uLL), 4uLL);
            v88 = vld2q_s8(v50);
            v61 = vshrq_n_s8(vshlq_n_s8(*v48, 4uLL), 4uLL);
            v62 = vmull_high_s8(v60, v87.val[0]);
            v63 = vmull_s8(*v60.i8, *v87.val[0].i8);
            v64 = vmull_high_s8(v61, v88.val[0]);
            v65 = vmull_s8(*v61.i8, *v88.val[0].i8);
            v66 = vaddw_s16(v47, *v63.i8);
            v67 = vaddw_high_s16(v49, v63);
            v68 = vshrq_n_s8(v58, 4uLL);
            v69 = vshrq_n_s8(*v48, 4uLL);
            v70 = vmull_s8(*v87.val[1].i8, *v68.i8);
            v71 = vmull_high_s8(v87.val[1], v68);
            v87.val[0] = vmull_s8(*v88.val[1].i8, *v69.i8);
            v72 = vmull_high_s8(v88.val[1], v69);
            v53 = vaddw_high_s16(vaddw_high_s16(v53, v62), v71);
            v52 = vaddw_s16(vaddw_s16(v52, *v62.i8), *v71.i8);
            v49 = vaddw_high_s16(v67, v70);
            v47 = vaddw_s16(v66, *v70.i8);
            v57 = vaddw_high_s16(vaddw_high_s16(v57, v64), v72);
            v56 = vaddw_s16(vaddw_s16(v56, *v64.i8), *v72.i8);
            v55 = vaddw_high_s16(vaddw_high_s16(v55, v65), v87.val[0]);
            v54 = vaddw_s16(vaddw_s16(v54, *v65.i8), *v87.val[0].i8);
            v48 += 2;
            v50 += 64;
            v51 -= 32;
          }

          while (v51);
          v4 = (v4 + v44);
          v46 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v54, v47), vaddq_s32(v56, v52)), vaddq_s32(vaddq_s32(v55, v49), vaddq_s32(v57, v53))));
          v45 = 2 * (v43 & 0xFFFFFFFFFFFFFFE0);
          if (v43 == v44)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v45 = 0;
          v46 = 0;
        }

        do
        {
          v73 = v4->i8[0];
          v4 = (v4 + 1);
          v46 += (v73 << 28 >> 28) * v13[v45] + v13[v45 + 1] * (v73 >> 4);
          v45 += 2;
        }

        while (v45 < v7);
LABEL_21:
        v41->i32[v42++] = v46;
        if (v42 == v39)
        {
          goto LABEL_30;
        }
      }
    }

    bzero(v86 - ((v40 + 15) & 0x7FFFFFFF0), v40);
LABEL_30:
    v74 = (this + 28);
    if (v39 <= 7 || this + 32 > a3 && v74 < &a3[v39])
    {
      v75 = 0;
LABEL_34:
      v76 = v39 - v75;
      v77 = v75;
      v78 = &a3[v75];
      v79 = &v41->i32[v77];
      do
      {
        v80 = *v79++;
        *v78++ = *v74 * v80;
        --v76;
      }

      while (v76);
      return;
    }

    v75 = v39 & 0xFFFFFFF8;
    v81 = vld1q_dup_f32(v74);
    v82 = a3 + 4;
    v83 = v41 + 1;
    v84 = v75;
    do
    {
      v85 = vmulq_f32(v81, vcvtq_f32_s32(*v83));
      *(v82 - 1) = vmulq_f32(v81, vcvtq_f32_s32(v83[-1]));
      *v82 = v85;
      v82 += 8;
      v83 += 2;
      v84 -= 8;
    }

    while (v84);
    if (v75 != v39)
    {
      goto LABEL_34;
    }
  }
}

float N4BitMatrixLayer::initialize(N4BitMatrixLayer *this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  if ((a4 & 0xF) != 0)
  {
    Error::chuck("N4BitMatrixLayer::initialize() - Unaligned data block", a2, a3);
  }

  v5 = *a2;
  v6 = (((*a2 + 1) >> 1) + 15) & 0xFFFFFFF0;
  if (*a5 != ((v6 * *a3) | 4))
  {
    Error::chuck("N4BitMatrixLayer::initialize() - Incorrect data size", a2);
  }

  if (!v5)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  if (!*a3)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size output", a2);
  }

  *(this + 2) = v5;
  *(this + 3) = *a3;
  *(this + 2) = a4;
  *(this + 6) = 2 * v6 - *a2;
  result = *&a4[*a5 - 4] * 0.00392156863;
  *(this + 7) = result;
  return result;
}

void NSigned8BitInput1DConvLayer::compute(NSigned8BitInput1DConvLayer *this, const float *a2, float *a3, void *a4)
{
  v97 = a2;
  v99 = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  if (!v4)
  {
    Error::chuck("NSigned8BitInput1DConvLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v6 = *(this + 3);
  MEMORY[0x28223BE20](this);
  v8 = (&v92 - ((v7 + 15) & 0x7FFFFFFF0));
  v10 = *(v9 + 36);
  MEMORY[0x28223BE20](v9);
  v98 = v12;
  v13 = &v92 - ((v12 + 15) & 0x7FFFFFFF0);
  if (!v6)
  {
    return;
  }

  v93 = v11;
  v14 = *(this + 12);
  v15 = *(this + 10);
  v16 = (v10 - 1);
  v17 = 0;
  if ((v10 & 7) != 0)
  {
    v96 = v16 + 1;
    LODWORD(v95) = -v15;
    v18 = v15 & 0xFFFFFFF8;
    v19 = 0uLL;
    while (1)
    {
      if (v10)
      {
        bzero(v13, v98);
        v20 = *(this + 8);
        if (!v20)
        {
          v4 += v96;
          v19 = 0uLL;
          if (!v15)
          {
            goto LABEL_6;
          }

          goto LABEL_14;
        }

        v21 = 0;
        v22 = v97;
        v19 = 0uLL;
        do
        {
          v23 = 0;
          v24 = 0;
          v25 = v20;
          do
          {
            v24 += *(v22 + v23) * *(v4 + v23);
            v23 += v10;
            --v25;
          }

          while (v25);
          *&v13[4 * v21] = v24;
          ++v4;
          v22 = (v22 + 1);
          ++v21;
        }

        while (v21 != v10);
      }

      if (!v15)
      {
        goto LABEL_6;
      }

LABEL_14:
      v26 = *(this + 11);
      v27 = v15 + v17;
      if (v26)
      {
        v28 = 0;
        v29 = v26 & 0xFFFFFFF8;
        while (1)
        {
          v30 = 0;
          v31 = 0;
          v32 = v28;
          if (v26 >= 8 && v28 <= -v26)
          {
            v33 = 0uLL;
            v34 = v26 & 0xFFFFFFF8;
            v35 = v28;
            v36 = 0uLL;
            do
            {
              v37 = &v13[4 * v35];
              v33 = vaddq_s32(*v37, v33);
              v36 = vaddq_s32(v37[1], v36);
              v35 += 8;
              v34 -= 8;
            }

            while (v34);
            v31 = vaddvq_s32(vaddq_s32(v36, v33));
            if (v26 == v29)
            {
              goto LABEL_16;
            }

            v32 = v28 + v29;
            v30 = v26 & 0xFFFFFFF8;
          }

          v38 = v26 - v30;
          do
          {
            v31 += *&v13[4 * v32++];
            --v38;
          }

          while (v38);
LABEL_16:
          v28 += v26;
          v8->i32[v17++] = v31;
          if (v17 == v27)
          {
            goto LABEL_5;
          }
        }
      }

      if (v15 >= 8)
      {
        v39 = v15 & 0xFFFFFFF8;
        v40 = v17;
        if (v17 <= v95)
        {
          do
          {
            v41 = &v8->i8[4 * v40];
            *v41 = v19;
            *(v41 + 1) = v19;
            v40 += 8;
            v39 -= 8;
          }

          while (v39);
          if (v15 == v18)
          {
            goto LABEL_5;
          }

          v17 += v18;
        }
      }

      do
      {
        v8->i32[v17++] = 0;
      }

      while (v27 != v17);
LABEL_5:
      v17 = v27;
LABEL_6:
      v4 += v14;
      if (v17 >= v6)
      {
        goto LABEL_66;
      }
    }
  }

  v42 = v16 >> 3;
  v95 = 8 * v42 + 8;
  v96 = 32 * v42;
  v94 = -v15;
  v43 = v15 & 0xFFFFFFF8;
  v44 = 0uLL;
  do
  {
    if (!v10)
    {
      goto LABEL_44;
    }

    bzero(v13, v98);
    v45 = *(this + 8);
    if (v45)
    {
      v46 = 0;
      v47 = v97;
      v44 = 0uLL;
      do
      {
        v48 = 0;
        v49 = 0uLL;
        v50 = v45;
        v51 = 0uLL;
        do
        {
          v52 = vmull_s8(*(v47 + v48), *(v4 + v48));
          v51 = vaddw_s16(v51, *v52.i8);
          v49 = vaddw_high_s16(v49, v52);
          v48 += v10;
          --v50;
        }

        while (v50);
        v53 = &v13[4 * v46];
        *v53 = v51;
        v53[1] = v49;
        v4 += 8;
        v47 += 2;
        v46 += 8;
      }

      while (v46 < v10);
LABEL_44:
      if (v15)
      {
        goto LABEL_45;
      }

      goto LABEL_37;
    }

    bzero(v13, v96 + 32);
    v4 += v95;
    v44 = 0uLL;
    if (v15)
    {
LABEL_45:
      v54 = *(this + 11);
      v55 = v15 + v17;
      if (v54)
      {
        v56 = 0;
        v57 = v54 & 0xFFFFFFF8;
        while (1)
        {
          v58 = 0;
          v59 = 0;
          v60 = v56;
          if (v54 >= 8 && v56 <= -v54)
          {
            v61 = 0uLL;
            v62 = v54 & 0xFFFFFFF8;
            v63 = v56;
            v64 = 0uLL;
            do
            {
              v65 = &v13[4 * v63];
              v61 = vaddq_s32(*v65, v61);
              v64 = vaddq_s32(v65[1], v64);
              v63 += 8;
              v62 -= 8;
            }

            while (v62);
            v59 = vaddvq_s32(vaddq_s32(v64, v61));
            if (v54 == v57)
            {
              goto LABEL_47;
            }

            v60 = v56 + v57;
            v58 = v54 & 0xFFFFFFF8;
          }

          v66 = v54 - v58;
          do
          {
            v59 += *&v13[4 * v60++];
            --v66;
          }

          while (v66);
LABEL_47:
          v56 += v54;
          v8->i32[v17++] = v59;
          if (v17 == v55)
          {
            goto LABEL_36;
          }
        }
      }

      if (v15 < 8 || (v67 = v15 & 0xFFFFFFF8, v68 = v17, v17 > v94))
      {
        do
        {
LABEL_64:
          v8->i32[v17++] = 0;
        }

        while (v55 != v17);
      }

      else
      {
        do
        {
          v69 = &v8->i8[4 * v68];
          *v69 = v44;
          *(v69 + 1) = v44;
          v68 += 8;
          v67 -= 8;
        }

        while (v67);
        if (v15 != v43)
        {
          v17 += v43;
          goto LABEL_64;
        }
      }

LABEL_36:
      v17 = v55;
    }

LABEL_37:
    v4 += v14;
  }

  while (v17 < v6);
LABEL_66:
  v70 = *(this + 3);
  if (v6 > 7)
  {
    v71 = v6 & 0xFFFFFFF8;
    v73 = v8 + 1;
    v74 = v70 + 1;
    v75 = v71;
    v72 = v93;
    do
    {
      v76 = vaddq_s32(*v73, *v74);
      v73[-1] = vaddq_s32(v73[-1], v74[-1]);
      *v73 = v76;
      v73 += 2;
      v74 += 2;
      v75 -= 8;
    }

    while (v75);
    if (v71 != v6)
    {
      v70 = (v70 + 4 * (v6 & 0xFFFFFFF8));
      goto LABEL_72;
    }
  }

  else
  {
    v71 = 0;
    v72 = v93;
LABEL_72:
    v77 = v6 - v71;
    v78 = &v8->i8[4 * v71];
    do
    {
      v79 = v70->i32[0];
      v70 = (v70 + 4);
      *v78 += v79;
      v78 += 4;
      --v77;
    }

    while (v77);
  }

  v80 = (this + 52);
  if (v6 <= 7 || this + 56 > v72 && v80 < &v72->f32[v6])
  {
    v81 = 0;
    goto LABEL_78;
  }

  v81 = v6 & 0xFFFFFFF8;
  v87 = vld1q_dup_f32(v80);
  v88 = v72 + 1;
  v89 = v8 + 1;
  v90 = v81;
  do
  {
    v91 = vmulq_f32(v87, vcvtq_f32_s32(*v89));
    v88[-1] = vmulq_f32(v87, vcvtq_f32_s32(v89[-1]));
    *v88 = v91;
    v88 += 2;
    v89 += 2;
    v90 -= 8;
  }

  while (v90);
  if (v81 != v6)
  {
LABEL_78:
    v82 = v6 - v81;
    v83 = v81;
    v84 = &v72->f32[v81];
    v85 = &v8->i32[v83];
    do
    {
      v86 = *v85++;
      *v84++ = *v80 * v86;
      --v82;
    }

    while (v82);
  }
}

uint64_t NSigned8BitQuantizeLayer::compute(uint64_t this, const float *a2, float *a3, void *a4)
{
  if (!*(this + 16))
  {
    Error::chuck("NSigned8BitQuantizeLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v4 = *(this + 8);
  LODWORD(v5) = v4;
  if (v4 >= 0x10)
  {
    v6 = v4 >> 4;
    v7 = a2 + 8;
    v8 = a3 + 2;
    v9 = vdupq_n_s32(0x437F0000u);
    do
    {
      v10 = vmulq_f32(*(v7 - 8), v9);
      v11 = vmulq_f32(*(v7 - 4), v9);
      v12 = *v7;
      v13 = *(v7 + 4);
      v7 += 16;
      v16.val[0] = vcvtnq_s32_f32(v10);
      v16.val[1] = vcvtnq_s32_f32(v11);
      v16.val[2] = vcvtnq_s32_f32(vmulq_f32(v12, v9));
      v16.val[3] = vcvtnq_s32_f32(vmulq_f32(v13, v9));
      *(v8 - 2) = vqtbl4q_s8(v16, xmmword_223B13300);
      v8 += 4;
      --v6;
    }

    while (v6);
    LODWORD(v5) = *(this + 8);
  }

  v14 = v4 & 0xFFFFFFF0;
  if (v14 < v5)
  {
    do
    {
      *(a3 + v14) = rintf(a2[v14] * 255.0);
      ++v14;
      v5 = *(this + 8);
    }

    while (v14 < v5);
  }

  if (v5)
  {
    v15 = 0;
    do
    {
      *(a3 + v15++) ^= 0x80u;
    }

    while (v15 < *(this + 8));
  }

  return this;
}

void NLogSoftmaxOnlyLayer::compute(NLogSoftmaxOnlyLayer *this, const float *a2, float32x4_t *__dst, void *a4)
{
  if (!*(this + 2))
  {
    Error::chuck("NLogSoftmaxOnlyLayer::compute() - Layer uninitialized", a2, __dst, a4);
  }

  memcpy(__dst, a2, 4 * *(this + 3));
  v6 = *(this + 3);
  v7 = __dst->f32[0];
  if (v6 >= 2)
  {
    v8 = v6 - 1;
    v9 = &__dst->f32[1];
    do
    {
      v10 = *v9++;
      v11 = v10;
      if (v10 > v7)
      {
        v7 = v11;
      }

      --v8;
    }

    while (v8);
  }

  if (!v6)
  {
    return;
  }

  if (v6 == 1)
  {
    v12 = 0;
    v13 = 0.0;
  }

  else
  {
    v12 = v6 & 0xFFFFFFFE;
    v14 = &__dst->f32[1];
    v13 = 0.0;
    v15 = v12;
    do
    {
      v16 = *v14 - v7;
      v17 = expf(*(v14 - 1) - v7);
      v13 = (v13 + v17) + expf(v16);
      v14 += 2;
      v15 -= 2;
    }

    while (v15);
    if (v12 == v6)
    {
      goto LABEL_15;
    }
  }

  v18 = v6 - v12;
  v19 = &__dst->f32[v12];
  do
  {
    v20 = *v19++;
    v13 = v13 + expf(v20 - v7);
    --v18;
  }

  while (v18);
LABEL_15:
  *v21.i32 = v7 + logf(v13);
  if (v6 < 8)
  {
    v22 = 0;
LABEL_20:
    v27 = v6 - v22;
    v28 = &__dst->f32[v22];
    do
    {
      *v28 = *v28 - *v21.i32;
      ++v28;
      --v27;
    }

    while (v27);
    return;
  }

  v22 = v6 & 0xFFFFFFF8;
  v23 = vdupq_lane_s32(v21, 0);
  v24 = __dst + 1;
  v25 = v22;
  do
  {
    v26 = vsubq_f32(*v24, v23);
    v24[-1] = vsubq_f32(v24[-1], v23);
    *v24 = v26;
    v24 += 2;
    v25 -= 8;
  }

  while (v25);
  if (v22 != v6)
  {
    goto LABEL_20;
  }
}

uint64_t NLogSoftmaxOnlyLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a2;
  if (*a2 != *a3)
  {
    Error::chuck("NLogSoftmaxOnlyLayer::initialize() - input and output size must be the same", a2);
  }

  if (!v5)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

void NVectorScaleLayer::compute(NVectorScaleLayer *this, const float *a2, float *a3, void *a4)
{
  v7 = *(this + 2);
  if (v7)
  {

    JUMPOUT(0x223DF29A0);
  }

  Error::chuck("NVectorScaleLayer::compute() - Layer uninitialized", a2, v7, a4, a3, v4, v5);
}

void *NSubVectorSelectLayer::compute(void *this, const float *a2, float *a3, void *a4)
{
  v4 = this[2];
  if (!v4)
  {
    Error::chuck("NSubVectorSelectLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v5 = *(v4 + 4);
  if (v5)
  {
    v8 = this;
    v9 = 0;
    v10 = 3;
    do
    {
      this = memcpy(&a3[v9], &a2[*(v4 + 4 * (v10 - 3))], 4 * v5);
      v9 += v5;
      v4 = v8[2];
      v5 = *(v4 + 4 * v10);
      v10 += 2;
    }

    while (v5);
  }

  return this;
}

uint64_t NBlockDiagonalLayer::compute(NBlockDiagonalLayer *this, const float *a2, float *a3, void *a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    Error::chuck("NBlockDiagonalLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  if (*(this + 8))
  {
    v7 = 0;
    v8 = (v4 + 4 * (*(this + 6) * *(this + 7)));
    do
    {
      memcpy(&a3[*(this + 7) * v7++], v8, 4 * *(this + 7));
    }

    while (v7 < *(this + 8));
  }

  return cblas_sgemm_NEWLAPACK_ILP64();
}

uint64_t NShiftRegisterLayer::compute(NShiftRegisterLayer *this, const float *a2, float *a3, NFrameWindow *a4)
{
  if (!*(this + 2))
  {
    Error::chuck("NShiftRegisterLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  if (!a4)
  {
    Error::chuck("NShiftRegisterLayer::compute() - State uninitialized", a2, a3);
  }

  NFrameWindow::pushFrame(a4, a2);

  return NFrameWindow::setOutputFrameWindow(a4, a3);
}

uint64_t NSigmoidOnlyLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a2;
  if (*a2 != *a3)
  {
    Error::chuck("NSigmoidOnlyLayer::initialize() - input and output size must be the same", a2);
  }

  if (!v5)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

uint64_t NMatrixLayer::compute(NMatrixLayer *this, const float *a2, float *__dst, void *a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    Error::chuck("NMatrixLayer::compute() - Layer uninitialized", a2, __dst, a4);
  }

  memcpy(__dst, (v4 + 4 * (*(this + 2) * *(this + 3))), 4 * *(this + 3));
  return cblas_sgemv_NEWLAPACK_ILP64();
}

uint64_t NMatrixLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (v6 + v6 * *a2 != *a5 >> 2)
  {
    Error::chuck("NMatrixLayer::initialize() - Incorrect data size", a2);
  }

  if ((a4 & 0xF) != 0)
  {
    Error::chuck("NMatrixLayer::initialize() - Unaligned data block", a2);
  }

  if (!v5)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  if (!v6)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size output", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

uint64_t NFixLogSoftmaxLayer::compute(uint64_t this, const char *a2, int *a3)
{
  v3 = *(this + 16);
  if (!v3)
  {
    Error::chuck("NFixMatrixBaseLayer::compute() - Layer uninitialized", a2, a3);
  }

  LODWORD(v4) = *(this + 12);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v8 = *(this + 8);
      if (v8)
      {
        break;
      }

      v6 = 0;
LABEL_5:
      a3[v5++] = v6;
      v7 = *(this + 12);
      if (v5 >= v7)
      {
        if (v7)
        {
          v40 = 0;
          do
          {
            a3[v40] += (0x7FFF * v3->i16[v40]) >> *(this + 24);
            ++v40;
            v4 = *(this + 12);
          }

          while (v40 < v4);
        }

        else
        {
          LODWORD(v4) = 0;
        }

        goto LABEL_28;
      }
    }

    v9 = *(this + 24);
    if (v8 <= 3)
    {
      v10 = 0;
      v6 = 0;
      v11 = v3;
      goto LABEL_20;
    }

    v12 = vdupq_n_s32(v9);
    if (v8 >= 0x10)
    {
      v10 = v8 & 0xFFFFFFF0;
      v13 = v3 + 1;
      v14 = 0uLL;
      v15 = vnegq_s32(v12);
      v16 = (a2 + 32);
      v17 = v10;
      v18 = 0uLL;
      v19 = 0uLL;
      v20 = 0uLL;
      do
      {
        v21 = v13[-1];
        v22 = *(v16 - 2);
        v23 = *(v16 - 1);
        v24 = *v16;
        v25 = *(v16 + 1);
        v16 += 16;
        v18 = vaddq_s32(vshlq_s32(vmulq_s32(v23, vmovl_high_s16(v21)), v15), v18);
        v14 = vaddq_s32(vshlq_s32(vmulq_s32(v22, vmovl_s16(*v21.i8)), v15), v14);
        v20 = vaddq_s32(vshlq_s32(vmulq_s32(v25, vmovl_high_s16(*v13)), v15), v20);
        v19 = vaddq_s32(vshlq_s32(vmulq_s32(v24, vmovl_s16(*v13->i8)), v15), v19);
        v13 += 2;
        v17 -= 16;
      }

      while (v17);
      v6 = vaddvq_s32(vaddq_s32(vaddq_s32(v19, v14), vaddq_s32(v20, v18)));
      if (v10 == v8)
      {
        goto LABEL_22;
      }

      if ((v8 & 0xC) == 0)
      {
        v11 = (v3 + 2 * v10);
        goto LABEL_20;
      }
    }

    else
    {
      v6 = 0;
      v10 = 0;
    }

    v26 = v10;
    v10 = v8 & 0xFFFFFFFC;
    v27 = v6;
    v28 = v26 - v10;
    v29 = &a2[4 * v26];
    v30 = (v3 + 2 * v26);
    v31 = vnegq_s32(v12);
    do
    {
      v32 = *v30++;
      v33 = vmovl_s16(v32);
      v34 = *v29;
      v29 += 4;
      v27 = vaddq_s32(vshlq_s32(vmulq_s32(v34, v33), v31), v27);
      v28 += 4;
    }

    while (v28);
    v6 = vaddvq_s32(v27);
    if (v10 == v8)
    {
      goto LABEL_22;
    }

    v11 = (v3 + 2 * (v8 & 0xFFFFFFFC));
LABEL_20:
    v35 = v8 - v10;
    v36 = &a2[4 * v10];
    do
    {
      v38 = v11->i16[0];
      v11 = (v11 + 2);
      v37 = v38;
      v39 = *v36++;
      v6 += (v39 * v37) >> v9;
      --v35;
    }

    while (v35);
LABEL_22:
    v3 = (v3 + 2 * (v8 - 1) + 2);
    goto LABEL_5;
  }

LABEL_28:
  v41 = *(this + 28) - *(this + 24);
  v42 = *(this + 32);
  v43 = *(v42 + 12);
  v44 = v41 - v43 + 15;
  v45 = *a3 >> (*(this + 28) - *(this + 24) - v43 + 15);
  if (v4 >= 2)
  {
    v46 = *(v42 + 4);
    v47 = v4 - 1;
    v48 = a3 + 1;
    do
    {
      v50 = *v48++;
      v51 = v50 >> v44;
      v52 = v45 - (v50 >> v44);
      if (v45 <= v50 >> v44)
      {
        v53 = (v51 - v45) >> 1;
        if (v53 < v46)
        {
          v49 = *(*(v42 + 24) + 2 * v53);
        }

        else
        {
          v49 = 0;
        }

        v45 = v49 + v51;
      }

      else if (v52 >> 1 < v46)
      {
        v45 += *(*(v42 + 24) + 2 * (v52 >> 1));
      }

      --v47;
    }

    while (v47);
  }

  if (v4)
  {
    v54 = 0;
    v55 = v45 << (15 - v43);
    do
    {
      a3[v54] = (a3[v54] >> v41) - v55;
      ++v54;
    }

    while (v54 < *(this + 12));
  }

  return this;
}

uint64_t NFixMatrixBaseLayer::initialize(uint64_t this, const char *a2, unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a5 >> 1;
  v6 = *a2;
  v7 = *a3;
  if (v5 != v7 + v7 * *a2 + 1)
  {
    Error::chuck("NFixMatrixBaseLayer::initialize() - Incorrect data size", a2);
  }

  if (!v6)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  if (!v7)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size output", a2);
  }

  *(this + 8) = v6;
  v8 = *a3;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  v9 = 32 - __clz(v8);
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *&a4[2 * v5 - 2];
  *(this + 24) = v10;
  *(this + 28) = v11;
  return this;
}

uint64_t NFixSigmoidalLayer::compute(uint64_t this, const char *a2, int *a3)
{
  v3 = *(this + 16);
  if (!v3)
  {
    Error::chuck("NFixMatrixBaseLayer::compute() - Layer uninitialized", a2, a3);
  }

  if (*(this + 12))
  {
    v4 = 0;
    while (1)
    {
      v7 = *(this + 8);
      if (v7)
      {
        break;
      }

      v5 = 0;
LABEL_5:
      a3[v4++] = v5;
      v6 = *(this + 12);
      if (v4 >= v6)
      {
        if (v6)
        {
          v39 = 0;
          do
          {
            a3[v39] += (0x7FFF * v3->i16[v39]) >> *(this + 24);
            ++v39;
            v40 = *(this + 12);
          }

          while (v39 < v40);
          if (v40)
          {
            v41 = 0;
            v42 = *(this + 32);
            v43 = *(this + 28) - *(this + 24) - *(v42 + 12) + 15;
            do
            {
              v45 = a3[v41] >> v43;
              if ((v45 & 0x80000000) != 0)
              {
                v44 = 0;
                v46 = -v45;
                if (*(v42 + 4) > v46)
                {
                  v44 = 0x7FFF - *(*(v42 + 24) + 2 * v46);
                }
              }

              else if (v45 < *(v42 + 4))
              {
                v44 = *(*(v42 + 24) + 2 * v45);
              }

              else
              {
                v44 = 0x7FFF;
              }

              a3[v41++] = v44;
            }

            while (v41 < *(this + 12));
          }
        }

        return this;
      }
    }

    v8 = *(this + 24);
    if (v7 <= 3)
    {
      v9 = 0;
      v5 = 0;
      v10 = v3;
      goto LABEL_20;
    }

    v11 = vdupq_n_s32(v8);
    if (v7 >= 0x10)
    {
      v9 = v7 & 0xFFFFFFF0;
      v12 = v3 + 1;
      v13 = 0uLL;
      v14 = vnegq_s32(v11);
      v15 = (a2 + 32);
      v16 = v9;
      v17 = 0uLL;
      v18 = 0uLL;
      v19 = 0uLL;
      do
      {
        v20 = v12[-1];
        v21 = *(v15 - 2);
        v22 = *(v15 - 1);
        v23 = *v15;
        v24 = *(v15 + 1);
        v15 += 16;
        v17 = vaddq_s32(vshlq_s32(vmulq_s32(v22, vmovl_high_s16(v20)), v14), v17);
        v13 = vaddq_s32(vshlq_s32(vmulq_s32(v21, vmovl_s16(*v20.i8)), v14), v13);
        v19 = vaddq_s32(vshlq_s32(vmulq_s32(v24, vmovl_high_s16(*v12)), v14), v19);
        v18 = vaddq_s32(vshlq_s32(vmulq_s32(v23, vmovl_s16(*v12->i8)), v14), v18);
        v12 += 2;
        v16 -= 16;
      }

      while (v16);
      v5 = vaddvq_s32(vaddq_s32(vaddq_s32(v18, v13), vaddq_s32(v19, v17)));
      if (v9 == v7)
      {
        goto LABEL_22;
      }

      if ((v7 & 0xC) == 0)
      {
        v10 = (v3 + 2 * v9);
        goto LABEL_20;
      }
    }

    else
    {
      v5 = 0;
      v9 = 0;
    }

    v25 = v9;
    v9 = v7 & 0xFFFFFFFC;
    v26 = v5;
    v27 = v25 - v9;
    v28 = &a2[4 * v25];
    v29 = (v3 + 2 * v25);
    v30 = vnegq_s32(v11);
    do
    {
      v31 = *v29++;
      v32 = vmovl_s16(v31);
      v33 = *v28;
      v28 += 4;
      v26 = vaddq_s32(vshlq_s32(vmulq_s32(v33, v32), v30), v26);
      v27 += 4;
    }

    while (v27);
    v5 = vaddvq_s32(v26);
    if (v9 == v7)
    {
      goto LABEL_22;
    }

    v10 = (v3 + 2 * (v7 & 0xFFFFFFFC));
LABEL_20:
    v34 = v7 - v9;
    v35 = &a2[4 * v9];
    do
    {
      v37 = v10->i16[0];
      v10 = (v10 + 2);
      v36 = v37;
      v38 = *v35++;
      v5 += (v38 * v36) >> v8;
      --v34;
    }

    while (v34);
LABEL_22:
    v3 = (v3 + 2 * (v7 - 1) + 2);
    goto LABEL_5;
  }

  return this;
}

void NOffsetLayer::compute(NOffsetLayer *this, const float *a2, float *a3, void *a4)
{
  v7 = *(this + 2);
  if (v7)
  {

    JUMPOUT(0x223DF2950);
  }

  Error::chuck("NOffsetLayer::compute() - Layer uninitialized", a2, v7, a4, a3, v4, v5);
}

uint64_t NOffsetLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a5 >> 2;
  if (v5 != *a2)
  {
    Error::chuck("NOffsetLayer::initialize() - Incorrect data size", a2, a3, a4);
  }

  if (v5 != *a3)
  {
    Error::chuck("NOffsetLayer::initialize() - Input and output not same", a2);
  }

  if (*a5 <= 3)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

uint64_t NNormalizationLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a2;
  if (*a5 >> 2 != 2 * *a2)
  {
    Error::chuck("NNormalizationLayer::initialize() - Incorrect data size", a2, a3, a4);
  }

  if (v5 != *a3)
  {
    Error::chuck("NNormalizationLayer::initialize() - Input and output not same size", a2);
  }

  if (!v5)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  *(this + 8) = v5;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

void NLogSoftmaxLayer::compute(NLogSoftmaxLayer *this, const float *a2, float32x4_t *__dst, void *a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    Error::chuck("NMatrixLayer::compute() - Layer uninitialized", a2, __dst, a4);
  }

  memcpy(__dst, (v4 + 4 * (*(this + 2) * *(this + 3))), 4 * *(this + 3));
  cblas_sgemv_NEWLAPACK_ILP64();
  v7 = *(this + 3);
  v8 = __dst->f32[0];
  if (v7 >= 2)
  {
    v9 = v7 - 1;
    v10 = &__dst->f32[1];
    do
    {
      v11 = *v10++;
      v12 = v11;
      if (v11 > v8)
      {
        v8 = v12;
      }

      --v9;
    }

    while (v9);
  }

  if (!v7)
  {
    return;
  }

  if (v7 == 1)
  {
    v13 = 0;
    v14 = 0.0;
  }

  else
  {
    v13 = v7 & 0xFFFFFFFE;
    v15 = &__dst->f32[1];
    v14 = 0.0;
    v16 = v13;
    do
    {
      v17 = *v15 - v8;
      v18 = expf(*(v15 - 1) - v8);
      v14 = (v14 + v18) + expf(v17);
      v15 += 2;
      v16 -= 2;
    }

    while (v16);
    if (v13 == v7)
    {
      goto LABEL_15;
    }
  }

  v19 = v7 - v13;
  v20 = &__dst->f32[v13];
  do
  {
    v21 = *v20++;
    v14 = v14 + expf(v21 - v8);
    --v19;
  }

  while (v19);
LABEL_15:
  *v22.i32 = v8 + logf(v14);
  if (v7 < 8)
  {
    v23 = 0;
LABEL_20:
    v28 = v7 - v23;
    v29 = &__dst->f32[v23];
    do
    {
      *v29 = *v29 - *v22.i32;
      ++v29;
      --v28;
    }

    while (v28);
    return;
  }

  v23 = v7 & 0xFFFFFFF8;
  v24 = vdupq_lane_s32(v22, 0);
  v25 = __dst + 1;
  v26 = v23;
  do
  {
    v27 = vsubq_f32(*v25, v24);
    v25[-1] = vsubq_f32(v25[-1], v24);
    *v25 = v27;
    v25 += 2;
    v26 -= 8;
  }

  while (v26);
  if (v23 != v7)
  {
    goto LABEL_20;
  }
}

void NSigmoidalLayer::compute(NSigmoidalLayer *this, const float *a2, float *__dst, void *a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    Error::chuck("NMatrixLayer::compute() - Layer uninitialized", a2, __dst, a4);
  }

  memcpy(__dst, (v4 + 4 * (*(this + 2) * *(this + 3))), 4 * *(this + 3));
  cblas_sgemv_NEWLAPACK_ILP64();
  MEMORY[0x223DF29B0](__dst, 1, __dst, 1, *(this + 3));
  v8 = *(this + 3);
  vvexpf(__dst, __dst, &v8);
  v7 = 1065353216;
  MEMORY[0x223DF29C0](__dst, 1, &v7, __dst, 1, *(this + 3));
  vvrecf(__dst, __dst, &v8);
}

void NSmartPointer<NBaseLayer>::~NSmartPointer(void *a1)
{
  *a1 = &unk_283708548;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(a1[1]);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NSmartPointer<NBaseLayer>::~NSmartPointer(void *result)
{
  *result = &unk_283708548;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(result[1]);
    return v2;
  }

  return result;
}

void NLayer::~NLayer(NLayer *this)
{
  *this = &unk_283708548;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(*(this + 1));
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283708548;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

uint64_t NArray<NLayer>::fromArray(uint64_t result, const char *a2, int *a3)
{
  v3 = *(result + 16);
  v4 = *a3;
  if (v3 != *a3)
  {
    v5 = result;
    v6 = *(result + 8);
    if (v6)
    {
      v8 = v6 - 16;
      v9 = *(v6 - 8);
      if (v9)
      {
        v10 = 16 * v9;
        v11 = v6 + v10;
        v12 = (v11 - 8);
        v13 = -v10;
        v14 = v11 - 16;
        do
        {
          *(v12 - 1) = &unk_283708548;
          if (*v12)
          {
            (*(**v12 + 8))(*v12);
          }

          v12 -= 2;
          v14 -= 16;
          v13 += 16;
        }

        while (v13);
      }

      MEMORY[0x223DF1D00](v8, 0xA1C80BD48D6D6);
      v4 = *a3;
    }

    *(v5 + 16) = v4;
    operator new[]();
  }

  if (v3)
  {
    Error::chuck("NLayer::operator=() - attempting to copy layer prohibited", a2);
  }

  return result;
}

uint64_t NArray<NLayer>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = *(result + 16);
    v3 = *(a2 + 16);
    if (v2 != v3)
    {
      v4 = *(result + 8);
      if (v4)
      {
        v6 = result;
        v7 = v4 - 16;
        v8 = *(v4 - 8);
        if (v8)
        {
          v9 = 16 * v8;
          v10 = v4 + v9;
          v11 = (v10 - 8);
          v12 = -v9;
          v13 = v10 - 16;
          do
          {
            *(v11 - 1) = &unk_283708548;
            if (*v11)
            {
              (*(**v11 + 8))(*v11);
            }

            v11 -= 2;
            v13 -= 16;
            v12 += 16;
          }

          while (v12);
        }

        MEMORY[0x223DF1D00](v7, 0xA1C80BD48D6D6);
        v3 = *(a2 + 16);
        result = v6;
      }

      *(result + 16) = v3;
      operator new[]();
    }

    if (v2)
    {
      Error::chuck("NLayer::operator=() - attempting to copy layer prohibited", a2);
    }
  }

  return result;
}

void NArray<NLayer>::~NArray(void *a1)
{
  *a1 = &unk_283708500;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = 16 * v4;
      v6 = v2 + v5;
      v7 = (v6 - 8);
      v8 = -v5;
      v9 = v6 - 16;
      do
      {
        *(v7 - 1) = &unk_283708548;
        if (*v7)
        {
          (*(**v7 + 8))(*v7);
        }

        v7 -= 2;
        v9 -= 16;
        v8 += 16;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0xA1C80BD48D6D6);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

void *NArray<NLayer>::~NArray(void *result)
{
  *result = &unk_283708500;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = 16 * v4;
      v6 = v1 + v5;
      v7 = (v6 - 8);
      v8 = -v5;
      v9 = v6 - 16;
      do
      {
        *(v7 - 1) = &unk_283708548;
        if (*v7)
        {
          (*(**v7 + 8))(*v7);
        }

        v7 -= 2;
        v9 -= 16;
        v8 += 16;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0xA1C80BD48D6D6);
    return v2;
  }

  return result;
}

{
  *result = &unk_283708500;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      v5 = 16 * v4;
      v6 = v1 + v5;
      v7 = (v6 - 8);
      v8 = -v5;
      v9 = v6 - 16;
      do
      {
        *(v7 - 1) = &unk_283708548;
        if (*v7)
        {
          (*(**v7 + 8))(*v7);
        }

        v7 -= 2;
        v9 -= 16;
        v8 += 16;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0xA1C80BD48D6D6);
    return v2;
  }

  return result;
}

uint64_t NDeepnetDistribution::reset(NDeepnetDistribution *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  v4 = 0;
  NArray<NLayer>::resize(this + 32, &v4);
  v5 = 0;
  (*(*(this + 7) + 64))(this + 56, "", &v5);
  *(this + 24) = 0;
  *(this + 13) = 0;
  v2 = *(this + 36);
  if (v2)
  {
    munmap(*(this + 19), v2);
  }

  *(this + 36) = 0;
  *(this + 19) = 0;
  v6 = 0;
  return (*(*(this + 14) + 64))(this + 112, "", &v6);
}

uint64_t NDeepnetDistribution::loadFixedInputLayer(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 12))
  {
    v3 = 0;
    v4 = *(a2 + 8);
    v5 = *(result + 216);
    do
    {
      v6 = *(v4 + 4 * v3) * *(v5 + 4 * v3);
      if (v6 > 32767.0)
      {
        v6 = 32767.0;
      }

      if (v6 < -32768.0)
      {
        v6 = -32768.0;
      }

      *(a3 + 4 * v3++) = rintf(v6);
    }

    while (v3 < *(result + 12));
  }

  return result;
}

uint64_t NDeepnetDistribution::extractFixedOutputLayer(uint64_t result, int32x4_t *a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (v3)
  {
    v4 = *(a3 + 8);
    if (v3 < 8)
    {
      v5 = 0;
LABEL_7:
      v11 = v3 - v5;
      v12 = v5;
      v13 = &v4->f32[v12];
      v14 = &a2->i32[v12];
      do
      {
        v15 = *v14++;
        *v13++ = v15 * 0.000030518;
        --v11;
      }

      while (v11);
      return result;
    }

    v5 = v3 & 0xFFFFFFF8;
    v6 = v4 + 1;
    v7 = a2 + 1;
    v8.i64[0] = 0x3800000038000000;
    v8.i64[1] = 0x3800000038000000;
    v9 = v5;
    do
    {
      v10 = vmulq_f32(vcvtq_f32_s32(*v7), v8);
      v6[-1] = vmulq_f32(vcvtq_f32_s32(v7[-1]), v8);
      *v6 = v10;
      v6 += 2;
      v7 += 2;
      v9 -= 8;
    }

    while (v9);
    if (v5 != v3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t NMemoryFile::getPosition(NMemoryFile *this)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NMemoryFile::getPosition() - cannot get position, file %s is not open", v2, *(this + 3));
  }

  return (*(this + 14) - *(this + 10));
}

uint64_t NMemoryFile::setPosition(NMemoryFile *this, const unsigned int *a2)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NMemoryFile::setPosition() - cannot get position, file %s is not open", v4, *(this + 3));
  }

  v5 = *a2;
  if (v5 == -1)
  {
    v8 = *(this + 6);
  }

  else
  {
    v6 = *(this + 5);
    if (*(this + 6) - v6 < v5)
    {
      return 0;
    }

    v8 = v6 + v5;
  }

  *(this + 7) = v8;
  return 1;
}

void *NMemoryFile::write(NMemoryFile *this, const NString *a2)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NMemoryFile::write() - file %s is not open", v4, *(this + 3));
  }

  if (*(this + 16) != 1)
  {
    Error::chuck("NMemoryFile::write() - file %s not opened in write mode", v4, *(this + 3));
  }

  v5 = *(a2 + 2);
  v6 = *(this + 7);
  v7 = *(this + 12) - v6;
  if (v5 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  result = memcpy(v6, *(a2 + 2), v8);
  *(this + 7) += v8;
  return result;
}

void NMemoryFile::readString(NMemoryFile *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 16))
    {
      v5 = *(this + 6);
      v6 = *(this + 7);
      if (v5 - v6 > 3)
      {
        v9 = *v6;
        v7 = v6 + 1;
        v8 = v9;
        *(this + 7) = v7;
        if (v5 - v7 >= v9)
        {
          *(this + 7) = v7 + v8;
          *a2 = &unk_28370A720;
          *(a2 + 8) = v8;
          operator new[]();
        }

        *(this + 6) = v7;
        Error::chuck("NMemoryFile::readString() - failed to read embedded binary string in %s", v4, *(this + 3));
      }

      *(this + 6) = v6;
      Error::chuck("NMemoryFile::readString() - failed to read length for embedded binary string in %s", v4, *(this + 3));
    }

    Error::chuck("NMemoryFile::readString() - file %s not opened in read mode", v4, *(this + 3));
  }

  Error::chuck("NMemoryFile::readString() - file %s is not open", v4, *(this + 3));
}

void NMemoryFile::readLine(NMemoryFile *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NMemoryFile::readLine() - file %s is not open", v6, *(this + 3));
  }

  if (*(this + 16))
  {
    Error::chuck("NMemoryFile::readLine() - file %s not opened in read mode", v6, *(this + 3));
  }

  v7 = *(this + 6);
  v8 = *(this + 7);
  if (v8 >= v7)
  {
    v9 = 0;
    v10 = 0;
  }

  else if (*v8 == 10)
  {
    v9 = 0;
    v10 = 1;
  }

  else
  {
    v9 = 0;
    v11 = *(this + 6);
    while (~v8 + v7 != v9)
    {
      v12 = *(v8 + 1 + v9++);
      if (v12 == 10)
      {
        v11 = (v8 + v9);
        goto LABEL_12;
      }
    }

    v9 = v7 - v8;
LABEL_12:
    v10 = v11 < v7;
  }

  v13 = (v8 + (v9 & (v9 >> 63)));
  v14 = v9;
  do
  {
    v15 = v14;
    if (v14-- < 1)
    {
      goto LABEL_26;
    }
  }

  while (*(v8 + v15 - 1) == 13);
  v17 = *a2;
  if (*a2)
  {
    v18 = *v8;
    v13 = *(this + 7);
    if (v18 != v17)
    {
      v13 = (v8 + 1);
      if (v15 != 1)
      {
        if (v18 != 32)
        {
          goto LABEL_20;
        }

LABEL_21:
        if (*v13 != v17)
        {
          while ((v13 + 1) < v8 + v15)
          {
            v18 = *v13++;
            if (v18 == 32)
            {
              goto LABEL_21;
            }

LABEL_20:
            if (v18 == 9)
            {
              goto LABEL_21;
            }
          }

          LODWORD(v13) = v13 + 1;
        }
      }
    }
  }

  else
  {
    LODWORD(v13) = v8 + v15;
  }

LABEL_26:
  *(this + 7) = v8 + v9 + v10;
  *a3 = &unk_28370A720;
  if (v8)
  {
    *(a3 + 8) = v13 - v8;
    operator new[]();
  }

  Error::chuck("Null pointer passed to string constructor", v6);
}

uint64_t NMemoryFile::read(NMemoryFile *this, unsigned int *a2, NString *a3)
{
  if (((*(*this + 32))(this) & 1) == 0)
  {
    Error::chuck("NMemoryFile::read() - file %s is not open", v6, *(this + 3));
  }

  if (*(this + 16))
  {
    Error::chuck("NMemoryFile::read() - file %s not opened in read mode", v6, *(this + 3));
  }

  if (*a2 == -1)
  {
    Error::chuck("NFile::read() - attempting impossibly long read in file %s", v6, *(this + 3));
  }

  v8 = *a2;
  if (*a2 > *(this + 12) - *(this + 7))
  {
    v8 = *(this + 12) - *(this + 7);
  }

  (*(*a3 + 64))(a3);
  *(this + 7) += v8;
  return *(a3 + 2);
}

void NMemoryFile::read(NMemoryFile *this@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 16))
    {
      v7 = *a2;
      if (*a2 != -1)
      {
        v8 = *(this + 7);
        v9 = *(this + 12) - v8;
        if (v7 >= v9)
        {
          v10 = v9;
        }

        else
        {
          v10 = v7;
        }

        *(this + 7) = v8 + v10;
        *a3 = &unk_28370A720;
        if (v8)
        {
          *(a3 + 8) = v10;
          operator new[]();
        }

        Error::chuck("Null pointer passed to string constructor", v6);
      }

      Error::chuck("NFile::read() - attempting impossibly long read in file %s", v6, *(this + 3));
    }

    Error::chuck("NMemoryFile::read() - file %s not opened in read mode", v6, *(this + 3));
  }

  Error::chuck("NMemoryFile::read() - file %s is not open", v6, *(this + 3));
}

void NMemoryFile::read(NMemoryFile *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 6);
  v5 = *(this + 7);
  *(this + 7) = v4;
  *a3 = &unk_28370A720;
  if (v5)
  {
    *(a3 + 8) = v4 - v5;
    operator new[]();
  }

  Error::chuck("Null pointer passed to string constructor", a2);
}

uint64_t NMemoryFile::good(NMemoryFile *this)
{
  if ((*(*this + 40))(this))
  {
    return 0;
  }

  v3 = *(*this + 32);

  return v3(this);
}

uint64_t NMemoryFile::close(NMemoryFile *this)
{
  v3 = 0;
  v1 = this + 8;
  result = (*(*(this + 1) + 64))(this + 8, "", &v3);
  v1[60] = 0;
  *(v1 + 5) = 0;
  *(v1 + 6) = 0;
  *(v1 + 4) = 0;
  return result;
}

void NMemoryFile::open(NMemoryFile *this, const NString *a2, const NString *a3)
{
  (*(*this + 24))(this);
  v7 = *(a3 + 2);
  if (*(a3 + 2) == 1)
  {
    if (*v7 == 114)
    {
      v8 = 0;
LABEL_6:
      *(this + 16) = v8;
      v9 = *(a2 + 2);
      if (v9)
      {
        v10 = *(a2 + 2);
        v11 = memchr(v10, 0, *(a2 + 2));
        if (v11)
        {
          v12 = v11 - v10;
          if (((v11 - v10) & 0x80000000) == 0 && v12 + 17 == v9)
          {
            v13 = v12 + 1;
            if (v13 >= v9)
            {
              v18 = v9 - 1;
              v19 = v12 + 1;
            }

            else
            {
              v14 = *&v10[v13];
              *(this + 5) = v14;
              v15 = v12 + 9;
              v16 = *(a2 + 2);
              if (v15 < v16)
              {
                *(this + 6) = *(*(a2 + 2) + v15);
                *(this + 7) = v14;
                v17 = *(a2 + 2);
                if (v17 >= v12)
                {
                  if (*(a2 + 2))
                  {
                    operator new[]();
                  }

                  Error::chuck("Null pointer passed to string constructor", v6);
                }

                Error::chuck("Index %d outside of range [0,%d]", v6, v12, v17);
              }

              v18 = v16 - 1;
              v19 = v12 + 9;
            }

            Error::chuck("Index %d outside of range [0,%d]", v6, v19, v18);
          }
        }
      }

      Error::chuck("NMemoryFile::open() - mindex: filespec has no memory pointer", v6);
    }

    v7 = *(a3 + 2);
    if (*v7 == 119)
    {
      v8 = 1;
      goto LABEL_6;
    }
  }

  Error::chuck("NMemoryFile::open() - unrecognized file mode %s", v6, v7);
}

void sub_223AA38C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v14);
  }

  _Unwind_Resume(exception_object);
}

void NMemoryFile::~NMemoryFile(NMemoryFile *this)
{
  *this = &unk_283708608;
  v2 = *(this + 1);
  v4 = 0;
  (*(v2 + 64))(this + 8, "", &v4);
  *(this + 68) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_283708608;
  v2 = *(this + 1);
  v4 = 0;
  (*(v2 + 64))(this + 8, "", &v4);
  *(this + 68) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }
}

{
  *this = &unk_283708608;
  v2 = *(this + 1);
  v4 = 0;
  (*(v2 + 64))(this + 8, "", &v4);
  *(this + 68) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }
}

void NMemoryFile::NMemoryFile(NMemoryFile *this)
{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

void NMemoryFile::NMemoryFile(NMemoryFile *this, const NString *a2, const NString *a3)
{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

void sub_223AA3D20(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v2[1] = v4;
  v6 = v2[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AA3E28(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v2[1] = v4;
  v6 = v2[3];
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, v1);
  }

  _Unwind_Resume(exception_object);
}

void NMemoryFile::newMemoryBlockDef(NMemoryFile *this, const NString *a2, const void *a3)
{
  v5 = a2;
  v3 = &unk_28370A720;
  v4 = 1;
  operator new[]();
}

void sub_223AA41AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a24)
  {
    MEMORY[0x223DF1D00](a24, v24);
  }

  if (a15)
  {
    MEMORY[0x223DF1D00](a15, v24);
  }

  if (a21)
  {
    MEMORY[0x223DF1D00](a21, v24);
  }

  if (a18)
  {
    MEMORY[0x223DF1D00](a18, v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NMemoryFile::getMemoryBlockParams(NMemoryFile *this, const NString *a2, const void **a3, unsigned int *a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    return 0;
  }

  v7 = *(this + 2);
  result = memchr(v7, 0, v4);
  if (result)
  {
    v10 = result;
    result = 0;
    v11 = (v10 - v7);
    if (v11 >= 0 && v11 + 17 == v4)
    {
      v12 = v11 + 1;
      if (v11 + 1 >= v4)
      {
        Error::chuck("Index %d outside of range [0,%d]", v9, v12, (v4 - 1));
      }

      v13 = v11 + 9;
      if (v13 >= v4)
      {
        Error::chuck("Index %d outside of range [0,%d]", v9, v13, (v4 - 1));
      }

      v14 = *&v7[v12];
      v15 = *&v7[v13];
      *a2 = v14;
      *a3 = v15 - v14;
      return 1;
    }
  }

  return result;
}

void NGaussianFixedPointScales::~NGaussianFixedPointScales(NGaussianFixedPointScales *this)
{
  *this = &unk_2837086D8;
  *(this + 21) = &unk_283708F80;
  v2 = *(this + 22);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
  }

  *(this + 17) = &unk_283708F80;
  v3 = *(this + 18);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales(this);

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_2837086D8;
  *(this + 21) = &unk_283708F80;
  v2 = *(this + 22);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
  }

  *(this + 17) = &unk_283708F80;
  v3 = *(this + 18);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales(this);
}

{
  *this = &unk_2837086D8;
  *(this + 21) = &unk_283708F80;
  v2 = *(this + 22);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
  }

  *(this + 17) = &unk_283708F80;
  v3 = *(this + 18);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  NFixedPointScales::~NFixedPointScales(this);
}

void NFixedPointScales::NFixedPointScales(NFixedPointScales *this)
{
  *this = &unk_2837086B0;
  *(this + 2) = 0;
  *(this + 2) = &unk_283708F80;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = off_28370A538;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = off_28370A538;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = off_28370A538;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 120) = 0;
}

{
  *this = &unk_2837086B0;
  *(this + 2) = 0;
  *(this + 2) = &unk_283708F80;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = off_28370A538;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = off_28370A538;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = off_28370A538;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 120) = 0;
}

void NFixedPointScales::initialize(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *(a1 + 8) = *a2;
  if (a1 + 16 != a3)
  {
    v5 = *(a1 + 32);
    v6 = *(a3 + 16);
    if (v5 != v6)
    {
      v7 = *(a1 + 24);
      if (v7)
      {
        MEMORY[0x223DF1D00](v7, 0x1000C8052888210);
        v6 = *(a3 + 16);
      }

      *(a1 + 32) = v6;
      operator new[]();
    }

    if (v5)
    {
      v8 = 0;
      v9 = *(a3 + 8);
      v10 = *(a1 + 24);
      do
      {
        *(v10 + 4 * v8) = *(v9 + 4 * v8);
        ++v8;
      }

      while (v8 < *(a1 + 32));
    }
  }

  v11 = ldexp(1.0, *(a1 + 8));
  *(a1 + 40) = v11;
  *(a1 + 44) = 1.0 / v11;
  NFixedPointScales::makeParamScales(a1);
  *(a1 + 120) = 1;
}

void NFixedPointScales::makeParamScales(NFixedPointScales *this)
{
  v2 = (*(*this + 16))(this);
  LODWORD(v3) = *(this + 16);
  v4 = *(this + 8);
  if (v3 != v4)
  {
    *(this + 16) = v4;
    operator new[]();
  }

  if (*(this + 22) != v3)
  {
    *(this + 22) = v3;
    operator new[]();
  }

  if (*(this + 28) != v3)
  {
    *(this + 28) = v3;
    operator new[]();
  }

  if (v3)
  {
    v5 = v2;
    v6 = *(this + 3);
    v7 = *(this + 7);
    v8 = *(this + 10);
    v3 = v3;
    v9 = *(this + 13);
    do
    {
      v10 = *v6++;
      v11 = ldexp(1.0, v10);
      *v7++ = v11;
      v12 = 1.0 / v11;
      *v8++ = v12;
      *v9++ = v12 * v5;
      --v3;
    }

    while (v3);
  }
}

void NFixedPointScales::setUp(NFixedPointScales *this)
{
  v2 = ldexp(1.0, *(this + 2));
  *(this + 10) = v2;
  *(this + 11) = 1.0 / v2;
  NFixedPointScales::makeParamScales(this);
  *(this + 120) = 1;
}

uint64_t NFixedPointScales::readInt(NFixedPointScales *this, NFilePtr *a2, const BOOL *a3, const NString *a4)
{
  if (!*a3)
  {
    v8 = *(a2 + 1);
    if (v8)
    {
      (*(*v8 + 80))(&v11);
      operator new[]();
    }

LABEL_10:
    Error::chuck("NSmartPointer::checkptr() - pointer unset", a2);
  }

  v6 = *(a2 + 1);
  if (!v6)
  {
    goto LABEL_10;
  }

  (*(*v6 + 64))(&v11);
  if (v12 != 4)
  {
    v11 = &unk_28370A720;
    if (v13)
    {
      MEMORY[0x223DF1D00](v13, 0x1000C8077774924);
    }

    v10 = *(a2 + 1);
    if (v10)
    {
      Error::chuck("NGaussianFixedPointScales::read() - failed to read %s from file %s", a2, *(a4 + 2), *(v10 + 24));
    }

    goto LABEL_10;
  }

  v7 = *v13;
  v11 = &unk_28370A720;
  MEMORY[0x223DF1D00]();
  return v7;
}

void sub_223AA5464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (a20)
  {
    MEMORY[0x223DF1D00](a20, 0x1000C8077774924);
  }

  if (a23)
  {
    MEMORY[0x223DF1D00](a23, 0x1000C8077774924);
  }

  *(v26 - 128) = &unk_28370A720;
  v28 = *(v26 - 112);
  if (v28)
  {
    MEMORY[0x223DF1D00](v28, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void *NFixedPointScales::readIntVec(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  if (*a3 != 1)
  {
    v11 = *(a2 + 8);
    if (v11)
    {
      v18 = 0;
      (*(*v11 + 80))(&v19);
      v16 = &unk_28370A720;
      LODWORD(v17) = 4;
      operator new[]();
    }

LABEL_12:
    Error::chuck("NSmartPointer::checkptr() - pointer unset", a2);
  }

  v9 = *(a2 + 8);
  if (!v9)
  {
    goto LABEL_12;
  }

  LODWORD(v16) = 4 * *a5;
  (*(*v9 + 64))(&__endptr);
  if ((v14 & 3) != 0)
  {
    __endptr = &unk_28370A720;
    if (__s1)
    {
      MEMORY[0x223DF1D00]();
    }

    v12 = *(a2 + 8);
    if (v12)
    {
      Error::chuck("NGaussianFixedPointScales::read() - failed to read %s from file %s", a2, *(a4 + 16), *(v12 + 24));
    }

    goto LABEL_12;
  }

  LODWORD(v19) = v14 >> 2;
  (*(*a6 + 24))(a6, __s1, &v19);
  __endptr = &unk_28370A720;
  result = __s1;
  if (__s1)
  {
    return MEMORY[0x223DF1D00](__s1, 0x1000C8077774924);
  }

  return result;
}

void sub_223AA5E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  NArray<NString>::~NArray(va);
  *(v15 - 112) = &unk_28370A720;
  if (*(v15 - 96))
  {
    MEMORY[0x223DF1D00]();
  }

  _Unwind_Resume(a1);
}

void NFixedPointScales::read(NFixedPointScales *this, NFilePtr *a2, const unsigned int *a3, const BOOL *a4)
{
  v4 = &unk_28370A720;
  v5 = 8;
  operator new[]();
}

void sub_223AA6260(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

void NFixedPointScales::write(NFixedPointScales *this, NFilePtr *a2, const BOOL *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 1);
  if (*a3)
  {
    if (v3)
    {
      *__str = &unk_28370A720;
      v7 = 0;
      operator new[]();
    }
  }

  else if (v3)
  {
    v4 = &unk_28370A720;
    v5 = 9;
    operator new[]();
  }

  Error::chuck("NSmartPointer::checkptr() - pointer unset", a2);
}

void sub_223AA6840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a22)
  {
    MEMORY[0x223DF1D00](a22, v22);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_223AA6C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, v16);
  }

  if (a16)
  {
    MEMORY[0x223DF1D00](a16, v16);
  }

  _Unwind_Resume(exception_object);
}

void NGaussianFixedPointScales::NGaussianFixedPointScales(NGaussianFixedPointScales *this)
{
  *(this + 2) = 0;
  *(this + 2) = &unk_283708F80;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = off_28370A538;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = off_28370A538;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = off_28370A538;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 120) = 0;
  *this = &unk_2837086D8;
  *(this + 124) = 0;
  *(this + 33) = 0;
  *(this + 17) = &unk_283708F80;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 20) = 0;
  *(this + 21) = &unk_283708F80;
  *(this + 22) = 0;
  *(this + 46) = 0;
}

{
  *(this + 2) = 0;
  *(this + 2) = &unk_283708F80;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = 0;
  *(this + 6) = off_28370A538;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = off_28370A538;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = off_28370A538;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 120) = 0;
  *this = &unk_2837086D8;
  *(this + 124) = 0;
  *(this + 33) = 0;
  *(this + 17) = &unk_283708F80;
  *(this + 18) = 0;
  *(this + 38) = 0;
  *(this + 20) = 0;
  *(this + 21) = &unk_283708F80;
  *(this + 22) = 0;
  *(this + 46) = 0;
}

void NGaussianFixedPointScales::initialize(uint64_t a1, const char *a2, _DWORD *a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a5 + 16);
  v7 = *(a6 + 16);
  if (v6 != v7)
  {
    Error::chuck("NGaussianFixedPointScales::initialize() - inconsistent dimensionality (paramQ=%d, dimenShift=%d)", a2, *(a5 + 16), v7);
  }

  if (*a4 > *a2)
  {
    Error::chuck("NGaussianFixedPointScales::initialize() - logprobQ > gaussianQ", a2);
  }

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v14 = *(*(a6 + 8) + 4 * i);
      if ((v14 & 0x80000000) != 0)
      {
        Error::chuck("NGaussianFixedPointScales::initialize() - dimenShift[%d] -ve (%d)", a2, i, v14);
      }
    }
  }

  *(a1 + 8) = *a4;
  if (a1 + 16 != a5)
  {
    if (*(a1 + 32) != v6)
    {
      v15 = *(a1 + 24);
      if (v15)
      {
        MEMORY[0x223DF1D00](v15, 0x1000C8052888210);
        LODWORD(v6) = *(a5 + 16);
      }

      *(a1 + 32) = v6;
      operator new[]();
    }

    if (v6)
    {
      v16 = 0;
      v17 = *(a5 + 8);
      v18 = *(a1 + 24);
      do
      {
        *(v18 + 4 * v16) = *(v17 + 4 * v16);
        ++v16;
      }

      while (v16 < *(a1 + 32));
    }
  }

  v19 = ldexp(1.0, *(a1 + 8));
  *(a1 + 40) = v19;
  *(a1 + 44) = 1.0 / v19;
  NFixedPointScales::makeParamScales(a1);
  *(a1 + 120) = 1;
  *(a1 + 128) = *a2;
  *(a1 + 124) = *a3;
  if (a1 + 168 != a6)
  {
    v20 = *(a1 + 184);
    v21 = *(a6 + 16);
    if (v20 != v21)
    {
      v22 = *(a1 + 176);
      if (v22)
      {
        MEMORY[0x223DF1D00](v22, 0x1000C8052888210);
        v21 = *(a6 + 16);
      }

      *(a1 + 184) = v21;
      operator new[]();
    }

    if (v20)
    {
      v23 = 0;
      v24 = *(a6 + 8);
      v25 = *(a1 + 176);
      do
      {
        *(v25 + 4 * v23) = *(v24 + 4 * v23);
        ++v23;
      }

      while (v23 < *(a1 + 184));
    }
  }

  *(a1 + 132) = *(a1 + 128) - *(a1 + 8);
  v27 = 0x2000;
  NGaussianFixedPointScales::makeLogAddTable(a1, &v27);
  v26 = ldexp(1.0, *(a1 + 8));
  *(a1 + 40) = v26;
  *(a1 + 44) = 1.0 / v26;
  NFixedPointScales::makeParamScales(a1);
  *(a1 + 120) = 1;
}

void NGaussianFixedPointScales::makeLogAddTable(NGaussianFixedPointScales *this, const char *a2)
{
  if (!*a2)
  {
    Error::chuck("NGaussianFixedPointScales::makeLogAddTable() - table size must be >0", a2);
  }

  v3 = 32 - __clz(*a2 - 1);
  if (*a2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  v5 = *(this + 2);
  v6 = ldexp(1.0, v5);
  v7 = exp(0.5 / v6);
  v8 = -(v6 * log(v7 + -1.0));
  frexpf(v8, &v41);
  v9 = v41;
  if (v41 >= (*(this + 31) + v5))
  {
    v9 = *(this + 31) + v5;
  }

  if (v4 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  v11 = (1 << v10);
  *(this + 40) = v9 - v10;
  *(this + 41) = ~(-1 << v9);
  if (*(this + 38) != v11)
  {
    *(this + 38) = v11;
    operator new[]();
  }

  v12 = *(this + 2);
  v13 = ldexp(1.0, *(this + 40) - v12);
  if (v11)
  {
    v14 = v13;
    v40 = -v14;
    v15 = ldexp(1.0, v12);
    v39 = v15;
    v16 = *(this + 18);
    if (v11 == 1)
    {
      v17 = 0;
      v18 = v40;
      do
      {
LABEL_18:
        v31 = expf(v18 * v17);
        v32 = log(v31 + 1.0);
        v18 = v40;
        *&v32 = v32 * v39;
        *(v16 + 4 * v17++) = (*&v32 + 0.5);
      }

      while (v11 != v17);
      goto LABEL_19;
    }

    v17 = v11 & 0xFFFFFFFE;
    v19 = 0x100000000;
    __asm
    {
      FMOV            V1.2D, #1.0
      FMOV            V0.2D, #0.5
    }

    v33 = _Q0;
    v34 = _Q1;
    v26 = *(this + 18);
    v27 = v17;
    v18 = v40;
    do
    {
      v28 = vmul_n_f32(vcvt_f32_u32(v19), v18);
      __x = v28.f32[0];
      v37 = expf(v28.f32[1]);
      v29.f32[0] = expf(__x);
      v29.f32[1] = v37;
      __xa = vaddq_f64(vcvtq_f64_f32(v29), v34);
      v38 = log(__xa.f64[1]);
      v30.f64[0] = log(__xa.f64[0]);
      v30.f64[1] = v38;
      v18 = v40;
      *v26++ = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(v30, v39))), v33)));
      v19 = vadd_s32(v19, 0x200000002);
      v27 -= 2;
    }

    while (v27);
    if (v17 != v11)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  *(this + 192) = 1;
}