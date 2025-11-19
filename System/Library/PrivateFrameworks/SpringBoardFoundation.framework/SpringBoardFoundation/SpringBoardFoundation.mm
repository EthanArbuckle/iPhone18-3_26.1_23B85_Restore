id getSOSUtilitiesClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSOSUtilitiesClass_softClass;
  v7 = getSOSUtilitiesClass_softClass;
  if (!getSOSUtilitiesClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSOSUtilitiesClass_block_invoke;
    v3[3] = &unk_1E807F028;
    v3[4] = &v4;
    __getSOSUtilitiesClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1BEA13178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SBFEffectiveDeviceClass()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 deviceClass];

  if ([MEMORY[0x1E699FAB8] isEmulatedDevice])
  {
    v2 = [MEMORY[0x1E699FAB8] emulatedDeviceClass];
    if (v2 == -1)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }

  return v1;
}

uint64_t SBFEffectiveHomeButtonType()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 homeButtonType];

  if ([MEMORY[0x1E699FAB8] isEmulatedDevice])
  {
    v2 = [MEMORY[0x1E699FAB8] emulatedHomeButtonType];
    if (v2 != -1)
    {
      return v2;
    }
  }

  return v1;
}

id _SBModifyFrameRateForAnimationBlockFromSettings(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x1BFB4D9B0](v3);
  [v4 frameRateRange];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v4 preferredFrameRateRange];

  v13 = [v12 highFrameRateReason];
  v24.minimum = v7;
  v24.maximum = v9;
  v24.preferred = v11;
  if (!CAFrameRateRangeIsEqualToRange(v24, *MEMORY[0x1E69792B8]))
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___SBModifyFrameRateForAnimationBlockFromSettings_block_invoke;
    v17[3] = &unk_1E8080570;
    v19 = v7;
    v20 = v9;
    v21 = v11;
    v22 = v13;
    v18 = v3;
    v14 = MEMORY[0x1BFB4D9B0](v17);

    v5 = v14;
  }

  v15 = MEMORY[0x1BFB4D9B0](v5);

  return v15;
}

void SBFApplyParallaxSettingsToViewWithFactor(void *a1, void *a2, double a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v6)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = [v6 _motionEffects];
    v9 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 _removeMotionEffect:*(*(&v33 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
    }

    if (fabs(a3) >= 2.22044605e-16)
    {
      if ([v5 slideEnabled])
      {
        if ([v5 tiltEnabled])
        {
          v13 = objc_alloc_init(MEMORY[0x1E69DD610]);
          [v5 slidePixelsX];
          v15 = v14 * [v5 slideDirectionX] * 0.5 * a3;
          [v5 slidePixelsY];
          v17 = v16 * [v5 slideDirectionY] * 0.5 * a3;
          [v13 setSlideMagnitude:{v15, v17}];
          if ([v5 increaseEnabled])
          {
            [v5 slideIncreaseX];
            [v13 setHorizontalSlideAccelerationBoostFactor:fabs(v18 * a3 * 0.5 / v15)];
            [v5 slideIncreaseY];
            [v13 setVerticalSlideAccelerationBoostFactor:fabs(v19 * a3 * 0.5 / v17)];
          }

          [v13 setRotatingSphereRadius:{-objc_msgSend(v5, "distanceFromScreen") * a3}];
          [v5 tiltDegreesX];
          [v13 setMaximumHorizontalTiltAngle:{-(v20 * objc_msgSend(v5, "tiltDirectionX")) * a3 * 0.0174532925}];
          [v5 tiltDegreesY];
          [v13 setMaximumVerticalTiltAngle:{-(v21 * objc_msgSend(v5, "tiltDirectionY")) * a3 * 0.0174532925}];
          [v7 _addMotionEffect:v13];
        }

        else
        {
          [v5 slidePixelsX];
          [v7 _setVisualAltitude:?];
          [v5 slidePixelsY];
          v23 = v22;
          [v5 slidePixelsX];
          [v7 _setVisualAltitudeBias:{1.0, v23 / v24}];
        }
      }
    }

    else
    {
      [v7 _setVisualAltitude:*MEMORY[0x1E69DEAF8]];
      [v5 slideEnabled];
    }

    [v7 bounds];
    if (v26 <= v25)
    {
      v29 = v25;
      [v5 tiltDegreesX];
      v27 = v29;
    }

    else
    {
      v27 = v26;
      [v5 tiltDegreesY];
    }

    v30 = v27 * -0.5;
    v31 = tan(v28 * 0.0174532925);
    v32 = [v7 layer];
    [v32 setZPosition:v30 * v31];
  }
}

__CFString *_SBFZStackParticipantIdentifierDescription(unint64_t a1)
{
  if (a1 > 0x1E)
  {
    return 0;
  }

  else
  {
    return off_1E8080060[a1];
  }
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return getLengthOfParameters(a2, a3, &a11);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a10 = 0;
  a11 = 0;

  return DeserializeRequirement(v22 + v24, v23 - v24, &a11, &a10, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

void *OUTLINED_FUNCTION_9_3()
{

  return acm_mem_alloc_typed(0x14uLL, 0x1000040A86A77D5uLL);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{

  return [a10 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  a9 = *v22 - v25;
  v29 = *(v27 + 8 * v26);

  SerializeRequirement(v24, v29, v23 + v25, &a9, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;

  return crypto_generateKeyFromSharedInfo(v14, a4, a5, a2, a3, a8, &a13);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

BOOL OUTLINED_FUNCTION_1_4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_1_7()
{

  return memcmp(v1, v0, 0x20uLL);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = 0;
  *a4 = 24;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id *OUTLINED_FUNCTION_0_9(void *a1)
{

  return [(SBFPhysicalButtonSceneTarget *)v1 _initWithScene:v2 sceneIdentity:v3 targetsByButton:a1];
}

uint64_t OUTLINED_FUNCTION_0_10(void *a1, rsize_t __n)
{

  return memset_s(a1, __n, 0, __n);
}

uint64_t OUTLINED_FUNCTION_0_11@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return serializeParameters(v4, v3, v2, &a2);
}

__n128 OUTLINED_FUNCTION_12_0(__n128 *a1, uint64_t a2, __n128 *a3, _DWORD *a4)
{
  result = *a1;
  *a3 = *a1;
  *a4 = a1[1].n128_u32[0];
  return result;
}

void *SBFSafeProtocolCast(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:a1])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t a1, void *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return [a2 countByEnumeratingWithState:va objects:va1 count:16];
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1, void *a2)
{
  result = 0;
  *a2 = 16;
  return result;
}

void OUTLINED_FUNCTION_3_2(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  bzero(&a9 - a2, a2);
}

id SBFAudioCategoriesDisablingVolumeHUDUnion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    if ([v3 count])
    {
      if ([v5 count])
      {
        v6 = [v3 setByAddingObjectsFromSet:v5];
      }

      else
      {
        v6 = v5;
      }
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
    }

    v6 = v7;
  }

  v8 = v6;

  return v8;
}

__n128 OUTLINED_FUNCTION_17_0@<Q0>(unsigned __int32 a1@<W1>, unsigned __int32 a2@<W2>, __n128 *a3@<X3>, void *a4@<X4>, __n128 *a5@<X8>)
{
  result = *a5;
  *a3 = *a5;
  a3[1].n128_u32[0] = a1;
  a3[1].n128_u32[1] = a2;
  *a4 = 24;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1, char a2, uint64_t a3, uint64_t a4, size_t a5)
{

  return performCommand(a1, a2, 0, v5, a5, 0, 0);
}

id SBLogKeyWindow()
{
  if (SBLogKeyWindow_onceToken != -1)
  {
    SBLogKeyWindow_cold_1();
  }

  v1 = SBLogKeyWindow___logObj;

  return v1;
}

uint64_t (*_get_MKBGetDeviceLockStateInfo())(uint64_t a1)
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19C8];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBGetDeviceLockStateInfoSymbolLoc = get_LAMKBGetDeviceLockStateInfoSymbolLoc(), v1 = __LAMKBGetDeviceLockStateInfo, !LAMKBGetDeviceLockStateInfoSymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBGetDeviceLockStateInfo_cold_1();
      }

      return MEMORY[0x1E69B19C8];
    }
  }

  return v1;
}

double SBFRectRoundForScale(double a1, double a2, double a3, double a4, double a5)
{
  v9 = SBFFloatRoundForScale(a1, a5);
  SBFFloatRoundForScale(a2, a5);
  SBFFloatRoundForScale(a3, a5);
  SBFFloatRoundForScale(a4, a5);
  return v9;
}

double SBFFloatRoundForScale(double a1, double a2)
{
  v2 = a2;
  if (fabs(a2) < 2.22044605e-16)
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    v2 = v5;
  }

  return round(v2 * a1) / v2;
}

void sub_1BEA1775C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

id _SBFLoggingMethodProem(void *a1, int a2)
{
  v3 = a1;
  v4 = _NSFullMethodName();
  v5 = v4;
  if (a2)
  {
    v6 = [v4 rangeOfString:@" "];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      v8 = MEMORY[0x1E696AEC0];
      v9 = [v5 substringToIndex:v6];
      v10 = [v5 substringFromIndex:v7 + 1];
      v11 = [v8 stringWithFormat:@"%@ (%p) %@", v9, v3, v10];

      v5 = v11;
    }
  }

  return v5;
}

uint64_t _SBFCGBitmapImageCreate(int64_t a1, CGColorSpace *a2, void *a3, void *a4, void *a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v50 = a5;
  context = objc_autoreleasePoolPush();
  v17 = vcvtpd_u64_f64(a6 * a8);
  v18 = vcvtpd_u64_f64(a7 * a8);
  v19 = _SBFGraphicsContextComponentsCountForType(a1);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  DeviceRGB = 0;
  v22 = 0;
  v51 = AlignedBytesPerRow * v18;
  if (a1 <= 1)
  {
    if (a1)
    {
      v55 = 0;
      if (a1 != 1)
      {
        goto LABEL_24;
      }

      if (a2)
      {
        DeviceRGB = CGColorSpaceRetain(a2);
        v23 = 6;
LABEL_20:
        v55 = v23;
        v22 = 0x2000;
        goto LABEL_24;
      }

      v24 = 6;
    }

    else
    {
      if (a2)
      {
        DeviceRGB = CGColorSpaceRetain(a2);
        v23 = 2;
        goto LABEL_20;
      }

      v24 = 2;
    }

    v55 = v24;
    v22 = 0x2000;
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    goto LABEL_24;
  }

  if (a1 == 2)
  {
    if (a2)
    {
      _SBFCGBitmapImageCreate_cold_3();
    }

    v55 = 1;
    DeviceRGB = CGColorSpaceCreateDeviceGray();
    v22 = 0;
  }

  else if (a1 == 3)
  {
    if (a2)
    {
      _SBFCGBitmapImageCreate_cold_2();
    }

    DeviceRGB = CGColorSpaceCreateDeviceGray();
    v22 = 0;
    v55 = 0;
  }

  else
  {
    v55 = 0;
    if (a1 == 4)
    {
      if (a2)
      {
        _SBFCGBitmapImageCreate_cold_1();
      }

      v22 = 0;
      DeviceRGB = 0;
      v55 = 7;
    }
  }

LABEL_24:
  v54 = v15;
  if (v15)
  {
    space = v22;
    v25 = v19;
    v26 = v18;
    v27 = v17;
    v28 = AlignedBytesPerRow;
    v29 = [v15 slotLength];
    if (v51 > v29)
    {
      v41 = v29;
      v46 = [MEMORY[0x1E696AAA8] currentHandler];
      [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UIImage *_SBFCGBitmapImageCreate(CGSize, CGFloat, SBFGraphicsContextType, CGColorSpaceRef, CPMemoryPool *__strong, __strong SBFGraphicsDrawBlock, __strong SBFGraphicsCreateImageBlock)"}];
      v42 = v48 = v16;
      SBFGraphicsContextTypeDescription(a1);
      v44 = v43 = DeviceRGB;
      v58.width = a6;
      v58.height = a7;
      v45 = NSStringFromCGSize(v58);
      [v46 handleFailureInFunction:v42 file:@"SBFImageUtilities.m" lineNumber:704 description:{@"requested slot length (%zd) larger than maximum slotLength (%zd), not large enough for %@ context with dimensions %@ @%fx", v51, v41, v44, v45, *&a8}];

      DeviceRGB = v43;
      v16 = v48;
    }

    Data = CGBitmapAllocateData();
    AlignedBytesPerRow = v28;
    v17 = v27;
    v18 = v26;
    v19 = v25;
    v22 = space;
  }

  else
  {
    Data = 0;
  }

  spacea = DeviceRGB;
  v31 = CGBitmapContextCreate(Data, v17, v18, 8uLL, AlignedBytesPerRow, DeviceRGB, v55 | v22);
  v59.size.width = v17;
  v59.origin.x = 0.0;
  v59.origin.y = 0.0;
  v59.size.height = v18;
  CGContextClearRect(v31, v59);
  if (v16)
  {
    CGContextTranslateCTM(v31, 0.0, v18);
    CGContextScaleCTM(v31, a8, -a8);
    CGContextGetCTM(&v56, v31);
    CGContextSetBaseCTM();
    UIGraphicsPushContext(v31);
    v16[2](v16);
    UIGraphicsPopContext();
  }

  if (Data)
  {
    v32 = AlignedBytesPerRow;
    v47 = v16;
    v33 = 8 * v19;
    v34 = [v54 nextSlotWithBytes:Data length:v51];
    v35 = CGDataProviderCreateWithCFData(v34);
    if (a1 == 4)
    {
      *&v56.a = xmmword_1BEAD3F60;
      v36 = CGImageMaskCreate(v17, v18, 8uLL, v33, v32, v35, &v56.a, 0);
    }

    else
    {
      v36 = CGImageCreate(v17, v18, 8uLL, v33, v32, spacea, v55 | v22, v35, 0, 0, kCGRenderingIntentDefault);
    }

    Image = v36;
    CGDataProviderRelease(v35);
    CGBitmapFreeData();

    v16 = v47;
  }

  else
  {
    Image = CGBitmapContextCreateImage(v31);
  }

  if (v50)
  {
    v38 = v50[2](v50, Image, 0, a8);
  }

  else
  {
    v38 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image scale:0 orientation:a8];
  }

  v39 = v38;
  CGImageRelease(Image);
  CGColorSpaceRelease(spacea);
  CGContextRelease(v31);
  objc_autoreleasePoolPop(context);

  return v39;
}

uint64_t _SBFGraphicsContextComponentsCountForType(unint64_t a1)
{
  if (a1 < 5)
  {
    return qword_1BEAD3F38[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"size_t _SBFGraphicsContextComponentsCountForType(SBFGraphicsContextType)"];
  v5 = SBFGraphicsContextTypeDescription(a1);
  [v3 handleFailureInFunction:v4 file:@"SBFImageUtilities.m" lineNumber:652 description:{@"unrecognized type=%@", v5}];

  return 0;
}

void sub_1BEA190CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _SBF_Private_IsD94Like()
{
  if (_SBF_Private_IsD94Like_onceToken != -1)
  {
    _SBF_Private_IsD94Like_cold_1();
  }

  return _SBF_Private_IsD94Like_isD94Like;
}

uint64_t _SBF_Private_IsD64Like()
{
  if (_SBF_Private_IsD64Like_onceToken != -1)
  {
    _SBF_Private_IsD64Like_cold_1();
  }

  return _SBF_Private_IsD64Like_isD64Like;
}

double _SBFLockScreenFloatFloorForMainScreenScale(double a1)
{
  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v2 scale];
  v4 = v3;

  return floor(v4 * a1) / v4;
}

double SBFMainScreenScale()
{
  if (SBFMainScreenScale___once != -1)
  {
    SBFMainScreenScale_cold_1();
  }

  return *&SBFMainScreenScale___mainScreenScale;
}

uint64_t _SBFLockScreenDateViewShouldRoundFramesForAlignmentPercent()
{
  if (BSFloatEqualToFloat() & 1) != 0 || (BSFloatEqualToFloat())
  {
    return 1;
  }

  return BSFloatEqualToFloat();
}

void __SBFIsReducedQualityDevice_block_invoke()
{
  v1 = MGGetStringAnswer();
  if ([v1 isEqualToString:@"t8010"])
  {
    v0 = 1;
  }

  else
  {
    v0 = [v1 isEqualToString:@"t8011"];
  }

  SBFIsReducedQualityDevice_isReducedQualityDevice = v0;
}

uint64_t SBFEffectiveArtworkSubtype()
{
  if (SBFEffectiveArtworkSubtype_onceToken != -1)
  {
    SBFEffectiveArtworkSubtype_cold_1();
  }

  return SBFEffectiveArtworkSubtype_deviceSubtype;
}

uint64_t __SBFEffectiveArtworkSubtype_block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFDictionaryGetValue(v0, @"ArtworkDeviceSubType");
    v3 = v2;
    if (v2)
    {
      SBFEffectiveArtworkSubtype_deviceSubtype = [v2 intValue];
    }

    CFRelease(v1);
  }

  result = [MEMORY[0x1E699FAB8] isEmulatedDevice];
  if (result)
  {
    result = [MEMORY[0x1E699FAB8] emulatedArtworkSubtype];
    if (result >= 1)
    {
      SBFEffectiveArtworkSubtype_deviceSubtype = result;
    }
  }

  return result;
}

uint64_t SBCopyCharacterUSetWithPattern(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  [a1 cStringUsingEncoding:10];
  v1 = uset_openPattern();
  MEMORY[0x1BFB4DC70](v1);
  return v1;
}

uint64_t (*_get_MKBDeviceLockAssertion())(uint64_t a1, uint64_t a2)
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B1998];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBDeviceLockAssertionSymbolLoc = get_LAMKBDeviceLockAssertionSymbolLoc(), v1 = __LAMKBDeviceLockAssertion, !LAMKBDeviceLockAssertionSymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBDeviceLockAssertion_cold_1();
      }

      return MEMORY[0x1E69B1998];
    }
  }

  return v1;
}

uint64_t (*_get_MKBUnlockDevice())(uint64_t a1, uint64_t a2)
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B1A00];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBUnlockDeviceSymbolLoc = get_LAMKBUnlockDeviceSymbolLoc(), v1 = __LAMKBUnlockDevice, !LAMKBUnlockDeviceSymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBUnlockDevice_cold_1();
      }

      return MEMORY[0x1E69B1A00];
    }
  }

  return v1;
}

BOOL SBFIsShellSceneKitAvailable()
{
  v0 = atomic_load(__ShellSceneKitStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBShellSceneKit", 0, __ShellSceneKitStorage, ShellSceneKitDefaultValueFunction) != 0;
  }
}

void sub_1BEA23670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEA23918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBFStringForBSInterfaceOrientationMask(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"none";
    goto LABEL_11;
  }

  v1 = a1;
  if (a1 == 30)
  {
    v2 = @"All";
    goto LABEL_11;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if ((v1 & 2) != 0)
  {
    [v3 addObject:@"Pu"];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 8) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      [v4 addObject:@"Lr"];
      if ((v1 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((v1 & 0x10) == 0)
  {
    goto LABEL_7;
  }

  [v4 addObject:@"Ll"];
  if ((v1 & 8) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v1 & 4) != 0)
  {
LABEL_9:
    [v4 addObject:@"Pd"];
  }

LABEL_10:
  v2 = [v4 componentsJoinedByString:{@", "}];

LABEL_11:

  return v2;
}

__CFString *SBFStringForBSInterfaceOrientation(uint64_t a1)
{
  if (a1)
  {
    v2 = SBFStringForBSInterfaceOrientationMask((1 << a1) & 0x1E);
  }

  else
  {
    v2 = @"unknown";
  }

  return v2;
}

id SBLogTailspinSignposts()
{
  if (SBLogTailspinSignposts_onceToken != -1)
  {
    SBLogTailspinSignposts_cold_1();
  }

  v1 = SBLogTailspinSignposts___logObj;

  return v1;
}

__CFString *SBWakeLoggerSourceDescription(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      return @"LOCK_BUTTON";
    }

    if (a1 != 5)
    {
      if (a1 == 34)
      {
        return @"MOUSE_BUTTON";
      }

      return @"unknown";
    }

    return @"SMART_COVER";
  }

  else
  {
    if (a1 == 1)
    {
      return @"TOUCH";
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return @"HOME_BUTTON";
      }

      return @"unknown";
    }

    return @"LIFT";
  }
}

id SBLogLiveRendering()
{
  if (SBLogLiveRendering_onceToken != -1)
  {
    SBLogLiveRendering_cold_1();
  }

  v1 = SBLogLiveRendering___logObj;

  return v1;
}

void sub_1BEA26280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEA26418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEA265C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEA27008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CoreTelephonyLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __CoreTelephonyLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E807F048;
    v4 = 0;
    CoreTelephonyLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreTelephonyLibraryCore_frameworkLibrary;
  if (!CoreTelephonyLibraryCore_frameworkLibrary)
  {
    CoreTelephonyLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __CoreTelephonyLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreTelephonyLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getkCTBasebandSettingsEraseEFSSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CoreTelephonyLibrary();
  result = dlsym(v2, "kCTBasebandSettingsEraseEFS");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCTBasebandSettingsEraseEFSSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SecurityLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SecurityLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getIDSHardDeregisterSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!IDSLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __IDSLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E807F098;
    v6 = 0;
    IDSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = IDSLibraryCore_frameworkLibrary;
  if (!IDSLibraryCore_frameworkLibrary)
  {
    __getIDSHardDeregisterSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "IDSHardDeregister");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIDSHardDeregisterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IDSLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IDSLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAKUnregisterAllAppleIDsSymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AuthKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E807F0B0;
    v6 = 0;
    AuthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AuthKitLibraryCore_frameworkLibrary;
  if (!AuthKitLibraryCore_frameworkLibrary)
  {
    __getAKUnregisterAllAppleIDsSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "AKUnregisterAllAppleIDs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAKUnregisterAllAppleIDsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AuthKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AuthKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1BEA280B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CellularLoggingLibraryCore()
{
  if (!CellularLoggingLibraryCore_frameworkLibrary)
  {
    CellularLoggingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return CellularLoggingLibraryCore_frameworkLibrary;
}

uint64_t __CellularLoggingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CellularLoggingLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCellularLoggingClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!CellularLoggingLibraryCore())
  {
    __getCellularLoggingClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("CellularLogging");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCellularLoggingClass_block_invoke_cold_1();
  }

  getCellularLoggingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __SBFHandleRemoteBasebandLoggingStatusChanged_block_invoke()
{
  v0 = +[SBFRemoteBasebandLoggingManager sharedInstance];
  [v0 _notifyObservers];
}

uint64_t (*_get_MKBLockDevice())(uint64_t a1)
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19F0];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBLockDeviceSymbolLoc = get_LAMKBLockDeviceSymbolLoc(), v1 = __LAMKBLockDevice, !LAMKBLockDeviceSymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBLockDevice_cold_1();
      }

      return MEMORY[0x1E69B19F0];
    }
  }

  return v1;
}

uint64_t __LAMKBLockDevice(uint64_t a1)
{
  LAMKBLockDeviceSymbolLoc = get_LAMKBLockDeviceSymbolLoc();
  if (!LAMKBLockDeviceSymbolLoc)
  {
    __LAMKBLockDevice_cold_1();
  }

  return LAMKBLockDeviceSymbolLoc(a1);
}

uint64_t __LAMKBUnlockDevice(uint64_t a1, uint64_t a2)
{
  LAMKBUnlockDeviceSymbolLoc = get_LAMKBUnlockDeviceSymbolLoc();
  if (!LAMKBUnlockDeviceSymbolLoc)
  {
    __LAMKBUnlockDevice_cold_1();
  }

  return LAMKBUnlockDeviceSymbolLoc(a1, a2);
}

uint64_t (*_get_MKBGetDeviceConfigurations())(uint64_t a1)
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19B8];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBGetDeviceConfigurationsSymbolLoc = get_LAMKBGetDeviceConfigurationsSymbolLoc(), v1 = __LAMKBGetDeviceConfigurations, !LAMKBGetDeviceConfigurationsSymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBGetDeviceConfigurations_cold_1();
      }

      return MEMORY[0x1E69B19B8];
    }
  }

  return v1;
}

uint64_t __LAMKBGetDeviceConfigurations(uint64_t a1)
{
  LAMKBGetDeviceConfigurationsSymbolLoc = get_LAMKBGetDeviceConfigurationsSymbolLoc();
  if (!LAMKBGetDeviceConfigurationsSymbolLoc)
  {
    __LAMKBGetDeviceConfigurations_cold_1();
  }

  return LAMKBGetDeviceConfigurationsSymbolLoc(a1);
}

uint64_t (*_get_MKBGetDeviceLockState())(uint64_t a1)
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19C0];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBGetDeviceLockStateSymbolLoc = get_LAMKBGetDeviceLockStateSymbolLoc(), v1 = __LAMKBGetDeviceLockState, !LAMKBGetDeviceLockStateSymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBGetDeviceLockState_cold_1();
      }

      return MEMORY[0x1E69B19C0];
    }
  }

  return v1;
}

uint64_t __LAMKBGetDeviceLockState(uint64_t a1)
{
  LAMKBGetDeviceLockStateSymbolLoc = get_LAMKBGetDeviceLockStateSymbolLoc();
  if (!LAMKBGetDeviceLockStateSymbolLoc)
  {
    __LAMKBGetDeviceLockState_cold_1();
  }

  return LAMKBGetDeviceLockStateSymbolLoc(a1);
}

uint64_t __LAMKBGetDeviceLockStateInfo(uint64_t a1)
{
  LAMKBGetDeviceLockStateInfoSymbolLoc = get_LAMKBGetDeviceLockStateInfoSymbolLoc();
  if (!LAMKBGetDeviceLockStateInfoSymbolLoc)
  {
    __LAMKBGetDeviceLockStateInfo_cold_1();
  }

  return LAMKBGetDeviceLockStateInfoSymbolLoc(a1);
}

uint64_t (*_get_MKBDeviceUnlockedSinceBoot())()
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19A0];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBDeviceUnlockedSinceBootSymbolLoc = get_LAMKBDeviceUnlockedSinceBootSymbolLoc(), v1 = __LAMKBDeviceUnlockedSinceBoot, !LAMKBDeviceUnlockedSinceBootSymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBDeviceUnlockedSinceBoot_cold_1();
      }

      return MEMORY[0x1E69B19A0];
    }
  }

  return v1;
}

uint64_t __LAMKBDeviceUnlockedSinceBoot()
{
  LAMKBDeviceUnlockedSinceBootSymbolLoc = get_LAMKBDeviceUnlockedSinceBootSymbolLoc();
  if (!LAMKBDeviceUnlockedSinceBootSymbolLoc)
  {
    __LAMKBDeviceUnlockedSinceBoot_cold_1();
  }

  return LAMKBDeviceUnlockedSinceBootSymbolLoc();
}

uint64_t __LAMKBDeviceLockAssertion(uint64_t a1, uint64_t a2)
{
  LAMKBDeviceLockAssertionSymbolLoc = get_LAMKBDeviceLockAssertionSymbolLoc();
  if (!LAMKBDeviceLockAssertionSymbolLoc)
  {
    __LAMKBDeviceLockAssertion_cold_1();
  }

  return LAMKBDeviceLockAssertionSymbolLoc(a1, a2);
}

uint64_t (*_get_MKBKeyBagKeyStashCreateWithOpts())(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19D8];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (v2 = get_LAMKBKeyBagKeyStashCreateWithOptsSymbolLoc(), v1 = __LAMKBKeyBagKeyStashCreateWithOpts, !v2))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBKeyBagKeyStashCreateWithOpts_cold_1();
      }

      return MEMORY[0x1E69B19D8];
    }
  }

  return v1;
}

uint64_t __LAMKBKeyBagKeyStashCreateWithOpts(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = get_LAMKBKeyBagKeyStashCreateWithOptsSymbolLoc();
  if (!v8)
  {
    __LAMKBKeyBagKeyStashCreateWithOpts_cold_1();
  }

  return v8(a1, a2, a3, a4);
}

uint64_t (*_get_MKBKeyBagKeyStashCommit())()
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19D0];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBKeyBagKeyStashCommitSymbolLoc = get_LAMKBKeyBagKeyStashCommitSymbolLoc(), v1 = __LAMKBKeyBagKeyStashCommit, !LAMKBKeyBagKeyStashCommitSymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBKeyBagKeyStashCommit_cold_1();
      }

      return MEMORY[0x1E69B19D0];
    }
  }

  return v1;
}

uint64_t __LAMKBKeyBagKeyStashCommit()
{
  LAMKBKeyBagKeyStashCommitSymbolLoc = get_LAMKBKeyBagKeyStashCommitSymbolLoc();
  if (!LAMKBKeyBagKeyStashCommitSymbolLoc)
  {
    __LAMKBKeyBagKeyStashCommit_cold_1();
  }

  return LAMKBKeyBagKeyStashCommitSymbolLoc();
}

uint64_t (*_get_MKBKeyBagKeyStashVerify())()
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19E0];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBKeyBagKeyStashVerifySymbolLoc = get_LAMKBKeyBagKeyStashVerifySymbolLoc(), v1 = __LAMKBKeyBagKeyStashVerify, !LAMKBKeyBagKeyStashVerifySymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBKeyBagKeyStashVerify_cold_1();
      }

      return MEMORY[0x1E69B19E0];
    }
  }

  return v1;
}

uint64_t __LAMKBKeyBagKeyStashVerify()
{
  LAMKBKeyBagKeyStashVerifySymbolLoc = get_LAMKBKeyBagKeyStashVerifySymbolLoc();
  if (!LAMKBKeyBagKeyStashVerifySymbolLoc)
  {
    __LAMKBKeyBagKeyStashVerify_cold_1();
  }

  return LAMKBKeyBagKeyStashVerifySymbolLoc();
}

uint64_t (*_get_MKBEventsRegister())(void *a1, void *a2)
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19A8];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBEventsRegisterSymbolLoc = get_LAMKBEventsRegisterSymbolLoc(), v1 = __LAMKBEventsRegister, !LAMKBEventsRegisterSymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBEventsRegister_cold_1();
      }

      return MEMORY[0x1E69B19A8];
    }
  }

  return v1;
}

uint64_t __LAMKBEventsRegister(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  LAMKBEventsRegisterSymbolLoc = get_LAMKBEventsRegisterSymbolLoc();
  if (!LAMKBEventsRegisterSymbolLoc)
  {
    __LAMKBEventsRegister_cold_1();
  }

  v6 = LAMKBEventsRegisterSymbolLoc(v3, v4);

  return v6;
}

uint64_t (*_get_MKBEventsUnregister())(uint64_t a1)
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19B0];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBEventsUnregisterSymbolLoc = get_LAMKBEventsUnregisterSymbolLoc(), v1 = __LAMKBEventsUnregister, !LAMKBEventsUnregisterSymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBEventsUnregister_cold_1();
      }

      return MEMORY[0x1E69B19B0];
    }
  }

  return v1;
}

uint64_t __LAMKBEventsUnregister(uint64_t a1)
{
  LAMKBEventsUnregisterSymbolLoc = get_LAMKBEventsUnregisterSymbolLoc();
  if (!LAMKBEventsUnregisterSymbolLoc)
  {
    __LAMKBEventsUnregister_cold_1();
  }

  return LAMKBEventsUnregisterSymbolLoc(a1);
}

uint64_t (*_get_MKBKeyBagPerformRecovery())(uint64_t a1, uint64_t a2)
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19E8];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBKeyBagPerformRecoverySymbolLoc = get_LAMKBKeyBagPerformRecoverySymbolLoc(), v1 = __LAMKBKeyBagPerformRecovery, !LAMKBKeyBagPerformRecoverySymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBKeyBagPerformRecovery_cold_1();
      }

      return MEMORY[0x1E69B19E8];
    }
  }

  return v1;
}

uint64_t __LAMKBKeyBagPerformRecovery(uint64_t a1, uint64_t a2)
{
  LAMKBKeyBagPerformRecoverySymbolLoc = get_LAMKBKeyBagPerformRecoverySymbolLoc();
  if (!LAMKBKeyBagPerformRecoverySymbolLoc)
  {
    __LAMKBKeyBagPerformRecovery_cold_1();
  }

  return LAMKBKeyBagPerformRecoverySymbolLoc(a1, a2);
}

uint64_t (*_get_MKBPrewarmSPS())(uint64_t a1)
{
  v0 = _os_feature_enabled_impl();
  v1 = MEMORY[0x1E69B19F8];
  if (v0)
  {
    if (!LocalAuthenticationLibraryCore() || (LAMKBPrewarmSPSSymbolLoc = get_LAMKBPrewarmSPSSymbolLoc(), v1 = __LAMKBPrewarmSPS, !LAMKBPrewarmSPSSymbolLoc))
    {
      v3 = SBLogAuthenticationKeybag();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        _get_MKBPrewarmSPS_cold_1();
      }

      return MEMORY[0x1E69B19F8];
    }
  }

  return v1;
}

uint64_t __LAMKBPrewarmSPS(uint64_t a1)
{
  LAMKBPrewarmSPSSymbolLoc = get_LAMKBPrewarmSPSSymbolLoc();
  if (!LAMKBPrewarmSPSSymbolLoc)
  {
    __LAMKBPrewarmSPS_cold_1();
  }

  return LAMKBPrewarmSPSSymbolLoc(a1);
}

void sub_1BEA2BE4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEA2D1FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t LocalAuthenticationLibraryCore()
{
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    LocalAuthenticationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return LocalAuthenticationLibraryCore_frameworkLibrary;
}

uint64_t get_LAMKBLockDeviceSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBLockDeviceSymbolLoc_ptr;
  v6 = get_LAMKBLockDeviceSymbolLoc_ptr;
  if (!get_LAMKBLockDeviceSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBLockDevice");
    get_LAMKBLockDeviceSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2DDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LocalAuthenticationLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t LocalAuthenticationLibrary()
{
  v1 = 0;
  result = LocalAuthenticationLibraryCore();
  if (!result)
  {
    LocalAuthenticationLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t get_LAMKBUnlockDeviceSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBUnlockDeviceSymbolLoc_ptr;
  v6 = get_LAMKBUnlockDeviceSymbolLoc_ptr;
  if (!get_LAMKBUnlockDeviceSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBUnlockDevice");
    get_LAMKBUnlockDeviceSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2DFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBGetDeviceConfigurationsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBGetDeviceConfigurationsSymbolLoc_ptr;
  v6 = get_LAMKBGetDeviceConfigurationsSymbolLoc_ptr;
  if (!get_LAMKBGetDeviceConfigurationsSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBGetDeviceConfigurations");
    get_LAMKBGetDeviceConfigurationsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2E134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBGetDeviceLockStateSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBGetDeviceLockStateSymbolLoc_ptr;
  v6 = get_LAMKBGetDeviceLockStateSymbolLoc_ptr;
  if (!get_LAMKBGetDeviceLockStateSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBGetDeviceLockState");
    get_LAMKBGetDeviceLockStateSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2E270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBGetDeviceLockStateInfoSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBGetDeviceLockStateInfoSymbolLoc_ptr;
  v6 = get_LAMKBGetDeviceLockStateInfoSymbolLoc_ptr;
  if (!get_LAMKBGetDeviceLockStateInfoSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBGetDeviceLockStateInfo");
    get_LAMKBGetDeviceLockStateInfoSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2E3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBDeviceUnlockedSinceBootSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  v6 = get_LAMKBDeviceUnlockedSinceBootSymbolLoc_ptr;
  if (!get_LAMKBDeviceUnlockedSinceBootSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBDeviceUnlockedSinceBoot");
    get_LAMKBDeviceUnlockedSinceBootSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2E4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBDeviceLockAssertionSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBDeviceLockAssertionSymbolLoc_ptr;
  v6 = get_LAMKBDeviceLockAssertionSymbolLoc_ptr;
  if (!get_LAMKBDeviceLockAssertionSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBDeviceLockAssertion");
    get_LAMKBDeviceLockAssertionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2E624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBKeyBagKeyStashCreateWithOptsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBKeyBagKeyStashCreateWithOptsSymbolLoc_ptr;
  v6 = get_LAMKBKeyBagKeyStashCreateWithOptsSymbolLoc_ptr;
  if (!get_LAMKBKeyBagKeyStashCreateWithOptsSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBKeyBagKeyStashCreateWithOpts");
    get_LAMKBKeyBagKeyStashCreateWithOptsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2E760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBKeyBagKeyStashCommitSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBKeyBagKeyStashCommitSymbolLoc_ptr;
  v6 = get_LAMKBKeyBagKeyStashCommitSymbolLoc_ptr;
  if (!get_LAMKBKeyBagKeyStashCommitSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBKeyBagKeyStashCommit");
    get_LAMKBKeyBagKeyStashCommitSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2E89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBKeyBagKeyStashVerifySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBKeyBagKeyStashVerifySymbolLoc_ptr;
  v6 = get_LAMKBKeyBagKeyStashVerifySymbolLoc_ptr;
  if (!get_LAMKBKeyBagKeyStashVerifySymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBKeyBagKeyStashVerify");
    get_LAMKBKeyBagKeyStashVerifySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2E9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBEventsRegisterSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBEventsRegisterSymbolLoc_ptr;
  v6 = get_LAMKBEventsRegisterSymbolLoc_ptr;
  if (!get_LAMKBEventsRegisterSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBEventsRegister");
    get_LAMKBEventsRegisterSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2EB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBEventsUnregisterSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBEventsUnregisterSymbolLoc_ptr;
  v6 = get_LAMKBEventsUnregisterSymbolLoc_ptr;
  if (!get_LAMKBEventsUnregisterSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBEventsUnregister");
    get_LAMKBEventsUnregisterSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2EC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBKeyBagPerformRecoverySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBKeyBagPerformRecoverySymbolLoc_ptr;
  v6 = get_LAMKBKeyBagPerformRecoverySymbolLoc_ptr;
  if (!get_LAMKBKeyBagPerformRecoverySymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBKeyBagPerformRecovery");
    get_LAMKBKeyBagPerformRecoverySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2ED8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t get_LAMKBPrewarmSPSSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_LAMKBPrewarmSPSSymbolLoc_ptr;
  v6 = get_LAMKBPrewarmSPSSymbolLoc_ptr;
  if (!get_LAMKBPrewarmSPSSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "_LAMKBPrewarmSPS");
    get_LAMKBPrewarmSPSSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1BEA2EEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SBFWindowForViewControllerTransition(void *a1)
{
  v1 = [a1 containerView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 window];
  }

  v3 = v2;

  return v3;
}

__CFString *SBFStringForAppearState(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"[Invalid]";
  }

  else
  {
    return off_1E807F340[a1];
  }
}

uint64_t SBFAudioCategoriesDisablingVolumeHUDIncludesCategory(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if ([v3 count])
    {
      v6 = [v3 containsObject:v5];
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

double SBFModificationDateForPath(void *a1)
{
  memset(&v3, 0, sizeof(v3));
  v1 = stat([a1 fileSystemRepresentation], &v3);
  result = 0.0;
  if (!v1)
  {
    return v3.st_mtimespec.tv_nsec / 1000000000.0 + v3.st_mtimespec.tv_sec + -978307200.0;
  }

  return result;
}

uint64_t SBFEnsureDirectoryExistsAtPath(void *a1)
{
  v1 = a1;
  v2 = mkdir([v1 fileSystemRepresentation], 0x1FFu);
  if (!v2 || v2 == -1 && *__error() == 17)
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [v4 createDirectoryAtPath:v1 withIntermediateDirectories:1 attributes:0 error:0];
  }

  return v3;
}

id SBFCachedNSHomeDirectory()
{
  if (SBFCachedNSHomeDirectory_sbf_once_token_0 != -1)
  {
    SBFCachedNSHomeDirectory_cold_1();
  }

  v1 = SBFCachedNSHomeDirectory_sbf_once_object_0;

  return v1;
}

void __SBFCachedNSHomeDirectory_block_invoke()
{
  v2 = NSHomeDirectory();
  v0 = [v2 copy];
  v1 = SBFCachedNSHomeDirectory_sbf_once_object_0;
  SBFCachedNSHomeDirectory_sbf_once_object_0 = v0;
}

id SBFCachesPathForSandboxPath(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = SBFCachedNSHomeDirectory();
  }

  v2 = [v1 stringByAppendingPathComponent:@"Library/Caches"];

  return v2;
}

void sub_1BEA32A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEA344C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  _Block_object_dispose(&a22, 8);
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEA357C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBUILegibilityLabelClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SpringBoardUIServicesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E807F4D8;
    v5 = 0;
    SpringBoardUIServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary)
  {
    __getSBUILegibilityLabelClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SBUILegibilityLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSBUILegibilityLabelClass_block_invoke_cold_1();
  }

  getSBUILegibilityLabelClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardUIServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SpringBoardUIServicesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCSProminentDisplayViewClass_block_invoke(uint64_t a1)
{
  CoverSheetKitLibrary();
  result = objc_getClass("CSProminentDisplayView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSProminentDisplayViewClass_block_invoke_cold_1();
  }

  getCSProminentDisplayViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CoverSheetKitLibrary()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!CoverSheetKitLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = __CoverSheetKitLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E807F4F0;
    v2 = 0;
    CoverSheetKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoverSheetKitLibraryCore_frameworkLibrary)
  {
    CoverSheetKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __CoverSheetKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoverSheetKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCSProminentLayoutControllerClass_block_invoke(uint64_t a1)
{
  CoverSheetKitLibrary();
  result = objc_getClass("CSProminentLayoutController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSProminentLayoutControllerClass_block_invoke_cold_1();
  }

  getCSProminentLayoutControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1BEA3D840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _SBFMachTimerInit(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex a4)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v8 = mk_timer_create();
  *a1 = v8;
  if (v8 && (context.version = 1, context.info = a1, memset(&context.retain, 0, 24), v9 = CFMachPortCreateWithPort(*MEMORY[0x1E695E480], v8, runloopCallback, &context, 0), (*(a1 + 8) = v9) != 0) && (RunLoopSource = CFMachPortCreateRunLoopSource(0, v9, a4), (*(a1 + 16) = RunLoopSource) != 0))
  {
    *(a1 + 24) = a2;
    *(a1 + 32) = a3;
    return 1;
  }

  else
  {
    _SBFMachTimerKill(a1);
    return 0;
  }
}

uint64_t _SBFMachTimerKill(unsigned int *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    CFRelease(*(a1 + 2));
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    CFMachPortInvalidate(v3);
    CFRelease(*(a1 + 1));
  }

  result = *a1;
  if (result)
  {
    mk_timer_cancel();
    v5 = *a1;

    return MEMORY[0x1EEE72AA0](v5);
  }

  return result;
}

void _SBFMachTimerAddToRunLoop(uint64_t a1, CFRunLoopRef rl, const __CFString *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRunLoopAddSource(rl, v3, a3);
  }
}

void _SBFMachTimerRemoveFromRunLoop(uint64_t a1, CFRunLoopRef rl, const __CFString *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    CFRunLoopRemoveSource(rl, v3, a3);
  }
}

uint64_t _SBFMachTimerArm(unsigned int *a1)
{
  result = *a1;
  if (result)
  {
    return MEMORY[0x1EEE72A88]();
  }

  return result;
}

uint64_t _SBFMachTimerCancel(mach_port_t *a1, int a2)
{
  result = *a1;
  if (result)
  {
    result = mk_timer_cancel();
    if (a2)
    {
      v5 = *a1;
      memset(v6, 0, sizeof(v6));
      v6[0].msgh_local_port = v5;
      v6[0].msgh_size = 48;
      return mach_msg(v6, 258, 0, 0x30u, v5, 0, 0);
    }
  }

  return result;
}

__CFString *NSStringFromSBFAuthenticationState(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E807F770[a1];
  }
}

void sub_1BEA3F050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEA3FD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BEA412BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEA415D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAAUIDeviceLocatorServiceClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AppleAccountUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E807F758;
    v5 = 0;
    AppleAccountUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppleAccountUILibraryCore_frameworkLibrary)
  {
    __getAAUIDeviceLocatorServiceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("AAUIDeviceLocatorService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAAUIDeviceLocatorServiceClass_block_invoke_cold_1();
  }

  getAAUIDeviceLocatorServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppleAccountUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppleAccountUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1BEA42004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void _SBFScreenTimeRegisterForExternalChangeNotification()
{
  if (_SBFScreenTimeRegisterForExternalChangeNotification___once != -1)
  {
    _SBFScreenTimeRegisterForExternalChangeNotification_cold_1();
  }
}

uint64_t _SBFScreenTimePostExternalChangeNotification(uint64_t state64)
{
  v1 = state64;
  LODWORD(state64) = _SBFScreenTimePostExternalChangeNotification_token;
  if (_SBFScreenTimePostExternalChangeNotification_token != -1 || (notify_register_check("com.apple.springboard.screenchanged", &_SBFScreenTimePostExternalChangeNotification_token), state64 = _SBFScreenTimePostExternalChangeNotification_token, _SBFScreenTimePostExternalChangeNotification_token != -1))
  {
    notify_set_state(state64, v1);

    return notify_post("com.apple.springboard.screenchanged");
  }

  return state64;
}

__CFString *_SBFScreenTimeNameForCategory(unsigned int a1)
{
  if (a1 > 0x13)
  {
    return 0;
  }

  else
  {
    return off_1E807F7F8[a1];
  }
}

uint64_t _SBFFeatureAvailabilityComputeBool(void *a1, int a2, unsigned __int8 *a3, uint64_t (*a4)(void))
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = atomic_load(a3);
  if (v8)
  {
    LOBYTE(v9) = v8 - 2;
  }

  else
  {
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [v10 objectForKey:v7];

    if (v11)
    {
      v12 = [v10 BOOLForKey:v7];
      v9 = v12;
      if (v12)
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      atomic_store(v13, a3);
      if (v12 != a2)
      {
        v14 = SBLogFeatureFlags();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = "NO";
          if (v9)
          {
            v15 = "YES";
          }

          v18 = 138412546;
          v19 = v7;
          v20 = 2080;
          v21 = v15;
          _os_log_impl(&dword_1BEA11000, v14, OS_LOG_TYPE_DEFAULT, "%@=%s", &v18, 0x16u);
        }
      }
    }

    else
    {
      if (a4)
      {
        v9 = a4();
      }

      else
      {
        v9 = a2;
      }

      if (v9)
      {
        v16 = 3;
      }

      else
      {
        v16 = 2;
      }

      atomic_store(v16, a3);
    }
  }

  return v9;
}

BOOL SBFIsChamoisExternalDisplayControllerAvailable()
{
  v0 = atomic_load(__ChamoisExternalDisplayControllerStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBChamoisExternalDisplayController", 0, __ChamoisExternalDisplayControllerStorage, ChamoisExternalDisplayControllerDefaultValueFunction) != 0;
  }
}

uint64_t ChamoisExternalDisplayControllerDefaultValueFunction()
{
  if (SBSupportedChamoisFeatures_onceToken != -1)
  {
    ChamoisExternalDisplayControllerDefaultValueFunction_cold_1();
  }

  if ((SBSupportedChamoisFeatures_sFeaturesMask & 2) == 0)
  {
    return 0;
  }

  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

uint64_t SBFTestWithChamoisExternalDisplayController(int a1, uint64_t a2)
{
  v2 = atomic_load(__ChamoisExternalDisplayControllerStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __ChamoisExternalDisplayControllerStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __ChamoisExternalDisplayControllerStorage);
  return result;
}

BOOL SBFIsChamoisWindowingUIAvailable()
{
  v0 = atomic_load(__ChamoisWindowingUIStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBChamoisWindowingUI", 0, __ChamoisWindowingUIStorage, ChamoisWindowingUIDefaultValueFunction) != 0;
  }
}

uint64_t ChamoisWindowingUIDefaultValueFunction()
{
  if (SBSupportedChamoisFeatures_onceToken != -1)
  {
    ChamoisExternalDisplayControllerDefaultValueFunction_cold_1();
  }

  if ((SBSupportedChamoisFeatures_sFeaturesMask & 1) == 0)
  {
    return 0;
  }

  if (_os_feature_enabled_impl() & 1) != 0 || (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

uint64_t SBFTestWithChamoisWindowingUI(int a1, uint64_t a2)
{
  v2 = atomic_load(__ChamoisWindowingUIStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __ChamoisWindowingUIStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __ChamoisWindowingUIStorage);
  return result;
}

BOOL SBFIsChamoisOverflowGestureAvailable()
{
  v0 = atomic_load(&__ChamoisOverflowGestureStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBChamoisOverflowGesture", 0, &__ChamoisOverflowGestureStorage, 0) != 0;
  }
}

uint64_t SBFTestWithChamoisOverflowGesture(int a1, uint64_t a2)
{
  v2 = atomic_load(&__ChamoisOverflowGestureStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, &__ChamoisOverflowGestureStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, &__ChamoisOverflowGestureStorage);
  return result;
}

BOOL SBFIsChamoisFullScreenToStripGroupOpacityAvailable()
{
  v0 = atomic_load(__ChamoisFullScreenToStripGroupOpacityStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBChamoisFullScreenToStripGroupOpacity", 0, __ChamoisFullScreenToStripGroupOpacityStorage, ChamoisFullScreenToStripGroupOpacityDefaultValueFunction) != 0;
  }
}

BOOL ChamoisFullScreenToStripGroupOpacityDefaultValueFunction()
{
  if (SBSupportedChamoisFeatures_onceToken != -1)
  {
    ChamoisExternalDisplayControllerDefaultValueFunction_cold_1();
  }

  return SBSupportedChamoisFeatures_sFeaturesMask == -1;
}

uint64_t SBFTestWithChamoisFullScreenToStripGroupOpacity(int a1, uint64_t a2)
{
  v2 = atomic_load(__ChamoisFullScreenToStripGroupOpacityStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __ChamoisFullScreenToStripGroupOpacityStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __ChamoisFullScreenToStripGroupOpacityStorage);
  return result;
}

BOOL SBFIsChamoisStripDisabledWhenHiddenAvailable()
{
  v0 = atomic_load(__ChamoisStripDisabledWhenHiddenStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBChamoisStripDisabledWhenHidden", 0, __ChamoisStripDisabledWhenHiddenStorage, ChamoisStripDisabledWhenHiddenDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithChamoisStripDisabledWhenHidden(int a1, uint64_t a2)
{
  v2 = atomic_load(__ChamoisStripDisabledWhenHiddenStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __ChamoisStripDisabledWhenHiddenStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __ChamoisStripDisabledWhenHiddenStorage);
  return result;
}

BOOL SBFIsFlexibleWindowingUIAvailable()
{
  v0 = atomic_load(__FlexibleWindowingUIStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBFlexibleWindowingUI", 0, __FlexibleWindowingUIStorage, FlexibleWindowingUIDefaultValueFunction) != 0;
  }
}

BOOL FlexibleWindowingUIDefaultValueFunction()
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 deviceClass] == 2;

  return v1;
}

uint64_t SBFTestWithFlexibleWindowingUI(int a1, uint64_t a2)
{
  v2 = atomic_load(__FlexibleWindowingUIStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __FlexibleWindowingUIStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __FlexibleWindowingUIStorage);
  return result;
}

BOOL SBFIsWindowFlatteningAvailable()
{
  v0 = atomic_load(__WindowFlatteningStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBWindowFlattening", 0, __WindowFlatteningStorage, WindowFlatteningDefaultValueFunction) != 0;
  }
}

uint64_t WindowFlatteningDefaultValueFunction()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

uint64_t SBFTestWithWindowFlattening(int a1, uint64_t a2)
{
  v2 = atomic_load(__WindowFlatteningStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __WindowFlatteningStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __WindowFlatteningStorage);
  return result;
}

uint64_t ShellSceneKitDefaultValueFunction()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return _os_feature_enabled_impl();
}

uint64_t SBFTestWithShellSceneKit(int a1, uint64_t a2)
{
  v2 = atomic_load(__ShellSceneKitStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __ShellSceneKitStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __ShellSceneKitStorage);
  return result;
}

BOOL SBFIsFullScreenLetterboxingAvailable()
{
  v0 = atomic_load(__FullScreenLetterboxingStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBFullScreenLetterboxing", 0, __FullScreenLetterboxingStorage, FullScreenLetterboxingDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithFullScreenLetterboxing(int a1, uint64_t a2)
{
  v2 = atomic_load(__FullScreenLetterboxingStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __FullScreenLetterboxingStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __FullScreenLetterboxingStorage);
  return result;
}

BOOL SBFIsOnenessAvailable()
{
  v0 = atomic_load(__OnenessStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBOneness", 0, __OnenessStorage, OnenessDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithOneness(int a1, uint64_t a2)
{
  v2 = atomic_load(__OnenessStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __OnenessStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __OnenessStorage);
  return result;
}

BOOL SBFIsOnenessHomeScreenEditingAvailable()
{
  v0 = atomic_load(__OnenessHomeScreenEditingStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBOnenessHomeScreenEditing", 0, __OnenessHomeScreenEditingStorage, OnenessHomeScreenEditingDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithOnenessHomeScreenEditing(int a1, uint64_t a2)
{
  v2 = atomic_load(__OnenessHomeScreenEditingStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __OnenessHomeScreenEditingStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __OnenessHomeScreenEditingStorage);
  return result;
}

BOOL SBFIsOnenessHomeScreenOnEmbeddedAvailable()
{
  v0 = atomic_load(__OnenessHomeScreenOnEmbeddedStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBOnenessHomeScreenOnEmbedded", 0, __OnenessHomeScreenOnEmbeddedStorage, OnenessHomeScreenOnEmbeddedDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithOnenessHomeScreenOnEmbedded(int a1, uint64_t a2)
{
  v2 = atomic_load(__OnenessHomeScreenOnEmbeddedStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __OnenessHomeScreenOnEmbeddedStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __OnenessHomeScreenOnEmbeddedStorage);
  return result;
}

BOOL SBFIsSlideOverAvailable()
{
  v0 = atomic_load(__SlideOverStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBSlideOver", 0, __SlideOverStorage, SlideOverDefaultValueFunction) != 0;
  }
}

BOOL SlideOverDefaultValueFunction()
{
  v0 = [MEMORY[0x1E698E730] sharedInstance];
  v1 = [v0 deviceClass] == 2;

  return v1;
}

uint64_t SBFTestWithSlideOver(int a1, uint64_t a2)
{
  v2 = atomic_load(__SlideOverStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __SlideOverStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __SlideOverStorage);
  return result;
}

BOOL SBFIsScreenLongevityAvailable()
{
  v0 = atomic_load(__ScreenLongevityStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBScreenLongevity", 0, __ScreenLongevityStorage, ScreenLongevityDefaultValueFunction) != 0;
  }
}

uint64_t ScreenLongevityDefaultValueFunction()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  return MGGetBoolAnswer();
}

uint64_t SBFTestWithScreenLongevity(int a1, uint64_t a2)
{
  v2 = atomic_load(__ScreenLongevityStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __ScreenLongevityStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __ScreenLongevityStorage);
  return result;
}

BOOL SBFIsSAEPersistentSiriAvailable()
{
  v0 = atomic_load(__SAEPersistentSiriStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBSAEPersistentSiri", 0, __SAEPersistentSiriStorage, SAEPersistentSiriDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithSAEPersistentSiri(int a1, uint64_t a2)
{
  v2 = atomic_load(__SAEPersistentSiriStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __SAEPersistentSiriStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __SAEPersistentSiriStorage);
  return result;
}

BOOL SBFIsControlCenterInOnenessAvailable()
{
  v0 = atomic_load(&__ControlCenterInOnenessStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBControlCenterInOneness", 0, &__ControlCenterInOnenessStorage, ControlCenterInOnenessDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithControlCenterInOneness(int a1, uint64_t a2)
{
  v2 = atomic_load(&__ControlCenterInOnenessStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, &__ControlCenterInOnenessStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, &__ControlCenterInOnenessStorage);
  return result;
}

BOOL SBFIsControlCenterInChamoisExtendedAvailable()
{
  v0 = atomic_load(__ControlCenterInChamoisExtendedStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBControlCenterInChamoisExtended", 0, __ControlCenterInChamoisExtendedStorage, ControlCenterInChamoisExtendedDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithControlCenterInChamoisExtended(int a1, uint64_t a2)
{
  v2 = atomic_load(__ControlCenterInChamoisExtendedStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __ControlCenterInChamoisExtendedStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __ControlCenterInChamoisExtendedStorage);
  return result;
}

BOOL SBFIsSwitcherForegroundAppsAvailable()
{
  v0 = atomic_load(__SwitcherForegroundAppsStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBSwitcherForegroundApps", 0, __SwitcherForegroundAppsStorage, SwitcherForegroundAppsDefaultValueFunction) != 0;
  }
}

uint64_t SwitcherForegroundAppsDefaultValueFunction()
{
  if (SBSupportedChamoisFeatures_onceToken != -1)
  {
    ChamoisExternalDisplayControllerDefaultValueFunction_cold_1();
  }

  if ((SBSupportedChamoisFeatures_sFeaturesMask & 1) == 0)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

uint64_t SBFTestWithSwitcherForegroundApps(int a1, uint64_t a2)
{
  v2 = atomic_load(__SwitcherForegroundAppsStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __SwitcherForegroundAppsStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __SwitcherForegroundAppsStorage);
  return result;
}

BOOL SBFIsSAEHungryHomeAffordanceAvailable()
{
  v0 = atomic_load(__SAEHungryHomeAffordanceStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBSAEHungryHomeAffordance", 0, __SAEHungryHomeAffordanceStorage, SAEHungryHomeAffordanceDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithSAEHungryHomeAffordance(int a1, uint64_t a2)
{
  v2 = atomic_load(__SAEHungryHomeAffordanceStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __SAEHungryHomeAffordanceStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __SAEHungryHomeAffordanceStorage);
  return result;
}

BOOL SBFIsSAETappyHomeAffordanceAvailable()
{
  v0 = atomic_load(__SAETappyHomeAffordanceStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBSAETappyHomeAffordance", 0, __SAETappyHomeAffordanceStorage, SAETappyHomeAffordanceDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithSAETappyHomeAffordance(int a1, uint64_t a2)
{
  v2 = atomic_load(__SAETappyHomeAffordanceStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __SAETappyHomeAffordanceStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __SAETappyHomeAffordanceStorage);
  return result;
}

BOOL SBFIsSAEIncreasedInsetAvailable()
{
  v0 = atomic_load(__SAEIncreasedInsetStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBSAEIncreasedInset", 0, __SAEIncreasedInsetStorage, SAEIncreasedInsetDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithSAEIncreasedInset(int a1, uint64_t a2)
{
  v2 = atomic_load(__SAEIncreasedInsetStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __SAEIncreasedInsetStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __SAEIncreasedInsetStorage);
  return result;
}

BOOL SBFAreMotionEffectsAvailable()
{
  v0 = atomic_load(__MotionEffectsStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBMotionEffects", 0, __MotionEffectsStorage, MotionEffectsDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithMotionEffects(int a1, uint64_t a2)
{
  v2 = atomic_load(__MotionEffectsStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, __MotionEffectsStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, __MotionEffectsStorage);
  return result;
}

BOOL SBFAreLightSourceMotionEffectsAvailable()
{
  v0 = atomic_load(&__LightSourceMotionEffectsStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBLightSourceMotionEffects", 0, &__LightSourceMotionEffectsStorage, LightSourceMotionEffectsDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithLightSourceMotionEffects(int a1, uint64_t a2)
{
  v2 = atomic_load(&__LightSourceMotionEffectsStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, &__LightSourceMotionEffectsStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, &__LightSourceMotionEffectsStorage);
  return result;
}

BOOL SBFIsDefaultParallaxMotionEffectAvailable()
{
  v0 = atomic_load(&__DefaultParallaxMotionEffectStorage);
  if (v0)
  {
    return v0 != 2;
  }

  else
  {
    return _SBFFeatureAvailabilityComputeBool(@"SBDefaultParallaxMotionEffect", 0, &__DefaultParallaxMotionEffectStorage, DefaultParallaxMotionEffectDefaultValueFunction) != 0;
  }
}

uint64_t SBFTestWithDefaultParallaxMotionEffect(int a1, uint64_t a2)
{
  v2 = atomic_load(&__DefaultParallaxMotionEffectStorage);
  if (a1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  atomic_store(v3, &__DefaultParallaxMotionEffectStorage);
  result = (*(a2 + 16))(a2);
  atomic_store(v2, &__DefaultParallaxMotionEffectStorage);
  return result;
}

uint64_t __SBSupportedChamoisFeatures_block_invoke()
{
  SBSupportedChamoisFeatures_sFeaturesMask = 0;
  if (!__sb__runningInSpringBoard())
  {
    v0 = [MEMORY[0x1E69DC938] currentDevice];
    v1 = [v0 userInterfaceIdiom];

    if (v1 != 1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (SBFEffectiveDeviceClass() == 2)
  {
LABEL_5:
    SBSupportedChamoisFeatures_sFeaturesMask |= 1uLL;
  }

LABEL_6:
  result = MGGetBoolAnswer();
  if (result)
  {
    SBSupportedChamoisFeatures_sFeaturesMask = -1;
  }

  return result;
}

__CFString *NSStringFromSBFAuthenticationAssertionType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E807F8C0[a1];
  }
}

__CFString *NSStringFromSBFIdleTimerMode(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E807F8D8[a1];
  }
}

__CFString *NSStringFromIdleTimerDuration(unint64_t a1)
{
  if (a1 > 0x12)
  {
    return @"(none)";
  }

  else
  {
    return off_1E807F8F8[a1];
  }
}

__CFString *NSStringFromIdleWarnMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(none)";
  }

  else
  {
    return off_1E807F990[a1];
  }
}

void sub_1BEA48618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BEA48924(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t _SBF_Private_IsN84OrSimilarDevice()
{
  if (_SBF_Private_IsN84OrSimilarDevice_onceToken != -1)
  {
    _SBF_Private_IsN84OrSimilarDevice_cold_1();
  }

  return _SBF_Private_IsN84OrSimilarDevice_isN84OrSimilarDevice;
}

uint64_t _SBF_Private_IsN84ZoomedOrSimilarDevice()
{
  if (_SBF_Private_IsN84ZoomedOrSimilarDevice_onceToken != -1)
  {
    _SBF_Private_IsN84ZoomedOrSimilarDevice_cold_1();
  }

  return _SBF_Private_IsN84ZoomedOrSimilarDevice_isN84Zoomed4OrSimilarDevice;
}

uint64_t _SBF_Private_IsD33OrSimilarDevice()
{
  if (_SBF_Private_IsD33OrSimilarDevice_onceToken != -1)
  {
    _SBF_Private_IsD33OrSimilarDevice_cold_1();
  }

  return _SBF_Private_IsD33OrSimilarDevice_isD33OrSimilarDevice;
}

uint64_t _SBF_Private_IsD52OrSimilarDevice()
{
  if (_SBF_Private_IsD52OrSimilarDevice_onceToken != -1)
  {
    _SBF_Private_IsD52OrSimilarDevice_cold_1();
  }

  return _SBF_Private_IsD52OrSimilarDevice_isD52OrSimilarDevice;
}

uint64_t _SBF_Private_IsD52ZoomedOrSimilarDevice()
{
  if (_SBF_Private_IsD52ZoomedOrSimilarDevice_onceToken != -1)
  {
    _SBF_Private_IsD52ZoomedOrSimilarDevice_cold_1();
  }

  return _SBF_Private_IsD52ZoomedOrSimilarDevice_isD52ZoomedOrSimilarDevice;
}

uint64_t _SBF_Private_IsD54()
{
  if (_SBF_Private_IsD54_onceToken != -1)
  {
    _SBF_Private_IsD54_cold_1();
  }

  return _SBF_Private_IsD54_isD54;
}

uint64_t _SBF_Private_IsD53()
{
  if (_SBF_Private_IsD53_onceToken != -1)
  {
    _SBF_Private_IsD53_cold_1();
  }

  return _SBF_Private_IsD53_isD53;
}

uint64_t _SBF_Private_IsD16()
{
  if (_SBF_Private_IsD16_onceToken != -1)
  {
    _SBF_Private_IsD16_cold_1();
  }

  return _SBF_Private_IsD16_isD16;
}

uint64_t _SBF_Private_IsD17()
{
  if (_SBF_Private_IsD17_onceToken != -1)
  {
    _SBF_Private_IsD17_cold_1();
  }

  return _SBF_Private_IsD17_isD17;
}

uint64_t _SBF_Private_IsD63()
{
  if (_SBF_Private_IsD63_onceToken != -1)
  {
    _SBF_Private_IsD63_cold_1();
  }

  return _SBF_Private_IsD63_isD63;
}

uint64_t _SBF_Private_IsD64()
{
  if (_SBF_Private_IsD64_onceToken != -1)
  {
    _SBF_Private_IsD64_cold_1();
  }

  return _SBF_Private_IsD64_isD64;
}

uint64_t _SBF_Private_IsV59()
{
  if (_SBF_Private_IsV59_onceToken != -1)
  {
    _SBF_Private_IsV59_cold_1();
  }

  return _SBF_Private_IsV59_isV59;
}

uint64_t _SBF_Private_IsD63Like()
{
  if (_SBF_Private_IsD63Like_onceToken != -1)
  {
    _SBF_Private_IsD63Like_cold_1();
  }

  return _SBF_Private_IsD63Like_isD63Like;
}

uint64_t _SBF_Private_IsD93Like()
{
  if (_SBF_Private_IsD93Like_onceToken != -1)
  {
    _SBF_Private_IsD93Like_cold_1();
  }

  return _SBF_Private_IsD93Like_isD93Like;
}

uint64_t _SBF_Private_IsD23Like()
{
  if (_SBF_Private_IsD23Like_onceToken != -1)
  {
    _SBF_Private_IsD23Like_cold_1();
  }

  return _SBF_Private_IsD23Like_isD23Like;
}

void sub_1BEA4C214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BEA4C488(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1BEA4C530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

id SBLogAnimation()
{
  if (SBLogAnimation_onceToken != -1)
  {
    SBLogAnimation_cold_1();
  }

  v1 = SBLogAnimation___logObj;

  return v1;
}

uint64_t __SBLogAnimation_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "Animation");
  v1 = SBLogAnimation___logObj;
  SBLogAnimation___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogWallpaper()
{
  if (SBLogWallpaper_onceToken != -1)
  {
    SBLogWallpaper_cold_1();
  }

  v1 = SBLogWallpaper___logObj;

  return v1;
}

uint64_t __SBLogWallpaper_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "Wallpaper");
  v1 = SBLogWallpaper___logObj;
  SBLogWallpaper___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __SBLogKeyWindow_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "KeyWindow");
  v1 = SBLogKeyWindow___logObj;
  SBLogKeyWindow___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __SBLogTailspinSignposts_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "TailspinSignposts");
  v1 = SBLogTailspinSignposts___logObj;
  SBLogTailspinSignposts___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogReusableViewCache()
{
  if (SBLogReusableViewCache_onceToken != -1)
  {
    SBLogReusableViewCache_cold_1();
  }

  v1 = SBLogReusableViewCache___logObj;

  return v1;
}

uint64_t __SBLogReusableViewCache_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "ReusableViewCache");
  v1 = SBLogReusableViewCache___logObj;
  SBLogReusableViewCache___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogWebClip()
{
  if (SBLogWebClip_onceToken != -1)
  {
    SBLogWebClip_cold_1();
  }

  v1 = SBLogWebClip___logObj;

  return v1;
}

uint64_t __SBLogWebClip_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "WebClip");
  v1 = SBLogWebClip___logObj;
  SBLogWebClip___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogCellularLogCollection()
{
  if (SBLogCellularLogCollection_onceToken != -1)
  {
    SBLogCellularLogCollection_cold_1();
  }

  v1 = SBLogCellularLogCollection___logObj;

  return v1;
}

uint64_t __SBLogCellularLogCollection_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "CellularLogCollection");
  v1 = SBLogCellularLogCollection___logObj;
  SBLogCellularLogCollection___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogFeatureFlags()
{
  if (SBLogFeatureFlags_onceToken != -1)
  {
    SBLogFeatureFlags_cold_1();
  }

  v1 = SBLogFeatureFlags___logObj;

  return v1;
}

uint64_t __SBLogFeatureFlags_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "FeatureFlags");
  v1 = SBLogFeatureFlags___logObj;
  SBLogFeatureFlags___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __SBLogLiveRendering_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "LiveRendering");
  v1 = SBLogLiveRendering___logObj;
  SBLogLiveRendering___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBLogSensitiveUI()
{
  if (SBLogSensitiveUI_onceToken != -1)
  {
    SBLogSensitiveUI_cold_1();
  }

  v1 = SBLogSensitiveUI___logObj;

  return v1;
}

uint64_t __SBLogSensitiveUI_block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69D4388], "SensitiveUI");
  v1 = SBLogSensitiveUI___logObj;
  SBLogSensitiveUI___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1BEA4DE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMTMaterialLayerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreMaterialLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreMaterialLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E807FF00;
    v5 = 0;
    CoreMaterialLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!CoreMaterialLibraryCore_frameworkLibrary)
  {
    __getMTMaterialLayerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("MTMaterialLayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMTMaterialLayerClass_block_invoke_cold_1();
  }

  getMTMaterialLayerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreMaterialLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreMaterialLibraryCore_frameworkLibrary = result;
  return result;
}

double SBFEffectiveDisplayCornerRadius()
{
  if (SBFEffectiveDisplayCornerRadius_onceToken != -1)
  {
    SBFEffectiveDisplayCornerRadius_cold_1();
  }

  return *&SBFEffectiveDisplayCornerRadius_displayCornerRadius;
}

uint64_t __SBFEffectiveDisplayCornerRadius_block_invoke()
{
  MGGetFloat32Answer();
  *&SBFEffectiveDisplayCornerRadius_displayCornerRadius = v0;
  result = [MEMORY[0x1E699FAB8] isEmulatedDevice];
  if (result)
  {
    result = [MEMORY[0x1E699FAB8] emulatedDisplayCornerRadius];
    if (v2 >= 0.0)
    {
      SBFEffectiveDisplayCornerRadius_displayCornerRadius = *&v2;
    }
  }

  return result;
}

void sub_1BEA4EB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(a12 + 8 * v12);

  return [v14 activationState];
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1)
{

  return [v1 addObject:a1];
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void machTimerCallback(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogStatusBarish();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_INFO, "_SBFMachTimer callback fired", v4, 2u);
  }

  [v2 _onMachTimer];
}

uint64_t SBFIsReducedQualityDevice()
{
  if (SBFIsReducedQualityDevice_onceToken != -1)
  {
    [UIDevice(SpringBoardFoundation) sbf_homeGrabberGraphicsQuality];
  }

  return SBFIsReducedQualityDevice_isReducedQualityDevice;
}

void sub_1BEA51684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double convertDampingRatioAndResponseToTensionAndFriction(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

double convertTensionAndFrictionToDampingRatioAndResponse(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double convertDampingMassAndStiffnessToDampingRatioAndResponse(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a5 / a4);
  if (a1)
  {
    result = result / a4 / (v5 + v5);
    *a1 = result;
  }

  if (a2)
  {
    result = 6.28318531 / v5;
    *a2 = 6.28318531 / v5;
  }

  return result;
}

void sub_1BEA55FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SBFImageNameModifierSuffix(int a1, double a2, double a3)
{
  if (a1)
  {
    v3 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v3 _referenceBounds];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v7 = a3;
    v5 = a2;
  }

  if (__sb__runningInSpringBoard())
  {
    v8 = SBFEffectiveDeviceClass();
    v9 = 320.0;
    v10 = 480.0;
    if (v8 != 2 || v5 == 320.0)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v11 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v11 userInterfaceIdiom] != 1)
  {

    v9 = 320.0;
    goto LABEL_12;
  }

  v9 = 320.0;
  if (v5 == 320.0)
  {
LABEL_12:
    *&v12 = 480.0;
    goto LABEL_13;
  }

LABEL_10:
  v9 = 768.0;
  *&v12 = 1024.0;
LABEL_13:
  v10 = *&v12;
LABEL_14:
  if (v5 == v9)
  {
    v13 = &stru_1F3D19FF0;
  }

  else
  {
    v13 = [&stru_1F3D19FF0 stringByAppendingFormat:@"-%.0fw", *&v5];
  }

  if (v7 != v10)
  {
    v14 = [(__CFString *)v13 stringByAppendingFormat:@"-%.0fh", *&v7];

    v13 = v14;
  }

  return v13;
}

id SBFModifiedImageNameForName(void *a1, int a2, double a3, double a4)
{
  v10 = a1;
  v11 = __sb__runningInSpringBoard();
  v12 = v11;
  if (v11)
  {
    if (!SBFEffectiveDeviceClass() || SBFEffectiveDeviceClass() == 1)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if (![v4 userInterfaceIdiom])
    {

      goto LABEL_31;
    }
  }

  v13 = __sb__runningInSpringBoard();
  if (v13)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v14 = 0;
      v15 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v6 userInterfaceIdiom] != 1)
    {
      v14 = 0;
      v15 = 1;
      goto LABEL_17;
    }
  }

  v15 = v13 ^ 1u;
  v16 = __sb__runningInSpringBoard();
  if (v16)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v29 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v29 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v17 >= *(MEMORY[0x1E69D4380] + 280))
  {
    v20 = 1;
    if ((v16 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  v14 = v16 ^ 1;
LABEL_17:
  v18 = __sb__runningInSpringBoard();
  v19 = v18;
  if (v18)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      v20 = a2 ^ 1;
      if (v14)
      {
        goto LABEL_36;
      }

LABEL_25:
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v5 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v5 userInterfaceIdiom] != 1)
    {
      v20 = a2 ^ 1;

      if (v14)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }
  }

  v28 = v14;
  v21 = v15;
  v30 = v6;
  v22 = __sb__runningInSpringBoard();
  v23 = v22;
  if (v22)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v15 _referenceBounds];
  }

  BSSizeRoundForScale();
  if (v27 >= *(MEMORY[0x1E69D4380] + 264))
  {
    v20 = 1;
    if (v23)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v20 = a2 ^ 1;
  if ((v23 & 1) == 0)
  {
LABEL_43:
  }

LABEL_44:
  LODWORD(v15) = v21;
  if (v19)
  {
    v6 = v30;
    if (!v28)
    {
      goto LABEL_25;
    }
  }

  else
  {

    v6 = v30;
    if ((v28 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_36:

  if (v15)
  {
LABEL_26:
  }

LABEL_27:
  if ((v12 & 1) == 0)
  {

    v24 = v10;
    if ((v20 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v24 = v10;
  if (v20)
  {
LABEL_31:
    v25 = SBFImageNameModifierSuffix(a2, a3, a4);
    v24 = [v10 stringByAppendingString:v25];
  }

LABEL_32:

  return v24;
}

id SBFModifiedFullscreenImageNameForName(void *a1)
{
  v1 = MEMORY[0x1E69DCEB0];
  v2 = a1;
  v3 = [v1 mainScreen];
  [v3 _referenceBounds];
  v6 = SBFModifiedImageNameForName(v2, 1, v4, v5);

  return v6;
}

__IOSurface *SBFCreateIOSurfaceForImage(void *a1, uint64_t *a2, int a3)
{
  v35[3] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (!a2)
  {
    SBFCreateIOSurfaceForImage_cold_1();
  }

  v6 = [v5 ioSurface];
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      *a2 = 0;
    }
  }

  else
  {
    [v5 scale];
    v9 = v8;
    [v5 size];
    v11 = v10;
    if (MEMORY[0x1BFB4CE10](*MEMORY[0x1E696D130]) >= vcvtpd_u64_f64(v9 * v12) && MEMORY[0x1BFB4CE10](*MEMORY[0x1E696CF58]) >= vcvtpd_u64_f64(v9 * v11))
    {
      v13 = [v5 CGImage];
      if (CGImageGetBitsPerComponent(v13) > 8)
      {
        goto LABEL_22;
      }

      CGImageGetWidth(v13);
      CGImageGetHeight(v13);
      if (!CGImageGetImageProvider())
      {
        goto LABEL_22;
      }

      v14 = *MEMORY[0x1E695E4D0];
      v15 = *MEMORY[0x1E695F288];
      if (a3)
      {
        v34[0] = *MEMORY[0x1E695F298];
        v34[1] = v15;
        v16 = *MEMORY[0x1E695F280];
        v35[0] = v14;
        v35[1] = v16;
        v34[2] = *MEMORY[0x1E695F290];
        v35[2] = v14;
        v17 = MEMORY[0x1E695DF20];
        v18 = v35;
        v19 = v34;
        v20 = 3;
      }

      else
      {
        v32[0] = *MEMORY[0x1E695F298];
        v32[1] = v15;
        v21 = *MEMORY[0x1E695F280];
        v33[0] = v14;
        v33[1] = v21;
        v17 = MEMORY[0x1E695DF20];
        v18 = v33;
        v19 = v32;
        v20 = 2;
      }

      v22 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
      v23 = CGImageProviderCopyImageBlockSetWithOptions();
      if (v23)
      {
        v24 = v23;
        CGImageBlockSetGetImageBlock();
        CGImageBlockGetBytesPerRow();
        CGImageBlockGetData();
        v7 = IOSurfaceWrapClientImage();
        *a2 = v24;
        ColorSpace = CGImageProviderGetColorSpace();
        if (ColorSpace)
        {
          v26 = ColorSpace;
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
          {
            v28 = CGColorSpaceCopyPropertyList(v26);
            if (v28)
            {
              v29 = v28;
              IOSurfaceSetValue(v7, *MEMORY[0x1E696CEE0], v28);
              CFRelease(v29);
            }
          }

          CGColorSpaceRelease(DeviceRGB);
        }
      }

      else
      {
        v7 = 0;
      }

      if (!v7)
      {
LABEL_22:
        MGGetBoolAnswer();
        [v5 size];
        [v5 scale];
        [v5 sbf_colorSpace];
        v31 = v5;
        v7 = BSUISurfaceWithColorSpaceAndDrawBlock();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

id __SBFCreateCroppedIOSurface(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  if (CGRectIsEmpty(v23) || (BSFloatLessThanOrEqualToFloat() & 1) != 0 || (BSFloatLessThanOrEqualToFloat() & 1) != 0)
  {
    v10 = 0;
    goto LABEL_5;
  }

  texture = 0;
  pixelBufferOut = 0;
  pixelTransferSessionOut = 0;
  v12 = *MEMORY[0x1E695E480];
  v13 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v9, 0, &pixelBufferOut);
  if (v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = pixelBufferOut == 0;
  }

  if (v14)
  {
    goto LABEL_17;
  }

  v13 = VTPixelTransferSessionCreate(v12, &pixelTransferSessionOut);
  if (v13 || pixelTransferSessionOut == 0)
  {
    goto LABEL_17;
  }

  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v24);
  IOSurfaceBackedCVPixelBufferWithAttributes = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983E40], DictionaryRepresentation);
  CFRelease(DictionaryRepresentation);
  if (IOSurfaceBackedCVPixelBufferWithAttributes)
  {
    goto LABEL_18;
  }

  v13 = VTSessionSetProperty(pixelTransferSessionOut, *MEMORY[0x1E6983DB0], *MEMORY[0x1E695E4D0]);
  if (v13)
  {
LABEL_17:
    IOSurfaceBackedCVPixelBufferWithAttributes = v13;
  }

  else
  {
    IOSurfaceGetPixelFormat(v9);
    IOSurfaceBackedCVPixelBufferWithAttributes = FigCreateIOSurfaceBackedCVPixelBufferWithAttributes();
    v16 = 0;
    if (IOSurfaceBackedCVPixelBufferWithAttributes || !texture)
    {
      goto LABEL_19;
    }

    IOSurfaceBackedCVPixelBufferWithAttributes = VTPixelTransferSessionTransferImage(pixelTransferSessionOut, pixelBufferOut, texture);
    if (!IOSurfaceBackedCVPixelBufferWithAttributes)
    {
      v16 = CVPixelBufferGetIOSurface(texture);
      goto LABEL_19;
    }
  }

LABEL_18:
  v16 = 0;
LABEL_19:
  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(texture);
  if (pixelTransferSessionOut)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSessionOut);
    CFRelease(pixelTransferSessionOut);
  }

  if (IOSurfaceBackedCVPixelBufferWithAttributes)
  {
    v10 = 0;
  }

  else
  {
    v10 = v16;
  }

LABEL_5:

  return v10;
}

id __sbfImageByApplyingColorSpace(void *a1, CGColorSpace *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [v3 CGImage];
  if (!v4)
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __sbfImageByApplyingColorSpace_cold_4(v3, v10, v11, v12, v13, v14, v15, v16);
    }

    goto LABEL_13;
  }

  v5 = v4;
  ColorSpace = CGImageGetColorSpace(v4);
  if (!ColorSpace)
  {
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __sbfImageByApplyingColorSpace_cold_3(v3, v10, v17, v18, v19, v20, v21, v22);
    }

LABEL_13:

    v23 = v3;
    goto LABEL_36;
  }

  v7 = ColorSpace;
  v8 = CGColorSpaceRetain(a2);
  if (v8)
  {
    goto LABEL_29;
  }

  Type = CGColorSpaceGetType();
  if (Type <= 1)
  {
    if (Type)
    {
      if (Type == 1)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

LABEL_21:
    DeviceGray = CGColorSpaceCreateDeviceGray();
    goto LABEL_23;
  }

  switch(Type)
  {
    case 2:
      goto LABEL_22;
    case 4:
      goto LABEL_16;
    case 3:
      goto LABEL_21;
  }

LABEL_17:
  if (!CGColorSpaceIsICCCompatible())
  {
    v26 = SBLogCommon();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __sbfImageByApplyingColorSpace_cold_1();
    }

    goto LABEL_27;
  }

  Model = CGColorSpaceGetModel(v7);
  if (Model != kCGColorSpaceModelCMYK)
  {
    if (Model != kCGColorSpaceModelRGB)
    {
      if (Model == kCGColorSpaceModelMonochrome)
      {
        goto LABEL_21;
      }

      v26 = SBLogCommon();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __sbfImageByApplyingColorSpace_cold_2(v7);
      }

LABEL_27:

LABEL_28:
      v8 = CGColorSpaceRetain(v7);
      goto LABEL_29;
    }

LABEL_16:
    DeviceGray = CGColorSpaceCreateDeviceRGB();
    goto LABEL_23;
  }

LABEL_22:
  DeviceGray = CGColorSpaceCreateDeviceCMYK();
LABEL_23:
  v8 = DeviceGray;
  if (!DeviceGray)
  {
    goto LABEL_28;
  }

LABEL_29:
  v23 = v3;
  if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
  {
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v5, v8);
    if (CopyWithColorSpace)
    {
      v28 = CopyWithColorSpace;
      v29 = objc_alloc(MEMORY[0x1E69DCAB8]);
      [v3 scale];
      v23 = [v29 initWithCGImage:v28 scale:objc_msgSend(v3 orientation:{"imageOrientation"), v30}];

      CFRelease(v28);
    }

    else
    {
      v31 = SBLogCommon();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v33 = 138412802;
        v34 = v8;
        v35 = 2112;
        v36 = v5;
        v37 = 2114;
        v38 = v7;
        _os_log_error_impl(&dword_1BEA11000, v31, OS_LOG_TYPE_ERROR, " [SBFImageColorSpaceUtilities] failed to create copy with colorSpace=%@ of original CGImage=%@ with colorSpace=%{public}@", &v33, 0x20u);
      }

      v23 = v3;
    }
  }

  CGColorSpaceRelease(v8);
LABEL_36:

  return v23;
}

__CFString *SBFGraphicsContextTypeDescription(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%d)", a1];
  }

  else
  {
    v2 = off_1E8080360[a1];
  }

  return v2;
}

void SBFPreheatImageData(void *a1)
{
  v1 = a1;
  if (SBFPreheatImageData_onceToken != -1)
  {
    SBFPreheatImageData_cold_1();
  }

  v2 = SBFPreheatImageData_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SBFPreheatImageData_block_invoke_2;
  block[3] = &unk_1E807F178;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void __SBFPreheatImageData_block_invoke()
{
  v4 = [MEMORY[0x1E698E698] concurrent];
  v0 = [v4 autoreleaseFrequency:1];
  v1 = [v0 serviceClass:25];
  v2 = BSDispatchQueueCreate();
  v3 = SBFPreheatImageData_dispatchQueue;
  SBFPreheatImageData_dispatchQueue = v2;
}

void __SBFPreheatImageData_block_invoke_2(uint64_t a1)
{
  DataProvider = CGImageGetDataProvider([*(a1 + 32) CGImage]);
  if (DataProvider)
  {
    v2 = CGDataProviderCopyData(DataProvider);
    if (v2)
    {
      v3 = v2;
      Length = CFDataGetLength(v2);
      if (Length >= 0x200000)
      {
        v6 = SBLogCommon();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __SBFPreheatImageData_block_invoke_2_cold_1(Length, v6, v7, v8, v9, v10, v11, v12);
        }
      }

      else
      {
        BytePtr = CFDataGetBytePtr(v3);
        madvise(BytePtr, Length, 3);
      }

      CFRelease(v3);
    }
  }
}

void releaseIOSurface(void *a1)
{
  [a1 unlockWithOptions:1 seed:0];
  [a1 decrementUseCount];
}

uint64_t SBFAngleForRotationFromInterfaceOrientationToInterfaceOrientation(uint64_t a1, uint64_t a2)
{
  v4 = _UIInterfaceOrientationRotationDirectionForRotationFromInterfaceOrientationToInterfaceOrientation();
  v5.n128_u64[0] = 0;
  v6.n128_u64[0] = 0;
  if (a1 != 1)
  {
    if (a1 == 3)
    {
      v6.n128_u64[0] = 0x3FF921FB54442D18;
    }

    else if (a1 == 4)
    {
      v6.n128_u64[0] = 0xBFF921FB54442D18;
    }

    else
    {
      v6.n128_u64[0] = 0x400921FB54442D18;
      if (a1 != 2)
      {
        v6.n128_f64[0] = 0.0;
      }
    }
  }

  if (a2 != 1)
  {
    if (a2 == 3)
    {
      v5.n128_u64[0] = 0x3FF921FB54442D18;
    }

    else if (a2 == 4)
    {
      v5.n128_u64[0] = 0xBFF921FB54442D18;
    }

    else
    {
      v5.n128_u64[0] = 0x400921FB54442D18;
      if (a2 != 2)
      {
        v5.n128_f64[0] = 0.0;
      }
    }
  }

  return MEMORY[0x1EEE4E198](v4, v6, v5);
}

uint64_t SBFFirstInterfaceOrientationInInterfaceOrientationMask(unint64_t a1)
{
  v1 = 4;
  v2 = 3;
  if ((a1 & 8) == 0)
  {
    v2 = (a1 >> 1) & 2;
  }

  if ((a1 & 0x10) == 0)
  {
    v1 = v2;
  }

  if ((a1 & 2) != 0)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t SBFInterfaceOrientationMaskForInterfaceOrientationPair(uint64_t a1)
{
  v1 = 24;
  if ((a1 - 3) >= 2)
  {
    v1 = 0;
  }

  if ((a1 - 1) >= 2)
  {
    return v1;
  }

  else
  {
    return 6;
  }
}

__CFString *SBFStringForBSDeviceOrientation(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_1E8080388[a1 - 1];
  }
}

__CFString *NSStringFromSBFCaptureApplicationLaunchTarget(uint64_t a1)
{
  if (a1)
  {
    return @"Extension";
  }

  else
  {
    return @"Application";
  }
}

void sub_1BEA5B3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SBFDashBoardPadPageInsetsMake(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, __int128 a10, uint64_t a11, uint64_t a12)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 48) = a8;
  *(a1 + 56) = a9;
  *(a1 + 64) = a10;
  *(a1 + 80) = a11;
  *(a1 + 88) = a12;
}

__CFString *SBScreenWakeStateDescription(uint64_t a1)
{
  v1 = @"unknown";
  if (a1 == 1)
  {
    v1 = @"sleep";
  }

  if (a1 == 2)
  {
    return @"awake";
  }

  else
  {
    return v1;
  }
}

void _SBFGetHSBAValuesForColor(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v10 = v9;
  if (CGColorGetNumberOfComponents([v10 CGColor]) == 2)
  {
    [v10 getWhite:a4 alpha:a5];
  }

  else
  {
    [v10 getHue:a2 saturation:a3 brightness:a4 alpha:a5];
  }
}

void _SBFGetRGBAValuesForColor(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = v9;
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (CGColorGetNumberOfComponents([v9 CGColor]) == 2)
  {
    v11 = 0;
    [v10 getWhite:&v11 alpha:a5];
    if (a2)
    {
      *a2 = v11;
    }

    if (a3)
    {
      *a3 = v11;
    }

    if (a4)
    {
      *a4 = v11;
    }
  }

  else
  {
    [v10 getRed:a2 green:a3 blue:a4 alpha:a5];
  }
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SBFGetCurrentMagnifyMode_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  [v10 size];
  if (v8 == *(a1 + 40) && v7 == *(a1 + 48))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __SBFGetMagnifyModes_block_invoke()
{
  v16[2] = *MEMORY[0x1E69E9840];
  v0 = MGCopyAnswer();
  if ([v0 hasPrefix:@"N56"])
  {
    v1 = [SBFMagnifyMode magnifyModeWithSize:@"Large" name:1242.0, 2208.0];
    v16[0] = v1;
    v2 = [SBFMagnifyMode magnifyModeWithSize:@"Medium" name:1125.0, 2001.0];
    v16[1] = v2;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v4 = SBFGetMagnifyModes_SBFMagnifyModes;
    SBFGetMagnifyModes_SBFMagnifyModes = v3;

    v5 = [SBFGetMagnifyModes_SBFMagnifyModes objectAtIndexedSubscript:1];
    v6 = v5;
    LODWORD(v7) = 1066225631;
  }

  else
  {
    if (![v0 hasPrefix:@"N61"])
    {
      v6 = [SBFMagnifyMode magnifyModeWithSize:@"Medium" name:640.0, 1136.0];
      v14 = v6;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
      v13 = SBFGetMagnifyModes_SBFMagnifyModes;
      SBFGetMagnifyModes_SBFMagnifyModes = v12;

      goto LABEL_7;
    }

    v8 = [SBFMagnifyMode magnifyModeWithSize:@"Medium" name:750.0, 1334.0];
    v15[0] = v8;
    v9 = [SBFMagnifyMode magnifyModeWithSize:@"Small" name:640.0, 1136.0];
    v15[1] = v9;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    v11 = SBFGetMagnifyModes_SBFMagnifyModes;
    SBFGetMagnifyModes_SBFMagnifyModes = v10;

    v5 = [SBFGetMagnifyModes_SBFMagnifyModes objectAtIndexedSubscript:1];
    v6 = v5;
    LODWORD(v7) = 1066795008;
  }

  [v5 setZoomFactor:v7];
LABEL_7:
}

__CFString *SBStringFromAnimationUpdateMode(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unspecified";
  }

  else
  {
    return off_1E8080608[a1 - 1];
  }
}

id SBCompletionBlockC2ToBS(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __SBCompletionBlockC2ToBS_block_invoke;
    v5[3] = &unk_1E8080528;
    v6 = v1;
    v3 = MEMORY[0x1BFB4D9B0](v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id SBCompletionBlockBSToC2(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __SBCompletionBlockBSToC2_block_invoke;
    v5[3] = &unk_1E80802C8;
    v6 = v1;
    v3 = MEMORY[0x1BFB4D9B0](v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *NSStringFromSBFWebClipSanitizationResult(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(Unknown SBFWebClipSanitizationResult)";
  }

  else
  {
    return off_1E8080640[a1];
  }
}

__CFString *NSStringFromSBFWebClipSanitizationError(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(Unknown SBFWebClipSanitizationError)";
  }

  else
  {
    return off_1E8080658[a1];
  }
}

__CFString *SBFStringForUIUserInterfaceStyle(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (%ld)", a1];
  }

  else
  {
    v2 = off_1E8080670[a1];
  }

  return v2;
}

id SBFFrameRateReasonString(uint64_t a1)
{
  v2 = SBFFrameRateReasonString___reasons;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a1];
  v4 = [v2 objectForKey:v3];

  if (!v4)
  {
    v5 = SBFFrameRateReasonString___reasons;
    if (!SBFFrameRateReasonString___reasons)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      v7 = SBFFrameRateReasonString___reasons;
      SBFFrameRateReasonString___reasons = v6;

      v5 = SBFFrameRateReasonString___reasons;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SpringBoard.%lu", a1];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a1];
    [v5 setObject:v8 forKey:v9];
  }

  v10 = SBFFrameRateReasonString___reasons;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a1];
  v12 = [v10 objectForKey:v11];

  return v12;
}

void sub_1BEA676D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

id SBFComposedColor(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v21 = 0.0;
  v22 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  if (([v5 getRed:&v22 green:&v21 blue:&v20 alpha:&v19] & 1) == 0)
  {
    v18 = 0.0;
    [v5 getWhite:&v18 alpha:&v19];
    v20 = v18;
    v21 = v18;
    v22 = v18;
  }

  v17 = 0.0;
  v18 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (([v6 getRed:&v18 green:&v17 blue:&v16 alpha:&v15] & 1) == 0)
  {
    v14 = 0.0;
    [v6 getWhite:&v14 alpha:&v15];
    v16 = v14;
    v17 = v14;
    v18 = v14;
  }

  if (a3)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBFComposedColor does not support blend mode %d. But you can add it!", a3];
    v12 = [v9 exceptionWithName:v10 reason:v11 userInfo:0];
    v13 = v12;

    objc_exception_throw(v12);
  }

  v7 = [MEMORY[0x1E69DC888] colorWithRed:((1.0 - v19) * (v15 * v18) + v22 * v19) / (v19 + v15 * (1.0 - v19)) green:((1.0 - v19) * (v15 * v17) + v21 * v19) / (v19 + v15 * (1.0 - v19)) blue:((1.0 - v19) * (v15 * v16) + v20 * v19) / (v19 + v15 * (1.0 - v19)) alpha:?];

  return v7;
}

void sub_1BEA67CC8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t SBWakeLoggerSourceFromBacklightChangeSource(uint64_t a1)
{
  if (a1 <= 8)
  {
    switch(a1)
    {
      case 2:
        return 3;
      case 3:
        return 4;
      case 7:
        return 5;
    }

    return 0;
  }

  if (a1 > 33)
  {
    if (a1 == 34)
    {
      return 6;
    }

    if (a1 == 47)
    {
      return 5;
    }

    return 0;
  }

  if (a1 != 9)
  {
    if (a1 == 20)
    {
      return 2;
    }

    return 0;
  }

  return 1;
}

void sub_1BEA69598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBUILegibilityLabelClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SpringBoardUIServicesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80806D8;
    v5 = 0;
    SpringBoardUIServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary_0)
  {
    __getSBUILegibilityLabelClass_block_invoke_cold_2_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SBUILegibilityLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSBUILegibilityLabelClass_block_invoke_cold_1_0();
  }

  getSBUILegibilityLabelClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardUIServicesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SpringBoardUIServicesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

id SBFBundle()
{
  if (SBFBundle___onceToken != -1)
  {
    SBFBundle_cold_1();
  }

  v1 = SBFBundle___springBoardFoundationBundle;

  return v1;
}

uint64_t __SBFBundle_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v1 = SBFBundle___springBoardFoundationBundle;
  SBFBundle___springBoardFoundationBundle = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id SBFLocalizedStringForKey(void *a1)
{
  v1 = a1;
  v2 = SBFBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F3D19FF0 table:@"SpringBoardFoundation"];

  return v3;
}

uint64_t SBFCompareIntegers(uint64_t a1, uint64_t a2)
{
  if (a1 < a2)
  {
    return -1;
  }

  else
  {
    return a1 > a2;
  }
}

uint64_t SBFEqualStrings(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqualToString:a2];
  }

  else
  {
    return a1 == a2;
  }
}

void *SBFSafeCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

__CFString *SB_NSStringFromUIPressType(__CFString *a1)
{
  if (a1 <= 102)
  {
    v3 = &a1->isa + 1;
    a1 = @"UIPressTypeUpArrow";
    switch(v3)
    {
      case 0uLL:
        a1 = @"UIPressTypeNone";

        return a1;
      case 1uLL:
        goto LABEL_148;
      case 2uLL:
        a1 = @"UIPressTypeDownArrow";

        return a1;
      case 3uLL:
        a1 = @"UIPressTypeLeftArrow";

        return a1;
      case 4uLL:
        a1 = @"UIPressTypeRightArrow";

        return a1;
      case 5uLL:
        a1 = @"UIPressTypeSelect";

        return a1;
      case 6uLL:
        a1 = @"UIPressTypeMenu";

        return a1;
      case 7uLL:
        a1 = @"UIPressTypePlayPause";

        return a1;
      case 8uLL:
        a1 = @"UIPressTypeBack";

        return a1;
      case 9uLL:
        a1 = @"UIPressTypePlay";

        return a1;
      case 0xAuLL:
        a1 = @"UIPressTypePause";

        return a1;
      case 0xBuLL:
        a1 = @"UIPressTypeStop";

        return a1;
      case 0xCuLL:
        a1 = @"UIPressTypeRewind";

        return a1;
      case 0xDuLL:
        a1 = @"UIPressTypeFastForward";

        return a1;
      case 0xEuLL:
        a1 = @"UIPressTypeNextTrack";

        return a1;
      case 0xFuLL:
        a1 = @"UIPressTypePreviousTrack";

        return a1;
      case 0x10uLL:
        a1 = @"UIPressTypeSkipForwards";

        return a1;
      case 0x11uLL:
        a1 = @"UIPressTypeSkipBackwards";

        return a1;
      case 0x12uLL:
        a1 = @"UIPressTypeDataOnScreen";

        return a1;
      case 0x13uLL:
        a1 = @"UIPressTypeMicrophone";

        return a1;
      default:
        if (@"UIPressTypeUpArrow" == 101)
        {
          a1 = @"UIPressTypeHome";
        }

        else
        {
          if (@"UIPressTypeUpArrow" != 102)
          {
            goto LABEL_143;
          }

          a1 = @"UIPressTypeVolumeUp";
        }

        break;
    }
  }

  else if (a1 <= 399)
  {
    if (a1 <= 104)
    {
      if (a1 == 103)
      {
        a1 = @"UIPressTypeVolumeDown";
      }

      else
      {
        a1 = @"UIPressTypeLock";
      }
    }

    else if (a1 == 105)
    {
      a1 = @"UIPressTypeHomeTap";
    }

    else if (a1 == 202)
    {
      a1 = @"UIPressTypeDone";
    }

    else if (a1 == 300)
    {
      a1 = @"UIPressTypeWatchSide";
    }

    else
    {
LABEL_143:
      if (a1 <= 1999)
      {
        a1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UNKNOWN UIPressType: %ld", a1];
LABEL_148:
      }

      else
      {
        a1 = @"UIPressTypeCustomOffset";
      }
    }
  }

  else
  {
    switch(a1)
    {
      case 0x190uLL:
        a1 = @"UIPressTypeTelephoneFlash";

        break;
      case 0x191uLL:
      case 0x192uLL:
        a1 = @"UIPressTypeTelephoneHookSwitch";

        break;
      case 0x193uLL:
        a1 = @"UIPressTypeTelephoneKey0";

        break;
      case 0x194uLL:
        a1 = @"UIPressTypeTelephoneKey1";

        break;
      case 0x195uLL:
        a1 = @"UIPressTypeTelephoneKey2";

        break;
      case 0x196uLL:
        a1 = @"UIPressTypeTelephoneKey3";

        break;
      case 0x197uLL:
        a1 = @"UIPressTypeTelephoneKey4";

        break;
      case 0x198uLL:
        a1 = @"UIPressTypeTelephoneKey5";

        break;
      case 0x199uLL:
        a1 = @"UIPressTypeTelephoneKey6";

        break;
      case 0x19AuLL:
        a1 = @"UIPressTypeTelephoneKey7";

        break;
      case 0x19BuLL:
        a1 = @"UIPressTypeTelephoneKey8";

        break;
      case 0x19CuLL:
        a1 = @"UIPressTypeTelephoneKey9";

        break;
      case 0x19DuLL:
        a1 = @"UIPressTypeTelephoneKeyStar";

        break;
      case 0x19EuLL:
        a1 = @"UIPressTypeTelephoneKeyPound";

        break;
      case 0x19FuLL:
        a1 = @"UIPressTypeTelephoneMute";

        break;
      default:
        if (a1 == 500)
        {
          a1 = @"UIPressTypeLaunchPad";
        }

        else
        {
          if (a1 != 501)
          {
            goto LABEL_143;
          }

          a1 = @"UIPressTypeExposeAll";
        }

        break;
    }
  }

  return a1;
}

uint64_t SBBitmaskUnionIf(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 16))(a3))
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  return v5 | a1;
}

uint64_t SBValueIndexForCurrentContentSizeCategory()
{
  v0 = [MEMORY[0x1E69DC668] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  if ([v1 isEqualToString:*MEMORY[0x1E69DDC70]] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC78]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC88]) & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", *MEMORY[0x1E69DDC68]))
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC60]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69DDC58]])
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  return v2;
}

Class __getSOSUtilitiesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SOSLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SOSLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80806F8;
    v5 = 0;
    SOSLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SOSLibraryCore_frameworkLibrary)
  {
    __getSOSUtilitiesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SOSUtilities");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSOSUtilitiesClass_block_invoke_cold_1();
  }

  getSOSUtilitiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SOSLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SOSLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1BEAA2FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

uint64_t SBValidateLogicalScale(void *a1, double a2, CGFloat a3, CGFloat a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a1;
  [v7 minimumLogicalScale];
  v9 = v8;
  [v7 maximumLogicalScale];
  v11 = v10;
  if ((BSFloatGreaterThanFloat() & 1) != 0 || BSFloatGreaterThanFloat())
  {
    v12 = SBLogDisplayScaleMapping();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v34.width = v9;
      v34.height = v11;
      v13 = NSStringFromCGSize(v34);
      v19 = 134218754;
      v20 = a2;
      v21 = 2114;
      v22 = v13;
      v23 = 2048;
      v24 = v7;
      v25 = 2114;
      v26 = v7;
      _os_log_impl(&dword_1BEA11000, v12, OS_LOG_TYPE_DEFAULT, "[SBValidateLogicalScale()] we're dropping logicalScale of %g because it's outside of logicalScaleLimits %{public}@; caDisplay: (%p) %{public}@", &v19, 0x2Au);
LABEL_5:
    }
  }

  else
  {
    if ((BSFloatGreaterThanFloat() & 1) == 0 && !BSFloatGreaterThanFloat())
    {
      v14 = 1;
      goto LABEL_10;
    }

    v12 = SBLogDisplayScaleMapping();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v35.width = a3 * a2;
      v35.height = a4 * a2;
      v13 = NSStringFromCGSize(v35);
      v36.width = a3;
      v36.height = a4;
      v16 = NSStringFromCGSize(v36);
      v37.width = 6144.0;
      v37.height = 3456.0;
      v17 = NSStringFromCGSize(v37);
      v38.width = v9;
      v38.height = v11;
      v18 = NSStringFromCGSize(v38);
      v19 = 134219522;
      v20 = a2;
      v21 = 2114;
      v22 = v13;
      v23 = 2114;
      v24 = v16;
      v25 = 2114;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      v29 = 2048;
      v30 = v7;
      v31 = 2114;
      v32 = v7;
      _os_log_error_impl(&dword_1BEA11000, v12, OS_LOG_TYPE_ERROR, "[SBValidateLogicalScale()] we're dropping logicalScale of %g because scaledDisplaySize %{public}@ [%{public}@] is over our hard-coded display pipeline limit of %{public}@. logicalScaleLimits: %{public}@; caDisplay: (%p) %{public}@", &v19, 0x48u);

      goto LABEL_5;
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

void sub_1BEAA4664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBUILegibilityLabelClass_block_invoke_1(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __SpringBoardUIServicesLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E80807D8;
    v5 = 0;
    SpringBoardUIServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!SpringBoardUIServicesLibraryCore_frameworkLibrary_1)
  {
    __getSBUILegibilityLabelClass_block_invoke_cold_2_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SBUILegibilityLabel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSBUILegibilityLabelClass_block_invoke_cold_1_1();
  }

  getSBUILegibilityLabelClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SpringBoardUIServicesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  SpringBoardUIServicesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

CGImageRef _SBFCARendererCGImageForImageData(void *a1)
{
  v1 = a1;
  ImagesFromData = CPBitmapCreateImagesFromData();
  if (ImagesFromData)
  {
    v3 = ImagesFromData;
    ValueAtIndex = CFArrayGetValueAtIndex(ImagesFromData, 0);
    if (ValueAtIndex)
    {
      ImageAtIndex = ValueAtIndex;
      CFRetain(ValueAtIndex);
      CFRelease(v3);
LABEL_8:
      objc_opt_class();
      objc_opt_isKindOfClass();
      goto LABEL_11;
    }

    CFRelease(v3);
  }

  v6 = CGImageSourceCreateWithData(v1, 0);
  if (!v6)
  {
LABEL_10:
    ImageAtIndex = 0;
    goto LABEL_11;
  }

  v7 = v6;
  if (!CGImageSourceGetCount(v6))
  {
    CFRelease(v7);
    goto LABEL_10;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
  CFRelease(v7);
  if (ImageAtIndex)
  {
    goto LABEL_8;
  }

LABEL_11:

  return ImageAtIndex;
}

void sub_1BEAA8E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  _Block_object_dispose(&a23, 8);
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getCSProminentDisplayViewControllerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoverSheetKitLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoverSheetKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E8080878;
    v5 = 0;
    CoverSheetKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!CoverSheetKitLibraryCore_frameworkLibrary_0)
  {
    __getCSProminentDisplayViewControllerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CSProminentDisplayViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSProminentDisplayViewControllerClass_block_invoke_cold_1();
  }

  getCSProminentDisplayViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoverSheetKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  CoverSheetKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __SBFMainScreenScale_block_invoke()
{
  v1 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v1 scale];
  SBFMainScreenScale___mainScreenScale = v0;
}

double SBFBoundPoint(double result, double a2, double a3, double a4, double a5)
{
  if (a3 >= result)
  {
    result = a3;
  }

  if (a5 <= result)
  {
    return a5;
  }

  return result;
}

BOOL SBFPointEqualToPointAtScale(double a1, double a2, double a3, double a4, double a5)
{
  v5 = a5;
  if (fabs(a5) < 2.22044605e-16)
  {
    v10 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v10 scale];
    v5 = v11;
  }

  return vabdd_f64(a1 * v5, a3 * v5) < 2.22044605e-16 && vabdd_f64(a2 * v5, a4 * v5) < 2.22044605e-16;
}

uint64_t SBFRectApproximatelyEqualToRect()
{
  if (!BSFloatApproximatelyEqualToFloat() || !BSFloatApproximatelyEqualToFloat() || !BSFloatApproximatelyEqualToFloat())
  {
    return 0;
  }

  return BSFloatApproximatelyEqualToFloat();
}

double SBFFloatFloorForScale(double a1, double a2)
{
  v2 = a2;
  if (fabs(a2) < 2.22044605e-16)
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    v2 = v5;
  }

  return floor(v2 * a1) / v2;
}

double SBFFloatCeilForScale(double a1, double a2)
{
  v2 = a2;
  if (fabs(a2) < 2.22044605e-16)
  {
    v4 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v4 scale];
    v2 = v5;
  }

  return ceil(v2 * a1) / v2;
}

double SBFPointRoundForScale(double a1, double a2, double a3)
{
  v5 = SBFFloatRoundForScale(a1, a3);
  SBFFloatRoundForScale(a2, a3);
  return v5;
}

uint64_t SBFRectScaleWithScale(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6)
{
  Width = CGRectGetWidth(*&a1);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  v13 = (Width - CGRectGetWidth(v18) * a5) * 0.5;
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  Height = CGRectGetHeight(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v15 = (Height - CGRectGetHeight(v20) * a6) * 0.5;
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectInset(v21, v13, v15);

  return UIRectIntegralWithScale();
}

CGFloat SBFTransformForScalingAboutPointInSuperview@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, CGFloat a6@<D4>)
{
  v8 = a4 - a2;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v9 = a5 - a3;
  *a1 = 0u;
  CGAffineTransformMakeTranslation(a1, a4 - a2, a5 - a3);
  v10 = *(a1 + 16);
  *&v15.a = *a1;
  *&v15.c = v10;
  *&v15.tx = *(a1 + 32);
  CGAffineTransformScale(&v16, &v15, a6, a6);
  v11 = *&v16.c;
  *a1 = *&v16.a;
  *(a1 + 16) = v11;
  *(a1 + 32) = *&v16.tx;
  v12 = *(a1 + 16);
  *&v15.a = *a1;
  *&v15.c = v12;
  *&v15.tx = *(a1 + 32);
  CGAffineTransformTranslate(&v16, &v15, -v8, -v9);
  v13 = *&v16.c;
  *a1 = *&v16.a;
  *(a1 + 16) = v13;
  result = v16.tx;
  *(a1 + 32) = *&v16.tx;
  return result;
}

uint64_t SBFTransformFromOrientationToOrientation@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *a3 = *MEMORY[0x1E695EFD0];
  a3[1] = v5;
  a3[2] = *(v4 + 32);
  if (result != a2)
  {
    BSDegreesToRadians();
    CGAffineTransformMakeRotation(&v7, v6);
    return UIIntegralTransform();
  }

  return result;
}

uint64_t SBFEdgeInsetsRotateToInterfaceOrientation(uint64_t result)
{
  if ((result - 2) <= 2)
  {
    return UIEdgeInsetsRotate();
  }

  return result;
}

uint64_t SBFEdgeInsetsRelativeToRectEdge(uint64_t result)
{
  if (result == 8 || result == 2 || result == 1)
  {
    return UIEdgeInsetsRotate();
  }

  return result;
}

__CFString *SBFDescriptionForSensorType(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"invalid";
  }

  else
  {
    return off_1E8080898[a1];
  }
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

const char *acm_mem_alloc_info(const char *result, const void *a2, uint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    _allocatedMem_0 += a3;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v6 = "NULL";
    if (result)
    {
      v7 = result;
    }

    else
    {
      v7 = "NULL";
    }

    if (a4)
    {
      v8 = a4;
    }

    else
    {
      v8 = "NULL";
    }

    if (a6)
    {
      v6 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_alloc_info", v7, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v8, a5, v6);
  }

  return result;
}

const char *acm_mem_free_info(const char *result, const void *a2, unint64_t a3, const char *a4, int a5, const char *a6)
{
  if (a2)
  {
    v6 = _allocatedMem_0 - a3;
    if (_allocatedMem_0 < a3)
    {
      v6 = 0;
    }

    _allocatedMem_0 = v6;
  }

  if (gACMLoggingLevel <= 0x1Eu)
  {
    v7 = "NULL";
    if (result)
    {
      v8 = result;
    }

    else
    {
      v8 = "NULL";
    }

    if (a4)
    {
      v9 = a4;
    }

    else
    {
      v9 = "NULL";
    }

    if (a6)
    {
      v7 = a6;
    }

    return printf("%s: %s: mem: type=%s ptr=%p size=%u (total=%u raw=%u data=%u types=%u) %s:%d (%s).\n", "ACM", "acm_mem_free_info", v8, a2, a3, _allocatedMem_0, 0, _allocatedMem_2, _allocatedMem_3, v9, a5, v7);
  }

  return result;
}

uint64_t DeserializeVerifyAclConstraint(int a1, uint64_t a2, unsigned int a3, _OWORD *a4, void *a5, _DWORD *a6, void *a7, unsigned int *a8, BOOL *a9, _DWORD *a10, void *a11, _DWORD *a12)
{
  v36 = 0;
  v37 = 0;
  v35 = 0;
  v12 = 4294967293;
  if (a2 && a4 && a5 && a6 && a9 && a10 && a11 && a12 && a3 >= 0x10)
  {
    v16 = a3;
    *a4 = *a2;
    v37 = 16;
    if ((a3 & 0xFFFFFFFC) == 0x10)
    {
      v12 = 4294967293;
    }

    else
    {
      v20 = *(a2 + 16);
      v37 = 20;
      v21 = acm_mem_alloc_data(v20);
      acm_mem_alloc_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 534, "DeserializeVerifyAclConstraint");
      if (v21)
      {
        if (v16 - 20 < v20)
        {
          goto LABEL_24;
        }

        memcpy(v21, (a2 + 20), v20);
        v22 = v20 + 20;
        v37 = v20 + 20;
        v33 = a5;
        if (a1 != 32)
        {
          v26 = 0;
          v34 = 0;
          goto LABEL_19;
        }

        if (v16 - v22 < 4)
        {
LABEL_24:
          v26 = 0;
          v34 = 0;
        }

        else
        {
          v31 = a7;
          v23 = a8;
          v24 = *(a2 + v22);
          v25 = v20 + 24;
          v37 = v20 + 24;
          v26 = acm_mem_alloc_data(v24);
          acm_mem_alloc_info("<data>", v26, v24, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 546, "DeserializeVerifyAclConstraint");
          v34 = v24;
          if (!v26)
          {
            v12 = 4294967292;
LABEL_26:
            acm_mem_free_info("<data>", v21, v20, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 582, "DeserializeVerifyAclConstraint");
            acm_mem_free_data(v21, v20);
            if (v26)
            {
              acm_mem_free_info("<data>", v26, v34, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 585, "DeserializeVerifyAclConstraint");
              acm_mem_free_data(v26, v34);
            }

            goto LABEL_30;
          }

          if (v16 - v25 >= v24)
          {
            memcpy(v26, (a2 + v25), v24);
            v22 = v25 + v24;
            v37 = v25 + v24;
            a8 = v23;
            a7 = v31;
LABEL_19:
            if (v22 != v16)
            {
              v27 = *(a2 + v22) != 0;
              v37 = v22 + 1;
              if (v16 - (v22 + 1) >= 4)
              {
                v32 = v20;
                v28 = v26;
                v29 = *(a2 + v22 + 1);
                v37 = v22 + 5;
                v12 = deserializeParameters(a2, v16, &v37, &v36, &v35);
                if (!v12)
                {
                  *v33 = v21;
                  *a7 = v28;
                  *a8 = v34;
                  *a6 = v32;
                  *a9 = v27;
                  *a10 = v29;
                  *a11 = v36;
                  *a12 = v35;
                  return v12;
                }

                v26 = v28;
                v20 = v32;
                goto LABEL_26;
              }
            }
          }
        }

        v12 = 4294967293;
        goto LABEL_26;
      }

      v12 = 4294967292;
    }
  }

LABEL_30:
  if (v36)
  {
    Util_SafeDeallocParameters(v36, v35);
  }

  return v12;
}

uint64_t DeserializeProcessAcl(uint64_t a1, unsigned int a2, _OWORD *a3, void *a4, _DWORD *a5, void *a6, unsigned int *a7, _DWORD *a8, void *a9, _DWORD *a10)
{
  v39 = 0;
  v40 = 0;
  v38 = 0;
  v10 = 4294967293;
  if (a1)
  {
    if (a3)
    {
      v11 = a4;
      if (a4)
      {
        if (a5)
        {
          v13 = a6;
          if (a6)
          {
            v14 = a7;
            if (a7)
            {
              v15 = a8;
              if (a8)
              {
                if (a9 && a10 && a2 >= 0x10)
                {
                  v17 = a2;
                  *a3 = *a1;
                  v40 = 16;
                  if ((a2 & 0xFFFFFFFC) == 0x10)
                  {
                    v10 = 4294967293;
                  }

                  else
                  {
                    v18 = *(a1 + 16);
                    v40 = 20;
                    v19 = acm_mem_alloc_data(v18);
                    acm_mem_alloc_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 724, "DeserializeProcessAcl");
                    if (v19)
                    {
                      if (v17 - 20 < v18 || (memcpy(v19, (a1 + 20), v18), v40 = v18 + 20, v17 - (v18 + 20) < 4))
                      {
                        v32 = 0;
                        v37 = 0;
                        v10 = 4294967293;
                      }

                      else
                      {
                        v36 = a5;
                        v20 = *(a1 + v18 + 20);
                        v21 = v18 + 24;
                        v40 = v18 + 24;
                        v37 = v20;
                        if (!v20)
                        {
                          v35 = 0;
                          goto LABEL_20;
                        }

                        v33 = v11;
                        v22 = v13;
                        v23 = v14;
                        v24 = v15;
                        v25 = v20;
                        v26 = acm_mem_alloc_data(v20);
                        acm_mem_alloc_info("<data>", v26, v25, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 736, "DeserializeProcessAcl");
                        if (v26)
                        {
                          v27 = v26;
                          if (v17 - v21 >= v25)
                          {
                            v13 = v22;
                            v35 = v27;
                            memcpy(v27, (a1 + v21), v25);
                            v21 += v25;
                            v40 = v21;
                            v15 = v24;
                            v14 = v23;
                            v11 = v33;
LABEL_20:
                            if (v17 - v21 < 4)
                            {
                              v10 = 4294967293;
                            }

                            else
                            {
                              v34 = v18;
                              v28 = v19;
                              v29 = v15;
                              v30 = *(a1 + v21);
                              v40 = v21 + 4;
                              v10 = deserializeParameters(a1, v17, &v40, &v39, &v38);
                              if (!v10)
                              {
                                *v11 = v28;
                                *v36 = v34;
                                *v13 = v35;
                                *v14 = v37;
                                *v29 = v30;
                                *a9 = v39;
                                *a10 = v38;
                                return v10;
                              }

                              v19 = v28;
                              v18 = v34;
                            }

                            v32 = v35;
                            goto LABEL_32;
                          }

                          v10 = 4294967293;
                          v32 = v26;
                        }

                        else
                        {
                          v32 = 0;
                          v10 = 4294967292;
                        }
                      }

LABEL_32:
                      acm_mem_free_info("<data>", v19, v18, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 765, "DeserializeProcessAcl");
                      acm_mem_free_data(v19, v18);
                      if (v32)
                      {
                        acm_mem_free_info("<data>", v32, v37, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 768, "DeserializeProcessAcl");
                        acm_mem_free_data(v32, v37);
                      }

                      goto LABEL_34;
                    }

                    v10 = 4294967292;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_34:
  if (v39)
  {
    Util_SafeDeallocParameters(v39, v38);
  }

  return v10;
}

uint64_t getRequirementDataSizeForVersion(unsigned int a1, _DWORD *a2)
{
  if (!a2)
  {
    getRequirementDataSizeForVersion_cold_2();
  }

  if (a1 > 1)
  {
    return a2[3];
  }

  v2 = *a2 - 1;
  if (v2 >= 0x1C || ((0xFFE7FE7u >> v2) & 1) == 0)
  {
    getRequirementDataSizeForVersion_cold_1();
  }

  return qword_1BEAD5C50[v2];
}

uint64_t serializeParameters(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  LODWORD(v6) = a2;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "serializeParameters");
  }

  v8 = 70;
  v9 = 4294967293;
  if (a3 && a4)
  {
    v10 = *a4;
    *(a3 + v10) = v6;
    v11 = v10 + 4;
    if (v6)
    {
      v6 = v6;
      while (1)
      {
        *__src = *a1;
        __n = *(a1 + 16);
        v12 = checkParameter(__src);
        if (v12)
        {
          break;
        }

        v13 = (a3 + v11);
        v14 = __n;
        *v13 = __src[0];
        v13[1] = v14;
        v11 += 8;
        if (v14)
        {
          memcpy((a3 + v11), __src[1], v14);
          v11 += v14;
        }

        a1 += 24;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }

      v9 = v12;
      v8 = 70;
    }

    else
    {
LABEL_11:
      v9 = 0;
      *a4 = v11;
      v8 = 10;
    }
  }

  if (v8 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "serializeParameters", v9);
  }

  return v9;
}

uint64_t deserializeParameters(uint64_t a1, unint64_t a2, unint64_t *a3, void *size, _DWORD *a5)
{
  p_opt_inst_meths = &OBJC_PROTOCOL___SBFFileCacheFaultHandler.opt_inst_meths;
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "deserializeParameters");
  }

  v11 = 70;
  v12 = 4294967293;
  if (!a1 || !a3 || !size || !a5)
  {
    goto LABEL_24;
  }

  v13 = *a3;
  if (a2 <= *a3)
  {
    goto LABEL_22;
  }

  if (a2 - *a3 < 4 || (v14 = *(a1 + v13), v14 > 0xA))
  {
    v11 = 70;
    v12 = 4294967293;
    goto LABEL_24;
  }

  v13 += 4;
  if (!v14)
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
LABEL_23:
    v12 = 0;
    *size = v21;
    *a5 = v20;
    v11 = 10;
    *a3 = v13;
    goto LABEL_24;
  }

  v15 = acm_mem_alloc_typed(24 * v14, 0x1080040388D5D28uLL);
  acm_mem_alloc_info("array of ACMParameter", v15, 24 * v14, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 196, "deserializeParameters");
  if (!v15)
  {
    v11 = 70;
    v12 = 4294967292;
    goto LABEL_24;
  }

  v25 = a5;
  v23 = v15;
  v24 = v14;
  v16 = v14;
  while (1)
  {
    *(v15 + 1) = 0;
    if (a2 - v13 < 8 || (*v15 = *(a1 + v13), a2 - (v13 + 4) < 4) || (v17 = *(a1 + v13 + 4), v15[4] = v17, v13 += 8, a2 - v13 < v17))
    {
      v11 = 70;
      v12 = 4294967293;
      goto LABEL_30;
    }

    v18 = checkParameter(v15);
    if (v18)
    {
      v12 = v18;
      v11 = 70;
      goto LABEL_30;
    }

    if (v17)
    {
      break;
    }

LABEL_20:
    v15 += 6;
    if (!--v16)
    {
      p_opt_inst_meths = (&OBJC_PROTOCOL___SBFFileCacheFaultHandler + 40);
      a5 = v25;
      v21 = v23;
      v20 = v24;
      goto LABEL_23;
    }
  }

  v19 = acm_mem_alloc_data(v17);
  acm_mem_alloc_info("<data>", v19, v17, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibSerialization.c", 214, "deserializeParameters");
  *(v15 + 1) = v19;
  if (v19)
  {
    memcpy(v19, (a1 + v13), v15[4]);
    v13 += v15[4];
    goto LABEL_20;
  }

  v11 = 70;
  v12 = 4294967292;
LABEL_30:
  p_opt_inst_meths = (&OBJC_PROTOCOL___SBFFileCacheFaultHandler + 40);
LABEL_24:
  if (v11 >= *(p_opt_inst_meths + 2576))
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "deserializeParameters", v12);
  }

  return v12;
}

uint64_t checkParameter(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967293;
  }

  switch(*a1)
  {
    case 0:
    case 0xC:
      if (a1[4])
      {
        return 4294967293;
      }

      break;
    case 1:
    case 4:
    case 5:
    case 0xA:
      if (a1[4] != 4)
      {
        return 4294967293;
      }

      break;
    case 2:
    case 6:
    case 7:
      if (a1[4] != 16)
      {
        return 4294967293;
      }

      break;
    case 3:
      if ((a1[4] - 1001) < 0xFFFFFC18)
      {
        return 4294967293;
      }

      break;
    case 8:
    case 9:
    case 0xD:
    case 0xE:
      if (a1[4] != 1)
      {
        return 4294967293;
      }

      break;
    case 0xB:
      if (a1[4] > 0x400u)
      {
        return 4294967293;
      }

      break;
    default:
      return 4294967293;
  }

  return 0;
}

uint64_t crypto_encryptedTextLength(int a1, uint64_t a2)
{
  v2 = a2 + 32;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 + 33;
  }

  else
  {
    return v2;
  }
}

unint64_t crypto_plainTextLength(int a1, unint64_t a2)
{
  v2 = a2 - 33;
  v3 = a2 - 32;
  if (a2 <= 0x20)
  {
    v2 = 0;
  }

  if (a2 <= 0x1F)
  {
    v3 = 0;
  }

  if (a1 != 1)
  {
    v3 = 0;
  }

  if (a1 == 2)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t checkCCError(int a1, const char *a2)
{
  if (a1)
  {
    if (gACMLoggingLevel <= 0x46u)
    {
      printf("%s: %s: CoreCrypto - %s() failed, ccErr: %d.\n", "ACM", "checkCCError", a2, a1);
    }

    return 4294967264;
  }

  else
  {
    if (gACMLoggingLevel <= 0x1Eu)
    {
      printf("%s: %s: CoreCrypto - %s() succeeded, ccErr: %d.\n", "ACM", "checkCCError", a2, 0);
    }

    return 0;
  }
}

uint64_t generateRandom(uint64_t a1, uint64_t a2)
{
  v2 = 70;
  v3 = 4294967293;
  if (!a1 || !a2)
  {
    goto LABEL_14;
  }

  v6 = platform_rng_state;
  if (platform_rng_state)
  {
    v3 = 0;
  }

  else
  {
    platform_rng_state = ccrng();
    v3 = checkCCError(-1, "ccrng");
    if (v3)
    {
      v6 = 0;
      v7 = 70;
      goto LABEL_8;
    }

    v6 = platform_rng_state;
  }

  v7 = 10;
LABEL_8:
  if (v7 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "platform_rng", v3);
  }

  v2 = 70;
  if (!v3)
  {
    v8 = (*v6)(v6, a2, a1);
    checkCCError(v8, "platform_rng");
    OUTLINED_FUNCTION_11();
    if (v9)
    {
      v2 = 10;
    }

    else
    {
      v2 = 70;
    }
  }

LABEL_14:
  if (v2 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "generateRandom", v3);
  }

  return v3;
}

void crypto_encryptText_version1()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_9_1();
  v22 = *MEMORY[0x1E69E9840];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_1();
  v6 = MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_2(v6, v7, v8, v9, v10, v11, v12, v13, v20);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 32;
            if (v1 != -32)
            {
              if (v14 > *v0 || (OUTLINED_FUNCTION_2_3(), v15 = ccgcm_init(), !checkCCError(v15, "ccgcm_init")) && !generateRandom(v3, 16) && (OUTLINED_FUNCTION_0_12(), v16 = ccgcm_set_iv(), !checkCCError(v16, "ccgcm_set_iv")) && (OUTLINED_FUNCTION_2_3(), v17 = ccgcm_update(), !checkCCError(v17, "ccgcm_update")) && (OUTLINED_FUNCTION_0_12(), v18 = ccgcm_finalize(), !checkCCError(v18, "ccgcm_finalize")))
              {
                *v0 = v14;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_1();
  if (v19)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v21, v22, v23);
  }

  OUTLINED_FUNCTION_15_1();
}

void crypto_encryptText_version2()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_9_1();
  v26 = *MEMORY[0x1E69E9840];
  ccaes_gcm_encrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_1();
  v6 = MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_3_2(v6, v7, v8, v9, v10, v11, v12, v13, v24);
  if (v4)
  {
    if (v2)
    {
      if (v1)
      {
        if (v3)
        {
          if (v0)
          {
            v14 = v1 + 33;
            if (v1 != -33)
            {
              if (v14 > *v0 || (OUTLINED_FUNCTION_2_3(), v15 = ccgcm_init(), !checkCCError(v15, "ccgcm_init")) && (*v3 = 2, v16 = (v3 + 1), OUTLINED_FUNCTION_13_1(), !v17) && !generateRandom(v16, 16) && (OUTLINED_FUNCTION_0_12(), v18 = ccgcm_set_iv(), !checkCCError(v18, "ccgcm_set_iv")) && (v19 = v16 + 16, OUTLINED_FUNCTION_13_1(), !v20) && (OUTLINED_FUNCTION_2_3(), v21 = ccgcm_update(), !checkCCError(v21, "ccgcm_update")) && !__CFADD__(v19, v1) && (OUTLINED_FUNCTION_0_12(), v22 = ccgcm_finalize(), !checkCCError(v22, "ccgcm_finalize")))
              {
                *v0 = v14;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_1();
  if (v23)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v25, v26, v27);
  }

  OUTLINED_FUNCTION_15_1();
}

void crypto_decryptText_version1()
{
  OUTLINED_FUNCTION_14_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_1();
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_2(v11, v12, v13, v14, v15, v16, v17, v18, v25);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            v19 = v5 >= 0x20;
            v20 = v5 - 32;
            if (v19)
            {
              if (*v1 < v20 || (OUTLINED_FUNCTION_2_3(), v21 = ccgcm_init(), !checkCCError(v21, "ccgcm_init")) && (OUTLINED_FUNCTION_0_12(), v22 = ccgcm_set_iv(), !checkCCError(v22, "ccgcm_set_iv")) && (OUTLINED_FUNCTION_2_3(), v23 = ccgcm_update(), !checkCCError(v23, "ccgcm_update")) && (OUTLINED_FUNCTION_0_12(), ccgcm_finalize(), v24 = cc_cmp_safe(), !checkCCError(v24, "cc_cmp_safe")))
              {
                *v1 = v20;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_1();
  if (v19)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v26, 0, 0);
  }

  OUTLINED_FUNCTION_15_1();
}

void crypto_decryptText_version2()
{
  OUTLINED_FUNCTION_14_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  ccaes_gcm_decrypt_mode();
  ccgcm_context_size();
  OUTLINED_FUNCTION_6_1();
  v11 = MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_2(v11, v12, v13, v14, v15, v16, v17, v18, v27);
  if (v9)
  {
    if (v7)
    {
      if (v5)
      {
        if (v3)
        {
          if (v1)
          {
            if (v5 >= 0x22)
            {
              v19 = v5 - 33;
              if (*v1 < v19 || (OUTLINED_FUNCTION_13_1(), !v20) && *v7 == 2 && (OUTLINED_FUNCTION_2_3(), v21 = ccgcm_init(), !checkCCError(v21, "ccgcm_init")) && (OUTLINED_FUNCTION_0_12(), v22 = ccgcm_set_iv(), !checkCCError(v22, "ccgcm_set_iv")) && (OUTLINED_FUNCTION_13_1(), !v23) && (OUTLINED_FUNCTION_2_3(), v24 = ccgcm_update(), !checkCCError(v24, "ccgcm_update")) && !__CFADD__(v7 + 17, v19) && (OUTLINED_FUNCTION_0_12(), ccgcm_finalize(), v25 = cc_cmp_safe(), !checkCCError(v25, "cc_cmp_safe")))
              {
                *v1 = v19;
              }
            }
          }
        }
      }
    }
  }

  ccgcm_context_size();
  cc_clear();
  OUTLINED_FUNCTION_5_1();
  if (v26)
  {
    OUTLINED_FUNCTION_12_1();
    printf("%s: %s: returning, err = %ld.\n", v28, 0, 0);
  }

  OUTLINED_FUNCTION_15_1();
}

uint64_t LibCall_ACMKernelControl_Block(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v19 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl_Block");
  }

  bzero(v18, 0x2000uLL);
  v17 = 0x2000;
  v13 = LibCall_ACMKernelControl(v12, v11, v9, v7, v5, v18, &v17);
  if (v3)
  {
    if (v17)
    {
      v14 = v18;
    }

    else
    {
      v14 = 0;
    }

    (*(v3 + 16))(v3, v14);
  }

  if (v13)
  {
    v15 = 70;
  }

  else
  {
    v15 = 10;
  }

  if (v15 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl_Block", v13);
  }

  return v13;
}

uint64_t LibCall_ACMSEPControl_Block(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[128] = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMSEPControl_Block");
  }

  bzero(v24, 0x400uLL);
  LibCall_ACMSEPControl(a1, a2, a3, a4, a5, a6, a7, v24, &v23, v21, v22, 1024, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8]);
  v17 = v16;
  if (a8)
  {
    if (v23)
    {
      v18 = v24;
    }

    else
    {
      v18 = 0;
    }

    (*(a8 + 16))(a8, v18);
  }

  if (v17)
  {
    v19 = 70;
  }

  else
  {
    v19 = 10;
  }

  if (v19 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMSEPControl_Block", v17);
  }

  return v17;
}

uint64_t LibCall_ACMGlobalContextVerifyPolicy_Block(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  v15 = 0;
  result = LibCall_ACMContextCreate(a1, a2, &v15, 0, 0, 1);
  if (result)
  {
    if (a7)
    {
      result = (*(a7 + 16))(a7, result, 0, 0);
    }
  }

  else
  {
    result = LibCall_ACMContextVerifyPolicyEx_Block(a1, a2, v15, a3, a4, a5, a6, 0xFFFFFFFFLL, a7);
  }

  if (v15)
  {
    result = LibCall_ACMContextDelete(a1, a2, v15, 1);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGlobalContextVerifyPolicy_Block");
  }

  return result;
}

uint64_t LibCall_ACMGetAclAuthMethod_Block(uint64_t result, uint64_t a2, __n128 *a3, uint64_t a4)
{
  v7 = result;
  v14 = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  memset(v13, 0, sizeof(v13));
  v11 = 256;
  if (v7 && a3 && a4)
  {
    v12 = 0uLL;
    v10 = 16;
    AclAuthMethod_Serialize = LibSer_GetAclAuthMethod_Serialize(a3, &v12, &v10);
    if (!v9 && v10 == 16)
    {
      v7(a2, 31, 0, &v12, 16, v13, &v11, AclAuthMethod_Serialize);
    }

    goto LABEL_9;
  }

  if (a4)
  {
LABEL_9:
    result = (*(a4 + 16))(a4);
  }

  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "LibCall_ACMGetAclAuthMethod_Block");
  }

  return result;
}

rsize_t verifyAclConstraintForOperationCommandInternal(rsize_t result, int a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, uint64_t a8, char a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13)
{
  v20 = result;
  if (gACMLoggingLevel <= 0xAu)
  {
    result = printf("%s: %s: called.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  v25 = 0;
  v24 = 0;
  if (a4 && a5 && a6 && a13)
  {
    v21 = verifyAclConstraintInternal(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, &v24, &v25);
    v22 = v25;
    v23 = v24;
  }

  else
  {
    if (!a13)
    {
      goto LABEL_10;
    }

    v22 = 0;
    v23 = 0;
    v21 = 4294967293;
  }

  (*(a13 + 16))(a13, v21, v23, v22);
  result = v25;
  if (v25)
  {
    result = Util_DeallocRequirement(v25);
  }

LABEL_10:
  if (gACMLoggingLevel <= 0xAu)
  {
    return printf("%s: %s: returning.\n", "ACM", "verifyAclConstraintForOperationCommandInternal");
  }

  return result;
}

uint64_t Util_GetBitCount(uint64_t a1)
{
  v1 = vcnt_s8(a1);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

BOOL Util_isNullOrZeroMemory(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*a1)
  {
    return 0;
  }

  return memcmp(a1, a1 + 1, a2 - 1) == 0;
}

BOOL Util_isNonNullEqualMemory(void *__s1, size_t __n, void *__s2, uint64_t a4)
{
  if (__n != a4)
  {
    return 0;
  }

  result = 0;
  if (__s1)
  {
    if (__s2)
    {
      return memcmp(__s1, __s2, __n) == 0;
    }
  }

  return result;
}

char *Util_hexDumpToStrHelper(char *result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!result && a2)
  {
    Util_hexDumpToStrHelper_cold_2();
  }

  if (!a3 && a4)
  {
    Util_hexDumpToStrHelper_cold_1();
  }

  if (a2 >= a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a2;
  }

  if (v4)
  {
    v5 = (a3 + 1);
    do
    {
      *(v5 - 1) = a0123456789abcd[*result >> 4];
      v6 = *result++;
      *v5 = a0123456789abcd[v6 & 0xF];
      v5 += 2;
      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t Util_KeybagLockStateToEnvVar(unsigned int a1)
{
  v1 = 0x2010103020201uLL >> (8 * a1);
  if (a1 >= 7)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 3;
}

void Util_SafeDeallocParameters(unsigned int *a1, unsigned int a2)
{
  if (a1)
  {
    v3 = a2;
    if (a2)
    {
      v4 = a1 + 4;
      v5 = a2;
      do
      {
        v6 = *(v4 - 1);
        if (v6)
        {
          v7 = *v4;
          acm_mem_free_info("<data>", *(v4 - 1), v7, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 118, "Util_SafeDeallocParameters");
          acm_mem_free_data(v6, v7);
        }

        v4 += 6;
        --v5;
      }

      while (v5);
    }

    acm_mem_free_info("array of ACMParameter", a1, 24 * v3, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/CommonUtil.c", 121, "Util_SafeDeallocParameters");

    acm_mem_free(a1, 24 * v3);
  }
}

uint64_t ACMContextCreateWithFlags(uint64_t *a1, uint64_t a2)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreate(ioKitTransport, &v8, a1, a2, &_logLevel, 1);
  if (v4)
  {
    updateLogLevelFromKext();
    v5 = 70;
  }

  else
  {
    v5 = 10;
    if (a1 && _logLevel <= 0x28u)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v6 = *a1;
        if (*a1)
        {
          LODWORD(v6) = *(v6 + 16);
        }

        *buf = 136315906;
        v10 = "ACMLib";
        v11 = 2080;
        v12 = "ACMContextCreateWithFlags";
        v13 = 1024;
        LODWORD(v14[0]) = v6;
        WORD2(v14[0]) = 1024;
        *(v14 + 6) = a2;
        _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] created (flags=0x%x).\n", buf, 0x22u);
      }

      v5 = 10;
    }
  }

  if (v5 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithFlags";
    v13 = 2048;
    v14[0] = v4;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextCreateWithExternalForm(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v8 = 0;
  v4 = LibCall_ACMContextCreateWithExternalForm(ioKitTransport, &v8, a1, a2, &_logLevel, 1);
  if (v4)
  {
    if (_logLevel <= 0x28u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v5 = *(v4 + 16);
      *buf = 136315650;
      v10 = "ACMLib";
      v11 = 2080;
      v12 = "ACMContextCreateWithExternalForm";
      v13 = 1024;
      LODWORD(v14) = v5;
      _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] acquired.\n", buf, 0x1Cu);
    }

    v6 = 30;
  }

  else
  {
    updateLogLevelFromKext();
    v6 = 70;
  }

  if (v6 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextCreateWithExternalForm";
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, -> ctx = %p.\n", buf, 0x20u);
  }

  return v4;
}

uint64_t ACMContextDelete(_DWORD *a1, int a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = _logLevel;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
    v4 = _logLevel;
  }

  if (a1 && v4 <= 0x28 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = "NO";
    *buf = 136315906;
    v12 = "ACMLib";
    v14 = "ACMContextDelete";
    v13 = 2080;
    if (a2)
    {
      v6 = "YES";
    }

    v15 = 1024;
    LODWORD(v16[0]) = v5;
    WORD2(v16[0]) = 2080;
    *(v16 + 6) = v6;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: CS[%u] deleted (contextDestroyed=%s).\n", buf, 0x26u);
  }

  v10 = a1;
  v7 = LibCall_ACMContextDelete(ioKitTransport, &v10, a1, a2);
  if (v7)
  {
    v8 = 70;
  }

  else
  {
    v8 = 10;
  }

  if (v8 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextDelete";
    v15 = 2048;
    v16[0] = v7;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v7;
}

void ACMContextGetExternalForm(const void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v4, 0x16u);
  }

  if (a1 && a2)
  {
    if (!init() && !performCommand(a1, 19, 0, a1, 0x10uLL, 0, 0))
    {
      (*(a2 + 16))(a2, a1, 16);
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  ACMContextGetExternalForm_cold_1(a2);
LABEL_9:
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = 136315394;
    v5 = "ACMLib";
    v6 = 2080;
    v7 = "ACMContextGetExternalForm";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", &v4, 0x16u);
  }
}

uint64_t ACMContextRemoveCredentialsByType(_OWORD *a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextRemoveCredentialsByType";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextRemoveCredentialsByTypeAndScope(a1, a2, 1);
}

uint64_t ACMContextContainsCredentialType(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMContextContainsCredentialType";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v5, 0x16u);
  }

  return ACMContextContainsCredentialTypeEx(a1, a2, 0);
}

uint64_t ACMContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextVerifyPolicy_Block(ioKitTransport, &v9, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextVerifyPolicy";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

uint64_t ACMContextVerifyPolicyWithPreflight(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = a1;
  v8 = LibCall_ACMContextVerifyPolicyWithPreflight_Block(ioKitTransport, &v11, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextVerifyPolicyWithPreflight";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v8;
}

void ACMContextVerifyPolicyEx(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v14 = a1;
  LibCall_ACMContextVerifyPolicyEx_Block(ioKitTransport, &v14, a1, a2, a3, a4, a5, a6, a7);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v16 = "ACMLib";
    v17 = 2080;
    v18 = "ACMContextVerifyPolicyEx";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void ACMGlobalContextVerifyPolicy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = 0;
  v10 = ACMContextCreateWithFlags(&v11, 0);
  if (v10)
  {
    if (a5)
    {
      (*(a5 + 16))(a5, v10, 0, 0);
    }
  }

  else
  {
    ACMContextVerifyPolicyEx(v11, a1, a2, a3, a4, 0xFFFFFFFFLL, a5);
  }

  if (v11)
  {
    ACMContextDelete(v11, 1);
  }

  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMGlobalContextVerifyPolicy";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMContextGetTrackingNumber(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t ACMParseAclAndCopyConstraintCharacteristics(const void *a1, uint64_t a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  __n = 4096;
  size = 0;
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 4294967293;
  if (!a1 || !a2 || !a3)
  {
    goto LABEL_28;
  }

  SerializedProcessAclSize = init();
  if (SerializedProcessAclSize || (SerializedProcessAclSize = GetSerializedProcessAclSize(0, a1, a2, 0, 0, 0, 0, 0, &size), SerializedProcessAclSize))
  {
    v6 = SerializedProcessAclSize;
LABEL_28:
    (*(a3 + 16))(a3, v6, 0, 4096);
    goto LABEL_19;
  }

  v8 = size;
  v9 = acm_mem_alloc_data(size);
  acm_mem_alloc_info("<data>", v9, v8, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 727, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v9)
  {
    v6 = 4294967292;
    goto LABEL_28;
  }

  v10 = SerializeProcessAcl(0, a1, a2, 0, 0, 0, 0, 0, v9, &size);
  if (v10)
  {
    v6 = v10;
    v12 = 0;
    v14 = 0;
    v11 = 4096;
    goto LABEL_15;
  }

  v11 = 4096;
  v12 = acm_mem_alloc_data(0x1000uLL);
  acm_mem_alloc_info("<data>", v12, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 733, "ACMParseAclAndCopyConstraintCharacteristics");
  if (!v12)
  {
    v14 = 0;
LABEL_31:
    v6 = 4294967292;
    goto LABEL_15;
  }

  v13 = performCommand(0, 20, 0, v9, size, v12, &__n);
  v11 = __n;
  if (v13)
  {
    v6 = v13;
    v14 = 0;
    goto LABEL_15;
  }

  v14 = acm_mem_alloc_data(__n);
  acm_mem_alloc_info("<data>", v14, v11, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 739, "ACMParseAclAndCopyConstraintCharacteristics");
  v11 = __n;
  if (!v14)
  {
    goto LABEL_31;
  }

  memcpy(v14, v12, __n);
  v6 = 0;
  v11 = __n;
LABEL_15:
  (*(a3 + 16))(a3, v6, v14, v11);
  v15 = size;
  acm_mem_free_info("<data>", v9, size, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 750, "ACMParseAclAndCopyConstraintCharacteristics");
  acm_mem_free_data(v9, v15);
  if (v12)
  {
    acm_mem_free_info("<data>", v12, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 753, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v12, 0x1000uLL);
  }

  if (v14)
  {
    v16 = __n;
    acm_mem_free_info("<data>", v14, __n, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 756, "ACMParseAclAndCopyConstraintCharacteristics");
    acm_mem_free_data(v14, v16);
  }

LABEL_19:
  if (v6)
  {
    v17 = 70;
  }

  else
  {
    v17 = 10;
  }

  if (v17 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v22 = "ACMLib";
    v23 = 2080;
    v24 = "ACMParseAclAndCopyConstraintCharacteristics";
    v25 = 2048;
    v26 = v6;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void ACMGetAclAuthMethod(__n128 *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v4 = a1;
  LibCall_ACMGetAclAuthMethod_Block(ioKitTransport, &v4, a1, a2);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMGetAclAuthMethod";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ACMSetEnvironmentVariable(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariable";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariable";
    v10 = 2048;
    v11 = v3;
    v12 = 1024;
    v13 = a1;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v3;
}

uint64_t ACMSetEnvironmentVariableWithAccessPolicy(int a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariableWithAccessPolicy";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  LibCall_ACMSetEnvironmentVariable();
  v3 = v2;
  if (v2)
  {
    v4 = 70;
  }

  else
  {
    v4 = 10;
  }

  if (v4 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v7 = "ACMLib";
    v8 = 2080;
    v9 = "ACMSetEnvironmentVariableWithAccessPolicy";
    v10 = 2048;
    v11 = v3;
    v12 = 1024;
    v13 = a1;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v3;
}

uint64_t ACMGetEnvironmentVariable(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v7 = 0;
  v4 = LibCall_ACMGetEnvironmentVariable_Block(ioKitTransport, &v7, a1, a2);
  if (v4)
  {
    v5 = 70;
  }

  else
  {
    v5 = 10;
  }

  if (v5 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v9 = "ACMLib";
    v10 = 2080;
    v11 = "ACMGetEnvironmentVariable";
    v12 = 2048;
    v13 = v4;
    v14 = 1024;
    v15 = a1;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, var=%u.\n", buf, 0x26u);
  }

  return v4;
}

uint64_t ACMKernelControl(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v2 = LibCall_ACMKernelControl_Block(ioKitTransport);
  if (v2)
  {
    v3 = 70;
  }

  else
  {
    v3 = 10;
  }

  if (v3 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v6 = "ACMLib";
    v7 = 2080;
    v8 = "ACMKernelControl";
    v9 = 2048;
    v10 = v2;
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld, code=%u.\n", buf, 0x26u);
  }

  return v2;
}

void ACMGlobalContextCredentialGetProperty(int a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v6 = 0;
  LibCall_ACMGlobalContextCredentialGetProperty_Block(ioKitTransport, &v6, a1, a2, a3);
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "ACMLib";
    v9 = 2080;
    v10 = "ACMGlobalContextCredentialGetProperty";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

void ACMContextCredentialGetProperty(__n128 *a1, unsigned __int32 a2, unsigned __int32 a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextCredentialGetProperty";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = 256;
  if (a4)
  {
    v9 = a1;
    v8 = LibCall_ACMContextCredentialGetProperty(ioKitTransport, &v9, a1, a2, a3, buf, &v10);
    (*(a4 + 16))(a4, v8, buf, v10);
  }

  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextCredentialGetProperty";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", v11, 0x16u);
  }
}

uint64_t ACMContextSetData(uint64_t a1, int a2, int a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  v8 = ACMContextSetDataEx(a1, a2, 0, 0, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextSetData";
    v15 = 2048;
    v16 = v8;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return v8;
}

uint64_t ACMContextSetDataEx(uint64_t a1, int a2, int a3, int a4, int a5, int a6)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v12 = LibCall_ACMContextSetData(ioKitTransport, &v16, a1, a2, a3, a4, a5, a6, v15, a1, *buf, *&buf[8], *&buf[16], v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  if (v12)
  {
    v13 = 70;
  }

  else
  {
    v13 = 10;
  }

  if (v13 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "ACMLib";
    *&buf[12] = 2080;
    *&buf[14] = "ACMContextSetDataEx";
    *&buf[22] = 2048;
    v18 = v12;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v12;
}

uint64_t ACMContextGetData(uint64_t a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v9, 0x16u);
  }

  Data = ACMContextGetDataEx(a1, a2, 0, 0, a3);
  if (Data)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v9 = 136315650;
    v10 = "ACMLib";
    v11 = 2080;
    v12 = "ACMContextGetData";
    v13 = 2048;
    v14 = Data;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v9, 0x20u);
  }

  return Data;
}

uint64_t ACMContextGetDataProperty(uint64_t a1, unsigned __int16 a2, unsigned __int16 a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = 136315394;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", &v11, 0x16u);
  }

  Data = ACMContextGetData(a1, a2 | (a3 << 16), a4);
  if (Data)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "ACMLib";
    v13 = 2080;
    v14 = "ACMContextGetDataProperty";
    v15 = 2048;
    v16 = Data;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", &v11, 0x20u);
  }

  return Data;
}

uint64_t ACMContextCopyData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextCopyData";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v11 = 0;
  v8 = LibCall_ACMContextCopyData(ioKitTransport, &v11, a1, a2, a3, a4);
  if (v8)
  {
    v9 = 70;
  }

  else
  {
    v9 = 10;
  }

  if (v9 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v13 = "ACMLib";
    v14 = 2080;
    v15 = "ACMContextCopyData";
    v16 = 2048;
    v17 = v8;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v8;
}

uint64_t ACMContextGetInfo(__int128 *a1, int a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  v9 = a1;
  v6 = LibCall_ACMContextGetInfo(ioKitTransport, &v9, a1, a2, a3);
  if (v6)
  {
    v7 = 70;
  }

  else
  {
    v7 = 10;
  }

  if (v7 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v11 = "ACMLib";
    v12 = 2080;
    v13 = "ACMContextGetInfo";
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning, err = %ld.\n", buf, 0x20u);
  }

  return v6;
}

void updateLogLevelFromKext()
{
  v7 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: called.\n", buf, 0x16u);
  }

  output = 0;
  outputCnt = 1;
  if (IOConnectCallScalarMethod(dword_1EBDBBD1C, 2u, 0, 0, &output, &outputCnt))
  {
    goto LABEL_12;
  }

  v0 = output;
  _logLevel = output;
  if (output <= 0x1EuLL && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    updateLogLevelFromKext_cold_1();
LABEL_12:
    v0 = _logLevel;
  }

  if (v0 <= 0xA && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v4 = "ACMLib";
    v5 = 2080;
    v6 = "updateLogLevelFromKext";
    _os_log_impl(&dword_1BEA11000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s: %s: returning.\n", buf, 0x16u);
  }
}

uint64_t ioKitTransport(uint64_t *a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_8_2();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
  }

  if (a1)
  {
    v19 = init();
    v20 = 70;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = performCommand(*a1, a2, a3, a4, a5, a6, a7);
      if (v21)
      {
        v20 = 70;
      }

      else
      {
        v20 = 10;
      }
    }
  }

  else
  {
    v20 = 70;
    v21 = 4294967293;
  }

  if (v20 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_8_2();
    _os_log_impl(v22, v23, v24, v25, v26, 0x20u);
  }

  return v21;
}

uint64_t init()
{
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_8_2();
    _os_log_impl(v0, v1, v2, v3, v4, 0x16u);
  }

  if (_MergedGlobals_0)
  {
    v5 = 0;
  }

  else
  {
    v6 = *MEMORY[0x1E696CD68];
    v7 = IOServiceMatching("AppleCredentialManager");
    MatchingService = IOServiceGetMatchingService(v6, v7);
    if (!MatchingService)
    {
      v10 = 70;
      v5 = 4294967291;
      goto LABEL_10;
    }

    v9 = MatchingService;
    v5 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, dword_1EBDBBD1C);
    if (v5)
    {
      v10 = 70;
      goto LABEL_10;
    }

    IOObjectRelease(v9);
    _MergedGlobals_0 = 1;
  }

  v10 = 10;
LABEL_10:
  if (v10 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_7_2();
    OUTLINED_FUNCTION_8_2();
    _os_log_impl(v11, v12, v13, v14, v15, 0x20u);
  }

  return v5;
}

uint64_t performCommand(uint64_t a1, char a2, char a3, const void *a4, size_t a5, void *a6, size_t *a7)
{
  v50 = *MEMORY[0x1E69E9840];
  if (_logLevel <= 0xAu && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_4_3();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
  }

  inputStructCnt = 0;
  v18 = LibCall_BuildCommand(a2, 0, a3, a4, a5, &inputStructCnt);
  if (v18)
  {
    v19 = v18;
    if (!a6 && a7)
    {
      v21 = 4294967293;
    }

    else
    {
      if (a7)
      {
        v20 = *a7;
      }

      else
      {
        v20 = 0;
      }

      v41 = v20;
      v21 = IOConnectCallStructMethod(dword_1EBDBBD1C[0], 0, v18, inputStructCnt, a6, &v41);
      if (v21)
      {
        if (_logLevel <= 0x46u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_2();
          OUTLINED_FUNCTION_27_0();
          v46 = v22;
          v47 = v21;
          v48 = v22;
          v49 = v21;
          OUTLINED_FUNCTION_4_3();
          _os_log_impl(v23, v24, v25, v26, v27, 0x2Eu);
        }
      }

      else
      {
        if (_logLevel <= 0x28u && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          OUTLINED_FUNCTION_6_2();
          OUTLINED_FUNCTION_27_0();
          OUTLINED_FUNCTION_4_3();
          _os_log_impl(v28, v29, v30, v31, v32, 0x22u);
        }

        v21 = 0;
        if (a7)
        {
          *a7 = v41;
        }
      }
    }

    v33 = inputStructCnt;
    acm_mem_free_info("<data>", v19, inputStructCnt, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/ACMLib/ACMLib.c", 134, "performCommand");
    acm_mem_free_data(v19, v33);
    if (v21)
    {
      v34 = 70;
    }

    else
    {
      v34 = 10;
    }
  }

  else
  {
    v34 = 70;
    v21 = 4294967291;
  }

  if (v34 >= _logLevel && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v43 = 136315650;
    v44 = "ACMLib";
    OUTLINED_FUNCTION_13_2();
    v45 = "performCommand";
    OUTLINED_FUNCTION_1_10();
    OUTLINED_FUNCTION_4_3();
    _os_log_impl(v35, v36, v37, v38, v39, 0x20u);
  }

  return v21;
}

void updateLogLevelFromKext_cold_1()
{
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_8_2();
  _os_log_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

uint64_t LibCall_ACMContextDelete(void (*a1)(uint64_t, uint64_t, void, void *, uint64_t, void, void), uint64_t a2, void *a3, int a4)
{
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "LibCall_ACMContextDelete");
  }

  if (a1 && a3)
  {
    if (a4)
    {
      a1(a2, 2, 0, a3, 16, 0, 0);
    }

    goto LABEL_7;
  }

  if (a3)
  {
LABEL_7:
    acm_mem_free_info("ACMHandleWithPayload", a3, 0x14uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 172, "LibCall_ACMContextDelete");
    acm_mem_free(a3, 0x14uLL);
    v8 = 0;
    v9 = 10;
    goto LABEL_8;
  }

  v9 = 70;
  v8 = 4294967293;
LABEL_8:
  if (v9 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMContextDelete", v8);
  }

  return v8;
}

uint64_t LibCall_ACMKernelControl(uint64_t (*a1)(uint64_t, uint64_t, void, char *, size_t, uint64_t, uint64_t), uint64_t a2, int a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a1;
  v20[1] = *MEMORY[0x1E69E9840];
  if (gACMLoggingLevel <= 0xAu)
  {
    a1 = printf("%s: %s: called.\n", "ACM", "LibCall_ACMKernelControl");
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = a5 != 0;
  if (a4)
  {
    v14 = a5 - 4097 < 0xFFFFFFFFFFFFF000;
  }

  if (v14)
  {
LABEL_16:
    v18 = 70;
    v17 = 4294967293;
  }

  else
  {
    v20[0] = v20;
    MEMORY[0x1EEE9AC00](a1);
    v15 = (v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0));
    bzero(v15, a5 + 4);
    *v15 = a3;
    v16 = v15 + 1;
    if (a5)
    {
      memcpy(v15 + 1, a4, a5);
      v16 = (v16 + a5);
    }

    if (v16 != (v15 + a5 + 4))
    {
      LibCall_ACMKernelControl_cold_1();
    }

    v17 = v13(a2, 26, 0, v20 - ((a5 + 19) & 0xFFFFFFFFFFFFFFF0), a5 + 4, a6, a7);
    if (v17)
    {
      v18 = 70;
    }

    else
    {
      v18 = 10;
    }
  }

  if (v18 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "LibCall_ACMKernelControl", v17);
  }

  return v17;
}

void OUTLINED_FUNCTION_37()
{

  LibCall_ACMSetEnvironmentVariable();
}

uint64_t processAclCommandInternal(uint64_t (*a1)(uint64_t, void, void, void *, size_t, _DWORD *, unint64_t *), uint64_t a2, int a3, _OWORD *a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, const void *a9, unsigned int a10, unsigned int a11, _DWORD *a12, BOOL *a13, void *a14, unint64_t *a15)
{
  v19 = gACMLoggingLevel;
  v20 = "processAclCommandInternal";
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "processAclCommandInternal");
    v19 = gACMLoggingLevel;
  }

  if (v19 <= 0x14)
  {
    printf("%s: %s: command = %u.\n", "ACM", "processAclCommandInternal", a3);
    OUTLINED_FUNCTION_10_3();
    if (!(!v28 & v21))
    {
      printf("%s: %s: context = %p.\n", "ACM", "processAclCommandInternal", a4);
      OUTLINED_FUNCTION_10_3();
      if (!(!v28 & v21))
      {
        printf("%s: %s: acl = %p, aclLength = %zu.\n", "ACM", "processAclCommandInternal", a5, a6);
        OUTLINED_FUNCTION_10_3();
        if (!(!v28 & v21))
        {
          printf("%s: %s (len=%u): acl:", "ACM", "processAclCommandInternal", a6);
          v19 = gACMLoggingLevel;
        }
      }
    }
  }

  if (a6)
  {
    v22 = a6;
    v23 = a5;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v23);
        v19 = gACMLoggingLevel;
      }

      ++v23;
      --v22;
    }

    while (v22);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    OUTLINED_FUNCTION_10_3();
    if (!(!v28 & v21))
    {
      printf("%s: %s: operation = %p, operationLength = %zu.\n", "ACM", "processAclCommandInternal", a7, a8);
      OUTLINED_FUNCTION_10_3();
      if (!(!v28 & v21))
      {
        printf("%s: %s (len=%u): operation:", "ACM", "processAclCommandInternal", a8);
        v19 = gACMLoggingLevel;
      }
    }
  }

  v42 = a3;
  if (a8)
  {
    v24 = a8;
    v25 = a7;
    do
    {
      if (v19 <= 0x14)
      {
        printf("%02x ", *v25);
        v19 = gACMLoggingLevel;
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  if (v19 < 0x15)
  {
    putchar(10);
    OUTLINED_FUNCTION_10_3();
    if (!(!v28 & v21))
    {
      printf("%s: %s: parameters = %p, parameterCount = %u.\n", "ACM", "processAclCommandInternal", a9, a10);
      OUTLINED_FUNCTION_10_3();
      if (!(!v28 & v21))
      {
        printf("%s: %s: maxGlobalCredentialAge = %u.\n", "ACM", "processAclCommandInternal", a11);
        OUTLINED_FUNCTION_10_3();
        if (!(!v28 & v21))
        {
          printf("%s: %s: constraintState = %p.\n", "ACM", "processAclCommandInternal", a12);
          OUTLINED_FUNCTION_10_3();
          if (!(!v28 & v21))
          {
            printf("%s: %s: requirePasscode = %p.\n", "ACM", "processAclCommandInternal", a13);
          }
        }
      }
    }
  }

  if (a7 || a9 || a12)
  {
    if (a5)
    {
      v28 = a6 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v28;
    OUTLINED_FUNCTION_31_0();
    if (!a7)
    {
      goto LABEL_79;
    }

    if (!a8)
    {
      goto LABEL_79;
    }

    if (v29)
    {
      goto LABEL_79;
    }

    v20 = 4294967293;
    if ((a9 != 0) == (a10 == 0) || !a12)
    {
      goto LABEL_79;
    }

    v48 = 0;
    v47 = 4096;
    if (gACMLoggingLevel <= 0xAu)
    {
      printf("%s: %s: called.\n", "ACM", "processAclInternal");
    }

    SerializedProcessAclSize = GetSerializedProcessAclSize(a4, a5, a6, a7, a8, a11, a9, a10, &v48);
    if (SerializedProcessAclSize)
    {
      v20 = SerializedProcessAclSize;
      v40 = 70;
      goto LABEL_74;
    }

    v31 = v48;
    v32 = acm_mem_alloc_data(v48);
    acm_mem_alloc_info("<data>", v32, v31, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1841, "processAclInternal");
    if (!v32)
    {
      v40 = 70;
      v20 = 4294967292;
      goto LABEL_74;
    }

    v47 = 4096;
    v33 = acm_mem_alloc_data(0x1000uLL);
    acm_mem_alloc_info("<data>", v33, 4096, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1845, "processAclInternal");
    if (!v33)
    {
      v37 = 0;
      v36 = 0;
      v20 = 4294967292;
      goto LABEL_68;
    }

    v34 = SerializeProcessAcl(a4, a5, a6, a7, a8, a11, a9, a10, v32, &v48);
    if (v34 || (v34 = a1(a2, v42, 0, v32, v48, v33, &v47), v34))
    {
      v20 = v34;
      v36 = 0;
      v37 = 0;
      goto LABEL_67;
    }

    v35 = v47;
    if (v47 >= 8)
    {
      *a12 = *v33;
      if (a13)
      {
        *a13 = v33[1] != 0;
      }

      v20 = 0;
      v36 = 0;
      if (v42 != 30 || !a14)
      {
        v37 = 0;
        goto LABEL_67;
      }

      v37 = 0;
      if (!a15)
      {
LABEL_67:
        acm_mem_free_info("<data>", v33, 0x1000uLL, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1882, "processAclInternal");
        acm_mem_free_data(v33, 0x1000uLL);
LABEL_68:
        acm_mem_free_info("<data>", v32, v48, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1886, "processAclInternal");
        v38 = OUTLINED_FUNCTION_18_2();
        acm_mem_free_data(v38, v39);
        if (v20 && v37)
        {
          acm_mem_free_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1890, "processAclInternal");
          acm_mem_free_data(v37, v36);
          v40 = 70;
        }

        else if (v20)
        {
          v40 = 70;
        }

        else
        {
          v40 = 10;
        }

LABEL_74:
        if (v40 >= gACMLoggingLevel)
        {
          printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclInternal", v20);
        }

        goto LABEL_76;
      }

      if (v35 >= 0xC)
      {
        v36 = v33[2];
        if (v36)
        {
          if (v35 >= v36 + 12)
          {
            v37 = acm_mem_alloc_data(v33[2]);
            acm_mem_alloc_info("<data>", v37, v36, "/Library/Caches/com.apple.xbs/Sources/AppleCredentialManager_ClientLibs/common/LibCall.c", 1870, "processAclInternal");
            if (v37)
            {
              memcpy(v37, v33 + 3, v36);
              v20 = 0;
              *a14 = v37;
              *a15 = v36;
            }

            else
            {
              v20 = 4294967292;
            }

            goto LABEL_67;
          }

          goto LABEL_84;
        }

        v36 = 0;
        v37 = 0;
        v20 = 0;
        goto LABEL_67;
      }
    }

    v36 = 0;
LABEL_84:
    v37 = 0;
    v20 = 4294967291;
    goto LABEL_67;
  }

  if (a4)
  {
    OUTLINED_FUNCTION_31_0();
    goto LABEL_79;
  }

  OUTLINED_FUNCTION_31_0();
  if (a5 && a13 && a6)
  {
    aclRequiresPasscodeInternal();
    v20 = v27;
LABEL_76:
    if (v20)
    {
      v26 = 70;
    }

    else
    {
      v26 = 10;
    }
  }

LABEL_79:
  if (v26 >= gACMLoggingLevel)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "processAclCommandInternal", v20);
  }

  return v20;
}

void aclRequiresPasscodeInternal()
{
  OUTLINED_FUNCTION_14_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v16 = 4;
  v10 = v2;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v15 - ((v10 + 19) & 0x1FFFFFFF0));
  if (gACMLoggingLevel <= 0xAu)
  {
    printf("%s: %s: called.\n", "ACM", "aclRequiresPasscodeInternal");
  }

  bzero(&v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4);
  v12 = -3;
  if (v5 && v1)
  {
    *v11 = v3;
    memcpy(v11 + 1, v5, v10);
    v13 = v9(v7, 17, 0, &v15 - ((v10 + 19) & 0x1FFFFFFF0), v10 + 4, &v17, &v16);
    if (v13)
    {
      v12 = v13;
    }

    else if (v16 == 4)
    {
      v12 = 0;
      *v1 = 1;
    }

    else
    {
      v12 = -5;
    }
  }

  OUTLINED_FUNCTION_1_11();
  if (v14)
  {
    printf("%s: %s: returning, err = %ld.\n", "ACM", "aclRequiresPasscodeInternal", v12);
  }

  OUTLINED_FUNCTION_15_1();
}

void CoreTelephonyLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CoreTelephonyLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBFObliterationController.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getIDSHardDeregisterSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IDSLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBFObliterationController.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void __getAKUnregisterAllAppleIDsSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AuthKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBFObliterationController.m" lineNumber:39 description:{@"%s", *a1}];

  __break(1u);
}

void __getCellularLoggingClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCellularLoggingClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SBFRemoteBasebandLoggingManager.m" lineNumber:21 description:{@"Unable to find class %s", "CellularLogging"}];

  __break(1u);
}

void __getCellularLoggingClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CellularLoggingLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SBFRemoteBasebandLoggingManager.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __LAMKBLockDevice_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __LAMKBLockDevice(CFDictionaryRef)"];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:71 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBUnlockDevice_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int __LAMKBUnlockDevice(CFDataRef, CFDictionaryRef)"}];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:72 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBGetDeviceConfigurations_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFDictionaryRef __LAMKBGetDeviceConfigurations(CFDictionaryRef)"];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:73 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBGetDeviceLockState_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __LAMKBGetDeviceLockState(CFDictionaryRef)"];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:74 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBGetDeviceLockStateInfo_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFDictionaryRef __LAMKBGetDeviceLockStateInfo(CFDictionaryRef)"];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:75 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBDeviceUnlockedSinceBoot_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __LAMKBDeviceUnlockedSinceBoot(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:76 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBDeviceLockAssertion_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MKBAssertionRef __LAMKBDeviceLockAssertion(CFDictionaryRef, CFErrorRef *)"}];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:77 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBKeyBagKeyStashCreateWithOpts_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int __LAMKBKeyBagKeyStashCreateWithOpts(CFDictionaryRef, int, CFDataRef, CFDataRef)"}];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:78 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBKeyBagKeyStashCommit_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __LAMKBKeyBagKeyStashCommit(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:79 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBKeyBagKeyStashVerify_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFDictionaryRef __LAMKBKeyBagKeyStashVerify(void)"];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:80 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBEventsRegister_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MKBEvent *__LAMKBEventsRegister(__strong dispatch_queue_t, void (^__strong)(MKBEventType, CFDictionaryRef))"}];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:81 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBEventsUnregister_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void __LAMKBEventsUnregister(MKBEvent *)"];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:82 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBKeyBagPerformRecovery_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int __LAMKBKeyBagPerformRecovery(CFDataRef, CFDictionaryRef)"}];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:83 description:{@"%s", dlerror()}];

  __break(1u);
}

void __LAMKBPrewarmSPS_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int __LAMKBPrewarmSPS(CFDictionaryRef)"];
  [v0 handleFailureInFunction:v1 file:@"SBFMobileKeyBag.m" lineNumber:84 description:{@"%s", dlerror()}];

  __break(1u);
}