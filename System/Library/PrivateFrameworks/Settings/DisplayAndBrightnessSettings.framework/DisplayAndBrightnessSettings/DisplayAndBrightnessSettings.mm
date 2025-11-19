void sub_221030304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221031098(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_221031354(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

__CFString *DBSStringForDisplayZoomOption(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Standard";
  }

  else
  {
    return off_278459500[a1 - 1];
  }
}

id DBSAnimationPackageURLForDisplayZoomOptionAndUserInterfaceStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MGGetSInt32Answer();
  if (a1 == 1)
  {
    v7 = @"Zoomed";
  }

  else if (a1 == 3 || a1 == 2)
  {
    v7 = @"Dense";
  }

  else
  {
    v7 = @"Standard";
  }

  v8 = &stru_2834977A0;
  v9 = @"-Dark";
  if (a2 != 2)
  {
    v9 = &stru_2834977A0;
  }

  if (a3 == 1)
  {
    v8 = @"-RTL";
  }

  v10 = @"Classic";
  if (v6 == 2)
  {
    v10 = @"Modern";
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@%@%@", v10, v7, v8, v9];
  v12 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v13 = [v12 URLForResource:v11 withExtension:@"ca"];

  return v13;
}

id DBSStillPreviewImageForDisplayZoomOption(uint64_t a1)
{
  v2 = MGGetSInt32Answer();
  if ((a1 - 1) > 2)
  {
    v3 = @"Standard";
  }

  else
  {
    v3 = off_278459518[a1 - 1];
  }

  v4 = @"Classic";
  if (v2 == 2)
  {
    v4 = @"Modern";
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v4, v3];
  v6 = MEMORY[0x277D755B8];
  v7 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v8 = [v6 imageNamed:v5 inBundle:v7 compatibleWithTraitCollection:0];

  return v8;
}

void DBSPurgeKeyboardCache()
{
  v0 = objc_alloc(MEMORY[0x277CEC598]);
  v1 = [MEMORY[0x277CCACA8] pathWithComponents:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", CPSharedResourcesDirectory(), @"Library", @"Caches", @"com.apple.keyboards", 0)}];
  if (UIKeyboardCacheVersion_onceToken != -1)
  {
    DBSPurgeKeyboardCache_cold_1();
  }

  v2 = [v0 initWithPath:v1 version:UIKeyboardCacheVersion_buildVersion];
  [v2 purge];
}

uint64_t __UIKeyboardCacheVersion_block_invoke()
{
  result = [MGCopyAnswerWithError() hash];
  UIKeyboardCacheVersion_buildVersion = result;
  return result;
}

void sub_221036E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_221039988(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

BOOL numberInSpecifierValidationRange(void *a1, void *a2)
{
  v3 = a2;
  [a1 doubleValue];
  v5 = v4;
  v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277D3FEC0]];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D3FEB8]];

  [v9 doubleValue];
  v11 = v10;

  return v11 + 0.000001 > v5 && v8 + -0.000001 < v5;
}

void updateSpecifierValidationRange(void *a1, double a2, double a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a1;
  v7 = [v5 numberWithDouble:a2];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FEC0]];

  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FEB8]];
}

void sub_221041A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2210421F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221043574(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t DBSGetMobileFrameBuffer()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  v1 = [v0 displayConfiguration];

  v2 = [v1 deviceName];
  if (!v2)
  {
    v5 = DBSLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      DBSGetMobileFrameBuffer_cold_2(v5);
    }

    goto LABEL_7;
  }

  v3 = IOMobileFramebufferOpenByName();
  if (v3)
  {
    v4 = v3;
    v5 = DBSLogForCategory(1uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      DBSGetMobileFrameBuffer_cold_1(v4, v5);
    }

LABEL_7:
  }

  return 0;
}

uint64_t DBSChamoisEnabled()
{
  if (DBSChamoisEnabled_onceToken != -1)
  {
    DBSChamoisEnabled_cold_1();
  }

  return DBSChamoisEnabled__isChamoisEnabled;
}

uint64_t __DBSChamoisEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  DBSChamoisEnabled__isChamoisEnabled = result;
  return result;
}

uint64_t DBSReverseZoomEnabled()
{
  if (DBSReverseZoomEnabled_onceToken != -1)
  {
    DBSReverseZoomEnabled_cold_1();
  }

  return DBSReverseZoomEnabled__reverseZoomEnabled;
}

uint64_t __DBSReverseZoomEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  DBSReverseZoomEnabled__reverseZoomEnabled = result;
  return result;
}

uint64_t DBSMostDisplaySpaceEnabled()
{
  if (DBSMostDisplaySpaceEnabled_onceToken != -1)
  {
    DBSMostDisplaySpaceEnabled_cold_1();
  }

  return DBSMostDisplaySpaceEnabled__isMostDisplaySpaceEnabled;
}

uint64_t __DBSMostDisplaySpaceEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  DBSMostDisplaySpaceEnabled__isMostDisplaySpaceEnabled = result;
  return result;
}

uint64_t DBSFlexibleWindowingEnabled()
{
  if (DBSFlexibleWindowingEnabled_onceToken != -1)
  {
    DBSFlexibleWindowingEnabled_cold_1();
  }

  return DBSFlexibleWindowingEnabled__isFlexibleWindowingEnabled;
}

uint64_t __DBSFlexibleWindowingEnabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  DBSFlexibleWindowingEnabled__isFlexibleWindowingEnabled = result;
  return result;
}

double GetWhitepointShiftLuminanceLoss(float64_t a1, float64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    GetWhitepointShiftLuminanceLoss_cold_1();
  }

  if ((atomic_load_explicit(qword_27CFB0268, memory_order_acquire) & 1) == 0)
  {
    GetWhitepointShiftLuminanceLoss_cold_2();
  }

  v2.f64[0] = a1;
  v2.f64[1] = a2;
  v3 = vsubq_f64(xmmword_22105F300, v2);
  __asm { FMOV            V1.2D, #1.0 }

  v14[2] = xmmword_27CFB02C0;
  v14[3] = unk_27CFB02D0;
  v14[4] = xmmword_27CFB02E0;
  v14[5] = unk_27CFB02F0;
  v14[0] = xmmword_27CFB02A0;
  v14[1] = unk_27CFB02B0;
  v13[0] = v3;
  v13[1] = _Q1;
  v12[0] = xmmword_27CFB0280;
  v12[1] = *algn_27CFB0290;
  ChromaticAdaptationTransform<double>::ChromaticAdaptationTransform(v15, v14, v13, v12);
  return v16;
}

_OWORD *RGBXYZConversionMatrices<double>::RGBXYZConversionMatrices(_OWORD *a1, uint64_t a2, float64x2_t *a3, double a4, float64x2_t a5, double a6, double a7, double a8, float64x2_t a9, double a10, float64x2_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, float64x2_t a45, float64x2_t a46, float64x2_t a47, float64x2_t a48, float64x2_t a49, float64x2_t a50)
{
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a5.f64[0] = *(a2 + 16);
  v51 = *(a2 + 8);
  v52.f64[0] = a5.f64[0] * *a2 / v51;
  a9.f64[0] = a5.f64[0] * (1.0 - *a2 - v51) / v51;
  v52.f64[1] = a5.f64[0];
  v67 = v52;
  v68 = a9;
  v53 = *(a2 + 32);
  a5.f64[0] = *(a2 + 48);
  v52.f64[0] = *(a2 + 40);
  v54.f64[0] = a5.f64[0] * *&v53 / v52.f64[0];
  a11.f64[0] = a5.f64[0] * (1.0 - *&v53 - v52.f64[0]) / v52.f64[0];
  v54.f64[1] = a5.f64[0];
  v65 = v54;
  v66 = a11;
  v55 = *(a2 + 64);
  a5.f64[0] = *(a2 + 80);
  v52.f64[0] = *(a2 + 72);
  v54.f64[0] = a5.f64[0] * *&v55 / v52.f64[0];
  v52.f64[0] = a5.f64[0] * (1.0 - *&v55 - v52.f64[0]) / v52.f64[0];
  v69 = v52;
  v54.f64[1] = a5.f64[0];
  v64 = v54;
  v56 = *a3;
  v57 = a3[1];
  v54.f64[0] = a3->f64[1];
  a5.f64[0] = vmuld_n_f64(a3->f64[0], v57.f64[0]) / v54.f64[0];
  v62 = v57;
  v63 = a5;
  v56.f64[0] = (1.0 - a3->f64[0] - v54.f64[0]) * v57.f64[0] / v54.f64[0];
  vars0 = v56;
  __invert_d3();
  *&v58 = *&vmlaq_f64(vmlaq_f64(vmulq_f64(v63, a46), v62, a48), vars0, a50);
  v59 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a45, v63.f64[0]), a47, v62.f64[0]), a49, vars0.f64[0]);
  *a1 = vmulq_n_f64(v67, v59.f64[0]);
  a1[1] = vmulq_n_f64(v68, v59.f64[0]);
  a1[2] = vmulq_laneq_f64(v65, v59, 1);
  a1[3] = vmulq_laneq_f64(v66, v59, 1);
  a1[4] = vmulq_n_f64(v64, v58);
  a1[5] = vmulq_n_f64(v69, v58);
  __invert_d3();
  a1[8] = a47;
  a1[9] = a48;
  a1[10] = a49;
  a1[11] = a50;
  a1[6] = a45;
  a1[7] = a46;
  return a1;
}

_OWORD *ChromaticAdaptationMatrix<double>::ChromaticAdaptationMatrix(_OWORD *a1, float64x2_t *a2, float64x2_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, float64x2_t a19, float64x2_t a20, float64x2_t a21, float64x2_t a22, float64x2_t a23, float64x2_t a24, __int128 a25, float64x2_t a26, __int128 a27, float64x2_t a28, __int128 a29, float64x2_t a30)
{
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  a25 = xmmword_22105F310;
  a26 = 0x3FA3EAB367A0F909uLL;
  a27 = xmmword_22105F320;
  a28 = 0xBFB189374BC6A7F0;
  a29 = xmmword_22105F330;
  a30 = 0x3FF0793DD97F62B7uLL;
  __invert_d3();
  v33 = 0;
  v35 = *a2;
  v34 = a2[1];
  v37 = a19;
  v36 = a20;
  v39 = a21;
  v38 = a22;
  v41 = a23;
  v40 = a24;
  v42 = a2->f64[1];
  v43.f64[0] = vmuld_n_f64(a2->f64[0], v34.f64[0]) / v42;
  v35.f64[0] = (1.0 - a2->f64[0] - v42) * v34.f64[0] / v42;
  v44 = vmulq_f64(v43, 0x3FA3EAB367A0F909uLL);
  v45 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_22105F310, v43.f64[0]), xmmword_22105F320, v34.f64[0]), xmmword_22105F330, v35.f64[0]);
  v46 = vmlaq_f64(vmlaq_f64(v44, 0xBFB189374BC6A7F0, v34), 0x3FF0793DD97F62B7uLL, v35);
  v48 = *a3;
  v47 = a3[1];
  v49 = a3->f64[1];
  v50.f64[0] = vmuld_n_f64(a3->f64[0], v47.f64[0]) / v49;
  v48.f64[0] = (1.0 - a3->f64[0] - v49) * v47.f64[0] / v49;
  v51 = vmlaq_f64(vmulq_f64(v50, 0x3FA3EAB367A0F909uLL), 0xBFB189374BC6A7F0, v47);
  v52 = vdivq_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_22105F310, v50.f64[0]), xmmword_22105F320, v47.f64[0]), xmmword_22105F330, v48.f64[0]), v45);
  v50.f64[0] = 0.0;
  v50.f64[1] = v52.f64[1];
  a19 = *&v52.f64[0];
  a20 = 0u;
  a21 = v50;
  a22 = 0u;
  a23 = 0uLL;
  a24 = vdivq_f64(vmlaq_f64(v51, 0x3FF0793DD97F62B7uLL, v48), v46);
  do
  {
    v54 = *(&a19 + v33);
    v53 = *(&a19 + v33 + 16);
    v55 = (&a25 + v33);
    *v55 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v37, v54.f64[0]), v39, v54, 1), v41, *&v53);
    v55[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v36, v54.f64[0]), v38, v54, 1), v40, *&v53);
    v33 += 32;
  }

  while (v33 != 96);
  v56 = 0;
  v58 = a25;
  v57 = a26;
  v60 = a27;
  v59 = a28;
  v62 = a29;
  v61 = a30;
  a25 = xmmword_22105F310;
  a26 = 0x3FA3EAB367A0F909uLL;
  a27 = xmmword_22105F320;
  a28 = 0xBFB189374BC6A7F0;
  a29 = xmmword_22105F330;
  a30 = 0x3FF0793DD97F62B7uLL;
  do
  {
    v64 = *(&a25 + v56);
    v63 = *(&a25 + v56 + 16);
    v65 = (&a13 + v56);
    *v65 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v58, v64.f64[0]), v60, v64, 1), v62, *&v63);
    v65[1] = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v57, v64.f64[0]), v59, v64, 1), v61, *&v63);
    v56 += 32;
  }

  while (v56 != 96);
  v66 = a16;
  a1[2] = a15;
  a1[3] = v66;
  v67 = a18;
  a1[4] = a17;
  a1[5] = v67;
  v68 = a14;
  *a1 = a13;
  a1[1] = v68;
  return a1;
}

uint64_t apple_numbers_changed_notification(uint64_t a1, void *a2)
{
  [a2 _localizeAutoLockTitles];

  return [a2 reloadSpecifierID:@"AUTOLOCK"];
}

void sub_221049828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22104CFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22104D160(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22104D49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22104FD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id DBSLockScreenTimeString()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v0 setHour:9];
  [v0 setMinute:41];
  [v0 setSecond:0];
  v1 = [MEMORY[0x277CBEA80] currentCalendar];
  v2 = [v1 dateFromComponents:v0];
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setLocalizedDateFormatFromTemplate:@"Jmm"];
  v4 = [v3 stringFromDate:v2];

  return v4;
}

id DBS_LocalizedStringForMagnify(void *a1)
{
  v1 = a1;
  v2 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Magnify"];

  return v3;
}

id DBS_BundleForDisplayAndBrightnessSettingsFramework()
{
  if (DBS_BundleForDisplayAndBrightnessSettingsFramework_onceToken != -1)
  {
    DBS_BundleForDisplayAndBrightnessSettingsFramework_cold_1();
  }

  v1 = DBS_BundleForDisplayAndBrightnessSettingsFramework__displayAndBrightnessSettingsFrameworkBundle;

  return v1;
}

id DBS_LocalizedStringForDisplays(void *a1)
{
  v1 = a1;
  v2 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"Display"];

  return v3;
}

id DBS_LocalizedStringForFineTune(void *a1)
{
  v1 = a1;
  v2 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"FineTune"];

  return v3;
}

id DBS_LocalizedStringForConnectedDisplays(void *a1)
{
  v1 = a1;
  v2 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ExternalDisplays"];

  return v3;
}

id DBS_LocalizedStringForConnectedDisplays_J8xx(void *a1)
{
  v1 = a1;
  v2 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ExternalDisplays_J8xx"];

  return v3;
}

id DBS_LocalizedStringForColorSchedule(void *a1)
{
  v1 = a1;
  v2 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ColorSchedule"];

  return v3;
}

id DBS_LocalizedStringForColorTemperature(void *a1)
{
  v1 = a1;
  v2 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ColorTemperature"];

  return v3;
}

id DBS_LocalizedStringForLargeFontSettings(void *a1)
{
  v1 = a1;
  v2 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"LargeFontsSettings"];

  return v3;
}

id DBS_LocalizedStringForDeviceAppearance(void *a1)
{
  v1 = a1;
  v2 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"DeviceAppearanceSchedule"];

  return v3;
}

id DBS_LocalizedStringForPictureInPicture(void *a1)
{
  v1 = a1;
  v2 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"PiP"];

  return v3;
}

id DBS_LocalizedStringForContinuousExpose(void *a1)
{
  v1 = a1;
  v2 = DBS_BundleForDisplayAndBrightnessSettingsFramework();
  v3 = [v2 localizedStringForKey:v1 value:0 table:@"ContinuousExpose"];

  return v3;
}

void sub_221053CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id DBSLogForCategory(unint64_t a1)
{
  if (a1 >= 2)
  {
    DBSLogForCategory_cold_2();
  }

  if (DBSLogForCategory_loggingToken != -1)
  {
    DBSLogForCategory_cold_1();
  }

  v2 = DBSLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __DBSLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.settings.displayandbrightness", "Base");
  v1 = DBSLogForCategory_logObjects[0];
  DBSLogForCategory_logObjects[0] = v0;

  qword_27CFB0308 = os_log_create("com.apple.settings.displayandbrightness", "Display Zoom");

  return MEMORY[0x2821F96F8]();
}

Swift::Void __swiftcall UIViewController.dbs_popViewController()()
{
  v1 = v0;
  v2 = sub_22105BC44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 traitCollection];
  sub_22105BC54();

  LOBYTE(v6) = sub_22105BC24();
  v7 = *(v3 + 8);
  v7(v5, v2);
  if (v6)
  {
    v8 = [v1 traitCollection];
    sub_22105BC54();

    sub_22105BC34();
    v7(v5, v2);
  }

  else
  {
    v9 = [v1 navigationController];
    if (v9)
    {
      v10 = v9;
    }
  }
}

void sub_22105B050(void *a1)
{
  v1 = a1;
  UIViewController.dbs_popViewController()();
}

id sub_22105B0D8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DBSGetMobileFrameBuffer_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_22102E000, a2, OS_LOG_TYPE_ERROR, "IOMobileFramebufferOpenByName:%d", v2, 8u);
}

void GetWhitepointShiftLuminanceLoss_cold_1()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    __asm { FMOV            V0.2D, #1.0 }

    xmmword_27CFB02A0 = xmmword_22105F340;
    unk_27CFB02B0 = _Q0;
    xmmword_27CFB02C0 = xmmword_22105F350;
    unk_27CFB02D0 = _Q0;
    xmmword_27CFB02E0 = xmmword_22105F360;
    unk_27CFB02F0 = _Q0;

    __cxa_guard_release(&_MergedGlobals);
  }
}

void GetWhitepointShiftLuminanceLoss_cold_2()
{
  if (__cxa_guard_acquire(qword_27CFB0268))
  {
    __asm { FMOV            V0.2D, #1.0 }

    *algn_27CFB0290 = _Q0;
    xmmword_27CFB0280 = xmmword_22105F300;

    __cxa_guard_release(qword_27CFB0268);
  }
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}