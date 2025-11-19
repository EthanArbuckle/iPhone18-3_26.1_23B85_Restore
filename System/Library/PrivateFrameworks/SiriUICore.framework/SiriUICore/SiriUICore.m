void SUICLightPhysics_UpdatePhysics(uint64_t a1, float a2)
{
  v3 = ((a2 / *(a1 + 12)) + 0.5);
  if (*(a1 + 8) < v3)
  {
    v3 = *(a1 + 8);
  }

  if (v3 <= 1)
  {
    v3 = 1;
  }

  v4 = v3 - 1;
  do
  {
    v5 = v4;
    SUICLightPhysicsInternal_UpdatePhysicsTick(a1);
    if (*(a1 + 160))
    {
      break;
    }

    v4 = v5 - 1;
  }

  while (v5);

  SUICLightPhysicsInternal_FinalizeStateForFrame(a1);
}

void SUICLightPhysicsInternal_FinalizeStateForFrame(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1 + 288;
  v5 = a1 + 32;
  v18 = vdupq_n_s32(0x41490FDBu);
  v6 = vdup_n_s32(0x3F8CCCCDu);
  do
  {
    noise2();
    v20 = v7;
    noise2();
    v19 = v8;
    noise2();
    v9 = v20;
    v9.i32[1] = v19;
    v9.i32[2] = v10;
    v21 = vmulq_f32(v9, v18);
    v11 = __sincosf_stret(v21.f32[2]);
    v12 = __sincosf_stret(v21.f32[1]);
    v13 = __sincosf_stret(v21.f32[0]);
    v14 = (v11.__sinval * -(v13.__sinval * v12.__sinval)) + (v11.__cosval * v12.__cosval);
    v15.f32[0] = v14;
    v15.f32[1] = -(v13.__cosval * v11.__sinval);
    if (*(a1 + 232) != 1)
    {
      goto LABEL_10;
    }

    v15.f32[1] = -(v13.__cosval * v11.__sinval) * 0.5;
    if (v3 <= 2)
    {
      v16 = v14 * 0.5 + -0.375;
LABEL_8:
      v17 = v16;
      goto LABEL_9;
    }

    if (v3 < 7)
    {
      v16 = v14 * 0.5 + 0.375;
      goto LABEL_8;
    }

    v17 = 150.0;
LABEL_9:
    v15.f32[0] = v17;
LABEL_10:
    *(v4 + 8 * v3++) = vmul_f32(v15, v6);
    v2 += 3;
    v5 += 12;
  }

  while (v2 != 33);
}

float SUICLightPhysicsInternal_UpdatePhysicsTick(uint64_t a1)
{
  v1 = *(a1 + 20);
  v2 = *(a1 + 161);
  v3 = (v1 * v1) * 0.7 + 0.699999988;
  if (*(a1 + 161))
  {
    v3 = 0.7;
  }

  v4 = *(a1 + 168);
  v5 = (*(a1 + 180) * v3) + v4 * (1.0 - *(a1 + 180));
  v6 = v5 - v4;
  if (v6 != 0.0)
  {
    v7 = *(a1 + 172);
    v8 = *(a1 + 176);
    v9 = v6 - v7;
    if ((v6 - v7) <= v8)
    {
      if (v9 >= -v8)
      {
        v10 = v7 + v9;
      }

      else
      {
        v10 = v7 - v8;
      }
    }

    else
    {
      v10 = v7 + v8;
    }

    *(a1 + 172) = v10;
    if (v6 >= 0.0)
    {
      if (v10 <= v6)
      {
LABEL_14:
        v4 = v4 + v10;
        *(a1 + 168) = v4;
        goto LABEL_15;
      }
    }

    else if (v10 >= v6)
    {
      goto LABEL_14;
    }

    *(a1 + 172) = v6;
    v10 = v6;
    goto LABEL_14;
  }

LABEL_15:
  v12 = *(a1 + 184);
  v11 = *(a1 + 188);
  v13 = *(a1 + 196) + v12 * (1.0 - *(a1 + 196));
  v14 = v13 - v12;
  if (v14 != 0.0)
  {
    v15 = v14 - v11;
    v16 = *(a1 + 192);
    if ((v14 - v11) <= v16)
    {
      if (v15 >= -v16)
      {
        v11 = v11 + v15;
      }

      else
      {
        v11 = v11 - v16;
      }
    }

    else
    {
      v11 = v11 + v16;
    }

    *(a1 + 188) = v11;
    if (v14 >= 0.0)
    {
      if (v11 <= v14)
      {
LABEL_26:
        *(a1 + 184) = v12 + v11;
        goto LABEL_27;
      }
    }

    else if (v11 >= v14)
    {
      goto LABEL_26;
    }

    *(a1 + 188) = v14;
    v11 = v14;
    goto LABEL_26;
  }

LABEL_27:
  v17 = *(a1 + 12);
  v18 = v4 * 0.07;
  *(a1 + 276) = v18;
  if ((*(a1 + 160) & 1) == 0)
  {
    v19 = *(a1 + 212);
    v20 = (v1 * v19);
    v21 = *(a1 + 200);
    v22 = v20 + v21 * (1.0 - v19);
    v23 = v22 - v21;
    if (v23 != 0.0)
    {
      v24 = *(a1 + 204);
      v25 = *(a1 + 208);
      v26 = v23 - v24;
      if ((v23 - v24) <= v25)
      {
        if (v26 >= -v25)
        {
          v27 = v24 + v26;
        }

        else
        {
          v27 = v24 - v25;
        }
      }

      else
      {
        v27 = v24 + v25;
      }

      *(a1 + 204) = v27;
      if (v23 >= 0.0)
      {
        if (v27 <= v23)
        {
LABEL_39:
          *(a1 + 200) = v21 + v27;
          goto LABEL_40;
        }
      }

      else if (v27 >= v23)
      {
        goto LABEL_39;
      }

      *(a1 + 204) = v23;
      v27 = v23;
      goto LABEL_39;
    }
  }

LABEL_40:
  if (*(a1 + 240) != 1)
  {
    goto LABEL_65;
  }

  v28 = *(a1 + 244);
  v29 = (*(a1 + 256) * 0.0) + v28 * (1.0 - *(a1 + 256));
  v30 = v29 - v28;
  if (v30 != 0.0)
  {
    v31 = *(a1 + 248);
    v32 = *(a1 + 252);
    v33 = v30 - v31;
    if ((v30 - v31) <= v32)
    {
      if (v33 >= -v32)
      {
        v34 = v31 + v33;
      }

      else
      {
        v34 = v31 - v32;
      }
    }

    else
    {
      v34 = v31 + v32;
    }

    *(a1 + 248) = v34;
    if (v30 >= 0.0)
    {
      if (v34 <= v30)
      {
LABEL_52:
        v28 = v28 + v34;
        *(a1 + 244) = v28;
        goto LABEL_53;
      }
    }

    else if (v34 >= v30)
    {
      goto LABEL_52;
    }

    *(a1 + 248) = v30;
    v34 = v30;
    goto LABEL_52;
  }

LABEL_53:
  v35 = *(a1 + 272);
  v36 = (v28 * v35);
  v37 = *(a1 + 260);
  v38 = v36 + v37 * (1.0 - v35);
  v39 = v38 - v37;
  if (v39 == 0.0)
  {
    goto LABEL_65;
  }

  v40 = *(a1 + 264);
  v41 = v39 - v40;
  v42 = *(a1 + 268);
  if ((v39 - v40) <= v42)
  {
    if (v41 >= -v42)
    {
      v43 = v40 + v41;
    }

    else
    {
      v43 = v40 - v42;
    }
  }

  else
  {
    v43 = v40 + v42;
  }

  *(a1 + 264) = v43;
  if (v39 < 0.0)
  {
    if (v43 >= v39)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  if (v43 > v39)
  {
LABEL_63:
    *(a1 + 264) = v39;
    v43 = v39;
  }

LABEL_64:
  *(a1 + 260) = v37 + v43;
LABEL_65:
  v44 = 0.3;
  if (!v2)
  {
    v44 = 2.5;
  }

  v45 = *(a1 + 200);
  v46 = v17 * (v44 * v45);
  v47 = v11 * 20.0;
  if (v11 <= 0.0)
  {
    v47 = 0.0;
  }

  v48 = v17;
  v49 = v17 * 25.0;
  if (v49 >= v46)
  {
    v51 = v46;
  }

  else
  {
    v50 = v49;
    v51 = v50;
  }

  v52 = v45 + (v47 * *(a1 + 16));
  if (v52 > 1.3)
  {
    v52 = 1.3;
  }

  v53 = *(a1 + 228);
  v54 = (v53 * v52);
  v55 = *(a1 + 216);
  v56 = v54 + v55 * (1.0 - v53);
  v57 = v56 - v55;
  if (v57 != 0.0)
  {
    v58 = *(a1 + 220);
    v59 = *(a1 + 224);
    v60 = v57 - v58;
    if ((v57 - v58) <= v59)
    {
      if (v60 >= -v59)
      {
        v61 = v58 + v60;
      }

      else
      {
        v61 = v58 - v59;
      }
    }

    else
    {
      v61 = v58 + v59;
    }

    *(a1 + 220) = v61;
    if (v57 >= 0.0)
    {
      if (v61 <= v57)
      {
LABEL_85:
        *(a1 + 216) = v55 + v61;
        goto LABEL_86;
      }
    }

    else if (v61 >= v57)
    {
      goto LABEL_85;
    }

    *(a1 + 220) = v57;
    v61 = v57;
    goto LABEL_85;
  }

LABEL_86:
  v62 = v48 * 0.7 * *(a1 + 280);
  v63 = v62 + v51 * 0.5 * *(a1 + 284);
  if (v2)
  {
    v63 = v63 * 0.4;
    v64 = v48 * 0.6;
    if (v63 > v64)
    {
      v63 = v64;
    }
  }

  result = v63 + *(a1 + 156);
  *(a1 + 156) = result;
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void SUICLightPhysics_Init(uint64_t a1, uint64_t a2, int a3)
{
  SUICCommonPhysicsInternal_Init(a1, a2, a3);
  v4 = 1.0;
  v5 = 0.5;
  if (*(a1 + 241))
  {
    v4 = 0.8;
  }

  else
  {
    v5 = 1.0;
  }

  *(a1 + 280) = v5;
  *(a1 + 284) = v4;
  if (*a1)
  {
    _setupSpring(a1, a1 + 244, 2, 0.0);
    _setupSpring(a1, a1 + 260, 3, 0.0);
    _setupSpring(a1, a1 + 216, 0, 0.0);
    if (*(a1 + 161))
    {
      v6 = 4;
    }

    else
    {
      v6 = *(a1 + 241);
    }

    _setupSpring(a1, a1 + 200, v6, 0.0);
    _setupSpring(a1, a1 + 184, 1, 0.0);

    _setupSpring(a1, a1 + 168, 1, 0.0);
  }
}

uint64_t SUICCommonPhysicsInternal_Init(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 161) = UIAccessibilityIsReduceMotionEnabled();
  *a1 = a2;
  for (i = 24; i != 156; i += 4)
  {
    result = rand();
    *(a1 + i) = (vcvts_n_f32_s32(result, 0x1FuLL) * 600.0) + -300.0;
  }

  if (a2 <= 89)
  {
    if (a2 == 30)
    {
      v8 = 0.2;
      goto LABEL_14;
    }

    if (a2 == 60)
    {
      v8 = 0.3;
      goto LABEL_14;
    }

LABEL_15:
    SUICCommonPhysicsInternal_Init_cold_1();
  }

  if (a2 == 90)
  {
    v8 = 0.7;
    goto LABEL_14;
  }

  if (a2 == 120)
  {
    v8 = 1.0;
    goto LABEL_14;
  }

  if (a2 != 240)
  {
    goto LABEL_15;
  }

  v8 = 1.5;
LABEL_14:
  *(a1 + 12) = 1.0 / a2;
  *(a1 + 16) = v8;
  *(a1 + 8) = a3;
  *(a1 + 20) = 0;
  *(a1 + 160) = 0;
  return result;
}

void _setupSpring(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = flt_1C43DAB40[a3];
  if (((a3 != 0) & *(a1 + 161)) != 0)
  {
    v6 = v6 * 0.5;
    v7 = flt_1C43DAB54[a3] * 0.25;
  }

  else
  {
    v7 = flt_1C43DAB54[a3];
  }

  v8 = *a1;
  if (*a1 <= 59)
  {
    if (!v8)
    {
      return;
    }

    if (v8 == 30)
    {
      v7 = v7 * 9.0;
      v11 = 1.0;
      v12 = 1.0 - v6;
      v13 = 4.0;
LABEL_16:
      v6 = v11 - powf(v12, v13);
    }
  }

  else
  {
    if (v8 != 60)
    {
      if (v8 != 90)
      {
        if (v8 == 240)
        {
          v7 = v7 * 0.222222222;
          v9 = 1.0 - v6;
          v10 = 1.0 - fabsf(sqrtf(v9));
          if (v9 == -INFINITY)
          {
            v6 = -INFINITY;
          }

          else
          {
            v6 = v10;
          }
        }

        goto LABEL_17;
      }

      v7 = v7 * 1.7;
      v11 = 1.0;
      v12 = 1.0 - v6;
      v13 = 1.3;
      goto LABEL_16;
    }

    v7 = v7 * 3.0;
    v6 = 1.0 - ((1.0 - v6) * (1.0 - v6));
  }

LABEL_17:
  *a2 = a4;
  *(a2 + 4) = 0;
  *(a2 + 8) = v7;
  *(a2 + 12) = v6;
}

id _SUICLayerNullActions()
{
  if (_SUICLayerNullActions_onceToken != -1)
  {
    _SUICLayerNullActions_cold_1();
  }

  v1 = _SUICLayerNullActions_actions;

  return v1;
}

double _SUICSpringAnimationSolveForInput(double a1)
{
  if (_SUICInitializeStaticVariables_onceToken != -1)
  {
    _SUICSpringAnimationSolveForInput_cold_1();
  }

  v2 = fmin(fmax(a1, 0.0), 1.0);
  *&v2 = v2;
  [_SUICSpringAnimationTimingFunction _solveForInput:v2];
  [_SUICSpringAnimationTimingAnimation _solveForInput:?];
  return v3;
}

id _SUICMagicCurve()
{
  if (_SUICMagicCurve_onceToken != -1)
  {
    _SUICMagicCurve_cold_1();
  }

  v1 = _SUICMagicCurve_curve;

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SUICSetSiriUILanguageCode(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (([v1 isEqualToString:__currentLanguageCode] & 1) == 0)
  {
    v2 = __stringTables;
    __stringTables = 0;

    v3 = [v1 copy];
    v4 = __currentLanguageCode;
    __currentLanguageCode = v3;

    v5 = *MEMORY[0x1E698D0A0];
    if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315650;
      v7 = "SUICSetSiriUILanguageCode";
      v8 = 2080;
      v9 = "SUICSetSiriUILanguageCode";
      v10 = 2112;
      v11 = __currentLanguageCode;
      _os_log_impl(&dword_1C432B000, v5, OS_LOG_TYPE_DEFAULT, "%s %s updated language code to: %@", &v6, 0x20u);
    }
  }
}

void SUICPurgeCachedLocalizedStrings()
{
  v0 = __stringTables;
  __stringTables = 0;
}

void sub_1C4332E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 32));
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C43338AC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t IsCharacterAtIndexMemberOfCharacterSet(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [v5 characterAtIndex:*a2];
  if (v7 >> 11 == 27 && (v8 = *a2 + 1, v8 < [v5 length]))
  {
    ++*a2;
    v9 = [v6 longCharacterIsMember:{objc_msgSend(v5, "characterAtIndex:") + (v7 << 10) - 56613888}];
  }

  else
  {
    v9 = [v6 characterIsMember:v7];
  }

  v10 = v9;

  return v10;
}

void sub_1C4338634(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1C433883C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1C433B794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C433B9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SetupAssistantLibraryCore()
{
  if (!SetupAssistantLibraryCore_frameworkLibrary)
  {
    SetupAssistantLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return SetupAssistantLibraryCore_frameworkLibrary;
}

uint64_t __SetupAssistantLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SetupAssistantLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBYSetupAssistantHasCompletedInitialRunSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SetupAssistantLibraryCore();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "BYSetupAssistantHasCompletedInitialRun");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBYSetupAssistantHasCompletedInitialRunSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *SUICProgressStateNameForState(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"None";
  }

  else
  {
    return off_1E81E7F40[a1 + 1];
  }
}

__CFString *SUICProgressEventNameForEvent(uint64_t a1)
{
  if ((a1 + 1) > 5)
  {
    return @"Start";
  }

  else
  {
    return off_1E81E7F10[a1 + 1];
  }
}

void sub_1C433C7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  objc_destroyWeak((v29 + 32));
  objc_destroyWeak(&a18);
  objc_destroyWeak(&a23);
  objc_destroyWeak(&a28);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C433D9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C433DE0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C433E6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SUICStringForAutoDismissalReason(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_1E81E8058[a1 - 1];
  }
}

void sub_1C433FF84(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1C4340360(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

double _calculateChipNormal(uint64_t a1, int a2, int a3, float32x4_t a4, double a5, float32x4_t a6, double a7, double a8, double a9, double a10, float32x4_t _Q7)
{
  v11 = (a1 + 48 * a2);
  a4.i64[0] = v11[2].i64[0];
  a4.i32[2] = 0;
  v12 = vaddq_f32(a4, *v11);
  v13 = vmulq_f32(v12, v12);
  *&v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  *a6.f32 = vrsqrte_f32(v14);
  *a6.f32 = vmul_f32(*a6.f32, vrsqrts_f32(v14, vmul_f32(*a6.f32, *a6.f32)));
  _Q1 = vmulq_n_f32(v12, vmul_f32(*a6.f32, vrsqrts_f32(v14, vmul_f32(*a6.f32, *a6.f32))).f32[0]);
  v16 = (a1 + 48 * a3);
  a6.i64[0] = v16[2].i64[0];
  a6.i32[2] = 0;
  v17 = vaddq_f32(a6, *v16);
  v18 = vmulq_f32(v17, v17);
  *&v19 = v18.f32[2] + vaddv_f32(*v18.f32);
  *v18.f32 = vrsqrte_f32(v19);
  *v18.f32 = vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32)));
  v20 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v19, vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  _S4 = v20.i32[2];
  __asm { FMLA            S7, S4, V1.S[1] }

  _Q7.f32[1] = vmuls_lane_f32(-_Q1.f32[0], v20, 2) + (_Q1.f32[2] * v20.f32[0]);
  _Q7.f32[2] = (-_Q1.f32[1] * v20.f32[0]) + (_Q1.f32[0] * v20.f32[1]);
  v26 = vmulq_f32(_Q7, _Q7);
  v13.f32[0] = v26.f32[2] + vaddv_f32(*v26.f32);
  *v26.f32 = vrsqrte_f32(v13.u32[0]);
  *v26.f32 = vmul_f32(*v26.f32, vrsqrts_f32(v13.u32[0], vmul_f32(*v26.f32, *v26.f32)));
  *&result = vmulq_n_f32(_Q7, vmul_f32(*v26.f32, vrsqrts_f32(v13.u32[0], vmul_f32(*v26.f32, *v26.f32))).f32[0]).u64[0];
  return result;
}

double matrix4x4_translation()
{
  __asm { FMOV            V3.4S, #1.0 }

  return *&_PromotedConst;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_1C4347A24(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C4347C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C4348964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SUICGetIndexCacheEntryKey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = MEMORY[0x1E696AEC0];
  v15 = NSStringFromCGRect(*&a5);
  v16 = [v14 stringWithFormat:@"%@.%ld.%.2f.%ld.%d.%d", v15, a1, *&a9, a2, a3, a4];

  return v16;
}

void sub_1C434DB88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SUICOrbPhysics_Init(uint64_t a1, uint64_t a2, int a3)
{
  SUICCommonPhysicsInternal_Init(a1, a2, a3);
  *(a1 + 168) = 0;
  *(a1 + 924) = 0;
  *(a1 + 932) = 0;
  *(a1 + 936) = 0;
  *(a1 + 800) = 0u;
  if (*a1)
  {
    _setupSpring(a1, a1 + 176, 1, 1.25);
    _setupSpring(a1, a1 + 192, 2, 0.0);
    _setupSpring(a1, a1 + 208, 1, 0.0);
    _setupSpring(a1, a1 + 224, 2, 1.0);
    _setupSpring(a1, a1 + 240, 1, 1.0);
    _setupSpring(a1, a1 + 256, 3, 0.0);
    _setupSpring(a1, a1 + 272, 2, 0.0);
    _setupSpring(a1, a1 + 288, 0, 0.0);
    _setupSpring(a1, a1 + 304, *(a1 + 161) ^ 1, 0.0);
    for (i = 320; i != 416; i += 16)
    {
      _setupSpring(a1, a1 + i, 0, 0.0);
    }
  }
}

float SiriOrbPhysicsInternal_UpdateChipsSizes(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 168);
  v2 = 1.0;
  if (!v1)
  {
    v2 = 0.0;
  }

  v3 = *(a1 + 316);
  v4 = (v3 * v2);
  v5 = *(a1 + 304);
  v6 = v4 + v5 * (1.0 - v3);
  v7 = v6 - v5;
  if (v7 == 0.0)
  {
    if (v1)
    {
      goto LABEL_5;
    }

LABEL_24:
    v8 = 0.166666672;
LABEL_25:
    v17 = (a1 + 320);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v18 = v5;
    if (v8 <= v18)
    {
      LODWORD(v29) = 1065353216;
      if (v8 + 0.166666667 <= v18)
      {
        HIDWORD(v29) = 1065353216;
        if (v8 + 0.333333333 <= v18)
        {
          LODWORD(v30) = 1065353216;
          if (v8 + 0.5 <= v18)
          {
            HIDWORD(v30) = 1065353216;
            if (v8 + 0.666666667 <= v18)
            {
              LODWORD(v31) = 1065353216;
              if (v8 + 0.833333333 <= v18)
              {
                HIDWORD(v31) = 1065353216;
              }
            }
          }
        }
      }
    }

    v19 = 0;
    v20 = 0.0;
    while (1)
    {
      v21 = *v17;
      v22 = (*(&v29 + v19) * v17[3]) + *v17 * (1.0 - v17[3]);
      v23 = v22 - *v17;
      if (v23 != 0.0)
      {
        break;
      }

LABEL_45:
      v20 = v20 + v21;
      v19 += 4;
      v17 += 4;
      if (v19 == 24)
      {
        *(a1 + 920) = *(a1 + 320);
        *v9.i32 = v20 * 0.166666667;
        *(a1 + 916) = v9.i32[0];
        return *v9.i32;
      }
    }

    v24 = v17[1];
    v25 = v17[2];
    v26 = v23 - v24;
    if ((v23 - v24) <= v25)
    {
      if (v26 >= -v25)
      {
        v27 = v24 + v26;
      }

      else
      {
        v27 = v24 - v25;
      }
    }

    else
    {
      v27 = v24 + v25;
    }

    v17[1] = v27;
    if (v23 >= 0.0)
    {
      if (v27 <= v23)
      {
LABEL_44:
        v21 = v21 + v27;
        *v17 = v21;
        goto LABEL_45;
      }
    }

    else if (v27 >= v23)
    {
      goto LABEL_44;
    }

    v17[1] = v23;
    v27 = v23;
    goto LABEL_44;
  }

  v13 = *(a1 + 308);
  v14 = v7 - v13;
  v15 = *(a1 + 312);
  if ((v7 - v13) <= v15)
  {
    if (v14 >= -v15)
    {
      v16 = v13 + v14;
    }

    else
    {
      v16 = v13 - v15;
    }
  }

  else
  {
    v16 = v13 + v15;
  }

  *(a1 + 308) = v16;
  if (v7 >= 0.0)
  {
    if (v16 <= v7)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v16 < v7)
  {
LABEL_22:
    *(a1 + 308) = v7;
    v16 = v7;
  }

LABEL_23:
  v5 = v5 + v16;
  *(a1 + 304) = v5;
  if (!v1)
  {
    goto LABEL_24;
  }

LABEL_5:
  v8 = 0.0;
  if (*(a1 + 400) <= 0.999)
  {
    goto LABEL_25;
  }

  v9 = xmmword_1C435C1F0;
  v10 = (a1 + 336);
  v11 = vdupq_n_s64(2uLL);
  v12 = 6;
  do
  {
    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), v9)).u8[0])
    {
      *(v10 - 4) = 1065353216;
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(6uLL), *&v9)).i32[1])
    {
      *v10 = 1065353216;
    }

    v9 = vaddq_s64(v9, v11);
    v10 += 8;
    v12 -= 2;
  }

  while (v12);
  *(a1 + 916) = 0x3F8000003F800000;
  return *v9.i32;
}

void SUICOrbPhysics_UpdatePhysics(float32x4_t *a1, float a2)
{
  v3 = ((a2 / a1->f32[3]) + 0.5);
  if (a1->i32[2] < v3)
  {
    v3 = a1->i32[2];
  }

  if (v3 <= 1)
  {
    v3 = 1;
  }

  v4 = v3 - 1;
  do
  {
    v5 = v4;
    SUICOrbPhysicsInternal_UpdatePhysicsTick(a1);
    if (a1[10].i8[0])
    {
      break;
    }

    v4 = v5 - 1;
  }

  while (v5);

  SUICOrbPhysicsInternal_FinalizeStateForFrame(a1);
}

float32_t SUICOrbPhysicsInternal_UpdatePhysicsTick(float32x4_t *a1)
{
  v118 = a1->f32[3];
  a1[57].f32[3] = v118 + a1[57].f32[3];
  v2 = a1[10].i64[1];
  SiriOrbPhysicsInternal_UpdateChipsSizes(a1);
  v3 = a1[57].f32[3];
  v4 = a1[10].u8[1];
  v5 = (v3 - a1[58].f32[1]) * 4.2 + 2.35619449;
  v6 = cosf(v5) * 0.5 + 0.5;
  if (v4)
  {
    v6 = 0.0;
  }

  v8 = a1[1].f32[1] * a1[1].f32[1];
  if (v4)
  {
    v10 = 1.25;
  }

  else
  {
    v9 = v8 * 0.25 + 1.25;
    v10 = v9;
  }

  v11 = 1.0;
  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v2 == 3)
      {
        v12 = 1.0;
        v11 = 0.9;
        goto LABEL_24;
      }

      goto LABEL_13;
    }

    if (a1[58].i8[8] == 1)
    {
      if (a1[16].f32[0] < 0.025)
      {
        a1[58].f32[1] = v3;
        v13 = (v3 - v3) * 4.2 + 2.35619449;
        v6 = cosf(v13) * 0.5 + 0.5;
        if (v4)
        {
          v6 = 0.0;
        }
      }

      a1[58].i8[8] = 0;
    }

    v12 = v6 * 0.25 + 1.0;
    v11 = 0.2;
  }

  else
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v12 = v10;
        goto LABEL_24;
      }

LABEL_13:
      v12 = 0.0;
      goto LABEL_24;
    }

    v12 = 0.0;
    if (v4)
    {
      v12 = a1[11].f32[0];
    }

    if (a1[57].f32[2] < 0.25)
    {
      a1[10].i8[0] = 1;
      a1[11].i32[0] = 0;
    }
  }

LABEL_24:
  if (a1[10].i8[0] == 1)
  {
    v14 = a1[11].f32[0];
    v15 = v118;
    goto LABEL_119;
  }

  v14 = a1[11].f32[0];
  v16 = (v12 * a1[11].f32[3]) + v14 * (1.0 - a1[11].f32[3]);
  v17 = v16 - v14;
  if (v17 != 0.0)
  {
    v18 = a1[11].f32[1];
    v19 = a1[11].f32[2];
    v20 = v17 - v18;
    if ((v17 - v18) <= v19)
    {
      if (v20 >= -v19)
      {
        v21 = v18 + v20;
      }

      else
      {
        v21 = v18 - v19;
      }
    }

    else
    {
      v21 = v18 + v19;
    }

    a1[11].f32[1] = v21;
    if (v17 >= 0.0)
    {
      if (v21 <= v17)
      {
LABEL_37:
        v14 = v14 + v21;
        a1[11].f32[0] = v14;
        goto LABEL_38;
      }
    }

    else if (v21 >= v17)
    {
      goto LABEL_37;
    }

    a1[11].f32[1] = v17;
    v21 = v17;
    goto LABEL_37;
  }

LABEL_38:
  if (v2 == 3)
  {
    v12 = v10;
  }

  v22 = a1[12].f32[3];
  v23 = (v12 * v22);
  v24 = a1[12].f32[0];
  v25 = v23 + v24 * (1.0 - v22);
  v26 = v25 - v24;
  if (v26 != 0.0)
  {
    v27 = a1[12].f32[1];
    v28 = a1[12].f32[2];
    v29 = v26 - v27;
    if ((v26 - v27) <= v28)
    {
      if (v29 >= -v28)
      {
        v30 = v27 + v29;
      }

      else
      {
        v30 = v27 - v28;
      }
    }

    else
    {
      v30 = v27 + v28;
    }

    a1[12].f32[1] = v30;
    if (v26 >= 0.0)
    {
      if (v30 <= v26)
      {
LABEL_51:
        a1[12].f32[0] = v24 + v30;
        goto LABEL_52;
      }
    }

    else if (v30 >= v26)
    {
      goto LABEL_51;
    }

    a1[12].f32[1] = v26;
    v30 = v26;
    goto LABEL_51;
  }

LABEL_52:
  v31 = a1[13].f32[0];
  v32 = (v8 * a1[13].f32[3]) + v31 * (1.0 - a1[13].f32[3]);
  v33 = v32 - v31;
  v15 = v118;
  if (v33 == 0.0)
  {
    goto LABEL_64;
  }

  v34 = a1[13].f32[1];
  v35 = a1[13].f32[2];
  v36 = v33 - v34;
  if ((v33 - v34) <= v35)
  {
    if (v36 >= -v35)
    {
      v37 = v34 + v36;
    }

    else
    {
      v37 = v34 - v35;
    }
  }

  else
  {
    v37 = v34 + v35;
  }

  a1[13].f32[1] = v37;
  if (v33 < 0.0)
  {
    if (v37 >= v33)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v37 > v33)
  {
LABEL_62:
    a1[13].f32[1] = v33;
    v37 = v33;
  }

LABEL_63:
  a1[13].f32[0] = v31 + v37;
LABEL_64:
  v38 = a1[14].f32[3];
  v39 = (v11 * v38);
  v40 = a1[14].f32[0];
  v41 = v39 + v40 * (1.0 - v38);
  v42 = v41 - v40;
  if (v42 == 0.0)
  {
    goto LABEL_76;
  }

  v43 = a1[14].f32[1];
  v44 = a1[14].f32[2];
  v45 = v42 - v43;
  if ((v42 - v43) <= v44)
  {
    if (v45 >= -v44)
    {
      v46 = v43 + v45;
    }

    else
    {
      v46 = v43 - v44;
    }
  }

  else
  {
    v46 = v43 + v44;
  }

  a1[14].f32[1] = v46;
  if (v42 < 0.0)
  {
    if (v46 >= v42)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  if (v46 > v42)
  {
LABEL_74:
    a1[14].f32[1] = v42;
    v46 = v42;
  }

LABEL_75:
  a1[14].f32[0] = v40 + v46;
LABEL_76:
  v47 = 1.0;
  if (v2 == 2)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = 1.0;
  }

  v49 = a1[15].f32[0];
  v50 = (v48 * a1[15].f32[3]) + v49 * (1.0 - a1[15].f32[3]);
  v51 = v50 - v49;
  if (v51 != 0.0)
  {
    v52 = a1[15].f32[1];
    v53 = a1[15].f32[2];
    v54 = v51 - v52;
    if ((v51 - v52) <= v53)
    {
      if (v54 >= -v53)
      {
        v55 = v52 + v54;
      }

      else
      {
        v55 = v52 - v53;
      }
    }

    else
    {
      v55 = v52 + v53;
    }

    a1[15].f32[1] = v55;
    if (v51 >= 0.0)
    {
      if (v55 <= v51)
      {
LABEL_90:
        a1[15].f32[0] = v49 + v55;
        goto LABEL_91;
      }
    }

    else if (v55 >= v51)
    {
      goto LABEL_90;
    }

    a1[15].f32[1] = v51;
    v55 = v51;
    goto LABEL_90;
  }

LABEL_91:
  if (v2 != 3)
  {
    v47 = 0.0;
  }

  v56 = a1[17].f32[3];
  v57 = (v47 * v56);
  v58 = a1[17].f32[0];
  v59 = v57 + v58 * (1.0 - v56);
  v60 = v59 - v58;
  if (v60 != 0.0)
  {
    v61 = a1[17].f32[1];
    v62 = v60 - v61;
    v63 = a1[17].f32[2];
    if ((v60 - v61) <= v63)
    {
      if (v62 >= -v63)
      {
        v64 = v61 + v62;
      }

      else
      {
        v64 = v61 - v63;
      }
    }

    else
    {
      v64 = v61 + v63;
    }

    a1[17].f32[1] = v64;
    if (v60 >= 0.0)
    {
      if (v64 <= v60)
      {
LABEL_104:
        a1[17].f32[0] = v58 + v64;
        goto LABEL_105;
      }
    }

    else if (v64 >= v60)
    {
      goto LABEL_104;
    }

    a1[17].f32[1] = v60;
    v64 = v60;
    goto LABEL_104;
  }

LABEL_105:
  v65 = 0.0;
  if (v2 == 2)
  {
    v65 = 1.0;
  }

  v66 = a1[16].f32[3];
  v67 = (v65 * v66);
  v68 = a1[16].f32[0];
  v69 = v67 + v68 * (1.0 - v66);
  v70 = v69 - v68;
  if (v70 != 0.0)
  {
    v71 = a1[16].f32[1];
    v72 = v70 - v71;
    v73 = a1[16].f32[2];
    if ((v70 - v71) <= v73)
    {
      if (v72 >= -v73)
      {
        v74 = v71 + v72;
      }

      else
      {
        v74 = v71 - v73;
      }
    }

    else
    {
      v74 = v71 + v73;
    }

    a1[16].f32[1] = v74;
    if (v70 >= 0.0)
    {
      if (v74 <= v70)
      {
LABEL_118:
        a1[16].f32[0] = v68 + v74;
        goto LABEL_119;
      }
    }

    else if (v74 >= v70)
    {
      goto LABEL_118;
    }

    a1[16].f32[1] = v70;
    v74 = v70;
    goto LABEL_118;
  }

LABEL_119:
  v75 = v14 * 1.15;
  a1[57].f32[0] = v75;
  if ((v4 & 1) == 0)
  {
    a1[57].f32[0] = a1[57].f32[1] * v75;
  }

  v76 = fabsf(a1[12].f32[1]);
  v77 = fabsf(a1[11].f32[1]);
  v78 = fabsf(a1[17].f32[1]);
  v79 = fabsf(a1[16].f32[1]);
  v80 = v76 * 3.0;
  v81 = a1[12].f32[0];
  if (v81 <= 1.33)
  {
    v83 = v15;
  }

  else
  {
    v82 = (v81 + -1.33) * 10.0;
    v83 = v15;
    v80 = v80 + v82 * v15;
  }

  v84 = 1.0;
  if (!v4)
  {
    v84 = 10.0;
  }

  v85 = a1[13].f32[0];
  v86 = v80 + ((v84 * v85) * v15);
  v87 = fmaxf(a1[19].f32[1], 0.0);
  v88 = a1[57].f32[1];
  v89 = v86 + v87 * 20.0 * v88;
  v90 = v89 + v77 * 4.0 * v88;
  v91 = v90 + v78 * 4.0;
  v92 = v91 + v79 * 4.0;
  if (v83 * 25.0 < v92)
  {
    v93 = v83 * 25.0;
    v92 = v93;
  }

  v94 = v85 + (((((v78 * 5.0) + (v76 * 10.0)) + (v77 * 5.0)) + (v87 * 20.0)) * a1[1].f32[0]);
  if (v94 > 1.3)
  {
    v94 = 1.3;
  }

  v95 = a1[57].f32[2] * v94;
  v96 = a1[18].f32[0];
  v97 = (a1[18].f32[3] * v95) + v96 * (1.0 - a1[18].f32[3]);
  v98 = v97 - v96;
  if (v98 != 0.0)
  {
    v99 = a1[18].f32[1];
    v100 = v98 - v99;
    v101 = a1[18].f32[2];
    if ((v98 - v99) <= v101)
    {
      if (v100 >= -v101)
      {
        v102 = v99 + v100;
      }

      else
      {
        v102 = v99 - v101;
      }
    }

    else
    {
      v102 = v99 + v101;
    }

    a1[18].f32[1] = v102;
    if (v98 >= 0.0)
    {
      if (v102 <= v98)
      {
LABEL_141:
        a1[18].f32[0] = v96 + v102;
        goto LABEL_142;
      }
    }

    else if (v102 >= v98)
    {
      goto LABEL_141;
    }

    a1[18].f32[1] = v98;
    v102 = v98;
    goto LABEL_141;
  }

LABEL_142:
  v103 = a1[16].f32[0];
  v104 = v95 * 0.0025;
  *&v104 = v104;
  if (v4)
  {
    *&v104 = 0.0002;
  }

  v105 = a1 + 50;
  v106 = vaddq_f32(vmlaq_n_f32(vdupq_lane_s32(*&v104, 0), xmmword_1C435C200, v15), a1[50]);
  a1[50] = v106;
  if (v106.f32[0] > 2.0)
  {
    v7.f32[0] = v106.f32[0] + -2.0;
    HIDWORD(v107) = v106.i32[1];
    *&v107 = v106.f32[0] + -2.0;
    v7.i32[1] = v106.i32[1];
    v7.i32[2] = v106.i32[2];
    a1[50].i32[2] = v106.i32[2];
    v105->i64[0] = v107;
    v106 = v7;
  }

  if (v106.f32[1] > 2.0)
  {
    v108 = v106;
    v108.f32[1] = v106.f32[1] + -2.0;
    v105->i64[0] = v108.i64[0];
    v108.i32[2] = v106.i32[2];
    a1[50].i32[2] = v106.i32[2];
    v106 = v108;
  }

  if (v106.f32[2] > 2.0)
  {
    a1[50].f32[2] = v106.f32[2] + -2.0;
    v105->i64[0] = v106.i64[0];
  }

  v109 = v83 * 1.25663706;
  v110 = v109 + (v6 * ((v109 * 4.0) - v109));
  if (v4)
  {
    v110 = v110 * 0.5;
  }

  v111 = v110 + a1[58].f32[0];
  if (v111 > 6.28318531)
  {
    v112 = v111 + -6.28318531;
    v111 = v112;
  }

  a1[58].f32[0] = v111;
  v113 = v83 * 0.7;
  v114 = v113 + v92 * 0.5;
  v115 = ((v113 * 8.0) * v103) + ((1.0 - v103) * v114);
  if (v4)
  {
    v115 = v115 * 0.4;
    v116 = v83 * 0.6;
    if (v115 > v116)
    {
      v115 = v116;
    }
  }

  result = v115 + a1[9].f32[3];
  a1[9].f32[3] = result;
  return result;
}

void SUICOrbPhysicsInternal_FinalizeStateForFrame(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 256);
  v4 = *(a1 + 176);
  v58 = a1 + 816;
  v54 = a1 + 320;
  v53 = LODWORD(v4);
  LODWORD(v5) = 0;
  *(&v5 + 1) = v4;
  v52 = v5;
  v6.i64[0] = 0;
  v55 = v4;
  v6.i64[1] = LODWORD(v4);
  v7 = a1 + 416;
  v57 = vdupq_n_s32(0x41490FDBu);
  v56 = vdupq_n_s32(0x3F8CCCCDu);
  v51 = v6;
  do
  {
    noise2();
    v65 = v8;
    noise2();
    v63 = v9;
    noise2();
    v11 = 1.0;
    if ((*(a1 + 161) & 1) == 0)
    {
      v11 = *(v54 + 16 * v2);
    }

    v12 = v65;
    v12.i32[1] = v63;
    v12.i32[2] = v10;
    v66 = vmulq_f32(v12, v57);
    v13 = __sincosf_stret(v66.f32[2]);
    v14 = __sincosf_stret(v66.f32[0]);
    v15.i32[0] = 0;
    v15.i32[1] = LODWORD(v14.__cosval);
    v15.i64[1] = LODWORD(v14.__sinval);
    v60 = v15;
    v15.i32[0] = 0;
    v15.f32[1] = -v14.__sinval;
    v15.i64[1] = LODWORD(v14.__cosval);
    v59 = v15;
    v16 = __sincosf_stret(v66.f32[1]);
    v17 = 0;
    v18.i32[3] = 0;
    v18.i64[0] = LODWORD(v16.__cosval);
    *&v18.i32[2] = -v16.__sinval;
    LODWORD(v19) = 0;
    *(&v19 + 1) = v16.__cosval + (1.0 - v16.__cosval);
    v20.i64[0] = LODWORD(v16.__sinval);
    v20.i64[1] = LODWORD(v16.__cosval);
    v68 = v18;
    v69 = v19;
    v70 = v20;
    v71 = xmmword_1C435BBE0;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    do
    {
      *(&v72 + v17) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT(v14.__cosval + (1.0 - v14.__cosval)), COERCE_FLOAT(*(&v68 + v17))), v60, *&v68.i8[v17], 1), v59, *(&v68 + v17), 2), xmmword_1C435BBE0, *(&v68 + v17), 3);
      v17 += 16;
    }

    while (v17 != 64);
    v21 = 0;
    v23 = COERCE_UNSIGNED_INT(-v13.__sinval);
    cosval_low = LODWORD(v13.__cosval);
    cosval_low.i32[1] = LODWORD(v13.__sinval);
    v23.i32[1] = LODWORD(v13.__cosval);
    v24.i64[0] = 0;
    v68 = v72;
    v69 = v73;
    v70 = v74;
    v71 = v75;
    v72 = 0uLL;
    v73 = 0uLL;
    v74 = 0uLL;
    v75 = 0uLL;
    do
    {
      v24.i64[1] = COERCE_UNSIGNED_INT(v13.__cosval + (1.0 - v13.__cosval));
      *(&v72 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(cosval_low, COERCE_FLOAT(*(&v68 + v21))), v23, *&v68.i8[v21], 1), v24, *(&v68 + v21), 2), xmmword_1C435BBE0, *(&v68 + v21), 3);
      v21 += 16;
    }

    while (v21 != 64);
    v26 = v72;
    v25 = v73;
    v28 = v74;
    v27 = v75;
    v29 = vzip1q_s32(v72, v74);
    v30 = vzip2q_s32(v72, v74);
    v31 = vzip1q_s32(v73, v75);
    v32 = vzip2q_s32(v73, v75);
    *(v58 + 16 * v2) = vaddq_f32(vzip2q_s32(v30, v32), vmlaq_f32(vmlaq_f32(vmulq_f32(vzip1q_s32(v29, v31), v56), 0, vzip2q_s32(v29, v31)), 0, vzip1q_s32(v30, v32)));
    if (v3 <= 0.0001)
    {
      v43 = 0;
      v44 = (v55 * (v11 * *(a1 + 224))) * 0.04;
      v45.i32[0] = 0;
      v45.i64[1] = 0;
      v45.f32[1] = v44;
      v46.i64[0] = 0;
      v46.i64[1] = LODWORD(v44);
      v68 = v26;
      v69 = v25;
      v70 = v28;
      v71 = v27;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      do
      {
        *(&v72 + v43) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v44), COERCE_FLOAT(*(&v68 + v43))), v45, *&v68.i8[v43], 1), v46, *(&v68 + v43), 2), xmmword_1C435BBE0, *(&v68 + v43), 3);
        v43 += 16;
      }

      while (v43 != 64);
    }

    else
    {
      v33 = (2 * v2) * 3.14159265 / 6.0 - *(a1 + 928);
      v64 = v28;
      v67 = v27;
      v61 = v26;
      v62 = v25;
      v34 = __sincosf_stret(v33);
      v35 = 0;
      v36 = (v11 * *(a1 + 224)) * 0.04;
      v37.i32[0] = 0;
      v37.i64[1] = 0;
      v37.f32[1] = v36;
      v38.i64[0] = 0;
      v38.i64[1] = LODWORD(v36);
      v39.i32[2] = 0;
      v39.i32[3] = 1.0;
      v68 = v61;
      v69 = v62;
      v70 = v64;
      v71 = v67;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      do
      {
        *(&v72 + v35) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v36), COERCE_FLOAT(*(&v68 + v35))), v37, *&v68.i8[v35], 1), v38, *(&v68 + v35), 2), xmmword_1C435BBE0, *(&v68 + v35), 3);
        v35 += 16;
      }

      while (v35 != 64);
      v40 = 0;
      v41 = (v3 * v34.__sinval) * 0.03;
      v39.f32[1] = v41;
      v68 = v72;
      v69 = v73;
      v70 = v74;
      v71 = v75;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      do
      {
        v39.f32[0] = (v3 * v34.__cosval) * 0.03;
        *(&v72 + v40) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1C435BBD0, COERCE_FLOAT(*(&v68 + v40))), xmmword_1C435BBC0, *&v68.i8[v40], 1), xmmword_1C435BBB0, *(&v68 + v40), 2), v39, *(&v68 + v40), 3);
        v40 += 16;
      }

      while (v40 != 64);
      v42 = 0;
      v68 = v72;
      v69 = v73;
      v70 = v74;
      v71 = v75;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      do
      {
        *(&v72 + v42) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v53, COERCE_FLOAT(*(&v68 + v42))), v52, *&v68.i8[v42], 1), v51, *(&v68 + v42), 2), xmmword_1C435BBE0, *(&v68 + v42), 3);
        v42 += 16;
      }

      while (v42 != 64);
    }

    v47 = v73;
    v48 = v74;
    v49 = v75;
    v50 = (v7 + (v2 << 6));
    *v50 = v72;
    v50[1] = v47;
    v50[2] = v48;
    v50[3] = v49;
    ++v2;
  }

  while (v2 != 6);
}

void sub_1C4356190(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, CGFloat a8, CGFloat a9)
{
  v14 = [v9 textContainerForGlyphAtIndex:a1 effectiveRange:0];
  if (v14)
  {
    v15 = v14;
    [v9 boundingRectForGlyphRange:a1 inTextContainer:a2];
    v18 = CGRectOffset(v17, a8, a9);
    (*((*MEMORY[0x1E69E7D40] & *v9) + 0x50))(v18.origin, *&v18.origin.y, v18.size, *&v18.size.height);
  }

  else
  {
    __break(1u);
  }
}

void sub_1C4356360(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v10 setLineWidth_];
  [v10 setLineCapStyle_];
  [v10 setLineDash:&unk_1F43BC690 count:2 phase:3.5];
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  MinX = CGRectGetMinX(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  [v10 moveToPoint_];
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  MaxX = CGRectGetMaxX(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  [v10 addLineToPoint_];
  [v10 stroke];
}

id SUICStreamingLayoutManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SUICStreamingLayoutManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SUICStreamingLayoutManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SUICStreamingLayoutManager.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SUICStreamingLayoutManager.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SUICStreamingLayoutManager();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id SUICStreamingLayoutManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SUICStreamingLayoutManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CAFrameRateRange CAFrameRateRangeMake(float minimum, float maximum, float preferred)
{
  MEMORY[0x1EEDD5E20](minimum, maximum, preferred);
  result.preferred = v5;
  result.maximum = v4;
  result.minimum = v3;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}