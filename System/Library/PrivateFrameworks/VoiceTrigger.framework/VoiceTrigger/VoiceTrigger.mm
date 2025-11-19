void __VTLogInitIfNeeded_block_invoke()
{
  NSLog(&cfstr_InitializingVo.isa);
  v0 = os_log_create(VTLoggingSubsystem, kVTLoggingContextFramework);
  v1 = VTLogContextFacilityVoiceTrigger;
  VTLogContextFacilityVoiceTrigger = v0;

  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = _dateFormatter;
  _dateFormatter = v2;

  v4 = _dateFormatter;
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  [_dateFormatter setDateFormat:@"yyyyMMdd-HHmmss"];
  v6 = VTLogContextFacilityVoiceTrigger;
  if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_223A31000, v6, OS_LOG_TYPE_DEFAULT, "::: VoiceTrigger logging initialized", v7, 2u);
  }
}

id getCSVoiceTriggerXPCServiceClass()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2050000000;
  v0 = getCSVoiceTriggerXPCServiceClass_softClass;
  v6 = getCSVoiceTriggerXPCServiceClass_softClass;
  if (!getCSVoiceTriggerXPCServiceClass_softClass)
  {
    v7[0] = 0;
    if (!CoreSpeechLibraryCore_frameworkLibrary)
    {
      v7[1] = MEMORY[0x277D85DD0];
      v7[2] = 3221225472;
      v7[3] = __CoreSpeechLibraryCore_block_invoke;
      v7[4] = &__block_descriptor_40_e5_v8__0l;
      v7[5] = v7;
      v8 = xmmword_2784EC960;
      v9 = 0;
      CoreSpeechLibraryCore_frameworkLibrary = _sl_dlopen();
      if (!CoreSpeechLibraryCore_frameworkLibrary)
      {
        goto LABEL_11;
      }

      if (v7[0])
      {
        free(v7[0]);
      }
    }

    v4[3] = objc_getClass("CSVoiceTriggerXPCService");
    if (v4[3])
    {
      getCSVoiceTriggerXPCServiceClass_softClass = v4[3];
      v0 = v4[3];
      goto LABEL_8;
    }

LABEL_11:
    abort_report_np();
    __break(1u);
  }

LABEL_8:
  v1 = v0;
  _Block_object_dispose(&v3, 8);

  return v1;
}

void sub_223A33828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t IntNovDetect::wavedata(int32x2_t *this, const char *a2, int a3)
{
  v11 = a3;
  if (this->i32[0] != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (this->i32[1] != 1)
  {
    Error::chuck("NovDetect: wavedata() can only be called after initialize()", a2);
  }

  if (this[1].i32[0] != 1)
  {
    Error::chuck("NovDetect: wavedata() cannot be called after endwavedata()", a2);
  }

  if (!a2)
  {
    Error::chuck("NovDetect: wavedata() data is NULL pointer", 0);
  }

  if (a3 < 0)
  {
    Error::chuck("NovDetect: wavedata() length must be positive", a2);
  }

  v4 = this[366].i32[0];
  this[366].i32[0] = v4 + a3;
  if (__CFADD__(v4, a3))
  {
    v12[0] = 0;
    IntNovDetect::handleWavedataOverflow(this, a2, &v11, v12);
  }

  else
  {
    v10 = a3;
    if ((this[149].i8[5] & 1) == 0)
    {
      Error::chuck("TSAcAnal::feedFromInt() - you must call TSAcAnal::init() before feedFromInt()", a2);
    }

    if (this[149].i8[4] == 1)
    {
      Error::chuck("TSAcAnal::feedFromInt() - TSAcAnal::endfeed() has been called; no new frame can be fed before the buffer (m_queue) has been emptied (call reset())", a2);
    }

    *v12 = 0;
    NWavChunk2HTKFrames::run(&this[6], a2, &v10, v12, &this[131]);
  }

  IntNovDetect::advanceDetection(this, v5, v6);
  if (this[5].i8[0] == 1)
  {
    *v12 = 6;
    v8 = this[2];
    v7 = this + 2;
    (*(*&v8 + 64))(v7, "all ok", v12);
    v7[3].i8[0] = 0;
  }

  return 0;
}

uint64_t AccelWin2MFCC::run(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    Error::chuck("AccelWin2MFCC::run - AccelWin2MFCC::init() has to be called before running", a2);
  }

  v3 = *(a2 + 16);
  if (v3 != *(a1 + 336))
  {
    Error::chuck("AccelWin2MFCC::run - length of input should be %d, not %d", a2, *(a1 + 336), v3);
  }

  if ((*(a1 + 12) & 1) == 0)
  {
    Error::chuck("AccelWindow::apply() - AccelWindow::init() has to be called before running", a2);
  }

  if (v3 != *(a1 + 8))
  {
    Error::chuck("AccelWindow::apply() - length of input array should be %d, not %d", a2, *(a1 + 8), v3);
  }

  AccelWindow::applyHamming((a1 + 8), a2);
  AccelFFT::run(a1 + 48, a2, (a1 + 288));
  AccelPSD::run((a1 + 96), (a1 + 288));
  if ((*(a1 + 124) & 1) == 0)
  {
    Error::chuck("AccelMelFilter::run - AccelMelFilter::init() must be called before running", v5);
  }

  v6 = *(a1 + 288);
  if (*(a1 + 112))
  {
    v7 = 0;
    do
    {
      vDSP_dotpr(&v6[*(*(a1 + 136) + 4 * v7)], 1, *(*(a1 + 160) + 24 * v7 + 8), 1, (*(a1 + 184) + 4 * v7), *(*(a1 + 160) + 24 * v7 + 16));
      ++v7;
      v8 = *(a1 + 112);
    }

    while (v7 < v8);
    v9 = 4 * v8;
  }

  else
  {
    v9 = 0;
  }

  memcpy(v6, *(a1 + 184), v9);
  if ((*(a1 + 204) & 1) == 0)
  {
    Error::chuck("AccelLoga::run - AccelLoga::init() has to be called before running", v10);
  }

  v11 = *(a1 + 288);
  MEMORY[0x223DF29C0](v11, 1, a1 + 208, v11, 1, *(a1 + 200));
  v31 = *(a1 + 200);
  vvlogf(v11, v11, &v31);
  if (*(a1 + 361) == 1)
  {
    v13 = *(a1 + 392);
    if (v13)
    {
      v14 = 0;
      v15 = *(a1 + 288);
      v16 = *(a1 + 312);
      if (v13 < 8)
      {
        goto LABEL_19;
      }

      if ((v16 - v15) < 0x20)
      {
        goto LABEL_19;
      }

      v14 = v13 & 0xFFFFFFF8;
      v17 = (v16 + 16);
      v18 = (v15 + 16);
      v19 = v14;
      do
      {
        v20 = *v18;
        *(v17 - 1) = *(v18 - 1);
        *v17 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 8;
      }

      while (v19);
      if (v14 != v13)
      {
LABEL_19:
        v21 = v13 - v14;
        v22 = 4 * v14;
        v23 = (v16 + 4 * v14);
        v24 = (v15 + v22);
        do
        {
          v25 = *v24++;
          *v23++ = v25;
          --v21;
        }

        while (v21);
      }
    }
  }

  else
  {
    if ((*(a1 + 228) & 1) == 0)
    {
      Error::chuck("AccelCosine::run() - AccelCosine::init() has to be called before running", v12);
    }

    v26 = *(a1 + 320);
    if (v26 != *(a1 + 220))
    {
      Error::chuck("AccelCosine::run() - length of output should be %d, not %d", v12, *(a1 + 220), v26);
    }

    if (v26)
    {
      v27 = 0;
      v28 = *(a1 + 288);
      v29 = 8;
      do
      {
        __C = 0.0;
        vDSP_dotpr(v28, 1, *(*(a1 + 240) + v29), 1, &__C, *(a1 + 216));
        *(*(a1 + 312) + 4 * v27) = *(*(a1 + 272) + 4 * v27) * __C;
        ++v27;
        v29 += 24;
      }

      while (v27 < *(a1 + 220));
    }
  }

  return a1 + 304;
}

uint64_t nd_wavedata(int32x2_t *a1, const char *a2, int a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  IntNovDetect::wavedata(a1, a2, a3);
  return 0;
}

void sub_223A33DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t NWavChunk2HTKFrames::run(uint64_t a1, const char *a2, int *a3, int *a4, uint64_t a5)
{
  if ((*(a1 + 800) & 1) == 0)
  {
    Error::chuck("NWavChunk2HTKFrames::run - NWavChunk2HTKFrames::init() must be called before running", a2);
  }

  v6 = (a1 + 48);
  if ((*(a1 + 48) & 1) == 0)
  {
    Error::chuck("AccelStaticMFCC::start() - AccelStaticMFCC::init() has to be called before starting", a2);
  }

  if (*(a1 + 560))
  {
    Error::chuck("AccelStaticMFCC::start() - frames undrained from previous chunk - call isFrame() or reset()", a2);
  }

  v8 = *a3;
  if (!a2 && v8)
  {
    Error::chuck("AccelStaticMFCC::start() - pointer to chunk is NULL", 0);
  }

  v9 = *a4;
  if (*a4 >= 2)
  {
    Error::chuck("NAccelStaticMFCC::start() - unsupported sample type", a2);
  }

  *(a1 + 560) = a2;
  *(a1 + 568) = v8;
  *(a1 + 572) = v9;
  *(a1 + 556) = 0;
  while (1)
  {
    result = AccelStaticMFCC::isFrame(v6, a2);
    if (!result)
    {
      return result;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 72);
    if (v11 != v12)
    {
      v13 = *(a1 + 8);
      if (v13)
      {
        MEMORY[0x223DF1D00](v13, 0x1000C8052888210);
        LODWORD(v12) = *(a1 + 72);
      }

      *(a1 + 16) = v12;
      operator new[]();
    }

    if (*(a1 + 16))
    {
      v14 = 0;
      v15 = *(a1 + 64);
      v16 = *(a1 + 8);
      if (v11 < 8)
      {
        goto LABEL_20;
      }

      if ((v16 - v15) < 0x20)
      {
        goto LABEL_20;
      }

      v14 = v11 & 0xFFFFFFF8;
      v17 = (v16 + 16);
      v18 = (v15 + 16);
      v19 = v14;
      do
      {
        v20 = *v18;
        *(v17 - 1) = *(v18 - 1);
        *v17 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 8;
      }

      while (v19);
      if (v14 != v11)
      {
LABEL_20:
        v21 = v11 - v14;
        v22 = 4 * v14;
        v23 = (v16 + v22);
        v24 = (v15 + v22);
        do
        {
          v25 = *v24++;
          *v23++ = v25;
          --v21;
        }

        while (v21);
      }
    }

    if (*(a1 + 956) == 1 && (*(a1 + 801) & 1) == 0)
    {
      v26 = *(a1 + 8);
      v27 = *v26;
      v28 = *(a1 + 952);
      v29 = (v28 - 1);
      if (v28 == 1)
      {
        v29 = 0;
      }

      else
      {
        memmove(*(a1 + 8), v26 + 1, 4 * (v28 - 1));
      }

      v26[v29] = v27;
    }

    if (*(a1 + 984) == 1)
    {
      if (NDynamicMFCC::isFrame(a1 + 576, a1))
      {
        if ((*(a1 + 600) & 1) == 0)
        {
          Error::chuck("NDynamicMFCC::getFrame() - no frame available", a2);
        }

        v30 = *(a1 + 40);
        if (v30)
        {
          v31 = 0;
          v32 = *(a1 + 584);
          v33 = *(a1 + 32);
          if (v30 < 8)
          {
            goto LABEL_37;
          }

          if ((v33 - v32) < 0x20)
          {
            goto LABEL_37;
          }

          v31 = v30 & 0xFFFFFFF8;
          v34 = (v33 + 16);
          v35 = (v32 + 16);
          v36 = v31;
          do
          {
            v37 = *v35;
            *(v34 - 1) = *(v35 - 1);
            *v34 = v37;
            v34 += 2;
            v35 += 2;
            v36 -= 8;
          }

          while (v36);
          if (v31 != v30)
          {
LABEL_37:
            v38 = v30 - v31;
            v39 = 4 * v31;
            v40 = (v33 + 4 * v31);
            v41 = (v32 + v39);
            do
            {
              v42 = *v41++;
              *v40++ = v42;
              --v38;
            }

            while (v38);
          }
        }

        goto LABEL_8;
      }
    }

    else
    {
      v43 = *(a1 + 40);
      if (v43)
      {
        v44 = 0;
        v45 = *(a1 + 8);
        v46 = *(a1 + 32);
        if (v43 < 8)
        {
          goto LABEL_46;
        }

        if ((v46 - v45) < 0x20)
        {
          goto LABEL_46;
        }

        v44 = v43 & 0xFFFFFFF8;
        v47 = (v46 + 16);
        v48 = (v45 + 16);
        v49 = v44;
        do
        {
          v50 = *v48;
          *(v47 - 1) = *(v48 - 1);
          *v47 = v50;
          v47 += 2;
          v48 += 2;
          v49 -= 8;
        }

        while (v49);
        if (v44 != v43)
        {
LABEL_46:
          v51 = v43 - v44;
          v52 = 4 * v44;
          v53 = (v46 + 4 * v44);
          v54 = (v45 + v52);
          do
          {
            v55 = *v54++;
            *v53++ = v55;
            --v51;
          }

          while (v51);
        }
      }

LABEL_8:
      NResizingQueue<NFrame>::push(a5, a1 + 24);
    }
  }
}

uint64_t AccelStaticMFCC::isFrame(AccelStaticMFCC *this, const char *a2)
{
  v67 = *MEMORY[0x277D85DE8];
  v3 = *(this + 64);
  v4 = *(this + 130);
  if (!v3)
  {
    if (v4)
    {
      Error::chuck("AccelStaticMFCC::isFrame() - AccelStaticMFCC::start() has tobe called before computing next frame", a2);
    }

    v3 = 0;
  }

  v5 = *(this + 131);
  v6 = *(this + 126);
  if (v6 > v4 || (*(this + 508) & 1) != 0)
  {
    v7 = *(this + 122);
    if (v7 + 1 <= v6 || *(this + 508) == 1)
    {
      v8 = v6 + ~v7;
      v9 = v4 - v8;
      if (v4 <= v8 || v8 < v6 && (*(this + 508) & 1) != 0)
      {
        goto LABEL_35;
      }

      v10 = *(this + 8);
      if (v5 == 1)
      {
        v65 = 1191181824;
        MEMORY[0x223DF29D0](v3 + 4 * v8, 1, &v65, v10, 1, v4 - v8);
        __C = 32767.0;
        __B = -32767.0;
        vDSP_vclip(v10, 1, &__B, &__C, v10, 1, v9);
LABEL_35:
        result = 0;
        v37 = *(this + 126) - *(this + 130);
        *(this + 126) = v37;
        *(this + 20) = *(this + 122) - v37 + 1;
        *(this + 64) = 0;
        *(this + 508) = 0;
        return result;
      }

      v24 = (v3 + 2 * v8);
      v34 = *(this + 8);
      v35 = v4 - v8;
    }

    else
    {
      v23 = 4 * (v7 + 1 - v6);
      memmove(*(this + 8), (*(this + 8) + 4 * (*(this + 20) - (v7 + 1 - v6))), v23);
      v24 = *(this + 64);
      v25 = *(this + 8);
      v26 = *(this + 130);
      if (v5 == 1)
      {
        v65 = 1191181824;
        MEMORY[0x223DF29D0](v24, 1, &v65, v25 + v23, 1, v26);
        __C = 32767.0;
        __B = -32767.0;
        vDSP_vclip((v25 + v23), 1, &__B, &__C, (v25 + v23), 1, v26);
        goto LABEL_35;
      }

      v34 = (v25 + v23);
      v35 = *(this + 130);
    }

    vDSP_vflt16(v24, 1, v34, 1, v35);
    goto LABEL_35;
  }

  v11 = *(this + 122);
  v12 = *(this + 5);
  v13 = v11 + 1 - v6;
  if (v11 + 1 > v6)
  {
    v14 = (*(this + 8) + 4 * (*(this + 20) - v13));
    if (v13 >= v11)
    {
      memcpy(*(this + 5), v14, 4 * v11);
      v29 = *(this + 126);
      if (!v29)
      {
        goto LABEL_41;
      }

      goto LABEL_22;
    }

    v15 = 4 * (v11 + 1 - v6);
    memcpy(*(this + 5), v14, 4 * v13);
    v16 = *(this + 126);
    v17 = (v16 - 1);
    v18 = *(this + 64);
    v19 = *(this + 5);
    if (v5 == 1)
    {
      v65 = 1191181824;
      MEMORY[0x223DF29D0](v18, 1, &v65, v19 + v15, 1, (v16 - 1));
      __C = 32767.0;
      __B = -32767.0;
      v20 = (v19 + v15);
      v21 = (v19 + v15);
      v22 = v17;
      goto LABEL_21;
    }

    v38 = (v19 + v15);
    v39 = (v16 - 1);
LABEL_40:
    vDSP_vflt16(v18, 1, v38, 1, v39);
    v29 = *(this + 126);
    if (!v29)
    {
      goto LABEL_41;
    }

LABEL_22:
    v30 = (v29 - 1);
    if (v5 == 1)
    {
      v31 = *(v3 + 4 * v30);
      v32 = v31 < -1.0 || v31 > 1.0;
      v33 = -32767.0;
      if (v31 > 1.0 && v31 >= -1.0)
      {
        v33 = 32767.0;
      }

      *v28.i32 = v31 * 32767.0;
      if (v32)
      {
        *v28.i32 = v33;
      }
    }

    else
    {
      v28.i16[0] = *(v3 + 2 * v30);
      *v28.i32 = vmovl_s16(v28).i32[0];
    }

    goto LABEL_42;
  }

  v27 = v6 + ~v11;
  if (v5 != 1)
  {
    v18 = (v3 + 2 * v27);
    v38 = *(this + 5);
    v39 = *(this + 122);
    goto LABEL_40;
  }

  v65 = 1191181824;
  MEMORY[0x223DF29D0](v3 + 4 * v27, 1, &v65, v12, 1, v11);
  __C = 32767.0;
  __B = -32767.0;
  v20 = v12;
  v21 = v12;
  v22 = v11;
LABEL_21:
  vDSP_vclip(v20, 1, &__B, &__C, v21, 1, v22);
  v29 = *(this + 126);
  if (v29)
  {
    goto LABEL_22;
  }

LABEL_41:
  v28.i32[0] = *(*(this + 8) + 4 * (*(this + 20) - 1));
LABEL_42:
  *(this + 21) = v28.i32[0];
  v65 = 1065353216;
  v66 = -*(this + 125);
  vDSP_conv(*(this + 5), 1, &v66, -1, *(this + 5), 1, (*(this + 122) - 1), 2uLL);
  *(*(this + 5) + 4 * (*(this + 122) - 1)) = *(this + 21) - (*(*(this + 5) + 4 * (*(this + 122) - 1)) * *(this + 125));
  v40 = AccelWin2MFCC::run(this + 88, this + 32);
  if ((this + 8) != v40)
  {
    v41 = v40;
    v42 = *(this + 6);
    v43 = *(v40 + 16);
    if (v42 != v43)
    {
      v44 = *(this + 2);
      if (v44)
      {
        MEMORY[0x223DF1D00](v44, 0x1000C8052888210);
        v43 = *(v41 + 16);
      }

      *(this + 6) = v43;
      operator new[]();
    }

    if (v42)
    {
      v45 = 0;
      v46 = *(v40 + 8);
      v47 = *(this + 2);
      v48 = v42;
      if (v42 < 8)
      {
        goto LABEL_53;
      }

      if ((v47 - v46) < 0x20)
      {
        goto LABEL_53;
      }

      v45 = v42 & 0xFFFFFFF8;
      v49 = (v47 + 16);
      v50 = (v46 + 16);
      v51 = v48 & 0xFFFFFFF8;
      do
      {
        v52 = *v50;
        *(v49 - 1) = *(v50 - 1);
        *v49 = v52;
        v49 += 2;
        v50 += 2;
        v51 -= 8;
      }

      while (v51);
      if (v45 != v48)
      {
LABEL_53:
        v53 = v48 - v45;
        v54 = 4 * v45;
        v55 = (v47 + v54);
        v56 = (v46 + v54);
        do
        {
          v57 = *v56++;
          *v55++ = v57;
          --v53;
        }

        while (v53);
      }
    }
  }

  v58 = *(this + 126);
  v59 = *(this + 123);
  v60 = __CFADD__(v59, v58);
  v61 = v59 + v58;
  v62 = v60;
  *(this + 126) = v61;
  *(this + 508) = v62;
  return 1;
}

uint64_t AccelWindow::applyHamming(unsigned int *a1, uint64_t a2)
{
  __C = 0.0;
  vDSP_meanv(*(a2 + 8), 1, &__C, *a1);
  v4.n128_f32[0] = __C;
  v6 = -__C;
  if (*(a1 + 6) == 1)
  {
    MEMORY[0x223DF29C0](*(a2 + 8), 1, &v6, *(a2 + 8), 1, *a1, v4);
  }

  return MEMORY[0x223DF29A0](*(a2 + 8), 1, *(a1 + 2), 1, *(a2 + 8), 1, *a1);
}

uint64_t AccelFFT::run(uint64_t a1, uint64_t a2, const DSPSplitComplex *a3)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    Error::chuck("AccelFFT::run() - You need to call AccelFFT::init() before running the FFT", a2);
  }

  v4 = *(a2 + 16);
  if (v4 != *(a1 + 16))
  {
    Error::chuck("AccelFFT::run() - length of input array should be %d, not %d", a2, *(a1 + 16), v4);
  }

  memcpy(*(a1 + 32), *(a2 + 8), 4 * v4);
  bzero((*(a1 + 32) + 4 * *(a1 + 16)), 4 * (*(a1 + 12) - *(a1 + 16)));
  vDSP_ctoz(*(a1 + 32), 2, a3, 1, *(a1 + 12) >> 1);
  vDSP_DFT_Execute(*a1, a3->realp, a3->imagp, a3->realp, a3->imagp);
  v7 = 1056964608;
  MEMORY[0x223DF29D0](a3->realp, 1, &v7, a3->realp, 1, *(a1 + 12) >> 1);
  return MEMORY[0x223DF29D0](a3->imagp, 1, &v7, a3->imagp, 1, *(a1 + 12) >> 1);
}

void AccelPSD::run(AccelPSD *this, DSPSplitComplex *__A)
{
  if ((*(this + 4) & 1) == 0)
  {
    Error::chuck("AccelPSD::run() - AccelPSD::init() has to be called before runing", __A);
  }

  v9 = 1065353216;
  realp = __A->realp;
  imagp = __A->imagp;
  v6 = *imagp;
  *imagp = 0.0;
  vDSP_zvmags(__A, 1, realp, 1, (*(this + 2) - 1));
  v7 = __A->realp;
  __A->realp[*(this + 2) - 1] = v6 * v6;
  MEMORY[0x223DF29C0](v7, 1, &v9, v7, 1);
  if ((*(this + 12) & 1) == 0)
  {
    v8 = *(this + 2);
    vvsqrtf(__A->realp, __A->realp, &v8);
  }
}

uint64_t NResizingQueue<NFrame>::push(uint64_t result, uint64_t a2)
{
  if (*(result + 68) == 1)
  {
    Error::chuck("NResizingQueue::push() - tried pushing a new element after NResizingQueue::finish() has been called", a2);
  }

  v3 = result;
  v4 = *(result + 64);
  if (*(result + 56) - *(result + 60) >= v4 - 2)
  {
    v5 = (*(result + 76) * v4);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v23 = v5;
    result = NResizingQueue<NFrame>::enlargeBy(result, &v23);
  }

  v6 = *(v3 + 40);
  if (v6 + 16 != a2)
  {
    v7 = *(v6 + 32);
    v8 = *(a2 + 16);
    if (v7 != v8)
    {
      v9 = *(v6 + 24);
      if (v9)
      {
        MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
        v8 = *(a2 + 16);
      }

      *(v6 + 32) = v8;
      operator new[]();
    }

    if (v7)
    {
      v10 = 0;
      v11 = *(a2 + 8);
      v12 = *(v6 + 24);
      v13 = v7;
      if (v7 < 8)
      {
        goto LABEL_17;
      }

      if ((v12 - v11) < 0x20)
      {
        goto LABEL_17;
      }

      v10 = v7 & 0xFFFFFFF8;
      v14 = (v12 + 16);
      v15 = (v11 + 16);
      v16 = v13 & 0xFFFFFFF8;
      do
      {
        v17 = *v15;
        *(v14 - 1) = *(v15 - 1);
        *v14 = v17;
        v14 += 2;
        v15 += 2;
        v16 -= 8;
      }

      while (v16);
      if (v10 != v13)
      {
LABEL_17:
        v18 = v13 - v10;
        v19 = 4 * v10;
        v20 = (v12 + v19);
        v21 = (v11 + v19);
        do
        {
          v22 = *v21++;
          *v20++ = v22;
          --v18;
        }

        while (v18);
      }
    }
  }

  *(v3 + 40) = *(*(v3 + 40) + 8);
  ++*(v3 + 56);
  return result;
}

void Error::chuck(Error *this, const char *a2, ...)
{
  va_start(va, a2);
  v4 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x3FFuLL, this, va);
  exception = __cxa_allocate_exception(0x18uLL);
  NString::NString(exception, __str);
}

void IntNovDetect::advanceDetection(int32x2_t *this, const char *a2, __n128 a3)
{
  v4 = &this[335];
  while (1)
  {
    v5 = this[382];
    if (!v5)
    {
      break;
    }

    v6 = this[383].i32[1];
    if (!v6)
    {
      this[382] = 0;
      break;
    }

    this[383].i32[1] = v6 - 1;
LABEL_18:
    if (this[372].i8[4])
    {
      a3.n128_u64[0] = NLocalCepNorm::pushFrame(this + 150, v5);
      v11 = this[152].i32[0];
      if (this[160].i8[4] == 1 && v11 || v11 == this[153].i32[1] + 1)
      {
        NLocalCepNorm::setOutputFrame(&this[150], v4);
        TSHMMDetector::feedFrame(&this[161], v4, v12);
        if (this[373].i8[3] == 1)
        {
          NRingDropBuffer::pushFrame(&this[331], v4);
          v5 = v4;
          if (this[373].i8[4] == 1)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_28;
      }
    }

    else
    {
      TSHMMDetector::feedFrame(&this[161], v5, a3);
      if (this[373].i8[3] == 1)
      {
        NRingDropBuffer::pushFrame(&this[331], v5);
        if (this[373].i8[4])
        {
LABEL_27:
          TSHMMDetector::feedFrame(&this[222], v5, a3);
        }
      }

LABEL_28:
      v13 = this[384].i32[0];
      if (v13)
      {
        this[384].i32[0] = v13 - 1;
      }

      else
      {
        ++this[366].i32[1];
        IntNovDetect::innerAdvanceDetection(this, a2, a3);
      }

      if (this[372].i8[4] == 1)
      {
        do
        {
          v15 = this[152].i32[0];
          if ((this[160].i8[4] != 1 || !v15) && v15 != this[153].i32[1] + 1)
          {
            break;
          }

          NLocalCepNorm::setOutputFrame(&this[150], v4);
          TSHMMDetector::feedFrame(&this[161], v4, v16);
          if (this[373].i8[3] == 1)
          {
            NRingDropBuffer::pushFrame(&this[331], v4);
            if (this[373].i8[4] == 1)
            {
              TSHMMDetector::feedFrame(&this[222], v4, a3);
            }
          }

          v14 = this[384].i32[0];
          if (v14)
          {
            this[384].i32[0] = v14 - 1;
          }

          else
          {
            ++this[366].i32[1];
            IntNovDetect::innerAdvanceDetection(this, a2, a3);
          }
        }

        while ((this[372].i8[4] & 1) != 0);
      }
    }
  }

  if (this[139].i8[4])
  {
    v7 = this[138].i32[0] != this[138].i32[1];
  }

  else
  {
    v7 = (this[138].i32[0] - this[138].i32[1]) > 1;
  }

  if (v7)
  {
    a3.n128_f32[0] = TSAcAnal::getFrameByRef(&this[6], a2);
    v5 = v8;
    if (this[1].i32[0] != 2 && this[149].i8[4] == 1 && (this[139].i8[4] ? this[138].i32[0] == this[138].i32[1] : (this[138].i32[0] - this[138].i32[1]) < 2))
    {
      Error::chuck("NovDetect: advanceDetection() - acanal has shut down!", v9, a3.n128_f64[0]);
    }

    if (this[383].i32[1])
    {
      this[382] = v8;
    }

    goto LABEL_18;
  }
}

float TSAcAnal::getFrameByRef(TSAcAnal *this, const char *a2)
{
  v2 = *(this + 265);
  if (*(this + 1068))
  {
    v3 = *(this + 264) != v2;
  }

  else
  {
    v3 = (*(this + 264) - v2) > 1;
  }

  if (!v3)
  {
    Error::chuck("TSAcAnal::getframe() - no frame available", a2);
  }

  v5 = *(this + 131);
  *(this + 131) = *(v5 + 8);
  *(this + 265) = v2 + 1;
  if ((this + 1080) != (v5 + 16))
  {
    v6 = *(this + 274);
    v7 = *(v5 + 32);
    if (v6 != v7)
    {
      v8 = *(this + 136);
      if (v8)
      {
        MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
        v7 = *(v5 + 32);
      }

      *(this + 274) = v7;
      operator new[]();
    }

    if (v6)
    {
      v9 = 0;
      v10 = *(v5 + 24);
      v11 = *(this + 136);
      v12 = v6;
      if (v6 < 8)
      {
        goto LABEL_16;
      }

      if ((v11 - v10) < 0x20)
      {
        goto LABEL_16;
      }

      v9 = v6 & 0xFFFFFFF8;
      v13 = (v11 + 16);
      v14 = (v10 + 16);
      v15 = v12 & 0xFFFFFFF8;
      do
      {
        v16 = *(v14 - 1);
        v17 = *v14;
        *(v13 - 1) = v16;
        *v13 = v17;
        v13 += 2;
        v14 += 2;
        v15 -= 8;
      }

      while (v15);
      if (v9 != v12)
      {
LABEL_16:
        v18 = v12 - v9;
        v19 = 4 * v9;
        v20 = (v11 + v19);
        v21 = (v10 + v19);
        do
        {
          v22 = *v21++;
          LODWORD(v16) = v22;
          *v20++ = v22;
          --v18;
        }

        while (v18);
      }
    }
  }

  return *&v16;
}

uint64_t IntNovDetect::reset(IntNovDetect *this, const char *a2)
{
  if (*this != -1838836561)
  {
    goto LABEL_22;
  }

  if (*(this + 1) != 1)
  {
    Error::chuck("NovDetect: reset() can only be called after initialize()", a2);
  }

  TSHMMDetector::reset((this + 1288));
  TSHMMDetector::reset((this + 1776));
  if (*(this + 2980) == 1)
  {
    *(this + 1284) = 0;
    *(this + 1212) = 0u;
    v3 = *(this + 300);
    *(this + 307) = v3;
    v4 = *(this + 302);
    if (v4 > v3 + 1)
    {
      *(this + 307) = v4 - 1;
    }

    v5 = *(this + 301);
    if (v5)
    {
      bzero(*(this + 158), 4 * v5);
    }
  }

  *(this + 1196) = 0;
  *(this + 44) = 0;
  *(this + 150) = *(this + 146) + 1;
  *(this + 76) = 0;
  *(this + 604) = 0;
  NDynamicMFCC::reset((this + 624));
  *(this + 68) = 0u;
  for (i = *(this + 133); i; i = *(this + 133))
  {
    *(this + 133) = *(i + 8);
    (*(*(this + 132) + 72))(this + 1056);
  }

  *(this + 134) = 0;
  *(this + 270) = 0;
  *(this + 138) = 0;
  *(this + 1109) = 0;
  NResizingQueue<NFrame>::enlargeBy(this + 1048, this + 280);
  *(this + 334) = 0;
  *(this + 382) = 0;
  v7 = *(this + 766);
  *(this + 767) = v7;
  *(this + 768) = *(this + 769) + v7;
  *(this + 366) = 0;
  *(this + 737) = 0;
  *(this + 1494) = 0;
  if (*this != -1838836561)
  {
LABEL_22:
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 1) != 1)
  {
    Error::chuck("NovDetect: resetbest() can only be called after initialize()", a2);
  }

  *(this + 367) = 0;
  *(this + 736) = 0;
  *(this + 740) = -915135488;
  *(this + 2989) = 0;
  if (*(this + 794))
  {
    v8 = 0;
    v9 = *(this + 389);
    v10 = *(this + 392);
    v11 = *(this + 395);
    do
    {
      *(v9 + 4 * v8) = 0;
      *(v10 + 4 * v8) = 0;
      *(v11 + 4 * v8++) = -915135488;
    }

    while (v8 < *(this + 794));
  }

  if (*(this + 40) == 1)
  {
    v16 = 6;
    (*(*(this + 2) + 64))(this + 16, "all ok", &v16);
    *(this + 40) = 0;
  }

  if (*(this + 769))
  {
    IntNovDetect::zeroWavePrime(this, a2);
    v12 = *(this + 40);
    *(this + 2) = 1;
    if (v12)
    {
      v17 = 6;
      v14 = *(this + 2);
      v13 = this + 16;
      (*(v14 + 64))(v13, "all ok", &v17);
      v13[24] = 0;
    }
  }

  else
  {
    *(this + 2) = 1;
  }

  return 0;
}

uint64_t nd_reset(IntNovDetect *a1, const char *a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  IntNovDetect::reset(a1, a2);
  return 0;
}

void sub_223A353E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, 0x1000C8077774924);
  }

  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t TSHMMDetector::reset(TSHMMDetector *this)
{
  *(this + 49) = 4286578687;
  *(this + 100) = -8388609;
  *(this + 445) = 0;
  *(this + 451) = 0;
  *(this + 404) = 0u;
  *(this + 420) = 0u;
  if (*(this + 84))
  {
    v2 = 0;
    v3 = *(this + 41);
    do
    {
      v4 = v3 + 48 * v2;
      if (*(v4 + 40))
      {
        v5 = 0;
        v6 = *(v4 + 32);
        do
        {
          *(v6 + 4 * v5++) = 0;
        }

        while (v5 < *(v4 + 40));
      }

      v7 = *(v4 + 16);
      if (v7)
      {
        v8 = *(v4 + 8);
        *v8 = 0;
        v9 = v7 - 1;
        if (v9)
        {
          memset_pattern16(v8 + 1, &unk_223B13320, 4 * v9);
        }
      }

      ++v2;
    }

    while (v2 < *(this + 84));
  }

  *(this + 52) = 1;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 109) = 1;
  if (*(this + 446))
  {
    v10 = *(this + 1);
    if (v10)
    {
      *(this + 109) = ((*(*v10 + 32))(v10) >> 1) + 1;
    }
  }

  *(this + 110) = 0;
  *(this + 450) = 0;
  *(this + 19) = 0;
  result = *(this + 1);
  if (result && *(this + 3))
  {
    v12 = *(*result + 160);

    return v12();
  }

  return result;
}

uint64_t NDeepnetDistribution::resetState(uint64_t this, void *a2)
{
  if (a2)
  {
    v2 = this;
    v3 = *(this + 48);
    if (v3)
    {
      v5 = 0;
      v6 = 8 * v3;
      v7 = 8;
      do
      {
        v8 = *(a2[1] + v5);
        if (v8)
        {
          v9 = *(*(v2 + 40) + v7);
          if (!v9)
          {
            Error::chuck("NSmartPointer::checkptr() - pointer unset", v8);
          }

          this = (*(*v9 + 56))(v9);
        }

        v5 += 8;
        v7 += 16;
      }

      while (v6 != v5);
    }
  }

  return this;
}

void NShiftRegisterLayer::resetState(NShiftRegisterLayer *this, _WORD *a2)
{
  if (!a2)
  {
    Error::chuck("NShiftRegisterLayer::compute() - State uninitialized", a2, v2, v3);
  }

  a2[36] = 1;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
}

uint64_t NDynamicMFCC::reset(NDynamicMFCC *this)
{
  v3 = (this + 96);
  v2 = *(this + 24);
  v5 = (this + 100);
  v4 = *(this + 25);
  *(this + 28) = v4 + v2;
  *(this + 29) = v2;
  *(this + 26) = v2;
  *(this + 27) = v4;
  NDelta::init(this + 128, this + 24, this + 30);
  result = NDelta::init((v3 + 20), v5, v3 + 6);
  v7 = 3 * v3[6];
  if (*(v3 - 20) != v7)
  {
    *(this + 4) = v7;
    operator new[]();
  }

  for (i = *(this + 5); i; i = *(this + 5))
  {
    *(this + 5) = *(i + 8);
    result = (*(*(this + 4) + 72))(this + 32);
  }

  *(this + 6) = 0;
  *(this + 14) = 0;
  for (j = *(this + 9); j; j = *(this + 9))
  {
    *(this + 9) = *(j + 8);
    result = (*(*(this + 8) + 72))(this + 64);
  }

  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 24) = 0;
  return result;
}

uint64_t NDelta::init(uint64_t this, const unsigned int *a2, const unsigned int *a3)
{
  v3 = *a2;
  *(this + 4) = *a2;
  v4 = *a3;
  *(this + 8) = *a3;
  v5 = ((v3 + v3 * v3) * ((4 * v3) | 2u)) / 6.0;
  *(this + 12) = v5;
  if (*(this + 40) != v4)
  {
    *(this + 40) = v4;
    operator new[]();
  }

  *(this + 16) = 0;
  *this = 1;
  return this;
}

uint64_t NLinkedList<NArray<NResizingQueue<NFrame>::NElement>>::deleteElement(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void NLinkedList<NArray<NResizingQueue<NFrame>::NElement>>::NElement::~NElement(void *a1)
{
  *a1 = &unk_2837075B0;
  a1[2] = &unk_2837075E0;
  v2 = a1[3];
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 40 * v4;
      v6 = v5 - 40;
      v7 = (v5 - 16);
      v8 = -40 * v4;
      do
      {
        *(v7 - 3) = &unk_283707628;
        *(v7 - 1) = off_28370A538;
        if (*v7)
        {
          MEMORY[0x223DF1D00](*v7, 0x1000C8052888210);
        }

        v6 -= 40;
        v7 -= 5;
        v8 += 40;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v3, 0x10A1C80C9FAA55CLL);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

uint64_t NResizingQueue<NFrame>::enlargeBy(uint64_t a1, int *a2)
{
  v4 = (*(*(a1 + 8) + 64))();
  v6 = (a1 + 16);
  v7 = (a1 + 24);
  if (*(a1 + 16))
  {
    v8 = (*v7 + 8);
    v6 = (a1 + 24);
  }

  else
  {
    v8 = (a1 + 24);
  }

  *v8 = v4;
  *v6 = v4;
  ++*(a1 + 32);
  v9 = *v7;
  if (!*v7)
  {
    Error::chuck("NLinkedList::tail() - cannot access tail of empty list", v5);
  }

  result = (*(*(v9 + 16) + 32))(v9 + 16, a2);
  v11 = *a2;
  v12 = (*a2 - 1);
  if (*a2 != 1)
  {
    v13 = *(v9 + 24);
    if (*a2 == 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12 & 0xFFFFFFFE;
      v15 = v13 + 40;
      v16 = v14;
      do
      {
        *(v15 - 32) = v15;
        *(v15 + 8) = v15 + 40;
        v15 += 80;
        v16 -= 2;
      }

      while (v16);
      if (v14 == v12)
      {
        goto LABEL_13;
      }
    }

    v17 = v13 + 40 * v14 + 40;
    v18 = v12 - v14;
    do
    {
      *(v17 - 32) = v17;
      v17 += 40;
      --v18;
    }

    while (v18);
  }

LABEL_13:
  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = *(v9 + 24);
    *(v20 + 40 * v12 + 8) = *(v19 + 8);
    *(v19 + 8) = v20;
  }

  else
  {
    v21 = *(v9 + 24);
    *(v21 + 40 * v12 + 8) = v21;
    *(a1 + 40) = v21;
    *(a1 + 48) = v21;
  }

  *(a1 + 64) += v11;
  return result;
}

void sub_223A35DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  NArray<NResizingQueue<NFrame>::NElement>::~NArray(va);
  _Unwind_Resume(a1);
}

uint64_t NArray<NResizingQueue<NFrame>::NElement>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

void NConfig::load(NConfig *this, const NString *a2, const NString *a3)
{
  v3 = &unk_28370A720;
  v4 = 1;
  operator new[]();
}

void sub_223A362C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    MEMORY[0x223DF1D00](a16, v16);
  }

  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v16);
  }

  _Unwind_Resume(exception_object);
}

void NFilePtr::open(NFilePtr *this, const NString *a2, const NString *a3)
{
  v5 = *(a2 + 2);
  if (v5 >= 7)
  {
    v6 = *(a2 + 2);
    v7 = *v6;
    v8 = *(v6 + 3);
    if (v7 == 1684957549 && v8 == 980968804)
    {
      operator new();
    }

    v10 = v5 - 6;
    if (v5 - 6 >= 1)
    {
      v11 = *(a2 + 2);
      v12 = v5 - 6;
      v13 = v11;
      while (1)
      {
        v14 = memchr(v13, 46, v12);
        if (!v14)
        {
          goto LABEL_29;
        }

        v16 = v14 - v11;
        if (*v14 == 1684629038 && *(v14 + 3) == 791624292)
        {
          break;
        }

        v12 = v5 - v16 - 7;
        v13 = v14 + 1;
        if (v12 <= 0)
        {
          goto LABEL_29;
        }
      }

      if ((v16 & 0x80000000) == 0)
      {
        v18 = (v16 + 4);
        if (v18 <= v5)
        {
          if (v11)
          {
            operator new[]();
          }

          Error::chuck("Null pointer passed to string constructor", v15);
        }

LABEL_54:
        Error::chuck("Index %d outside of range [0,%d]", v15, v18, v5);
      }

LABEL_29:
      if (v10 >= 1)
      {
        v19 = *(a2 + 2);
        v20 = v5 - 6;
        v21 = v19;
        while (1)
        {
          v22 = memchr(v21, 46, v20);
          if (!v22)
          {
            goto LABEL_42;
          }

          v23 = v22 - v19;
          if (*v22 == 1885960750 && *(v22 + 3) == 791624304)
          {
            break;
          }

          v20 = v5 - v23 - 7;
          v21 = v22 + 1;
          if (v20 <= 0)
          {
            goto LABEL_42;
          }
        }

        if ((v23 & 0x80000000) == 0)
        {
          v18 = (v23 + 4);
          if (v18 <= v5)
          {
            if (v19)
            {
              operator new[]();
            }

            Error::chuck("Null pointer passed to string constructor", v15);
          }

          goto LABEL_54;
        }

LABEL_42:
        v25 = *(a2 + 2);
        v26 = v25;
        while (1)
        {
          v27 = memchr(v26, 46, v10);
          if (!v27)
          {
            goto LABEL_2;
          }

          v28 = v27 - v25;
          if (*v27 == 875979310 && *(v27 + 3) == 791624244)
          {
            break;
          }

          v10 = v5 - v28 - 7;
          v26 = v27 + 1;
          if (v10 <= 0)
          {
            goto LABEL_2;
          }
        }

        if (v28 >= 1)
        {
          operator new();
        }

        if (!v28)
        {
          operator new();
        }
      }
    }
  }

LABEL_2:
  if (NString::endswith(a2, "|") && NString::operator==(a3, "r"))
  {
    operator new();
  }

  if (NString::startswith(a2, "|") && NString::operator==(a3, "w"))
  {
    operator new();
  }

  if (NString::endswith(a2, ".gz"))
  {
    operator new();
  }

  operator new();
}

void sub_223A36E40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    MEMORY[0x223DF1D00]();
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL NString::endswith(NString *this, const char *__s)
{
  v4 = strlen(__s);
  v5 = *(this + 2);
  v6 = v5 >= v4;
  v7 = v5 - v4;
  return v6 && memcmp((*(this + 2) + v7), __s, v4) == 0;
}

uint64_t NDBlobGetBlobSize(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v9[7] = *MEMORY[0x277D85DE8];
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    if (a5)
    {
      *a5 = 0;
      v7[0] = 0;
      NConfig::NConfig(v9, v7);
      *v7 = &unk_28370A720;
      v8 = strlen(a1);
      operator new[]();
    }
  }

  return result;
}

void sub_223A37458(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  N16ByteAlignedString::~N16ByteAlignedString(&a12);
  NConfig::~NConfig(&buf);
  if (a2 == 3)
  {
    v21 = __cxa_begin_catch(a1);
    v22 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v27 = *(*v21 + 16);
      v28 = v22;
      v29 = v27(v21);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v29;
      _os_log_error_impl(&dword_223A31000, v28, OS_LOG_TYPE_ERROR, "Failed to get CorealisRT Blob size: %{public}s", &buf, 0xCu);
    }
  }

  else
  {
    v23 = __cxa_begin_catch(a1);
    v24 = VTLogContextFacilityVoiceTrigger;
    if (a2 == 2)
    {
      v25 = v23;
      v26 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v30 = v25[2];
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v30;
        _os_log_error_impl(&dword_223A31000, v26, OS_LOG_TYPE_ERROR, "Failed to get CorealisRT Blob size: %{public}s", &buf, 0xCu);
      }

      __cxa_end_catch();
LABEL_14:
      JUMPOUT(0x223A37408);
    }

    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_223A31000, v24, OS_LOG_TYPE_ERROR, "Faied to get CorealisRT Blob size: Unknown throw", &buf, 2u);
    }
  }

  __cxa_end_catch();
  goto LABEL_14;
}

void NConfig::NConfig(NConfig *this, const BOOL *a2)
{
  *this = &unk_283709F28;
  *(this + 2) = 0;
  *(this + 3) = 0xB00000000;
  *(this + 1) = &unk_283709E30;
  NArray<NLinkedList<NMap<NString,NConfigSection>::HashItem>>::resize(this + 8, this + 7);
  *(this + 8) = 0;
  v4 = *a2;
  *(this + 40) = v4;
  if (v4 == 1)
  {
    operator new[]();
  }
}

void sub_223A379DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  NConfigSection::~NConfigSection(va);
  if (a7)
  {
    MEMORY[0x223DF1D00](a7, v8);
  }

  NMap<NString,NConfigSection>::~NMap(v7);
  _Unwind_Resume(a1);
}

uint64_t NArray<NLinkedList<NMap<NString,NConfigSection>::HashItem>>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

void NFile::NFile(NFile *this, const NString *a2, const NString *a3)
{
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  *(this + 4) = 0;
  operator new[]();
}

void sub_223A37EF0(_Unwind_Exception *a1)
{
  std::fstream::~fstream(v6);
  MEMORY[0x223DF1CE0](v5);
  *v2 = v3;
  v2[1] = v4;
  v8 = v2[3];
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, v1);
  }

  _Unwind_Resume(a1);
}

void TSHMMDetector::feedFrame(TSHMMDetector *this, const NFrame *a2, __n128 a3)
{
  if ((*(this + 444) & 1) == 0)
  {
    Error::chuck("TSHMMDetector::feedFrame() - init() not called", a2);
  }

  if (*(this + 445))
  {
    Error::chuck("TSHMMDetector::feedFrame() - endFrame() was called", a2);
  }

  v4 = a2;
    ;
  }

  if (*(this + 446) != 1)
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 4);
  if (!v5)
  {
    Error::chuck("NFrameWindow::pushFrame() - cannot feed zero-sized frames", a2);
  }

  v6 = *(this + 10);
  if (v5 != v6)
  {
    Error::chuck("NFrameWindow::pushFrame() - mismatched input frame size (%d != %d)", a2, *(v4 + 4), v6);
  }

  v7.n128_u64[0] = NFrameWindow::pushFrame((this + 32), *(v4 + 1));
  v8 = *(this + 18);
  if (*(this + 105) == 1 && v8 || v8 == *(this + 9) + 1)
  {
    v9 = this + 52;
    if (!*(this + 13))
    {
      Error::chuck("NFrameWindow::setOutputFrameWindow() - frame window not configured", v9, v7.n128_f64[0]);
    }

    v4 = (this + 224);
    (*(*(this + 28) + 32))(this + 224, v9, v7);
    NFrameWindow::setOutputFrameWindow(this + 32, *(this + 29));
LABEL_13:
    TSHMMDetector::stepFrame(this, v4);
  }

  ++*(this + 103);
}

uint64_t TSHMMDetector::updateResult(TSHMMDetector *this, const char *a2, __n128 a3)
{
  if ((*(this + 444) & 1) == 0)
  {
    Error::chuck("TSHMMDetector::updateResult() - init() not called", a2);
  }

  v4 = *(this + 108);
  if (v4)
  {
    v5 = this + 432;
LABEL_28:
    *v5 = v4 - 1;
    return 1;
  }

  v5 = this + 424;
  if (*(this + 106))
  {
LABEL_5:
    if (*(this + 51) == 1)
    {
      v6 = this + 272;
LABEL_27:
      TSHMMDetector::advanceHMMScores(this, v6, a3.n128_f64[0]);
      v4 = *v5;
      goto LABEL_28;
    }

    v13 = *(this + 78);
    v14 = *(this + 105);
    *(this + 105) = v14 + 1;
    if (v13)
    {
      v15 = (v14 * v13);
      v16 = *(this + 35);
      v17 = *(this + 38);
      if (v13 >= 8 && (v18 = (4 * v15 + v16), (v17 - v18) >= 0x20))
      {
        v19 = v13 & 0xFFFFFFF8;
        v26 = v17 + 1;
        v27 = v18 + 1;
        v28 = v19;
        do
        {
          a3 = v27[-1];
          v29 = *v27;
          v26[-1] = a3;
          *v26 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 8;
        }

        while (v28);
        if (v19 == v13)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = v13 - v19;
      v21 = 4 * v19;
      v22 = (v17 + v21);
      v23 = (v16 + v21 + 4 * v15);
      do
      {
        v24 = *v23++;
        a3.n128_u32[0] = v24;
        *v22++ = v24;
        --v20;
      }

      while (v20);
    }

LABEL_26:
    v6 = this + 296;
    goto LABEL_27;
  }

  if (*(this + 445) == 1)
  {
    while (1)
    {
      if (*(this + 446) != 1)
      {
        return 0;
      }

      v8 = *(this + 18);
      if ((*(this + 105) != 1 || !v8) && v8 != *(this + 9) + 1)
      {
        return 0;
      }

      if (!*(this + 13))
      {
        Error::chuck("NFrameWindow::setOutputFrameWindow() - frame window not configured", a2);
      }

      (*(*(this + 28) + 32))(this + 224, this + 52);
      NFrameWindow::setOutputFrameWindow(this + 32, *(this + 29));
      TSHMMDetector::stepFrame(this, (this + 224));
      v9 = *(this + 103);
      v10 = *(this + 104);
      v11 = v9 >= v10;
      v12 = v9 - v10;
      if (v12 != 0 && v11)
      {
        v7 = *v5;
        if (*v5 <= v12)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v12 = 0;
      }

      *v5 = v12;
      v7 = v12;
LABEL_10:
      if (v7)
      {
        goto LABEL_5;
      }
    }
  }

  return 0;
}

int32x2_t NFrameWindow::pushFrame(NFrameWindow *this, const float *a2)
{
  if (*(this + 73) == 1)
  {
    Error::chuck("NFrameWindow::pushFrame() - endFrames() already called", a2);
  }

  if (*(this + 10) > *(this + 1))
  {
    Error::chuck("NFrameWindow::pushFrame() - buffer full", a2);
  }

  if (*(this + 72) == 1)
  {
    if (*this)
    {
      v4 = 0;
      v5 = *(this + 9);
      do
      {
        if (v5 >= *(this + 6))
        {
          v5 = 0;
          *(this + 9) = 0;
        }

        v6 = *(this + 3);
        v7 = *(this + 4) - v6;
        memcpy((*(this + 7) + 4 * v5), &a2[v6], 4 * v7);
        v5 = *(this + 9) + v7;
        *(this + 9) = v5;
        ++v4;
      }

      while (v4 < *this);
    }

    *(this + 72) = 0;
  }

  v8 = *(this + 9);
  if (v8 >= *(this + 6))
  {
    v8 = 0;
    *(this + 9) = 0;
  }

  v9 = *(this + 3);
  v10 = *(this + 4) - v9;
  memcpy((*(this + 7) + 4 * v8), &a2[v9], 4 * v10);
  result = vadd_s32(*(this + 36), (v10 | 0x100000000));
  *(this + 36) = result;
  return result;
}

uint64_t NFrameWindow::setOutputFrameWindow(uint64_t this, float *__dst)
{
  v3 = this;
  v4 = *(this + 40);
  if (*(this + 73) == 1)
  {
    if (!v4)
    {
      Error::chuck("NFrameWindow::setOutputFrameWindow() - buffer empty after endFrames()", __dst);
    }

    if (v4 != *(this + 4) + 1)
    {
      v5 = *(this + 36);
      v6 = *(this + 24);
      if (v5 >= v6)
      {
        v5 = 0;
        *(this + 36) = 0;
      }

      v8 = *(this + 12);
      v7 = *(this + 16);
      v9 = v7 - v8;
      if (v7 != v8)
      {
        if (v5 >= v9)
        {
          v6 = 0;
        }

        v10 = v5 - v9 + v6;
        v11 = *(this + 56);
        if (v9 < 0x10)
        {
          goto LABEL_10;
        }

        v12 = 0;
        v26 = v7 + ~v8;
        v27 = __CFADD__(v5, v26);
        v28 = __CFADD__(v10, v26);
        if (v27 || v28)
        {
          goto LABEL_11;
        }

        if (((v5 - v10) & 0x3FFFFFFFFFFFFFF8) != 0)
        {
          v12 = v9 & 0xFFFFFFF8;
          v14 = v5 + (v9 & 0xFFFFFFF8);
          v29 = v9 & 0xFFFFFFF8;
          LODWORD(this) = v10;
          do
          {
            v30 = (v11 + 4 * this);
            v31 = *v30;
            v32 = v30[1];
            v33 = (v11 + 4 * v5);
            *v33 = v31;
            v33[1] = v32;
            this = (this + 8);
            v5 += 8;
            v29 -= 8;
          }

          while (v29);
          if (v9 == v12)
          {
            goto LABEL_14;
          }

          v10 += v12;
          v5 = v14;
        }

        else
        {
LABEL_10:
          v12 = 0;
        }

LABEL_11:
        v13 = v12 + v8 - v7;
        v14 = v5;
        do
        {
          *(v11 + 4 * v14++) = *(v11 + 4 * v10++);
        }

        while (!__CFADD__(v13++, 1));
LABEL_14:
        *(v3 + 36) = v14;
      }
    }
  }

  else if (v4 != *(this + 4) + 1)
  {
    Error::chuck("NFrameWindow::setOutputFrameWindow() - buffer empty", __dst);
  }

  *(v3 + 40) = v4 - 1;
  if (*(v3 + 28) || *(v3 + 32))
  {
    if (*(v3 + 20))
    {
      v16 = 0;
      v17 = *(v3 + 16) - *(v3 + 12);
      v18 = *(v3 + 36);
      v19 = v17 + v17 * *(v3 + 32);
      do
      {
        v20 = *(v3 + 24);
        if (v18 < v20)
        {
          v20 = 0;
        }

        v21 = v18 - v20;
        this = memcpy(&__dst[v16], (*(v3 + 56) + 4 * (v18 - v20)), 4 * v17);
        v16 += v17;
        v18 = v19 + v21;
      }

      while (v16 < *(v3 + 20));
    }
  }

  else
  {
    v22 = *(v3 + 20);
    v23 = *(v3 + 36);
    v24 = v22 - v23;
    if (v22 != v23)
    {
      memcpy(__dst, (*(v3 + 56) + 4 * v23), 4 * (v22 - v23));
      v22 = *(v3 + 36);
    }

    v25 = *(v3 + 56);

    return memcpy(&__dst[v24], v25, 4 * v22);
  }

  return this;
}

uint64_t NDeepnetDistribution::forwardComputeFloat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 8);
  v7 = *(a1 + 48);
  v8 = (v7 - 1);
  if (v7 != 1)
  {
    v9 = (MEMORY[0x28223BE20])();
    v11 = v29 - ((v10 + 15) & 0x7FFFFFFF0);
    MEMORY[0x28223BE20](v9);
    v13 = v29 - ((v12 + 15) & 0x7FFFFFFF0);
    v14 = *(*(a1 + 40) + 8);
    if (a4)
    {
      if (!v14)
      {
        goto LABEL_26;
      }

      (*(*v14 + 24))(v14);
      if (v8 >= 2)
      {
        v15 = 1;
        v16 = 24;
        while (1)
        {
          v17 = *(*(a1 + 40) + v16);
          if (!v17)
          {
            goto LABEL_26;
          }

          v18 = v11;
          v11 = v13;
          (*(*v17 + 24))(v17, v13, v18, *(*(a4 + 8) + 8 * v15++));
          v16 += 16;
          v13 = v18;
          if (v8 == v15)
          {
            goto LABEL_20;
          }
        }
      }

      v8 = 1;
LABEL_20:
      v26 = *(*(a1 + 40) + 16 * v8 + 8);
      if (v26)
      {
        v27 = *(*v26 + 24);
        return v27();
      }
    }

    else
    {
      if (!v14)
      {
        goto LABEL_26;
      }

      (*(*v14 + 24))(v14);
      if (v8 < 2)
      {
        v8 = 1;
LABEL_23:
        v28 = *(*(a1 + 40) + 16 * v8 + 8);
        if (v28)
        {
          v27 = *(*v28 + 24);
          return v27();
        }
      }

      else
      {
        v22 = v8 - 1;
        v23 = 24;
        while (1)
        {
          v24 = *(*(a1 + 40) + v23);
          if (!v24)
          {
            break;
          }

          v25 = v11;
          v11 = v13;
          (*(*v24 + 24))(v24, v13, v25, 0);
          v23 += 16;
          v13 = v25;
          if (!--v22)
          {
            goto LABEL_23;
          }
        }
      }
    }

LABEL_26:
    Error::chuck("NSmartPointer::checkptr() - pointer unset", v6);
  }

  v19 = *(*(a1 + 40) + 8);
  if (!v19)
  {
    goto LABEL_26;
  }

  v20 = *(*v19 + 24);

  return v20();
}

uint64_t NDeepnetDistribution::scoreAll(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 12);
  if (*(a2 + 16) != v4)
  {
    Error::chuck("NDeepnetDistribution::scoreAll() - input vector has wrong size (%d, should be %d)", a2, *(a2 + 16), v4);
  }

  v5 = *(a1 + 8);
  if (*(a3 + 16) != v5)
  {
    Error::chuck("NDeepnetDistribution::scoreAll() - output (dist) vector has wrong size (%d, should be %d)", a2, *(a3 + 16), v5);
  }

  if (*(a1 + 376) == 1)
  {

    return NDeepnetDistribution::forwardComputeFixed(a1, a2, a3);
  }

  else
  {

    return NDeepnetDistribution::forwardComputeFloat(a1, a2, a3, a4);
  }
}

uint64_t TSHMMDetector::stepFrame(TSHMMDetector *this, const NFrame *a2)
{
  result = *(this + 2);
  if (result)
  {
    v4 = *(this + 109);
    if (v4)
    {
      v5 = v4 - 1;
      *(this + 109) = v5;
      if (v5)
      {
        ++*(this + 104);
        return result;
      }

      if ((*(this + 450) & 1) == 0)
      {
        v6 = a2;
        result = (*(*result + 72))(result, a2, this + 248, 0);
        v7 = **(this + 21);
        v8 = *(this + 41);
        v9 = (v7 - 1);
        if (v7 == 1)
        {
          v12 = *(v8 + 32);
          v13 = *(v8 + 8);
          a2 = v6;
        }

        else
        {
          v10 = *(this + 32);
          v11 = (this + 416);
          v12 = *(v8 + 32);
          v13 = *(v8 + 8);
          a2 = v6;
          if (v9 <= 0xB || v7 - 2 > -v7)
          {
            v14 = 0;
            goto LABEL_10;
          }

          v14 = 0;
          v41 = 4 * v9 + 4;
          v42 = (v12 + v41);
          v43 = v13 + v41;
          v44 = v10 + 4 * v9;
          v46 = (v13 + 1) < v44 && v10 < v43;
          v48 = (v13 + 1) < v10 + 8 * v9 && v44 < v43;
          if (v11 < v42 && v12 + 1 < this + 105)
          {
            goto LABEL_10;
          }

          if (v46)
          {
            goto LABEL_10;
          }

          if (v48)
          {
            goto LABEL_10;
          }

          v14 = v9 & 0xFFFFFFFC;
          v50 = vld1q_dup_f32(v11);
          v51 = 1;
          v52 = v7 - 1;
          v53 = *(this + 32);
          result = v14;
          do
          {
            v54 = vbicq_s8(*(v10 + 4 * v52), vcltzq_f32(*(v10 + 4 * v52)));
            *&v12[v51] = vsubq_s32(v50, vuzp1q_s32(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v54.i8))), vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v54, v54, 8uLL))))));
            v55 = *v53++;
            *&v13[v51] = v55;
            v51 += 4;
            v52 += 4;
            result -= 4;
          }

          while (result);
          if (v14 != v9)
          {
LABEL_10:
            v15 = 0;
            v16 = v9 - v14;
            v17 = 4 * v14 + 4;
            v18 = v13 + v17;
            result = v12 + v17;
            v19 = v7 + v14 - 1;
            do
            {
              v20 = *(v10 + 4 * (v19 + v15));
              if (v20 < 0.0)
              {
                v20 = 0.0;
              }

              *(result + 4 * v15) = *v11 - rintf(v20);
              *&v18[4 * v15] = *(v10 + 4 * v14 + 4 * v15);
              ++v15;
            }

            while (v16 != v15);
          }
        }

        *v12 = *(this + 104);
        *v13 = 0;
      }
    }
  }

  v21 = *(this + 107);
  if (v21)
  {
    if (*(this + 449) == 1)
    {
      v22 = **(this + 21);
      v23 = (v22 - 1);
      if (v22 != 1)
      {
        bzero(*(this + 44), v23);
      }

      v24 = *(this + 37);
      if (*(this + 90) != v24)
      {
        Error::chuck("NLRHMMTraceback::drop() - mismatched number of states (%d != %d)", v23, *(this + 90), v24);
      }

      v25 = *(this + 15) + 24 * *(this + 38);
      result = (*(*v25 + 16))(v25, this + 344);
      v27 = *(this + 38);
      v26 = *(this + 39);
      v28 = *(this + 36);
      if (v27 + 1 < v28)
      {
        v29 = v27 + 1;
      }

      else
      {
        v29 = 0;
      }

      *(this + 38) = v29;
      if (v26 < v28)
      {
        *(this + 39) = v26 + 1;
      }

      v21 = *(this + 107);
    }

    ++*(this + 108);
    *(this + 107) = v21 - 1;
  }

  else
  {
    v30 = *(this + 104);
    if (v30 && *(this + 51) == 1)
    {
      *(this + 104) = *(this + 48) + v30;
    }

    *(this + 107) = *(this + 48);
    if (*(this + 216) == 1)
    {
      v31 = a2;
      v32 = (*(**(this + 1) + 32))(*(this + 1)) - 2;
      if (*(this + 110) > v32)
      {
        *(this + 110) = v32;
      }

      v33 = *(this + 60);
      v34 = *(*(**(this + 1) + 40))(*(this + 1));
      v35 = *(this + 29);
      *(v35 + 4 * (v33 - v34)) = *(this + 110);
      v36 = *(v31 + 4);
      v37 = v33 - v34 + 1;
      if (v37 < v36)
      {
        bzero((v35 + 4 * v37), 4 * (v34 + v36 - v33 - 2) + 4);
      }

      TSHMMDetector::quasarCMNBatch(this);
      a2 = v31;
    }

    result = (*(**(this + 1) + 72))(*(this + 1), a2, this + 272, *(this + 3));
    v38 = 1;
    *(this + 451) = 1;
    v39 = *(this + 51);
    *(this + 105) = 0;
    v40 = *(this + 110);
    if (v39 + 1 > v40)
    {
      v38 = v39 - v40;
    }

    *(this + 106) = v38;
  }

  return result;
}

float32x4_t NNormalizationLayer::compute(NNormalizationLayer *this, float32x4_t *a2, const float *a3, void *a4)
{
  v4 = *(this + 2);
  if (!v4)
  {
    Error::chuck("NNormalizationLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    if (v5 <= 7)
    {
      v6 = 0;
      goto LABEL_5;
    }

    v6 = 0;
    v15 = &a3[v5];
    v17 = &v4[2 * v5] > a3 && v4 < v15;
    v18 = v15 > a2 && &a2->f32[v5] > a3;
    if (v18 || v17)
    {
      goto LABEL_5;
    }

    v6 = v5 & 0xFFFFFFF8;
    v19 = (a3 + 4);
    v20 = a2 + 1;
    v21 = v4 + 8;
    v22 = v6;
    do
    {
      v23 = v21 - 8;
      v24 = vld2q_f32(v23);
      v25 = vld2q_f32(v21);
      result = vmulq_f32(vaddq_f32(v20[-1], v24.val[0]), v24.val[1]);
      v24.val[1] = vmulq_f32(vaddq_f32(*v20, v25.val[0]), v25.val[1]);
      v19[-1] = result;
      *v19 = v24.val[1];
      v19 += 2;
      v20 += 2;
      v21 += 16;
      v22 -= 8;
    }

    while (v22);
    if (v6 != v5)
    {
      v4 += 2 * (v5 & 0xFFFFFFF8);
LABEL_5:
      v7 = v5 - v6;
      v8 = v6;
      v9 = &a3[v6];
      v10 = &a2->f32[v8];
      do
      {
        v11 = *v10++;
        v12 = *v4;
        v13 = v4[1];
        v4 += 2;
        result.f32[0] = (v11 + v12) * v13;
        *v9++ = result.f32[0];
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

void NClipLayer::compute(NClipLayer *this, const float *__A, float *__D, void *a4)
{
  if (!*(this + 2))
  {
    Error::chuck("NClipLayer::compute() - Layer uninitialized", __A, __D, a4);
  }

  __B = 0.0;
  __C = 1.0;
  vDSP_vclip(__A, 1, &__B, &__C, __D, 1, *(this + 2));
}

void N8BitMatrixLayer::compute(N8BitMatrixLayer *this, const float *a2, float *a3, void *a4)
{
  v122[1] = *MEMORY[0x277D85DE8];
  v4 = *(this + 2);
  if (!v4)
  {
    Error::chuck("N8BitMatrixLayer::compute() - Layer uninitialized", a2, a3, a4);
  }

  v7 = (*(this + 8) + *(this + 2));
  v8 = MEMORY[0x28223BE20](this);
  v10 = (v122 - v9);
  v11 = *(v8 + 12);
  MEMORY[0x28223BE20](v8);
  v18 = (v122 - ((v17 + 15) & 0x7FFFFFFF0));
  if (v13 >= 0x10)
  {
    v19 = v13 >> 4;
    v20 = v12 + 2;
    v21 = &v10->i8[8];
    v22 = vdupq_n_s32(0x437F0000u);
    do
    {
      v23 = vmulq_f32(v20[-2], v22);
      v24 = vmulq_f32(v20[-1], v22);
      v25 = *v20;
      v26 = v20[1];
      v20 += 4;
      v15 = vmulq_f32(v26, v22);
      v123.val[0] = vcvtnq_s32_f32(v23);
      v123.val[1] = vcvtnq_s32_f32(v24);
      v123.val[2] = vcvtnq_s32_f32(vmulq_f32(v25, v22));
      v123.val[3] = vcvtnq_s32_f32(v15);
      *(v21 - 8) = vqtbl4q_s8(v123, xmmword_223B13300);
      v21 += 16;
      --v19;
    }

    while (v19);
  }

  v27 = v13 & 0xFFFFFFF0;
  if ((v13 & 0xFFFFFFF0) != v13)
  {
    if ((v27 | 1) > v13)
    {
      v28 = v27 + 1;
    }

    else
    {
      v28 = v13;
    }

    v29 = v28 - v27;
    if (v28 - v27 <= 3)
    {
      goto LABEL_21;
    }

    v30 = 4 * v13;
    if (v29 >= 0x10)
    {
      v31 = v29 - (v28 & 0xF);
      v32 = (v10 + v27);
      v33 = (v12 + (v30 & 0x3FFFFFFC0));
      v34 = vdupq_n_s32(0x437F0000u);
      v35 = v31;
      do
      {
        v37 = v33[2];
        v36 = v33[3];
        v39 = *v33;
        v38 = v33[1];
        v33 += 4;
        v15 = vmulq_f32(v39, v34);
        v40 = vmulq_f32(v38, v34);
        v41 = vmulq_f32(v37, v34);
        v42 = vmulq_f32(v36, v34);
        v124.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v42.i8)));
        v16 = vcvtq_f64_f32(vrndx_f32(*v41.i8));
        v124.val[0] = vcvtq_s64_f64(v16);
        v124.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v42, v42, 8uLL))));
        v124.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v41, v41, 8uLL))));
        v125.val[2] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v40.i8)));
        v125.val[0] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v15.f32)));
        v125.val[3] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v40, v40, 8uLL))));
        v125.val[1] = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v15, v15, 8uLL))));
        v42.i64[0] = vqtbl4q_s8(v125, xmmword_223B13310).u64[0];
        v42.i64[1] = vqtbl4q_s8(v124, xmmword_223B13310).u64[0];
        *v32++ = v42;
        v35 -= 16;
      }

      while (v35);
      if ((v28 & 0xF) == 0)
      {
        goto LABEL_22;
      }

      if ((v28 & 0xF) < 4)
      {
        v27 += v31;
        goto LABEL_21;
      }
    }

    else
    {
      v31 = 0;
    }

    v43 = v28 & 3;
    v44 = v29 - v43;
    v45 = v31 + v27 + v43 - v28;
    v46 = &v10->i8[v31 + v27];
    v47 = (v12 + 4 * v31 + (v30 & 0x3FFFFFFC0));
    v48 = vdupq_n_s32(0x437F0000u);
    do
    {
      v49 = *v47++;
      v50 = vmulq_f32(v49, v48);
      v51 = vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*v50.i8)));
      *v50.i8 = vmovn_s64(vcvtq_s64_f64(vcvtq_f64_f32(vrndx_f32(*&vextq_s8(v50, v50, 8uLL)))));
      *v51.i8 = vmovn_s64(v51);
      v51.i16[1] = v51.i16[2];
      v51.i16[2] = v50.i16[0];
      v51.i16[3] = v50.i16[2];
      *v46 = vmovn_s16(v51).u32[0];
      v46 += 4;
      v45 += 4;
    }

    while (v45);
    if (v43)
    {
      v27 += v44;
      do
      {
LABEL_21:
        v10->i8[v27] = rintf(v12->f32[v27] * 255.0);
        ++v27;
      }

      while (v27 < v13);
    }
  }

LABEL_22:
  if (v13 < v7)
  {
    bzero(&v10->i8[v13], (v14 - 1) + 1);
  }

  if ((v11 & 0xFFFFFFFC) != 0)
  {
    v52 = 0;
    do
    {
      if (v7)
      {
        v62 = 0;
        v56 = 0uLL;
        v55 = 0uLL;
        v54 = 0uLL;
        v63 = v4;
        v64 = v10;
        v53 = 0uLL;
        do
        {
          v65 = *v64++;
          v66 = vmovl_u8(v65);
          v15 = vmovl_s8(*v63);
          v16 = vmovl_s8(*(v63 + v7));
          v67 = vmovl_s8(*(v63 + (2 * v7)));
          v68 = vmovl_s8(*(v63 + (3 * v7)));
          v56 = vmlal_s16(vmlal_high_s16(v56, v66, v15), *v66.i8, *v15.f32);
          v55 = vmlal_s16(vmlal_high_s16(v55, v66, v16), *v66.i8, *&v16.f64[0]);
          v54 = vmlal_s16(vmlal_high_s16(v54, v66, v67), *v66.i8, *v67.i8);
          v53 = vmlal_s16(vmlal_high_s16(v53, v66, v68), *v66.i8, *v68.i8);
          ++v63;
          v62 += 8;
        }

        while (v62 < v7);
      }

      else
      {
        v53 = 0uLL;
        v54 = 0uLL;
        v55 = 0uLL;
        v56 = 0uLL;
      }

      v57 = vpaddlq_s32(v56);
      v58 = vpaddlq_s32(v55);
      v59 = vpaddlq_s32(v54);
      v60 = vpaddlq_s32(v53);
      v61.i64[0] = vzip1q_s32(v57, v58).u64[0];
      v61.i64[1] = __PAIR64__(v60.u32[0], v59.u32[0]);
      v4 = (v4 + (4 * v7));
      v58.i64[0] = vzip2q_s32(v57, v58).u64[0];
      v58.i64[1] = __PAIR64__(v60.u32[2], v59.u32[2]);
      *(v18 + 4 * v52) = vaddq_s32(v61, v58);
      v52 += 4;
    }

    while (v52 < (v11 & 0xFFFFFFFC));
  }

  else
  {
    LODWORD(v52) = 0;
  }

  if (v52 >= v11)
  {
LABEL_54:
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v69 = v52;
    if (v7)
    {
      v70 = v7 & 0xFFFFFFE0;
      v71 = v7 & 0xFFFFFFFC;
      v72 = &v4[2];
      while (1)
      {
        if (v7 < 4)
        {
          v73 = 0;
          v74 = 0;
          v75 = v4;
          goto LABEL_51;
        }

        if (v7 >= 0x20)
        {
          v77 = 0uLL;
          v78 = v72;
          v79 = 0uLL;
          v80 = v10 + 1;
          v81 = v7 & 0xFFFFFFE0;
          v82 = 0uLL;
          v83 = 0uLL;
          v84 = 0uLL;
          v85 = 0uLL;
          v86 = 0uLL;
          v87 = 0uLL;
          do
          {
            v88 = v78[-1];
            v89 = vmovl_high_s8(v88);
            v90 = vmovl_s8(*v88.i8);
            v91 = vmovl_high_s8(*v78);
            v92 = vmovl_s8(*v78->i8);
            v93 = v80[-1];
            v94 = vqtbl1q_s8(*v80, xmmword_223B132A0);
            v83 = vmlaq_s32(v83, vqtbl1q_s8(v93, xmmword_223B132D0), vmovl_high_s16(v89));
            v82 = vmlaq_s32(v82, vqtbl1q_s8(v93, xmmword_223B132C0), vmovl_s16(*v89.i8));
            v79 = vmlaq_s32(v79, vqtbl1q_s8(v93, xmmword_223B132B0), vmovl_high_s16(v90));
            v77 = vmlaq_s32(v77, vqtbl1q_s8(v93, xmmword_223B132A0), vmovl_s16(*v90.i8));
            v87 = vmlaq_s32(v87, vqtbl1q_s8(*v80, xmmword_223B132D0), vmovl_high_s16(v91));
            v86 = vmlaq_s32(v86, vqtbl1q_s8(*v80, xmmword_223B132C0), vmovl_s16(*v91.i8));
            v85 = vmlaq_s32(v85, vqtbl1q_s8(*v80, xmmword_223B132B0), vmovl_high_s16(v92));
            v80 += 2;
            v78 += 2;
            v84 = vmlaq_s32(v84, v94, vmovl_s16(*v92.i8));
            v81 -= 32;
          }

          while (v81);
          v16 = vaddq_s32(v86, v82);
          v15 = vaddq_s32(vaddq_s32(v85, v79), vaddq_s32(v87, v83));
          v74 = vaddvq_s32(vaddq_s32(vaddq_s32(vaddq_s32(v84, v77), v16), v15));
          if (v70 == v7)
          {
            goto LABEL_36;
          }

          if ((v7 & 0x1C) == 0)
          {
            v75 = (v4 + v70);
            v73 = v7 & 0xFFFFFFE0;
            goto LABEL_51;
          }

          v76 = v7 & 0xFFFFFFE0;
        }

        else
        {
          v74 = 0;
          v76 = 0;
        }

        v95 = v74;
        do
        {
          v15.i32[0] = *(v4->i32 + v76);
          v15.i64[0] = vmovl_s8(*v15.f32).u64[0];
          LODWORD(v16.f64[0]) = *(v10->i32 + v76);
          *&v16.f64[0] = vmovl_u8(*&v16.f64[0]).u64[0];
          v95 = vmlal_s16(v95, *&v16.f64[0], *v15.f32);
          v76 += 4;
        }

        while (v71 != v76);
        v74 = vaddvq_s32(v95);
        if (v71 == v7)
        {
          goto LABEL_36;
        }

        v75 = (v4 + v71);
        v73 = v7 & 0xFFFFFFFC;
LABEL_51:
        v96 = v7 - v73;
        v97 = &v10->i8[v73];
        do
        {
          v99 = v75->i8[0];
          v75 = (v75 + 1);
          v98 = v99;
          v100 = *v97++;
          v74 += v100 * v98;
          --v96;
        }

        while (v96);
LABEL_36:
        v4 = (v4 + v7);
        v18->i32[v69++] = v74;
        v72 = (v72 + v7);
        if (v69 == v11)
        {
          goto LABEL_54;
        }
      }
    }

    bzero(v18 + 4 * v52, 4 * (v11 + ~v52) + 4);
  }

  v101 = *(this + 3);
  if (v11 <= 7)
  {
    v102 = 0;
    goto LABEL_63;
  }

  v102 = v11 & 0xFFFFFFF8;
  v103 = v18 + 1;
  v104 = v101 + 1;
  v105 = v102;
  do
  {
    v106 = vaddq_s32(*v103, *v104);
    v103[-1] = vaddq_s32(v103[-1], v104[-1]);
    *v103 = v106;
    v103 += 2;
    v104 += 2;
    v105 -= 8;
  }

  while (v105);
  if (v102 != v11)
  {
    v101 = (v101 + 4 * (v11 & 0xFFFFFFF8));
LABEL_63:
    v107 = v11 - v102;
    v108 = &v18->i8[4 * v102];
    do
    {
      v109 = v101->i32[0];
      v101 = (v101 + 4);
      *v108 += v109;
      v108 += 4;
      --v107;
    }

    while (v107);
  }

  v110 = (this + 36);
  if (v11 <= 7 || this + 40 > a3 && v110 < &a3[v11])
  {
    v111 = 0;
LABEL_69:
    v112 = v11 - v111;
    v113 = v111;
    v114 = &a3[v111];
    v115 = &v18->i32[v113];
    do
    {
      v116 = *v115++;
      *v114++ = *v110 * v116;
      --v112;
    }

    while (v112);
    return;
  }

  v111 = v11 & 0xFFFFFFF8;
  v117 = vld1q_dup_f32(v110);
  v118 = a3 + 4;
  v119 = v18 + 1;
  v120 = v111;
  do
  {
    v121 = vmulq_f32(v117, vcvtq_f32_s32(*v119));
    *(v118 - 1) = vmulq_f32(v117, vcvtq_f32_s32(v119[-1]));
    *v118 = v121;
    v118 += 8;
    v119 += 2;
    v120 -= 8;
  }

  while (v120);
  if (v111 != v11)
  {
    goto LABEL_69;
  }
}

void NSigmoidOnlyLayer::compute(NSigmoidOnlyLayer *this, const float *a2, float *__dst, void *a4)
{
  if (!*(this + 2))
  {
    Error::chuck("NSigmoidOnlyLayer::compute() - Layer uninitialized", a2, __dst, a4);
  }

  memcpy(__dst, a2, 4 * *(this + 3));
  MEMORY[0x223DF29B0](__dst, 1, __dst, 1, *(this + 3));
  v7 = *(this + 3);
  vvexpf(__dst, __dst, &v7);
  v6 = 1065353216;
  MEMORY[0x223DF29C0](__dst, 1, &v6, __dst, 1, *(this + 3));
  vvrecf(__dst, __dst, &v7);
}

void N8BitSigmoidalLayer::compute(N8BitSigmoidalLayer *this, const float *a2, float *a3, void *a4)
{
  N8BitMatrixLayer::compute(this, a2, a3, a4);
  MEMORY[0x223DF29B0](a3, 1, a3, 1, *(this + 3));
  v7 = *(this + 3);
  vvexpf(a3, a3, &v7);
  v6 = 1065353216;
  MEMORY[0x223DF29C0](a3, 1, &v6, a3, 1, *(this + 3));
  vvrecf(a3, a3, &v7);
}

void N8BitLogSoftmaxLayer::compute(N8BitLogSoftmaxLayer *this, const float *a2, float32x4_t *a3, void *a4)
{
  N8BitMatrixLayer::compute(this, a2, a3->f32, a4);
  v6 = *(this + 3);
  v7 = a3->f32[0];
  if (v6 >= 2)
  {
    v8 = v6 - 1;
    v9 = &a3->f32[1];
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
    v14 = &a3->f32[1];
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
      goto LABEL_14;
    }
  }

  v18 = v6 - v12;
  v19 = &a3->f32[v12];
  do
  {
    v20 = *v19++;
    v13 = v13 + expf(v20 - v7);
    --v18;
  }

  while (v18);
LABEL_14:
  *v21.i32 = v7 + logf(v13);
  if (v6 < 8)
  {
    v22 = 0;
LABEL_19:
    v27 = v6 - v22;
    v28 = &a3->f32[v22];
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
  v24 = a3 + 1;
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
    goto LABEL_19;
  }
}

uint64_t NRingDropBuffer::pushFrame(uint64_t this, const NFrame *a2)
{
  v2 = *(this + 8) + 24 * *(this + 24);
  if (v2 != a2)
  {
    v4 = *(v2 + 16);
    v5 = *(a2 + 4);
    if (v4 != v5)
    {
      v6 = *(v2 + 8);
      if (v6)
      {
        MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
        v5 = *(a2 + 4);
      }

      *(v2 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v7 = 0;
      v8 = *(a2 + 1);
      v9 = *(v2 + 8);
      v10 = v4;
      if (v4 < 8)
      {
        goto LABEL_12;
      }

      if ((v9 - v8) < 0x20)
      {
        goto LABEL_12;
      }

      v7 = v4 & 0xFFFFFFF8;
      v11 = (v9 + 16);
      v12 = (v8 + 16);
      v13 = v10 & 0xFFFFFFF8;
      do
      {
        v14 = *v12;
        *(v11 - 1) = *(v12 - 1);
        *v11 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 8;
      }

      while (v13);
      if (v7 != v10)
      {
LABEL_12:
        v15 = v10 - v7;
        v16 = 4 * v7;
        v17 = (v9 + v16);
        v18 = (v8 + v16);
        do
        {
          v19 = *v18++;
          *v17++ = v19;
          --v15;
        }

        while (v15);
      }
    }
  }

  v21 = *(this + 24);
  v20 = *(this + 28);
  v22 = *(this + 16);
  if (v21 + 1 < v22)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = 0;
  }

  *(this + 24) = v23;
  if (v20 < v22)
  {
    *(this + 28) = v20 + 1;
  }

  return this;
}

void IntNovDetect::innerAdvanceDetection(IntNovDetect *this, const char *a2, __n128 a3)
{
  v4 = (this + 2932);
  while ((TSHMMDetector::updateResult((this + 1288), a2, a3) & 1) != 0)
  {
    v5 = *(this + 426);
    if (*(this + 369))
    {
      v6 = v5 - *(this + 421);
      if (v6)
      {
        v7 = *(this + 420);
        v8 = *(this + 435);
        if (v8 == 1.0)
        {
          a3.n128_f32[0] = v6;
          goto LABEL_7;
        }

        if (v8 != 0.0)
        {
          a3.n128_f32[0] = powf(v6, v8);
LABEL_7:
          v7 = v7 / a3.n128_f32[0];
        }

        a3.n128_f32[0] = *(this + 741) + (v7 + 0.0);
        if (a3.n128_f32[0] > *(this + 743))
        {
          *(this + 2989) = 1;
        }
      }
    }

    v9 = v5 - *(this + 423);
    if (v9)
    {
      if (*(this + 1749))
      {
        v10 = *(this + 366);
        v11 = *(this + 1748) + 1;
        v41 = 0;
        if (v10 >= v11)
        {
          LODWORD(v12) = 0;
          v17 = 0;
          v9 = 0;
          v18 = v10 / v11;
          if (v18 <= 1)
          {
            v19 = 1;
          }

          else
          {
            v19 = v18;
          }

          v16 = -1000000.0;
          do
          {
            v20 = TSHMMDetector::lengthNormalizedScorePhrase((this + 1288), &v41);
            if (v20)
            {
              a3.n128_u32[0] = HIDWORD(v20);
              if (v16 < *(&v20 + 1))
              {
                LODWORD(v12) = v17;
                v16 = *(&v20 + 1);
                v9 = v20;
              }
            }

            v41 = ++v17;
          }

          while (v19 != v17);
        }

        else
        {
          LODWORD(v12) = 0;
          v9 = 0;
          v16 = -1000000.0;
        }

        goto LABEL_30;
      }

      v12 = *(this + 424);
      v13 = 0.0;
      if (v12 < *(this + 442))
      {
        v13 = *(*(this + 220) + 4 * v12);
      }

      v14 = *(this + 422);
      v15 = *(this + 435);
      if (v15 == 1.0)
      {
        a3.n128_f32[0] = v9;
      }

      else
      {
        if (v15 == 0.0)
        {
          goto LABEL_29;
        }

        a3.n128_f32[0] = powf(v9, v15);
      }

      v14 = v14 / a3.n128_f32[0];
LABEL_29:
      v16 = v13 + v14;
LABEL_30:
      if (*(this + 2987) == 1)
      {
        a3.n128_u32[0] = *(this + 742);
        if (v16 <= a3.n128_f32[0])
        {
          v21 = *(this + 737);
          if (!v21)
          {
            goto LABEL_38;
          }

          v22 = v21 - 1;
          *(this + 737) = v22;
          if (v22)
          {
            goto LABEL_38;
          }

          if (*(this + 2983) == 1)
          {
            v33 = *(this + 551);
            if (v33 < (*(**(this + 223) + 32))(*(this + 223)))
            {
              v34 = *(this + 540);
              if (v34)
              {
                bzero(*(this + 269), 4 * v34);
              }

              for (*(this + 554) = 0; !*(this + 550); ++*(this + 554))
              {
                TSHMMDetector::feedFrame((this + 1776), (this + 2144), a3);
                --*(this + 547);
              }
            }
          }

          if (*(this + 2984) == 1)
          {
            if ((*(this + 2220) & 1) == 0)
            {
              Error::chuck("TSHMMDetector::endFrame() - init() not called", a2);
            }

            if (*(this + 2221))
            {
              Error::chuck("TSHMMDetector::endFrame() - endFrame() already called", a2);
            }

              ;
            }

            *(this + 2221) = 1;
            if (*(this + 2222) == 1)
            {
              *(this + 1881) = 1;
            }
          }

          v39 = *v4;
          while (TSHMMDetector::updateResult((this + 1776), a2, a3))
          {
            IntNovDetect::updateScoresFromRescorer(this, &v39);
          }

          *(this + 2988) = 0;
          if ((*(this + 2988) & 1) == 0)
          {
LABEL_39:
            a3.n128_f32[0] = v16 + *(this + 741);
            v23 = *(this + 425) - *(this + 426) + *(this + 372);
            v24 = v23 & ~(v23 >> 31);
            if (a3.n128_f32[0] > *(this + 740) && *v4 > v24)
            {
              *(this + 734) = *v4 - v24;
              *(this + 735) = v9;
              *(this + 736) = v12;
              *(this + 740) = a3.n128_u32[0];
            }

            v25 = *(this + 794);
            if (v25)
            {
              v26 = *(this + 366);
              v27 = *(this + 1748) + 1;
              v40 = 0;
              if (v26 >= v27)
              {
                v28 = 0;
                v29 = v26 / v27;
                if (v25 >= v29)
                {
                  v30 = v29;
                }

                else
                {
                  v30 = v25;
                }

                do
                {
                  v31 = TSHMMDetector::lengthNormalizedScorePhrase((this + 1288), &v40);
                  a3.n128_f32[0] = *(this + 741) + *(&v31 + 1);
                  v32 = *(this + 395);
                  if (a3.n128_f32[0] > *(v32 + 4 * v28) && *v4 > v24)
                  {
                    *(*(this + 389) + 4 * v28) = *v4 - v24;
                    *(*(this + 392) + 4 * v28) = v31;
                    *(v32 + 4 * v28) = a3.n128_u32[0];
                  }

                  v40 = ++v28;
                }

                while (v30 != v28);
              }
            }
          }
        }

        else
        {
          if ((*(this + 2988) & 1) == 0)
          {
            IntNovDetect::rescoreInit(this);
            *(this + 2988) = 1;
          }

          *(this + 737) = *(this + 738);
          if ((*(this + 2988) & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
LABEL_38:
        if ((*(this + 2988) & 1) == 0)
        {
          goto LABEL_39;
        }
      }
    }
  }

  if (*(this + 2988) == 1)
  {
    while (1)
    {
      if (!TSHMMDetector::updateResult((this + 1776), a2, a3))
      {
        return;
      }

      if (*(this + 491))
      {
        v35 = *(this + 548) - *(this + 543);
        if (v35)
        {
          break;
        }
      }

LABEL_72:
      IntNovDetect::updateScoresFromRescorer(this, v4);
      if ((*(this + 2988) & 1) == 0)
      {
        return;
      }
    }

    v36 = *(this + 542);
    v37 = *(this + 557);
    if (v37 == 1.0)
    {
      v38 = v35;
    }

    else
    {
      if (v37 == 0.0)
      {
LABEL_80:
        if (*(this + 744) < v36)
        {
          *(this + 2989) = 1;
        }

        goto LABEL_72;
      }

      v38 = powf(v35, v37);
    }

    v36 = v36 / v38;
    goto LABEL_80;
  }
}

uint64_t TSHMMDetector::advanceHMMScores(uint64_t result, uint64_t a2, double a3)
{
  v4 = result;
  if (*(result + 447) == 1)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = *(a2 + 8);
      LODWORD(a3) = *v6;
      if (v5 != 1)
      {
        v7 = v5 - 1;
        v8 = (v6 + 1);
        do
        {
          v9 = *v8++;
          v10 = v9;
          if (v9 > *&a3)
          {
            *&a3 = v10;
          }

          --v7;
        }

        while (v7);
      }
    }

    else
    {
      a3 = 0.0;
    }
  }

  else
  {
    if (*(result + 448) == 1)
    {
      v34 = 0;
      if (*(result + 176))
      {
        goto LABEL_15;
      }

LABEL_11:
      LODWORD(v11) = 0;
      goto LABEL_17;
    }

    LODWORD(a3) = *(*(a2 + 8) + 4 * **(*(result + 168) + 64));
  }

  v34 = LODWORD(a3);
  if (!*(result + 176))
  {
    goto LABEL_11;
  }

LABEL_15:
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    v15 = *(v4 + 168);
    v16 = *(v4 + 328);
    v33 = (v14 == 0) & *(v4 + 449);
    result = TSHMMDetector::updateStateProbs(v4, v15 + v12, v16 + v13, a2, &v34, &v33, a3);
    ++v14;
    v11 = *(v4 + 176);
    v13 += 48;
    v12 += 88;
  }

  while (v14 < v11);
LABEL_17:
  v17 = *(v4 + 168);
  v18 = *v17;
  v19 = *(v4 + 328);
  v20 = v19[1];
  v21 = *(v20 + 4 * v18);
  v22 = v19[4];
  v23 = *(v22 + 4 * v18);
  if (v11 < 2)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0;
    v25 = v19 + 10;
    v26 = v17 + 22;
    v27 = 1;
    do
    {
      v29 = *v26;
      v26 += 22;
      v28 = v29;
      v30 = *(*(v25 - 3) + 4 * v29);
      if (v30 > v21)
      {
        v23 = *(*v25 + 4 * v28);
        v21 = v30;
        v24 = v27;
      }

      ++v27;
      v25 += 6;
    }

    while (v11 != v27);
  }

  v31 = *(v4 + 196);
  *(v4 + 400) = v21 * v31;
  *(v4 + 404) = v23;
  *(v4 + 408) = v24;
  v32 = *(v4 + 188);
  if (v32)
  {
    *(v4 + 392) = *(v20 + 4 * v32) * v31;
    *(v4 + 396) = *(v22 + 4 * v32);
  }

  ++*(v4 + 416);
  return result;
}

uint64_t TSHMMDetector::updateStateProbs(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, _BYTE *a6, double a7)
{
  v10 = a2;
  v11 = result;
  v12 = *a2;
  if (*(a2 + 80) == 1)
  {
    v13 = (v12 - 1);
    if (v12 != 1)
    {
      v14 = 0;
      v15 = *(a3 + 8);
      v16 = *(a3 + 32);
      v17 = 4 * (v12 - 1);
      v18 = v16 + v17;
      v19 = *(a2 + 40);
      v20 = v12 - 3;
      v21 = v12 - 2;
      v22 = *(a2 + 16) + v17;
      v23 = v15 + v17;
      do
      {
        v24 = v21 + v14;
        v25 = *(v23 + 4 * v14) + *(v22 + 4 * v14);
        v26 = *(v15 + 4 * (v21 + v14)) + *(v19 + 4 * (v21 + v14));
        a2 = v26 >= v25;
        if (v26 >= v25)
        {
          *(v18 + 4 * v14) = *(v16 + 4 * v24);
          v25 = v26;
        }

        if (v13 + v14 != 1 && ((v13 + v14) & 1) != 0)
        {
          v27 = *(v15 + 4 * (v20 + v14)) + *(v19 + 4 * (v20 + v14));
          if (v27 >= v25)
          {
            *(v18 + 4 * v14) = *(v16 + 4 * (v20 + v14));
            a2 = 1;
            v25 = v27;
          }
        }

        *(v23 + 4 * v14) = v25;
        if (*a6 == 1)
        {
          *(*(v11 + 352) + v24) = a2;
        }

        result = (v13 + v14--);
      }

      while (result != 1);
    }

    if (*a6)
    {
LABEL_21:
      v39 = *(v11 + 148);
      if (*(v11 + 360) != v39)
      {
        Error::chuck("NLRHMMTraceback::drop() - mismatched number of states (%d != %d)", a2, *(v11 + 360), v39);
      }

      v40 = *(v11 + 120) + 24 * *(v11 + 152);
      result = (*(*v40 + 16))(v40, v11 + 344);
      v42 = *(v11 + 152);
      v41 = *(v11 + 156);
      v43 = *(v11 + 144);
      if (v42 + 1 < v43)
      {
        v44 = v42 + 1;
      }

      else
      {
        v44 = 0;
      }

      *(v11 + 152) = v44;
      if (v41 < v43)
      {
        *(v11 + 156) = v41 + 1;
      }
    }
  }

  else
  {
    v28 = (v12 - 1);
    if (*a6)
    {
      if (v12 != 1)
      {
        v29 = *(a3 + 8);
        v30 = *(a2 + 16);
        v31 = *(a2 + 40);
        v32 = *(a3 + 32);
        v33 = v12 - 2;
        v34 = *(result + 352);
        do
        {
          v36 = *(v29 + 4 * v28) + *(v30 + 4 * v28);
          v37 = v33;
          v38 = *(v29 + 4 * v33) + *(v31 + 4 * v33);
          if (v36 <= v38)
          {
            *(v32 + 4 * v28) = *(v32 + 4 * v33);
            v35 = 1;
            v36 = v38;
          }

          else
          {
            v35 = 0;
          }

          *(v34 + v37) = v35;
          *(v29 + 4 * v28) = v36;
          v33 = v37 - 1;
          --v28;
        }

        while (v28);
      }

      goto LABEL_21;
    }

    if (v12 == 1)
    {
      goto LABEL_36;
    }

    v49 = *(a3 + 8);
    v50 = *(a2 + 16);
    v51 = *(a2 + 40);
    v52 = v12 - 2;
    v53 = *(a3 + 32);
    do
    {
      v54 = *(v49 + 4 * v28) + *(v50 + 4 * v28);
      v55 = *(v49 + 4 * v52) + *(v51 + 4 * v52);
      if (v54 <= v55)
      {
        *(v53 + 4 * v28) = *(v53 + 4 * v52);
        v54 = v55;
      }

      *(v49 + 4 * v28) = v54;
      --v52;
      --v28;
    }

    while (v28);
  }

  if (v12 > 1)
  {
    v45 = *(v10 + 64);
    v46 = *(a4 + 8);
    v47 = 1;
    v48 = *(a3 + 8);
    do
    {
      v48[v47] = *(v46 + 4 * *(v45 + v47 * 4)) + v48[v47];
      ++v47;
    }

    while (v12 != v47);
    goto LABEL_37;
  }

LABEL_36:
  v48 = *(a3 + 8);
LABEL_37:
  v56 = *v48 + **(v10 + 16);
  *v48 = v56;
  *v48 = v56 + *a5;
  v57 = *(a3 + 32);
  *v57 = *(v11 + 416) + 1;
  v58 = *(v10 + 40);
  v48[v12] = v48[(v12 - 1)] + v58[(v12 - 1)];
  v57[v12] = v57[(v12 - 1)];
  *&a7 = *v48 + *v58;
  if ((v12 + 1) > 1)
  {
    v59 = (v12 + 1);
  }

  else
  {
    v59 = 1;
  }

  if ((v12 + 1) <= 7)
  {
    v60 = 0;
LABEL_45:
    v65 = v59 - v60;
    v66 = &v48[v60];
    do
    {
      *v66 = *v66 - *&a7;
      ++v66;
      --v65;
    }

    while (v65);
    return result;
  }

  v60 = v59 & 0xFFFFFFF8;
  v61 = vdupq_lane_s32(*&a7, 0);
  v62 = (v48 + 4);
  v63 = v60;
  do
  {
    v64 = vsubq_f32(*v62, v61);
    v62[-1] = vsubq_f32(v62[-1], v61);
    *v62 = v64;
    v62 += 2;
    v63 -= 8;
  }

  while (v63);
  if (v60 != v59)
  {
    goto LABEL_45;
  }

  return result;
}

unint64_t TSHMMDetector::lengthNormalizedScorePhrase(TSHMMDetector *this, const char *a2)
{
  v2 = *a2;
  v3 = *(this + 44);
  if (v2 >= v3)
  {
    Error::chuck("TSHMMDetector::scorePhrase() - phrase %d out of range %d", a2, *a2, v3);
  }

  v4 = *(this + 21);
  v5 = *(v4 + 88 * v2);
  v6 = *(this + 41);
  v7 = *(*(v6 + 48 * v2 + 32) + 4 * v5);
  v8 = *(this + 104);
  v9 = v8 - v7;
  if (v8 == v7)
  {
    v15 = -1000000.0;
    return v9 | (LODWORD(v15) << 32);
  }

  v10 = *(this + 49);
  v11 = *(this + 113);
  v12 = 0.0;
  if (v2 < *(this + 120))
  {
    v12 = *(*(this + 59) + 4 * v2);
  }

  v13 = *(*(v6 + 48 * v2 + 8) + 4 * v5) * v10;
  if (v11 == 1.0)
  {
    v14 = v9;
LABEL_7:
    v13 = v13 / v14;
    goto LABEL_10;
  }

  if (v11 != 0.0)
  {
    v22 = this;
    v14 = powf(v9, *(this + 113));
    this = v22;
    goto LABEL_7;
  }

LABEL_10:
  v15 = v12 + v13;
  if (*(this + 460) == 1)
  {
    v16 = v3 / 2 + v2;
    if (v16 >= v3)
    {
      Error::chuck("TSHMMDetector::scorePhrase() - phrase %d out of range %d", a2, v3 / 2 + v2, v3);
    }

    v17 = *(v4 + 88 * v16);
    v18 = v6 + 48 * v16;
    v19 = v8 - *(*(v18 + 32) + 4 * v17);
    if (!v19)
    {
      v9 = 0;
      return v9 | (LODWORD(v15) << 32);
    }

    v20 = *(*(v18 + 8) + 4 * v17) * v10;
    if (v11 == 1.0)
    {
      v21 = v19;
    }

    else
    {
      if (v11 == 0.0)
      {
        goto LABEL_19;
      }

      v24 = this;
      v21 = powf(v19, v11);
      this = v24;
    }

    v20 = v20 / v21;
LABEL_19:
    v9 = ((*(this + 114) * fmaxf(v20 + 0.0, 0.0)) + 0.5);
  }

  return v9 | (LODWORD(v15) << 32);
}

IntNovDetect *nd_getphraseresults(IntNovDetect *result, const char *a2)
{
  if (result)
  {
    return IntNovDetect::getphraseresults(result, a2);
  }

  return result;
}

uint64_t IntNovDetect::getphraseresults(IntNovDetect *this, const char *a2)
{
  if (*this != -1838836561)
  {
    Error::chuck("Invalid NovDetect Object Signature", a2);
  }

  if (*(this + 1) != 1)
  {
    Error::chuck("NovDetect: getphraseresults() can only be called after initialize()", a2);
  }

  v3 = *(this + 794);
  if (v3 <= a2)
  {
    if (!v3)
    {
      Error::chuck("NovDetect: getphraseresults() phrase results not set up", a2);
    }

    Error::chuck("NovDetect: getphraseresults() phrase %d out of range (0-%d)", a2, a2, v3);
  }

  v4 = *(*(this + 389) + 4 * a2);
  v5 = *(this + 730);
  v6 = *(this + 731);
  v7 = *(*(this + 392) + 4 * a2);
  v8 = v4 >= v7;
  v10 = v4 - v7;
  v9 = v10 != 0 && v8;
  v11 = v10 * v5;
  if (!v9)
  {
    v11 = 0;
  }

  *(this + 682) = *(this + 732);
  *(this + 683) = v11;
  *(this + 684) = v6 + v5 * v4;
  *(this + 685) = *(this + 736);
  *(this + 686) = *(*(this + 395) + 4 * a2);
  *(this + 2748) = *(this + 2989);
  *(this + 2749) = *(this + 2988);
  if (*(this + 40) == 1)
  {
    v13 = 6;
    (*(*(this + 2) + 64))(this + 16, "all ok", &v13);
    *(this + 40) = 0;
  }

  return this + 2728;
}

uint64_t NArray<float>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

void BlobBuilder::buildBlob(BlobBuilder *this, const NConfig *a2, N16ByteAlignedString *a3, __n128 a4)
{
  a4.n128_u64[0] = 0;
  v13 = xmmword_223B13230;
  v14 = 0;
  v15 = 0;
  __asm { FMOV            V1.2S, #-1.0 }

  v16 = _D1;
  v17 = 1056964608;
  v18 = 1;
  v19 = off_28370A538;
  v20 = 0;
  v21 = 0;
  v22 = off_28370A538;
  v23 = 0;
  v24 = 0;
  v25 = &unk_283708F80;
  v26 = 0;
  v27 = 0;
  v28 = 0x4874240047C35000;
  v29 = 1064849900;
  v30 = 257;
  v31 = 26;
  v32 = xmmword_223B13240;
  v39 = 0x200000002;
  v40 = 51;
  v33 = 0x160000000CLL;
  v34 = 1;
  *&v35[3] = 0x3F80000000000000;
  *v35 = 0;
  v36 = 0;
  v38 = 0;
  v37 = 0;
  v41 = 1065353216;
  v44 = 0;
  v42 = &unk_283708908;
  v43 = 0;
  v47 = a4;
  v46 = &unk_2837089D0;
  v48 = 0;
  v45 = &unk_283708968;
  v49 = &unk_283709C80;
  v52 = 16;
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 0x10uLL, 1uLL, 0xFD34284uLL))
  {
    v50 = 0;
    v51 = memptr;
    v49 = &unk_283709C80;
    *memptr = 0;
    NDeepnetDistribution::NDeepnetDistribution(v53);
    v53[384] = 0;
    v54 = off_28370A538;
    v55 = 0;
    v56 = 0;
    v57 = off_28370A538;
    v58 = 0;
    v59 = 0;
    v60 = off_28370A538;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v65 = off_28370A538;
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = off_28370A538;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = off_283709B60;
    v76 = 0;
    v77 = 0;
    v78 = &unk_2837073D8;
    v79 = 0;
    v80 = 0;
    v81 = off_28370A538;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v85 = 0;
    v87 = 0;
    v86 = &unk_283707420;
    v88 = 0;
    v89 = 0;
    v90 = off_28370A538;
    v91 = 0;
    v92 = 0;
    v94 = off_28370A538;
    v95 = 0;
    v96 = 0;
    v93 = 0u;
    v97 = off_28370A538;
    v98 = 0;
    v99 = 0;
    v101 = 0;
    v102 = 0;
    v100 = &unk_28370A4D8;
    v103 = 0;
    v104 = 1203982336;
    v105 = 0x3F7851EC48742400;
    v106 = 257;
    v107 = 26;
    v108 = xmmword_223B13240;
    v109 = 0x160000000CLL;
    v110 = 1;
    *&v111[3] = 0x3F80000000000000;
    *v111 = 0;
    v112 = 0;
    v115 = 0x200000002;
    v113 = 0;
    v114 = 0;
    BlobBuilder::build(v12, this, a2);
  }

  Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v11, 1, v52);
}

void sub_223A3AFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  BlobBuilder::~BlobBuilder(va);
  _Unwind_Resume(a1);
}

void sub_223A3AFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  N16ByteAlignedString::~N16ByteAlignedString(v38);
  NPhoneHMMArray::~NPhoneHMMArray(v37);
  if (a37)
  {
    MEMORY[0x223DF1D00](a37, 0x1000C8052888210);
  }

  if (a34)
  {
    MEMORY[0x223DF1D00](a34, 0x1000C8052888210);
  }

  if (a31)
  {
    MEMORY[0x223DF1D00](a31, 0x1000C8052888210);
  }

  _Unwind_Resume(a1);
}

void NDeepnetDistribution::NDeepnetDistribution(NDeepnetDistribution *this)
{
  *this = &unk_283707738;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = &unk_283708500;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 7) = &unk_283709C80;
  *(this + 20) = 16;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 1uLL, 0xFD34284uLL))
  {
    Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v2, 1, *(this + 20));
  }

  v3 = memptr;
  *(this + 16) = 0;
  *(this + 9) = v3;
  *(this + 7) = &unk_283709C80;
  *v3 = 0;
  *(this + 11) = &unk_28370AA10;
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = &unk_283709C80;
  *(this + 34) = 16;
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, 0x10uLL, 1uLL, 0xFD34284uLL))
  {
    Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v4, 1, *(this + 34));
  }

  v5 = memptr;
  *(this + 30) = 0;
  *(this + 16) = v5;
  *(this + 14) = &unk_283709C80;
  *v5 = 0;
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 20) = &unk_2837086B0;
  *(this + 42) = 0;
  *(this + 22) = &unk_283708F80;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 25) = 0;
  *(this + 26) = off_28370A538;
  *(this + 27) = 0;
  *(this + 56) = 0;
  *(this + 29) = off_28370A538;
  *(this + 30) = 0;
  *(this + 62) = 0;
  *(this + 32) = off_28370A538;
  *(this + 33) = 0;
  *(this + 68) = 0;
  *(this + 280) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = &unk_283709188;
  *(this + 39) = 0;
  *(this + 80) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 43) = &unk_283709188;
  *(this + 44) = 0;
  *(this + 90) = 0;
  *(this + 184) = 0;
  *(this + 376) = 0;
}

void sub_223A3B2F4(_Unwind_Exception *a1)
{
  N16ByteAlignedString::~N16ByteAlignedString(v2);
  NArray<NLayer>::~NArray(v1);
  _Unwind_Resume(a1);
}

void BlobBuilder::build(BlobBuilder *this, const NConfig *a2, N16ByteAlignedString *a3)
{
  v3 = &unk_28370A720;
  v4 = 4;
  operator new[]();
}

void sub_223A3BA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    MEMORY[0x223DF1D00](a18, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void sub_223A3BD7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a18)
  {
    MEMORY[0x223DF1D00](a18, v18);
  }

  if (a15)
  {
    MEMORY[0x223DF1D00](a15, v18);
  }

  _Unwind_Resume(exception_object);
}

void NMap<NString,NString>::operator[]()
{
  operator new[]();
}

{
  operator new[]();
}

void sub_223A3BFE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a15)
  {
    MEMORY[0x223DF1D00](a15, v18);
  }

  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v18);
  }

  _Unwind_Resume(exception_object);
}

void BlobBuilder::buildDistBlob(BlobBuilder *this, const NConfigSection *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = &unk_283709C80;
  v6 = 16;
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 0x10uLL, 1uLL, 0xFD34284uLL))
  {
    v4 = 0;
    v5 = memptr;
    v3 = &unk_283709C80;
    *memptr = 0;
    memptr = &unk_28370A720;
    LODWORD(v8) = 16;
    operator new[]();
  }

  Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v2, 1, v6);
}

void sub_223A3C97C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _Unwind_Exception *exception_object, uint64_t a40)
{
  if (a30)
  {
    MEMORY[0x223DF1D00](a30, 0x1000C8077774924);
  }

  if (a33)
  {
    MEMORY[0x223DF1D00](a33, 0x1000C8077774924);
  }

  if (exception_object)
  {
    MEMORY[0x223DF1D00]();
  }

  N16ByteAlignedString::~N16ByteAlignedString(&a34);
  _Unwind_Resume(a1);
}

void NDeepnetDistribution::init(NDeepnetDistribution *this, const char *a2, const unsigned int *a3)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  v7 = 0;
  NArray<NLayer>::resize(this + 32, &v7);
  v8 = 0;
  (*(*(this + 7) + 64))(this + 56, "", &v8);
  *(this + 24) = 0;
  *(this + 13) = 0;
  v6 = *(this + 36);
  if (v6)
  {
    munmap(*(this + 19), v6);
  }

  *(this + 36) = 0;
  *(this + 19) = 0;
  v9 = 0;
  (*(*(this + 14) + 64))(this + 112, "", &v9);
  NDeepnetDistribution::mapFromMemory(this, a2, a3, "Blob");
}

uint64_t NArray<NLayer>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

void NDeepnetDistribution::mapFromMemory(NDeepnetDistribution *this, uint64_t a2, const unsigned int *a3, const char *a4)
{
  if (!a2)
  {
    v51 = "null pointer";
    goto LABEL_77;
  }

  v5 = *a3;
  if (v5 <= 0x33)
  {
    v51 = "DNN image smaller than minimum";
    goto LABEL_77;
  }

  if (*a2 != 0x20624C4E4E442023 || *(a2 + 8) != 0xA0A0A30302E3176)
  {
    v51 = "cannot read cookie from";
    goto LABEL_77;
  }

  v8 = *(a2 + 16);
  v9 = *(a2 + 20);
  v10 = *(a2 + 24);
  v11 = *(a2 + 28);
  v12 = *(a2 + 36);
  v58 = *(a2 + 36);
  v13 = *(a2 + 40);
  v14 = *(a2 + 44);
  if ((v8 & 0xF) == 2)
  {
    v15 = BYTE1(v8);
  }

  else
  {
    if (v8 != 1)
    {
      v51 = "only version 1 or 2 of DNN file supported:";
      goto LABEL_77;
    }

    v15 = 0;
  }

  if ((v10 & 1) != 0 || v15 >= 2)
  {
    Error::chuck("NDeepnetDistribution::mapFromMemory() - DNN image %s contains unsupported feature (required set = 0x%.6X%.8X, available = 0x%.6X%.8X)", a2, v13, a4, v15, v10, 1, 4294967294);
  }

  if (!v12)
  {
    Error::chuck("NDeepnetDistribution::mapFromMemory() - DNN image %s contains no layers (must be at least 1)", a2, v13, a4);
  }

  if (v12 >= 0x4000001)
  {
    Error::chuck("NDeepnetDistribution::mapFromMemory() - DNN image %s implies %u layers (too many)", a2, v13, a4, v12);
  }

  v16 = (a2 + v5);
  v17 = *(a2 + 48) + (-*(a2 + 48) & 3u);
  v18 = (a2 + 52 + v17);
  if (v18 > a2 + v5)
  {
    v51 = "cannot read comment from";
  }

  else
  {
    *(this + 376) = 0;
    if ((v10 & 0x20) != 0)
    {
      v55 = &unk_283708F80;
      v56 = 0;
      v57 = 0;
      if (&v18[(4 * v14) + 4] > v16)
      {
        Error::chuck("NDeepnetDistribution::mapFromMemory() - %s %s", a2, "cannot read fixpoint scaling from", a4);
      }

      v19 = *v18;
      if (v14 * v13)
      {
        v57 = v14 * v13;
        operator new[]();
      }

      if (v13 && v14)
      {
        if (v14 > 7)
        {
          v23 = 0;
          v24 = 0;
          v25 = -a2 - v17 - 56;
          v26 = (v17 + a2 + 72);
          v27 = (v17 + a2 + 56);
          do
          {
            v28 = 0;
            if (v14 * v24 > -v14)
            {
              goto LABEL_40;
            }

            if (v25 + 4 * (v14 * v24) < 0x20)
            {
              goto LABEL_40;
            }

            v29 = v23;
            v30 = v26;
            v31 = v14 & 0xFFFFFFF8;
            do
            {
              v32 = *v30;
              v33 = (4 * v29);
              *v33 = *(v30 - 1);
              v33[1] = v32;
              v30 += 32;
              v29 += 8;
              v31 -= 8;
            }

            while (v31);
            v28 = v14 & 0xFFFFFFF8;
            if (v28 != v14)
            {
LABEL_40:
              v34 = v14 - v28;
              v35 = v23 + v28;
              v36 = &v27[4 * v28];
              do
              {
                v37 = *v36;
                v36 += 4;
                *(4 * v35++) = v37;
                --v34;
              }

              while (v34);
            }

            ++v24;
            v23 += v14;
          }

          while (v24 != v13);
        }

        else
        {
          v20 = *(v18 + 1);
          v21 = 6;
          v22 = v13;
          do
          {
            *(4 * (v21 - 6)) = v20;
            if (v14 != 1)
            {
              *(4 * (v21 - 5)) = *(v18 + 2);
              if (v14 != 2)
              {
                *(4 * (v21 - 4)) = *(v18 + 3);
                if (v14 != 3)
                {
                  *(4 * (v21 - 3)) = *(v18 + 4);
                  if (v14 != 4)
                  {
                    *(4 * (v21 - 2)) = *(v18 + 5);
                    if (v14 != 5)
                    {
                      *(4 * (v21 - 1)) = *(v18 + 6);
                      if (v14 != 6)
                      {
                        *(4 * v21) = *(v18 + 7);
                      }
                    }
                  }
                }
              }
            }

            v21 += v14;
            --v22;
          }

          while (v22);
        }
      }

      *(this + 42) = v19;
      if ((this + 176) != &v55)
      {
        v38 = *(this + 48);
        v39 = v57;
        if (v38 != v57)
        {
          v40 = *(this + 23);
          if (v40)
          {
            MEMORY[0x223DF1D00](v40, 0x1000C8052888210);
            v39 = v57;
          }

          *(this + 48) = v39;
          operator new[]();
        }

        if (v38)
        {
          v41 = 0;
          v42 = v56;
          v43 = *(this + 23);
          do
          {
            *(v43 + 4 * v41) = *(v42 + 4 * v41);
            ++v41;
          }

          while (v41 < *(this + 48));
        }
      }

      v44 = ldexp(1.0, *(this + 42));
      *(this + 50) = v44;
      *(this + 51) = 1.0 / v44;
      NFixedPointScales::makeParamScales((this + 160));
      *(this + 280) = 1;
      NFixedPointSigmoidTable::initialize((this + 288), 0x100, v45, 8.0);
      *(this + 368) = 1;
      NFixedPointLogaddTable::initialize((this + 328), 0x100, v46, 8.0);
      *(this + 369) = 1;
      *(this + 376) = 1;
      v55 = &unk_283708F80;
      if (v56)
      {
        MEMORY[0x223DF1D00](v56, 0x1000C8052888210);
      }

      v18 += (4 * v14) + 4;
    }

    v47 = &v18[16 * v12];
    if (v47 > v16)
    {
      v51 = "cannot read layer definitions from";
    }

    else
    {
      if (&v47[v9] <= v16)
      {
        if (&v47[v9] == v16)
        {
          LODWORD(v55) = v11;
          NArray<NLayer>::resize(this + 32, &v58);
          v54 = *v18;
          v48 = *(v18 + 2);
          v53 = *(v18 + 3);
          v49 = __CFADD__(v53, v48);
          if (v53 + v48 <= v9 && !v49)
          {
            NLayer::initialize(*(this + 5), &v54);
          }

          v52 = "layer incorrectly defined in";
        }

        else
        {
          v52 = "extra junk at end of image:";
        }

        Error::chuck("NDeepnetDistribution::mapFromMemory() - %s %s", a2, v52, a4);
      }

      v51 = "cannot read enough data from image:";
    }
  }

LABEL_77:
  Error::chuck("NDeepnetDistribution::mapFromMemory() - %s %s", a2, v51, a4);
}

void sub_223A3D4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a22)
  {
    MEMORY[0x223DF1D00](a22, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

void NLayer::initialize(uint64_t a1, unsigned int *a2)
{
  switch(*a2)
  {
    case 1u:
      operator new();
    case 2u:
      operator new();
    case 3u:
      operator new();
    case 4u:
      operator new();
    case 6u:
      operator new();
    case 7u:
      operator new();
    case 8u:
      operator new();
    case 9u:
      operator new();
    case 0xAu:
      operator new();
    case 0xBu:
      operator new();
    case 0xCu:
      operator new();
    case 0xDu:
      operator new();
    case 0xEu:
      operator new();
    case 0xFu:
      operator new();
    case 0x10u:
      operator new();
    case 0x11u:
      operator new();
    case 0x12u:
      operator new();
    case 0x13u:
      operator new();
    case 0x14u:
      operator new();
    case 0x15u:
      operator new();
    case 0x16u:
      operator new();
    case 0x17u:
      operator new();
    case 0x18u:
      operator new();
    case 0x19u:
      operator new();
    case 0x1Au:
      operator new();
    case 0x1Bu:
      operator new();
    case 0x1Cu:
      operator new();
    case 0x1Du:
      operator new();
    case 0x1Eu:
      operator new();
    case 0x1Fu:
      operator new();
    case 0x20u:
      operator new();
    default:
      (*(*a1 + 16))(a1, 0);
      Error::chuck("NLayer::initialize() - unsupported layer type %d", v3, *a2);
  }
}

uint64_t NSubVectorSelectLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  if (*a5 < 0x10 || (*a5 & 4) != 0)
  {
    Error::chuck("NSubVectorSelectLayer::initialize() - invalid layer size", a2, a3, a4);
  }

  v6 = *a5 >> 2;
  v7 = 0;
  v8 = v6 - 2;
  if (v6 != 2)
  {
    v9 = 0;
    v10 = *a2;
    while (1)
    {
      v11 = *&a4[4 * v9];
      if (v11 >= v10)
      {
        break;
      }

      v12 = *&a4[4 * v9 + 4];
      if (v11 + v12 - 1 >= v10)
      {
        break;
      }

      v7 += v12;
      v9 += 2;
      if (v9 >= v8)
      {
        goto LABEL_11;
      }
    }

LABEL_17:
    Error::chuck("NSubVectorSelectLayer::initialize() - invalid subvector specification", a2, a3);
  }

LABEL_11:
  if (*&a4[4 * v8] || *&a4[4 * v6 - 4])
  {
    Error::chuck("NSubVectorSelectLayer::initialize() - missing subvector list termination", a2, a3);
  }

  if (v7 != *a3)
  {
    goto LABEL_17;
  }

  if (!*a2)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  if (!v7)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size output", a2);
  }

  *(this + 8) = *a2;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  return this;
}

uint64_t NVectorScaleLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a5 >> 2;
  if (v5 != *a2)
  {
    Error::chuck("NVectorScaleLayer::initialize() - Incorrect data size", a2, a3, a4);
  }

  if (v5 != *a3)
  {
    Error::chuck("NVectorScaleLayer::initialize() - Input and output not same", a2);
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

uint64_t NSigned8BitQuantizeLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a2;
  if (*a2 != 4 * *a3)
  {
    Error::chuck("NSigned8BitQuantizeLayer::initialize() - input and output size must be in ratio 4:1", a2);
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
  return this;
}

uint64_t NSigned8BitInput1DConvLayer::initialize(uint64_t this, const char *a2, unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = 4 * *a2;
  v6 = *a4;
  *(this + 36) = *a4;
  v7 = *(a4 + 1);
  *(this + 40) = v7;
  v8 = *(a4 + 2);
  v9 = *(a4 + 3) * 0.00392156863;
  *(this + 52) = v9;
  *(this + 32) = v5 / v6;
  v10 = *a3;
  *(this + 44) = v6 / v7;
  if (v5 / v6 * v6 != v5)
  {
    Error::chuck("NSigned8BitInput1DConvLayer::initialize() - inputsize not divisible by rowsize", a2);
  }

  v11 = v10 / v7;
  v12 = v7 * (v10 / v7);
  if (v12 != *a3)
  {
    Error::chuck("NSigned8BitInput1DConvLayer::initialize() - outputsize not divisible by numgroups", a2);
  }

  if (v7 * (v6 / v7) != v6)
  {
    Error::chuck("NSigned8BitInput1DConvLayer::initialize() - inputsize not divisible by numgroups", a2);
  }

  if (v8 != 1)
  {
    Error::chuck("NSigned8BitInput1DConvLayer::initialize() - numties not equal to 1 not supported", a2);
  }

  v13 = (v5 + 15) & 0xFFFFFFF0;
  if (*a5 != v11 * v13 + ((4 * v12 + 15) & 0xFFFFFFF0) + 16)
  {
    Error::chuck("NSigned8BitInput1DConvLayer::initialize() - Incorrect data size", a2);
  }

  if (!*a2)
  {
    goto LABEL_11;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  *(this + 8) = *a2;
  *(this + 12) = *a3;
  *(this + 16) = a4 + 16;
  *(this + 24) = &a4[v11 * v13 + 16];
  *(this + 48) = v13 - v6;
  if (!*a2)
  {
LABEL_11:
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  if (!*a3)
  {
LABEL_12:
    Error::chuck("NBaseLayer::initialize() - Zero size output", a2);
  }

  *(this + 8) = *a2;
  *(this + 12) = *a3;
  return this;
}

void BlobBuilder::buildPhoneHmmArray(BlobBuilder *this, const NConfigSection *a2)
{
  v2 = &unk_28370A720;
  v3 = 8;
  operator new[]();
}

void sub_223A3E460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NFile::close(NFile *this)
{
  result = (*(*this + 32))(this);
  if (result)
  {
    if (!std::filebuf::close())
    {
      v3 = (this + *(*(this + 5) - 24) + 40);
      std::ios_base::clear(v3, v3->__rdstate_ | 4);
    }

    v4 = 0;
    return (*(*(this + 1) + 64))(this + 8, "", &v4);
  }

  return result;
}

uint64_t NFile::open(NFile *this, const NString *a2, const NString *a3)
{
  (*(*this + 24))(this);
  v6 = (this + 40);
  std::ios_base::clear((this + *(*(this + 5) - 24) + 40), 0);
  v8 = *(a3 + 2);
  if (*(a3 + 2) != 1)
  {
    goto LABEL_18;
  }

  v9 = *v8;
  if (v9 == 114)
  {
    v10 = 0;
    goto LABEL_8;
  }

  if (v9 == 119)
  {
    v10 = 1;
    goto LABEL_8;
  }

  v8 = *(a3 + 2);
  if (*v8 != 97)
  {
LABEL_18:
    Error::chuck("NFile::open() - invalid mode %s", v7, v8);
  }

  v10 = 2;
LABEL_8:
  *(this + 156) = v10;
  v11 = std::filebuf::open();
  v12 = (v6 + *(*(this + 5) - 24));
  if (v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12->__rdstate_ | 4;
  }

  std::ios_base::clear(v12, v13);
  if (!*(this + 23))
  {
    Error::chuck("NFile::open() - file %s failed to open (mode %s)", v14, *(a2 + 2), *(a3 + 2));
  }

  if (*(v6 + *(*v6 - 24) + 32))
  {
    Error::chuck("NFile::open() - file %s opens with error (mode %s)", v14, *(a2 + 2), *(a3 + 2));
  }

  result = this + 8;
  if ((this + 8) != a2)
  {
    v16 = *(*result + 64);

    return v16();
  }

  return result;
}

void NString::deallocate(NString *this, char *a2)
{
  if (a2)
  {
    JUMPOUT(0x223DF1D00);
  }
}

void NFile::read(NFile *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 156))
    {
      *a2 = &unk_28370A720;
      *(a2 + 8) = 0;
      operator new[]();
    }

    Error::chuck("NFile::read() - cannot read, file %s not opened in read mode", v4, *(this + 3));
  }

  Error::chuck("NFile::read() - cannot read, file %s is not open", v4, *(this + 3));
}

void sub_223A3EC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a18)
  {
    MEMORY[0x223DF1D00](a18, 0x1000C8077774924);
  }

  if (a21)
  {
    MEMORY[0x223DF1D00](a21, 0x1000C8077774924);
  }

  *v21 = a11;
  v23 = v21[2];
  if (v23)
  {
    MEMORY[0x223DF1D00](v23, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NString::appendTo(NString *this, const void *a2, const unsigned int *a3)
{
  if (!a2)
  {
    Error::chuck("NString::appendTo() - Null pointer passed to assign", 0, a3);
  }

  v8 = *a3 + *(this + 2);
  v6 = (**this)(this, &v8);
  memcpy(v6, *(this + 2), *(this + 2));
  memcpy(&v6[*(this + 2)], a2, *a3);
  v6[v8] = 0;
  result = (*(*this + 8))(this, *(this + 2));
  *(this + 2) = v8;
  *(this + 2) = v6;
  return result;
}

void sub_223A40FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a45)
  {
    MEMORY[0x223DF1D00](a45, 0x1000C8077774924);
  }

  if (a30)
  {
    MEMORY[0x223DF1D00](a30, 0x1000C8077774924);
  }

  if (a51)
  {
    MEMORY[0x223DF1D00](a51, 0x1000C8077774924);
  }

  if (a54)
  {
    MEMORY[0x223DF1D00](a54, 0x1000C8077774924);
  }

  NArray<NString>::~NArray(&a55);
  a64 = a16;
  if (a66)
  {
    MEMORY[0x223DF1D00](a66, 0x1000C8077774924);
  }

  a59 = a17;
  if (a61)
  {
    MEMORY[0x223DF1D00](a61, 0x1000C8077774924);
  }

  *(v66 - 192) = a18;
  v68 = *(v66 - 176);
  if (v68)
  {
    MEMORY[0x223DF1D00](v68, 0x1000C8077774924);
  }

  *(v66 - 168) = a19;
  v69 = *(v66 - 152);
  if (v69)
  {
    MEMORY[0x223DF1D00](v69, 0x1000C8077774924);
  }

  *(v66 - 144) = a20;
  v70 = *(v66 - 128);
  if (v70)
  {
    MEMORY[0x223DF1D00](v70, 0x1000C8077774924);
  }

  *(v66 - 120) = a21;
  v71 = *(v66 - 104);
  if (v71)
  {
    MEMORY[0x223DF1D00](v71, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

void NScrambler::NScrambler(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = *(a2 + 8);
  operator new[]();
}

{
  *a1 = &unk_28370A720;
  *(a1 + 8) = *(a2 + 8);
  operator new[]();
}

void NString::slice(NString *this@<X0>, unsigned int *a2@<X1>, const unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *(this + 2);
  if (*a2 <= v5)
  {
    v7 = *a3;
    if (v7 <= v5)
    {
      if (v7 >= v4)
      {
        v8 = *(this + 2);
        *a4 = &unk_28370A720;
        if (v8)
        {
          *(a4 + 8) = v7 - v4;
          operator new[]();
        }

        Error::chuck("Null pointer passed to string constructor", a2);
      }

      Error::chuck("Start and end indices conflict, start [%d], end [%d]", a2, *a2, v7);
    }

    Error::chuck("Index %d outside of range [0,%d]", a2, a3, *a3, v5);
  }

  Error::chuck("Index %d outside of range [0,%d]", a2, a3, *a2, v5);
}

void NScrambler::unscramble(NScrambler *this, const NString *a2)
{
  v2 = &unk_28370A720;
  v3 = 0;
  operator new[]();
}

void sub_223A41A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v14);
  }

  *v15 = v16;
  v18 = v15[2];
  if (v18)
  {
    MEMORY[0x223DF1D00](v18, v14);
  }

  if (a14)
  {
    MEMORY[0x223DF1D00](a14, v14);
  }

  _Unwind_Resume(exception_object);
}

void base64_decode(const NString *a1)
{
  v3 = *(a1 + 2);
  v1 = vcvtd_n_f64_u32(v3, 1uLL);
  NAutoString::NAutoString(&v2, &v3, &v1);
}

void sub_223A42018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    MEMORY[0x223DF1D00](a16, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void NAutoString::NAutoString(NAutoString *this, const unsigned int *a2, const unsigned int *a3)
{
  *this = &unk_28370A720;
  *(this + 2) = 0;
  operator new[]();
}

{
  *this = &unk_28370A720;
  *(this + 2) = 0;
  operator new[]();
}

void sub_223A42174(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v5 = v2[2];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, v1);
  }

  _Unwind_Resume(exception_object);
}

void *NStringSplitIterator::operator++(uint64_t *a1, const char *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    Error::chuck("NStringSplitIterator::operator++() - input string unset", a2);
  }

  v4 = a1 + 9;
  v5 = *(a1 + 9);
  v6 = a1[3];
  v7 = *(a1 + 4);
  v8 = *(v2 + 8);
  v9 = *(a1 + 32);
  if ((v9 & 1) != 0 || v5 >= v8)
  {
LABEL_8:
    v30 = v5;
    if (v5 < v8)
    {
      v11 = (*(v2 + 16) + v5);
      v12 = v8 - v5;
      v13 = v5 + 1;
      do
      {
        v14 = *v11++;
        if (memchr(v6, v14, v7))
        {
          break;
        }

        *v4 = v13++;
        --v12;
      }

      while (v12);
      *(a1 + 40) = 1;
LABEL_17:
      NString::slice(v2, &v30, v4, v29);
    }
  }

  else
  {
    v10 = *(v2 + 16);
    do
    {
      if (!memchr(v6, *(v10 + v5), v7))
      {
        goto LABEL_8;
      }

      *v4 = ++v5;
    }

    while (v8 != v5);
    v30 = v8;
    LODWORD(v5) = v8;
  }

  if (v5 == v8)
  {
    v15 = v9;
  }

  else
  {
    v15 = 0;
  }

  *(a1 + 40) = v15;
  if (v15)
  {
    goto LABEL_17;
  }

  LODWORD(v29[0]) = 0;
  result = (*(a1[6] + 64))(a1 + 6, "", v29);
  v18 = *(a1 + 9);
  if (*(a1 + 33) == 1 && v18 < v8)
  {
    v19 = *(*a1 + 8);
    if (v18 >= v19)
    {
      Error::chuck("Index %d outside of range [0,%d]", v17, *(a1 + 9), v19 - 1, v29[0]);
    }

    v20 = (*(*a1 + 16) + v18);
    v23 = *v20;
    v21 = v20 + 1;
    v22 = v23;
    v24 = v19 - 1;
    v25 = v24 - v18;
    v26 = (v8 - 1) - v18;
    v27 = (v18 + 1);
    do
    {
      *v4 = v27;
      if (!v26)
      {
        break;
      }

      if (!v25)
      {
        Error::chuck("Index %d outside of range [0,%d]", v17, v27, v24, v29[0]);
      }

      v28 = *v21;
      if (v28 == v22)
      {
        break;
      }

      result = memchr(v6, v28, v7);
      --v25;
      --v26;
      ++v21;
      v27 = (v27 + 1);
    }

    while (result);
  }

  else
  {
    *v4 = v18 + 1;
  }

  return result;
}

void sub_223A42418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

void NString::creplace(NString *this, const NString *a2, const NString *a3)
{
  v3 = &unk_28370A720;
  v4 = 0;
  operator new[]();
}

void sub_223A428C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a16)
  {
    MEMORY[0x223DF1D00](a16, 0x1000C8077774924);
  }

  if (a19)
  {
    MEMORY[0x223DF1D00](a19, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NString::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result;
    (*(*result + 64))(result, *(a2 + 16), a2 + 8);
    return v2;
  }

  return result;
}

void sub_223A42DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  NMap<NString,NConfigSection>::HashItem::~HashItem(va);
  _Unwind_Resume(a1);
}

void sub_223A42DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  NConfigSection::~NConfigSection(va);
  if (!a4)
  {
    _Unwind_Resume(a1);
  }

  MEMORY[0x223DF1D00](a4, v4);
  _Unwind_Resume(a1);
}

uint64_t NArray<NLinkedList<NMap<NString,NString>::HashItem>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = *(v6 - 8);
        if (v7)
        {
          v8 = v6 + 32 * v7;
          do
          {
            v9 = v8 - 32;
            for (*(v8 - 32) = &unk_28370A108; ; (*(*(v8 - 32) + 72))(v8 - 32))
            {
              v10 = *(v8 - 24);
              if (!v10)
              {
                break;
              }

              *(v8 - 24) = *(v10 + 8);
            }

            *(v8 - 16) = 0;
            *(v8 - 8) = 0;
            v8 -= 32;
          }

          while (v9 != v6);
        }

        MEMORY[0x223DF1D00](v6 - 16, 0x10A1C80F4A7E088);
        v5 = *(a2 + 16);
      }

      *(a1 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        (*(*(*(a1 + 8) + v11) + 24))(*(a1 + 8) + v11, *(a2 + 8) + v11);
        ++v12;
        v11 += 32;
      }

      while (v12 < *(a1 + 16));
    }
  }

  return a1;
}

uint64_t NLinkedList<NMap<NString,NString>::HashItem>::reset(uint64_t result)
{
  v1 = result;
  for (i = *(result + 8); i; i = *(v1 + 8))
  {
    *(v1 + 8) = *(i + 8);
    result = (*(*v1 + 72))(v1);
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  return result;
}

void sub_223A43564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  NConfigSection::~NConfigSection(va);
  if (a4)
  {
    MEMORY[0x223DF1D00](a4, v4);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_223A43760(_Unwind_Exception *a1)
{
  NHash<NMap<NString,NString>::HashItem>::~NHash(v5);
  v2[5] = v4;
  v7 = v2[7];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8077774924);
  }

  v2[2] = v3;
  v8 = v2[4];
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
  }

  MEMORY[0x223DF1D20](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t NString::assignTo(NString *this, const void *a2, const unsigned int *a3)
{
  if (!a2)
  {
    Error::chuck("NString::assignTo() - Null pointer passed to assign", 0, a3);
  }

  LODWORD(__n) = *a3;
  v5 = (**this)(this, &__n);
  memcpy(v5, a2, __n);
  *(v5 + __n) = 0;
  result = (*(*this + 8))(this, *(this + 2));
  *(this + 2) = __n;
  *(this + 2) = v5;
  return result;
}

uint64_t NSmartPointer<NBaseFile>::setPointer(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 8) = a2;
  return result;
}

uint64_t NArray<NLinkedList<NMap<NString,NString>::HashItem>>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

void NMap<NString,NConfigSection>::HashItem::HashItem(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = *(a2 + 8);
  operator new[]();
}

void sub_223A43C18(_Unwind_Exception *a1)
{
  NHash<NMap<NString,NString>::HashItem>::~NHash(v5);
  v2[3] = v4;
  v7 = v2[5];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, v1);
  }

  *v2 = v3;
  v8 = v2[2];
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, v1);
  }

  _Unwind_Resume(a1);
}

uint64_t NLinkedList<NMap<NString,NString>::HashItem>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    (*(*a1 + 56))(a1);
    for (i = *(a2 + 8); i; i = *(i + 8))
    {
      (*(*a1 + 40))(a1, i + 16);
    }
  }

  return a1;
}

uint64_t NLinkedList<NMap<NString,NConfigSection>::HashItem>::prepend(uint64_t a1)
{
  result = (*(*a1 + 64))(a1);
  v3 = *(a1 + 8);
  if (v3)
  {
    *(result + 8) = v3;
  }

  else
  {
    *(a1 + 16) = result;
  }

  *(a1 + 8) = result;
  ++*(a1 + 24);
  return result;
}

void sub_223A44048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a15)
  {
    MEMORY[0x223DF1D00](a15, v18);
  }

  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v18);
  }

  _Unwind_Resume(exception_object);
}

void sub_223A441C0(_Unwind_Exception *a1)
{
  *(v1 + 16) = v3;
  v5 = *(v1 + 32);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8077774924);
  }

  MEMORY[0x223DF1D20](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t NLinkedList<NMap<NString,NString>::HashItem>::prepend(uint64_t a1)
{
  result = (*(*a1 + 64))(a1);
  v3 = *(a1 + 8);
  if (v3)
  {
    *(result + 8) = v3;
  }

  else
  {
    *(a1 + 16) = result;
  }

  *(a1 + 8) = result;
  ++*(a1 + 24);
  return result;
}

void NString::operator+(uint64_t a1)
{
  v1 = &unk_28370A720;
  v2 = *(a1 + 8);
  operator new[]();
}

void sub_223A443A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NString::operator+=(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a2 + 16);
    v5 = v2;
    v4 = result;
    (*(*result + 72))(result, v3, &v5);
    return v4;
  }

  return result;
}

void NFile::~NFile(NFile *this)
{
  NFile::~NFile(this);

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_28370A1A8;
  if (*(this + 23))
  {
    if (!std::filebuf::close())
    {
      v2 = (this + *(*(this + 5) - 24) + 40);
      std::ios_base::clear(v2, v2->__rdstate_ | 4);
    }

    v4 = 0;
    (*(*(this + 1) + 64))(this + 8, "", &v4);
  }

  MEMORY[0x223DF1BC0](this + 64);
  std::iostream::~basic_iostream();
  MEMORY[0x223DF1CE0](this + 472);
  *this = &unk_28370A250;
  *(this + 1) = &unk_28370A720;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }
}

void sub_223A44A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  NConfigSection::~NConfigSection(va);
  if (a6)
  {
    MEMORY[0x223DF1D00](a6, v6);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *N16ByteAlignedString::allocate(N16ByteAlignedString *this, const unsigned int *a2)
{
  memptr = 0;
  if (malloc_type_posix_memalign(&memptr, *(this + 6), *a2 + 1, 0xFD34284uLL))
  {
    Error::chuck("N16ByteAlignedString::allocate() - failed to allocate %d bytes %d-aligned", v4, *a2 + 1, *(this + 6));
  }

  return memptr;
}

uint64_t NArray<unsigned int>::fromArray(uint64_t result, uint64_t a2, int *a3)
{
  v3 = result;
  v4 = *(result + 16);
  v5 = *a3;
  if (v4 != *a3)
  {
    v6 = *(result + 8);
    if (v6)
    {
      MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
      v5 = *a3;
    }

    *(v3 + 16) = v5;
    operator new[]();
  }

  if (v4)
  {
    v8 = 0;
    v9 = *(result + 8);
    do
    {
      *(v9 + 4 * v8) = *(a2 + 4 * v8);
      ++v8;
    }

    while (v8 < *(result + 16));
  }

  return result;
}

uint64_t NBlockDiagonalLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a5;
  v6 = *&a4[v5 - 4];
  v7 = *a2;
  v8 = *a2 / v6;
  v9 = *a3 / v6;
  if (*a3 != v9 * v6 || v7 != v8 * v6)
  {
    Error::chuck("NBlockDiagonalLayer::initialize() - dimen not divisible", a2);
  }

  if (v9 + v9 * v8 + 1 != v5 >> 2)
  {
    Error::chuck("NBlockDiagonalLayer::initialize() - Incorrect data size", a2);
  }

  if ((a4 & 0xF) != 0)
  {
    Error::chuck("NMatrixLayer::initialize() - Unaligned data block", a2);
  }

  if (!v7)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size input", a2);
  }

  if (!*a3)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size output", a2);
  }

  *(this + 8) = v7;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  *(this + 28) = v9;
  *(this + 32) = v6;
  *(this + 24) = v8;
  return this;
}

uint64_t NClipLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a2;
  if (*a2 != *a3)
  {
    Error::chuck("NClipLayer::initialize() - input and output size must be the same", a2);
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

uint64_t NShiftRegisterLayer::initialize(uint64_t this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  v5 = *a3 / *a2;
  if (v5 * *a2 != *a3)
  {
    Error::chuck("NShiftRegisterLayer::initialize() - output size must integer-multiple of input", a2);
  }

  if (*a5 != 8)
  {
    Error::chuck("NShiftRegisterLayer::initialize() - Incorrect data size", a2);
  }

  v6 = *a4;
  v7 = *(a4 + 1);
  if (*a4 + v5 + (v5 - 1) * v7 >= 0x7A121)
  {
    Error::chuck("NShiftRegisterLayer::initialize() - settings result in unreasonable storage requirement", a2);
  }

  if (!*a3)
  {
    Error::chuck("NBaseLayer::initialize() - Zero size output", a2);
  }

  *(this + 8) = *a2;
  *(this + 12) = *a3;
  *(this + 16) = a4;
  *(this + 24) = v6;
  *(this + 28) = v7;
  return this;
}

float N8BitMatrixLayer::initialize(N8BitMatrixLayer *this, const char *a2, const unsigned int *a3, const char *a4, const unsigned int *a5)
{
  if ((a4 & 0xF) != 0)
  {
    Error::chuck("N8BitMatrixLayer::initialize() - Unaligned data block", a2, a3);
  }

  v5 = *a2;
  v6 = (*a2 + 15) & 0xFFFFFFF0;
  v7 = v6 * *a3;
  if (*a5 != ((((4 * *a3 + 15) & 0xFFFFFFF0) + v7) | 4))
  {
    Error::chuck("N8BitMatrixLayer::initialize() - Incorrect data size", a2);
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
  *(this + 3) = &a4[v7];
  *(this + 8) = v6 - *a2;
  result = *&a4[*a5 - 4] * 0.00392156863;
  *(this + 9) = result;
  return result;
}

void sub_223A45890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  NAutoArray<NPhoneHMM>::~NAutoArray(&a33);
  NArray<NString>::~NArray((v41 - 160));
  a40 = &unk_28370AA90;
  if (a41)
  {
    (*(*a41 + 8))(a41);
  }

  _Unwind_Resume(a1);
}

void NFile::readLine(uint64_t a1@<X8>)
{
  *a1 = &unk_28370A720;
  *(a1 + 8) = 0;
  operator new[]();
}

void sub_223A45AE4(_Unwind_Exception *exception_object)
{
  *v2 = v3;
  v5 = v2[2];
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, v1);
  }

  _Unwind_Resume(exception_object);
}

void NFile::readLine(NFile *this, const char *a2, NString *a3)
{
  if ((*(*this + 32))(this))
  {
    if (!*(this + 156))
    {
      operator new[]();
    }

    Error::chuck("NFile::readLine() - cannot read, file %s not opened in read mode", v4, *(this + 3));
  }

  Error::chuck("NFile::readLine() - cannot read, file %s is not open", v4, *(this + 3));
}

void sub_223A45F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a15)
  {
    MEMORY[0x223DF1D00](a15, v18);
  }

  if (a18)
  {
    MEMORY[0x223DF1D00](a18, v18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NString::operator=(uint64_t a1, char *__s)
{
  if (!__s)
  {
    Error::chuck("NString::assignTo() - Null pointer passed to assign", 0);
  }

  v5 = strlen(__s);
  (*(*a1 + 64))(a1, __s, &v5);
  return a1;
}

uint64_t NString::stripComments(uint64_t this, unsigned __int8 a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *(this + 16);
    if (*v3 == a2)
    {
      *v3 = 0;
      *(this + 8) = 0;
    }

    else if (v2 != 1)
    {
      v4 = v3 + 1;
      v5 = 1;
      while (1)
      {
        if (*v4 == a2)
        {
          v6 = *(v4 - 1);
          if (v6 == 32 || v6 == 9)
          {
            break;
          }
        }

        ++v5;
        ++v4;
        if (v2 == v5)
        {
          return this;
        }
      }

      *(this + 8) = v5;
      v3[v5] = 0;
    }
  }

  return this;
}

void *NString::split(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5 = *(a1 + 16);
  result = (*(*a2 + 56))(a2);
  v16 = a1;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = 0;
    for (i = *a4; ; i = *a4)
    {
      v10 = v8;
      v11 = *(a3 + 16);
      v12 = *(a3 + 8);
      v8 = v7 <= v8 + 1 ? (v8 + 1) : v7;
      v13 = v5;
      while (1)
      {
        result = memchr(v11, *v13, v12);
        if (!result)
        {
          break;
        }

        ++v13;
        v10 = (v10 + 1);
        if (v8 == v10)
        {
          v14 = 0;
LABEL_17:
          v5 = v13;
          if (i)
          {
            goto LABEL_20;
          }

LABEL_18:
          strlen(v13);
          operator new[]();
        }
      }

      v14 = v7 - v10;
      if (v7 <= v10)
      {
        v14 = 0;
        v8 = v10;
        goto LABEL_17;
      }

      v15 = 0;
      do
      {
        result = memchr(v11, v13[v15], v12);
        if (result)
        {
          v5 = &v13[v15];
          v14 = v15;
          v8 = v10;
          if (i)
          {
            goto LABEL_20;
          }

          goto LABEL_18;
        }

        v10 = (v10 + 1);
        ++v15;
      }

      while (v7 != v10);
      v5 = &v13[v15];
      v8 = v7;
      if (!i)
      {
        goto LABEL_18;
      }

LABEL_20:
      if (v14)
      {
        operator new[]();
      }

      v7 = *(v16 + 8);
      if (v8 >= v7)
      {
        break;
      }
    }
  }

  return result;
}

void sub_223A46334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    MEMORY[0x223DF1D00](a16, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLinkedList<NString>::reset(uint64_t result)
{
  v1 = result;
  for (i = *(result + 8); i; i = *(v1 + 8))
  {
    *(v1 + 8) = *(i + 8);
    result = (*(*v1 + 72))(v1);
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  return result;
}

uint64_t NLinkedList<NString>::append(uint64_t a1)
{
  result = (*(*a1 + 64))(a1);
  v3 = (a1 + 16);
  if (*(a1 + 8))
  {
    v4 = (*v3 + 8);
  }

  else
  {
    v4 = (a1 + 16);
    v3 = (a1 + 8);
  }

  *v4 = result;
  *v3 = result;
  ++*(a1 + 24);
  return result;
}

uint64_t NArray<NString>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = v6 - 16;
        v8 = *(v6 - 8);
        if (v8)
        {
          v9 = v6 + 24 * v8;
          v10 = (v9 - 8);
          v11 = v9 - 24;
          v12 = -24 * v8;
          do
          {
            *(v10 - 2) = &unk_28370A720;
            if (*v10)
            {
              MEMORY[0x223DF1D00](*v10, 0x1000C8077774924);
            }

            v10 -= 3;
            v11 -= 24;
            v12 += 24;
          }

          while (v12);
        }

        MEMORY[0x223DF1D00](v7, 0x1091C800F2A5985);
        v5 = *(a2 + 16);
      }

      *(a1 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        (*(*(*(a1 + 8) + v13) + 32))(*(a1 + 8) + v13, *(a2 + 8) + v13);
        ++v14;
        v13 += 24;
      }

      while (v14 < *(a1 + 16));
    }
  }

  return a1;
}

uint64_t NLinkedList<NString>::deleteElement(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void NLinkedList<NString>::NElement::~NElement(void *a1)
{
  *a1 = &unk_28370A830;
  a1[2] = &unk_28370A720;
  if (a1[4])
  {
    MEMORY[0x223DF1D00](a1[4], 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

uint64_t NAutoArray<NPhoneHMM>::resize(uint64_t result, unsigned int *a2, unsigned int a3)
{
  v4 = result;
  v5 = *a2;
  if (*a2 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a2;
  }

  v22 = v6;
  if (v6)
  {
    operator new[]();
  }

  v7 = *(result + 16);
  if (v5 < v7)
  {
    *(result + 16) = v5;
    v7 = v5;
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v4 + 8);
      if (v9)
      {
        v10 = v9 + 48 * v8;
        v11 = *(v10 + 16);
        if (*(48 * v8 + 0x10) != v11)
        {
          v12 = *(48 * v8 + 8);
          if (v12)
          {
            MEMORY[0x223DF1D00](v12 - 16, 0x1000C8000313F17);
            LODWORD(v11) = *(v10 + 16);
          }

          *(48 * v8 + 0x10) = v11;
          operator new[]();
        }

        if (*(48 * v8 + 0x10))
        {
          v13 = 0;
          do
          {
            *(*(48 * v8 + 8) + 8 * v13) = *(*(v10 + 8) + 8 * v13);
            ++v13;
          }

          while (v13 < *(48 * v8 + 0x10));
        }

        result = (*(*(48 * v8 + 0x18) + 64))(48 * v8 + 24, *(v10 + 40), v10 + 32);
      }

      ++v8;
    }

    while (v8 < *(v4 + 16));
  }

  v14 = *(v4 + 8);
  if (v14)
  {
    v15 = v14 - 16;
    v16 = *(v14 - 8);
    if (v16)
    {
      v17 = (v14 + 48 * v16 - 48);
      v18 = -48 * v16;
      v19 = v17;
      do
      {
        *v17 = &unk_283708B40;
        v17[3] = &unk_28370A720;
        v20 = v17[5];
        if (v20)
        {
          MEMORY[0x223DF1D00](v20, 0x1000C8077774924);
        }

        *v17 = off_283708BA0;
        v21 = v17[1];
        if (v21)
        {
          MEMORY[0x223DF1D00](v21 - 16, 0x1000C8000313F17);
        }

        v19 -= 6;
        v17 -= 6;
        v18 += 48;
      }

      while (v18);
    }

    result = MEMORY[0x223DF1D00](v15, 0x10B1C80FD921951);
  }

  *(v4 + 8) = 0;
  *(v4 + 16) = *a2;
  *(v4 + 20) = v22;
  return result;
}

void sub_223A46D64(_Unwind_Exception *a1)
{
  *(v4 + 16) = off_283708BA0;
  v6 = *(v4 + 24);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6 - 16, 0x1000C8000313F17);
  }

  if (v1 != 16)
  {
    v7 = (v4 - 32);
    v8 = -v3;
    do
    {
      NPhoneHMM::~NPhoneHMM(v7);
      v7 = (v9 - 48);
      v8 += 48;
    }

    while (v8);
  }

  MEMORY[0x223DF1D00](v2, 0x10B1C80FD921951);
  _Unwind_Resume(a1);
}

uint64_t NArray<NHMMState>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<NPhoneHMM>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = v6 - 16;
        v8 = *(v6 - 8);
        if (v8)
        {
          v9 = (v6 + 48 * v8 - 48);
          v10 = -48 * v8;
          v11 = v9;
          do
          {
            *v9 = &unk_283708B40;
            v9[3] = &unk_28370A720;
            v12 = v9[5];
            if (v12)
            {
              MEMORY[0x223DF1D00](v12, 0x1000C8077774924);
            }

            *v9 = off_283708BA0;
            v13 = v9[1];
            if (v13)
            {
              MEMORY[0x223DF1D00](v13 - 16, 0x1000C8000313F17);
            }

            v11 -= 6;
            v9 -= 6;
            v10 += 48;
          }

          while (v10);
        }

        MEMORY[0x223DF1D00](v7, 0x10B1C80FD921951);
        v5 = *(a2 + 16);
      }

      *(a1 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v14 = 0;
      do
      {
        v15 = *(a2 + 8);
        v16 = *(a1 + 8);
        if (v16 != v15)
        {
          v17 = v15 + 48 * v14;
          v18 = v16 + 48 * v14;
          v19 = *(v17 + 16);
          if (*(v18 + 16) != v19)
          {
            v20 = *(v18 + 8);
            if (v20)
            {
              MEMORY[0x223DF1D00](v20 - 16, 0x1000C8000313F17);
              LODWORD(v19) = *(v17 + 16);
            }

            *(v18 + 16) = v19;
            operator new[]();
          }

          if (*(v18 + 16))
          {
            v21 = 0;
            do
            {
              *(*(v18 + 8) + 8 * v21) = *(*(v17 + 8) + 8 * v21);
              ++v21;
            }

            while (v21 < *(v18 + 16));
          }

          (*(*(v18 + 24) + 64))(v18 + 24, *(v17 + 40), v17 + 32);
        }

        ++v14;
      }

      while (v14 < *(a1 + 16));
    }
  }

  return a1;
}

void sub_223A471E4(_Unwind_Exception *a1)
{
  *(v4 + 16) = off_283708BA0;
  v7 = *(v4 + 24);
  if (v7)
  {
    MEMORY[0x223DF1D00](v7 - 16, 0x1000C8000313F17);
  }

  if (v5 != 16)
  {
    v8 = (v4 - 32);
    v9 = -v3;
    do
    {
      NPhoneHMM::~NPhoneHMM(v8);
      v8 = (v10 - 48);
      v9 += 48;
    }

    while (v9);
  }

  MEMORY[0x223DF1D00](v2, v1);
  _Unwind_Resume(a1);
}

void BlobBuilder::buildAcAnalConfig(BlobBuilder *this, const NConfigSection *a2)
{
  v2 = &unk_28370A720;
  LODWORD(v3) = 11;
  operator new[]();
}

void sub_223A48400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (a7)
  {
    MEMORY[0x223DF1D00](a7, v10);
  }

  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  *(v12 - 88) = v11;
  v14 = *(v12 - 72);
  if (v14)
  {
    MEMORY[0x223DF1D00](v14, v10);
  }

  NConfig::~NConfig(va);
  _Unwind_Resume(a1);
}

void BlobBuilder::sanityCheckAcAnalOption(BlobBuilder *this, const NConfigSection *a2)
{
  v2 = &unk_28370A720;
  v3 = 10;
  operator new[]();
}

void sub_223A49514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    MEMORY[0x223DF1D00](a16, v16);
  }

  _Unwind_Resume(exception_object);
}

void BlobBuilder::analysisTargetKind()
{
  v0 = &unk_28370A720;
  v1 = 10;
  operator new[]();
}

void sub_223A49C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  NLinkedList<NString>::~NLinkedList(&a18);
  a22 = a13;
  if (a24)
  {
    MEMORY[0x223DF1D00](a24, v24);
  }

  _Unwind_Resume(a1);
}

void NDEAcAnal::init(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  if (a2)
  {
    *(a1 + 580) = *a2;
    v3 = *(a2 + 16);
    v4 = *(a2 + 32);
    v5 = *(a2 + 48);
    *(a1 + 644) = *(a2 + 64);
    *(a1 + 612) = v4;
    *(a1 + 628) = v5;
    *(a1 + 596) = v3;
  }

  v6 = *a3;
  if (*a3)
  {
    *(a1 + 648) = v6;
    v7 = (*(a1 + 584) * v6) / 10000000.0;
    v8 = 2147500000.0;
    if (v7 <= 2147500000.0)
    {
      v8 = (*(a1 + 584) * v6) / 10000000.0;
      if (v7 < 0.0)
      {
        v8 = 0.0;
      }
    }

    *(a1 + 652) = v8;
    v9 = (*(a1 + 580) * v6) / 10000000.0;
    v10 = 3.53369517e72;
    if (v9 <= 2147500000.0)
    {
      *&v10 = (*(a1 + 580) * v6) / 10000000.0;
      if (v9 < 0.0)
      {
        v10 = 0.0;
      }
    }

    v11 = *&v10;
    if (*&v10 <= 1)
    {
      v11 = 1;
    }

    *(a1 + 656) = v11;
    if (*(a1 + 624))
    {
      ++*(a1 + 616);
    }

    v12 = *(a1 + 594) & 1;
    if (v12)
    {
      *(a1 + 616) = *(a1 + 596);
    }

    v13 = *(a1 + 592) & 1;
    v14 = *(a1 + 595) & 1;
    v18 = *(a1 + 593) & 1;
    v17 = v13;
    v16 = v12;
    v15 = v14;
    AccelStaticMFCC::init(a1, (a1 + 656), (a1 + 648), (a1 + 652), &v18, (a1 + 588), &v17, &v16, v10, &v15, (a1 + 596), (a1 + 600), (a1 + 604), (a1 + 620), (a1 + 616), (a1 + 628), (a1 + 632), (a1 + 608), (a1 + 612));
  }

  Error::chuck("NDEAcAnal::setSamRate() - a_iSamRate (= %d) must be strictly positive\n", a2, 0);
}

void AccelStaticMFCC::init(AccelStaticMFCC *this, const char *a2, unsigned int *a3, const unsigned int *a4, const BOOL *a5, float *a6, const BOOL *a7, const BOOL *a8, double a9, const BOOL *a10, const unsigned int *a11, const float *a12, const float *a13, const unsigned int *a14, const unsigned int *a15, const float *a16, const float *a17, const float *a18, const float *a19)
{
  if (!(*a4 >> 30))
  {
    *(this + 123) = *a2;
    *(this + 124) = *a15;
    v19 = *a4;
    *(this + 122) = *a4;
    *(this + 125) = *a6;
    if (*(this + 12) != v19)
    {
      *(this + 12) = v19;
      operator new[]();
    }

    if (*(this + 18) != v19)
    {
      *(this + 18) = v19;
      operator new[]();
    }

    v20 = *(this + 124);
    if (*(this + 6) != v20)
    {
      *(this + 6) = v20;
      operator new[]();
    }

    *(this + 88) = 0;
    v21 = *a3;
    *(this + 105) = *a3;
    v22 = *a4;
    *(this + 106) = *a4;
    *(this + 428) = *a5;
    v23 = 1;
    do
    {
      v24 = v23;
      v23 *= 2;
    }

    while (v24 < v22);
    *(this + 108) = v24;
    *(this + 109) = (v24 >> 1) + 1;
    *(this + 440) = *a10;
    *(this + 111) = *a16 * *a17;
    *(this + 448) = *a7;
    v25 = *a11;
    *(this + 113) = *a11;
    *(this + 114) = v21 >> 1;
    *(this + 115) = *a12;
    *(this + 116) = *a13;
    *(this + 117) = *a18;
    *&a9 = *a19;
    *(this + 118) = *a19;
    v26 = *a8;
    *(this + 449) = v26;
    *(this + 119) = *a14;
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = *(this + 124);
    }

    *(this + 120) = v27;
    AccelWin2MFCC::initProc((this + 88), a9);
  }

  Error::chuck("AccelStaticMFCC::init() - windowlen too large (%u >2^30)", a2, a3, *a4);
}

void AccelWin2MFCC::initProc(AccelWin2MFCC *this, double a2)
{
  AccelWindow::init((this + 8), this + 336, this + 340, this + 360, a2);
  AccelFFT::init(this + 6, this + 336, this + 86, this + 87);
  *(this + 26) = *(this + 87);
  *(this + 108) = *(this + 352);
  *(this + 24) = 0;
  *(this + 100) = 1;
  AccelMelFilter::init((this + 112), this + 364, this + 87, this + 92, this + 93, this + 94, this + 95, this + 96);
}

void AccelWindow::init(AccelWindow *this, const char *a2, const BOOL *a3, const BOOL *a4, double a5)
{
  v6 = *a2;
  *this = *a2;
  *(this + 5) = *a3;
  if (*(this + 6) != v6)
  {
    *(this + 6) = v6;
    operator new[]();
  }

  *(this + 6) = *a4;
  *(this + 8) = 1;
  if (!*a2)
  {
    *(this + 4) = 0;
    Error::chuck("NWindow::init() - window length cannot be zero", a2);
  }

  v7 = *this;
  if (*(this + 5))
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = *(this + 2);
    if (v7 == 1)
    {
      v9 = 0;
      v10 = 1u + -1.0;
      do
      {
LABEL_13:
        v18 = cosf((v9 * 6.2832) / v10);
        v10 = v7 + -1.0;
        v19 = v18 * -0.46 + 0.54;
        *(v8 + 4 * v9++) = v19;
      }

      while (v7 != v9);
      goto LABEL_14;
    }

    v9 = v7 & 0xFFFFFFFE;
    *&a5 = v7 + -1.0;
    v11 = vdup_lane_s32(*&a5, 0);
    v12 = 0x100000000;
    v13 = vdup_n_s32(0x40C90FD0u);
    v20 = vdupq_n_s64(0x3FE147AE147AE148uLL);
    v21 = vdupq_n_s64(0xBFDD70A3D70A3D71);
    v14 = *(this + 2);
    v15 = v9;
    do
    {
      v16 = vdiv_f32(vmul_f32(vcvt_f32_u32(v12), v13), v11);
      v22 = v16.f32[0];
      v23 = cosf(v16.f32[1]);
      v17.f32[0] = cosf(v22);
      v17.f32[1] = v23;
      *v14++ = vcvt_f32_f64(vmlaq_f64(v20, v21, vcvtq_f64_f32(v17)));
      v12 = vadd_s32(v12, 0x200000002);
      v15 -= 2;
    }

    while (v15);
    v10 = v7 + -1.0;
    if (v9 != v7)
    {
      goto LABEL_13;
    }
  }

  else if (v7)
  {
    memset_pattern16(*(this + 2), &unk_223B13330, 4 * v7);
  }

LABEL_14:
  *(this + 4) = 1;
}

vDSP_DFT_Setup AccelFFT::init(vDSP_DFT_SetupStruct **this, const char *a2, unsigned int *a3, const unsigned int *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || v6 == 0)
  {
    Error::chuck("AccelFFT::init() - these lengths have to be strictly positive: a_iWindowLen (=%u), a_iDFTLen (=%u) and a_iNPoints (=%u)", a2, v4, *a3, v6);
  }

  v12 = *this;
  if (v12)
  {
    vDSP_DFT_DestroySetup(v12);
    v5 = *a3;
  }

  *(this + 3) = v5;
  *(this + 5) = *a4;
  *(this + 4) = *a2;
  if (*(this + 10) != v5)
  {
    *(this + 10) = v5;
    operator new[]();
  }

  result = vDSP_DFT_zrop_CreateSetup(0, v5, vDSP_DFT_FORWARD);
  *this = result;
  if (!result)
  {
    Error::chuck("AccelFFT::init() - CreateSetup fails on %d-point FFT", v15, *(this + 3));
  }

  *(this + 8) = 1;
  return result;
}

void AccelMelFilter::setPoints(unsigned int *a1, const char *a2, float *a3, float *a4, float *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *a2;
  v16 = 0.0;
  if (*a2 >= 0.0)
  {
    v17 = v15 / 700.0 + 1.0;
    v16 = log10f(v17) * 2595.0;
  }

  v18 = *a3;
  if (*a3 >= 0.0)
  {
    v21 = v18;
    v19 = a1[2];
    v20 = v19;
    if (v19 + 1.0 < v18)
    {
      Error::chuck("NMelFilter::setPoints() - HIFREQ %f > NYQUIST %d", a2, v18, a1[2]);
    }

    if (v18 <= v20)
    {
      if (v15 >= v18)
      {
        Error::chuck("NMelFilter::setPoints() - LOFREQ %f >= HIFREQ %f", a2, v15, *&v21);
      }
    }

    else
    {
      v21 = v19;
    }
  }

  else
  {
    v19 = a1[2];
    v20 = v19;
    v21 = v19;
  }

  v22 = v21 / 700.0 + 1.0;
  v24 = log10f(v22);
  v25 = *a5;
  if (*a5 > v20)
  {
    Error::chuck("NMelFilter::setPoints() - MINBW %f > nyquist %d", v23, v25, v19);
  }

  v26 = v24 * 2595.0;
  v27 = *a1;
  v28 = *a4;
  v30 = (__exp10f((v24 * 2595.0) / 2595.0) + -1.0) * 700.0;
  if (v28 <= 0.0 || (v30 * v28) * 0.98 > v19)
  {
    Error::chuck("NMelFilter::setPoints() - freqscale %f -ve or > NYQUIST/HIFREQ (%f/%d)", v29, v28, v30, v19);
  }

  v31 = a1[1];
  v32 = *(a7 + 8);
  if (v27 == -2)
  {
    v35 = -1;
  }

  else
  {
    v33 = 0;
    do
    {
      v34 = (v26 - v16) / (v27 + 1.0);
      *(v32 + 4 * v33) = ((((__exp10f((v16 + (v33 * v34)) / 2595.0) + -1.0) * 700.0) * *a4) / v20) * v31;
      ++v33;
    }

    while (v27 + 2 != v33);
    v35 = v27 + 1;
    if (v27 + 1 < 2)
    {
      return;
    }

    v25 = *a5;
  }

  v36 = (v25 / v20) * v31;
  v37 = v35;
  v38 = (v32 + 4);
  v39 = (*(a8 + 8) + 4);
  v40 = v37 - 1;
  v41 = (*(a6 + 8) + 4);
  do
  {
    *v41 = *(v38 - 1);
    v42 = v38[1];
    *v39 = v42;
    v43 = *v38;
    if ((*v38 - *v41) < v36)
    {
      *v41 = v43 - v36;
      v42 = *v39;
      v43 = *v38;
    }

    if ((v42 - v43) < v36)
    {
      *v39 = v36 + v43;
    }

    ++v38;
    ++v39;
    ++v41;
    --v40;
  }

  while (v40);
}

uint64_t NSmartPointer<NBaseLayer>::setPointer(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 8) = a2;
  return result;
}

void AccelMelFilter::init(AccelMelFilter *this, const char *a2, const unsigned int *a3, const unsigned int *a4, const float *a5, const float *a6, const float *a7, const float *a8)
{
  v8 = *a2;
  v9 = *a3;
  if (*a2 <= v9)
  {
    *this = v8;
    *(this + 1) = *a3;
    *(this + 2) = *a4;
    if (*(this + 8) != v8)
    {
      *(this + 8) = v8;
      operator new[]();
    }

    NArray<NArray<float>>::resize(this + 40, this);
    if (*this != -2)
    {
      operator new[]();
    }

    operator new[]();
  }

  Error::chuck("AccelMelFilter::init - NUMCHANS %d > %d spectral samples", a2, *a2, v9);
}

void sub_223A4B1E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a13)
  {
    MEMORY[0x223DF1D00](a13, 0x1000C8052888210);
  }

  if (a16)
  {
    MEMORY[0x223DF1D00](a16, 0x1000C8052888210);
  }

  if (a19)
  {
    MEMORY[0x223DF1D00](a19, 0x1000C8052888210);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NArray<NArray<float>>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

unsigned int *AccelMelFilter::setFilters(unsigned int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    v7 = result;
    v8 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v66 = _Q0;
    while (1)
    {
      v12 = v8 + 1;
      v13 = *(*(a2 + 8) + 4 * (v8 + 1));
      v14 = *(*(a3 + 8) + 4 * (v8 + 1));
      v15 = *(*(a4 + 8) + 4 * (v8 + 1));
      v16 = rintf(v13);
      v17 = rintf(v14);
      v18 = rintf(v15);
      v19 = v16 & ~(v16 >> 31);
      v20 = v7[1] - 1;
      if (v20 >= v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = v20;
      }

      if (v19 > v17 || v21 < v17)
      {
        Error::chuck("AccelMelFilter::setFilters() - point locations out of order %d %d %d", a2, v16 & ~(v16 >> 31), v17, v21);
      }

      *(*(v7 + 3) + 4 * v8) = v19;
      v23 = *(v7 + 6) + 24 * v8;
      v67 = v21 - v19 + 1;
      result = (*(*v23 + 32))(v23, &v67);
      v26 = v17;
      v27 = *(*(v7 + 3) + 4 * v8);
      LODWORD(v28) = v17 - v16;
      v29 = (v27 - v16);
      v30 = v14 > v17;
      if (v14 <= v17)
      {
        v28 = v28;
      }

      else
      {
        v28 = (v28 + 1);
      }

      v31.i64[0] = 0x400000004;
      v31.i64[1] = 0x400000004;
      v32.i64[0] = 0x800000008;
      v32.i64[1] = 0x800000008;
      if (v29 >= v28)
      {
        goto LABEL_24;
      }

      *v24.i32 = v14 - v13;
      *v25.i32 = v16 - v13;
      v33 = *(*(v7 + 6) + 24 * v8 + 8);
      v34 = v28 - v29;
      v35 = (v27 - v16);
      if ((v28 - v29) < 8)
      {
        goto LABEL_20;
      }

      v36 = v34 & 0xFFFFFFFFFFFFFFF8;
      v37 = vaddq_s32(vdupq_n_s32(v29), xmmword_223B13270);
      v38 = vdupq_lane_s32(v25, 0);
      v39 = vdupq_lane_s32(v24, 0);
      v40 = v33 + 1;
      v41 = v34 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v42 = vdivq_f32(vaddq_f32(v38, vcvtq_f32_u32(v37)), v39);
        v43 = vdivq_f32(vaddq_f32(v38, vcvtq_f32_u32(vaddq_s32(v37, v31))), v39);
        v40[-1] = vbicq_s8(v42, vcltzq_f32(v42));
        *v40 = vbicq_s8(v43, vcltzq_f32(v43));
        v37 = vaddq_s32(v37, v32);
        v40 += 2;
        v41 -= 8;
      }

      while (v41);
      if (v34 != v36)
      {
        break;
      }

LABEL_24:
      v46 = (v21 - v17 + 1);
      if (v46 > v30)
      {
        *v24.i32 = v15 - v14;
        *v25.i32 = v14 - v26;
        v47 = v14 > v26;
        v48 = *(*(v7 + 6) + 24 * v8 + 8);
        v49 = v46 - v47;
        v50 = ~v47 + v46;
        _CF = (v46 - v47) >= 8 && v27 + ~(v30 + v17) >= v50;
        v52 = HIDWORD(v50);
        if (!_CF || v52 != 0)
        {
          goto LABEL_32;
        }

        v57 = v49 & 0xFFFFFFF8;
        v58 = vaddq_s32(vdupq_n_s32(v30), xmmword_223B13270);
        v59 = vdupq_lane_s32(v25, 0);
        v60 = vdupq_lane_s32(v24, 0);
        v61 = v30 + v17 - v27;
        v62 = v57;
        do
        {
          v63 = vaddq_f32(vdivq_f32(vsubq_f32(v59, vcvtq_f32_u32(v58)), v60), v66);
          v64 = vaddq_f32(vdivq_f32(vsubq_f32(v59, vcvtq_f32_u32(vaddq_s32(v58, v31))), v60), v66);
          v65 = (v48 + 4 * v61);
          *v65 = vbicq_s8(v63, vcltzq_f32(v63));
          v65[1] = vbicq_s8(v64, vcltzq_f32(v64));
          v58 = vaddq_s32(v58, v32);
          v61 += 8;
          v62 -= 8;
        }

        while (v62);
        if (v49 != v57)
        {
          v47 |= v57;
LABEL_32:
          v54 = v46 - v47;
          v55 = v17 + v47 - v27;
          do
          {
            v56 = ((*v25.i32 - v47) / *v24.i32) + 1.0;
            if (v56 < 0.0)
            {
              v56 = 0.0;
            }

            *(v48 + 4 * v55++) = v56;
            LODWORD(v47) = v47 + 1;
            --v54;
          }

          while (v54);
        }
      }

      ++v8;
      if (v12 >= *v7)
      {
        return result;
      }
    }

    v35 = v36 + v29;
LABEL_20:
    v44 = &v33->i8[-4 * v29];
    do
    {
      v45 = (*v25.i32 + v35) / *v24.i32;
      if (v45 < 0.0)
      {
        v45 = 0.0;
      }

      *&v44[4 * v35++] = v45;
    }

    while (v28 != v35);
    goto LABEL_24;
  }

  return result;
}

uint64_t AccelWin2MFCC::initData(void **this)
{
  free(this[36]);
  this[36] = 0;
  this[37] = 0;
  result = malloc_type_posix_memalign(this + 36, 0x10uLL, 4 * *(this + 86), 0x100004052888210uLL);
  if (result)
  {
    Error::chuck("AccelWin2MFCC::initData - posix_memalign returned an error", v3);
  }

  this[37] = this[36] + ((2 * *(this + 86)) & 0x1FFFFFFFCLL);
  v4 = *(this + 98);
  if (*(this + 80) != v4)
  {
    *(this + 80) = v4;
    operator new[]();
  }

  return result;
}

uint64_t NLinkedList<NMap<NString,NConfigSection>::HashItem>::deleteElement(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void NLinkedList<NMap<NString,NConfigSection>::HashItem>::NElement::~NElement(void *a1)
{
  NLinkedList<NMap<NString,NConfigSection>::HashItem>::NElement::~NElement(a1);

  JUMPOUT(0x223DF1D20);
}

uint64_t NLinkedList<NMap<NString,NString>::HashItem>::deleteElement(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void *NLinkedList<NMap<NString,NConfigSection>::HashItem>::NElement::~NElement(void *a1)
{
  *a1 = &unk_28370A010;
  a1[8] = &unk_28370A040;
  a1[9] = &unk_28370A0D0;
  v2 = a1[10];
  if (v2)
  {
    v3 = *(v2 - 8);
    if (v3)
    {
      v4 = v2 + 32 * v3;
      do
      {
        v5 = v4 - 32;
        for (*(v4 - 32) = &unk_28370A108; ; (*(*(v4 - 32) + 72))(v4 - 32))
        {
          v6 = *(v4 - 24);
          if (!v6)
          {
            break;
          }

          *(v4 - 24) = *(v6 + 8);
        }

        *(v4 - 16) = 0;
        *(v4 - 8) = 0;
        v4 -= 32;
      }

      while (v5 != v2);
    }

    MEMORY[0x223DF1D00](v2 - 16, 0x10A1C80F4A7E088);
  }

  a1[5] = &unk_28370A720;
  v7 = a1[7];
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8077774924);
  }

  a1[2] = &unk_28370A720;
  v8 = a1[4];
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, 0x1000C8077774924);
  }

  return a1;
}

void NLinkedList<NMap<NString,NString>::HashItem>::NElement::~NElement(void *a1)
{
  *a1 = &unk_28370A178;
  a1[5] = &unk_28370A720;
  v2 = a1[7];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8077774924);
  }

  a1[2] = &unk_28370A720;
  v3 = a1[4];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8077774924);
  }

  JUMPOUT(0x223DF1D20);
}

void BlobBuilder::buildDetectConfig(BlobBuilder *this, const NConfigSection *a2, const NConfigSection *a3, const NConfigSection *a4)
{
  v4 = &unk_28370A720;
  v5 = 11;
  operator new[]();
}

void sub_223A4DAC0(_Unwind_Exception *a1)
{
  *(v4 - 176) = v2;
  v6 = *(v1 + 8);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, v3);
  }

  NArray<NString>::~NArray((v4 - 152));
  NArray<NString>::~NArray((v4 - 128));
  _Unwind_Resume(a1);
}

void NPhoneHMMArray::operator()(uint64_t a1)
{
  if (!*(a1 + 52))
  {
    NHash<NMap<NString,unsigned int>::HashItem>::resize(a1 + 32, *(a1 + 16), 0);
    if (*(a1 + 16))
    {
      NMap<NString,unsigned int>::operator[](a1 + 24, *(a1 + 8) + 24);
    }
  }

  operator new[]();
}

void sub_223A4E268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NHash<NMap<NString,unsigned int>::HashItem>::resize(uint64_t result, unsigned int a2, char a3)
{
  if (*(result + 20) != a2)
  {
    v3 = result;
    v32 = 0;
    v30 = &unk_2837089D0;
    v31 = 0;
    if (a2 - 1 >= 2 && (a3 & 1) == 0)
    {
      v4 = a2 | 1;
      if ((a2 & 0xFFFFFFFE) >= 3)
      {
        while (v4 >= 9)
        {
          v23 = 5;
          while (v4 % (v23 - 2))
          {
            v24 = v23 * v23;
            v23 += 2;
            if (v24 > v4)
            {
              goto LABEL_5;
            }
          }

          a2 = v4 + 2;
          v25 = v4 + 1;
          v4 += 2;
          if (v25 < 3)
          {
            goto LABEL_6;
          }
        }
      }

LABEL_5:
      a2 = v4;
    }

LABEL_6:
    LODWORD(v33) = a2;
    result = NArray<NLinkedList<NMap<NString,unsigned int>::HashItem>>::resize(&v30, &v33);
    HIDWORD(v33) = 0;
    v26 = &unk_283708A68;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v6 = *(v3 + 20);
    if (v6)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = *(v3 + 8);
        if (!v8)
        {
          Error::chuck("NLinkedList::NIterator::start List not set", v5);
        }

        v9 = *(v8 + 32 * i + 8);
        if (v9)
        {
          do
          {
            result = v26[8](&v26, v9 + 16);
            if (v27)
            {
              v10 = (v28 + 8);
            }

            else
            {
              v10 = &v28;
            }

            if (v27)
            {
              v11 = 2;
            }

            else
            {
              v11 = 1;
            }

            *v10 = result;
            (&v26)[v11] = result;
            ++v29;
            v9 = *(v9 + 8);
          }

          while (v9);
          v6 = *(v3 + 20);
        }
      }

      for (j = v27; j; j = *(j + 8))
      {
        if (!v33)
        {
          Error::chuck("NHash::insert() - zero length hash table", v5);
        }

        v13 = *(j + 24);
        if (v13)
        {
          v14 = 0;
          v15 = *(j + 32);
          do
          {
            v16 = *v15++;
            v14 = v16 + 65599 * v14;
            --v13;
          }

          while (v13);
        }

        else
        {
          v14 = 0;
        }

        result = (*(*(v31 + 32 * (v14 % v33)) + 32))(v31 + 32 * (v14 % v33), j + 16);
        ++HIDWORD(v33);
      }
    }

    if (&v30 != v3)
    {
      *(v3 + 20) = v33;
      result = NArray<NLinkedList<NMap<NString,unsigned int>::HashItem>>::operator=(v3, &v30);
    }

    v26 = &unk_283708A68;
    for (k = v27; v27; k = v27)
    {
      v27 = *(k + 8);
      result = (v26[9])(&v26);
    }

    v30 = &unk_283708A30;
    v18 = v31;
    if (v31)
    {
      v19 = *(v31 - 8);
      if (v19)
      {
        v20 = v31 + 32 * v19;
        do
        {
          v21 = v20 - 32;
          for (*(v20 - 32) = &unk_283708A68; ; (*(*(v20 - 32) + 72))(v20 - 32))
          {
            v22 = *(v20 - 24);
            if (!v22)
            {
              break;
            }

            *(v20 - 24) = *(v22 + 8);
          }

          *(v20 - 16) = 0;
          *(v20 - 8) = 0;
          v20 -= 32;
        }

        while (v21 != v18);
      }

      return MEMORY[0x223DF1D00](v18 - 16, 0x10A1C80F4A7E088);
    }
  }

  return result;
}

void sub_223A4E620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  NLinkedList<NMap<NString,unsigned int>::HashItem>::~NLinkedList(&a9);
  NHash<NMap<NString,unsigned int>::HashItem>::~NHash(&a13);
  _Unwind_Resume(a1);
}

uint64_t NArray<NLinkedList<NMap<NString,unsigned int>::HashItem>>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t NArray<NLinkedList<NMap<NString,unsigned int>::HashItem>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 16);
    v5 = *(a2 + 16);
    if (v4 != v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        v7 = *(v6 - 8);
        if (v7)
        {
          v8 = v6 + 32 * v7;
          do
          {
            v9 = v8 - 32;
            for (*(v8 - 32) = &unk_283708A68; ; (*(*(v8 - 32) + 72))(v8 - 32))
            {
              v10 = *(v8 - 24);
              if (!v10)
              {
                break;
              }

              *(v8 - 24) = *(v10 + 8);
            }

            *(v8 - 16) = 0;
            *(v8 - 8) = 0;
            v8 -= 32;
          }

          while (v9 != v6);
        }

        MEMORY[0x223DF1D00](v6 - 16, 0x10A1C80F4A7E088);
        v5 = *(a2 + 16);
      }

      *(a1 + 16) = v5;
      operator new[]();
    }

    if (v4)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        (*(*(*(a1 + 8) + v11) + 24))(*(a1 + 8) + v11, *(a2 + 8) + v11);
        ++v12;
        v11 += 32;
      }

      while (v12 < *(a1 + 16));
    }
  }

  return a1;
}

uint64_t NLinkedList<NMap<NString,unsigned int>::HashItem>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    (*(*a1 + 56))(a1);
    for (i = *(a2 + 8); i; i = *(i + 8))
    {
      (*(*a1 + 40))(a1, i + 16);
    }
  }

  return a1;
}

uint64_t NLinkedList<NMap<NString,unsigned int>::HashItem>::reset(uint64_t result)
{
  v1 = result;
  for (i = *(result + 8); i; i = *(v1 + 8))
  {
    *(v1 + 8) = *(i + 8);
    result = (*(*v1 + 72))(v1);
  }

  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  return result;
}

void NMap<NString,unsigned int>::operator[](uint64_t a1, uint64_t a2)
{
  v2 = &unk_28370A720;
  LODWORD(__n) = *(a2 + 8);
  operator new[]();
}

void sub_223A4ED34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    MEMORY[0x223DF1D00](a11, v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NLinkedList<NMap<NString,unsigned int>::HashItem>::prepend(uint64_t a1)
{
  result = (*(*a1 + 64))(a1);
  v3 = *(a1 + 8);
  if (v3)
  {
    *(result + 8) = v3;
  }

  else
  {
    *(a1 + 16) = result;
  }

  *(a1 + 8) = result;
  ++*(a1 + 24);
  return result;
}

void *NString::split(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v5 = *(a1 + 16);
  v6 = *(a3 + 16);
  v7 = *(a3 + 8);
  v30 = 0;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = v10;
      v12 = memchr(v6, *v5, v7);
      v10 = v12 != 0;
      if (v11 && !v12)
      {
        v30 = ++v9;
      }

      ++v5;
      --v8;
    }

    while (v8);
    v13 = v9 - 1;
  }

  else
  {
    v13 = -1;
  }

  if (v13 > *a4)
  {
    v30 = *a4 + 1;
  }

  result = (*(*a2 + 32))(a2, &v30);
  v29 = 0;
  v15 = *(a1 + 8);
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = *(a1 + 16);
    v26 = a4;
    do
    {
      v20 = *a4;
      if (v17 > *a4)
      {
        return result;
      }

      if (v16 < v15)
      {
        while (1)
        {
          result = memchr(v6, *v18, v7);
          if (!result)
          {
            break;
          }

          ++v18;
          if (v15 == ++v16)
          {
            v29 = 0;
            v21 = 1;
            v22 = v18;
            v16 = v15;
            if (v17 == v20)
            {
              goto LABEL_13;
            }

            goto LABEL_31;
          }
        }
      }

      v22 = v18;
      v29 = 0;
      v23 = v15 - v16;
      if (v15 <= v16)
      {
        v21 = 1;
        if (v17 == v20)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v24 = 0;
        while (1)
        {
          result = memchr(v6, v18[v24], v7);
          if (result)
          {
            break;
          }

          v29 = ++v24;
          if (!(v16 - v15 + v24))
          {
            v18 += v24;
            goto LABEL_30;
          }
        }

        v15 = v16 + v24;
        v18 += v24;
        v23 = v24;
LABEL_30:
        v21 = v23 == 0;
        v16 = v15;
        a4 = v26;
        if (v17 == v20)
        {
LABEL_13:
          v19 = a2[1] + 24 * v17;
          result = (*(*v19 + 40))(v19, v22);
          goto LABEL_14;
        }
      }

LABEL_31:
      if (v21)
      {
        goto LABEL_15;
      }

      v25 = a2[1] + 24 * v17;
      result = (*(*v25 + 64))(v25, v22, &v29);
LABEL_14:
      ++v17;
LABEL_15:
      v15 = *(a1 + 8);
    }

    while (v16 < v15);
  }

  return result;
}

uint64_t NArray<NString>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

uint64_t BlobBuilder::buildConfgHeader(uint64_t this, int a2)
{
  *this = 0xA3176424F4C4243;
  if (a2)
  {
    v2 = 64;
  }

  else
  {
    v2 = 48;
  }

  *(this + 8) = 2;
  *(this + 12) = v2;
  v3 = v2 | 0x80;
  *(this + 16) = v2 + 48;
  *(this + 20) = v2 | 0x80;
  v4 = v2 + 144;
  if (*(this + 252))
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = *(this + 344);
  *(this + 24) = v5;
  *(this + 28) = v6;
  v7 = ((v6 + 15) & 0xFFFFFFF0) + v5;
  *(this + 32) = v7;
  v8 = *(this + 176);
  if (!v8)
  {
    v14 = 4;
    *(this + 36) = 4;
    goto LABEL_41;
  }

  v9 = *(this + 68);
  v10 = *(this + 168);
  v11 = *(this + 280);
  if (v9 >= -1)
  {
    if (v8 == 1)
    {
      v15 = 0;
      v13 = 4;
    }

    else
    {
      v23 = 0;
      v15 = v8 & 0xFFFFFFFE;
      v24 = (v10 + 4);
      v25 = 4;
      v26 = v15;
      do
      {
        v25 += 8 * *(v11 + 48 * *(v24 - 1) + 16) + 4;
        v23 += 8 * *(v11 + 48 * *v24 + 16) + 4;
        v24 += 2;
        v26 -= 2;
      }

      while (v26);
      v13 = v23 + v25;
      if (v15 == v8)
      {
        goto LABEL_25;
      }
    }

    v27 = v8 - v15;
    v28 = (v10 + 4 * v15);
    do
    {
      v29 = *v28++;
      v13 += 8 * *(v11 + 48 * v29 + 16) + 4;
      --v27;
    }

    while (v27);
    goto LABEL_25;
  }

  if (v8 == 1)
  {
    v12 = 0;
    v13 = 4;
LABEL_17:
    v20 = v8 - v12;
    v21 = (v10 + 4 * v12);
    do
    {
      v22 = *v21++;
      v13 += 8 * *(v11 + 48 * v22 + 16) + 12;
      --v20;
    }

    while (v20);
    goto LABEL_25;
  }

  v16 = 0;
  v12 = v8 & 0xFFFFFFFE;
  v17 = (v10 + 4);
  v18 = 4;
  v19 = v12;
  do
  {
    v18 += 8 * *(v11 + 48 * *(v17 - 1) + 16) + 12;
    v16 += 8 * *(v11 + 48 * *v17 + 16) + 12;
    v17 += 2;
    v19 -= 2;
  }

  while (v19);
  v13 = v16 + v18;
  if (v12 != v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  *(this + 36) = v13;
  if (v9 >= -1)
  {
    if (v8 == 1)
    {
      v31 = 0;
      v14 = 4;
    }

    else
    {
      v39 = 0;
      v31 = v8 & 0xFFFFFFFE;
      v40 = (v10 + 4);
      v41 = 4;
      v42 = v31;
      do
      {
        v41 += 8 * *(v11 + 48 * *(v40 - 1) + 16) + 4;
        v39 += 8 * *(v11 + 48 * *v40 + 16) + 4;
        v40 += 2;
        v42 -= 2;
      }

      while (v42);
      v14 = v39 + v41;
      if (v31 == v8)
      {
        goto LABEL_41;
      }
    }

    v43 = v8 - v31;
    v44 = (v10 + 4 * v31);
    do
    {
      v45 = *v44++;
      v14 += 8 * *(v11 + 48 * v45 + 16) + 4;
      --v43;
    }

    while (v43);
    goto LABEL_41;
  }

  if (v8 == 1)
  {
    v30 = 0;
    v14 = 4;
LABEL_33:
    v36 = v8 - v30;
    v37 = (v10 + 4 * v30);
    do
    {
      v38 = *v37++;
      v14 += 8 * *(v11 + 48 * v38 + 16) + 12;
      --v36;
    }

    while (v36);
    goto LABEL_41;
  }

  v32 = 0;
  v30 = v8 & 0xFFFFFFFE;
  v33 = (v10 + 4);
  v34 = 4;
  v35 = v30;
  do
  {
    v34 += 8 * *(v11 + 48 * *(v33 - 1) + 16) + 12;
    v32 += 8 * *(v11 + 48 * *v33 + 16) + 12;
    v33 += 2;
    v35 -= 2;
  }

  while (v35);
  v14 = v32 + v34;
  if (v30 != v8)
  {
    goto LABEL_33;
  }

LABEL_41:
  v46 = ((v14 + 15) & 0xFFFFFFF0) + v7;
  *(this + 40) = v46;
  *(this + 44) = 40960 - v46;
  return this;
}

void BlobBuilder::serializeDetectConfig(BlobBuilder *this, N16ByteAlignedString *a2)
{
  LODWORD(v2) = 44;
  (*(*a2 + 72))(a2, this + 64, &v2);
  v2 = &unk_283706E68;
  operator new[]();
}

void sub_223A4F7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void BlobBuilder::serializeAcAnalConfig(BlobBuilder *this, N16ByteAlignedString *a2)
{
  LODWORD(v2) = 68;
  (*(*a2 + 72))(a2, this + 184, &v2);
  v2 = &unk_283706E68;
  operator new[]();
}

void sub_223A4F8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BlobBuilder::serializeDistBlob(BlobBuilder *this, N16ByteAlignedString *a2)
{
  v4 = *(this + 44);
  LODWORD(v7) = *(this + 86);
  (*(*a2 + 72))(a2, v4, &v7);
  v5 = *(this + 86);
  result = (v5 + 15) & 0xFFFFFFF0;
  if (result != v5)
  {
    v7 = &unk_283706E68;
    operator new[]();
  }

  return result;
}

void sub_223A4FA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BlobBuilder::serializeHmmArray(BlobBuilder *this, N16ByteAlignedString *a2)
{
  v4 = *(a2 + 2);
  v15 = *(this + 44);
  LODWORD(v16) = 4;
  (*(*a2 + 72))(a2, &v15, &v16);
  if (v15)
  {
    for (i = 0; i < v15; ++i)
    {
      if (*(this + 17) <= -2)
      {
        v17 = 0;
        if (i < *(this + 32))
        {
          v17 = *(*(this + 15) + 4 * i);
        }

        LODWORD(v16) = 4;
        (*(*a2 + 72))(a2, &v17, &v16);
        v17 = 0;
        if (i < *(this + 38))
        {
          v17 = *(*(this + 18) + 4 * i);
        }

        LODWORD(v16) = 4;
        (*(*a2 + 72))(a2, &v17, &v16);
      }

      v6 = *(this + 35) + 48 * *(*(this + 21) + 4 * i);
      v17 = *(v6 + 16);
      LODWORD(v16) = 4;
      (*(*a2 + 72))(a2, &v17, &v16);
      if (v17)
      {
        v7 = 0;
        for (j = 0; j < v17; ++j)
        {
          v9 = (*(v6 + 8) + v7);
          v14 = *v9;
          v10 = 1.0 / (1.0 - v9[1]);
          v13 = v10;
          LODWORD(v16) = 4;
          (*(*a2 + 72))(a2, &v14, &v16);
          LODWORD(v16) = 4;
          (*(*a2 + 72))(a2, &v13, &v16);
          v7 += 8;
        }
      }
    }
  }

  v11 = *(a2 + 2) - v4;
  if (((v11 + 15) & 0xFFFFFFF0) != v11)
  {
    v16 = &unk_283706E68;
    operator new[]();
  }

  return (v11 + 15) & 0xFFFFFFF0;
}

void sub_223A4FD70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x223DF1D00](a12, v12);
  }

  _Unwind_Resume(exception_object);
}

void BlobBuilder::serializeHeap(BlobBuilder *this, N16ByteAlignedString *a2)
{
  if (40960 - *(a2 + 2) > 0)
  {
    operator new[]();
  }

  Error::chuck("BlobBuilder: Cannot allocate heap", a2);
}

void sub_223A4FE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MEMORY[0x223DF1D00](a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void BlobBuilder::~BlobBuilder(BlobBuilder *this)
{
  *(this + 163) = off_28370A538;
  v2 = *(this + 164);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
  }

  *(this + 160) = off_28370A538;
  v3 = *(this + 161);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  AccelWin2MFCC::~AccelWin2MFCC(this + 105);
  *(this + 101) = off_28370A538;
  v4 = *(this + 102);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  *(this + 98) = off_28370A538;
  v5 = *(this + 99);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }

  *(this + 95) = off_28370A538;
  v6 = *(this + 96);
  if (v6)
  {
    MEMORY[0x223DF1D00](v6, 0x1000C8052888210);
  }

  NDeepnetDistribution::~NDeepnetDistribution((this + 368));
  *(this + 42) = &unk_283709C80;
  free(*(this + 44));
  *(this + 44) = 0;
  *(this + 42) = &unk_28370A720;
  NPhoneHMMArray::~NPhoneHMMArray((this + 272));
  *(this + 20) = &unk_283708F80;
  v7 = *(this + 21);
  if (v7)
  {
    MEMORY[0x223DF1D00](v7, 0x1000C8052888210);
  }

  *(this + 17) = off_28370A538;
  v8 = *(this + 18);
  if (v8)
  {
    MEMORY[0x223DF1D00](v8, 0x1000C8052888210);
  }

  *(this + 14) = off_28370A538;
  v9 = *(this + 15);
  if (v9)
  {
    MEMORY[0x223DF1D00](v9, 0x1000C8052888210);
  }
}

void AccelWin2MFCC::~AccelWin2MFCC(void **this)
{
  free(this[36]);
  this[38] = off_28370A538;
  v2 = this[39];
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
  }

  this[33] = off_28370A538;
  v3 = this[34];
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  this[29] = &unk_2837073D8;
  v4 = this[30];
  if (v4)
  {
    v5 = (v4 - 2);
    v6 = *(v4 - 1);
    if (v6)
    {
      v7 = &v4[3 * v6 - 3];
      v8 = -24 * v6;
      v9 = v7;
      do
      {
        *v9 = off_28370A538;
        v10 = v9[1];
        if (v10)
        {
          MEMORY[0x223DF1D00](v10, 0x1000C8052888210);
        }

        v9 -= 3;
        v7 -= 24;
        v8 += 24;
      }

      while (v8);
    }

    MEMORY[0x223DF1D00](v5, 0x1081C80622C3295);
  }

  this[22] = off_28370A538;
  v11 = this[23];
  if (v11)
  {
    MEMORY[0x223DF1D00](v11, 0x1000C8052888210);
  }

  this[19] = &unk_2837073D8;
  v12 = this[20];
  if (v12)
  {
    v13 = (v12 - 2);
    v14 = *(v12 - 1);
    if (v14)
    {
      v15 = &v12[3 * v14 - 3];
      v16 = -24 * v14;
      v17 = v15;
      do
      {
        *v17 = off_28370A538;
        v18 = v17[1];
        if (v18)
        {
          MEMORY[0x223DF1D00](v18, 0x1000C8052888210);
        }

        v17 -= 3;
        v15 -= 24;
        v16 += 24;
      }

      while (v16);
    }

    MEMORY[0x223DF1D00](v13, 0x1081C80622C3295);
  }

  this[16] = off_283709B60;
  v19 = this[17];
  if (v19)
  {
    MEMORY[0x223DF1D00](v19, 0x1000C8052888210);
  }

  v20 = this[6];
  if (v20)
  {
    vDSP_DFT_DestroySetup(v20);
  }

  this[9] = off_28370A538;
  v21 = this[10];
  if (v21)
  {
    MEMORY[0x223DF1D00](v21, 0x1000C8052888210);
  }

  this[2] = off_28370A538;
  v22 = this[3];
  if (v22)
  {
    MEMORY[0x223DF1D00](v22, 0x1000C8052888210);
  }
}

void NDeepnetDistribution::~NDeepnetDistribution(NDeepnetDistribution *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_283707738;
  *(this + 6) = 0;
  v14 = 0;
  NArray<NLayer>::resize(this + 32, &v14);
  v2 = *(this + 7);
  v15 = 0;
  (*(v2 + 64))(this + 56, "", &v15);
  *(this + 24) = 0;
  *(this + 13) = 0;
  v3 = *(this + 36);
  if (v3)
  {
    munmap(*(this + 19), v3);
  }

  *(this + 36) = 0;
  *(this + 19) = 0;
  v16 = 0;
  (*(*(this + 14) + 64))(this + 112, "", &v16);
  *(this + 43) = &unk_283709188;
  v4 = *(this + 44);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C80BDFB0063);
  }

  *(this + 38) = &unk_283709188;
  v5 = *(this + 39);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C80BDFB0063);
  }

  NFixedPointScales::~NFixedPointScales((this + 160));
  NLoadedMemory::~NLoadedMemory((this + 88));
  *(this + 7) = &unk_283709C80;
  free(*(this + 9));
  *(this + 9) = 0;
  *(this + 7) = &unk_28370A720;
  v6 = *(this + 5);
  *(this + 4) = &unk_283708500;
  if (v6)
  {
    v7 = v6 - 16;
    v8 = *(v6 - 8);
    if (v8)
    {
      v9 = 16 * v8;
      v10 = v6 + v9;
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
  }
}

{
  NDeepnetDistribution::~NDeepnetDistribution(this);

  JUMPOUT(0x223DF1D20);
}

void NLoadedMemory::~NLoadedMemory(NLoadedMemory *this)
{
  *this = &unk_28370AA10;
  *(this + 2) = 0;
  *(this + 2) = 0;
  v2 = *(this + 14);
  if (v2)
  {
    munmap(*(this + 8), v2);
  }

  *(this + 14) = 0;
  *(this + 8) = 0;
  v3 = *(this + 3);
  v4 = 0;
  (*(v3 + 64))(this + 24, "", &v4);
  *(this + 3) = &unk_283709C80;
  free(*(this + 5));
  *(this + 5) = 0;
  *(this + 3) = &unk_28370A720;
}

{
  *this = &unk_28370AA10;
  *(this + 2) = 0;
  *(this + 2) = 0;
  v2 = *(this + 14);
  if (v2)
  {
    munmap(*(this + 8), v2);
  }

  *(this + 14) = 0;
  *(this + 8) = 0;
  v3 = *(this + 3);
  v4 = 0;
  (*(v3 + 64))(this + 24, "", &v4);
  *(this + 3) = &unk_283709C80;
  free(*(this + 5));
  *(this + 5) = 0;
  *(this + 3) = &unk_28370A720;

  JUMPOUT(0x223DF1D20);
}

{
  *this = &unk_28370AA10;
  *(this + 2) = 0;
  *(this + 2) = 0;
  v2 = *(this + 14);
  if (v2)
  {
    munmap(*(this + 8), v2);
  }

  *(this + 14) = 0;
  *(this + 8) = 0;
  v3 = *(this + 3);
  v4 = 0;
  (*(v3 + 64))(this + 24, "", &v4);
  *(this + 3) = &unk_283709C80;
  free(*(this + 5));
  *(this + 5) = 0;
  *(this + 3) = &unk_28370A720;
}

void NFixedPointScales::~NFixedPointScales(NFixedPointScales *this)
{
  *this = &unk_2837086B0;
  *(this + 12) = off_28370A538;
  v2 = *(this + 13);
  if (v2)
  {
    MEMORY[0x223DF1D00](v2, 0x1000C8052888210);
  }

  *(this + 9) = off_28370A538;
  v3 = *(this + 10);
  if (v3)
  {
    MEMORY[0x223DF1D00](v3, 0x1000C8052888210);
  }

  *(this + 6) = off_28370A538;
  v4 = *(this + 7);
  if (v4)
  {
    MEMORY[0x223DF1D00](v4, 0x1000C8052888210);
  }

  *(this + 2) = &unk_283708F80;
  v5 = *(this + 3);
  if (v5)
  {
    MEMORY[0x223DF1D00](v5, 0x1000C8052888210);
  }
}

{
  NFixedPointScales::~NFixedPointScales(this);

  JUMPOUT(0x223DF1D20);
}

uint64_t NLinkedList<NMap<NString,unsigned int>::HashItem>::deleteElement(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

void NPhoneHMMArray::~NPhoneHMMArray(NPhoneHMMArray *this)
{
  *this = &unk_283708908;
  *(this + 3) = &unk_2837089B0;
  *(this + 4) = &unk_283708A30;
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *(v2 - 8);
    if (v3)
    {
      v4 = v2 + 32 * v3;
      do
      {
        v5 = v4 - 32;
        for (*(v4 - 32) = &unk_283708A68; ; (*(*(v4 - 32) + 72))(v4 - 32))
        {
          v6 = *(v4 - 24);
          if (!v6)
          {
            break;
          }

          *(v4 - 24) = *(v6 + 8);
        }

        *(v4 - 16) = 0;
        *(v4 - 8) = 0;
        v4 -= 32;
      }

      while (v5 != v2);
    }

    MEMORY[0x223DF1D00](v2 - 16, 0x10A1C80F4A7E088);
  }

  *this = &unk_283708B08;
  v7 = *(this + 1);
  if (v7)
  {
    v8 = v7 - 16;
    v9 = *(v7 - 8);
    if (v9)
    {
      v10 = (v7 + 48 * v9 - 48);
      v11 = -48 * v9;
      v12 = v10;
      do
      {
        *v10 = &unk_283708B40;
        v10[3] = &unk_28370A720;
        v13 = v10[5];
        if (v13)
        {
          MEMORY[0x223DF1D00](v13, 0x1000C8077774924);
        }

        *v10 = off_283708BA0;
        v14 = v10[1];
        if (v14)
        {
          MEMORY[0x223DF1D00](v14 - 16, 0x1000C8000313F17);
        }

        v12 -= 6;
        v10 -= 6;
        v11 += 48;
      }

      while (v11);
    }

    MEMORY[0x223DF1D00](v8, 0x10B1C80FD921951);
  }
}

{
  NPhoneHMMArray::~NPhoneHMMArray(this);

  JUMPOUT(0x223DF1D20);
}

void NLinkedList<NMap<NString,unsigned int>::HashItem>::NElement::~NElement(void *a1)
{
  *a1 = &unk_283708AD8;
  a1[2] = &unk_28370A720;
  if (a1[4])
  {
    MEMORY[0x223DF1D00](a1[4], 0x1000C8077774924);
    v1 = vars8;
  }

  JUMPOUT(0x223DF1D20);
}

uint64_t NDBlobBuildBlob(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[7] = *MEMORY[0x277D85DE8];
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    if (a5)
    {
      v7[0] = 0;
      NConfig::NConfig(v9, v7);
      *v7 = &unk_28370A720;
      v8 = strlen(a1);
      operator new[]();
    }
  }

  return result;
}

void sub_223A50F2C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  N16ByteAlignedString::~N16ByteAlignedString(&a12);
  NConfig::~NConfig(&buf);
  if (a2 == 3)
  {
    v21 = __cxa_begin_catch(a1);
    v22 = VTLogContextFacilityVoiceTrigger;
    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      v27 = *(*v21 + 16);
      v28 = v22;
      v29 = v27(v21);
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v29;
      _os_log_error_impl(&dword_223A31000, v28, OS_LOG_TYPE_ERROR, "CorealisRT Blob build failed: %{public}s", &buf, 0xCu);
    }
  }

  else
  {
    v23 = __cxa_begin_catch(a1);
    v24 = VTLogContextFacilityVoiceTrigger;
    if (a2 == 2)
    {
      v25 = v23;
      v26 = VTLogContextFacilityVoiceTrigger;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v30 = v25[2];
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v30;
        _os_log_error_impl(&dword_223A31000, v26, OS_LOG_TYPE_ERROR, "CorealisRT Blob build failed: %{public}s", &buf, 0xCu);
      }

      __cxa_end_catch();
LABEL_14:
      JUMPOUT(0x223A50ED8);
    }

    if (os_log_type_enabled(VTLogContextFacilityVoiceTrigger, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_223A31000, v24, OS_LOG_TYPE_ERROR, "CorealisRT Blob build failed: Unknown throw", &buf, 2u);
    }
  }

  __cxa_end_catch();
  goto LABEL_14;
}

uint64_t nde_create(char *a1, unint64_t a2)
{
  result = 0;
  if (a2 >= 0x30 && a1 && ((gpNovDetect != 0) & ~gIsMultiInstance) == 0)
  {
    result = _nde_create(a1, a2);
    if ((gIsMultiInstance & 1) == 0)
    {
      gHasValidModel = result != 0;
    }
  }

  return result;
}

uint64_t _nde_create(char *a1, unint64_t a2)
{
  if (NMemPool::m_bLocked == 1)
  {
    v16 = 0;
    if (sanity_check_model(a1, a2, &v16))
    {
      v3 = &a1[*(a1 + 3)];
      if ((v3[40] & 1) == 0 || *(a1 + 5) + 12 <= *(a1 + 6))
      {
        v4 = *(a1 + 9);
        if (v4 >= 4)
        {
          v5 = &a1[*(a1 + 8)];
          v6 = (8 * (*(v3 + 1) < -1)) | 4;
          v7 = v5 + v4;
          v9 = v5 + 1;
          v8 = *v5;
          v10 = *v5 == 0;
          if (*v5)
          {
            v11 = v5 + v6 + 4 > v7;
          }

          else
          {
            v11 = 1;
          }

          if (v11)
          {
LABEL_11:
            if (v10)
            {
              v12 = *(a1 + 11);
              if (!(v12 >> 30))
              {
                NMemPool::m_pData = &a1[*(a1 + 10)];
                NMemPool::m_iSize = v12;
                NMemPool::m_iAlignBytes = 16;
                NMemPool::m_bLocked = 0;
                NMemPool::m_iPos = 0;
                bzero(NMemPool::m_pData, v12);
                operator new();
              }

              Error::chuck("NMemPool::init - pool size too large", v12);
            }
          }

          else
          {
            v14 = 1;
            while (1)
            {
              v13 = 2 * (*(v3 + 1) < -1);
              v9 = (v9 + 8 * v9[v13] + v13 * 4 + 4);
              if (v9 > v7)
              {
                break;
              }

              v10 = v14 >= v8;
              if (v14 < v8)
              {
                ++v14;
                if (v9 + v6 <= v7)
                {
                  continue;
                }
              }

              goto LABEL_11;
            }
          }
        }
      }
    }
  }

  return 0;
}

void sub_223A51AB8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  *(v1 + 3408) = 1;
  JUMPOUT(0x223A51A28);
}

BOOL sanity_check_model(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  if (*a1 != 1330397763 || *(a1 + 4) != 171013698)
  {
    return 0;
  }

  v3 = 0;
  if (a2 >> 30 || *(a1 + 8) != 2)
  {
    return v3;
  }

  v5 = *(a1 + 12);
  v4 = *(a1 + 16);
  v6 = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9.i32[0] = *(a1 + 12);
  v9.i32[1] = *(a1 + 20);
  v9.u64[1] = v7;
  v10 = vorrq_s8(v9, v8);
  *v10.i8 = vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL));
  v3 = (v10.i32[0] | v4 | v10.i32[1]) >> 30;
  if (v3)
  {
    return 0;
  }

  if (v7.i32[0] < v6)
  {
    return v3;
  }

  if (v5 + 44 > v4)
  {
    return v3;
  }

  if (v4 + 68 > v6)
  {
    return v3;
  }

  v11 = vadd_s32(vzip2_s32(*v8.i8, v7), vzip1_s32(*v8.i8, v7));
  v12.i32[0] = vextq_s8(v8, v8, 8uLL).u32[0];
  v12.i32[1] = *(a1 + 32);
  v13 = vcgt_u32(v11, v12);
  if ((v13.i8[4] & 1) != 0 || (v13.i8[0] & 1) != 0 || (v8.i32[3] + v8.i32[2]) > a2)
  {
    return v3;
  }

  v14 = 0;
  v15 = -2;
  if (v5 > a2 || a2 < 0x30)
  {
    v16 = 0;
    if (!a3)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v16 = 0;
  if (v11.u32[0] <= a2)
  {
    if (v5 >= 0x40 && *(a1 + 48) == 1919706177)
    {
      v15 = 0;
      v16 = *(a1 + 52);
      v17 = 52;
      v18 = 52;
LABEL_20:
      v19 = 0;
      v20 = 0;
      v21 = 67;
      v22 = 1;
      v23 = 1;
      while (1)
      {
        v23 += v21;
        v20 += v23;
        if (v19 <= 0xFFE && v22 < v17)
        {
          ++v19;
        }

        else
        {
          v23 %= 0xFFF1u;
          v20 %= 0xFFF1u;
          if (v22 >= v17)
          {
            goto LABEL_30;
          }

          v19 = 0;
        }

        v21 = *(a1 + v22++);
      }
    }

    v16 = 0;
    v15 = -1;
    if (v11.i32[0])
    {
      v17 = v11.u32[0];
      v18 = v11.i32[0];
      goto LABEL_20;
    }

    v23 = 1;
    v18 = 0;
    v20 = 0;
LABEL_30:
    if (v18 < v11.i32[0])
    {
      v20 = (v20 + 4 * v23) % 0xFFF1;
      v24 = v18 + 4;
      v25 = (v11.i32[0] - v24);
      if (v25)
      {
        v27 = 0;
        v28 = 0;
        v29 = a1 + v24;
        while (1)
        {
          while (1)
          {
            v23 += *(v29 + v28);
            v20 += v23;
            v30 = v28 + 1;
            if (v27 > 0xFFE || v30 >= v25)
            {
              break;
            }

            ++v27;
            ++v28;
          }

          v23 %= 0xFFF1u;
          v20 %= 0xFFF1u;
          if (v30 >= v25)
          {
            break;
          }

          v27 = 0;
          ++v28;
        }
      }
    }

    v14 = v23 | (v20 << 16);
  }

  if (a3)
  {
LABEL_34:
    *a3 = v14;
  }

LABEL_35:
  if (v15 == -1 || !v15 && v14 == v16)
  {
    return NDeepnetDistribution::verifyMemoryImage((a1 + *(a1 + 24)), (a1 + 28), a3) == 0;
  }

  return 0;
}

uint64_t NDeepnetDistribution::verifyMemoryImage(NDeepnetDistribution *this, const char *a2, const unsigned int *a3)
{
  if (!this)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a2;
  if (v3 < 0x34)
  {
    return 4294967294;
  }

  if (*this != 0x20624C4E4E442023 || *(this + 1) != 0xA0A0A30302E3176)
  {
    return 4294967293;
  }

  v7 = *(this + 4);
  v8 = *(this + 5);
  v10 = *(this + 6);
  v9 = *(this + 7);
  v11 = *(this + 8);
  v12 = *(this + 9);
  v13 = *(this + 10);
  v14 = *(this + 11);
  if ((v7 & 0xF) == 2)
  {
    v15 = (v7 & 0xFE00) != 0;
    v5 = 4294967291;
    if (v10)
    {
      return v5;
    }

    goto LABEL_16;
  }

  if (v7 != 1)
  {
    return 4294967292;
  }

  v15 = 0;
  v5 = 4294967291;
  if (v10)
  {
    return v5;
  }

LABEL_16:
  if (v15)
  {
    return v5;
  }

  if (!v12)
  {
    return 4294967290;
  }

  if (v12 > 0x4000000)
  {
    return 4294967289;
  }

  v16 = this + v3;
  v17 = this + *(this + 12) + (-*(this + 12) & 3u) + 52;
  if (v17 > v16)
  {
    return 4294967288;
  }

  if ((v10 & 0x20) != 0)
  {
    v17 += (4 * v14) + 4;
    if (v17 > v16)
    {
      return 4294967287;
    }
  }

  v18 = &v17[16 * v12];
  if (v18 > v16)
  {
    return 4294967286;
  }

  v19 = &v18[v8];
  if (v19 > v16)
  {
    return 4294967285;
  }

  if (v19 != v16)
  {
    return 4294967284;
  }

  v20 = 4 * v12;
  v21 = v17 + 12;
  do
  {
    v22 = *(v21 - 1);
    v23 = *v21 + v22;
    if (v23 > v8 || v23 < v22)
    {
      return 4294967283;
    }

    v21 += 4;
    --v12;
  }

  while (v12);
  v25 = *&v17[4 * (v20 - 3)];
  if (v14 * v13 == v9)
  {
    v26 = 0;
  }

  else
  {
    v26 = -15;
  }

  if (v25 == v11)
  {
    return v26;
  }

  else
  {
    return 4294967282;
  }
}

uint64_t NArray<NFrame>::resize(uint64_t result, _DWORD *a2)
{
  if (*(result + 16) != *a2)
  {
    *(result + 16) = *a2;
    operator new[]();
  }

  return result;
}

void IntNovDetectE::IntNovDetectE(IntNovDetectE *this)
{
  *(this + 8) = 0;
  *this = 2;
  *(this + 2) = off_28370A538;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 5) = off_28370A538;
  *(this + 6) = 0;
  *(this + 14) = 0;
  *(this + 8) = off_28370A538;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 96) = 0;
  *(this + 108) = 0;
  *(this + 14) = off_28370A538;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 18) = 0;
  *(this + 152) = 0;
  *(this + 21) = off_28370A538;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 196) = 0;
  *(this + 220) = 0;
  *(this + 28) = off_283709B60;
  *(this + 29) = 0;
  *(this + 60) = 0;
  *(this + 31) = &unk_2837073D8;
  *(this + 32) = 0;
  *(this + 66) = 0;
  *(this + 34) = off_28370A538;
  *(this + 35) = 0;
  *(this + 72) = 0;
  *(this + 300) = 0;
  *(this + 324) = 0;
  *(this + 41) = &unk_283707420;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 88) = 0;
  *(this + 45) = off_28370A538;
  *(this + 46) = 0;
  *(this + 94) = 0;
  *(this + 50) = off_28370A538;
  *(this + 51) = 0;
  *(this + 104) = 0;
  *(this + 24) = 0u;
  *(this + 67) = off_28370A538;
  *(this + 68) = 0;
  *(this + 138) = 0;
  *(this + 71) = 0;
  *(this + 144) = 0;
  *(this + 70) = &unk_28370A4D8;
  *(this + 584) = 0;
  *(this + 147) = 1203982336;
  *(this + 74) = 0x3F7851EC48742400;
  *(this + 150) = 257;
  *(this + 151) = 26;
  *(this + 38) = xmmword_223B13240;
  *(this + 78) = 0x160000000CLL;
  *(this + 632) = 1;
  *(this + 636) = 0x3F80000000000000;
  *(this + 633) = 0;
  *(this + 644) = 0;
  *(this + 81) = 0x200000002;
  *(this + 645) = 0;
  *(this + 647) = 0;
  *(this + 680) = 0u;
  *(this + 84) = &unk_28370A4D8;
  *(this + 696) = 0;
  *(this + 708) = 0;
  *(this + 700) = 0;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 93) = &unk_2837076F0;
  *(this + 94) = 0;
  *(this + 190) = 0;
  *(this + 776) = 0u;
  *(this + 96) = &unk_28370A4D8;
  *(this + 198) = 1065353048;
  *(this + 796) = 0;
  v2 = 1;
  NArray<NFrame>::resize(this + 744, &v2);
  *(this + 100) = &unk_283708728;
  *(this + 808) = 0u;
  *(this + 103) = &unk_283708758;
  *(this + 104) = 0;
  *(this + 210) = 0;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 876) = 0u;
  *(this + 904) = 0u;
  *(this + 112) = &unk_28370A4D8;
  *(this + 460) = 1;
  *(this + 58) = 0u;
  *(this + 59) = 0u;
  *(this + 120) = 0;
  *(this + 118) = &unk_28370A4D8;
  *(this + 121) = off_28370A538;
  *(this + 122) = 0;
  *(this + 246) = 0;
  *(this + 248) = -8388609;
  *(this + 253) = 0;
  *(this + 996) = 0u;
  *(this + 128) = 0;
  *(this + 258) = 0;
  *(this + 127) = &unk_28370A4D8;
  *(this + 65) = 0u;
  *(this + 66) = 0u;
  *(this + 268) = 0x10000;
  *(this + 1076) = 0x4974240049742400;
  *(this + 271) = 0;
  *(this + 136) = 0;
  *this = 0;
}

void sub_223A5270C(_Unwind_Exception *a1)
{
  *v5 = off_28370A538;
  if (*v6)
  {
    MEMORY[0x223DF1D00](*v6, 0x1000C8052888210);
  }

  NArray<NFrame>::~NArray(v2);
  *v3 = off_28370A538;
  if (*v4)
  {
    MEMORY[0x223DF1D00](*v4, 0x1000C8052888210);
  }

  NDEAcAnal::~NDEAcAnal(v1);
  _Unwind_Resume(a1);
}

uint64_t IntNovDetectE::init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 46) & 1) == 0)
  {
    NDEAcAnal::init(a1 + 8, a3, a2);
  }

  v6 = *(a3 + 47) & 1;
  v7 = *(a3 + 16);
  v8 = 10000000.0 / *a3;
  if (*(a1 + 688) != v7)
  {
    *(a1 + 688) = v7;
    operator new[]();
  }

  *(a1 + 700) = *(a3 + 52) * *(a3 + 48);
  *(a1 + 708) = v6;
  *(a1 + 704) = v8;
  *(a1 + 696) = 1;
  v17 = *(a1 + 688);
  *(a1 + 1073) = 1;
  v9 = (*a2 / v8) + 0.5;
  *(a1 + 1040) = v9;
  if ((v9 & 0x80000000) != 0)
  {
    Error::chuck("NovDetectE: unsupportable frame advance %u", a2, v9);
  }

  if (!v9)
  {
    *(a1 + 1040) = 1;
  }

  v10 = (a4 != 0) & *(a2 + 40);
  *(a1 + 1072) = v10;
  if (v10 != 1)
  {
LABEL_16:
    NDEHMMDetector::init(a1 + 800, a2, v8 * *(a2 + 12));
  }

  v11 = *(a4 + 4) + (*a4 >> 1);
  if (v11 < *a4)
  {
    v15 = 0;
    v16 = v11;
    NLocalCepNorm::configure((a1 + 712), a4, &v17, (a4 + 8), &v16, &v15);
    v12 = *(a1 + 624);
    if (*(a1 + 644))
    {
      v13 = 3;
    }

    else
    {
      v13 = 1;
    }

    if (*(a1 + 1032) != v13 * v12)
    {
      *(a1 + 1032) = v13 * v12;
      operator new[]();
    }

    goto LABEL_16;
  }

  return 0xFFFFFFFFLL;
}