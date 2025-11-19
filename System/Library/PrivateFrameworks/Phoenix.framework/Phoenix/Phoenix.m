double MachAbsoluteTimeToTimeIntervalSinceBoot(uint64_t a1)
{
  if (!dword_27FCEB86C)
  {
    mach_timebase_info(&MachAbsoluteTimeToTimeIntervalSinceBoot_sTimebaseInfo);
  }

  return (a1 * MachAbsoluteTimeToTimeIntervalSinceBoot_sTimebaseInfo / dword_27FCEB86C) / 1000000000.0;
}

uint64_t __os_log_helper_16_2_1_8_32(uint64_t result, uint64_t a2)
{
  *result = 2;
  *(result + 1) = 1;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  return result;
}

uint64_t __os_log_helper_16_2_5_8_32_8_64_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *result = 2;
  *(result + 1) = 5;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  return result;
}

uint64_t __os_log_helper_16_2_4_8_32_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 2;
  *(result + 1) = 4;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_8_64(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

id PolicyOptionToString(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a1;
  switch(a1)
  {
    case 1:
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixDoubleTapPolicy");
      break;
    case 2:
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixTripleTapPolicy");
      break;
    case 3:
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixGeneralPolicy");
      break;
    default:
      oslog = AXLogBackTap();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_4_0(v6, "PolicyOptionToString", v4);
        _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Loop frequency = %@ / %@ = %@", v6, 0x12u);
      }

      objc_storeStrong(&oslog, 0);
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixGeneralPolicy");
      break;
  }

  *MEMORY[0x277D85DE8];
  v1 = v5;

  return v1;
}

uint64_t __os_log_helper_16_2_3_8_32_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t __os_log_helper_16_2_6_8_32_8_64_8_64_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *result = 2;
  *(result + 1) = 6;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  *(result + 32) = 64;
  *(result + 33) = 8;
  *(result + 34) = a5;
  *(result + 42) = 64;
  *(result + 43) = 8;
  *(result + 44) = a6;
  *(result + 52) = 64;
  *(result + 53) = 8;
  *(result + 54) = a7;
  return result;
}

void sub_25E4B4AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v21 - 72));
  _Unwind_Resume(a1);
}

uint64_t __os_log_helper_16_2_2_8_32_4_0(uint64_t result, uint64_t a2, int a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  return result;
}

id getCMWakeGestureManagerClass()
{
  v9 = 0;
  v10 = &v9;
  v11 = 1342177280;
  v12 = 32;
  v8 = getCMWakeGestureManagerClass_softClass;
  v13 = getCMWakeGestureManagerClass_softClass;
  if (!getCMWakeGestureManagerClass_softClass)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __getCMWakeGestureManagerClass_block_invoke;
    v6 = &unk_279A207A0;
    v7 = &v9;
    __getCMWakeGestureManagerClass_block_invoke(&v2);
  }

  v1 = MEMORY[0x277D82BE0](v10[3]);
  _Block_object_dispose(&v9, 8);

  return v1;
}

double MachAbsoluteTimeToTimeIntervalSinceBoot_0(uint64_t a1)
{
  if (!dword_27FCEB894)
  {
    mach_timebase_info(&MachAbsoluteTimeToTimeIntervalSinceBoot_sTimebaseInfo_0);
  }

  return (a1 * MachAbsoluteTimeToTimeIntervalSinceBoot_sTimebaseInfo_0 / dword_27FCEB894) / 1000000000.0;
}

uint64_t __os_log_helper_16_2_2_8_32_8_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

uint64_t __getCMWakeGestureManagerClass_block_invoke(uint64_t a1)
{
  CoreMotionLibrary();
  Class = objc_getClass("CMWakeGestureManager");
  result = a1;
  *(*(*(a1 + 32) + 8) + 24) = Class;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    result = abort_report_np();
  }

  getCMWakeGestureManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreMotionLibrary()
{
  v2 = 0;
  v1 = CoreMotionLibraryCore(&v2);
  if (!v1)
  {
    abort_report_np();
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t CoreMotionLibraryCore(uint64_t a1)
{
  v10 = a1;
  v8 = CoreMotionLibraryCore_frameworkLibrary;
  v9 = CoreMotionLibraryCore_frameworkLibrary;
  if (!CoreMotionLibraryCore_frameworkLibrary)
  {
    v2 = MEMORY[0x277D85DD0];
    v3 = -1073741824;
    v4 = 0;
    v5 = __CoreMotionLibraryCore_block_invoke;
    v6 = &__block_descriptor_40_e5_v8__0l;
    v7 = v10;
    __CoreMotionLibraryCore_block_invoke(&v2);
  }

  return CoreMotionLibraryCore_frameworkLibrary;
}

uint64_t __CoreMotionLibraryCore_block_invoke(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CoreMotionLibraryCore_frameworkLibrary = result;
  *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __os_log_helper_16_2_2_8_32_8_66(uint64_t result, uint64_t a2, uint64_t a3)
{
  *result = 2;
  *(result + 1) = 2;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  return result;
}

id PolicyOptionToString_0(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a1;
  switch(a1)
  {
    case 1:
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixDoubleTapPolicy");
      break;
    case 2:
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixTripleTapPolicy");
      break;
    case 3:
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixGeneralPolicy");
      break;
    default:
      oslog = AXLogBackTap();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_4_0(v6, "PolicyOptionToString", v4);
        _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s Could not create classifier model URL. Model URL is nil.", v6, 0x12u);
      }

      objc_storeStrong(&oslog, 0);
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixGeneralPolicy");
      break;
  }

  *MEMORY[0x277D85DE8];
  v1 = v5;

  return v1;
}

void sub_25E4BE2B0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id *location)
{
  *(v15 - 152) = a1;
  *(v15 - 156) = a2;
  objc_destroyWeak((v15 - 144));
  _Block_object_dispose((v15 - 136), 8);
  _Unwind_Resume(*(v15 - 152));
}

void HandleDeviceLockStateChanged(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v7[5] = a1;
  v7[4] = a2;
  v7[3] = a3;
  v7[2] = a4;
  v7[1] = a5;
  v7[0] = MEMORY[0x277D82BE0](a2);
  v5 = mach_absolute_time();
  v6 = MachAbsoluteTimeToTimeIntervalSinceBoot_1(v5);
  [v7[0] deviceLockStateChanged:v6];
  objc_storeStrong(v7, 0);
}

double MachAbsoluteTimeToTimeIntervalSinceBoot_1(uint64_t a1)
{
  if (!dword_27FCEB8BC)
  {
    mach_timebase_info(&MachAbsoluteTimeToTimeIntervalSinceBoot_sTimebaseInfo_1);
  }

  return (a1 * MachAbsoluteTimeToTimeIntervalSinceBoot_sTimebaseInfo_1 / dword_27FCEB8BC) / 1000000000.0;
}

void sub_25E4C5754(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location)
{
  *(v11 - 96) = a1;
  *(v11 - 100) = a2;
  objc_destroyWeak(location);
  objc_destroyWeak((v11 - 80));
  v12 = *(v11 - 96);
  JUMPOUT(0x25E4C5798);
}

uint64_t __os_log_helper_16_2_3_8_32_8_0_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

id PolicyOptionToString_1(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = a1;
  switch(a1)
  {
    case 1:
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixDoubleTapPolicy");
      break;
    case 2:
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixTripleTapPolicy");
      break;
    case 3:
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixGeneralPolicy");
      break;
    default:
      oslog = AXLogBackTap();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_4_0(v6, "PolicyOptionToString", v4);
        _os_log_error_impl(&dword_25E4AC000, oslog, OS_LOG_TYPE_ERROR, "[PHOENIX] %s [ix=%lu] accelerometer[t,x,y,z]:%@", v6, 0x12u);
      }

      objc_storeStrong(&oslog, 0);
      v5 = MEMORY[0x277D82BE0](@"AXPhoenixGeneralPolicy");
      break;
  }

  *MEMORY[0x277D85DE8];
  v1 = v5;

  return v1;
}

void sub_25E4CB47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *location, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, _Unwind_Exception *exception_object)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v21 - 72));
  _Unwind_Resume(a1);
}

uint64_t __os_log_helper_16_2_3_8_32_8_64_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

double MachAbsoluteTimeToTimeIntervalSinceBoot_2(uint64_t a1)
{
  if (!dword_27FCEB8E4)
  {
    mach_timebase_info(&MachAbsoluteTimeToTimeIntervalSinceBoot_sTimebaseInfo_2);
  }

  return (a1 * MachAbsoluteTimeToTimeIntervalSinceBoot_sTimebaseInfo_2 / dword_27FCEB8E4) / 1000000000.0;
}

void sub_25E4D0AF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, _Unwind_Exception *exception_object, char a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  objc_destroyWeak(&a20);
  objc_destroyWeak((v20 - 32));
  _Unwind_Resume(a1);
}

void sub_25E4D2E6C(uint64_t a1, int a2)
{
  *(v2 - 88) = a1;
  *(v2 - 92) = a2;
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(*(v2 - 88));
}

_BYTE *__os_log_helper_16_0_0(_BYTE *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void __61__backtap_loadContentsOfURL_configuration_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7 = 0;
  objc_storeStrong(&v7, a3);
  v6[1] = a1;
  if (location[0])
  {
    v3 = [backtap alloc];
    v6[0] = [(backtap *)v3 initWithMLModel:location[0]];
    (*(a1[4] + 16))();
    objc_storeStrong(v6, 0);
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

void __52__backtap_predictionFromFeatures_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8[1] = a1;
  if (location[0])
  {
    v3 = [backtapOutput alloc];
    v5 = [location[0] featureValueForName:@"model_output"];
    v4 = [v5 multiArrayValue];
    v8[0] = [(backtapOutput *)v3 initWithModel_output:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    (*(a1[4] + 16))();
    objc_storeStrong(v8, 0);
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __60__backtap_predictionFromFeatures_options_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8[1] = a1;
  if (location[0])
  {
    v3 = [backtapOutput alloc];
    v5 = [location[0] featureValueForName:@"model_output"];
    v4 = [v5 multiArrayValue];
    v8[0] = [(backtapOutput *)v3 initWithModel_output:?];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    (*(a1[4] + 16))();
    objc_storeStrong(v8, 0);
  }

  else
  {
    (*(a1[4] + 16))();
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}