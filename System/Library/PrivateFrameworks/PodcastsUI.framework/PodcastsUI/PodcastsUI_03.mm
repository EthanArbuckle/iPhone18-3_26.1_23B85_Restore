BOOL isStowe()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 80300;
}

BOOL isStoweOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x139AB;
}

BOOL isCopperOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x13A11;
}

BOOL isCopper()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 80400;
}

BOOL isCopperOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x13A0F;
}

BOOL isMonarchOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x15F91;
}

BOOL isMonarch()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 90000;
}

BOOL isMonarchOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x15F8F;
}

BOOL isBoulderOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x15FF5;
}

BOOL isBoulder()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 90100;
}

BOOL isBoulderOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x15FF3;
}

BOOL isCastlerockOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x16059;
}

BOOL isCastlerock()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 90200;
}

BOOL isCastlerockOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x16057;
}

BOOL isEagleOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x160BD;
}

BOOL isEagle()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 90300;
}

BOOL isEagleOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version > 0x160BB;
}

BOOL isWhitetailOrEarlier()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version < 0x186A1;
}

BOOL isWhitetail()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version == 100000;
}

BOOL isWhitetailOrLater()
{
  if (deviceVersion_onceToken[0] != -1)
  {
    isWildcatOrEarlier_cold_1();
  }

  return deviceVersion_version >> 5 > 0xC34;
}

BOOL isRetina()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  if (objc_opt_respondsToSelector())
  {
    [v0 scale];
    v2 = v1 > 1.0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL isARMv6()
{
  v2 = 0;
  v1 = 4;
  sysctlbyname("hw.cpusubtype", &v2, &v1, 0, 0);
  return v2 == 6;
}

BOOL isK48()
{
  if (isK48_onceToken != -1)
  {
    isK48_cold_1();
  }

  return isK48_result == 0;
}

uint64_t __isK48_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  memset(&v1, 0, 512);
  uname(&v1);
  result = strncmp(v1.machine, "iPad1,1", 7uLL);
  isK48_result = result;
  return result;
}

BOOL isN18()
{
  if (isN18_onceToken != -1)
  {
    isN18_cold_1();
  }

  return isN18_result == 0;
}

uint64_t __isN18_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  memset(&v1, 0, 512);
  uname(&v1);
  result = strncmp(v1.machine, "iPod3,1", 7uLL);
  isN18_result = result;
  return result;
}

BOOL isN88()
{
  if (isN88_onceToken != -1)
  {
    isN88_cold_1();
  }

  return isN88_result == 0;
}

uint64_t __isN88_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  memset(&v1, 0, 512);
  uname(&v1);
  result = strncmp(v1.machine, "iPhone2,1", 9uLL);
  isN88_result = result;
  return result;
}

BOOL isN56()
{
  if (isN56_onceToken != -1)
  {
    isN56_cold_1();
  }

  return isN56_result == 0;
}

uint64_t __isN56_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  memset(&v1, 0, 512);
  uname(&v1);
  result = strncmp(v1.machine, "iPhone7,1", 9uLL);
  isN56_result = result;
  return result;
}

BOOL isN61()
{
  if (isN61_onceToken != -1)
  {
    isN61_cold_1();
  }

  return isN61_result == 0;
}

uint64_t __isN61_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  memset(&v1, 0, 512);
  uname(&v1);
  result = strncmp(v1.machine, "iPhone7,2", 9uLL);
  isN61_result = result;
  return result;
}

BOOL isN66()
{
  if (isN66_onceToken != -1)
  {
    isN66_cold_1();
  }

  return isN66_result == 0;
}

uint64_t __isN66_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  memset(&v1, 0, 512);
  uname(&v1);
  result = strncmp(v1.machine, "iPhone8,2", 9uLL);
  isN66_result = result;
  return result;
}

BOOL isN71()
{
  if (isN71_onceToken != -1)
  {
    isN71_cold_1();
  }

  return isN71_result == 0;
}

uint64_t __isN71_block_invoke()
{
  v2 = *MEMORY[0x277D85DE8];
  memset(&v1, 0, 512);
  uname(&v1);
  result = strncmp(v1.machine, "iPhone8,1", 9uLL);
  isN71_result = result;
  return result;
}

uint64_t isN56Width()
{
  if (isN56Width_onceToken != -1)
  {
    isN56Width_cold_1();
  }

  return isN56Width_result;
}

void __isN56Width_block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  v1 = [v0 currentMode];
  [v1 size];
  v3 = v2;

  v5 = [MEMORY[0x277D759A0] mainScreen];
  [v5 scale];
  isN56Width_result = v3 >= v4 * 414.0 + -0.00000011920929;
}

uint64_t isN61Width()
{
  if (isN61Width_onceToken != -1)
  {
    isN61Width_cold_1();
  }

  return isN61Width_result;
}

void __isN61Width_block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  v1 = [v0 currentMode];
  [v1 size];
  v3 = v2;

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  if (v3 >= v4 * 375.0 + -0.00000011920929)
  {
    v5 = [MEMORY[0x277D759A0] mainScreen];
    [v5 scale];
    isN61Width_result = v3 < v6 * 414.0 + -0.00000011920929;
  }

  else
  {
    isN61Width_result = 0;
  }
}

uint64_t isH4()
{
  if (isH4_onceToken != -1)
  {
    isH4_cold_1();
  }

  return isH4_isLowEndHardware;
}

void __isH4_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    isH4_isLowEndHardware = [v0 BOOLValue];
  }

  else
  {
    valuePtr = 0;
    v2 = MGCopyAnswer();
    if (v2)
    {
      v3 = v2;
      CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr);
      CFRelease(v3);
      v4 = (valuePtr & 0xFFF0) == 35136;
    }

    else
    {
      v4 = 0;
    }

    isH4_isLowEndHardware = v4;
  }
}

void __deviceVersion_block_invoke()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v0 systemVersion];

  if ([v4 compare:@"3.2" options:64] == -1)
  {
    v1 = 0;
    goto LABEL_36;
  }

  if ([v4 compare:@"4.0" options:64] == -1)
  {
    v1 = 30200;
    goto LABEL_36;
  }

  if ([v4 compare:@"4.1" options:64] == -1)
  {
    v1 = 40000;
    goto LABEL_36;
  }

  if ([v4 compare:@"4.2" options:64] == -1)
  {
    v1 = 40100;
    goto LABEL_36;
  }

  if ([v4 compare:@"4.3" options:64] == -1)
  {
    v1 = 40200;
    goto LABEL_36;
  }

  if ([v4 compare:@"5.0" options:64] == -1)
  {
    v1 = 40300;
    goto LABEL_36;
  }

  if ([v4 compare:@"5.1" options:64] == -1)
  {
    v1 = 50000;
    goto LABEL_36;
  }

  if ([v4 compare:@"6.0" options:64] == -1)
  {
    v1 = 50100;
    goto LABEL_36;
  }

  if ([v4 compare:@"6.1" options:64] == -1)
  {
    v1 = 60000;
    goto LABEL_36;
  }

  if ([v4 compare:@"6.2" options:64] == -1)
  {
    v1 = 61000;
    goto LABEL_36;
  }

  v1 = 70000;
  if ([v4 compare:@"7.1" options:64] == -1)
  {
    goto LABEL_36;
  }

  if ([v4 compare:@"8.0" options:64] == -1)
  {
    goto LABEL_35;
  }

  v1 = 80000;
  if ([v4 compare:@"8.1" options:64] == -1)
  {
    goto LABEL_36;
  }

  if ([v4 compare:@"8.2" options:64] == -1)
  {
LABEL_35:
    v1 += 100;
    goto LABEL_36;
  }

  if ([v4 compare:@"8.3" options:64] == -1)
  {
LABEL_40:
    v1 += 200;
    goto LABEL_36;
  }

  if ([v4 compare:@"8.4" options:64] == -1)
  {
LABEL_41:
    v1 += 300;
    goto LABEL_36;
  }

  if ([v4 compare:@"9.0" options:64] == -1)
  {
    v1 = 80400;
    goto LABEL_36;
  }

  v1 = 90000;
  if ([v4 compare:@"9.1" options:64] == -1)
  {
LABEL_36:
    v3 = v4;
    goto LABEL_37;
  }

  if ([v4 compare:@"9.2" options:64] == -1)
  {
    goto LABEL_35;
  }

  if ([v4 compare:@"9.3" options:64] == -1)
  {
    goto LABEL_40;
  }

  if ([v4 compare:@"10.0" options:64] == -1)
  {
    goto LABEL_41;
  }

  v2 = [v4 compare:@"10.1" options:64] == -1;
  v3 = v4;
  if (v2)
  {
    v1 = 100000;
  }

  else
  {
    v1 = 999999;
  }

LABEL_37:
  deviceVersion_version = v1;
}

double CGRectFitRectInRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = *MEMORY[0x277CBF3A0];
  v9 = *(MEMORY[0x277CBF3A0] + 8);
  v10 = 0.0;
  if (a3 != *MEMORY[0x277CBF3A8] || a4 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v12 = a7;
    v13 = a8;
    v14 = a3;
    v15 = a4;
    v10 = fminf(v12 / v14, v13 / v15);
  }

  v16 = a3 * v10;
  v17 = a4 * v10;
  if (a7 > v16)
  {
    v8 = (a7 - v16) * 0.5;
  }

  if (a8 > v17)
  {
    v9 = (a8 - v17) * 0.5;
  }

  *&result = CGRectIntegral(*&v8);
  return result;
}

double CGSizeScaleThatFitsInCGSize(double result, double a2, double a3, double a4)
{
  if (result == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    return 0.0;
  }

  v5 = a3;
  v6 = a4;
  v7 = result;
  v8 = a2;
  *&result = fminf(v5 / v7, v6 / v8);
  return result;
}

double CGRectCenterRectInRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v16 = MidX - CGRectGetWidth(v20) * 0.5;
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  CGRectGetMidY(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetHeight(v22);
  return v16;
}

double CGRectGetCenter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = ceil(CGRectGetMidX(*&a1));
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return v8;
}

double CGRectMultiply(double result, double a2, double a3, double a4, double a5)
{
  if (a5 != 1.0)
  {
    return result * a5;
  }

  return result;
}

double CGSizeScaleThatFillsInCGSize(double result, double a2, double a3, double a4)
{
  if (result == *MEMORY[0x277CBF3A8] && a2 == *(MEMORY[0x277CBF3A8] + 8))
  {
    return 0.0;
  }

  v5 = a3;
  v6 = a4;
  v7 = result;
  v8 = a2;
  *&result = fmaxf(v5 / v7, v6 / v8);
  return result;
}

double CGSizeScaledToFitInSize(double a1, double a2, double a3, double a4)
{
  v4 = 0.0;
  if (a1 != *MEMORY[0x277CBF3A8] || a2 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v6 = a3;
    v7 = a4;
    v8 = a1;
    v9 = a2;
    v4 = fminf(v6 / v8, v7 / v9);
  }

  return a1 * v4;
}

double CGSizeScaledToFillInSize(double a1, double a2, double a3, double a4)
{
  v4 = 0.0;
  if (a1 != *MEMORY[0x277CBF3A8] || a2 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v6 = a3;
    v7 = a4;
    v8 = a1;
    v9 = a2;
    v4 = fmaxf(v6 / v8, v7 / v9);
  }

  return a1 * v4;
}

double CGSizeMakeEvenSize(double result)
{
  if (result)
  {
    return result + -1.0;
  }

  return result;
}

double CGSizeMin(double result, double a2, double a3, double a4)
{
  v4 = a3 > result;
  if (a4 > a2)
  {
    v4 = 1;
  }

  if (!v4)
  {
    return a3;
  }

  return result;
}

double IMRoundToPixel(double a1)
{
  v2 = *&IMRoundToPixel_scale;
  if (*&IMRoundToPixel_scale == -1.0)
  {
    v3 = [MEMORY[0x277D759A0] mainScreen];
    [v3 scale];
    IMRoundToPixel_scale = v4;

    v2 = *&IMRoundToPixel_scale;
  }

  return round(v2 * a1) / v2;
}

void CGRectEdgePointAtAngle(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  CGRectGetMidX(*&a1);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMidY(v11);
  v10 = __sincos_stret(a5);
  if (v10.__sinval <= 0.0000999999975)
  {
    if (v10.__sinval < -0.0000999999975)
    {
      v14.origin.x = a1;
      v14.origin.y = a2;
      v14.size.width = a3;
      v14.size.height = a4;
      CGRectGetMinY(v14);
      v15.origin.x = a1;
      v15.origin.y = a2;
      v15.size.width = a3;
      v15.size.height = a4;
      CGRectGetMinY(v15);
    }
  }

  else
  {
    v12.origin.x = a1;
    v12.origin.y = a2;
    v12.size.width = a3;
    v12.size.height = a4;
    CGRectGetMaxY(v12);
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    CGRectGetMaxY(v13);
  }

  if (v10.__cosval <= 0.0000999999975)
  {
    if (v10.__cosval < -0.0000999999975)
    {
      v18.origin.x = a1;
      v18.origin.y = a2;
      v18.size.width = a3;
      v18.size.height = a4;
      CGRectGetMinX(v18);
      v19.origin.x = a1;
      v19.origin.y = a2;
      v19.size.width = a3;
      v19.size.height = a4;
      CGRectGetMinX(v19);
    }
  }

  else
  {
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    CGRectGetMaxX(v16);
    v17.origin.x = a1;
    v17.origin.y = a2;
    v17.size.width = a3;
    v17.size.height = a4;
    CGRectGetMaxX(v17);
  }
}

double IMRectCenteredIntegralRectScale(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = a5 + (a7 - a3) * 0.5;
  v17 = fabs(a9);
  v18 = a9;
  if (v17 < 0.00000011920929)
  {
    if (IMAdjustToScale_onceToken_0 != -1)
    {
      IMRectCenteredIntegralRectScale_cold_1();
    }

    v18 = *&IMAdjustToScale___s_0;
  }

  v19 = v18 == 1.0;
  v20 = round(v16 * v18) / v18;
  v21 = round(v16);
  if (v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  if (v17 < 0.00000011920929 && IMAdjustToScale_onceToken_0 != -1)
  {
    IMRectCenteredIntegralRectScale_cold_1();
  }

  return v22;
}

void IMRectCenteredXInRectScale(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (fabs(a9) < 0.00000011920929 && IMAdjustToScale_onceToken_0 != -1)
  {
    IMRectCenteredIntegralRectScale_cold_1();
  }
}

double IMRectCenteredYInRectScale(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (fabs(a9) < 0.00000011920929 && IMAdjustToScale_onceToken_0 != -1)
  {
    IMRectCenteredIntegralRectScale_cold_1();
  }

  return a1;
}

void IMRectCenteredAboutPointScale(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = fabs(a7);
  if (v7 < 0.00000011920929 && IMAdjustToScale_onceToken_0 != -1)
  {
    IMRectCenteredIntegralRectScale_cold_1();
  }

  if (v7 < 0.00000011920929 && IMAdjustToScale_onceToken_0 != -1)
  {
    IMRectCenteredIntegralRectScale_cold_1();
  }
}

void __IMAdjustToScale_block_invoke_0()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 scale];
  v2 = v1;

  IMAdjustToScale___s_0 = v2;
}

void sub_21B3EC14C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t UnownedImageIssueIdentifier.startIdentifyingIssues(for:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UnownedImageIssueIdentifier();
  v94 = *(v4 - 8);
  v92 = *(v94 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v106 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_21B4C6998();
  v74 = *(v79 - 8);
  v107 = *(v74 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v69 - v8;
  v10 = sub_21B4C5748();
  v85 = *(v10 - 8);
  v11 = v85;
  v103 = *(v85 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867B8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v69 - v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867C0);
  v76 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v69 - v18;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867C8);
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v105 = &v69 - v19;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867D0);
  v90 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v78 = &v69 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867D8);
  v22 = *(v21 - 8);
  v95 = v21;
  v96 = v22;
  MEMORY[0x28223BE20](v21);
  v84 = &v69 - v23;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867E0);
  v102 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v88 = &v69 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867E8);
  v26 = *(v25 - 8);
  v100 = v25;
  v101 = v26;
  MEMORY[0x28223BE20](v25);
  v91 = &v69 - v27;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD867F0);
  v99 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v93 = &v69 - v28;
  v29 = *(v11 + 16);
  v82 = v11 + 16;
  v83 = v29;
  v80 = v13;
  v81 = v10;
  v29(v13, v2, v10);
  sub_21B4C76D8();
  v71 = a1;
  v30 = sub_21B4C6988();
  v108 = v30;
  v31 = sub_21B4C9DE8();
  (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
  v69 = sub_21B3F12CC(0, &qword_281200500);
  v32 = sub_21B3F1314(&qword_2811FD280, &qword_27CD867B8);
  v33 = sub_21B36C98C();
  sub_21B4C77B8();
  sub_21B36CA3C(v9);

  (*(v15 + 8))(v17, v14);
  v34 = v74;
  v70 = *(v74 + 16);
  v35 = v77;
  v36 = v79;
  v70(v77, a1, v79);
  v37 = *(v34 + 80);
  v38 = swift_allocObject();
  v73 = *(v34 + 32);
  v73(v38 + ((v37 + 16) & ~v37), v35, v36);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86800);
  v108 = v14;
  v109 = v69;
  v110 = v32;
  v111 = v33;
  swift_getOpaqueTypeConformance2();
  v39 = v75;
  v40 = v72;
  sub_21B4C7888();

  (*(v76 + 8))(v40, v39);
  v41 = v106;
  sub_21B3EF1BC(v104, v106);
  v42 = v35;
  v70(v35, v71, v36);
  v43 = *(v94 + 80);
  v44 = (v43 + 16) & ~v43;
  v94 = v43 | 7;
  v45 = (v44 + v92 + v37) & ~v37;
  v46 = swift_allocObject();
  v107 = type metadata accessor for UnownedImageIssueIdentifier;
  sub_21B3F13B0(v41, v46 + v44, type metadata accessor for UnownedImageIssueIdentifier);
  v73(v46 + v45, v42, v36);
  sub_21B4C7688();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86810);
  sub_21B3F1314(&qword_2811FD338, &qword_27CD867C8);
  sub_21B3F1314(&qword_2811FD350, &unk_27CD86810);
  v47 = v78;
  v48 = v86;
  v49 = v105;
  sub_21B4C78C8();

  (*(v87 + 8))(v49, v48);
  v50 = v104;
  v51 = v106;
  sub_21B3EF1BC(v104, v106);
  v52 = swift_allocObject();
  sub_21B3F13B0(v51, v52 + v44, v107);
  sub_21B3F1314(&unk_2811FD2F8, &qword_27CD867D0);
  v53 = v84;
  v54 = v89;
  sub_21B4C7828();

  (*(v90 + 8))(v47, v54);
  sub_21B4C7688();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86820);
  sub_21B3F1314(&qword_2811FD378, &qword_27CD867D8);
  sub_21B3F1314(&unk_2811FD2E0, &qword_27CD86820);
  v55 = v88;
  v56 = v95;
  sub_21B4C78B8();
  (*(v96 + 8))(v53, v56);
  v57 = v80;
  v58 = v81;
  v83(v80, v50, v81);
  v59 = v85;
  v60 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v61 = swift_allocObject();
  (*(v59 + 32))(v61 + v60, v57, v58);
  sub_21B3F1314(&qword_2811FD308, &qword_27CD867E0);
  v62 = v91;
  v63 = v98;
  sub_21B4C7828();

  (*(v102 + 8))(v55, v63);
  sub_21B4C6958();
  v64 = v93;
  v65 = v100;
  sub_21B4C7638();
  (*(v101 + 8))(v62, v65);
  sub_21B3F1314(&qword_2811FD380, &unk_27CD867F0);
  v66 = v97;
  v67 = sub_21B4C77D8();
  (*(v99 + 8))(v64, v66);
  return v67;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_21B3EEA0C@<X0>(void *a1@<X8>)
{
  sub_21B4C6968();
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  sub_21B4C5708();
  v3 = sub_21B4C5E98();
  if (v1)
  {

    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v5 = v3;
    v18 = a1;

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = v5 + 40;
      v19 = MEMORY[0x277D84F90];
      do
      {
        v9 = (v8 + 16 * v7);
        v10 = v7;
        while (1)
        {
          if (v10 >= *(v5 + 16))
          {
            __break(1u);
            return result;
          }

          v12 = *(v9 - 1);
          v11 = *v9;
          v7 = v10 + 1;
          sub_21B3A5DF0();

          if (sub_21B4CA248())
          {
            break;
          }

          v9 += 2;
          ++v10;
          if (v6 == v7)
          {
            goto LABEL_17;
          }
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v13 = v19;
        v21 = v19;
        if ((result & 1) == 0)
        {
          result = sub_21B3982B0(0, *(v19 + 16) + 1, 1);
          v13 = v21;
        }

        v15 = *(v13 + 16);
        v14 = *(v13 + 24);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          result = sub_21B3982B0((v14 > 1), v15 + 1, 1);
          v16 = v15 + 1;
          v13 = v21;
        }

        *(v13 + 16) = v16;
        v19 = v13;
        v17 = v13 + 16 * v15;
        *(v17 + 32) = v12;
        *(v17 + 40) = v11;
        v8 = v5 + 40;
      }

      while (v6 - 1 != v10);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

LABEL_17:

    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *v18 = v19;
  }

  return result;
}

uint64_t sub_21B3EECB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v29[1] = a2;
  v38 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86930);
  v5 = *(v4 - 8);
  v34 = v4;
  v35 = v5;
  MEMORY[0x28223BE20](v4);
  v33 = v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86938);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  MEMORY[0x28223BE20](v7);
  v32 = v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86940);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86948);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86950);
  v19 = *(v18 - 8);
  v30 = v18;
  v31 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = v29 - v20;
  v22 = *a1;
  sub_21B3EF304(v13);
  sub_21B3F1314(&qword_2811FD388, &qword_27CD86940);
  sub_21B4C78A8();
  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86960);
  sub_21B3F1314(&unk_2811FD328, &qword_27CD86948);
  sub_21B4C7828();
  (*(v15 + 8))(v17, v14);
  v39 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86800);
  v23 = v33;
  sub_21B4C76D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
  v24 = v32;
  v25 = v34;
  sub_21B4C76C8();
  (*(v35 + 8))(v23, v25);
  sub_21B3F1314(&unk_2811FD368, &unk_27CD86950);
  sub_21B3F1314(&qword_2811FCA60, &qword_27CD86938);
  v26 = v30;
  v27 = v36;
  sub_21B4C7838();
  (*(v37 + 8))(v24, v27);
  return (*(v31 + 8))(v21, v26);
}

uint64_t sub_21B3EF1BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnownedImageIssueIdentifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B3EF220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for UnownedImageIssueIdentifier() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_21B4C6998() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_21B3EECB0(a1, v9, a2);
}

uint64_t sub_21B3EF304@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86978);
  v5 = *(v4 - 8);
  v43 = v4;
  v44 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86980);
  v9 = *(v8 - 8);
  v45 = v8;
  v46 = v9;
  MEMORY[0x28223BE20](v8);
  v41 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86988);
  v12 = *(v11 - 8);
  v47 = v11;
  v48 = v12;
  MEMORY[0x28223BE20](v11);
  v42 = &v41 - v13;
  sub_21B3F12CC(0, &qword_2811FCA90);
  v14 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v14 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86998);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21B4D1CD0;
  v16 = sub_21B4C9708();
  v17 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v18 = v17;
  *(v15 + 32) = v16;
  *(v15 + 40) = v19;
  v20 = sub_21B4C9708();
  *(v15 + 88) = v18;
  *(v15 + 64) = v20;
  *(v15 + 72) = v21;
  v22 = sub_21B4C9708();
  *(v15 + 120) = v18;
  *(v15 + 96) = v22;
  *(v15 + 104) = v23;
  v24 = sub_21B4C9708();
  *(v15 + 152) = v18;
  *(v15 + 128) = v24;
  *(v15 + 136) = v25;
  v26 = sub_21B4C9708();
  *(v15 + 184) = v18;
  *(v15 + 160) = v26;
  *(v15 + 168) = v27;
  v28 = sub_21B4C9918();

  [v14 setPropertiesToFetch_];

  sub_21B4C6978();
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v51 = sub_21B4C6A98();
  v29 = sub_21B4C6988();
  v50 = v29;
  v30 = sub_21B4C9DE8();
  (*(*(v30 - 8) + 56))(v3, 1, 1, v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD869A0);
  v32 = sub_21B3F12CC(0, &qword_281200500);
  v33 = sub_21B3F1314(&qword_2811FD298, &unk_27CD869A0);
  v34 = sub_21B36C98C();
  sub_21B4C77B8();
  sub_21B36CA3C(v3);

  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD869B0);
  v52[0] = v31;
  v52[1] = v32;
  v52[2] = v33;
  v53 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v41;
  v36 = v43;
  sub_21B4C77E8();
  (*(v44 + 8))(v7, v36);
  sub_21B4C7688();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD869B8);
  sub_21B3F1314(&qword_2811FD3D0, &qword_27CD86980);
  sub_21B3F1314(&qword_2811FD2F0, &qword_27CD869B8);
  v37 = v42;
  v38 = v45;
  sub_21B4C78B8();
  (*(v46 + 8))(v35, v38);
  sub_21B3F1314(&qword_2811FD310, &unk_27CD86988);
  v39 = v47;
  sub_21B4C7828();

  return (*(v48 + 8))(v37, v39);
}

uint64_t sub_21B3EF97C@<X0>(uint64_t *a1@<X8>)
{

  v3 = sub_21B3A40C8(v2);

  *a1 = v3;
  return result;
}

char *sub_21B3EF9C4@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  type metadata accessor for UnownedImageIssueIdentifier();
  result = sub_21B3EFA38(*a1, a1[1]);
  *a2 = result;
  return result;
}

char *sub_21B3EFA38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v24 = a2 + 32;
  v5 = a1 + 56;
  v6 = MEMORY[0x277D84F90];
  v23 = *(a2 + 16);
  do
  {
    v7 = (v24 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];

    v10 = sub_21B4C63C8();
    v12 = v11;
    sub_21B3F1278();
    if (sub_21B4C9BD8())
    {
      if (*(a1 + 16) && (sub_21B4CA6E8(), sub_21B4C9658(), v13 = sub_21B4CA738(), v14 = -1 << *(a1 + 32), v15 = v13 & ~v14, ((*(v5 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0))
      {
        v16 = ~v14;
        while (1)
        {
          v17 = (*(a1 + 48) + 16 * v15);
          v18 = *v17 == v10 && v17[1] == v12;
          if (v18 || (sub_21B4CA608() & 1) != 0)
          {
            break;
          }

          v15 = (v15 + 1) & v16;
          if (((*(v5 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v2 = v23;
      }

      else
      {
LABEL_15:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_21B36CCAC(0, *(v6 + 2) + 1, 1, v6);
        }

        v2 = v23;
        v20 = *(v6 + 2);
        v19 = *(v6 + 3);
        if (v20 >= v19 >> 1)
        {
          v6 = sub_21B36CCAC((v19 > 1), v20 + 1, 1, v6);
        }

        *(v6 + 2) = v20 + 1;
        v21 = &v6[16 * v20];
        *(v21 + 4) = v9;
        *(v21 + 5) = v8;
      }
    }

    else
    {
    }

    ++v4;
  }

  while (v4 != v2);
  return v6;
}

uint64_t sub_21B3EFCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86928) + 48);
  v5 = sub_21B4C5748();
  (*(*(v5 - 8) + 16))(a2 + v4, a1, v5);
  sub_21B4C5878();
  v6 = *MEMORY[0x277D3D760];
  v7 = sub_21B4C6958();
  v8 = *(*(v7 - 8) + 104);

  return v8(a2, v6, v7);
}

uint64_t sub_21B3EFDBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21B4C5D78();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_21B4C5E78();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v53 = sub_21B4C9708();
  v54 = v10;
  sub_21B4CA2E8();
  if (!*(v9 + 16) || (v11 = sub_21B37186C(v56), (v12 & 1) == 0))
  {
    result = sub_21B3F135C(v56);
    goto LABEL_9;
  }

  sub_21B36D428(*(v9 + 56) + 32 * v11, v55);
  sub_21B3F135C(v56);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_9:
    v18 = 0;
    goto LABEL_10;
  }

  v45 = v53;
  v53 = sub_21B4C9708();
  v54 = v14;
  sub_21B4CA2E8();
  v15 = *(v9 + 16);
  v44 = a2;
  if (v15 && (v16 = sub_21B37186C(v56), (v17 & 1) != 0))
  {
    sub_21B36D428(*(v9 + 56) + 32 * v16, v55);
    sub_21B3F135C(v56);
    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }
  }

  else
  {
    sub_21B3F135C(v56);
  }

  v47 = 0;
  v48 = 0;
LABEL_13:
  v53 = sub_21B4C9708();
  v54 = v19;
  sub_21B4CA2E8();
  if (*(v9 + 16) && (v20 = sub_21B37186C(v56), (v21 & 1) != 0))
  {
    sub_21B36D428(*(v9 + 56) + 32 * v20, v55);
    sub_21B3F135C(v56);
    if (swift_dynamicCast())
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_21B3F135C(v56);
  }

  v49 = 0;
  v50 = 0;
LABEL_19:
  v53 = sub_21B4C9708();
  v54 = v22;
  sub_21B4CA2E8();
  if (!*(v9 + 16) || (v23 = sub_21B37186C(v56), (v24 & 1) == 0))
  {
    result = sub_21B3F135C(v56);
    goto LABEL_24;
  }

  sub_21B36D428(*(v9 + 56) + 32 * v23, v55);
  sub_21B3F135C(v56);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_24:
    v51 = 0;
    v52 = 0;
  }

  v25 = 0;
  v26 = MEMORY[0x277D84F90];
LABEL_26:
  v27 = 3;
  if (v25 > 3)
  {
    v27 = v25;
  }

  v28 = v27 + 1;
  v29 = 16 * v25 + 40;
  while (v25 != 3)
  {
    if (v28 == ++v25)
    {
      __break(1u);
      return result;
    }

    v30 = v29 + 16;
    v31 = *&v46[v29];
    v29 += 16;
    if (v31)
    {
      v32 = *(&v43 + v30);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_21B36CCAC(0, *(v26 + 16) + 1, 1, v26);
        v26 = result;
      }

      v33 = v26;
      v34 = *(v26 + 16);
      v35 = v33;
      v36 = *(v33 + 24);
      if (v34 >= v36 >> 1)
      {
        result = sub_21B36CCAC((v36 > 1), v34 + 1, 1, v35);
        v35 = result;
      }

      *(v35 + 16) = v34 + 1;
      v37 = v35 + 16 * v34;
      v26 = v35;
      *(v37 + 32) = v32;
      *(v37 + 40) = v31;
      goto LABEL_26;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD869C0);
  swift_arrayDestroy();
  v38 = *(v26 + 16);
  if (v38)
  {
    v55[0] = MEMORY[0x277D84F90];
    sub_21B3F2B9C(0, v38, 0);
    v18 = v55[0];
    v56[0] = xmmword_21B4D1CE0;
    memset(&v56[1], 0, 41);
    v43 = v26;
    v39 = v26 + 40;
    do
    {

      sub_21B4C5D48();
      sub_21B4C61C8();

      sub_21B4C5E68();
      v55[0] = v18;
      v41 = *(v18 + 16);
      v40 = *(v18 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_21B3F2B9C(v40 > 1, v41 + 1, 1);
        v18 = v55[0];
      }

      *(v18 + 16) = v41 + 1;
      sub_21B3F13B0(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v41, MEMORY[0x277D3D488]);
      v39 += 16;
      --v38;
    }

    while (v38);
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  a2 = v44;
LABEL_10:
  *a2 = v18;
  return result;
}

uint64_t sub_21B3F03C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  sub_21B3F1314(a6, a4);
  return sub_21B4C98A8();
}

uint64_t sub_21B3F0468()
{
  swift_getKeyPath();

  swift_getAtKeyPath();
}

uint64_t sub_21B3F04D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21B4C64F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  ArtworkModel.preferredRequest.getter(&v14 - v7);
  sub_21B4C6408();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = sub_21B4C63F8();
  v12 = v11;
  result = (v9)(v6, v2);
  *a1 = v10;
  a1[1] = v12;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21B3F0738(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B3F0758(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_21B3F0824()
{
  sub_21B4CA6E8();
  swift_getWitnessTable();
  sub_21B4C5B18();
  return sub_21B4CA738();
}

BOOL sub_21B3F0894(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_21B3F08D8()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

uint64_t sub_21B3F0920()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

BOOL sub_21B3F0980(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_21B3F09E4(uint64_t a1, id *a2)
{
  result = sub_21B4C96E8();
  *a2 = 0;
  return result;
}

uint64_t sub_21B3F0A5C(uint64_t a1, id *a2)
{
  v3 = sub_21B4C96F8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21B3F0ADC@<X0>(uint64_t *a1@<X8>)
{
  sub_21B4C9708();
  v2 = sub_21B4C96C8();

  *a1 = v2;
  return result;
}

uint64_t sub_21B3F0B20()
{
  swift_getWitnessTable();

  return sub_21B4C5B08();
}

uint64_t sub_21B3F0BD4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B3F0C78(uint64_t a1)
{
  v2 = sub_21B3F0BD4(&qword_27CD869E0, type metadata accessor for Name);
  v3 = sub_21B3F0BD4(&qword_27CD869E8, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21B3F0D34(uint64_t a1)
{
  v2 = sub_21B3F0BD4(&qword_27CD86918, type metadata accessor for AMSBagKey);
  v3 = sub_21B3F0BD4(&qword_27CD86920, type metadata accessor for AMSBagKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21B3F0E80@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_21B4C96C8();

  *a1 = v2;
  return result;
}

uint64_t sub_21B3F0EC8(uint64_t a1)
{
  v2 = sub_21B3F0BD4(&qword_2812004E8, type metadata accessor for AttributeName);
  v3 = sub_21B3F0BD4(&qword_27CD86910, type metadata accessor for AttributeName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21B3F0F84()
{
  v0 = sub_21B4C9708();
  v1 = MEMORY[0x21CEF2FB0](v0);

  return v1;
}

uint64_t sub_21B3F0FC0()
{
  sub_21B4C9708();
  sub_21B4C9658();
}

uint64_t sub_21B3F1014()
{
  sub_21B4C9708();
  sub_21B4CA6E8();
  sub_21B4C9658();
  v0 = sub_21B4CA738();

  return v0;
}

uint64_t sub_21B3F1088()
{
  v0 = sub_21B4C9708();
  v2 = v1;
  if (v0 == sub_21B4C9708() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_21B4CA608();
  }

  return v5 & 1;
}

unint64_t sub_21B3F1278()
{
  result = qword_2811FCE78;
  if (!qword_2811FCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FCE78);
  }

  return result;
}

uint64_t sub_21B3F12CC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21B3F1314(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B3F13B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21B3F1418(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t MTPlaylist.artworkModel.getter@<X0>(uint64_t a1@<X8>)
{
  v72 = sub_21B4C64F8();
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v67 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21B4C5D78();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v62 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v66 = v61 - v11;
  MEMORY[0x28223BE20](v10);
  v63 = v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v61 - v14;
  v16 = sub_21B4C5E78();
  v69 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v70 = v61 - v20;
  v21 = sub_21B4C55F8();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = [v1 podcasts];
  if (v25)
  {
    v65 = a1;
    v64 = v22;
    v61[1] = v6;
    v26 = v25;
    sub_21B4C9C98();
    sub_21B37585C(&qword_27CD86A50, MEMORY[0x277CC9178]);
    v27 = v21;
    sub_21B4CA1D8();
    v68 = v16;
    if (*(&v78 + 1))
    {
      v28 = (v69 + 56);
      v29 = (v69 + 48);
      v71 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21B36EE80(&v77, v76);
        sub_21B36D428(v76, v75);
        sub_21B3F2D48();
        if (swift_dynamicCast())
        {
          v30 = v74;
          sub_21B4CA108();

          __swift_destroy_boxed_opaque_existential_1(v76);
          if ((*v29)(v15, 1, v16) != 1)
          {
            sub_21B39337C(v15, v70);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v31 = v71;
            }

            else
            {
              v31 = sub_21B3F29C0(0, *(v71 + 2) + 1, 1, v71, &qword_27CD86B18, &unk_21B4D28F0, MEMORY[0x277D3D488]);
            }

            v33 = *(v31 + 2);
            v32 = *(v31 + 3);
            v34 = v69;
            if (v33 >= v32 >> 1)
            {
              v36 = sub_21B3F29C0(v32 > 1, v33 + 1, 1, v31, &qword_27CD86B18, &unk_21B4D28F0, MEMORY[0x277D3D488]);
              v34 = v69;
              v31 = v36;
            }

            *(v31 + 2) = v33 + 1;
            v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
            v71 = v31;
            sub_21B39337C(v70, v31 + v35 + *(v34 + 72) * v33);
            v16 = v68;
            goto LABEL_6;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v76);
          (*v28)(v15, 1, 1, v16);
        }

        sub_21B3F2D94(v15, &qword_27CD86D70);
LABEL_6:
        sub_21B4CA1D8();
        if (!*(&v78 + 1))
        {
          goto LABEL_19;
        }
      }
    }

    v71 = MEMORY[0x277D84F90];
LABEL_19:

    (*(v64 + 8))(v24, v27);
    v39 = *(v71 + 2);
    if (v39)
    {
      *&v77 = MEMORY[0x277D84F90];
      v40 = v71;
      sub_21B3F2BE0(0, v39, 0);
      v41 = v77;
      v42 = v40 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v43 = *(v69 + 72);
      v44 = v67;
      do
      {
        sub_21B38F550(v42, v19);
        ArtworkModel.preferredRequest.getter(v44);
        sub_21B38F79C(v19);
        *&v77 = v41;
        v46 = *(v41 + 16);
        v45 = *(v41 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_21B3F2BE0(v45 > 1, v46 + 1, 1);
          v41 = v77;
        }

        *(v41 + 16) = v46 + 1;
        (*(v73 + 32))(v41 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v46, v44, v72);
        v42 += v43;
        --v39;
      }

      while (v39);

      v47 = v65;
      v16 = v68;
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
      v47 = v65;
    }

    sub_21B4C53B8();
    swift_allocObject();
    sub_21B4C53A8();
    *&v77 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A58);
    sub_21B3F2C24();
    v48 = sub_21B4C5398();
    v50 = v49;

    sub_21B4C5E28();
    v51 = v66;
    sub_21B4C5718();

    v52 = sub_21B4C5748();
    v53 = *(v52 - 8);
    v54 = *(v53 + 48);
    v55 = v54(v51, 1, v52);
    v73 = v50;
    v72 = v48;
    if (v55 == 1)
    {
      v56 = v47;
      sub_21B3F2D94(v51, &qword_27CD86E60);
      v57 = 1;
      v58 = v63;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A68);
      v71 = v54;
      sub_21B4C5468();
      *(swift_allocObject() + 16) = xmmword_21B4D2830;
      sub_21B4C5E38();
      sub_21B4C5778();
      sub_21B4C5448();
      v56 = v47;

      v16 = v68;

      v58 = v63;
      v59 = v66;
      sub_21B4C5738();
      v54 = v71;

      (*(v53 + 8))(v59, v52);
      v57 = 0;
    }

    v60 = v62;
    (*(v53 + 56))(v58, v57, 1, v52);
    sub_21B3F2CD8(v58, v60);
    if (v54(v60, 1, v52) == 1)
    {
      sub_21B3F2D94(v58, &qword_27CD86E60);
      sub_21B36D4F4(v72, v73);
      sub_21B3F2D94(v60, &qword_27CD86E60);
      return (*(v69 + 56))(v56, 1, 1, v16);
    }

    else
    {
      sub_21B4C5658();
      (*(v53 + 8))(v60, v52);
      v77 = xmmword_21B4D1CE0;
      v78 = 0u;
      memset(v79, 0, sizeof(v79));
      sub_21B4C5D48();
      sub_21B4C61C8();
      sub_21B4C5E68();
      sub_21B36D4F4(v72, v73);
      sub_21B3F2D94(v58, &qword_27CD86E60);
      return (*(v69 + 56))(v56, 0, 1, v16);
    }
  }

  else
  {
    v37 = *(v69 + 56);

    return v37(a1, 1, 1, v16);
  }
}

char *sub_21B3F21F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_21B3F22F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_21B3F2420(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A70);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A78) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A78) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_21B3F2610(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B3F2758(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B3F2864(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_21B3F29C0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_21B3F2B9C(size_t a1, int64_t a2, char a3)
{
  result = sub_21B3F2F54(a1, a2, a3, *v3, &qword_27CD86B18, &unk_21B4D28F0, MEMORY[0x277D3D488]);
  *v3 = result;
  return result;
}

size_t sub_21B3F2BE0(size_t a1, int64_t a2, char a3)
{
  result = sub_21B3F2F54(a1, a2, a3, *v3, &qword_27CD86B10, &unk_21B4D28E8, MEMORY[0x277D3D610]);
  *v3 = result;
  return result;
}

unint64_t sub_21B3F2C24()
{
  result = qword_27CD86A60;
  if (!qword_27CD86A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD86A58);
    sub_21B37585C(&qword_2811FD578, MEMORY[0x277D3D610]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86A60);
  }

  return result;
}

uint64_t sub_21B3F2CD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B3F2D48()
{
  result = qword_2811FCA90;
  if (!qword_2811FCA90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811FCA90);
  }

  return result;
}

uint64_t sub_21B3F2D94(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_21B3F2DF4(size_t a1, int64_t a2, char a3)
{
  result = sub_21B3F3130(a1, a2, a3, *v3, &qword_27CD86AF8, &unk_21B4D28C8, &qword_27CD86B00);
  *v3 = result;
  return result;
}

size_t sub_21B3F2E34(size_t a1, int64_t a2, char a3)
{
  result = sub_21B3F3130(a1, a2, a3, *v3, &qword_27CD86B08, &unk_21B4D28D8, &unk_27CD87650);
  *v3 = result;
  return result;
}

char *sub_21B3F2E74(char *a1, int64_t a2, char a3)
{
  result = sub_21B3F3438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B3F2E94(char *a1, int64_t a2, char a3)
{
  result = sub_21B3F3554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21B3F2EB4(char *a1, int64_t a2, char a3)
{
  result = sub_21B3F3664(a1, a2, a3, *v3, &qword_27CD86AD0);
  *v3 = result;
  return result;
}

char *sub_21B3F2EE4(char *a1, int64_t a2, char a3)
{
  result = sub_21B3F3664(a1, a2, a3, *v3, &qword_27CD86AD8);
  *v3 = result;
  return result;
}

char *sub_21B3F2F14(char *a1, int64_t a2, char a3)
{
  result = sub_21B3F3760(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21B3F2F34(void *a1, int64_t a2, char a3)
{
  result = sub_21B3F386C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_21B3F2F54(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_21B3F3130(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_21B3F3318(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B3F3438(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B3F3554(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21B3F3664(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

char *sub_21B3F3760(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AB8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_21B3F386C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86AB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t PlayerArtwork.artworkModel(libraryEntity:fallbackWidth:fallbackHeight:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = sub_21B4C5D78();
  MEMORY[0x28223BE20](v3 - 8);
  sub_21B4C6318();
  sub_21B4C62D8();
  sub_21B4C62F8();
  sub_21B4C6288();
  if (v4)
  {

    sub_21B4C71C8();

    sub_21B4C6298();
    if (!v6)
    {
LABEL_6:
      sub_21B4C62B8();
      if (v7)
      {
        goto LABEL_7;
      }

LABEL_9:
      sub_21B4C62A8();
      if (!v9)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    sub_21B4C6298();
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  sub_21B4C71C8();

  sub_21B4C62B8();
  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_7:

  sub_21B4C71C8();

  sub_21B4C62A8();
  if (!v10)
  {
LABEL_12:
    sub_21B4C62C8();
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_10:

  sub_21B4C71C8();

  sub_21B4C62C8();
  if (v12)
  {
LABEL_15:

    sub_21B4C71C8();
  }

LABEL_16:
  sub_21B4C66D8();
  sub_21B4C5D48();
  sub_21B4C61C8();
  sub_21B38FE30(a1, a2, a3);
  return sub_21B4C5E68();
}

id MPArtworkCatalog.artworkDataPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B20);
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B28);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B30);
  v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v31 = &v26 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B38);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = &v26 - v10;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B40);
  swift_allocObject();
  v37 = sub_21B4C7718();
  result = [objc_opt_self() defaultPodcastArtwork];
  if (result)
  {
    v12 = result;
    v41 = result;
    sub_21B3F1314(&qword_281200580, &qword_27CD86B40);
    sub_21B4C7808();

    v13 = sub_21B375E2C();
    v14 = sub_21B4C9D98();
    v37 = v14;
    v15 = sub_21B4C9DE8();
    v27 = *(*(v15 - 8) + 56);
    v27(v2, 1, 1, v15);
    v16 = sub_21B3F1314(&qword_2811FD3B0, &qword_27CD86B20);
    v17 = v5;
    v18 = sub_21B36C98C();
    sub_21B4C77B8();
    sub_21B3F2D94(v2, &qword_27CD867B0);

    (*(v28 + 8))(v17, v3);
    type metadata accessor for NowPlayingArtwork.Data();
    v37 = v3;
    v38 = v13;
    v39 = v16;
    v40 = v18;
    swift_getOpaqueTypeConformance2();
    v19 = v30;
    v20 = v31;
    sub_21B4C7828();
    (*(v29 + 8))(v8, v19);
    v21 = sub_21B4C9E08();
    v37 = v21;
    v27(v2, 1, 1, v15);
    sub_21B3F1314(&qword_2811FD390, &qword_27CD86B30);
    v22 = v32;
    v23 = v35;
    sub_21B4C78D8();
    sub_21B3F2D94(v2, &qword_27CD867B0);

    (*(v33 + 8))(v20, v23);
    sub_21B3F1314(&qword_2811FD2B0, &qword_27CD86B38);
    v24 = v36;
    v25 = sub_21B4C77D8();
    (*(v34 + 8))(v22, v24);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MPArtworkCatalog.imageFuture.getter()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B40);
  swift_allocObject();
  return sub_21B4C7718();
}

uint64_t sub_21B3F43D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 imageByPreparingForDisplay];
  if (!v4)
  {
    v4 = v3;
  }

  *a2 = v4;
  type metadata accessor for NowPlayingArtwork.Data();

  return swift_storeEnumTagMultiPayload();
}

void sub_21B3F4444(void (*a1)(void **), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = sub_21B36CB74;
    v7[4] = v4;
    v16 = sub_21B3F4AB8;
    v17 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v14 = sub_21B3F4AC4;
    v15 = &block_descriptor;
    v8 = _Block_copy(&aBlock);

    v9 = v6;

    [v9 requestImageWithCompletion_];
    _Block_release(v8);
  }

  else
  {

    sub_21B3F45E8();
    v10 = swift_allocError();
    *v11 = 0;
    aBlock = v10;
    LOBYTE(v13) = 1;
    a1(&aBlock);
  }
}

unint64_t sub_21B3F45E8()
{
  result = qword_27CD86B48;
  if (!qword_27CD86B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86B48);
  }

  return result;
}

void sub_21B3F463C(void *a1, void *a2, void *a3, void (*a4)(void, void))
{
  v8 = sub_21B4C7558();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v42 - v13;
  if (a2)
  {
    v46 = v9;
    v15 = a2;
    sub_21B4C74E8();
    v16 = a2;
    v17 = a3;
    v18 = sub_21B4C7538();
    v19 = sub_21B4C9CE8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v45 = a4;
      v21 = v20;
      v22 = swift_slowAlloc();
      v42 = v22;
      v44 = swift_slowAlloc();
      v47 = v44;
      *v21 = 141558531;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2113;
      *(v21 + 14) = v17;
      *v22 = v17;
      *(v21 + 22) = 2082;
      swift_getErrorValue();
      v43 = v8;
      v23 = v17;
      v24 = sub_21B4CA698();
      v26 = sub_21B36CF74(v24, v25, &v47);

      *(v21 + 24) = v26;
      _os_log_impl(&dword_21B365000, v18, v19, "[NowPlayingArtworkController/MPArtworkCatalog]: Unable to fetch image for item: %{private,mask.hash}@ with error %{public}s.", v21, 0x20u);
      v27 = v42;
      sub_21B3F2D94(v42, &qword_27CD86B50);
      MEMORY[0x21CEF5710](v27, -1, -1);
      v28 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x21CEF5710](v28, -1, -1);
      v29 = v21;
      a4 = v45;
      MEMORY[0x21CEF5710](v29, -1, -1);

      v46[1](v14, v43);
    }

    else
    {

      v46[1](v14, v8);
    }

    v31 = a2;
    a4(a2, 1);

    v30 = a2;
  }

  else if (a1)
  {
    v46 = a1;
    a4(a1, 0);
    v30 = v46;
  }

  else
  {
    sub_21B4C74E8();
    v32 = a3;
    v33 = sub_21B4C7538();
    v34 = sub_21B4C9CE8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v8;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 141558275;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2113;
      *(v36 + 14) = v32;
      *v37 = v32;
      v38 = v32;
      _os_log_impl(&dword_21B365000, v33, v34, "[NowPlayingArtworkController/MPArtworkCatalog]: Unable to fetch image for item: %{private,mask.hash}@.", v36, 0x16u);
      sub_21B3F2D94(v37, &qword_27CD86B50);
      MEMORY[0x21CEF5710](v37, -1, -1);
      v39 = v36;
      v8 = v35;
      MEMORY[0x21CEF5710](v39, -1, -1);
    }

    v9[1](v12, v8);
    sub_21B3F45E8();
    v40 = swift_allocError();
    *v41 = 1;
    a4(v40, 1);
    v30 = v40;
  }
}

void sub_21B3F4AC4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_21B3F4B68()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

uint64_t sub_21B3F4BDC()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

uint64_t _s6ErrorsOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6ErrorsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21B3F4D90()
{
  result = qword_27CD86B58;
  if (!qword_27CD86B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86B58);
  }

  return result;
}

uint64_t NowPlayingArtworkProvider.__allocating_init(imageProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_21B36D484(a1, v2 + 16);
  return v2;
}

uint64_t NowPlayingArtworkProvider.fetch(for:dataProvider:at:of:trace:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v53 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867B0);
  MEMORY[0x28223BE20](v11 - 8);
  v52 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B60);
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  v54 = &v51 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B68);
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v56 = &v51 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B70);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v51 - v16;
  v17 = sub_21B4C7558();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v21) = *a1;
  sub_21B4C74E8();
  v22 = sub_21B4C7538();
  v23 = sub_21B4C9CD8();
  if (os_log_type_enabled(v22, v23))
  {
    v51 = a2;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v63[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_21B36CF74(0xD00000000000001CLL, 0x800000021B4DF1D0, v63);
    v26 = 0xE700000000000000;
    v27 = 0x7972616D697270;
    *(v24 + 12) = 2082;
    v28 = 0xEA00000000007265;
    v29 = 0x746E65436F666E69;
    v30 = 0xEC0000006C6C6154;
    v31 = 0x65676150776F6873;
    if (v21 != 3)
    {
      v31 = 0x706F72646B636162;
      v30 = 0xE800000000000000;
    }

    if (v21 != 2)
    {
      v29 = v31;
      v28 = v30;
    }

    if (v21)
    {
      v27 = 0x617461646174656DLL;
      v26 = 0xE800000000000000;
    }

    v32 = v21;
    if (v21 <= 1)
    {
      v33 = v27;
    }

    else
    {
      v33 = v29;
    }

    if (v21 <= 1)
    {
      v21 = v26;
    }

    else
    {
      v21 = v28;
    }

    v34 = sub_21B36CF74(v33, v21, v63);

    *(v24 + 14) = v34;
    _os_log_impl(&dword_21B365000, v22, v23, "%s Fetching artwork for placement: %{public}s.", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEF5710](v25, -1, -1);
    MEMORY[0x21CEF5710](v24, -1, -1);

    (*(v18 + 8))(v20, v17);
    LOBYTE(v21) = v32;
    a2 = v51;
  }

  else
  {

    (*(v18 + 8))(v20, v17);
  }

  LOBYTE(v63[0]) = v21;
  *&v63[0] = NowPlayingArtworkProvider.data(for:dataProvider:at:)(v63, a2, a4);
  sub_21B3F12CC(0, &qword_281200500);
  v35 = sub_21B4C9E08();
  v65 = v35;
  v36 = sub_21B4C9DE8();
  v37 = v52;
  (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B78);
  v51 = MEMORY[0x277CBCD90];
  sub_21B3F1314(&qword_2811FD2A8, &qword_27CD86B78);
  sub_21B36C98C();
  v38 = v54;
  sub_21B4C78D8();
  sub_21B3F2D94(v37, &qword_27CD867B0);

  v39 = swift_allocObject();
  swift_weakInit();
  sub_21B36C7AC(v53, v63, &qword_27CD86D80);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v21;
  *(v40 + 32) = a5;
  *(v40 + 40) = a6;
  v41 = v63[1];
  *(v40 + 48) = v63[0];
  *(v40 + 64) = v41;
  *(v40 + 80) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86E20);
  sub_21B3F1314(&qword_2811FD2C8, &qword_27CD86B60);
  v42 = v56;
  v43 = v58;
  sub_21B4C7828();

  (*(v57 + 8))(v38, v43);
  v44 = sub_21B3F1314(&unk_2811FD358, &qword_27CD86B68);
  v45 = sub_21B3F1314(&qword_281200598, &unk_27CD86E20);
  v46 = v55;
  v47 = v62;
  MEMORY[0x21CEF0F10](v62, v44, v45);
  (*(v60 + 8))(v42, v47);
  sub_21B3F1314(&qword_2811FD3A8, &qword_27CD86B70);
  v48 = v61;
  v49 = sub_21B4C77D8();
  (*(v59 + 8))(v46, v48);
  return v49;
}

uint64_t NowPlayingArtworkProvider.data(for:dataProvider:at:)(char *a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B80);
  v9 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v11 = &v20 - v10;
  v12 = *a1;
  v13 = swift_allocObject();
  swift_weakInit();
  sub_21B3F821C(a2, v23);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  sub_21B36D484(v23, v14 + 32);
  *(v14 + 72) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B88);
  swift_allocObject();
  *&v23[0] = sub_21B4C7718();
  sub_21B3F12CC(0, &qword_281200500);
  v15 = sub_21B4C9E08();
  v22 = v15;
  v16 = sub_21B4C9DE8();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  sub_21B3F1314(&qword_2811FD270, &qword_27CD86B88);
  sub_21B36C98C();
  sub_21B4C78D8();
  sub_21B3F2D94(v8, &qword_27CD867B0);

  sub_21B3F1314(&qword_2811FD2B8, &qword_27CD86B80);
  v17 = v21;
  v18 = sub_21B4C77D8();
  (*(v9 + 8))(v11, v17);
  return v18;
}

uint64_t sub_21B3F5984@<X0>(uint64_t a1@<X0>, char a2@<W2>, uint64_t a3@<X3>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BD8);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    LOBYTE(v21) = a2;
    v17 = sub_21B3F6E78(a1, &v21, (Strong + 16), a3, a5, a6);
  }

  else
  {
    sub_21B3F82F0();
    v19 = swift_allocError();
    *v20 = 0;
    v21 = v19;
    sub_21B3F12CC(0, &qword_281200408);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
    sub_21B4C76B8();
    sub_21B3F1314(&qword_2811FD288, &qword_27CD86BD8);
    v17 = sub_21B4C77D8();
    result = (*(v13 + 8))(v15, v12);
  }

  *a4 = v17;
  return result;
}

uint64_t sub_21B3F5BB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, double a6)
{
  v22 = a1;
  v11 = sub_21B4C8208();
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_21B4C8248();
  v14 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B3F12CC(0, &qword_281200500);
  v17 = sub_21B4C9D98();
  sub_21B3F821C(a5, v27);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  sub_21B36D484(v27, v18 + 32);
  *(v18 + 72) = a6;
  *(v18 + 80) = v22;
  *(v18 + 88) = a2;
  aBlock[4] = sub_21B3F8280;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B36CDB8;
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);

  sub_21B4C8228();
  v25 = MEMORY[0x277D84F90];
  sub_21B3F8298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB0);
  sub_21B3F1314(&qword_2811FCE10, &qword_27CD86BB0);
  sub_21B4CA298();
  MEMORY[0x21CEF3560](0, v16, v13, v19);
  _Block_release(v19);

  (*(v24 + 8))(v13, v11);
  (*(v14 + 8))(v16, v23);
}

uint64_t sub_21B3F5ECC(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t *))
{
  v20 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BB8);
  MEMORY[0x28223BE20](v6);
  v8 = (&v19 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for NowPlayingArtwork.Data();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v21 = a2;
    sub_21B3F61E0(&v21, a3, v11);

    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      sub_21B3F8344(v11, v15, type metadata accessor for NowPlayingArtwork.Data);
      sub_21B3F81B4(v15, v8, type metadata accessor for NowPlayingArtwork.Data);
      swift_storeEnumTagMultiPayload();
      v20(v8);
      sub_21B3F2D94(v8, &qword_27CD86BB8);
      return sub_21B387368(v15, type metadata accessor for NowPlayingArtwork.Data);
    }
  }

  else
  {
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  sub_21B3F2D94(v11, &qword_27CD86BC0);
  sub_21B3F82F0();
  v17 = swift_allocError();
  *v18 = 1;
  *v8 = v17;
  swift_storeEnumTagMultiPayload();
  v20(v8);
  return sub_21B3F2D94(v8, &qword_27CD86BB8);
}

uint64_t sub_21B3F61E0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a3;
  v5 = sub_21B4C7558();
  v90 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v81 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BC0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v85 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v86 = &v81 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v81 - v16;
  v87 = *a1;
  v18 = *(&off_2782BEC38 + v87);
  sub_21B3F821C(a2, v95);
  v89 = a2;
  sub_21B3F821C(a2, v92);
  v19 = *(v18 + 16);
  v20 = v18 + 32;
  if (v19)
  {
    v82 = v10;
    v83 = v8;
    v84 = v5;
    v21 = 0;
    while (1)
    {
      v22 = *(v20 + v21);
      v23 = v93;
      v24 = v94;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      LOBYTE(v91) = v22;
      NowPlayingArtworkDataProviding.data(for:at:)(&v91, v23, v24);
      v25 = type metadata accessor for NowPlayingArtwork.Data();
      LODWORD(v23) = (*(*(v25 - 8) + 48))(v17, 1, v25);
      sub_21B3F2D94(v17, &qword_27CD86BC0);
      if (v23 != 1)
      {
        break;
      }

      if (v19 == ++v21)
      {
        goto LABEL_7;
      }
    }

    v19 = v21;
LABEL_7:
    v8 = v83;
    v5 = v84;
    v10 = v82;
  }

  v26 = *(v18 + 16);
  if (v19 == v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v95);
    v27 = type metadata accessor for NowPlayingArtwork.Data();
    v28 = v88;
    (*(*(v27 - 8) + 56))(v88, 1, 1, v27);
    goto LABEL_13;
  }

  if (v19 >= v26)
  {
    __break(1u);
  }

  else
  {
    v29 = *(v20 + v19);
    v30 = v96;
    v31 = v97;
    __swift_project_boxed_opaque_existential_1(v95, v96);
    LOBYTE(v91) = v29;
    v32 = v86;
    NowPlayingArtworkDataProviding.data(for:at:)(&v91, v30, v31);
    __swift_destroy_boxed_opaque_existential_1(v95);
    v33 = v85;
    sub_21B36C7AC(v32, v85, &qword_27CD86BC0);
    v27 = type metadata accessor for NowPlayingArtwork.Data();
    v34 = *(v27 - 8);
    if ((*(v34 + 48))(v33, 1, v27) != 1)
    {
      v35 = v33;
      v28 = v88;
      sub_21B3F8344(v35, v88, type metadata accessor for NowPlayingArtwork.Data);
      sub_21B3F2D94(v32, &qword_27CD86BC0);
      (*(v34 + 56))(v28, 0, 1, v27);
LABEL_13:
      v36 = v87;

      __swift_destroy_boxed_opaque_existential_1(v92);
      type metadata accessor for NowPlayingArtwork.Data();
      if ((*(*(v27 - 8) + 48))(v28, 1, v27) == 1)
      {
        sub_21B4C74E8();
        sub_21B3F821C(v89, v95);
        v37 = sub_21B4C7538();
        v38 = sub_21B4C9CE8();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = v8;
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v92[0] = v41;
          *v40 = 136315907;
          *(v40 + 4) = sub_21B36CF74(0xD00000000000001CLL, 0x800000021B4DF1D0, v92);
          v42 = 0xE700000000000000;
          *(v40 + 12) = 2082;
          v43 = 0x746E65436F666E69;
          v44 = 0xEA00000000007265;
          v45 = 0x65676150776F6873;
          v46 = 0xEC0000006C6C6154;
          if (v36 != 3)
          {
            v45 = 0x706F72646B636162;
            v46 = 0xE800000000000000;
          }

          if (v36 != 2)
          {
            v43 = v45;
            v44 = v46;
          }

          v47 = 0x617461646174656DLL;
          if (v36)
          {
            v42 = 0xE800000000000000;
          }

          else
          {
            v47 = 0x7972616D697270;
          }

          if (v36 <= 1)
          {
            v48 = v47;
          }

          else
          {
            v48 = v43;
          }

          if (v36 <= 1)
          {
            v49 = v42;
          }

          else
          {
            v49 = v44;
          }

          v50 = sub_21B36CF74(v48, v49, v92);

          *(v40 + 14) = v50;
          *(v40 + 22) = 2160;
          *(v40 + 24) = 1752392040;
          *(v40 + 32) = 2081;
          v51 = v96;
          v52 = v97;
          __swift_project_boxed_opaque_existential_1(v95, v96);
          v53 = v52[1](v51, v52);
          if (v54)
          {
            v55 = 0x6D616441206F4E3CLL;
            v56 = 0xEB000000003E4449;
          }

          else
          {
            v91 = v53;
            sub_21B391890();
            v55 = sub_21B4CA268();
            v56 = v77;
          }

          __swift_destroy_boxed_opaque_existential_1(v95);
          v78 = sub_21B36CF74(v55, v56, v92);

          *(v40 + 34) = v78;
          _os_log_impl(&dword_21B365000, v37, v38, "%s Unable to find any artwork data for placement: %{public}s for item %{private,mask.hash}s.", v40, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x21CEF5710](v41, -1, -1);
          MEMORY[0x21CEF5710](v40, -1, -1);

          return (*(v90 + 8))(v39, v5);
        }

        (*(v90 + 8))(v8, v5);
      }

      else
      {
        sub_21B4C74E8();
        sub_21B3F821C(v89, v95);
        v57 = sub_21B4C7538();
        v58 = sub_21B4C9CD8();
        if (os_log_type_enabled(v57, v58))
        {
          v39 = v10;
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v92[0] = v60;
          *v59 = 136315907;
          *(v59 + 4) = sub_21B36CF74(0xD00000000000001CLL, 0x800000021B4DF1D0, v92);
          v61 = 0xE700000000000000;
          *(v59 + 12) = 2082;
          v62 = 0x746E65436F666E69;
          v63 = 0xEA00000000007265;
          v64 = 0x65676150776F6873;
          v65 = 0xEC0000006C6C6154;
          if (v36 != 3)
          {
            v64 = 0x706F72646B636162;
            v65 = 0xE800000000000000;
          }

          if (v36 != 2)
          {
            v62 = v64;
            v63 = v65;
          }

          v66 = 0x617461646174656DLL;
          if (v36)
          {
            v61 = 0xE800000000000000;
          }

          else
          {
            v66 = 0x7972616D697270;
          }

          if (v36 <= 1)
          {
            v67 = v66;
          }

          else
          {
            v67 = v62;
          }

          if (v36 <= 1)
          {
            v68 = v61;
          }

          else
          {
            v68 = v63;
          }

          v69 = sub_21B36CF74(v67, v68, v92);

          *(v59 + 14) = v69;
          *(v59 + 22) = 2160;
          *(v59 + 24) = 1752392040;
          *(v59 + 32) = 2081;
          v70 = v96;
          v71 = v97;
          __swift_project_boxed_opaque_existential_1(v95, v96);
          v72 = v71[1](v70, v71);
          if (v73)
          {
            v74 = 0x6D616441206F4E3CLL;
            v75 = 0xEB000000003E4449;
          }

          else
          {
            v91 = v72;
            sub_21B391890();
            v74 = sub_21B4CA268();
            v75 = v79;
          }

          __swift_destroy_boxed_opaque_existential_1(v95);
          v80 = sub_21B36CF74(v74, v75, v92);

          *(v59 + 34) = v80;
          _os_log_impl(&dword_21B365000, v57, v58, "%s Found artwork data for placement: %{public}s for item %{private,mask.hash}s.", v59, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x21CEF5710](v60, -1, -1);
          MEMORY[0x21CEF5710](v59, -1, -1);

          return (*(v90 + 8))(v39, v5);
        }

        (*(v90 + 8))(v10, v5);
      }

      return __swift_destroy_boxed_opaque_existential_1(v95);
    }
  }

  result = __swift_destroy_boxed_opaque_existential_1(v92);
  __break(1u);
  return result;
}

uint64_t NowPlayingArtworkProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21B3F6C20(uint64_t a1, unsigned __int8 *a2, uint64_t a3, double a4, double a5)
{
  v6 = *v5;
  v8 = *a2;
  return sub_21B3F6E78(a1, &v8, (v6 + 16), a3, a4, a5);
}

uint64_t sub_21B3F6C7C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_21B3F6CF0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_21B3F6D00(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_21B36CF74(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_21B3F6D84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_21B3F6E78(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4, double Width, double Height)
{
  v117 = a4;
  v127 = a3;
  v142 = a1;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B90);
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v113[-v9];
  v10 = sub_21B4C6A48();
  MEMORY[0x28223BE20](v10 - 8);
  v126 = &v113[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v140 = sub_21B4C72A8();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v125 = &v113[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = sub_21B4C66C8();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v113[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v124 = &v113[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v121 = &v113[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v137 = &v113[-v20];
  MEMORY[0x28223BE20](v19);
  v138 = &v113[-v21];
  v129 = sub_21B4C64F8();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v141 = &v113[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v115 = sub_21B4C5E78();
  v23 = MEMORY[0x28223BE20](v115);
  v122 = &v113[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v123 = &v113[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v135 = &v113[-v28];
  MEMORY[0x28223BE20](v27);
  v136 = &v113[-v29];
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BA0);
  v116 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v113[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BA8);
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v113[-v35];
  v134 = sub_21B4C7558();
  v133 = *(v134 - 8);
  v37 = MEMORY[0x28223BE20](v134);
  v39 = &v113[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v37);
  v41 = &v113[-v40];
  v42 = type metadata accessor for NowPlayingArtwork.Data();
  MEMORY[0x28223BE20](v42);
  v44 = &v113[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = *a2;
  sub_21B3F81B4(v142, v44, type metadata accessor for NowPlayingArtwork.Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v47 = v136;
      sub_21B3F8344(v44, v136, MEMORY[0x277D3D488]);
      sub_21B36C7AC(v117, &v145, &qword_27CD86D80);
      v114 = v45;
      if (v146)
      {
        sub_21B36D484(&v145, &v147);
        v48 = v140;
        v49 = v139;
        v50 = v125;
      }

      else
      {
        sub_21B4C74E8();
        sub_21B4C9CC8();
        sub_21B4C6A58();
        (*(v133 + 8))(v39, v134);
        v48 = v140;
        v49 = v139;
        v50 = v125;
        if (v146)
        {
          sub_21B3F2D94(&v145, &qword_27CD86D80);
        }
      }

      v75 = v135;
      sub_21B3F81B4(v47, v135, MEMORY[0x277D3D488]);
      if (Width == 1.79769313e308 || Height == 1.79769313e308)
      {
        if (v114 == 3)
        {
          v76 = objc_opt_self();
          v77 = [v76 mainScreen];
          [v77 bounds];
          v79 = v78;
          v81 = v80;
          v83 = v82;
          v85 = v84;

          v148.origin.x = v79;
          v148.origin.y = v81;
          v148.size.width = v83;
          v148.size.height = v85;
          Width = CGRectGetWidth(v148);
          v86 = [v76 mainScreen];
          [v86 bounds];
          v88 = v87;
          v90 = v89;
          v92 = v91;
          v94 = v93;

          v149.origin.x = v88;
          v149.origin.y = v90;
          v149.size.width = v92;
          v149.size.height = v94;
          Height = CGRectGetHeight(v149);
        }

        else
        {
          Width = 600.0;
          Height = 600.0;
        }
      }

      v95 = v138;
      (*(v49 + 7))(v138, 1, 1, v48);
      sub_21B3F821C(&v147, &v145);
      v96 = [objc_opt_self() mainScreen];
      [v96 scale];

      v97 = v123;
      sub_21B3F81B4(v75, v123, MEMORY[0x277D3D488]);
      sub_21B4C5E58();
      v98 = v119;
      v99 = v118;
      v100 = v120;
      (*(v119 + 104))(v118, *MEMORY[0x277D3D6C0], v120);
      CGSize.fitting(_:aspectRule:)(v99, Width, Height);
      (*(v98 + 8))(v99, v100);
      v101 = v137;
      sub_21B36C7AC(v95, v137, &qword_27CD86B98);
      sub_21B36C7AC(&v145, &v144, &qword_27CD86D80);
      v102 = v121;
      sub_21B36C7AC(v101, v121, &qword_27CD86B98);
      v103 = *(v49 + 6);
      if (v103(v102, 1, v48) == 1)
      {
        sub_21B4C5D68();
        if (v103(v102, 1, v48) != 1)
        {
          sub_21B3F2D94(v102, &qword_27CD86B98);
        }
      }

      else
      {
        (*(v49 + 4))(v50, v102, v48);
      }

      sub_21B4C7278();
      sub_21B3F81B4(v97, v122, MEMORY[0x277D3D488]);
      v104 = v137;
      sub_21B36C7AC(v137, v124, &qword_27CD86B98);
      sub_21B4C6A28();
      sub_21B36C7AC(&v144, v143, &qword_27CD86D80);
      v105 = v141;
      sub_21B4C6478();
      (*(v139 + 1))(v50, v140);
      sub_21B3F2D94(&v144, &qword_27CD86D80);
      sub_21B3F2D94(v104, &qword_27CD86B98);
      v106 = MEMORY[0x277D3D488];
      sub_21B387368(v97, MEMORY[0x277D3D488]);
      sub_21B3F2D94(&v145, &qword_27CD86D80);
      sub_21B3F2D94(v138, &qword_27CD86B98);
      sub_21B387368(v135, v106);
      v107 = v127[3];
      v108 = v127[4];
      __swift_project_boxed_opaque_existential_1(v127, v107);
      v144 = (*(v108 + 8))(v105, v107, v108);
      sub_21B3F821C(&v147, &v145);
      v109 = v136;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86E20);
      sub_21B3F1314(&qword_281200598, &unk_27CD86E20);
      sub_21B4C6228();
      v110 = v130;
      sub_21B4C77A8();

      sub_21B3F2D94(&v145, &qword_27CD86D80);

      sub_21B3F1314(&qword_2811FD5A0, &qword_27CD86B90);
      v111 = v132;
      v73 = sub_21B4C77D8();
      (*(v131 + 8))(v110, v111);
      (*(v128 + 8))(v141, v129);
      __swift_destroy_boxed_opaque_existential_1(&v147);
      sub_21B387368(v109, MEMORY[0x277D3D488]);
    }

    else
    {
      v72 = *v44;
      swift_allocObject();
      swift_unknownObjectWeakInit();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B40);
      swift_allocObject();
      v147 = sub_21B4C7718();
      sub_21B3F1314(&qword_281200580, &qword_27CD86B40);
      v73 = sub_21B4C77D8();
    }
  }

  else
  {
    v139 = v32;
    v140 = v36;
    v141 = v30;
    v142 = v34;
    v51 = *v44;
    sub_21B4C74E8();
    v52 = sub_21B4C7538();
    v53 = sub_21B4C9CD8();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = v45;
      v55 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v147 = v138;
      *v55 = 136315394;
      *(v55 + 4) = sub_21B36CF74(0xD00000000000001CLL, 0x800000021B4DF1D0, &v147);
      v56 = 0xE700000000000000;
      *(v55 + 12) = 2080;
      v57 = 0x746E65436F666E69;
      v58 = 0xEA00000000007265;
      v59 = 0x65676150776F6873;
      v60 = 0xEC0000006C6C6154;
      if (v54 != 3)
      {
        v59 = 0x706F72646B636162;
        v60 = 0xE800000000000000;
      }

      if (v54 != 2)
      {
        v57 = v59;
        v58 = v60;
      }

      v61 = 0x617461646174656DLL;
      if (v54)
      {
        v56 = 0xE800000000000000;
      }

      else
      {
        v61 = 0x7972616D697270;
      }

      if (v54 <= 1)
      {
        v62 = v61;
      }

      else
      {
        v62 = v57;
      }

      if (v54 <= 1)
      {
        v63 = v56;
      }

      else
      {
        v63 = v58;
      }

      v64 = v139;
      v65 = sub_21B36CF74(v62, v63, &v147);

      *(v55 + 14) = v65;
      _os_log_impl(&dword_21B365000, v52, v53, "%s Finished fetching chapter artwork for placement: %s.", v55, 0x16u);
      v66 = v138;
      swift_arrayDestroy();
      MEMORY[0x21CEF5710](v66, -1, -1);
      MEMORY[0x21CEF5710](v55, -1, -1);

      (*(v133 + 8))(v41, v134);
      v67 = v33;
      v68 = v142;
      v69 = v141;
      v70 = v116;
      v71 = v140;
    }

    else
    {

      (*(v133 + 8))(v41, v134);
      v67 = v33;
      v68 = v142;
      v69 = v141;
      v70 = v116;
      v71 = v140;
      v64 = v139;
    }

    v147 = v51;
    sub_21B3F12CC(0, &qword_281200408);
    v74 = v51;
    sub_21B4C76D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86970);
    sub_21B4C76C8();
    (*(v70 + 8))(v64, v69);
    sub_21B3F1314(&unk_2812003B0, &qword_27CD86BA8);
    v73 = sub_21B4C77D8();

    (*(v68 + 8))(v71, v67);
  }

  return v73;
}

uint64_t sub_21B3F81B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B3F821C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_21B3F8298()
{
  result = qword_2811FD230;
  if (!qword_2811FD230)
  {
    sub_21B4C8208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD230);
  }

  return result;
}

unint64_t sub_21B3F82F0()
{
  result = qword_27CD86BC8;
  if (!qword_27CD86BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86BC8);
  }

  return result;
}

uint64_t sub_21B3F8344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21B3F83C0()
{
  result = qword_27CD86BE0;
  if (!qword_27CD86BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86BE0);
  }

  return result;
}

uint64_t NowPlayingArtworkProvider.__allocating_init(asPartOf:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BE8);
  sub_21B4C8808();

  v0 = swift_allocObject();
  sub_21B3F8414(&v2, v0 + 16);
  return v0;
}

uint64_t sub_21B3F8490@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BE8);
  sub_21B4C8808();

  v2 = swift_allocObject();
  result = sub_21B3F8414(&v4, v2 + 16);
  *a1 = v2;
  return result;
}

id NowPlayingArtworkProviderObjCWrapper.__allocating_init(artworkProvider:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_21B3F821C(a1, v3 + OBJC_IVAR___MTNowPlayingArtworkProvider_artworkProvider);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id NowPlayingArtworkProviderObjCWrapper.init(artworkProvider:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_21B3F821C(a1, v1 + OBJC_IVAR___MTNowPlayingArtworkProvider_artworkProvider);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id NowPlayingArtworkProviderObjCWrapper.fetchInfoCenterArtwork(with:at:of:completion:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v33 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BF8);
  v15 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v17 = &v33 - v16;
  v18 = *(v6 + OBJC_IVAR___MTNowPlayingArtworkProvider_artworkProvider + 24);
  v19 = *(v6 + OBJC_IVAR___MTNowPlayingArtworkProvider_artworkProvider + 32);
  __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR___MTNowPlayingArtworkProvider_artworkProvider), v18);
  v39[0] = 2;
  v38[3] = sub_21B3F12CC(0, &qword_27CD86C00);
  v38[4] = &protocol witness table for IMPlayerItem;
  v37 = 0;
  v38[0] = a1;
  memset(v36, 0, sizeof(v36));
  v20 = *(v19 + 8);
  v21 = a1;
  v22 = v20(v39, v38, v36, v18, v19, a4, a5, a6);
  sub_21B3F2D94(v36, &qword_27CD86D80);
  __swift_destroy_boxed_opaque_existential_1(v38);
  v38[0] = v22;
  sub_21B3F12CC(0, &qword_281200500);
  v23 = sub_21B4C9E08();
  *&v36[0] = v23;
  v24 = sub_21B4C9DE8();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86E20);
  sub_21B3F1314(&qword_281200598, &unk_27CD86E20);
  sub_21B36C98C();
  sub_21B4C78D8();
  sub_21B3F2D94(v14, &qword_27CD867B0);

  v25 = swift_allocObject();
  v26 = v33;
  *(v25 + 16) = v33;
  *(v25 + 24) = a3;
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = a3;
  sub_21B3F1314(&qword_2811FD2C0, &qword_27CD86BF8);
  swift_retain_n();
  v28 = v34;
  v29 = sub_21B4C7858();

  (*(v15 + 8))(v17, v28);
  v30 = type metadata accessor for NowPlayingArtworkRequestObjCWrapper();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR___MTNowPlayingArtworkRequest_cancellable] = v29;
  v35.receiver = v31;
  v35.super_class = v30;
  return objc_msgSendSuper2(&v35, sel_init);
}

void sub_21B3F8A04(void **a1, void (*a2)(void, void *))
{
  v2 = *a1;
  if (*a1)
  {
    v4 = v2;
    v5 = sub_21B4C55C8();
    a2(0, v5);
  }
}

id NowPlayingArtworkProviderObjCWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id NowPlayingArtworkRequestObjCWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NowPlayingArtworkRequestObjCWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingArtworkRequestObjCWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t IMPlayerItem.showArtworkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 showArtworkProperties];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 podcastUuid];
    if (v6)
    {
      v7 = v6;
      v8 = sub_21B4C9708();
      v10 = v9;

      v11 = 1;
    }

    else
    {
      v8 = 0;
      v10 = 0;
      v11 = -1;
    }

    PlayerArtwork.artworkModel(libraryEntity:fallbackWidth:fallbackHeight:)(v8, v10, v11);

    sub_21B38FE5C(v8, v10, v11);
    v17 = type metadata accessor for NowPlayingArtwork.Data();
    swift_storeEnumTagMultiPayload();
    v13 = *(*(v17 - 8) + 56);
    v15 = a1;
    v16 = 0;
    v14 = v17;
  }

  else
  {
    v12 = type metadata accessor for NowPlayingArtwork.Data();
    v13 = *(*(v12 - 8) + 56);
    v14 = v12;
    v15 = a1;
    v16 = 1;
  }

  return v13(v15, v16, 1, v14);
}

uint64_t IMPlayerItem.episodeArtworkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 episodeArtworkProperties];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 episodeUuid];
    if (v6)
    {
      v7 = v6;
      v8 = sub_21B4C9708();
      v10 = v9;

      v11 = 0;
    }

    else
    {
      v8 = 0;
      v10 = 0;
      v11 = -1;
    }

    PlayerArtwork.artworkModel(libraryEntity:fallbackWidth:fallbackHeight:)(v8, v10, v11);

    sub_21B38FE5C(v8, v10, v11);
    v17 = type metadata accessor for NowPlayingArtwork.Data();
    swift_storeEnumTagMultiPayload();
    v13 = *(*(v17 - 8) + 56);
    v15 = a1;
    v16 = 0;
    v14 = v17;
  }

  else
  {
    v12 = type metadata accessor for NowPlayingArtwork.Data();
    v13 = *(*(v12 - 8) + 56);
    v14 = v12;
    v15 = a1;
    v16 = 1;
  }

  return v13(v15, v16, 1, v14);
}

uint64_t IMPlayerItem.showPageTallArtworkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 uberArtworkProperties];
  if (v4)
  {
    v5 = v4;
    v6 = [v2 podcastUuid];
    if (v6)
    {
      v7 = v6;
      v8 = sub_21B4C9708();
      v10 = v9;

      v11 = 1;
    }

    else
    {
      v8 = 0;
      v10 = 0;
      v11 = -1;
    }

    PlayerArtwork.artworkModel(libraryEntity:fallbackWidth:fallbackHeight:)(v8, v10, v11);

    sub_21B38FE5C(v8, v10, v11);
    v17 = type metadata accessor for NowPlayingArtwork.Data();
    swift_storeEnumTagMultiPayload();
    v13 = *(*(v17 - 8) + 56);
    v15 = a1;
    v16 = 0;
    v14 = v17;
  }

  else
  {
    v12 = type metadata accessor for NowPlayingArtwork.Data();
    v13 = *(*(v12 - 8) + 56);
    v14 = v12;
    v15 = a1;
    v16 = 1;
  }

  return v13(v15, v16, 1, v14);
}

uint64_t IMPlayerItem.chapterArtworkData(at:)@<X0>(void *a1@<X8>, double a2@<D0>)
{
  v58 = a1;
  v4 = sub_21B4C7558();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v57 = &v55 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - v11;
  sub_21B4C74E8();
  v13 = v2;
  v14 = sub_21B4C7538();
  v15 = sub_21B4C9CD8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v60 = v56;
    *v16 = 136315907;
    *(v16 + 4) = sub_21B36CF74(0xD000000000000017, 0x800000021B4DF330, &v60);
    *(v16 + 12) = 2160;
    *(v16 + 14) = 1752392040;
    *(v16 + 22) = 2081;
    [v13 episodeStoreId];
    v59 = sub_21B4C7238();
    sub_21B391890();
    v17 = sub_21B4CA268();
    v19 = v8;
    v20 = v5;
    v21 = v4;
    v22 = sub_21B36CF74(v17, v18, &v60);

    *(v16 + 24) = v22;
    v4 = v21;
    v5 = v20;
    v8 = v19;
    *(v16 + 32) = 2050;
    *(v16 + 34) = a2;
    _os_log_impl(&dword_21B365000, v14, v15, "%s Fetching chapter artwork for episode %{private,mask.hash}s at %{public}f.", v16, 0x2Au);
    v23 = v56;
    swift_arrayDestroy();
    MEMORY[0x21CEF5710](v23, -1, -1);
    MEMORY[0x21CEF5710](v16, -1, -1);
  }

  v24 = *(v5 + 8);
  v24(v12, v4);
  v25 = [v13 retrieveChapterArtworkAtTime_];
  if (v25)
  {
    v26 = v25;
    v56 = v5;
    v27 = v57;
    sub_21B4C74E8();
    v28 = v13;
    v29 = sub_21B4C7538();
    v30 = sub_21B4C9CD8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v60 = v32;
      *v31 = 136315907;
      *(v31 + 4) = sub_21B36CF74(0xD000000000000017, 0x800000021B4DF330, &v60);
      *(v31 + 12) = 2160;
      *(v31 + 14) = 1752392040;
      *(v31 + 22) = 2081;
      [v28 episodeStoreId];
      v59 = sub_21B4C7238();
      sub_21B391890();
      v33 = sub_21B4CA268();
      v35 = v4;
      v36 = sub_21B36CF74(v33, v34, &v60);

      *(v31 + 24) = v36;
      *(v31 + 32) = 2050;
      *(v31 + 34) = a2;
      _os_log_impl(&dword_21B365000, v29, v30, "%s Found chapter artwork for episode %{private,mask.hash}s at %{public}f.", v31, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CEF5710](v32, -1, -1);
      MEMORY[0x21CEF5710](v31, -1, -1);

      v37 = v27;
      v38 = v35;
    }

    else
    {

      v37 = v27;
      v38 = v4;
    }

    v24(v37, v38);
    v51 = v58;
    *v58 = v26;
    v52 = type metadata accessor for NowPlayingArtwork.Data();
    swift_storeEnumTagMultiPayload();
    return (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
  }

  else
  {
    sub_21B4C74E8();
    v39 = v13;
    v40 = v8;
    v41 = sub_21B4C7538();
    v42 = sub_21B4C9CD8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v60 = v44;
      *v43 = 136315907;
      *(v43 + 4) = sub_21B36CF74(0xD000000000000017, 0x800000021B4DF330, &v60);
      *(v43 + 12) = 2160;
      *(v43 + 14) = 1752392040;
      *(v43 + 22) = 2081;
      [v39 episodeStoreId];
      v59 = sub_21B4C7238();
      sub_21B391890();
      v45 = sub_21B4CA268();
      v47 = v4;
      v48 = sub_21B36CF74(v45, v46, &v60);

      *(v43 + 24) = v48;
      *(v43 + 32) = 2050;
      *(v43 + 34) = a2;
      _os_log_impl(&dword_21B365000, v41, v42, "%s Could not find chapter artwork for episode %{private,mask.hash}s at %{public}f.", v43, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CEF5710](v44, -1, -1);
      MEMORY[0x21CEF5710](v43, -1, -1);

      v49 = v40;
      v50 = v47;
    }

    else
    {

      v49 = v40;
      v50 = v4;
    }

    v24(v49, v50);
    v54 = type metadata accessor for NowPlayingArtwork.Data();
    return (*(*(v54 - 8) + 56))(v58, 1, 1, v54);
  }
}

void *sub_21B3F9A68(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t MPModelPodcastEpisode.showArtworkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B4C7558();
  MEMORY[0x28223BE20](v3);
  v4 = [v1 artworkInfo];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_21B4C9588();

  sub_21B4C6A68();
  sub_21B4CA2E8();
  if (!*(v6 + 16) || (v7 = sub_21B37186C(v20), (v8 & 1) == 0))
  {

    sub_21B3F135C(v20);
LABEL_8:
    v21 = 0u;
    v22 = 0u;
    goto LABEL_9;
  }

  sub_21B36D428(*(v6 + 56) + 32 * v7, &v21);
  sub_21B3F135C(v20);

  if (!*(&v22 + 1))
  {
LABEL_9:
    sub_21B3F9F3C(&v21);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v10 = v20[0];
    v9 = v20[1];
    sub_21B4C5388();
    swift_allocObject();
    sub_21B4C5378();
    sub_21B4C6328();
    sub_21B3FB464(&qword_2811FD590, MEMORY[0x277D3D5B0]);
    sub_21B4C5368();

    v12 = v20[0];
    v13 = sub_21B3F9FA4();
    v15 = v14;
    v17 = v16;
    PlayerArtwork.artworkModel(libraryEntity:fallbackWidth:fallbackHeight:)(v13, v14, v16);

    sub_21B36D4F4(v10, v9);
    sub_21B38FE5C(v13, v15, v17);
    v18 = type metadata accessor for NowPlayingArtwork.Data();
    swift_storeEnumTagMultiPayload();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

LABEL_10:
  v11 = type metadata accessor for NowPlayingArtwork.Data();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

uint64_t sub_21B3F9F3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_21B3F9FA4()
{
  result = [v0 podcast];
  if (result)
  {
    v2 = result;
    v3 = [result identifiers];
    v4 = [v3 library];

    if (v4)
    {
      v5 = [v4 databaseID];
      swift_unknownObjectRelease();
      v6 = sub_21B4C9708();

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t MPModelPodcastEpisode.episodeArtworkData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21B4C7558();
  MEMORY[0x28223BE20](v4);
  v5 = [v1 artworkInfo];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = sub_21B4C9588();

  sub_21B4C6A88();
  sub_21B4CA2E8();
  if (!*(v7 + 16) || (v8 = sub_21B37186C(v22), (v9 & 1) == 0))
  {

    sub_21B3F135C(v22);
LABEL_8:
    v23 = 0u;
    v24 = 0u;
    goto LABEL_9;
  }

  sub_21B36D428(*(v7 + 56) + 32 * v8, &v23);
  sub_21B3F135C(v22);

  if (!*(&v24 + 1))
  {
LABEL_9:
    sub_21B3F9F3C(&v23);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v12 = type metadata accessor for NowPlayingArtwork.Data();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  v11 = v22[0];
  v10 = v22[1];
  sub_21B4C5388();
  swift_allocObject();
  sub_21B4C5378();
  sub_21B4C6328();
  sub_21B3FB464(&qword_2811FD590, MEMORY[0x277D3D5B0]);
  sub_21B4C5368();

  v14 = v22[0];
  v15 = [v2 identifiers];
  v16 = [v15 library];

  if (v16)
  {
    v17 = [v16 databaseID];
    swift_unknownObjectRelease();
    v16 = sub_21B4C9708();
    v19 = v18;

    v20 = 0;
  }

  else
  {
    v19 = 0;
    v20 = -1;
  }

  PlayerArtwork.artworkModel(libraryEntity:fallbackWidth:fallbackHeight:)(v16, v19, v20);

  sub_21B36D4F4(v11, v10);
  sub_21B38FE5C(v16, v19, v20);
  v21 = type metadata accessor for NowPlayingArtwork.Data();
  swift_storeEnumTagMultiPayload();
  return (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
}

uint64_t MPModelPodcastEpisode.showPageTallArtworkData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B4C7558();
  MEMORY[0x28223BE20](v3);
  v4 = [v1 artworkInfo];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_21B4C9588();

  sub_21B4C6A78();
  sub_21B4CA2E8();
  if (!*(v6 + 16) || (v7 = sub_21B37186C(v20), (v8 & 1) == 0))
  {

    sub_21B3F135C(v20);
LABEL_8:
    v21 = 0u;
    v22 = 0u;
    goto LABEL_9;
  }

  sub_21B36D428(*(v6 + 56) + 32 * v7, &v21);
  sub_21B3F135C(v20);

  if (!*(&v22 + 1))
  {
LABEL_9:
    sub_21B3F9F3C(&v21);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    v10 = v20[0];
    v9 = v20[1];
    sub_21B4C5388();
    swift_allocObject();
    sub_21B4C5378();
    sub_21B4C6328();
    sub_21B3FB464(&qword_2811FD590, MEMORY[0x277D3D5B0]);
    sub_21B4C5368();

    v12 = v20[0];
    v13 = sub_21B3F9FA4();
    v15 = v14;
    v17 = v16;
    PlayerArtwork.artworkModel(libraryEntity:fallbackWidth:fallbackHeight:)(v13, v14, v16);

    sub_21B36D4F4(v10, v9);
    sub_21B38FE5C(v13, v15, v17);
    v18 = type metadata accessor for NowPlayingArtwork.Data();
    swift_storeEnumTagMultiPayload();
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

LABEL_10:
  v11 = type metadata accessor for NowPlayingArtwork.Data();
  return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
}

unint64_t sub_21B3FAA64(uint64_t a1)
{
  sub_21B4CA6E8();
  sub_21B4C64F8();
  sub_21B3FB464(&qword_2811FD570, MEMORY[0x277D3D610]);
  sub_21B4C9638();
  v2 = sub_21B4CA738();

  return sub_21B3FAEB4(a1, v2);
}

unint64_t sub_21B3FAB18(uint64_t a1)
{
  sub_21B4C64F8();
  v2 = MEMORY[0x277D3D610];
  sub_21B3FB464(&qword_2811FD570, MEMORY[0x277D3D610]);
  v3 = sub_21B4C9628();
  return sub_21B3FAFEC(a1, v3, MEMORY[0x277D3D610], &qword_27CD86C40, v2, MEMORY[0x277D3D628]);
}

unint64_t sub_21B3FABEC(uint64_t a1)
{
  sub_21B4CA6E8();
  type metadata accessor for CFString(0);
  sub_21B3FB464(&qword_281200558, type metadata accessor for CFString);
  sub_21B4C5B18();
  v2 = sub_21B4CA738();

  return sub_21B3FB18C(a1, v2);
}

unint64_t sub_21B3FACA0(uint64_t a1)
{
  sub_21B4C6A48();
  v2 = MEMORY[0x277D3D798];
  sub_21B3FB464(&qword_27CD86C30, MEMORY[0x277D3D798]);
  v3 = sub_21B4C9628();
  return sub_21B3FAFEC(a1, v3, MEMORY[0x277D3D798], &qword_27CD86C38, v2, MEMORY[0x277D3D7A8]);
}

unint64_t sub_21B3FAD74(uint64_t a1)
{
  sub_21B4C5EC8();
  v2 = MEMORY[0x277D3D4C8];
  sub_21B3FB464(&qword_27CD86C20, MEMORY[0x277D3D4C8]);
  v3 = sub_21B4C9628();
  return sub_21B3FAFEC(a1, v3, MEMORY[0x277D3D4C8], &qword_27CD86C28, v2, MEMORY[0x277D3D4D8]);
}

unint64_t sub_21B3FAE48(uint64_t a1)
{
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E70](a1);
  v2 = sub_21B4CA738();

  return sub_21B3FB298(a1, v2);
}

unint64_t sub_21B3FAEB4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PreparedArtworkRequest() - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_21B390524(*(v2 + 48) + v12 * v10, v8);
      v13 = MEMORY[0x21CEEFB70](v8, a1);
      sub_21B3FB408(v8);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_21B3FAFEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_21B3FB464(v23, v24);
      v19 = sub_21B4C96B8();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_21B3FB18C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_21B3FB464(&qword_281200558, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_21B4C5B08();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21B3FB298(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21B3FB304(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21B4C9708();
      v8 = v7;
      if (v6 == sub_21B4C9708() && v8 == v9)
      {
        break;
      }

      v11 = sub_21B4CA608();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_21B3FB408(uint64_t a1)
{
  v2 = type metadata accessor for PreparedArtworkRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B3FB464(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NowPlayingArtworkDataProviding.data(for:at:)(_BYTE *a1, uint64_t a2, uint64_t (**a3)(void, void))
{
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      return a3[4](a2, a3);
    }

    else
    {
      return a3[2](a2, a3);
    }
  }

  else if (*a1)
  {
    return a3[3](a2, a3);
  }

  else
  {
    return a3[5](a2, a3);
  }
}

BOOL NowPlayingArtworkDataProviding.supportsShowPageTall.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  (*(a2 + 32))(a1, a2);
  v7 = type metadata accessor for NowPlayingArtwork.Data();
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_21B3F2D94(v6, &qword_27CD86BC0);
  return v8;
}

uint64_t NowPlayingArtworkDataProviding.supportsEpisodeArtwork.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v61 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = &v57 - v7;
  v8 = sub_21B4C5748();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v59 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v57 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v60 = &v57 - v14;
  MEMORY[0x28223BE20](v13);
  v62 = &v57 - v15;
  v16 = sub_21B4C5E78();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for NowPlayingArtwork.Data();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v66 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BC0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v57 - v29;
  v31 = a1;
  (*(a2 + 24))(a1, a2);
  v32 = *(v20 + 48);
  if (v32(v30, 1, v19) == 1)
  {
    sub_21B3F2D94(v30, &qword_27CD86BC0);
LABEL_8:
    v35 = 0;
    return v35 & 1;
  }

  sub_21B387304(v30, v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21B3FBED0(v24, type metadata accessor for NowPlayingArtwork.Data);
    sub_21B3FBED0(v30, type metadata accessor for NowPlayingArtwork.Data);
    goto LABEL_8;
  }

  sub_21B39337C(v24, v18);
  v57 = *v18;

  sub_21B3FBED0(v18, MEMORY[0x277D3D488]);
  sub_21B3FBED0(v30, type metadata accessor for NowPlayingArtwork.Data);
  (*(a2 + 16))(v31, a2);
  if (v32(v28, 1, v19) == 1)
  {

    v33 = &qword_27CD86BC0;
    v34 = v28;
LABEL_6:
    sub_21B3F2D94(v34, v33);
    v35 = 1;
    return v35 & 1;
  }

  v37 = v66;
  sub_21B387304(v28, v66);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_21B3FBED0(v37, type metadata accessor for NowPlayingArtwork.Data);
    sub_21B3FBED0(v28, type metadata accessor for NowPlayingArtwork.Data);
    v35 = 1;
    return v35 & 1;
  }

  sub_21B39337C(v37, v18);

  sub_21B3FBED0(v18, MEMORY[0x277D3D488]);
  sub_21B3FBED0(v28, type metadata accessor for NowPlayingArtwork.Data);
  v38 = v63;
  sub_21B4C5718();

  v40 = v64;
  v39 = v65;
  v41 = *(v64 + 48);
  if (v41(v38, 1, v65) == 1)
  {

    v33 = &qword_27CD86E60;
    v34 = v38;
    goto LABEL_6;
  }

  v42 = *(v40 + 32);
  v43 = v62;
  v42(v62, v38, v39);
  v44 = v61;
  sub_21B4C5718();
  v45 = v44;

  if (v41(v44, 1, v39) == 1)
  {
    (*(v40 + 8))(v43, v39);
    v33 = &qword_27CD86E60;
    v34 = v44;
    goto LABEL_6;
  }

  v46 = v60;
  v42(v60, v45, v39);
  v47 = v58;
  sub_21B3FBFB4(v58);
  v48 = sub_21B4C5658();
  v50 = v49;
  v51 = *(v40 + 8);
  v51(v47, v39);
  v52 = v59;
  sub_21B3FBFB4(v59);
  v53 = sub_21B4C5658();
  v55 = v54;
  v51(v52, v39);
  if (v48 == v53 && v50 == v55)
  {

    v35 = 0;
  }

  else
  {
    v56 = sub_21B4CA608();

    v35 = v56 ^ 1;
  }

  v51(v46, v39);
  v51(v43, v39);
  return v35 & 1;
}

Swift::Bool __swiftcall NowPlayingArtworkDataProviding.shouldShowMetadataArtwork(at:)(Swift::Double at)
{
  v3 = v2;
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BC0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  if (NowPlayingArtworkDataProviding.supportsEpisodeArtwork.getter(v4, v3))
  {
    return 1;
  }

  (*(v3 + 40))(v4, v3, at);
  v10 = type metadata accessor for NowPlayingArtwork.Data();
  v9 = (*(*(v10 - 8) + 48))(v8, 1, v10) != 1;
  sub_21B3F2D94(v8, &qword_27CD86BC0);
  return v9;
}

uint64_t sub_21B3FBED0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21B3FBFB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C48);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v8 = sub_21B4C56F8();
  if (v9)
  {
    v18 = v8;
    v19 = v9;
    strcpy(v17, "mzstatic.com");
    HIBYTE(v17[6]) = 0;
    v17[7] = -5120;
    sub_21B3A5DF0();
    v10 = sub_21B4CA248();

    if (v10)
    {
      v11 = sub_21B4C5678();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C50);
      sub_21B3F1314(&qword_2811FD668, &qword_27CD86C48);
      sub_21B4C5C18();
      v18 = v11;
      v19 = v13;
      sub_21B381210();
      if ((sub_21B4C9688() & 1) != 0 || v11 == 0x627D687B787D777BLL && v13 == 0xED00007D667B2E62)
      {

LABEL_7:
        sub_21B4C56C8();
        return (*(v5 + 8))(v7, v4);
      }

      v15 = sub_21B4CA608();

      if (v15)
      {
        goto LABEL_7;
      }

      (*(v5 + 8))(v7, v4);
    }
  }

  v16 = sub_21B4C5748();
  return (*(*(v16 - 8) + 16))(a1, v2, v16);
}

uint64_t sub_21B3FC270@<X0>(uint64_t a1@<X8>)
{
  v128 = a1;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C58);
  v129 = *(v126 - 8);
  v1 = MEMORY[0x28223BE20](v126);
  v127 = &v123 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v146 = &v123 - v4;
  MEMORY[0x28223BE20](v3);
  v145 = &v123 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v123 - v7;
  v151 = sub_21B4C5AA8();
  v162 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C68);
  v158 = *(v136 - 8);
  v11 = MEMORY[0x28223BE20](v136);
  v150 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v148 = &v123 - v13;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C70);
  v168 = *(v166 - 8);
  v14 = MEMORY[0x28223BE20](v166);
  v16 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v149 = &v123 - v17;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C78);
  v125 = *(v144 - 8);
  v18 = MEMORY[0x28223BE20](v144);
  v143 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v157 = &v123 - v20;
  v21 = sub_21B4C5BA8();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v147 = &v123 - v26;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C80);
  v167 = *(v165 - 8);
  v27 = MEMORY[0x28223BE20](v165);
  v124 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v153 = &v123 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v163 = &v123 - v32;
  MEMORY[0x28223BE20](v31);
  v154 = &v123 - v33;
  sub_21B4C5A98();
  sub_21B4C5BD8();
  v140 = sub_21B4C5BF8();
  v34 = *(v140 - 8);
  v139 = *(v34 + 56);
  v141 = v34 + 56;
  v139(v8, 1, 1, v140);
  sub_21B4C5A98();
  v138 = sub_21B39BAB0();
  v35 = MEMORY[0x277D83E40];
  v134 = v16;
  v131 = v10;
  v135 = v8;
  v36 = v151;
  sub_21B4C5B88();
  v37 = *(v22 + 8);
  v155 = v22 + 8;
  v156 = v37;
  v37(v25, v21);
  sub_21B3FD454(v8);
  v38 = *(v162 + 8);
  v162 += 8;
  v137 = v38;
  v38(v10, v36);
  v39 = v150;
  MEMORY[0x21CEEF240](v16, v35);
  v40 = sub_21B3F1314(&qword_2811FD6C0, &qword_27CD86C68);
  v41 = v148;
  v42 = v136;
  v132 = v40;
  MEMORY[0x21CEEF1B0](v39, v136, v40);
  v44 = v158 + 8;
  v43 = *(v158 + 8);
  v43(v39, v42);
  v133 = v43;
  v158 = v44;
  v45 = v149;
  sub_21B4C5A78();
  v43(v41, v42);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C88);
  v142 = MEMORY[0x277D85AC0];
  v169 = sub_21B3F1314(&qword_2811FD6A8, &qword_27CD86C70);
  v47 = v157;
  v130 = v46;
  v48 = v166;
  v49 = v147;
  sub_21B4C5B78();
  v50 = *(v168 + 8);
  v168 += 8;
  v161 = v50;
  v50(v45, v48);
  v51 = v21;
  v164 = v21;
  v156(v49, v21);
  v52 = v163;
  MEMORY[0x21CEEF220](v47, v46);
  v160 = sub_21B3F1314(&qword_2811FD6D8, &qword_27CD86C80);
  v53 = v165;
  MEMORY[0x21CEEF1B0](v52, v165, v160);
  v54 = *(v167 + 8);
  v167 += 8;
  v152 = v54;
  v54(v52, v53);
  v174 = 120;
  v175 = 0xE100000000000000;
  v159 = sub_21B381264();
  MEMORY[0x21CEEF1B0](v176, &v174, MEMORY[0x277D837D0], v159);
  sub_21B4C5A98();
  v55 = v131;
  sub_21B4C5BD8();
  v56 = v135;
  v139(v135, 1, 1, v140);
  v123 = v25;
  sub_21B4C5A98();
  v57 = v134;
  v58 = MEMORY[0x277D83E40];
  v59 = v151;
  sub_21B4C5B88();
  v60 = v156;
  v156(v25, v51);
  sub_21B3FD454(v56);
  v137(v55, v59);
  v61 = v150;
  MEMORY[0x21CEEF240](v57, v58);
  v62 = v148;
  v63 = v136;
  MEMORY[0x21CEEF1B0](v61, v136, v132);
  v64 = v133;
  v133(v61, v63);
  v65 = v149;
  sub_21B4C5A78();
  v64(v62, v63);
  v66 = v157;
  v67 = v130;
  v68 = v166;
  v69 = v147;
  sub_21B4C5B78();
  v161(v65, v68);
  v70 = v164;
  v60(v69, v164);
  v71 = v153;
  MEMORY[0x21CEEF220](v66, v67);
  v72 = v165;
  MEMORY[0x21CEEF1B0](v71, v165, v160);
  v152(v71, v72);
  v172 = 25186;
  v173 = 0xE200000000000000;
  v73 = MEMORY[0x277D837D0];
  v74 = v159;
  MEMORY[0x21CEEF1B0](&v174, &v172, MEMORY[0x277D837D0], v159);
  v170 = 46;
  v171 = 0xE100000000000000;
  MEMORY[0x21CEEF1B0](&v172, &v170, v73, v74);
  sub_21B4C5A98();
  v75 = v131;
  sub_21B4C5BB8();
  v76 = v135;
  v139(v135, 1, 1, v140);
  v77 = v123;
  sub_21B4C5A98();
  v78 = v134;
  v79 = MEMORY[0x277D83E40];
  v80 = v151;
  sub_21B4C5B88();
  v81 = v70;
  v82 = v60;
  v60(v77, v81);
  sub_21B3FD454(v76);
  v137(v75, v80);
  v83 = v150;
  MEMORY[0x21CEEF240](v78, v79);
  v84 = v148;
  MEMORY[0x21CEEF1B0](v83, v63, v132);
  v85 = v133;
  v133(v83, v63);
  v86 = v149;
  sub_21B4C5A78();
  v85(v84, v63);
  v87 = v157;
  v88 = v130;
  v89 = v166;
  v90 = v147;
  sub_21B4C5B78();
  v91 = v86;
  v92 = v161;
  v161(v86, v89);
  v93 = v90;
  v82(v90, v164);
  v94 = v124;
  MEMORY[0x21CEEF220](v87, v88);
  v95 = v94;
  v96 = v94;
  v97 = v165;
  MEMORY[0x21CEEF1B0](v95, v165, v160);
  v152(v96, v97);
  sub_21B4C5A78();
  v99 = v176[0];
  v98 = v176[1];
  sub_21B4C5A98();
  v170 = v99;
  v171 = v98;
  sub_21B4C5B58();

  sub_21B3F1314(&qword_2811FD648, &qword_27CD86C78);
  v100 = v166;
  v101 = v93;
  sub_21B4C5B38();
  v92(v91, v100);
  v102 = v164;
  v103 = v156;
  v156(v93, v164);
  sub_21B4C5A98();
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C90);
  sub_21B4C5B38();
  v103(v93, v102);
  v104 = v103;
  v106 = v174;
  v105 = v175;
  sub_21B4C5A98();
  v170 = v106;
  v171 = v105;
  sub_21B4C5B58();

  sub_21B3F1314(&qword_2811FD670, &qword_27CD86C58);
  v107 = v126;
  v108 = v166;
  sub_21B4C5B38();
  v161(v91, v108);
  v104(v93, v164);
  v109 = v172;
  v110 = v173;
  sub_21B4C5A98();
  v170 = v109;
  v171 = v110;
  sub_21B4C5B58();

  v111 = v127;
  v112 = v107;
  sub_21B4C5B38();
  v161(v91, v108);
  v113 = v164;
  v114 = v156;
  v156(v93, v164);
  sub_21B4C5A98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C50);
  v115 = v153;
  v116 = v112;
  v117 = v165;
  sub_21B4C5B38();
  v114(v101, v113);
  v118 = *(v129 + 8);
  v118(v111, v116);
  v118(v146, v116);
  v118(v145, v116);
  v119 = *(v125 + 8);
  v120 = v144;
  v119(v143, v144);
  v119(v157, v120);
  v121 = v152;
  v152(v115, v117);
  v121(v163, v117);
  return (v121)(v154, v117);
}

uint64_t sub_21B3FD454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NowPlayingArtwork.Data.description.getter()
{
  v1 = v0;
  v2 = sub_21B4C5E78();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NowPlayingArtwork.Data();
  MEMORY[0x28223BE20](v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B387304(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21B39337C(v7, v4);
      v17 = 0x3D6C65646F4DLL;
      v18 = 0xE600000000000000;
      MEMORY[0x21CEF2F30](*v4, v4[1]);
      v9 = v17;
      sub_21B387368(v4, MEMORY[0x277D3D488]);
      return v9;
    }

    v11 = *v7;
    v17 = 0x3D676F6C61746143;
    v18 = 0xE800000000000000;
    v12 = [v11 description];
  }

  else
  {
    v11 = *v7;
    v17 = 0x3D6567616D49;
    v18 = 0xE600000000000000;
    v12 = [v11 description];
  }

  v13 = v12;
  v14 = sub_21B4C9708();
  v16 = v15;

  MEMORY[0x21CEF2F30](v14, v16);

  return v17;
}

uint64_t sub_21B3FD6E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NowPlayingArtwork.Placement.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7972616D697270;
  v3 = 0x746E65436F666E69;
  v4 = 0x65676150776F6873;
  if (v1 != 3)
  {
    v4 = 0x706F72646B636162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void NowPlayingArtwork.Placement.preferredSize.getter()
{
  if (*v0 == 3)
  {
    v1 = objc_opt_self();
    v2 = [v1 mainScreen];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    CGRectGetWidth(v20);
    v11 = [v1 mainScreen];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v21.origin.x = v13;
    v21.origin.y = v15;
    v21.size.width = v17;
    v21.size.height = v19;
    CGRectGetHeight(v21);
  }
}

uint64_t NowPlayingArtwork.Placement.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_21B4CA518();

  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_21B3FD984()
{
  result = qword_27CD86CA0;
  if (!qword_27CD86CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86CA0);
  }

  return result;
}

uint64_t sub_21B3FD9D8()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

uint64_t sub_21B3FDAC8()
{
  sub_21B4C9658();
}

uint64_t sub_21B3FDBA4()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

void sub_21B3FDC9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x7972616D697270;
  v5 = 0xEA00000000007265;
  v6 = 0x746E65436F666E69;
  v7 = 0xEC0000006C6C6154;
  v8 = 0x65676150776F6873;
  if (v2 != 3)
  {
    v8 = 0x706F72646B636162;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x617461646174656DLL;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t _s9PlacementOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9PlacementOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21B3FDE88(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x617461646174656DLL;
    }

    else
    {
      v3 = 0x7972616D697270;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x746E65436F666E69;
    v4 = 0xEA00000000007265;
  }

  else if (a1 == 3)
  {
    v3 = 0x65676150776F6873;
    v4 = 0xEC0000006C6C6154;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x706F72646B636162;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x617461646174656DLL;
    }

    else
    {
      v9 = 0x7972616D697270;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x65676150776F6873;
    v6 = 0xEC0000006C6C6154;
    if (a2 != 3)
    {
      v5 = 0x706F72646B636162;
      v6 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x746E65436F666E69;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xEA00000000007265;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_21B4CA608();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_21B3FE02C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x72657470616863;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEC0000006C6C6154;
    v4 = 0xE400000000000000;
    if (a1 == 2)
    {
      v6 = 0x65676150776F6873;
    }

    else
    {
      v6 = 2003789939;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE700000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x65646F73697065;
    }

    else
    {
      v6 = 0x72657470616863;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0x65676150776F6873;
  v9 = 0xEC0000006C6C6154;
  if (a2 != 2)
  {
    v8 = 2003789939;
    v9 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x65646F73697065;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (a2 <= 1u)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = v9;
  }

  if (v6 == v10 && v7 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21B4CA608();
  }

  return v12 & 1;
}

uint64_t sub_21B3FE16C(char a1, char a2)
{
  if (a1 == a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_21B4CA608();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t NowPlayingArtwork.ArtworkType.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_21B4CA518();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t NowPlayingArtwork.ArtworkType.rawValue.getter()
{
  v1 = 0x72657470616863;
  v2 = 0x65676150776F6873;
  if (*v0 != 2)
  {
    v2 = 2003789939;
  }

  if (*v0)
  {
    v1 = 0x65646F73697065;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21B3FE2B8()
{
  result = qword_27CD86CA8;
  if (!qword_27CD86CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86CA8);
  }

  return result;
}

uint64_t sub_21B3FE30C()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

uint64_t sub_21B3FE3D0()
{
  sub_21B4C9658();
}

uint64_t sub_21B3FE480()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

void sub_21B3FE54C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x72657470616863;
  v4 = 0xEC0000006C6C6154;
  v5 = 0x65676150776F6873;
  if (*v1 != 2)
  {
    v5 = 2003789939;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x65646F73697065;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t _s11ArtworkTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s11ArtworkTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NowPlayingArtwork(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NowPlayingArtwork(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

PodcastsUI::NowPlayingPlayerStyle_optional __swiftcall NowPlayingPlayerStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21B4CA518();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t NowPlayingPlayerStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x657263536C6C7566;
  }

  else
  {
    return 1768843629;
  }
}

uint64_t sub_21B3FE8A0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657263536C6C7566;
  }

  else
  {
    v3 = 1768843629;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E65;
  }

  if (*a2)
  {
    v5 = 0x657263536C6C7566;
  }

  else
  {
    v5 = 1768843629;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006E65;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21B4CA608();
  }

  return v8 & 1;
}

unint64_t sub_21B3FE948()
{
  result = qword_27CD86CB0;
  if (!qword_27CD86CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86CB0);
  }

  return result;
}

uint64_t sub_21B3FE99C()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

uint64_t sub_21B3FEA1C()
{
  sub_21B4C9658();
}

uint64_t sub_21B3FEA88()
{
  sub_21B4CA6E8();
  sub_21B4C9658();

  return sub_21B4CA738();
}

uint64_t sub_21B3FEB04@<X0>(char *a1@<X8>)
{
  v2 = sub_21B4CA518();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_21B3FEB64(uint64_t *a1@<X8>)
{
  v2 = 1768843629;
  if (*v1)
  {
    v2 = 0x657263536C6C7566;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006E65;
  }

  *a1 = v2;
  a1[1] = v3;
}

id ObjCArtworkProvider.__allocating_init(bucketingStrategy:backingCache:imageProvider:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = *(a3 + 24);
  v13 = *(a3 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a3, v12);
  v15 = sub_21B408E4C(v11, a2, v14, a4, v4, v9, v12, v10, v13);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v15;
}

uint64_t sub_21B3FECC4(uint64_t a1, SEL *a2, void *a3)
{
  v67 = a2;
  v68 = a3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E38);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E40);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6);
  v63 = &v51 - v7;
  v8 = type metadata accessor for AssetCaches();
  MEMORY[0x28223BE20](v8);
  v62 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LibraryImageProvider();
  v11 = MEMORY[0x28223BE20](v10);
  v66 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86CE0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86CE8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v51 - v21;
  v23 = sub_21B4C6E18();
  v60 = *(v23 - 8);
  v61 = v23;
  v24 = MEMORY[0x28223BE20](v23);
  v58 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v59 = &v51 - v26;
  sub_21B4C6E08();
  if (qword_2812006B0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v8, qword_281200258);
  (*(v20 + 16))(v22, v27 + *(v8 + 20), v19);
  sub_21B4C5DD8();
  (*(v20 + 8))(v22, v19);
  v51 = sub_21B4C5DA8();
  (*(v16 + 8))(v18, v15);
  v28 = v62;
  sub_21B3944F0(v27, v62, type metadata accessor for AssetCaches);
  (*(v52 + 104))(v54, *MEMORY[0x277D3D800], v55);
  sub_21B4C64F8();
  v29 = v53;
  sub_21B4C6C98();
  sub_21B3F1314(&qword_2811FD4D0, &qword_27CD86E40);
  v30 = v63;
  v31 = v57;
  sub_21B4C5D88();
  (*(v56 + 8))(v29, v31);
  sub_21B3F12CC(0, &qword_2811FCD88);
  v32 = [swift_getObjCClassFromMetadata() defaultStore];
  v70 = &type metadata for ThumbnailImageResizer;
  v71 = &protocol witness table for ThumbnailImageResizer;
  sub_21B3F12CC(0, &qword_281200500);
  v33 = sub_21B4C9D98();
  sub_21B3944F0(v28, v14, type metadata accessor for AssetCaches);
  v35 = v64;
  v34 = v65;
  (*(v64 + 16))(&v14[v10[5]], v30, v65);
  *&v14[v10[7]] = v32;
  sub_21B3F821C(v69, &v14[v10[6]]);
  *&v14[v10[8]] = v33;
  v36 = MEMORY[0x277D84F90];
  v37 = sub_21B3719E0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E50);
  v38 = swift_allocObject();
  *(v38 + 24) = 0;
  *(v38 + 16) = v37;
  *&v14[v10[9]] = v38;
  v39 = sub_21B36EE90(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E58);
  v40 = swift_allocObject();
  *(v40 + 24) = 0;
  v41 = *(v35 + 8);

  v41(v30, v34);
  sub_21B36F060(v28, type metadata accessor for AssetCaches);
  __swift_destroy_boxed_opaque_existential_1(v69);
  *(v40 + 16) = v39;

  *&v14[v10[10]] = v40;
  v42 = [objc_opt_self() sharedInstance];
  v43 = [v42 *v67];

  v45 = v59;
  v44 = v60;
  v46 = v58;
  v47 = v61;
  (*(v60 + 16))(v58, v59, v61);
  v48 = v66;
  sub_21B3944F0(v14, v66, type metadata accessor for LibraryImageProvider);
  v49 = sub_21B408A98(v46, v51, v48, v43);
  sub_21B36F060(v14, type metadata accessor for LibraryImageProvider);
  result = (*(v44 + 8))(v45, v47);
  *v68 = v49;
  return result;
}

id sub_21B3FF54C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id ObjCArtworkProvider.init(bucketingStrategy:backingCache:imageProvider:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v15 = *(a3 + 24);
  v14 = *(a3 + 32);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  MEMORY[0x28223BE20](v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_21B408D08(v12, a2, v18, a4, v22[1], v9, v15, v8, v14);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v20;
}

id ObjCArtworkProvider.__allocating_init(asPartOf:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86CE0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23[-v2 - 8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86CE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23[-v6 - 8];
  v8 = type metadata accessor for AssetCaches();
  MEMORY[0x28223BE20](v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21B4C8808();
  (*(v5 + 16))(v7, &v10[*(v8 + 20)], v4);
  sub_21B36F060(v10, type metadata accessor for AssetCaches);
  sub_21B4C5DD8();
  (*(v5 + 8))(v7, v4);
  v11 = sub_21B4C5DA8();
  (*(v1 + 8))(v3, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86CF0);
  sub_21B4C8808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86BE8);
  sub_21B4C8808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D60);
  sub_21B4C8808();
  v12 = [v26[0] privateQueueContext];
  swift_unknownObjectRelease();
  sub_21B3F821C(v30, v26);
  sub_21B3F821C(v29, v23);
  v13 = v27;
  v14 = v28;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v17 = v24;
  v16 = v25;
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v19 = v12;
  v20 = sub_21B408E4C(v15, v11, v18, v19, v22, v13, v17, v14, v16);

  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v20;
}

uint64_t sub_21B3FFB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[2] = a4;
  v22[0] = a3;
  v22[3] = a2;
  v6 = sub_21B4C6A48();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = sub_21B4C5D78();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_21B4C5E78();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - v15;
  v17 = type metadata accessor for PreparedArtworkRequest();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v4 + OBJC_IVAR___PUIObjCArtworkProvider_backingCache);
  v26 = a1;
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy), *(v4 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy + 24));
  sub_21B4C6F68();
  v27 = xmmword_21B4D1CE0;
  v28 = 0u;
  memset(v29, 0, sizeof(v29));

  sub_21B4C5D48();
  sub_21B4C61C8();

  sub_21B4C5E68();
  sub_21B3944F0(v16, v14, MEMORY[0x277D3D488]);
  v20 = sub_21B4C72A8();
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_21B4C6A28();
  sub_21B4C6478();
  sub_21B36F060(v16, MEMORY[0x277D3D488]);
  sub_21B408FF0();
  sub_21B4C6558();
  return sub_21B36F060(v19, type metadata accessor for PreparedArtworkRequest);
}

uint64_t sub_21B400000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a4;
  v22[2] = a1;
  v22[3] = a3;
  v5 = sub_21B4C6A48();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  v9 = sub_21B4C5D78();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_21B4C5E78();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v22 - v14;
  v16 = type metadata accessor for PreparedArtworkRequest();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *(v4 + OBJC_IVAR___PUIObjCArtworkProvider_backingCache);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy), *(v4 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy + 24));
  sub_21B4C6F68();
  v26 = xmmword_21B4D1CE0;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));

  sub_21B4C5D48();
  sub_21B4C61C8();

  sub_21B4C5E68();
  sub_21B3944F0(v15, v13, MEMORY[0x277D3D488]);
  v19 = sub_21B4C72A8();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  sub_21B4C6A28();
  sub_21B4C6478();
  sub_21B36F060(v15, MEMORY[0x277D3D488]);
  sub_21B408FF0();
  v20 = sub_21B4C6538();
  sub_21B36F060(v18, type metadata accessor for PreparedArtworkRequest);
  return v20 & 1;
}

uint64_t sub_21B400484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v7 + 120) = a4;
  *(v7 + 128) = v6;
  *(v7 + 112) = a3;
  *(v7 + 96) = a5;
  *(v7 + 104) = a6;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  sub_21B4C6A48();
  *(v7 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98);
  *(v7 + 144) = swift_task_alloc();
  sub_21B4C5D78();
  *(v7 + 152) = swift_task_alloc();
  sub_21B4C5E78();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  type metadata accessor for PreparedArtworkRequest();
  *(v7 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B4005E8, 0, 0);
}

uint64_t sub_21B4005E8()
{
  v1 = *(v0 + 168);
  v8 = *(v0 + 160);
  v9 = *(v0 + 144);
  v10 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy), *(v10 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy + 24));
  sub_21B4C6F68();
  *(v0 + 16) = xmmword_21B4D1CE0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;

  sub_21B4C5D48();
  sub_21B4C61C8();

  sub_21B4C5E68();
  sub_21B3944F0(v1, v8, MEMORY[0x277D3D488]);
  v2 = sub_21B4C72A8();
  (*(*(v2 - 8) + 56))(v9, 1, 1, v2);
  sub_21B4C6A28();
  sub_21B4C6478();
  sub_21B36F060(v1, MEMORY[0x277D3D488]);
  v4 = *(v10 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 24);
  v3 = *(v10 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 32);
  __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider), v4);
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_21B4008B8;
  v6 = *(v0 + 176);

  return ImageProvider.load(request:)(v6, v4, v3);
}

uint64_t sub_21B4008B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_21B400AA8;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_21B4009E0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B4009E0()
{
  sub_21B36F060(v0[22], type metadata accessor for PreparedArtworkRequest);

  v1 = v0[1];
  v2 = v0[25];

  return v1(v2);
}

uint64_t sub_21B400AA8()
{
  sub_21B36F060(*(v0 + 176), type metadata accessor for PreparedArtworkRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B400D14(uint64_t a1, int a2, void *aBlock, double a4, double a5, void *a6)
{
  v6[2] = a6;
  v6[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_21B4C9708();
  }

  else
  {
    v11 = 0;
  }

  v6[4] = v11;
  v12 = v11;
  v13 = sub_21B4C9708();
  v15 = v14;
  v6[5] = v14;
  a6;
  v16 = swift_task_alloc();
  v6[6] = v16;
  *v16 = v6;
  v16[1] = sub_21B400E38;

  return sub_21B400484(a1, v12, v13, v15, a4, a5);
}

uint64_t sub_21B400E38(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);

  if (v3)
  {
    v9 = sub_21B4C55C8();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](v8, a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_21B40100C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 64) = v4;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  v6 = sub_21B4C64F8();
  *(v5 + 72) = v6;
  *(v5 + 80) = *(v6 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B4010E0, 0, 0);
}

uint64_t sub_21B4010E0()
{
  __swift_project_boxed_opaque_existential_1((v0[8] + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy), *(v0[8] + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy + 24));
  sub_21B4C6F68();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_21B4011C8;
  v4 = v0[11];
  v5 = v0[4];
  v6 = v0[5];

  return sub_21B406458(v4, v5, v6);
}

uint64_t sub_21B4011C8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_21B40159C;
  }

  else
  {
    *(v2 + 120) = vextq_s8(*(v2 + 16), *(v2 + 16), 8uLL);
    v3 = sub_21B4012E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21B4012E8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  sub_21B4C64C8();
  v5 = *(v3 + 8);
  v0[17] = v5;
  v0[18] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  v7 = *(v4 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 24);
  v6 = *(v4 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider), v7);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_21B4013F0;
  v9 = v0[12];

  return ImageProvider.load(request:)(v9, v7, v6);
}

uint64_t sub_21B4013F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_21B401608;
  }

  else
  {
    *(v4 + 168) = a1;
    v5 = sub_21B401518;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B401518()
{
  (*(v0 + 136))(*(v0 + 96), *(v0 + 72));

  v1 = *(v0 + 8);
  v2 = *(v0 + 168);

  return v1(v2);
}

uint64_t sub_21B40159C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B401608()
{
  (*(v0 + 136))(*(v0 + 96), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B401820(int a1, void *aBlock, double a3, double a4, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = sub_21B4C9708();
  v11 = v10;
  v5[4] = v10;
  a5;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = sub_21B40190C;

  return sub_21B40100C(v9, v11, a3, a4);
}

uint64_t sub_21B40190C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_21B4C55C8();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_21B401AC8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = sub_21B401B88;

  return sub_21B40100C(a1, a2, a3, a4);
}

uint64_t sub_21B401B88(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_21B401CD4, 0, 0);
  }
}

uint64_t sub_21B401CD4()
{
  v1 = v0[3];
  v5 = v0[1];

  v2 = v0[5];
  v3 = v0[2];

  return v5(v3, v1, v2);
}

uint64_t sub_21B401EEC(int a1, void *aBlock, double a3, double a4, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = sub_21B4C9708();
  v11 = v10;
  v5[4] = v9;
  v5[5] = v10;
  a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_21B401FD8;

  return sub_21B40100C(v9, v11, a3, a4);
}

uint64_t sub_21B401FD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v8 = v4 + 16;
    v7 = *(v4 + 16);
    v6 = *(v8 + 8);

    v9 = sub_21B4C55C8();
    (v6)[2](v6, 0, 0, v9);

    _Block_release(v6);
    v10 = *(v5 + 8);

    return v10();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_21B402168, 0, 0);
  }
}

uint64_t sub_21B402168()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  v3 = sub_21B4C96C8();

  (v2)[2](v2, v3, v1, 0);

  _Block_release(v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21B40222C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v8 + 128) = a5;
  *(v8 + 136) = v7;
  *(v8 + 120) = a4;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 80) = a1;
  v9 = sub_21B4C5748();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  sub_21B4C6A48();
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98);
  *(v8 + 176) = swift_task_alloc();
  sub_21B4C5D78();
  *(v8 + 184) = swift_task_alloc();
  sub_21B4C5E78();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  type metadata accessor for PreparedArtworkRequest();
  *(v8 + 208) = swift_task_alloc();
  v10 = sub_21B4C64F8();
  *(v8 + 216) = v10;
  *(v8 + 224) = *(v10 - 8);
  *(v8 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B40244C, 0, 0);
}

uint64_t sub_21B40244C()
{
  v14 = *(v0 + 224);
  v15 = *(v0 + 216);
  v16 = *(v0 + 232);
  v1 = *(v0 + 200);
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  v12 = *(v0 + 208);
  v2 = *(v0 + 152);
  v17 = *(v0 + 160);
  v18 = *(v0 + 144);
  v13 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy), *(v13 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy + 24));
  sub_21B4C6F68();
  *(v0 + 16) = xmmword_21B4D1CE0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;

  sub_21B4C5D48();
  sub_21B4C61C8();

  sub_21B4C5E68();
  sub_21B3944F0(v1, v10, MEMORY[0x277D3D488]);
  v3 = sub_21B4C72A8();
  (*(*(v3 - 8) + 56))(v11, 1, 1, v3);
  sub_21B4C6A28();
  sub_21B4C6478();
  sub_21B36F060(v1, MEMORY[0x277D3D488]);
  (*(v14 + 32))(v16, v12, v15);
  sub_21B4C6528();
  sub_21B4C6BA8();
  v4 = *(v2 + 8);
  *(v0 + 240) = v4;
  *(v0 + 248) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v17, v18);
  v6 = *(v13 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 24);
  v5 = *(v13 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 32);
  __swift_project_boxed_opaque_existential_1((v13 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider), v6);
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *v7 = v0;
  v7[1] = sub_21B4027BC;
  v8 = *(v0 + 232);

  return ImageProvider.load(request:)(v8, v6, v5);
}

uint64_t sub_21B4027BC(void *a1)
{
  *(*v2 + 264) = v1;

  if (v1)
  {
    v4 = sub_21B4029B4;
  }

  else
  {

    v4 = sub_21B4028D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21B4028D8()
{
  (*(v0[28] + 8))(v0[29], v0[27]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21B4029B4()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  (*(v0 + 240))(*(v0 + 80), *(v0 + 144));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21B402C58(uint64_t a1, double a2, double a3, uint64_t a4, const void *a5, void *a6)
{
  v6[2] = a6;
  v12 = sub_21B4C5748();
  v6[3] = v12;
  v6[4] = *(v12 - 8);
  v13 = swift_task_alloc();
  v6[5] = v13;
  v6[6] = _Block_copy(a5);
  if (a1)
  {
    v14 = sub_21B4C9708();
    a1 = v15;
  }

  else
  {
    v14 = 0;
  }

  v6[7] = a1;
  v16 = sub_21B4C9708();
  v18 = v17;
  v6[8] = v17;
  a6;
  v19 = swift_task_alloc();
  v6[9] = v19;
  *v19 = v6;
  v19[1] = sub_21B402DEC;

  return sub_21B40222C(v13, v14, a1, v16, v18, a2, a3);
}

uint64_t sub_21B402DEC()
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *v1;

  if (v0)
  {
    v5 = sub_21B4C55C8();

    v6 = v5;
    v7 = 0;
    v8 = v5;
  }

  else
  {
    v10 = v2[4];
    v9 = v2[5];
    v11 = v2[3];
    v8 = sub_21B4C5688();
    (*(v10 + 8))(v9, v11);
    v7 = v8;
    v6 = 0;
  }

  v12 = v2[6];
  (v12)[2](v12, v7, v6);

  _Block_release(v12);

  v13 = *(v4 + 8);

  return v13();
}

uint64_t sub_21B402FC4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 40) = v5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  *(v6 + 16) = a1;
  v9 = sub_21B4C5748();
  *(v6 + 48) = v9;
  *(v6 + 56) = *(v9 - 8);
  *(v6 + 64) = swift_task_alloc();
  v10 = sub_21B4C64F8();
  *(v6 + 72) = v10;
  *(v6 + 80) = *(v10 - 8);
  v11 = swift_task_alloc();
  *(v6 + 88) = v11;
  *(v6 + 96) = swift_task_alloc();
  v12 = swift_task_alloc();
  *(v6 + 104) = v12;
  *v12 = v6;
  v12[1] = sub_21B40314C;

  return sub_21B406458(v11, a2, a3);
}

uint64_t sub_21B40314C()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_21B4035D8;
  }

  else
  {
    v2 = sub_21B403260;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21B403260()
{
  v1 = v0[11];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v14 = v0[6];
  v13 = v0[9];
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy), *(v5 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy + 24));
  sub_21B4C6F68();
  sub_21B4C64C8();
  v6 = *(v2 + 8);
  v0[15] = v6;
  v0[16] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v13);
  sub_21B4C6528();
  sub_21B4C6BA8();
  v7 = *(v4 + 8);
  v0[17] = v7;
  v0[18] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v14);
  v9 = *(v5 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 24);
  v8 = *(v5 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider), v9);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_21B40342C;
  v11 = v0[12];

  return ImageProvider.load(request:)(v11, v9, v8);
}

uint64_t sub_21B40342C(void *a1)
{
  *(*v2 + 160) = v1;

  if (v1)
  {
    v4 = sub_21B403658;
  }

  else
  {

    v4 = sub_21B403548;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21B403548()
{
  (*(v0 + 120))(*(v0 + 96), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B4035D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B403658()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  (*(v0 + 136))(*(v0 + 16), *(v0 + 48));
  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21B40389C(double a1, double a2, uint64_t a3, const void *a4, void *a5)
{
  v5[2] = a5;
  v10 = sub_21B4C5748();
  v5[3] = v10;
  v5[4] = *(v10 - 8);
  v11 = swift_task_alloc();
  v5[5] = v11;
  v5[6] = _Block_copy(a4);
  v12 = sub_21B4C9708();
  v14 = v13;
  v5[7] = v13;
  a5;
  v15 = swift_task_alloc();
  v5[8] = v15;
  *v15 = v5;
  v15[1] = sub_21B4039FC;

  return sub_21B402FC4(v11, v12, v14, a1, a2);
}

uint64_t sub_21B4039FC()
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *v1;

  if (v0)
  {
    v5 = sub_21B4C55C8();

    v6 = v5;
    v7 = 0;
    v8 = v5;
  }

  else
  {
    v10 = v2[4];
    v9 = v2[5];
    v11 = v2[3];
    v8 = sub_21B4C5688();
    (*(v10 + 8))(v9, v11);
    v7 = v8;
    v6 = 0;
  }

  v12 = v2[6];
  (v12)[2](v12, v7, v6);

  _Block_release(v12);

  v13 = *(v4 + 8);

  return v13();
}

uint64_t sub_21B403BB8(uint64_t a1, uint64_t a2)
{
  v5 = sub_21B4C64F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PreparedArtworkRequest();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy), *(v2 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy + 24));
  sub_21B4C6F68();
  sub_21B406B08(a1, a2, v8);
  (*(v6 + 32))(v11, v8, v5);
  sub_21B408FF0();
  sub_21B4C6548();
  sub_21B36F060(v11, type metadata accessor for PreparedArtworkRequest);
  return v13[0];
}

uint64_t sub_21B403E18()
{
  v0 = type metadata accessor for PreparedArtworkRequest();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D68);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - v6;
  v8 = sub_21B4C64F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D78);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  sub_21B4CA108();
  v21 = sub_21B4C5E78();
  if ((*(*(v21 - 8) + 48))(v14, 1, v21) == 1)
  {
    sub_21B3F2D94(v14, &qword_27CD86D70);
    v22 = 1;
  }

  else
  {
    ArtworkModel.preferredRequest.getter(v11);
    sub_21B36F060(v14, MEMORY[0x277D3D488]);
    v31 = v9;
    __swift_project_boxed_opaque_existential_1((v34 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy), *(v34 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy + 24));
    v9 = v31;
    sub_21B4C6F68();
    sub_21B4C64C8();
    (*(v9 + 8))(v11, v8);
    v22 = 0;
  }

  v23 = 1;
  (*(v9 + 56))(v20, v22, 1, v8);
  sub_21B36C7AC(v20, v18, &qword_27CD86D78);
  v24 = (*(v9 + 48))(v18, 1, v8);
  v25 = v33;
  if (v24 != 1)
  {
    (*(v9 + 32))(v7, v18, v8);
    v23 = 0;
  }

  (*(v1 + 56))(v7, v23, 1, v0);
  sub_21B36C7AC(v7, v25, &qword_27CD86D68);
  if ((*(v1 + 48))(v25, 1, v0) == 1)
  {

    v26 = 0;
  }

  else
  {
    v27 = v25;
    v28 = v32;
    sub_21B40AAF0(v27, v32, type metadata accessor for PreparedArtworkRequest);
    sub_21B408FF0();

    sub_21B4C6548();
    v26 = v35;
    sub_21B36F060(v28, type metadata accessor for PreparedArtworkRequest);
  }

  sub_21B3F2D94(v7, &qword_27CD86D68);
  sub_21B3F2D94(v20, &qword_27CD86D78);

  return v26;
}

uint64_t sub_21B4043E8(uint64_t a1, double a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  v5 = sub_21B4C64F8();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D70);
  *(v4 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D78);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B404538, 0, 0);
}

uint64_t sub_21B404538()
{
  v1 = v0[10];
  sub_21B4CA108();
  v2 = sub_21B4C5E78();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_21B3F2D94(v0[10], &qword_27CD86D70);
    v3 = 1;
  }

  else
  {
    v5 = v0[9];
    v4 = v0[10];
    v6 = v0[6];
    v7 = v0[7];
    v8 = v0[5];
    ArtworkModel.preferredRequest.getter(v5);
    sub_21B36F060(v4, MEMORY[0x277D3D488]);
    __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy), *(v8 + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy + 24));
    sub_21B4C6F68();
    sub_21B4C64C8();
    (*(v7 + 8))(v5, v6);
    v3 = 0;
  }

  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[6];
  v12 = v0[7];
  (*(v12 + 56))(v10, v3, 1, v11);
  sub_21B36C7AC(v10, v9, &qword_27CD86D78);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    v13 = v0[11];
    sub_21B3F2D94(v0[12], &qword_27CD86D78);
    sub_21B3F2D94(v13, &qword_27CD86D78);

    v14 = v0[1];

    return v14(0);
  }

  else
  {
    v16 = v0[5];
    (*(v0[7] + 32))(v0[8], v0[11], v0[6]);
    v17 = (v16 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider);
    v19 = *(v16 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 24);
    v18 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v19);
    v20 = swift_task_alloc();
    v0[13] = v20;
    *v20 = v0;
    v20[1] = sub_21B404850;
    v21 = v0[8];

    return ImageProvider.load(request:)(v21, v19, v18);
  }
}

uint64_t sub_21B404850(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_21B404A50;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_21B404978;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B404978()
{
  v1 = v0[15];
  v2 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_21B3F2D94(v2, &qword_27CD86D78);

  v3 = v0[1];

  return v3(v1);
}

uint64_t sub_21B404A50()
{
  v1 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_21B3F2D94(v1, &qword_27CD86D78);

  v2 = v0[1];

  return v2();
}

uint64_t sub_21B404CBC(void *a1, void *aBlock, void *a3, double a4, double a5)
{
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = _Block_copy(aBlock);
  v10 = a1;
  a3;
  v11 = swift_task_alloc();
  v5[5] = v11;
  *v11 = v5;
  v11[1] = sub_21B404D98;

  return sub_21B4043E8(v10, a4, a5);
}

uint64_t sub_21B404D98(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_21B4C55C8();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](*(v5 + 32), a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_21B404F50(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 232) = v4;
  *(v5 + 216) = a3;
  *(v5 + 224) = a4;
  *(v5 + 200) = a1;
  *(v5 + 208) = a2;
  sub_21B4C6A48();
  *(v5 + 240) = swift_task_alloc();
  v6 = sub_21B4C72A8();
  *(v5 + 248) = v6;
  *(v5 + 256) = *(v6 - 8);
  *(v5 + 264) = swift_task_alloc();
  v7 = sub_21B4C66C8();
  *(v5 + 272) = v7;
  *(v5 + 280) = *(v7 - 8);
  *(v5 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98);
  *(v5 + 296) = swift_task_alloc();
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  sub_21B4C5D78();
  *(v5 + 328) = swift_task_alloc();
  *(v5 + 336) = sub_21B4C5E78();
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  v8 = sub_21B4C64F8();
  *(v5 + 368) = v8;
  *(v5 + 376) = *(v8 - 8);
  *(v5 + 384) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B4051CC, 0, 0);
}

uint64_t sub_21B4051CC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 328);
  v28 = *(v0 + 320);
  v29 = *(v0 + 352);
  v34 = *(v0 + 312);
  v36 = *(v0 + 304);
  v3 = *(v0 + 280);
  v30 = *(v0 + 272);
  v32 = *(v0 + 288);
  v4 = *(v0 + 256);
  v27 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((*(v0 + 232) + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy), *(*(v0 + 232) + OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy + 24));
  sub_21B4C6F68();
  v6 = v5;
  v8 = v7;
  *(v0 + 16) = xmmword_21B4D1CE0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 57) = 0u;

  sub_21B4C5D48();
  BYTE2(v26) = 0;
  LOWORD(v26) = sub_21B4C61C8();
  LOBYTE(v25) = 4;
  sub_21B4C5E68();
  (*(v4 + 56))(v28, 1, 1, v27);
  *(v0 + 80) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 96) = 0u;
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];

  sub_21B3944F0(v1, v29, MEMORY[0x277D3D488]);
  sub_21B4C5E58();
  (*(v3 + 104))(v32, *MEMORY[0x277D3D6C0], v30);
  CGSize.fitting(_:aspectRule:)(v32, v6, v8);
  (*(v3 + 8))(v32, v30);
  sub_21B36C7AC(v28, v34, &qword_27CD86B98);
  sub_21B36C7AC(v0 + 80, v0 + 120, &qword_27CD86D80);
  sub_21B36C7AC(v34, v36, &qword_27CD86B98);
  v10 = *(v4 + 48);
  if (v10(v36, 1, v27) == 1)
  {
    v11 = *(v0 + 304);
    v12 = *(v0 + 248);
    sub_21B4C5D68();
    if (v10(v11, 1, v12) != 1)
    {
      sub_21B3F2D94(*(v0 + 304), &qword_27CD86B98);
    }
  }

  else
  {
    (*(*(v0 + 256) + 32))(*(v0 + 264), *(v0 + 304), *(v0 + 248));
  }

  v13 = *(v0 + 352);
  v14 = *(v0 + 344);
  v15 = *(v0 + 312);
  v33 = *(v0 + 320);
  v16 = *(v0 + 296);
  v17 = *(v0 + 256);
  v18 = *(v0 + 264);
  v31 = *(v0 + 248);
  v35 = *(v0 + 232);
  v37 = *(v0 + 360);
  sub_21B4C7278();
  sub_21B3944F0(v13, v14, MEMORY[0x277D3D488]);
  sub_21B36C7AC(v15, v16, &qword_27CD86B98);
  sub_21B4C6A28();
  sub_21B36C7AC(v0 + 120, v0 + 160, &qword_27CD86D80);
  sub_21B4C6478();
  (*(v17 + 8))(v18, v31);
  sub_21B3F2D94(v0 + 120, &qword_27CD86D80);
  sub_21B3F2D94(v15, &qword_27CD86B98);
  v19 = MEMORY[0x277D3D488];
  sub_21B36F060(v13, MEMORY[0x277D3D488]);
  sub_21B3F2D94(v0 + 80, &qword_27CD86D80);
  sub_21B3F2D94(v33, &qword_27CD86B98);
  sub_21B36F060(v37, v19);
  v21 = *(v35 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 24);
  v20 = *(v35 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 32);
  __swift_project_boxed_opaque_existential_1((v35 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider), v21);
  v22 = swift_task_alloc();
  *(v0 + 392) = v22;
  *v22 = v0;
  v22[1] = sub_21B405734;
  v23 = *(v0 + 384);

  return ImageProvider.load(request:)(v23, v21, v20);
}

uint64_t sub_21B405734(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v5 = sub_21B40597C;
  }

  else
  {
    *(v4 + 408) = a1;
    v5 = sub_21B40585C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B40585C()
{
  v3 = v0[51];
  (*(v0[47] + 8))(v0[48], v0[46]);

  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_21B40597C()
{
  (*(v0[47] + 8))(v0[48], v0[46]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21B405C30(int a1, void *aBlock, double a3, double a4, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = sub_21B4C9708();
  v11 = v10;
  v5[4] = v10;
  a5;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = sub_21B40190C;

  return sub_21B404F50(v9, v11, a3, a4);
}

uint64_t sub_21B405D1C(double a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21B405D40, 0, 0);
}

uint64_t sub_21B405D40()
{
  v1 = (*(v0 + 4) + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 5) = v4;
  *v4 = v0;
  v4[1] = sub_21B405E08;
  v5 = v0[2];
  v6 = v0[3];

  return ImageProvider.placeholder(with:)(v3, v2, v5, v6);
}

uint64_t sub_21B405E08(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1);
  }
}

uint64_t sub_21B4060C0(const void *a1, void *a2, double a3, double a4)
{
  *(v4 + 32) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  *(v4 + 40) = _Block_copy(a1);
  v6 = a2;

  return MEMORY[0x2822009F8](sub_21B40613C, 0, 0);
}

uint64_t sub_21B40613C()
{
  v1 = (*(v0 + 4) + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 6) = v4;
  *v4 = v0;
  v4[1] = sub_21B406204;
  v5 = v0[2];
  v6 = v0[3];

  return ImageProvider.placeholder(with:)(v3, v2, v5, v6);
}

uint64_t sub_21B406204(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_21B4063B4;
  }

  else
  {
    *(v4 + 64) = a1;
    v5 = sub_21B40632C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B40632C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);

  (v2)[2](v2, v1, 0);
  _Block_release(v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21B4063B4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = sub_21B4C55C8();
  (v2)[2](v2, 0, v3);

  _Block_release(v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_21B406458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_21B4C5E78();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_21B4C9F88();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D70);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B4065C0, 0, 0);
}

uint64_t sub_21B4065C0()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[4];
  v5 = v0[3];
  v6 = *(v0[5] + OBJC_IVAR___PUIObjCArtworkProvider_managedObjectContext);
  v7 = swift_allocObject();
  v0[15] = v7;
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277CBE110], v3);
  v6;

  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_21B406708;
  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[12];

  return MEMORY[0x28210EE50](v9, v10, sub_21B40AAD0, v7, v11);
}

void sub_21B406708()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    MEMORY[0x2822009F8](sub_21B406860, 0, 0);
  }
}

uint64_t sub_21B406860()
{
  v1 = v0[13];
  v2 = v0[6];
  v3 = v0[7];
  sub_21B36C7AC(v0[14], v1, &qword_27CD86D70);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[14];
    sub_21B3F2D94(v0[13], &qword_27CD86D70);
    sub_21B40AA7C();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
    sub_21B3F2D94(v4, &qword_27CD86D70);
  }

  else
  {
    v7 = v0[14];
    v8 = v0[8];
    v9 = v0[2];
    sub_21B40AAF0(v0[13], v8, MEMORY[0x277D3D488]);
    ArtworkModel.preferredRequest.getter(v9);
    sub_21B36F060(v8, MEMORY[0x277D3D488]);
    sub_21B3F2D94(v7, &qword_27CD86D70);
  }

  v6 = v0[1];

  return v6();
}

void sub_21B406A48(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B4C96C8();
  v5 = [a1 podcastForUuid_];

  if (v5)
  {
    sub_21B4CA108();
  }

  else
  {
    v6 = sub_21B4C5E78();
    (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
  }
}

uint64_t sub_21B406B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a1;
  v26 = a2;
  v19[1] = a3;
  v4 = sub_21B4C64F8();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21B4C5E78();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D70);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  v23 = *(v3 + OBJC_IVAR___PUIObjCArtworkProvider_managedObjectContext);
  v24 = v22;
  v25 = v26;
  sub_21B4C9F58();
  sub_21B36C7AC(v16, v14, &qword_27CD86D70);
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    sub_21B3F2D94(v14, &qword_27CD86D70);
    sub_21B40AA7C();
    swift_allocError();
    *v17 = 2;
    swift_willThrow();
  }

  else
  {
    sub_21B40AAF0(v14, v10, MEMORY[0x277D3D488]);
    ArtworkModel.preferredRequest.getter(v6);
    sub_21B4C64C8();
    (*(v20 + 8))(v6, v21);
    sub_21B36F060(v10, MEMORY[0x277D3D488]);
  }

  return sub_21B3F2D94(v16, &qword_27CD86D70);
}

void sub_21B406E48(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B4C96C8();
  v7 = [a1 podcastForUuid_];

  if (v7)
  {
    sub_21B4CA108();
  }

  else
  {
    v5 = sub_21B4C5E78();
    v6 = *(*(v5 - 8) + 56);

    v6(a2, 1, 1, v5);
  }
}

uint64_t sub_21B406F38()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D88);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86D90);
  v1[22] = v3;
  v1[23] = *(v3 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867B0);
  v1[26] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86DA0);
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86DA8);
  v1[30] = v5;
  v1[31] = *(v5 - 8);
  v1[32] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86DB0);
  v1[33] = v6;
  v1[34] = *(v6 - 8);
  v1[35] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86DB8);
  v1[36] = v7;
  v1[37] = *(v7 - 8);
  v1[38] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86DC0);
  v1[39] = v8;
  v1[40] = *(v8 - 8);
  v1[41] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86DC8);
  v1[42] = v9;
  v1[43] = *(v9 - 8);
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B407320, 0, 0);
}

uint64_t sub_21B407320()
{
  v35 = *(v0 + 352);
  v41 = *(v0 + 336);
  v42 = *(v0 + 344);
  v32 = *(v0 + 328);
  v36 = *(v0 + 320);
  v34 = *(v0 + 312);
  v33 = *(v0 + 296);
  v31 = *(v0 + 288);
  v27 = *(v0 + 304);
  v28 = *(v0 + 272);
  v25 = *(v0 + 264);
  v23 = *(v0 + 280);
  v24 = *(v0 + 248);
  v1 = *(v0 + 232);
  v21 = *(v0 + 224);
  v22 = *(v0 + 240);
  v18 = *(v0 + 216);
  v19 = *(v0 + 256);
  v2 = *(v0 + 208);
  v37 = *(v0 + 200);
  v38 = *(v0 + 184);
  v39 = *(v0 + 176);
  v40 = *(v0 + 192);
  v26 = *(v0 + 144);
  v3 = *(v26 + OBJC_IVAR___PUIObjCArtworkProvider_managedObjectContext);
  *(swift_allocObject() + 16) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD869B0);
  v5 = sub_21B4C9F68();

  *(v0 + 120) = v5;
  v6 = sub_21B3F12CC(0, &qword_281200500);
  v7 = sub_21B4C9DA8();
  *(v0 + 128) = v7;
  v30 = sub_21B4C9DE8();
  v29 = *(*(v30 - 8) + 56);
  v29(v2, 1, 1, v30);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86DD0);
  v9 = sub_21B3F1314(&qword_2811FD268, &qword_27CD86DD0);
  v20 = sub_21B36C98C();
  sub_21B4C77B8();
  sub_21B3F2D94(v2, &qword_27CD867B0);

  sub_21B4C7688();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD869B8);
  *(v0 + 56) = v8;
  *(v0 + 64) = v6;
  *(v0 + 72) = v9;
  *(v0 + 80) = v20;
  swift_getOpaqueTypeConformance2();
  sub_21B3F1314(&qword_2811FD2F0, &qword_27CD869B8);
  sub_21B4C78B8();
  (*(v21 + 8))(v1, v18);
  sub_21B3F1314(&qword_27CD86DD8, &qword_27CD86DA8);
  sub_21B4C7878();
  (*(v24 + 8))(v19, v22);
  swift_getKeyPath();
  sub_21B3F1314(&qword_27CD86DE0, &qword_27CD86DB0);
  sub_21B4C7818();

  (*(v28 + 8))(v23, v25);
  sub_21B3F821C(v26 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider, v0 + 16);
  v10 = swift_allocObject();
  sub_21B3F8414((v0 + 16), v10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86DE8);
  sub_21B3F1314(&unk_27CD86DF0, &qword_27CD86DB8);
  sub_21B3F1314(&qword_2811FD398, &qword_27CD86DE8);
  sub_21B4C78C8();

  (*(v33 + 8))(v27, v31);
  v11 = sub_21B4C9DA8();
  *(v0 + 136) = v11;
  v29(v2, 1, 1, v30);
  v12 = sub_21B3F1314(&qword_27CD86E00, &qword_27CD86DC0);
  sub_21B4C77B8();
  sub_21B3F2D94(v2, &qword_27CD867B0);

  (*(v36 + 8))(v32, v34);
  *(v0 + 88) = v34;
  *(v0 + 96) = v6;
  *(v0 + 104) = v12;
  *(v0 + 112) = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CEF0FE0](v41, OpaqueTypeConformance2);
  (*(v42 + 8))(v35, v41);
  (*(v38 + 16))(v40, v37, v39);
  sub_21B3F1314(&qword_27CD86E08, &unk_27CD86D90);
  sub_21B4C9AE8();
  *(v0 + 377) = 1;
  v14 = sub_21B3F1314(&qword_27CD86E10, &qword_27CD86D88);
  v15 = swift_task_alloc();
  *(v0 + 360) = v15;
  *v15 = v0;
  v15[1] = sub_21B407AB4;
  v16 = *(v0 + 152);

  return MEMORY[0x282200308](v0 + 376, v16, v14);
}

uint64_t sub_21B407AB4()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    (*(v2[20] + 8))(v2[21], v2[19]);
    v3 = sub_21B407DE8;
  }

  else
  {
    v3 = sub_21B407BE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}