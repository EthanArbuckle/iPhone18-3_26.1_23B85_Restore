uint64_t SLIsRunningInSLTester()
{
  if (SLIsRunningInSLTester_onceToken != -1)
  {
    SLIsRunningInSLTester_cold_1();
  }

  return SLIsRunningInSLTester_sIsRunningInSLTester;
}

uint64_t SLIsRunningInGelatoTester()
{
  if (SLIsRunningInGelatoTester_onceToken != -1)
  {
    SLIsRunningInGelatoTester_cold_1();
  }

  return SLIsRunningInGelatoTester_sIsRunningInSLTester;
}

CFStringRef __SLIsRunningInDaemon_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.sociallayerd");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  SLIsRunningInDaemon_sIsRunningInDaemon = v2;
  return result;
}

CFStringRef __SLIsRunningInSLTester_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.SLTester");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  SLIsRunningInSLTester_sIsRunningInSLTester = v2;
  return result;
}

uint64_t SLIsRunningInDaemon()
{
  if (SLIsRunningInDaemon_onceToken != -1)
  {
    SLIsRunningInDaemon_cold_1();
  }

  return SLIsRunningInDaemon_sIsRunningInDaemon;
}

CFStringRef __SLIsRunningInGelatoTester_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  result = CFBundleGetIdentifier(MainBundle);
  if (result)
  {
    result = CFEqual(result, @"com.apple.sociallayer.GelatoTester");
    v2 = result != 0;
  }

  else
  {
    v2 = 0;
  }

  SLIsRunningInGelatoTester_sIsRunningInSLTester = v2;
  return result;
}

id SLFrameworkLogHandle()
{
  if (SLFrameworkLogHandle_onceToken != -1)
  {
    SLFrameworkLogHandle_cold_1();
  }

  v1 = SLFrameworkLogHandle_osLog;

  return v1;
}

uint64_t __SLFrameworkLogHandle_block_invoke()
{
  SLFrameworkLogHandle_osLog = os_log_create("com.apple.SocialLayerFramework", "General");

  return MEMORY[0x2821F96F8]();
}

id SLDaemonLogHandle()
{
  if (SLDaemonLogHandle_onceToken != -1)
  {
    SLDaemonLogHandle_cold_1();
  }

  v1 = SLDaemonLogHandle_osLog;

  return v1;
}

uint64_t __SLDaemonLogHandle_block_invoke()
{
  SLDaemonLogHandle_osLog = os_log_create("com.apple.SocialLayerDaemon", "General");

  return MEMORY[0x2821F96F8]();
}

void sub_2317750BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_23177529C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231775524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_231775A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_3_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_231775FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317764E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_2317767C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t __SLGeneralTelemetryLogHandle_block_invoke()
{
  SLGeneralTelemetryLogHandle_osLog = os_log_create("com.apple.SocialLayer.telemetry", "General");

  return MEMORY[0x2821F96F8]();
}

void sub_231776CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231776E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SLDAllowedServiceClasses_block_invoke()
{
  v3[11] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:11];
  v1 = SLDAllowedServiceClasses_sClasses;
  SLDAllowedServiceClasses_sClasses = v0;

  v2 = *MEMORY[0x277D85DE8];
}

id SLGeneralTelemetryLogHandle()
{
  if (SLGeneralTelemetryLogHandle_onceToken != -1)
  {
    SLGeneralTelemetryLogHandle_cold_1();
  }

  v1 = SLGeneralTelemetryLogHandle_osLog;

  return v1;
}

void sub_231777398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SLDAllowedServiceClasses()
{
  if (SLDAllowedServiceClasses_onceToken != -1)
  {
    SLDAllowedServiceClasses_cold_1();
  }

  v1 = SLDAllowedServiceClasses_sClasses;

  return v1;
}

id SLDClientGlobalWorkloop()
{
  if (SLDClientGlobalWorkloop_onceToken != -1)
  {
    SLDClientGlobalWorkloop_cold_1();
  }

  v1 = SLDClientGlobalWorkloop_workloop;

  return v1;
}

uint64_t __SLDClientGlobalWorkloop_block_invoke()
{
  SLDClientGlobalWorkloop_workloop = dispatch_workloop_create("SocialLayerClientGlobalWorkloop");

  return MEMORY[0x2821F96F8]();
}

void sub_231777834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t SLDConnectionIsEntitled(void *a1)
{
  v1 = a1;
  if (SLDConnectionHasPublicEntitlement(v1))
  {
    HasLegacyHighlightsEntitlement = 1;
  }

  else
  {
    HasLegacyHighlightsEntitlement = SLDConnectionHasLegacyHighlightsEntitlement(v1);
  }

  return HasLegacyHighlightsEntitlement;
}

uint64_t SLDConnectionHasPublicEntitlement(void *a1)
{
  v1 = [a1 valueForEntitlement:@"com.apple.developer.shared-with-you"];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SLDConnectionHasLegacyHighlightsEntitlement(void *a1)
{
  v1 = [a1 valueForEntitlement:@"com.apple.private.sociallayer.highlights"];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id SLDGlobalWorkloop()
{
  if (SLDGlobalWorkloop_onceToken != -1)
  {
    SLDGlobalWorkloop_cold_1();
  }

  v1 = SLDGlobalWorkloop_workloop;

  return v1;
}

void sub_231777E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231778084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231778348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _sSo21NSAttributedStringKeyaSYSCSY8rawValue03RawE0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t _sSo8_NSRangeVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo8_NSRangeVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_231779CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_231779D5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_231779E1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_231779E68(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t sub_231779EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_231779F5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_23177A044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23177A100(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23177A1B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_23177A200()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23177A248(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23177A2F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23177A398()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7CKShareCs5Error_pGMd, &_sScCySo7CKShareCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23177A430(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23177A440()
{
  MEMORY[0x231936260](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23177A478()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23177A4C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t sub_23177A524(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_23177A590@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_23177A5EC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xC0);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_23177A654@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23177A6B0(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);

  return v4(v2, v3);
}

uint64_t sub_23177A728@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23177A7F0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23177A828()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23177A870()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_23177A8C0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23177A8F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);
  swift_unknownObjectRelease();
  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_23177A95C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_23177A9A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t sub_23177A9FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_23177AA48(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 144);

  return v3(v4);
}

uint64_t sub_23177AA9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  return result;
}

uint64_t sub_23177AAE8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 168);

  return v3(v4);
}

uint64_t sub_23177AB3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_23177AB88(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 104);

  return v3(v4);
}

uint64_t sub_23177ABDC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23177AC38(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0x88);
  outlined copy of Data._Representation(*a1, v3);
  return v4(v2, v3);
}

uint64_t sub_23177ACB4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x98))();
  *a2 = result;
  return result;
}

uint64_t sub_23177AD10(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0xA0);

  return v3(v4);
}

uint64_t sub_23177AD74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

uint64_t sub_23177AE5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMd, &_sScCySay11SocialLayer8Endpoint_pGs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23177AF34()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23177AF90()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23177AFCC()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23177B088@<X0>(uint64_t *a1@<X8>)
{
  result = type metadata accessor for AttributeScopes.HighlightPillAttributes();
  *a1 = result;
  return result;
}

uint64_t _s11SocialLayer28VisionSafariBannerPillMetricVAA09HighlightfG7Variant33_00C2B47D0280335DFFDBB3BC8927527ALLA2adELLP12maxNameCountSivgTW_0()
{
  if (*(v0 + 8))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t _s11SocialLayer16VisionPillMetricVAA09HighlightdE7Variant33_00C2B47D0280335DFFDBB3BC8927527ALLA2adELLP13maxImageCountSivgTW_0()
{
  if ([*v0 preferredContentSizeCategory] - 9 < 3)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t _s11SocialLayer16VisionPillMetricVAA09HighlightdE7Variant33_00C2B47D0280335DFFDBB3BC8927527ALLA2adELLP15finalImageCountSivgTW_0()
{
  v1 = *(v0 + 24);
  v2 = [*v0 preferredContentSizeCategory];
  v3 = 3;
  if ((v2 - 9) < 3)
  {
    v3 = 1;
  }

  if (v1 >= v3)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

double _s11SocialLayer26iOSSafariBannerPillMetricsVAA09HighlightE13MetricVariant33_00C2B47D0280335DFFDBB3BC8927527ALLA2adELLP11chevronSizeSo6CGSizeVvgTW_0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  specialized HighlightPillMetricVariant.chevronSize.getter(*v0);
  return result;
}

uint64_t _s11SocialLayer26MacSafariBannerPillMetricsVAA09HighlightF13MetricVariant33_00C2B47D0280335DFFDBB3BC8927527ALLA2adELLP12maxNameCountSivgTW_0()
{
  if (*(v0 + 8))
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t _s11SocialLayer28VisionSafariBannerPillMetricVAA09HighlightfG7Variant33_00C2B47D0280335DFFDBB3BC8927527ALLA2adELLP15finalImageCountSivgTW_0()
{
  if (*(v0 + 24) >= 3)
  {
    return 3;
  }

  else
  {
    return *(v0 + 24);
  }
}

double _s11SocialLayer13iOSPillMetricVAA013HighlightPillD7Variant33_00C2B47D0280335DFFDBB3BC8927527ALLA2adELLP11pillMarginsSo12NSEdgeInsetsVvgTW_0()
{
  v1 = [*v0 preferredContentSizeCategory];
  if ((v1 - 7) > 4)
  {
    return 4.0;
  }

  v2 = qword_23183F748[(v1 - 7)];
  return 6.0;
}

uint64_t _s11SocialLayer13iOSPillMetricVAA013HighlightPillD7Variant33_00C2B47D0280335DFFDBB3BC8927527ALLA2adELLP21chevronFontDescriptorSo06CTFontO3RefavgTW_0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  return specialized HighlightPillMetricVariant.chevronFontDescriptor.getter(*v0);
}

double _s11SocialLayer28VisionSafariBannerPillMetricVAA09HighlightfG7Variant33_00C2B47D0280335DFFDBB3BC8927527ALLA2adELLP26avatarOverlapKnockoutWidth12CoreGraphics7CGFloatVvgTW_0()
{
  result = 0.0;
  if (*(v0 + 24) > 1)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_23177B360()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23177B40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeScopes.FoundationAttributes();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23177B478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributeScopes.FoundationAttributes();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23177B520@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  return result;
}

uint64_t sub_23177B56C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 120);

  return v3(v4);
}

uint64_t sub_23177B5C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  return result;
}

uint64_t sub_23177B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23177B764(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23177B81C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMd, &_sScCySo35_SWStartCollaborationActionResponseCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

id getCSCloudSharingClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCSCloudSharingClass_softClass;
  v7 = getCSCloudSharingClass_softClass;
  if (!getCSCloudSharingClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCSCloudSharingClass_block_invoke;
    v3[3] = &unk_278925B78;
    v3[4] = &v4;
    __getCSCloudSharingClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_23177BA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSCloudSharingClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CloudSharingLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CloudSharingLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278925B98;
    v7 = 0;
    CloudSharingLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CloudSharingLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CSCloudSharing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSCloudSharingClass_block_invoke_cold_1();
  }

  getCSCloudSharingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CloudSharingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudSharingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23177C3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  objc_destroyWeak((v33 + 56));
  objc_destroyWeak((v33 + 48));
  _Block_object_dispose(&a19, 8);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a26);
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak(&a33);
  _Unwind_Resume(a1);
}

void sub_23177CAB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_23177D4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23177D85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23177DC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id getCloudSharingClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCloudSharingClass_softClass;
  v7 = getCloudSharingClass_softClass;
  if (!getCloudSharingClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCloudSharingClass_block_invoke;
    v3[3] = &unk_278925B78;
    v3[4] = &v4;
    __getCloudSharingClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_231785A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCloudSharingClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CloudSharingLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CloudSharingLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278925F18;
    v7 = 0;
    CloudSharingLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (CloudSharingLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CloudSharing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCloudSharingClass_block_invoke_cold_1();
  }

  getCloudSharingClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CloudSharingLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudSharingLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_23178E4D4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 240), 8);
  _Unwind_Resume(a1);
}

void sub_23178F3B0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_231790270(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_6@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*(*(result + 40) + 8) + 40);
  return result;
}

uint64_t SLDConnectionIsEntitledForCollaborationHandshake(void *a1)
{
  v1 = [a1 valueForEntitlement:@"com.apple.private.sociallayer.collaboration-handshake"];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SLDConnectionIsEntitledForAccessibility(void *a1)
{
  v1 = [a1 valueForEntitlement:@"com.apple.private.sociallayer.accessibility"];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SLDConnectionIsEntitledForShareableContent(void *a1)
{
  v1 = [a1 valueForEntitlement:@"com.apple.private.sociallayer.shareable-content"];
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __SLDGlobalWorkloop_block_invoke()
{
  v0 = dispatch_workloop_create("SocialLayerDaemonGlobalWorkloop");
  v1 = SLDGlobalWorkloop_workloop;
  SLDGlobalWorkloop_workloop = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t CTContentSizeCategoryForSlotStyle(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  if (v1 > 0xB)
  {
    v2 = MEMORY[0x277CC4850];
  }

  else
  {
    v2 = qword_2789263B8[v1];
  }

  return *v2;
}

id CoreGlyphsCatalog()
{
  if (CoreGlyphsCatalog_onceToken != -1)
  {
    CoreGlyphsCatalog_cold_1();
  }

  v1 = CoreGlyphsCatalog_catalog;

  return v1;
}

void __CoreGlyphsCatalog_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D02670]);
  if (SLDCoreGlyphsBundle_onceToken != -1)
  {
    __CoreGlyphsCatalog_block_invoke_cold_1();
  }

  v5 = 0;
  v1 = SLDCoreGlyphsBundle_bundle;
  v2 = [v0 initWithName:@"Assets" fromBundle:v1 error:&v5];
  v3 = v5;
  v4 = CoreGlyphsCatalog_catalog;
  CoreGlyphsCatalog_catalog = v2;
}

id SLDAssetCatalog()
{
  if (SLDAssetCatalog_onceToken != -1)
  {
    SLDAssetCatalog_cold_1();
  }

  v1 = SLDAssetCatalog_catalog;

  return v1;
}

void __SLDAssetCatalog_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D02670]);
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = 0;
  v2 = [v0 initWithName:@"Assets" fromBundle:v1 error:&v6];
  v3 = v6;
  v4 = SLDAssetCatalog_catalog;
  SLDAssetCatalog_catalog = v2;

  if (!SLDAssetCatalog_catalog)
  {
    v5 = SLDaemonLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __SLDAssetCatalog_block_invoke_cold_1(v3, v5);
    }
  }
}

CGImage *SLDCreateImageNamed(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = SLDAssetCatalog();
  if (v5)
  {
    v6 = [v5 imageWithName:v4 scaleFactor:{objc_msgSend(v3, "displayScale")}];
  }

  else
  {
    v6 = 0;
  }

  if (v6 && [v6 image])
  {
    v7 = [v6 image];
    CGImageRetain(v7);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id SLDContactMonogramAttributedString(void *a1, void *a2, double a3)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_28468DAB8];
  if ([v6 length])
  {
    v31[0] = *MEMORY[0x277CC4938];
    v8 = MEMORY[0x277CCABB0];
    v9 = v5;
    v10 = [v8 numberWithDouble:a3 * 105.0 / 225.0];
    v32[0] = v10;
    v31[1] = *MEMORY[0x277CC4950];
    v11 = *MEMORY[0x277CC4980];
    v30[0] = *MEMORY[0x277CC4958];
    v12 = *MEMORY[0x277CC49B8];
    v29[0] = v11;
    v29[1] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277CC49A0]];
    v30[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    v32[1] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

    CTContentSizeCategoryForSlotStyle(v9);
    v16 = *MEMORY[0x277CC4870];
    v17 = CTFontDescriptorCreateWithTextStyleAndAttributes();
    v18 = CTFontCreateWithFontDescriptor(v17, 0.0, 0);
    CFRelease(v17);

    v19 = objc_alloc(MEMORY[0x277CCA898]);
    v20 = *MEMORY[0x277CC4838];
    v28[0] = v18;
    v21 = *MEMORY[0x277CC49C0];
    v27[0] = v20;
    v27[1] = v21;
    ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF4D8]);
    v27[2] = *MEMORY[0x277CC49F8];
    v28[1] = ConstantColor;
    v28[2] = &unk_28469BCF0;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
    v24 = [v19 initWithString:v6 attributes:v23];

    v7 = v24;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v7;
}

CGColor *SLDCreateColorNamed(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  v7 = SLDAssetCatalog();
  if (v7)
  {
    v8 = [v5 userInterfaceStyle];
    v9 = [v5 assetDeviceIdiom];
    if (v8 == 1)
    {
      v10 = @"UIAppearanceDark";
    }

    else
    {
      v10 = @"UIAppearanceLight";
    }

    v11 = [v7 colorWithName:v6 displayGamut:0 deviceIdiom:v9 appearanceName:v10];
    if (!v11)
    {
      v12 = [v5 assetDeviceIdiom];
      if (SLDAssetCatalogGenericAppearanceName_onceToken != -1)
      {
        SLDCreateColorNamed_cold_1();
      }

      v11 = [v7 colorWithName:v6 displayGamut:0 deviceIdiom:v12 appearanceName:SLDAssetCatalogGenericAppearanceName_genericName];
    }
  }

  else
  {
    v11 = 0;
  }

  if (v11 && [v11 cgColor])
  {
    v13 = [v11 cgColor];
    CGColorRetain(v13);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t SLDCUINamedImageDeviceClass()
{
  if (SLDCUINamedImageDeviceClass_onceToken != -1)
  {
    SLDCUINamedImageDeviceClass_cold_1();
  }

  return 0;
}

__CFString *SLDAssetCatalogPreferredAppearanceName(int a1)
{
  if (a1)
  {
    return @"UIAppearanceDark";
  }

  else
  {
    return @"UIAppearanceLight";
  }
}

id SLDSystemVectorGlyph(void *a1, int a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7)
{
  v13 = a1;
  if (SLDCUINamedImageDeviceClass_onceToken != -1)
  {
    SLDCUINamedImageDeviceClass_cold_1();
  }

  if (a2)
  {
    v14 = 4;
  }

  else
  {
    v14 = 5;
  }

  v15 = @"UIAppearanceLight";
  if (a5)
  {
    v15 = @"UIAppearanceDark";
  }

  v16 = v15;
  v17 = CoreGlyphsCatalog();
  v18 = [v17 namedVectorGlyphWithName:v13 scaleFactor:0 deviceIdiom:v14 layoutDirection:a3 glyphSize:a4 glyphWeight:v16 glyphPointSize:a6 appearanceName:a7];

  if (!v18)
  {
    v19 = CoreGlyphsCatalog();
    if (SLDAssetCatalogGenericAppearanceName_onceToken != -1)
    {
      SLDCreateColorNamed_cold_1();
    }

    v18 = [v19 namedVectorGlyphWithName:v13 scaleFactor:0 deviceIdiom:v14 layoutDirection:a3 glyphSize:a4 glyphWeight:SLDAssetCatalogGenericAppearanceName_genericName glyphPointSize:a6 appearanceName:a7];
  }

  return v18;
}

double SLDVectorGlyphMinimumViableSize(void *a1, double a2)
{
  v3 = a1;
  [v3 contentBoundsUnrounded];
  v5 = v4 * 0.5;
  [v3 alignmentRectUnrounded];
  v7 = v5 - fmin(v6, 0.0);
  [v3 alignmentRectUnrounded];
  v9 = v8;
  [v3 alignmentRectUnrounded];
  v11 = v9 + v10;
  [v3 contentBoundsUnrounded];
  if (v11 >= v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13 - v5;
  if (v7 >= v14)
  {
    v14 = v7;
  }

  v15 = SLRoundToScale(v14 + v14, a2);
  [v3 contentBounds];

  return v15;
}

id SLDSystemVectorGlyphWithSlotStyle(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = a2;
  v10 = a1;
  v11 = [v10 displayScale];
  v12 = [v10 layoutDirection] == 1;
  v13 = [v10 userInterfaceStyle];

  v14 = SLDSystemVectorGlyph(v9, v12, a3, a4, v13 == 1, v11, a5);

  return v14;
}

uint64_t SLDCreateRasterizedSystemVectorGlyph(void *a1, int a2, uint64_t a3, uint64_t a4, int a5, double a6, double a7, double a8, double a9)
{
  v12 = SLDSystemVectorGlyph(a1, a2, a3, a4, a5, a8, a9);
  v13 = v12;
  if (v12)
  {
    v14 = [v12 rasterizeImageUsingScaleFactor:a8 forTargetSize:{a6, a7}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t SLDCreateRasterizedSystemVectorGlyphWithSlotStyle(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7)
{
  v13 = a2;
  v14 = a1;
  v15 = [v14 displayScale];
  v16 = [v14 layoutDirection] == 1;
  v17 = [v14 userInterfaceStyle];

  v18 = SLDCreateRasterizedSystemVectorGlyph(v13, v16, a3, a4, v17 == 1, a5, a6, v15, a7);
  return v18;
}

void SLDRenderTintedImageInContext(CGContext *a1, CGImage *a2, CGColor *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  CGContextSaveGState(a1);
  CGContextSetAlpha(a1, 1.0);
  v15.origin.x = a4;
  v15.origin.y = a5;
  v15.size.width = a6;
  v15.size.height = a7;
  CGContextBeginTransparencyLayerWithRect(a1, v15, 0);
  v16.origin.x = a4;
  v16.origin.y = a5;
  v16.size.width = a6;
  v16.size.height = a7;
  CGContextDrawImage(a1, v16, a2);
  CGContextSetFillColorWithColor(a1, a3);
  CGContextSetBlendMode(a1, kCGBlendModeSourceIn);
  v17.origin.x = a4;
  v17.origin.y = a5;
  v17.size.width = a6;
  v17.size.height = a7;
  CGContextFillRect(a1, v17);
  CGContextEndTransparencyLayer(a1);

  CGContextRestoreGState(a1);
}

void SLDRenderContactMonogramInContextAtRect(void *a1, void *a2, CGContext *a3, int a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v17 = a1;
  v18 = a2;
  v19 = [v17 displayScale];
  CGContextSaveGState(a3);
  if (a4)
  {
    CGContextTranslateCTM(a3, 0.0, a5);
    CGContextScaleCTM(a3, 1.0, -1.0);
  }

  CGContextBeginPath(a3);
  v47.origin.x = a6;
  v47.origin.y = a7;
  v47.size.width = a8;
  v47.size.height = a9;
  CGContextAddEllipseInRect(a3, v47);
  CGContextClip(a3);
  CGContextClosePath(a3);
  CGContextSetAlpha(a3, 0.9);
  v48.origin.x = a6;
  v48.origin.y = a7;
  v48.size.width = a8;
  v48.size.height = a9;
  CGContextFillRect(a3, v48);
  v20 = SLDCreateColorNamed(v17, @"MonogramGradientStartColor");
  v21 = SLDCreateColorNamed(v17, @"MonogramGradientEndColor");
  Mutable = CFArrayCreateMutable(0, 2, MEMORY[0x277CBF128]);
  CFArrayAppendValue(Mutable, v20);
  CFArrayAppendValue(Mutable, v21);
  CGContextSetAlpha(a3, 1.0);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v24 = CGGradientCreateWithColors(DeviceRGB, Mutable, 0);
  v49.origin.x = a6;
  v49.origin.y = a7;
  v49.size.width = a8;
  v49.size.height = a9;
  MaxX = CGRectGetMaxX(v49);
  v50.origin.x = a6;
  v50.origin.y = a7;
  v50.size.width = a8;
  v50.size.height = a9;
  v46.y = CGRectGetMaxY(v50);
  v45.x = a6;
  v45.y = a7;
  v46.x = MaxX;
  CGContextDrawLinearGradient(a3, v24, v45, v46, 0);
  if (v18 && ([MEMORY[0x277CBDA78] stringFromContact:v18 style:1002], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v27 = v26;
    v28 = v19;
    v42 = SLDContactMonogramAttributedString(v17, v26, a8);
    v29 = CTLineCreateWithAttributedString(v42);
    descent = 0.0;
    ascent = 0.0;
    TypographicBounds = CTLineGetTypographicBounds(v29, &ascent, &descent, 0);
    ascent = SLRoundToScale(ascent, v28);
    descent = SLRoundToScale(descent, v28);
    v51.origin.x = a6;
    v51.origin.y = a7;
    v51.size.width = a8;
    v51.size.height = a9;
    MidX = CGRectGetMidX(v51);
    v32 = SLRoundToScale(MidX, v28);
    v52.origin.x = a6;
    v52.origin.y = a7;
    v52.size.width = a8;
    v52.size.height = a9;
    MidY = CGRectGetMidY(v52);
    v34 = SLRoundToScale(MidY, v28);
    v53.origin.x = a6;
    v53.origin.y = a7;
    v53.size.width = a8;
    v53.size.height = a9;
    Width = CGRectGetWidth(v53);
    v36 = SLRoundToScale(Width * 0.800000012, v28) / TypographicBounds;
    if (v36 > 1.0)
    {
      v36 = 1.0;
    }

    v37 = SLRoundToScale(v36, v28);
    v38 = SLRoundToScale(TypographicBounds * 0.5, v28);
    v39 = SLRoundToScale((ascent - descent) * 0.5, v28);
    CGContextTranslateCTM(a3, v32, v34);
    CGContextScaleCTM(a3, v37, v37);
    CGContextSetTextPosition(a3, -v38, -v39);
    CTLineDraw(v29, a3);
    CFRelease(v29);
  }

  else
  {
    v40 = SLDCreateImageNamed(v17, @"silhouette-large");
    ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF4D8]);
    SLDRenderTintedImageInContext(a3, v40, ConstantColor, a6, a7, a8, a9);
    CGImageRelease(v40);
  }

  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(v20);
  CGColorRelease(v21);
  CFRelease(Mutable);
  CGGradientRelease(v24);
  CGContextRestoreGState(a3);
}

void SLDRenderContactSilhouetteInContextAtRect(void *a1, CGContext *a2, int a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15 = a1;
  CGContextSaveGState(a2);
  if (a3)
  {
    CGContextTranslateCTM(a2, 0.0, a4);
    CGContextScaleCTM(a2, 1.0, -1.0);
  }

  CGContextBeginPath(a2);
  v27.origin.x = a5;
  v27.origin.y = a6;
  v27.size.width = a7;
  v27.size.height = a8;
  CGContextAddEllipseInRect(a2, v27);
  CGContextClip(a2);
  CGContextClosePath(a2);
  CGContextSetAlpha(a2, 0.9);
  v28.origin.x = a5;
  v28.origin.y = a6;
  v28.size.width = a7;
  v28.size.height = a8;
  CGContextFillRect(a2, v28);
  v16 = SLDCreateColorNamed(v15, @"MonogramGradientStartColor");
  v17 = SLDCreateColorNamed(v15, @"MonogramGradientEndColor");
  Mutable = CFArrayCreateMutable(0, 2, MEMORY[0x277CBF128]);
  CFArrayAppendValue(Mutable, v16);
  CFArrayAppendValue(Mutable, v17);
  CGContextSetAlpha(a2, 1.0);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v20 = CGGradientCreateWithColors(DeviceRGB, Mutable, 0);
  v29.origin.x = a5;
  v29.origin.y = a6;
  v29.size.width = a7;
  v29.size.height = a8;
  MaxX = CGRectGetMaxX(v29);
  v30.origin.x = a5;
  v30.origin.y = a6;
  v30.size.width = a7;
  v30.size.height = a8;
  v26.y = CGRectGetMaxY(v30);
  v25.x = a5;
  v25.y = a6;
  v26.x = MaxX;
  CGContextDrawLinearGradient(a2, v20, v25, v26, 0);
  v22 = SLDCreateImageNamed(v15, @"silhouette-large");

  ConstantColor = CGColorGetConstantColor(*MEMORY[0x277CBF4D8]);
  SLDRenderTintedImageInContext(a2, v22, ConstantColor, a5, a6, a7, a8);
  CGImageRelease(v22);
  CGColorSpaceRelease(DeviceRGB);
  CGColorRelease(v16);
  CGColorRelease(v17);
  CFRelease(Mutable);
  CGGradientRelease(v20);

  CGContextRestoreGState(a2);
}

CGImageRef SLDCreateGroupPhotoImageWithGroupID(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v17[0] = v1;
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v4 = getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_ptr;
    v16 = getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_ptr;
    if (!getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_ptr)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_block_invoke;
      v12[3] = &unk_278925B78;
      v12[4] = &v13;
      __getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_block_invoke(v12);
      v4 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v4)
    {
      SLDCreateGroupPhotoImageWithGroupID_cold_2();
      __break(1u);
    }

    v5 = v4(v3);

    v6 = [v5 objectForKey:v2];
    v7 = v6;
    if (v6)
    {
      v8 = SLDCreateGroupPhotoImageWithData(v6);
    }

    else
    {
      v9 = SLDaemonLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        SLDCreateGroupPhotoImageWithGroupID_cold_1(v9);
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_231793834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGImageRef SLDCreateGroupPhotoImageWithData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
LABEL_8:
    ImageAtIndex = 0;
    goto LABEL_9;
  }

  v3 = CGDataProviderCreateWithCFData(v1);
  if (!v3 || (v4 = v3, v5 = CGImageSourceCreateWithDataProvider(v3, 0), CFRelease(v4), !v5) || (ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0), CFRelease(v5), !ImageAtIndex))
  {
    v7 = SLDaemonLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      SLDCreateGroupPhotoImageWithData_cold_1(v2, v7);
    }

    goto LABEL_8;
  }

LABEL_9:

  return ImageAtIndex;
}

void __SLDCoreGlyphsBundle_block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  if (SLDCoreGlyphsBundlePath_onceToken != -1)
  {
    __SLDCoreGlyphsBundle_block_invoke_cold_1();
  }

  v3 = SLDCoreGlyphsBundlePath_bundlePath;
  v1 = [v0 bundleWithPath:v3];
  v2 = SLDCoreGlyphsBundle_bundle;
  SLDCoreGlyphsBundle_bundle = v1;
}

void __SLDCoreGlyphsBundlePath_block_invoke()
{
  v0 = SLDCoreGlyphsBundlePath_bundlePath;
  SLDCoreGlyphsBundlePath_bundlePath = @"/System/Library/CoreServices/CoreGlyphs.bundle";
}

void __SLDAssetCatalogGenericAppearanceName_block_invoke()
{
  v0 = SLDAssetCatalogGenericAppearanceName_genericName;
  SLDAssetCatalogGenericAppearanceName_genericName = @"UIAppearanceAny";
}

void *__getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!IMCoreLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __IMCoreLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2789263A0;
    v8 = 0;
    IMCoreLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = IMCoreLibraryCore_frameworkLibrary;
    if (IMCoreLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = IMCoreLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "IMSPIGetGroupPhotosForChatsWithGroupIDs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMSPIGetGroupPhotosForChatsWithGroupIDsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_231796C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317995A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231799AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231799CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23179B29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317A08F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317A0E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2317A10DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__46(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_2317A1D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_BYTE *OUTLINED_FUNCTION_0_8(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_5_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

BOOL SLHandleIsEmail(void *a1)
{
  v1 = a1;
  if ([(__CFString *)v1 length])
  {
    v2 = CFStringFind(v1, @"@", 0).location != -1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t SLHandleIsPhoneNumber(void *a1)
{
  v1 = a1;
  v2 = [(__CFString *)v1 length];
  v3 = 0;
  if (v1 && v2)
  {
    Length = CFStringGetLength(v1);
    if (Length < 2)
    {
LABEL_4:
      v3 = 0;
      goto LABEL_5;
    }

    v6 = Length;
    v3 = 0;
    for (i = 0; v6 != i; ++i)
    {
      CharacterAtIndex = CFStringGetCharacterAtIndex(v1, i);
      if (CharacterAtIndex <= 111)
      {
        switch(CharacterAtIndex)
        {
          case ' ':
          case '""':
          case '#':
          case '\'':
          case '(':
          case ')':
          case '*':
          case '+':
          case ',':
          case '-':
          case '.':
          case '/':
          case ':':
          case ';':
          case '?':
            goto LABEL_9;
          default:
            goto LABEL_24;
        }
      }

      if (CharacterAtIndex > 8209)
      {
        if (CharacterAtIndex > 8235)
        {
          if (CharacterAtIndex == 8236)
          {
            goto LABEL_9;
          }

          v9 = 8237;
        }

        else
        {
          if (CharacterAtIndex == 8210)
          {
            goto LABEL_9;
          }

          v9 = 8234;
        }

        if (CharacterAtIndex != v9)
        {
          goto LABEL_24;
        }
      }

      else if (CharacterAtIndex <= 8207)
      {
        if (CharacterAtIndex == 112)
        {
          continue;
        }

        if (CharacterAtIndex != 160)
        {
LABEL_24:
          if (u_charDigitValue(CharacterAtIndex) == -1)
          {
            goto LABEL_4;
          }
        }
      }

LABEL_9:
      v3 = 1;
    }
  }

LABEL_5:

  return v3 & 1;
}

void sub_2317A7740(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_2317AA0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose((v51 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_2317AB99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose((v43 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_2317AD918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id getMFMessageComposeViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMFMessageComposeViewControllerClass_softClass;
  v7 = getMFMessageComposeViewControllerClass_softClass;
  if (!getMFMessageComposeViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMFMessageComposeViewControllerClass_block_invoke;
    v3[3] = &unk_278925B78;
    v3[4] = &v4;
    __getMFMessageComposeViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2317AEA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getMFMessageComposeViewControllerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MessageUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MessageUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278926D68;
    v7 = 0;
    MessageUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (MessageUILibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("MFMessageComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getMFMessageComposeViewControllerClass_block_invoke_cold_1();
  }

  getMFMessageComposeViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MessageUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MessageUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __SLShareableContentIsArchivedObjectClassNameAllowed_block_invoke()
{
  v0 = SLShareableContentIsArchivedObjectClassNameAllowed_allowedArchivedObjectClassNames;
  SLShareableContentIsArchivedObjectClassNameAllowed_allowedArchivedObjectClassNames = &unk_28469BD68;
}

void sub_2317B09B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2317B188C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317B25B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_2317B2874(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_2317B2F2C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_2317B313C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

Class __getCSCloudSharingClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CloudSharingLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CloudSharingLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278927050;
    v7 = 0;
    CloudSharingLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v5[0];
    if (CloudSharingLibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CSCloudSharing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSCloudSharingClass_block_invoke_cold_1();
  }

  getCSCloudSharingClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CloudSharingLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudSharingLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t OUTLINED_FUNCTION_2_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t IMCoreLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!IMCoreLibraryCore_frameworkLibrary_0)
  {
    IMCoreLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = IMCoreLibraryCore_frameworkLibrary_0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getIMSPILastAddressedHandleForChatWithGUIDSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMSPILastAddressedHandleForChatWithGUIDSymbolLoc_ptr;
  v6 = getIMSPILastAddressedHandleForChatWithGUIDSymbolLoc_ptr;
  if (!getIMSPILastAddressedHandleForChatWithGUIDSymbolLoc_ptr)
  {
    v1 = IMCoreLibrary();
    v4[3] = dlsym(v1, "IMSPILastAddressedHandleForChatWithGUID");
    getIMSPILastAddressedHandleForChatWithGUIDSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2317B56E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IMCoreLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getIMSPILastAddressedHandleForChatWithGUIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMCoreLibrary();
  result = dlsym(v2, "IMSPILastAddressedHandleForChatWithGUID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMSPILastAddressedHandleForChatWithGUIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t IMCoreLibrary()
{
  v0 = IMCoreLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

uint64_t getIMSPIResetChatRegistrySymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMSPIResetChatRegistrySymbolLoc_ptr;
  v6 = getIMSPIResetChatRegistrySymbolLoc_ptr;
  if (!getIMSPIResetChatRegistrySymbolLoc_ptr)
  {
    v1 = IMCoreLibrary();
    v4[3] = dlsym(v1, "IMSPIResetChatRegistry");
    getIMSPIResetChatRegistrySymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2317B58F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getIMSPIResetChatRegistrySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMCoreLibrary();
  result = dlsym(v2, "IMSPIResetChatRegistry");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMSPIResetChatRegistrySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2317BA3C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 56));
  _Unwind_Resume(a1);
}

void sub_2317BAE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_1_3(id a1)
{

  return a1;
}

void sub_2317BCB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317BD81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2317BD9DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void sub_2317BE84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2317BEBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

id SLShareableContentLogHandle()
{
  if (SLShareableContentLogHandle_onceToken != -1)
  {
    SLShareableContentLogHandle_cold_1();
  }

  v1 = SLShareableContentLogHandle_osLog;

  return v1;
}

uint64_t __SLShareableContentLogHandle_block_invoke()
{
  v0 = os_log_create("com.apple.SocialLayer", "ShareableContent");
  v1 = SLShareableContentLogHandle_osLog;
  SLShareableContentLogHandle_osLog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2317C19B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SLDValidateSupplementaryData(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = v3;
      v14 = v1;
      v5 = *v16;
      v6 = 1;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v16 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v9 = SLDaemonLogHandle();
            if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
            {
              SLDValidateSupplementaryData_cold_2();
            }

            v6 = 0;
          }

          v10 = [v2 objectForKeyedSubscript:v8];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v11 = SLDaemonLogHandle();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
            {
              SLDValidateSupplementaryData_cold_3();
            }

            v6 = 0;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v4);
      v1 = v14;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v2 = SLDaemonLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      SLDValidateSupplementaryData_cold_1(v1, v2);
    }

    v6 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

void sub_2317C543C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317C6448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317CA154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317CA8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317CBA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317CBE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2317CBFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SLDStorageDirectory_block_invoke()
{
  v0 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v1 = [v0 objectAtIndexedSubscript:0];

  v2 = [v1 stringByAppendingPathComponent:@"SocialLayer"];
  v3 = SLDStorageDirectory_dir;
  SLDStorageDirectory_dir = v2;

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  [v4 createDirectoryAtPath:SLDStorageDirectory_dir withIntermediateDirectories:1 attributes:0 error:&v14];
  v5 = v14;
  v6 = v5;
  if (v5)
  {
    if ([v5 code] == 640)
    {
      v7 = [v6 domain];
      v8 = [v7 isEqualToString:*MEMORY[0x277CCA050]];

      if (v8)
      {
        v9 = SLDaemonLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __SLDStorageDirectory_block_invoke_cold_2();
        }

LABEL_9:

        v10 = SLDStorageDirectory_dir;
        SLDStorageDirectory_dir = 0;

        goto LABEL_12;
      }
    }

    if ([v6 code] == 513)
    {
      v9 = SLDaemonLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __SLDStorageDirectory_block_invoke_cold_1();
      }

      goto LABEL_9;
    }
  }

  if (SLDStorageDirectory_dir)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:SLDStorageDirectory_dir];
    v13 = SLDStorageDirectory_dirURL;
    SLDStorageDirectory_dirURL = v12;

    objc_autoreleasePoolPop(v11);
  }

LABEL_12:
}

void OUTLINED_FUNCTION_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_fault_impl(a1, v4, OS_LOG_TYPE_FAULT, a4, v5, 0xCu);
}

uint64_t *OUTLINED_FUNCTION_12@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t OUTLINED_FUNCTION_15(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

void sub_2317CFB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIMCollaborationClearTransmissionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIMCollaborationClearTransmissionClass_softClass;
  v7 = getIMCollaborationClearTransmissionClass_softClass;
  if (!getIMCollaborationClearTransmissionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getIMCollaborationClearTransmissionClass_block_invoke;
    v3[3] = &unk_278925B78;
    v3[4] = &v4;
    __getIMCollaborationClearTransmissionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2317D05CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIMCollaborationNoticeTransmissionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIMCollaborationNoticeTransmissionClass_softClass;
  v7 = getIMCollaborationNoticeTransmissionClass_softClass;
  if (!getIMCollaborationNoticeTransmissionClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getIMCollaborationNoticeTransmissionClass_block_invoke;
    v3[3] = &unk_278925B78;
    v3[4] = &v4;
    __getIMCollaborationNoticeTransmissionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2317D07B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getIMCollaborationNoticeDispatcherClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getIMCollaborationNoticeDispatcherClass_softClass;
  v7 = getIMCollaborationNoticeDispatcherClass_softClass;
  if (!getIMCollaborationNoticeDispatcherClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getIMCollaborationNoticeDispatcherClass_block_invoke;
    v3[3] = &unk_278925B78;
    v3[4] = &v4;
    __getIMCollaborationNoticeDispatcherClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2317D0AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getIMCollaborationClearTransmissionClass_block_invoke(uint64_t a1)
{
  IMSharedUtilitiesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("IMCollaborationClearTransmission");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMCollaborationClearTransmissionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getIMCollaborationClearTransmissionClass_block_invoke_cold_1();
    IMSharedUtilitiesLibrary();
  }
}

void IMSharedUtilitiesLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __IMSharedUtilitiesLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2789275D0;
    v4 = 0;
    IMSharedUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!IMSharedUtilitiesLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __IMSharedUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IMSharedUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getIMCollaborationNoticeTransmissionClass_block_invoke(uint64_t a1)
{
  IMSharedUtilitiesLibrary();
  result = objc_getClass("IMCollaborationNoticeTransmission");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getIMCollaborationNoticeTransmissionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getIMCollaborationNoticeTransmissionClass_block_invoke_cold_1();
    return __getIMCollaborationNoticeDispatcherClass_block_invoke(v3);
  }

  return result;
}

Class __getIMCollaborationNoticeDispatcherClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!IMCoreLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __IMCoreLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2789275E8;
    v7 = 0;
    IMCoreLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v5[0];
    if (IMCoreLibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("IMCollaborationNoticeDispatcher");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getIMCollaborationNoticeDispatcherClass_block_invoke_cold_1();
  }

  getIMCollaborationNoticeDispatcherClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __IMCoreLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

id SLFrameworkBundle()
{
  if (SLFrameworkBundle_onceToken != -1)
  {
    SLFrameworkBundle_cold_1();
  }

  v1 = SLFrameworkBundle_sBundle;

  return v1;
}

uint64_t __SLFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.SocialLayer"];
  v1 = SLFrameworkBundle_sBundle;
  SLFrameworkBundle_sBundle = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

double SLRoundToScale(double a1, double a2)
{
  if (fabs(a2) < 0.00000999999975)
  {
    a2 = 1.0;
  }

  if (a2 == 1.0)
  {
    return round(a1);
  }

  else
  {
    return round(a2 * a1) / a2;
  }
}

double SLRectCenteredInRectToScale(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = a9;
  v17 = a5 + (a7 - a3) * 0.5;
  if (fabs(a9) < 0.00000999999975)
  {
    v16 = 1.0;
  }

  v18 = v16 == 1.0;
  v19 = round(v16 * v17) / v16;
  result = round(v17);
  if (!v18)
  {
    return v19;
  }

  return result;
}

id SLDisplayNameWithPhoneNumberOrEmailForContact(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 phoneNumbers];
    if ([v3 count])
    {
      v4 = [v3 firstObject];
      v5 = [v4 value];
      v6 = [v5 stringValue];

      v7 = IMFormattedDisplayStringForNumber();
    }

    else
    {
      v6 = [v2 emailAddresses];
      if ([v6 count])
      {
        v8 = [v6 firstObject];
        v9 = [v8 value];

        v7 = IMFormattedDisplayStringForNumber();
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id SLFormattedDisplayNameForPerson(void *a1)
{
  v1 = a1;
  v2 = [v1 contact];

  if (v2)
  {
    v3 = [v1 contact];
    v4 = SLDisplayNameWithPhoneNumberOrEmailForContact(v3);
LABEL_7:
    v8 = v4;

    goto LABEL_8;
  }

  v5 = [v1 handle];
  v6 = MEMORY[0x231935480]();

  v3 = [v1 handle];
  if (v6)
  {
LABEL_6:
    v4 = IMFormattedDisplayStringForNumber();
    goto LABEL_7;
  }

  IsEmail = IMStringIsEmail();

  if (IsEmail)
  {
    v3 = [v1 handle];
    goto LABEL_6;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

void SLSendPortraitFeedbackTypeAppButtonForAttribution(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = SLApplicationIdentifierForPortraitFeedback();
    if (v2)
    {
      v3 = v2;
      v4 = objc_opt_new();
      v5 = [v1 uniqueIdentifier];
      v6 = *MEMORY[0x277D3A740];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __SLSendPortraitFeedbackTypeAppButtonForAttribution_block_invoke;
      v7[3] = &unk_278927608;
      v8 = v1;
      [v4 feedbackForAttributionIdentifier:v5 type:0 client:v3 variant:v6 completion:v7];
    }

    else
    {
      v3 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        SLSendPortraitFeedbackTypeAppButtonForAttribution_cold_1();
      }
    }
  }

  else
  {
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      SLSendPortraitFeedbackTypeAppButtonForAttribution_cold_2();
    }
  }
}

id SLApplicationIdentifierForPortraitFeedback()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 applicationIdentifier];
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_INFO, "SLApplicationIdentifierForPortraitFeedback: identifier is '%@'", &v6, 0xCu);
    }
  }

  else
  {
    v3 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      SLApplicationIdentifierForPortraitFeedback_cold_1();
    }

    v2 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

void __SLSendPortraitFeedbackTypeAppButtonForAttribution_block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SLFrameworkLogHandle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) uniqueIdentifier];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_INFO, "SLSendPortraitFeedbackTypeAppButtonForAttribution: sent feedback successfully for attribution: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __SLSendPortraitFeedbackTypeAppButtonForAttribution_block_invoke_cold_1(a1);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void SLSendPortraitFeedbackTypeDisplayedHighlight(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 identifier], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = SLApplicationIdentifierForPortraitFeedback();
    if (v4)
    {
      v5 = v4;
      v6 = objc_opt_new();
      v7 = [v2 identifier];
      v8 = *MEMORY[0x277D3A740];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __SLSendPortraitFeedbackTypeDisplayedHighlight_block_invoke;
      v9[3] = &unk_278927608;
      v10 = v2;
      [v6 feedbackForHighlightIdentifier:v7 type:0 client:v5 variant:v8 completion:v9];
    }

    else
    {
      v5 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        SLSendPortraitFeedbackTypeDisplayedHighlight_cold_1();
      }
    }
  }

  else
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      SLSendPortraitFeedbackTypeDisplayedHighlight_cold_2();
    }
  }
}

void __SLSendPortraitFeedbackTypeDisplayedHighlight_block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SLFrameworkLogHandle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) identifier];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_INFO, "SLSendPortraitFeedbackTypeDisplayedForHighlight: sent feedback successfully for highlight: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __SLSendPortraitFeedbackTypeDisplayedHighlight_block_invoke_cold_1(a1);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void SLSendPortraitFeedbackTypeUserInteractedWithHighlight(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 identifier], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = SLApplicationIdentifierForPortraitFeedback();
    if (v4)
    {
      v5 = v4;
      v6 = objc_opt_new();
      v7 = [v2 identifier];
      v8 = *MEMORY[0x277D3A740];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __SLSendPortraitFeedbackTypeUserInteractedWithHighlight_block_invoke;
      v9[3] = &unk_278927608;
      v10 = v2;
      [v6 feedbackForHighlightIdentifier:v7 type:1 client:v5 variant:v8 completion:v9];
    }

    else
    {
      v5 = SLFrameworkLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        SLSendPortraitFeedbackTypeUserInteractedWithHighlight_cold_1();
      }
    }
  }

  else
  {
    v5 = SLFrameworkLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      SLSendPortraitFeedbackTypeUserInteractedWithHighlight_cold_2();
    }
  }
}

void __SLSendPortraitFeedbackTypeUserInteractedWithHighlight_block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SLFrameworkLogHandle();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) identifier];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_231772000, v7, OS_LOG_TYPE_INFO, "SLSendPortraitFeedbackTypeUserInteractedWithHighlight: sent feedback successfully for highlight: %@", &v10, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __SLSendPortraitFeedbackTypeUserInteractedWithHighlight_block_invoke_cold_1(a1);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t SLPersonIsEqualToPerson(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 contact];
  v6 = [v4 contact];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v7 = [v3 handle];
    v8 = [v4 handle];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v9 = [v5 isEqual:v6];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

uint64_t SLAppHasPublicEntitlement()
{
  v0 = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [v0 entitlements];
    v2 = [v1 objectForKey:@"com.apple.developer.shared-with-you" ofClass:objc_opt_class()];

    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t SLPersonArrayisEqualToArray(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = [v4 count], v5 != objc_msgSend(v3, "count")))
  {
LABEL_12:
    IsEqualToPerson = 0;
    goto LABEL_13;
  }

  if ([v3 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v3 objectAtIndex:v6];
      v8 = [v4 objectAtIndex:v6];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        break;
      }

      IsEqualToPerson = SLPersonIsEqualToPerson(v7, v8);

      if ((IsEqualToPerson & 1) != 0 && ++v6 < [v3 count])
      {
        continue;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  IsEqualToPerson = 1;
LABEL_13:

  return IsEqualToPerson;
}

uint64_t SLPersonArrayContainsPerson(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (SLPersonIsEqualToPerson(*(*(&v11 + 1) + 8 * i), v4))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

id SLURLMinusFragmentForCKURLs(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 absoluteString];
    v4 = [v3 containsString:@"https://www.icloud.com/"];

    v5 = v2;
    if (v4)
    {
      [MEMORY[0x277CBEA60] arrayWithObjects:{@"https://www.icloud.com/notes", @"https://www.icloud.com/reminders", @"https://www.icloud.com/freeform", @"https://www.icloud.com/keynote", @"https://www.icloud.com/pages", @"https://www.icloud.com/numbers", @"https://www.icloud.com/share", @"https://www.icloud.com/iclouddrive", @"https://www.icloud.com/safari-tab-groups", 0}];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v6 = v21 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        while (2)
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v18 + 1) + 8 * i);
            v12 = [v2 absoluteString];
            LOBYTE(v11) = [v12 containsString:v11];

            if (v11)
            {

              v13 = [v2 absoluteString];
              v6 = [v13 componentsSeparatedByString:@"#"];
              v14 = MEMORY[0x277CBEBC0];
              v15 = [v6 firstObject];
              v5 = [v14 URLWithString:v15];

              goto LABEL_14;
            }
          }

          v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }
      }

      v13 = v6;
      v5 = v2;
LABEL_14:
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

id getCKPostSharingContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKPostSharingContextClass_softClass;
  v7 = getCKPostSharingContextClass_softClass;
  if (!getCKPostSharingContextClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCKPostSharingContextClass_block_invoke;
    v3[3] = &unk_278925B78;
    v3[4] = &v4;
    __getCKPostSharingContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2317D7C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCKContainerSetupInfoClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKContainerSetupInfoClass_softClass;
  v7 = getCKContainerSetupInfoClass_softClass;
  if (!getCKContainerSetupInfoClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCKContainerSetupInfoClass_block_invoke;
    v3[3] = &unk_278925B78;
    v3[4] = &v4;
    __getCKContainerSetupInfoClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2317D7EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCKPostSharingContextClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKPostSharingContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKPostSharingContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCKPostSharingContextClass_block_invoke_cold_1();
    CloudKitLibrary();
  }
}

void CloudKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __CloudKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_278927760;
    v4 = 0;
    CloudKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!CloudKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __CloudKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getCKContainerSetupInfoClass_block_invoke(uint64_t a1)
{
  CloudKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKContainerSetupInfo");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCKContainerSetupInfoClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getCKContainerSetupInfoClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_2_8();
  }
}

void sub_2317DA8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCKContainerSetupInfoClass_0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKContainerSetupInfoClass_softClass_0;
  v7 = getCKContainerSetupInfoClass_softClass_0;
  if (!getCKContainerSetupInfoClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getCKContainerSetupInfoClass_block_invoke_0;
    v3[3] = &unk_278925B78;
    v3[4] = &v4;
    __getCKContainerSetupInfoClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2317DCCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKContainerSetupInfoClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CloudKitLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2789277A8;
    v7 = 0;
    CloudKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (CloudKitLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CKContainerSetupInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContainerSetupInfoClass_block_invoke_cold_1();
  }

  getCKContainerSetupInfoClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2317DD810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t IMCoreLibraryCore_0()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!IMCoreLibraryCore_frameworkLibrary_2)
  {
    IMCoreLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  result = IMCoreLibraryCore_frameworkLibrary_2;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc_ptr;
  v6 = getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc_ptr;
  if (!getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc_block_invoke;
    v2[3] = &unk_278925B78;
    v2[4] = &v3;
    __getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2317DDF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __IMCoreLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IMCoreLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = IMCoreLibraryCore_0();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "IMSPIRemoveMessageGUIDFromSyndication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getIMSPIRemoveMessageGUIDFromSyndicationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2317DE858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2317DEF58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2317DF1B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2317DF304(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2317DF914(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2317DFB90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2317E09D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKContainerSetupInfoClass_block_invoke_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __CloudKitLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_278927918;
    v7 = 0;
    CloudKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v5[0];
    if (CloudKitLibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CKContainerSetupInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContainerSetupInfoClass_block_invoke_cold_1();
  }

  getCKContainerSetupInfoClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __CloudKitLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Int SecKeyRef.SecKeyConversionErrors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SecKeyRef.SecKeyConversionErrors()
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SecKeyRef.SecKeyConversionErrors()
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](0);
  return Hasher._finalize()();
}

void SecKeyRef.p256PublicKey.getter()
{
  v1 = SecKeyCopyExternalRepresentation(v0, 0);
  if (v1)
  {
    v2 = v1;
    v14[0] = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14[1] = v3;
    P256.Signing.PublicKey.init<A>(x963Representation:)();
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);
    v5 = v0;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14[0] = v9;
      *v8 = 136315138;
      v14[2] = v5;
      type metadata accessor for SecKeyRef(0);
      v10 = v5;
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v14);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_231772000, v6, v7, "Failed to create external representation of current SecKey %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x2319361B0](v9, -1, -1);
      MEMORY[0x2319361B0](v8, -1, -1);
    }

    lazy protocol witness table accessor for type SecKeyRef.SecKeyConversionErrors and conformance SecKeyRef.SecKeyConversionErrors();
    swift_allocError();
    swift_willThrow();
  }
}

SecKeyRef P256.Signing.PublicKey.secKey.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D0C0;
  v1 = *MEMORY[0x277CDC028];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v2;
  v3 = *MEMORY[0x277CDC040];
  type metadata accessor for CFStringRef(0);
  v5 = v4;
  *(inited + 72) = v4;
  *(inited + 48) = v3;
  v6 = *MEMORY[0x277CDBFE0];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v7;
  v8 = *MEMORY[0x277CDC000];
  *(inited + 120) = v5;
  *(inited + 96) = v8;
  v9 = v3;
  v10 = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  v11 = swift_arrayDestroy();
  v12 = MEMORY[0x2319343F0](v11);
  v14 = v13;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v12, v14);
  v16 = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = SecKeyCreateWithData(isa, v16, 0);

  return v17;
}

__SecKey *P256.Signing.PublicKey.secKeyData.getter()
{
  error[1] = *MEMORY[0x277D85DE8];
  result = P256.Signing.PublicKey.secKey.getter();
  if (result)
  {
    v1 = result;
    error[0] = 0;
    v2 = SecKeyCopyExternalRepresentation(result, error);
    if (v2)
    {
      v3 = v2;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        static Data._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    if (error[0])
    {
    }

    result = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

id default argument 2 of KeyQueryController.init(service:targetQueue:queryController:)@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    result = type metadata accessor for IDSIDQueryController();
    a1[3] = result;
    a1[4] = &protocol witness table for IDSIDQueryController;
    *a1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type SecKeyRef.SecKeyConversionErrors and conformance SecKeyRef.SecKeyConversionErrors()
{
  result = lazy protocol witness table cache variable for type SecKeyRef.SecKeyConversionErrors and conformance SecKeyRef.SecKeyConversionErrors;
  if (!lazy protocol witness table cache variable for type SecKeyRef.SecKeyConversionErrors and conformance SecKeyRef.SecKeyConversionErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecKeyRef.SecKeyConversionErrors and conformance SecKeyRef.SecKeyConversionErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecKeyRef.SecKeyConversionErrors and conformance SecKeyRef.SecKeyConversionErrors;
  if (!lazy protocol witness table cache variable for type SecKeyRef.SecKeyConversionErrors and conformance SecKeyRef.SecKeyConversionErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecKeyRef.SecKeyConversionErrors and conformance SecKeyRef.SecKeyConversionErrors);
  }

  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance NSAttributedStringKey(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x231934530](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance NSAttributedStringKey()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x2319346A0](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance NSAttributedStringKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSAttributedStringKey()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hashValue.getter();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CFStringRef()
{
  v1 = *v0;
  swift_getWitnessTable();
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance SLCollaborationAttributionViewMetricVariant@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UIContentSizeCategory(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance NSAttributedStringKey@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x231934530](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSAttributedStringKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v3 = lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8_NSRangeVGMd, &_ss23_ContiguousArrayStorageCySo8_NSRangeVGMR);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (NSAttributedStringKey, Any)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t type metadata accessor for IDSIDQueryController()
{
  result = lazy cache variable for type metadata for IDSIDQueryController;
  if (!lazy cache variable for type metadata for IDSIDQueryController)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IDSIDQueryController);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecKeyRef.SecKeyConversionErrors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SecKeyRef.SecKeyConversionErrors(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSgypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaSgypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (NSAttributedStringKey, Any)(v4, &v11, &_sSo11CFStringRefaSg_yptMd, &_sSo11CFStringRefaSg_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_ADTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSgADGMd, &_ss18_DictionaryStorageCySo11CFStringRefaSgADGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = v5;
      v8 = v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v8;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd, &_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (NSAttributedStringKey, Any)(v4, &v11, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSiGMd, &_ss18_DictionaryStorageCySo11CFStringRefaSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So16SWPersonIdentityCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMd, &_ss18_DictionaryStorageCySSSo16SWPersonIdentityCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (NSAttributedStringKey, Any)(v4, &v11, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefa12CoreGraphics7CGFloatVGMd, &_ss18_DictionaryStorageCySo11CFStringRefa12CoreGraphics7CGFloatVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSgypGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of (NSAttributedStringKey, Any)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for NSEdgeInsets(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NSEdgeInsets(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void type metadata accessor for SecKeyRef(uint64_t a1, unint64_t *a2)
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

void ConversationAttributionView.attribution.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v1;
  v3 = [v1 attributions];

  type metadata accessor for SLAttribution();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:

    __break(1u);
    goto LABEL_10;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_9;
  }

LABEL_4:

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_10:
    MEMORY[0x231934AB0](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_7:

    return;
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

unint64_t type metadata accessor for SLAttribution()
{
  result = lazy cache variable for type metadata for SLAttribution;
  if (!lazy cache variable for type metadata for SLAttribution)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SLAttribution);
  }

  return result;
}

id ConversationAttributionView.__allocating_init(highlight:variant:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized CollaborationAttributionView.init(highlight:variant:)(a1, 2);

  return v4;
}

id ConversationAttributionView.__allocating_init(attribution:maxWidth:)(void *a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = [objc_allocWithZone(SLCollaborationHighlight) initWithAttribution_];
  v7 = specialized CollaborationAttributionView.init(highlight:variant:)(v6, 2);
  [v7 setMaxWidth_];

  return v7;
}

id ConversationAttributionView.init(attribution:maxWidth:)(void *a1, double a2)
{
  v4 = [objc_allocWithZone(SLCollaborationHighlight) initWithAttribution_];
  v5 = specialized CollaborationAttributionView.init(highlight:variant:)(v4, 2);
  [v5 setMaxWidth_];

  return v5;
}

id ConversationAttributionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t ConversationAttributionView.init(coder:)(void *a1)
{
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id ConversationAttributionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationAttributionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GenericPasswordConvertible.description.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  v3 = result;
  v5 = v4;
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
LABEL_14:
      _StringGuts.grow(_:)(37);

      v10[0] = 0xD00000000000001CLL;
      v10[1] = 0x8000000231845E80;
      v9 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x231934620](v9);

      MEMORY[0x231934620](0x2E736574796220, 0xE700000000000000);
      goto LABEL_15;
    }

    v7 = *(result + 16);
    v8 = *(result + 24);
    result = __DataStorage._bytes.getter();
    if (result)
    {
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v7, result))
      {
        goto LABEL_17;
      }
    }

    if (!__OFSUB__(v8, v7))
    {
LABEL_13:
      MEMORY[0x231933EB0]();
      closure #1 in GenericPasswordConvertible.description.getter(v10);
LABEL_15:
      outlined consume of Data._Representation(v3, v5);
      return v10[0];
    }

    __break(1u);
  }

  else if (!v6)
  {
    goto LABEL_14;
  }

  if (v3 >> 32 < v3)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!__DataStorage._bytes.getter())
  {
    goto LABEL_13;
  }

  result = __DataStorage._offset.getter();
  if (!__OFSUB__(v3, result))
  {
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t closure #1 in GenericPasswordConvertible.description.getter@<X0>(void *a1@<X8>)
{
  _StringGuts.grow(_:)(37);

  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x231934620](v2);

  result = MEMORY[0x231934620](0x2E736574796220, 0xE700000000000000);
  *a1 = 0xD00000000000001CLL;
  a1[1] = 0x8000000231845E80;
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(&v8[2], 0, 14);
      result = closure #1 in GenericPasswordConvertible.description.getter(v8);
      if (v2)
      {
        goto LABEL_12;
      }

LABEL_11:
      result = v8[0];
      goto LABEL_12;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      v8[2] = a1;
      LOWORD(v8[3]) = a2;
      BYTE2(v8[3]) = BYTE2(a2);
      BYTE3(v8[3]) = BYTE3(a2);
      BYTE4(v8[3]) = BYTE4(a2);
      BYTE5(v8[3]) = BYTE5(a2);
      result = closure #1 in GenericPasswordConvertible.description.getter(v8);
      if (v2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
LABEL_12:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SymmetricKey.init<A>(rawRepresentation:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  SymmetricKey.init<A>(data:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t SymmetricKey.rawRepresentation.getter()
{
  type metadata accessor for SymmetricKey();
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  return v1;
}

uint64_t protocol witness for GenericPasswordConvertible.rawRepresentation.getter in conformance SymmetricKey()
{
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  return v1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SymmetricKey()
{
  lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  v0 = specialized Data.withUnsafeBytes<A>(_:)(v2, v3);
  outlined consume of Data._Representation(v2, v3);
  return v0;
}

void closure #1 in ContiguousBytes.dataRepresentation.getter(UInt8 *bytes@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (bytes)
  {
    v4 = a2 - bytes;
  }

  else
  {
    v4 = 0;
  }

  v5 = CFDataCreateWithBytesNoCopy(0, bytes, v4, *MEMORY[0x277CBED00]);
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xC000000000000000;
  }

  *a3 = v7;
  a3[1] = v9;
}

uint64_t instantiation function for generic protocol witness table for SymmetricKey(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(&lazy protocol witness table cache variable for type SymmetricKey and conformance SymmetricKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SymmetricKey and conformance SymmetricKey(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SymmetricKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  MEMORY[0x231933EB0]();
  result = closure #1 in GenericPasswordConvertible.description.getter(&v6);
  if (!v2)
  {
    return v6;
  }

  return result;
}

{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x231933EB0]();
      type metadata accessor for SHA256();
      lazy protocol witness table accessor for type SHA256Digest and conformance SHA256Digest(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x277CC5540]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized HighlightDisambiguationPillMetricVariant.heightOfTallestItem.getter(void *a1, id a2)
{
  if ([a2 isGroupConversation])
  {
    if ([a1 layoutDirection] == 1)
    {
      v3 = 0xEC0000007466656CLL;
    }

    else
    {
      v3 = 0xED00007468676972;
    }

    v4 = MEMORY[0x231934530](0x2E6E6F7276656863, v3);

    v5 = SLDSystemVectorGlyphWithSlotStyle(a1, v4, 1, 4, 10.0);

    [v5 contentBounds];
    v6 = MEMORY[0x277CC4998];
    v7 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(MEMORY[0x277CC4998], 17.0);
    CTFontGetAscent(v7);

    v8 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(v6, 17.0);
    CTFontGetDescent(v8);

    v9 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(v6, 17.0);
    CTFontGetLeading(v9);

    v10 = MEMORY[0x277CC49A8];
    v11 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(MEMORY[0x277CC49A8], 15.0);
    CTFontGetAscent(v11);

    v12 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(v10, 15.0);
    CTFontGetDescent(v12);

    v13 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(v10, 15.0);
    CTFontGetLeading(v13);
  }

  else
  {
    v14 = MEMORY[0x277CC4998];
    v15 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(MEMORY[0x277CC4998], 17.0);
    CTFontGetAscent(v15);

    v16 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(v14, 17.0);
    CTFontGetDescent(v16);

    v17 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(v14, 17.0);
    CTFontGetLeading(v17);
  }
}

{
  if ([a2 isGroupConversation])
  {
    if ([a1 layoutDirection] == 1)
    {
      v3 = 0xEC0000007466656CLL;
    }

    else
    {
      v3 = 0xED00007468676972;
    }

    v4 = MEMORY[0x231934530](0x2E6E6F7276656863, v3);

    v5 = SLDSystemVectorGlyphWithSlotStyle(a1, v4, 1, 4, 10.0);

    [v5 contentBounds];
    v6 = specialized VisionDisambiguationPillMetric.firstLineFont.getter(a1);
    CTFontGetAscent(v6);

    v7 = specialized VisionDisambiguationPillMetric.firstLineFont.getter(a1);
    CTFontGetDescent(v7);

    v8 = specialized VisionDisambiguationPillMetric.firstLineFont.getter(a1);
    CTFontGetLeading(v8);

    v9 = specialized VisionDisambiguationPillMetric.secondLineFont.getter(a1);
    CTFontGetAscent(v9);

    v10 = specialized VisionDisambiguationPillMetric.secondLineFont.getter(a1);
    CTFontGetDescent(v10);

    v11 = specialized VisionDisambiguationPillMetric.secondLineFont.getter(a1);
    CTFontGetLeading(v11);
  }

  else
  {
    v12 = specialized VisionDisambiguationPillMetric.firstLineFont.getter(a1);
    CTFontGetAscent(v12);

    v13 = specialized VisionDisambiguationPillMetric.firstLineFont.getter(a1);
    CTFontGetDescent(v13);

    v14 = specialized VisionDisambiguationPillMetric.firstLineFont.getter(a1);
    CTFontGetLeading(v14);
  }
}

double protocol witness for HighlightDisambiguationPillMetricVariant.firstLineFontHeight.getter in conformance iOSDisambiguationPillMetric(CGFloat a1, uint64_t a2, uint64_t a3, const __CTFont *a4)
{
  v6 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(a4, a1);
  Ascent = CTFontGetAscent(v6);

  v8 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(a4, a1);
  Descent = CTFontGetDescent(v8);

  v10 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(a4, a1);
  Leading = CTFontGetLeading(v10);

  return Ascent + Descent + Leading;
}

id iOSDisambiguationPillMetric.secondLineString.getter(int a1, id a2)
{
  if ([a2 isGroupConversation])
  {
    return specialized static DisambiguationPillMetrics.secondLineString(for:)(a2);
  }

  else
  {
    return 0;
  }
}

id protocol witness for HighlightDisambiguationPillMetricVariant.secondLineString.getter in conformance iOSDisambiguationPillMetric()
{
  v1 = *(v0 + 8);
  if ([v1 isGroupConversation])
  {
    return specialized static DisambiguationPillMetrics.secondLineString(for:)(v1);
  }

  else
  {
    return 0;
  }
}

double protocol witness for HighlightDisambiguationPillMetricVariant.firstLineFontHeight.getter in conformance VisionDisambiguationPillMetric(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = a3(v5);
  Ascent = CTFontGetAscent(v6);

  v8 = a3(v5);
  Descent = CTFontGetDescent(v8);

  v10 = a3(v5);
  Leading = CTFontGetLeading(v10);

  return Ascent + Descent + Leading;
}

CGColorRef iOSDisambiguationPillMetric.firstLineColor.getter(void *a1, CGFloat a2)
{
  if ([a1 userInterfaceStyle] == 1)
  {
    v3 = 1.0;
    v4 = 1.0;
    v5 = 1.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
  }

  return CGColorCreateGenericRGB(v3, v4, v5, a2);
}

uint64_t MacDisambiguationPillMetric.firstLineFont.getter()
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontMenuItem, 0.0, 0);
  if (UIFontForLanguage)
  {
    v1 = UIFontForLanguage;
    CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(UIFontForLanguage, 0.0, 0, 2u, 2u);

    if (CopyWithSymbolicTraits)
    {
      return CopyWithSymbolicTraits;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

CGColorRef protocol witness for HighlightDisambiguationPillMetricVariant.firstLineColor.getter in conformance iOSDisambiguationPillMetric(CGFloat a1)
{
  if ([*v1 userInterfaceStyle] == 1)
  {
    v3 = 1.0;
    v4 = 1.0;
    v5 = 1.0;
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
  }

  return CGColorCreateGenericRGB(v3, v4, v5, a1);
}

uint64_t protocol witness for HighlightDisambiguationPillMetricVariant.firstLineFont.getter in conformance MacDisambiguationPillMetric()
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontMenuItem, 0.0, 0);
  if (UIFontForLanguage)
  {
    v1 = UIFontForLanguage;
    CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(UIFontForLanguage, 0.0, 0, 2u, 2u);

    if (CopyWithSymbolicTraits)
    {
      return CopyWithSymbolicTraits;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double protocol witness for HighlightDisambiguationPillMetricVariant.chevronSize.getter in conformance iOSDisambiguationPillMetric()
{
  v1 = *v0;
  if ([*v0 layoutDirection] == 1)
  {
    v2 = 0xEC0000007466656CLL;
  }

  else
  {
    v2 = 0xED00007468676972;
  }

  v3 = MEMORY[0x231934530](0x2E6E6F7276656863, v2);

  v4 = SLDSystemVectorGlyphWithSlotStyle(v1, v3, 1, 4, 10.0);

  [v4 contentBounds];
  v6 = v5;

  return v6;
}

id DisambiguationPillMetrics.__allocating_init(slotStyle:tag:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithSlotStyle:a1 tag:a2 variant:{objc_msgSend(a2, sel_variant)}];

  return v5;
}

id DisambiguationPillMetrics.init(slotStyle:tag:)(void *a1, id a2)
{
  v5 = [v2 initWithSlotStyle:a1 tag:a2 variant:{objc_msgSend(a2, sel_variant)}];

  return v5;
}

id DisambiguationPillMetrics.init(slotStyle:tag:variant:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = &v3[OBJC_IVAR___SLHighlightDisambiguationPillMetrics____lazy_storage___pillMetrics];
  _s11SocialLayer36SLHighlightDisambiguationPillMetrics33_C5DA7C7764DCEDFB9B9BF94750149602LLVSgWOi0_(v16);
  v8 = v16[5];
  *(v7 + 4) = v16[4];
  *(v7 + 5) = v8;
  v9 = v16[7];
  *(v7 + 6) = v16[6];
  *(v7 + 7) = v9;
  v10 = v16[1];
  *v7 = v16[0];
  *(v7 + 1) = v10;
  v11 = v16[3];
  *(v7 + 2) = v16[2];
  *(v7 + 3) = v11;
  if (a3 >= 3)
  {
    type metadata accessor for SLHighlightDisambiguationPillMetricVariant(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v12 = off_278927A00[a3];
    v13 = &v3[OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics];
    *(v13 + 3) = off_2789279E8[a3];
    *(v13 + 4) = v12;
    *v13 = a1;
    *(v13 + 1) = a2;
    v15.receiver = v3;
    v15.super_class = type metadata accessor for DisambiguationPillMetrics();
    return objc_msgSendSuper2(&v15, sel_init);
  }

  return result;
}

double DisambiguationPillMetrics.pillMetrics.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics____lazy_storage___pillMetrics);
  v4 = *(v1 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics____lazy_storage___pillMetrics + 80);
  v37 = *(v1 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics____lazy_storage___pillMetrics + 64);
  v38 = v4;
  v5 = *(v1 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics____lazy_storage___pillMetrics + 112);
  v39 = *(v1 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics____lazy_storage___pillMetrics + 96);
  v40 = v5;
  v6 = *(v1 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics____lazy_storage___pillMetrics + 16);
  v33 = *(v1 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics____lazy_storage___pillMetrics);
  v34 = v6;
  v7 = *(v1 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics____lazy_storage___pillMetrics + 48);
  v35 = *(v1 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics____lazy_storage___pillMetrics + 32);
  v36 = v7;
  if (_s11SocialLayer36SLHighlightDisambiguationPillMetrics33_C5DA7C7764DCEDFB9B9BF94750149602LLVSgWOg(&v33) == 1)
  {
    closure #1 in DisambiguationPillMetrics.pillMetrics.getter(v1, &v17);
    v29 = v21;
    v30 = v22;
    v31 = v23;
    v32 = v24;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    destructiveProjectEnumData for SecKeyRef.SecKeyConversionErrors(&v25);
    v8 = v30;
    v3[4] = v29;
    v3[5] = v8;
    v9 = v32;
    v3[6] = v31;
    v3[7] = v9;
    v10 = v26;
    *v3 = v25;
    v3[1] = v10;
    v11 = v28;
    v3[2] = v27;
    v3[3] = v11;
  }

  else
  {
    v21 = v37;
    v22 = v38;
    v23 = v39;
    v24 = v40;
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v20 = v36;
  }

  v12 = v22;
  a1[4] = v21;
  a1[5] = v12;
  v13 = v24;
  a1[6] = v23;
  a1[7] = v13;
  v14 = v18;
  *a1 = v17;
  a1[1] = v14;
  result = *&v19;
  v16 = v20;
  a1[2] = v19;
  a1[3] = v16;
  return result;
}

double closure #1 in DisambiguationPillMetrics.pillMetrics.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v153);
  v5 = v154;
  v6 = v155;
  __swift_project_boxed_opaque_existential_1(v153, v154);
  v7 = (*(v6 + 40))(v5, v6);
  v9 = v8;
  v11 = v10;
  v137 = v12;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v150);
  v13 = v151;
  v14 = v152;
  __swift_project_boxed_opaque_existential_1(v150, v151);
  v136 = (*(v14 + 160))(v13, v14);
  __swift_destroy_boxed_opaque_existential_0(v150);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v150);
  v15 = v151;
  v16 = v152;
  __swift_project_boxed_opaque_existential_1(v150, v151);
  v135 = (*(v16 + 48))(v15, v16);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v147);
  v17 = v148;
  v18 = v149;
  __swift_project_boxed_opaque_existential_1(v147, v148);
  v19 = (*(v18 + 24))(v17, v18);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v144);
  v20 = v145;
  v21 = v146;
  __swift_project_boxed_opaque_existential_1(v144, v145);
  v22 = (*(v21 + 56))(v20, v21);
  v133 = v23;
  v134 = v22;
  v131 = v25;
  v132 = v24;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
  v26 = v142;
  v27 = v143;
  __swift_project_boxed_opaque_existential_1(v141, v142);
  v130 = (*(v27 + 176))(v26, v27);
  __swift_destroy_boxed_opaque_existential_0(v141);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
  v28 = v142;
  v29 = v143;
  __swift_project_boxed_opaque_existential_1(v141, v142);
  v30 = (*(v29 + 24))(v28, v29);
  __swift_destroy_boxed_opaque_existential_0(v141);
  v31 = 0.0;
  v32 = 0.0;
  if ((v30 & 1) == 0)
  {
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v33 = v142;
    v34 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    v32 = (*(v34 + 184))(v33, v34);
    __swift_destroy_boxed_opaque_existential_0(v141);
  }

  __swift_destroy_boxed_opaque_existential_0(v144);
  __swift_destroy_boxed_opaque_existential_0(v147);
  __swift_destroy_boxed_opaque_existential_0(v150);
  __swift_destroy_boxed_opaque_existential_0(v153);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
  v35 = v142;
  v36 = v143;
  __swift_project_boxed_opaque_existential_1(v141, v142);
  v37 = (*(v36 + 16))(v35, v36);
  [v37 maxWidth];
  v39 = v38;

  __swift_destroy_boxed_opaque_existential_0(v141);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
  v40 = v142;
  v41 = v143;
  __swift_project_boxed_opaque_existential_1(v141, v142);
  LOBYTE(v37) = (*(v41 + 32))(v40, v41);
  __swift_destroy_boxed_opaque_existential_0(v141);
  if (v37)
  {
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v42 = v142;
    v43 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    v31 = (*(v43 + 136))(v42, v43);
    __swift_destroy_boxed_opaque_existential_0(v141);
  }

  outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
  v44 = v142;
  v45 = v143;
  __swift_project_boxed_opaque_existential_1(v141, v142);
  v46 = (*(v45 + 32))(v44, v45);
  __swift_destroy_boxed_opaque_existential_0(v141);
  v47 = 0.0;
  if (v46)
  {
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v48 = v142;
    v49 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    v47 = (*(v49 + 112))(v48, v49);
    __swift_destroy_boxed_opaque_existential_0(v141);
  }

  outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
  v50 = v142;
  v51 = v143;
  __swift_project_boxed_opaque_existential_1(v141, v142);
  v52 = (*(v51 + 24))(v50, v51);
  __swift_destroy_boxed_opaque_existential_0(v141);
  v53 = a1 + v4;
  if (v52)
  {
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v53, v141);
    v54 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v138);
    v55 = v139;
    v56 = v140;
    __swift_project_boxed_opaque_existential_1(v138, v139);
    v57 = (*(v56 + 80))(v55, v56);
    v58 = (*(v54 + 192))(v57);

    __swift_destroy_boxed_opaque_existential_0(v138);
    __swift_destroy_boxed_opaque_existential_0(v141);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v59 = v142;
    v60 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v60 + 40))(v59, v60);
    v62 = v61;
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v138);
    v63 = v139;
    v64 = v140;
    __swift_project_boxed_opaque_existential_1(v138, v139);
    v65 = v62 + (*(v64 + 48))(v63, v64);
    __swift_destroy_boxed_opaque_existential_0(v138);
    __swift_destroy_boxed_opaque_existential_0(v141);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v66 = v142;
    v67 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v67 + 56))(v66, v67);
    v69 = v65 + v68;
    __swift_destroy_boxed_opaque_existential_0(v141);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v70 = v142;
    v71 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v71 + 56))(v70, v71);
    v73 = v31 + v47 + v69 + v72;
    __swift_destroy_boxed_opaque_existential_0(v141);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v74 = v142;
    v75 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v75 + 40))(v74, v75);
    v77 = v73 + v76;
    __swift_destroy_boxed_opaque_existential_0(v141);
    v78 = CTLineCreateWithAttributedString(v58);
    BoundsWithOptions = CTLineGetBoundsWithOptions(v78, 0);
    width = BoundsWithOptions.size.width;

    if (width >= v39 - v77)
    {
      v80 = v39 - v77;
    }

    else
    {
      v80 = width;
    }

    v81 = v77 + v80;
    v82 = 0.0;
    v83 = 0.0;
  }

  else
  {
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v53, v141);
    v84 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v138);
    v85 = v139;
    v86 = v140;
    __swift_project_boxed_opaque_existential_1(v138, v139);
    v87 = (*(v86 + 80))(v85, v86);
    attrString = (*(v84 + 192))(v87);

    __swift_destroy_boxed_opaque_existential_0(v138);
    __swift_destroy_boxed_opaque_existential_0(v141);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v88 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v138);
    v89 = v19;
    v90 = a2;
    v91 = v139;
    v92 = v140;
    __swift_project_boxed_opaque_existential_1(v138, v139);
    v93 = *(v92 + 104);
    v94 = v92;
    a2 = v90;
    v19 = v89;
    v95 = v93(v91, v94);
    v96 = (*(v88 + 200))(v95);

    __swift_destroy_boxed_opaque_existential_0(v138);
    __swift_destroy_boxed_opaque_existential_0(v141);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v97 = v142;
    v98 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v98 + 40))(v97, v98);
    v129 = v32;
    v100 = v99;
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v138);
    v101 = v139;
    v102 = v140;
    __swift_project_boxed_opaque_existential_1(v138, v139);
    v103 = v100 + (*(v102 + 48))(v101, v102);
    __swift_destroy_boxed_opaque_existential_0(v138);
    __swift_destroy_boxed_opaque_existential_0(v141);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v104 = v142;
    v105 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v105 + 56))(v104, v105);
    v107 = v103 + v106;
    __swift_destroy_boxed_opaque_existential_0(v141);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v108 = v142;
    v109 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v109 + 56))(v108, v109);
    v111 = v107 + v110;
    __swift_destroy_boxed_opaque_existential_0(v141);
    outlined init with copy of HighlightDisambiguationPillMetricVariant(a1 + v4, v141);
    v112 = v142;
    v113 = v143;
    __swift_project_boxed_opaque_existential_1(v141, v142);
    (*(v113 + 40))(v112, v113);
    v114 = v11;
    v115 = v9;
    v116 = v7;
    v118 = v111 + v117;
    __swift_destroy_boxed_opaque_existential_0(v141);
    v119 = v31 + v47 + v118;
    v120 = v39 - v118;
    v121 = v39 - v119;
    v122 = CTLineCreateWithAttributedString(attrString);
    v123 = CTLineCreateWithAttributedString(v96);
    v157 = CTLineGetBoundsWithOptions(v122, 0);
    v124 = v157.size.width;
    v158 = CTLineGetBoundsWithOptions(v123, 0);
    v125 = v158.size.width;

    if (v124 >= v120)
    {
      v80 = v120;
    }

    else
    {
      v80 = v124;
    }

    if (v125 >= v121)
    {
      v82 = v121;
    }

    else
    {
      v82 = v125;
    }

    v83 = v129;
    if (v80 > v82)
    {
      v126 = v80;
    }

    else
    {
      v126 = v82;
    }

    v81 = v118 + v126;
    v7 = v116;
    v9 = v115;
    v11 = v114;
  }

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11;
  *(a2 + 24) = v137;
  *(a2 + 32) = v81;
  *(a2 + 40) = v136;
  *(a2 + 48) = v135;
  *(a2 + 56) = v19 & 1;
  *(a2 + 64) = v134;
  *(a2 + 72) = v133;
  *(a2 + 80) = v132;
  *(a2 + 88) = v131;
  *(a2 + 96) = v80;
  result = v130;
  *(a2 + 104) = v130;
  *(a2 + 112) = v82;
  *(a2 + 120) = v83;
  return result;
}

uint64_t static DisambiguationPillMetrics.accessibilityLabel(for:)(void *a1)
{
  v2 = specialized static DisambiguationPillMetrics.firstLineString(for:)(a1);
  v3 = specialized static DisambiguationPillMetrics.secondLineString(for:)(a1);
  v5 = v4;

  MEMORY[0x231934620](v3, v5);

  return v2;
}

id DisambiguationPillMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DisambiguationPillMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisambiguationPillMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double DisambiguationPillMetrics.pillHeight.getter()
{
  v1 = OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v11);
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v4 = (*(v3 + 40))(v2, v3);
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_0(v11);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + v1, v11);
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v9 = v4 + (*(v8 + 168))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v6 + v9;
}

uint64_t DisambiguationPillMetrics.useChevron.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  LOBYTE(v1) = (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v1 & 1;
}

uint64_t DisambiguationPillMetrics.chevronImage.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 152))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t DisambiguationPillMetrics.chevronSize.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v9);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v5 = (*(v4 + 32))(v3, v4);
  result = __swift_destroy_boxed_opaque_existential_0(v9);
  if (v5)
  {
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v1 + v2, v9);
    v7 = v10;
    v8 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v8 + 136))(v7, v8);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

uint64_t DisambiguationPillMetrics.chevronLeadingMargin.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v9);
  v3 = v10;
  v4 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v5 = (*(v4 + 32))(v3, v4);
  result = __swift_destroy_boxed_opaque_existential_0(v9);
  if (v5)
  {
    outlined init with copy of HighlightDisambiguationPillMetricVariant(v1 + v2, v9);
    v7 = v10;
    v8 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v8 + 112))(v7, v8);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

uint64_t DisambiguationPillMetrics.line(from:maxWidth:)(const __CFAttributedString *a1)
{
  v1 = CTLineCreateWithAttributedString(a1);
  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();
  if (TruncatedLineWithTokenHandler)
  {
    v3 = TruncatedLineWithTokenHandler;

    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t DisambiguationPillMetrics.firstLineColor.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 64))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t DisambiguationPillMetrics.firstLineFont.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 72))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t DisambiguationPillMetrics.firstLineAttributedString.getter()
{
  v1 = OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v11);
  v2 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + v1, v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v5 = (*(v4 + 80))(v3, v4);
  v6 = (*(v2 + 192))(v5);

  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v6;
}

uint64_t DisambiguationPillMetrics.secondLineColor.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t DisambiguationPillMetrics.secondLineFont.getter()
{
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 96))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return v3;
}

uint64_t DisambiguationPillMetrics.secondLineAttributedString.getter()
{
  v1 = OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics;
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + OBJC_IVAR___SLHighlightDisambiguationPillMetrics_metrics, v11);
  v2 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  outlined init with copy of HighlightDisambiguationPillMetricVariant(v0 + v1, v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v5 = (*(v4 + 104))(v3, v4);
  v6 = (*(v2 + 200))(v5);

  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v6;
}

id @objc static DisambiguationPillMetrics.firstLineString(for:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v5 = a3;
  v6 = a4();
  v8 = v7;

  v9 = MEMORY[0x231934530](v6, v8);

  return v9;
}

CTFontRef specialized iOSDisambiguationPillMetric.firstLineFont.getter(CTFontRef result, CGFloat a2)
{
  v2 = *MEMORY[0x277CC4968];
  if (*MEMORY[0x277CC4968])
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSgypGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSgypGtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23183D7E0;
    v6 = *MEMORY[0x277CC4950];
    *(inited + 32) = *MEMORY[0x277CC4950];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_yptGMR);
    v7 = swift_initStackObject();
    *(v7 + 16) = xmmword_23183D0C0;
    v8 = *MEMORY[0x277CC49B8];
    *(v7 + 32) = *MEMORY[0x277CC49B8];
    v9 = MEMORY[0x277D85048];
    *(v7 + 40) = *v4;
    v10 = *MEMORY[0x277CC4980];
    *(v7 + 64) = v9;
    *(v7 + 72) = v10;
    type metadata accessor for CFStringRef(0);
    *(v7 + 104) = v11;
    *(v7 + 80) = v2;
    v12 = v10;
    v13 = v2;
    v14 = v6;
    v15 = v8;
    v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_ypTt0g5Tf4g_n(v7);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSg_yptMd, &_sSo11CFStringRefaSg_yptMR);
    swift_arrayDestroy();
    *(inited + 40) = v16;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSgypGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABSgypGtMd, &_sSo11CFStringRefa_SDyABSgypGtMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSgypGMd, &_sSDySo11CFStringRefaSgypGMR);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v18 = CTFontDescriptorCreateWithAttributes(isa);
    v19 = CTFontCreateWithFontDescriptor(v18, a2, 0);

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CTFontRef specialized VisionDisambiguationPillMetric.firstLineFont.getter(CTFontRef result)
{
  v1 = *MEMORY[0x277CC4968];
  if (*MEMORY[0x277CC4968])
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSgADGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSgADGtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23183D7E0;
    v4 = *MEMORY[0x277CC4950];
    *(inited + 32) = *MEMORY[0x277CC4950];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_ADtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_ADtGMR);
    v5 = swift_initStackObject();
    v6 = MEMORY[0x277CC4980];
    *(v5 + 16) = xmmword_23183D7E0;
    v7 = *v6;
    *(v5 + 32) = v7;
    *(v5 + 40) = v1;
    v8 = v7;
    v9 = v1;
    v10 = v4;
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_ADTt0g5Tf4g_n(v5);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(v5 + 32, &_sSo11CFStringRefaSg_ABtMd, &_sSo11CFStringRefaSg_ABtMR);
    *(inited + 40) = v11;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSgADGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABSgABGtMd, &_sSo11CFStringRefa_SDyABSgABGtMR);
    type metadata accessor for CFStringRef(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSgABGMd, &_sSDySo11CFStringRefaSgABGMR);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v13 = [(__CTFont *)v2 fontContentSizeCategory];
    v14 = *MEMORY[0x277CC4A58];
    v15 = CTFontDescriptorCreateWithTextStyleAndAttributes();
    v16 = CTFontCreateWithFontDescriptor(v15, 0.0, 0);

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CTFontRef specialized VisionDisambiguationPillMetric.secondLineFont.getter(CTFontRef result)
{
  v1 = *MEMORY[0x277CC4968];
  if (*MEMORY[0x277CC4968])
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSgypGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSgypGtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23183D7E0;
    v4 = *MEMORY[0x277CC4950];
    *(inited + 32) = *MEMORY[0x277CC4950];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefaSg_yptGMR);
    v5 = swift_initStackObject();
    v6 = *MEMORY[0x277CC49B8];
    *(v5 + 32) = *MEMORY[0x277CC49B8];
    *(v5 + 16) = xmmword_23183D0C0;
    v7 = MEMORY[0x277D85048];
    *(v5 + 40) = *MEMORY[0x277CC49A8];
    v8 = *MEMORY[0x277CC4980];
    *(v5 + 64) = v7;
    *(v5 + 72) = v8;
    type metadata accessor for CFStringRef(0);
    *(v5 + 104) = v9;
    *(v5 + 80) = v1;
    v10 = v8;
    v11 = v1;
    v12 = v4;
    v13 = v6;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_ypTt0g5Tf4g_n(v5);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefaSg_yptMd, &_sSo11CFStringRefaSg_yptMR);
    swift_arrayDestroy();
    *(inited + 40) = v14;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSgypGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABSgypGtMd, &_sSo11CFStringRefa_SDyABSgypGtMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSgypGMd, &_sSDySo11CFStringRefaSgypGMR);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v16 = [(__CTFont *)v2 fontContentSizeCategory];
    v17 = *MEMORY[0x277CC4A38];
    v18 = CTFontDescriptorCreateWithTextStyleAndAttributes();
    v19 = CTFontCreateWithFontDescriptor(v18, 0.0, 0);

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized HighlightDisambiguationPillMetricVariant.chevronImage.getter(void *a1)
{
  if ([a1 layoutDirection] == 1)
  {
    v2 = 0xEC0000007466656CLL;
  }

  else
  {
    v2 = 0xED00007468676972;
  }

  v3 = MEMORY[0x231934530](0x2E6E6F7276656863, v2);

  v4 = SLDSystemVectorGlyphWithSlotStyle(a1, v3, 1, 4, 10.0);

  if ([a1 layoutDirection] == 1)
  {
    v5 = 0xEC0000007466656CLL;
  }

  else
  {
    v5 = 0xED00007468676972;
  }

  v6 = MEMORY[0x231934530](0x2E6E6F7276656863, v5);

  v7 = SLDSystemVectorGlyphWithSlotStyle(a1, v6, 1, 4, 10.0);

  [v7 contentBounds];
  v9 = v8;
  v11 = v10;

  v12 = [a1 displayScale];
  v14 = SLDCreateRasterizedVectorGlyph(v4, v13, v9, v11, v12);

  return v14;
}

void specialized HighlightDisambiguationPillMetricVariant.firstLineFontHeight.getter()
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontMenuItem, 0.0, 0);
  if (!UIFontForLanguage)
  {
    goto LABEL_8;
  }

  v1 = UIFontForLanguage;
  CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(UIFontForLanguage, 0.0, 0, 2u, 2u);

  if (!CopyWithSymbolicTraits)
  {
    goto LABEL_8;
  }

  CTFontGetAscent(CopyWithSymbolicTraits);

  v3 = CTFontCreateUIFontForLanguage(kCTFontUIFontMenuItem, 0.0, 0);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = CTFontCreateCopyWithSymbolicTraits(v3, 0.0, 0, 2u, 2u);

  if (!v5)
  {
    goto LABEL_8;
  }

  CTFontGetDescent(v5);

  v6 = CTFontCreateUIFontForLanguage(kCTFontUIFontMenuItem, 0.0, 0);
  if (v6 && (v7 = v6, v8 = CTFontCreateCopyWithSymbolicTraits(v6, 0.0, 0, 2u, 2u), v7, v8))
  {
    CTFontGetLeading(v8);
  }

  else
  {
LABEL_8:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t specialized HighlightDisambiguationPillMetricVariant.firstLineAttributedString(from:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7F0;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = v7;
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontMenuItem, 0.0, 0);
  if (UIFontForLanguage && (v10 = UIFontForLanguage, CopyWithSymbolicTraits = CTFontCreateCopyWithSymbolicTraits(UIFontForLanguage, 0.0, 0, 2u, 2u), v10, CopyWithSymbolicTraits))
  {
    type metadata accessor for CTFontRef(0);
    *(inited + 40) = CopyWithSymbolicTraits;
    v12 = *MEMORY[0x277D740C0];
    *(inited + 64) = v13;
    *(inited + 72) = v12;
    v14 = v12;
    if ([a3 userInterfaceStyle] == 1)
    {
      v15 = 1.0;
      v16 = 1.0;
      v17 = 1.0;
    }

    else
    {
      v15 = 0.0;
      v16 = 0.0;
      v17 = 0.0;
    }

    GenericRGB = CGColorCreateGenericRGB(v15, v16, v17, 1.0);
    type metadata accessor for CGColorRef(0);
    *(inited + 80) = GenericRGB;
    v19 = *MEMORY[0x277CCA318];
    *(inited + 104) = v20;
    *(inited + 112) = v19;
    v21 = v19;
    v22 = [a3 localization];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    *(inited + 144) = MEMORY[0x277D837D0];
    *(inited + 120) = v23;
    *(inited + 128) = v25;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
    swift_arrayDestroy();
    v26 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v27 = MEMORY[0x231934530](a1, a2);
    type metadata accessor for NSAttributedStringKey(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = [v26 initWithString:v27 attributes:isa];

    return v29;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized HighlightDisambiguationPillMetricVariant.firstLineAttributedString(from:)(uint64_t a1, uint64_t a2, void *a3, const __CTFont *a4, CGFloat a5, CGFloat a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7F0;
  v13 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v14 = v13;
  v15 = specialized iOSDisambiguationPillMetric.firstLineFont.getter(a4, a5);
  type metadata accessor for CTFontRef(0);
  *(inited + 40) = v15;
  v16 = *MEMORY[0x277D740C0];
  *(inited + 64) = v17;
  *(inited + 72) = v16;
  v18 = v16;
  if ([a3 userInterfaceStyle] == 1)
  {
    v19 = 1.0;
    v20 = 1.0;
    v21 = 1.0;
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
  }

  GenericRGB = CGColorCreateGenericRGB(v19, v20, v21, a6);
  type metadata accessor for CGColorRef(0);
  *(inited + 80) = GenericRGB;
  v23 = *MEMORY[0x277CCA318];
  *(inited + 104) = v24;
  *(inited + 112) = v23;
  v25 = v23;
  v26 = [a3 localization];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(inited + 144) = MEMORY[0x277D837D0];
  *(inited + 120) = v27;
  *(inited + 128) = v29;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v31 = MEMORY[0x231934530](a1, a2);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v33 = [v30 initWithString:v31 attributes:isa];

  return v33;
}

id specialized HighlightDisambiguationPillMetricVariant.firstLineAttributedString(from:)(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *), CGFloat a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7F0;
  v11 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v12 = v11;
  v13 = a4(a3);
  type metadata accessor for CTFontRef(0);
  *(inited + 40) = v13;
  v14 = *MEMORY[0x277D740C0];
  *(inited + 64) = v15;
  *(inited + 72) = v14;
  v16 = v14;
  GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, a5);
  type metadata accessor for CGColorRef(0);
  *(inited + 80) = GenericRGB;
  v18 = *MEMORY[0x277CCA318];
  *(inited + 104) = v19;
  *(inited + 112) = v18;
  v20 = v18;
  v21 = [a3 localization];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  *(inited + 144) = MEMORY[0x277D837D0];
  *(inited + 120) = v22;
  *(inited + 128) = v24;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v26 = MEMORY[0x231934530](a1, a2);
  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v28 = [v25 initWithString:v26 attributes:isa];

  return v28;
}

uint64_t specialized static DisambiguationPillMetrics.firstLineString(for:)(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v27[-v10];
  if ([a1 isFromMe])
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v5 + 16))(v9, v11, v4);
    v12 = SLFrameworkBundle();
    static Locale.current.getter();
    v13 = String.init(localized:table:bundle:localization:locale:comment:)();
    (*(v5 + 8))(v11, v4);
  }

  else
  {
    v14 = [a1 sender];
    v15 = [v14 shortDisplayName];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      v20 = [a1 sender];
      v21 = [v20 shortDisplayName];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      return v22;
    }

    String.LocalizationValue.init(stringLiteral:)();
    (*(v5 + 16))(v9, v11, v4);
    v24 = SLFrameworkBundle();
    static Locale.current.getter();
    String.init(localized:table:bundle:localization:locale:comment:)();
    (*(v5 + 8))(v11, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_23183D7E0;
    v26 = MEMORY[0x277D83C10];
    *(v25 + 56) = MEMORY[0x277D83B88];
    *(v25 + 64) = v26;
    *(v25 + 32) = 1;
    v13 = static String.localizedStringWithFormat(_:_:)();
  }

  return v13;
}

id specialized static DisambiguationPillMetrics.secondLineString(for:)(void *a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v30[-v10];
  if (![a1 isGroupConversation])
  {
    goto LABEL_8;
  }

  v12 = [a1 groupDisplayName];
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
LABEL_9:
    v23 = [a1 otherRecipientCount];
    v24 = [v23 unsignedIntegerValue];

    if (v24)
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v5 + 16))(v9, v11, v4);
      v25 = SLFrameworkBundle();
      static Locale.current.getter();
      String.init(localized:table:bundle:localization:locale:comment:)();
      (*(v5 + 8))(v11, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_23183D7E0;
      v27 = [a1 otherRecipientCount];
      v28 = [v27 unsignedIntegerValue];

      v29 = MEMORY[0x277D83ED0];
      *(v26 + 56) = MEMORY[0x277D83E88];
      *(v26 + 64) = v29;
      *(v26 + 32) = v28;
      v22 = static String.localizedStringWithFormat(_:_:)();

      return v22;
    }

LABEL_8:
    String.LocalizationValue.init(stringLiteral:)();
    (*(v5 + 16))(v9, v11, v4);
    v21 = SLFrameworkBundle();
    static Locale.current.getter();
    v22 = String.init(localized:table:bundle:localization:locale:comment:)();
    (*(v5 + 8))(v11, v4);
    return v22;
  }

  result = [a1 groupDisplayName];
  if (result)
  {
    v19 = result;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double _s11SocialLayer36SLHighlightDisambiguationPillMetrics33_C5DA7C7764DCEDFB9B9BF94750149602LLVSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t outlined init with copy of HighlightDisambiguationPillMetricVariant(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for iOSDisambiguationPillMetric(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for iOSDisambiguationPillMetric(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for SLHighlightDisambiguationPillMetrics(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 128))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SLHighlightDisambiguationPillMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s11SocialLayer36SLHighlightDisambiguationPillMetrics33_C5DA7C7764DCEDFB9B9BF94750149602LLVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, void (*a2)(uint64_t))
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

CGColorRef static CGColorRef.labelColor(for:)(uint64_t a1)
{
  if (a1)
  {
    v1 = 1.0;
    v2 = 1.0;
    v3 = 1.0;
  }

  else
  {
    v1 = 0.0;
    v2 = 0.0;
    v3 = 0.0;
  }

  return CGColorCreateGenericRGB(v1, v2, v3, 1.0);
}

CGColorRef static CGColorRef.secondaryLabelColor(for:)(uint64_t a1)
{
  if (a1)
  {
    v1 = 0.921568627;
    v2 = 0.960784314;
  }

  else
  {
    v1 = 0.235294118;
    v2 = 0.262745098;
  }

  return CGColorCreateGenericRGB(v1, v1, v2, 0.6);
}

uint64_t CollaborationInitiationResponsePayload.shareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CollaborationInitiationResponsePayload.init(shareURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for CollaborationInitiationResponsePayload()
{
  result = type metadata singleton initialization cache for CollaborationInitiationResponsePayload;
  if (!type metadata singleton initialization cache for CollaborationInitiationResponsePayload)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CollaborationInitiationResponsePayload()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t dispatch thunk of CollaborationInitiationRequest.initiateCollaboration()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = dispatch thunk of CollaborationInitiationRequest.initiateCollaboration();

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CollaborationInitiationRequest.initiateCollaboration()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

Swift::Int Platform.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Platform()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Platform()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x231934D10](v1);
  return Hasher._finalize()();
}

uint64_t CollaborationAttributionViewMetricsProviding.platform.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 >= 6)
  {
    return 2;
  }

  else
  {
    return (0x202030102uLL >> (8 * v1));
  }
}

double CollaborationAttributionViewMetricsProviding.placeholderGlyphMinSize.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  v5 = (*(*(a2 + 8) + 8))(a1);
  [v4 minViableSizeWithStyle_];
  v7 = v6;

  return v7;
}

CTFontRef CollaborationAttributionViewMetricsProviding.baseFont.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v5 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMR);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_23183D7E0;
  v7 = *MEMORY[0x277CC4948];
  *(v6 + 32) = *MEMORY[0x277CC4948];
  *(v6 + 40) = 0x8000;
  v8 = v5;
  v9 = v7;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SiTt0g5Tf4g_n(v6);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v6 + 32, &_sSo11CFStringRefa_SitMd, &_sSo11CFStringRefa_SitMR);
  *(inited + 40) = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSiGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABSiGtMd, &_sSo11CFStringRefa_SDyABSiGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSiGMd, &_sSDySo11CFStringRefaSiGMR);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = (*(*(a2 + 8) + 8))(a1);
  v13 = CTContentSizeCategoryForSlotStyle(v12);

  v14 = *MEMORY[0x277CC4A90];
  v15 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v16 = CTFontCreateWithFontDescriptor(v15, 0.0, 0);

  return v16;
}

uint64_t CollaborationAttributionViewMetricsProviding.titleAttributedString(for:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v41 - v14;
  result = (*(v16 + 40))(v17, v16);
  if (result)
  {
    v19 = result;
    if (String.count.getter() < 1)
    {

      return 0;
    }

    v20 = *(v9 + 16);
    v20(v15, v4, a4);
    v21 = v19;
    if (swift_dynamicCast() || (v20(v13, v4, a4), swift_dynamicCast()))
    {
      v22 = v41[15];

      v23 = specialized static CollaborationAttributionViewMetricsProvider.boldFontWithFont(font:)(v21);
      if (a3)
      {
LABEL_6:
        v24 = 1.0;
        v25 = 1.0;
        v26 = 1.0;
LABEL_10:
        GenericRGB = CGColorCreateGenericRGB(v24, v25, v26, 1.0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_23183D0C0;
        v29 = *MEMORY[0x277D740A8];
        *(inited + 32) = *MEMORY[0x277D740A8];
        type metadata accessor for CTFontRef(0);
        *(inited + 40) = v23;
        v30 = *MEMORY[0x277D740C0];
        *(inited + 64) = v31;
        *(inited + 72) = v30;
        type metadata accessor for CGColorRef(0);
        *(inited + 104) = v32;
        *(inited + 80) = GenericRGB;
        v33 = v29;
        v34 = v23;
        v35 = v30;
        v36 = GenericRGB;
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
        swift_arrayDestroy();
        v37 = objc_allocWithZone(MEMORY[0x277CCAB48]);
        v38 = MEMORY[0x231934530](a1, a2);
        type metadata accessor for NSAttributedStringKey(0);
        _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v40 = [v37 initWithString:v38 attributes:isa];

        return v40;
      }
    }

    else
    {
      v23 = v21;
      if (a3)
      {
        goto LABEL_6;
      }
    }

    v24 = 0.0;
    v25 = 0.0;
    v26 = 0.0;
    goto LABEL_10;
  }

  return result;
}

uint64_t CollaborationAttributionViewMetricsProviding.subtitleAttributedString(for:style:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a5 + 40))(a4, a5);
  if (result)
  {
    v9 = result;
    if (String.count.getter() < 1)
    {

      return 0;
    }

    else
    {
      if (a3)
      {
        v10 = 0.921568627;
        v11 = 0.960784314;
      }

      else
      {
        v10 = 0.235294118;
        v11 = 0.262745098;
      }

      GenericRGB = CGColorCreateGenericRGB(v10, v10, v11, 0.6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23183D0C0;
      v14 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      type metadata accessor for CTFontRef(0);
      *(inited + 40) = v9;
      v15 = *MEMORY[0x277D740C0];
      *(inited + 64) = v16;
      *(inited + 72) = v15;
      type metadata accessor for CGColorRef(0);
      *(inited + 104) = v17;
      *(inited + 80) = GenericRGB;
      v18 = v14;
      v19 = v9;
      v20 = v15;
      v21 = GenericRGB;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      swift_arrayDestroy();
      v22 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v23 = MEMORY[0x231934530](a1, a2);
      type metadata accessor for NSAttributedStringKey(0);
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = [v22 initWithString:v23 attributes:isa];

      return v25;
    }
  }

  return result;
}

id CollaborationAttributionViewStandardMetrics.intrinsicHeight.getter(void *a1, void *a2)
{
  descent[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 userInterfaceStyle];
  v5 = specialized CollaborationAttributionViewMetricsProviding.titleAttributedString(for:style:)(0x6C6F686563616C50, 0xEB00000000726564, v4, a1, MEMORY[0x277CC4A90]);
  if (v5)
  {
    v6 = v5;
    v7 = CTLineCreateWithAttributedString(v5);
    TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

    if (TruncatedLineWithTokenHandler)
    {
      CTLineGetBoundsWithOptions(TruncatedLineWithTokenHandler, 8uLL);
      ascent = 0.0;
      descent[0] = 0.0;
      CTLineGetTypographicBounds(TruncatedLineWithTokenHandler, &ascent, descent, 0);
    }
  }

  v9 = [a1 userInterfaceStyle];
  v10 = specialized CollaborationAttributionViewMetricsProviding.subtitleAttributedString(for:style:)(0x6C6F686563616C50, 0xEB00000000726564, v9, a1, MEMORY[0x277CC4A90]);
  if (v10)
  {
    v11 = v10;
    v12 = CTLineCreateWithAttributedString(v10);
    v13 = CTLineCreateTruncatedLineWithTokenHandler();

    if (v13)
    {
      CTLineGetBoundsWithOptions(v13, 8uLL);
      ascent = 0.0;
      descent[0] = 0.0;
      CTLineGetTypographicBounds(v13, &ascent, descent, 0);
    }
  }

  result = [a2 minViableSizeWithStyle_];
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static CollaborationAttributionViewMetricsProvider.singleLineTitle<A>(for:metrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, id, uint64_t, uint64_t))
{
  v11 = *(a5 + 8);
  v12 = (*(v11 + 8))(a4, v11);
  v13 = [v12 userInterfaceStyle];

  v14 = a6(a1, a2, v13, a4, a5);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  v16 = CTLineCreateWithAttributedString(v14);
  (*(v11 + 16))(a4, v11);
  (*(a5 + 32))(a4, a5);
  (*(a5 + 48))(a4, a5);
  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

  return TruncatedLineWithTokenHandler;
}

double protocol witness for RemoteViewMetricsProviding.drawingSize() in conformance CollaborationAttributionViewStandardMetrics()
{
  v1 = *(v0 + 8);
  CollaborationAttributionViewStandardMetrics.intrinsicHeight.getter(*v0, *(v0 + 16));
  return v1;
}

id CollaborationAttributionViewStandardVisionMetrics.intrinsicHeight.getter(void *a1, void *a2)
{
  descent[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 userInterfaceStyle];
  v5 = specialized CollaborationAttributionViewMetricsProviding.titleAttributedString(for:style:)(0x6C6F686563616C50, 0xEB00000000726564, v4, a1, MEMORY[0x277CC4A30]);
  if (v5)
  {
    v6 = v5;
    v7 = CTLineCreateWithAttributedString(v5);
    TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

    if (TruncatedLineWithTokenHandler)
    {
      CTLineGetBoundsWithOptions(TruncatedLineWithTokenHandler, 8uLL);
      ascent = 0.0;
      descent[0] = 0.0;
      CTLineGetTypographicBounds(TruncatedLineWithTokenHandler, &ascent, descent, 0);
    }
  }

  v9 = [a1 userInterfaceStyle];
  v10 = specialized CollaborationAttributionViewMetricsProviding.subtitleAttributedString(for:style:)(0x6C6F686563616C50, 0xEB00000000726564, v9, a1, MEMORY[0x277CC4A30]);
  if (v10)
  {
    v11 = v10;
    v12 = CTLineCreateWithAttributedString(v10);
    v13 = CTLineCreateTruncatedLineWithTokenHandler();

    if (v13)
    {
      CTLineGetBoundsWithOptions(v13, 8uLL);
      ascent = 0.0;
      descent[0] = 0.0;
      CTLineGetTypographicBounds(v13, &ascent, descent, 0);
    }
  }

  result = [a2 minViableSizeWithStyle_];
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

double protocol witness for RemoteViewMetricsProviding.drawingSize() in conformance CollaborationAttributionViewStandardVisionMetrics()
{
  v1 = *(v0 + 8);
  CollaborationAttributionViewStandardVisionMetrics.intrinsicHeight.getter(*v0, *(v0 + 16));
  return v1;
}

double protocol witness for RemoteViewMetricsProviding.drawingSize() in conformance CollaborationAttributionViewCompactMetrics()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  [v3 minViableSizeWithStyle_];
  if (v2 > v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  [v3 minViableSizeWithStyle_];
  return v5;
}

double protocol witness for RemoteViewMetricsProviding.drawingSize() in conformance CollaborationAttributionViewCompactVisionMetrics()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = v0[2];
  v4 = v2 + -8.0;
  [v3 minViableSizeWithStyle_];
  if (v4 > v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  [v3 minViableSizeWithStyle_];
  return v6;
}

id CollaborationAttributionViewConversationMetrics.intrinsicHeight.getter(id a1, void *a2)
{
  descent[1] = *MEMORY[0x277D85DE8];
  v4 = _s11SocialLayer43CollaborationAttributionViewMetricsProviderC15singleLineTitle3for7metricsSo9CTLineRefaSgSS_xtAA0cdeF9ProvidingRzlFZAA0cde12ConversationF033_7A1E2A6E1127C7C0B9C39195EE6C007BLLV_Tt1g5Tf4nx_n(0x6C6F686563616C50, 0xEB00000000726564, a1);
  if (v4)
  {
    v5 = v4;
    CTLineGetBoundsWithOptions(v4, 8uLL);
    ascent = 0.0;
    descent[0] = 0.0;
    CTLineGetTypographicBounds(v5, &ascent, descent, 0);
  }

  v6 = [objc_opt_self() currentDevice];
  [v6 userInterfaceIdiom];

  result = [a2 minViableSizeWithStyle_];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

double protocol witness for CollaborationAttributionViewMetricsProviding.avatarDiameter.getter in conformance CollaborationAttributionViewConversationMetrics()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 30.0;
  if (v1 == 5)
  {
    return 20.0;
  }

  return result;
}

double protocol witness for CollaborationAttributionViewMetricsProviding.avatarLabelSpace.getter in conformance CollaborationAttributionViewConversationMetrics()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 10.0;
  if (v1 == 5)
  {
    return 8.0;
  }

  return result;
}

double protocol witness for RemoteViewMetricsProviding.drawingSize() in conformance CollaborationAttributionViewConversationMetrics()
{
  v1 = *(v0 + 8);
  CollaborationAttributionViewConversationMetrics.intrinsicHeight.getter(*v0, *(v0 + 16));
  return v1;
}

id CollaborationAttributionViewConversationVisionMetrics.intrinsicHeight.getter(void *a1, void *a2)
{
  descent[1] = *MEMORY[0x277D85DE8];
  v4 = specialized CollaborationAttributionViewMetricsProviding.titleAttributedString(for:style:)(0x6C6F686563616C50, 0xEB00000000726564, [a1 userInterfaceStyle], a1);
  if (v4)
  {
    v5 = v4;
    v6 = CTLineCreateWithAttributedString(v4);
    TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();

    if (TruncatedLineWithTokenHandler)
    {
      CTLineGetBoundsWithOptions(TruncatedLineWithTokenHandler, 8uLL);
      ascent = 0.0;
      descent[0] = 0.0;
      CTLineGetTypographicBounds(TruncatedLineWithTokenHandler, &ascent, descent, 0);
    }
  }

  result = [a2 minViableSizeWithStyle_];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double protocol witness for RemoteViewMetricsProviding.drawingSize() in conformance CollaborationAttributionViewConversationVisionMetrics()
{
  v1 = *(v0 + 8);
  CollaborationAttributionViewConversationVisionMetrics.intrinsicHeight.getter(*v0, *(v0 + 16));
  return v1;
}

id CollaborationAttributionViewMetricsProvider.__allocating_init(slotStyle:tag:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = [a2 variant];
  [a2 maxWidth];
  v9 = v8;
  v10 = [a2 placeholderGlyphConfiguration];
  v11 = [v6 initWithVariant:v7 slotStyle:a1 maxWidth:v10 placeholderGlyphConfig:v9];

  return v11;
}

id CollaborationAttributionViewMetricsProvider.init(slotStyle:tag:)(void *a1, id a2)
{
  v5 = [a2 variant];
  [a2 maxWidth];
  v7 = v6;
  v8 = [a2 placeholderGlyphConfiguration];
  v9 = [v2 initWithVariant:v5 slotStyle:a1 maxWidth:v8 placeholderGlyphConfig:v7];

  return v9;
}

id CollaborationAttributionViewMetricsProvider.__allocating_init(variant:slotStyle:maxWidth:placeholderGlyphConfig:)(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  if (a1 >= 6)
  {
    type metadata accessor for SLCollaborationAttributionViewMetricVariant(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v10 = off_278927A48[a1];
    v11 = &v9[OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics];
    *(v11 + 3) = *(&off_278927A18 + a1);
    *(v11 + 4) = v10;
    *v11 = a2;
    *(v11 + 1) = a4;
    *(v11 + 2) = a3;
    v13.receiver = v9;
    v13.super_class = v4;
    return objc_msgSendSuper2(&v13, sel_init);
  }

  return result;
}

id CollaborationAttributionViewMetricsProvider.init(variant:slotStyle:maxWidth:placeholderGlyphConfig:)(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a1 >= 6)
  {
    type metadata accessor for SLCollaborationAttributionViewMetricVariant(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v5 = off_278927A48[a1];
    v6 = &v4[OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics];
    *(v6 + 3) = *(&off_278927A18 + a1);
    *(v6 + 4) = v5;
    *v6 = a2;
    *(v6 + 1) = a4;
    *(v6 + 2) = a3;
    v8.receiver = v4;
    v8.super_class = type metadata accessor for CollaborationAttributionViewMetricsProvider();
    return objc_msgSendSuper2(&v8, sel_init);
  }

  return result;
}

id CollaborationAttributionViewMetricsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CollaborationAttributionViewMetricsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollaborationAttributionViewMetricsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t CollaborationAttributionViewMetricsProvider.drawingSize.getter()
{
  v1 = (v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics);
  v2 = *(v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics + 24);
  v3 = *(v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics + 32);
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 8) + 24))(v2);
}

uint64_t CollaborationAttributionViewMetricsProvider.avatarDiameter.getter()
{
  v1 = *(v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics + 24);
  v2 = *(v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics), v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t CollaborationAttributionViewMetricsProvider.avatarLabelSpace.getter()
{
  v1 = *(v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics + 24);
  v2 = *(v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics), v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t CollaborationAttributionViewMetricsProvider.titleSubtitleSpace.getter()
{
  v1 = *(v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics + 24);
  v2 = *(v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics), v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t CollaborationAttributionViewMetricsProvider.singleLineTitle(for:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v7 = (v3 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics);
  v8 = *(v3 + OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics + 24);
  v9 = v7[4];
  v10 = __swift_project_boxed_opaque_existential_1(v7, v8);
  type metadata accessor for CollaborationAttributionViewMetricsProvider();
  return a3(a1, a2, v10, v8, v9);
}

id @objc CollaborationAttributionViewMetricsProvider.singleLineTitle(for:)(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, void *, uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *&a1[OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics + 24];
  v10 = *&a1[OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics + 32];
  v11 = __swift_project_boxed_opaque_existential_1(&a1[OBJC_IVAR___SLCollaborationAttributionViewMetricsProvider_metrics], v9);
  type metadata accessor for CollaborationAttributionViewMetricsProvider();
  v12 = a1;
  v13 = a4(v6, v8, v11, v9, v10);

  return v13;
}

unint64_t lazy protocol witness table accessor for type Platform and conformance Platform()
{
  result = lazy protocol witness table cache variable for type Platform and conformance Platform;
  if (!lazy protocol witness table cache variable for type Platform and conformance Platform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Platform and conformance Platform);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Platform(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Platform(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CollaborationAttributionViewStandardMetrics(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CollaborationAttributionViewStandardMetrics(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

CTFontRef specialized static CollaborationAttributionViewMetricsProvider.boldFontWithFont(font:)(const __CTFont *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v3 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMR);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_23183D7E0;
  v5 = *MEMORY[0x277CC4948];
  *(v4 + 32) = *MEMORY[0x277CC4948];
  *(v4 + 40) = 32770;
  v6 = v3;
  v7 = v5;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SiTt0g5Tf4g_n(v4);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v4 + 32, &_sSo11CFStringRefa_SitMd, &_sSo11CFStringRefa_SitMR);
  *(inited + 40) = v8;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSiGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABSiGtMd, &_sSo11CFStringRefa_SDyABSiGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSiGMd, &_sSDySo11CFStringRefaSiGMR);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = CTFontCopyFontDescriptor(a1);
  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v10, isa);
  v12 = CTFontCreateWithFontDescriptor(CopyWithAttributes, 0.0, 0);

  return v12;
}

CTFontRef specialized CollaborationAttributionViewMetricsProviding.baseFont.getter(void *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SDyADSiGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23183D7E0;
  v5 = *MEMORY[0x277CC4950];
  *(inited + 32) = *MEMORY[0x277CC4950];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_SitGMR);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_23183D7E0;
  v7 = *MEMORY[0x277CC4948];
  *(v6 + 32) = *MEMORY[0x277CC4948];
  *(v6 + 40) = 0x8000;
  v8 = v5;
  v9 = v7;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SiTt0g5Tf4g_n(v6);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(v6 + 32, &_sSo11CFStringRefa_SitMd, &_sSo11CFStringRefa_SitMR);
  *(inited + 40) = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyADSiGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, [CFStringRef? : Any])(inited + 32, &_sSo11CFStringRefa_SDyABSiGtMd, &_sSo11CFStringRefa_SDyABSiGtMR);
  type metadata accessor for CFStringRef(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaSiGMd, &_sSDySo11CFStringRefaSiGMR);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = CTContentSizeCategoryForSlotStyle(a1);
  v13 = *a2;
  v14 = CTFontDescriptorCreateWithTextStyleAndAttributes();
  v15 = CTFontCreateWithFontDescriptor(v14, 0.0, 0);

  return v15;
}

CTFontRef specialized CollaborationAttributionViewMetricsProviding.titleAttributedString(for:style:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  result = specialized CollaborationAttributionViewMetricsProviding.baseFont.getter(a4, a5);
  if (result)
  {
    v9 = result;
    if (String.count.getter() <= 0)
    {

      return 0;
    }

    else
    {
      v10 = v9;
      v11 = specialized static CollaborationAttributionViewMetricsProvider.boldFontWithFont(font:)(v10);

      if (a3)
      {
        v12 = 1.0;
        v13 = 1.0;
        v14 = 1.0;
      }

      else
      {
        v12 = 0.0;
        v13 = 0.0;
        v14 = 0.0;
      }

      GenericRGB = CGColorCreateGenericRGB(v12, v13, v14, 1.0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23183D0C0;
      v17 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      type metadata accessor for CTFontRef(0);
      *(inited + 40) = v11;
      v18 = *MEMORY[0x277D740C0];
      *(inited + 64) = v19;
      *(inited + 72) = v18;
      type metadata accessor for CGColorRef(0);
      *(inited + 104) = v20;
      *(inited + 80) = GenericRGB;
      v21 = v17;
      v22 = v11;
      v23 = v18;
      v24 = GenericRGB;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      swift_arrayDestroy();
      v25 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v26 = MEMORY[0x231934530](a1, a2);
      type metadata accessor for NSAttributedStringKey(0);
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v28 = [v25 initWithString:v26 attributes:isa];

      return v28;
    }
  }

  return result;
}

CTFontRef specialized CollaborationAttributionViewMetricsProviding.titleAttributedString(for:style:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = specialized CollaborationAttributionViewMetricsProviding.baseFont.getter(a4, MEMORY[0x277CC4A30]);
  if (result)
  {
    v8 = result;
    if (String.count.getter() <= 0)
    {

      return 0;
    }

    else
    {
      if (a3)
      {
        v9 = 1.0;
        v10 = 1.0;
        v11 = 1.0;
      }

      else
      {
        v9 = 0.0;
        v10 = 0.0;
        v11 = 0.0;
      }

      GenericRGB = CGColorCreateGenericRGB(v9, v10, v11, 1.0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23183D0C0;
      v14 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      type metadata accessor for CTFontRef(0);
      *(inited + 40) = v8;
      v15 = *MEMORY[0x277D740C0];
      *(inited + 64) = v16;
      *(inited + 72) = v15;
      type metadata accessor for CGColorRef(0);
      *(inited + 104) = v17;
      *(inited + 80) = GenericRGB;
      v18 = v14;
      v19 = v8;
      v20 = v15;
      v21 = GenericRGB;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      swift_arrayDestroy();
      v22 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v23 = MEMORY[0x231934530](a1, a2);
      type metadata accessor for NSAttributedStringKey(0);
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = [v22 initWithString:v23 attributes:isa];

      return v25;
    }
  }

  return result;
}

uint64_t _sSo11CFStringRefaABSHSCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

CTFontRef specialized CollaborationAttributionViewMetricsProviding.subtitleAttributedString(for:style:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  result = specialized CollaborationAttributionViewMetricsProviding.baseFont.getter(a4, a5);
  if (result)
  {
    v9 = result;
    if (String.count.getter() < 1)
    {

      return 0;
    }

    else
    {
      if (a3)
      {
        v10 = 0.921568627;
        v11 = 0.960784314;
      }

      else
      {
        v10 = 0.235294118;
        v11 = 0.262745098;
      }

      GenericRGB = CGColorCreateGenericRGB(v10, v10, v11, 0.6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23183D0C0;
      v14 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      type metadata accessor for CTFontRef(0);
      *(inited + 40) = v9;
      v15 = *MEMORY[0x277D740C0];
      *(inited + 64) = v16;
      *(inited + 72) = v15;
      type metadata accessor for CGColorRef(0);
      *(inited + 104) = v17;
      *(inited + 80) = GenericRGB;
      v18 = v14;
      v19 = v9;
      v20 = v15;
      v21 = GenericRGB;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      swift_arrayDestroy();
      v22 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v23 = MEMORY[0x231934530](a1, a2);
      type metadata accessor for NSAttributedStringKey(0);
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = [v22 initWithString:v23 attributes:isa];

      return v25;
    }
  }

  return result;
}

uint64_t _s11SocialLayer43CollaborationAttributionViewMetricsProviderC15singleLineTitle3for7metricsSo9CTLineRefaSgSS_xtAA0cdeF9ProvidingRzlFZAA0cde12ConversationF033_7A1E2A6E1127C7C0B9C39195EE6C007BLLV_Tt1g5Tf4nx_n(uint64_t a1, uint64_t a2, id a3)
{
  v3 = specialized CollaborationAttributionViewMetricsProviding.titleAttributedString(for:style:)(a1, a2, [a3 userInterfaceStyle], a3);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CTLineCreateWithAttributedString(v3);
  v6 = objc_opt_self();
  v7 = [v6 currentDevice];
  [v7 userInterfaceIdiom];

  v8 = [v6 currentDevice];
  [v8 userInterfaceIdiom];

  TruncatedLineWithTokenHandler = CTLineCreateTruncatedLineWithTokenHandler();
  return TruncatedLineWithTokenHandler;
}

uint64_t one-time initialization function for customCollaborationInitiation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.customCollaborationInitiation);
  __swift_project_value_buffer(v0, static Log.customCollaborationInitiation);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.customCollaborationInitiation.unsafeMutableAddressor()
{
  if (one-time initialization token for customCollaborationInitiation != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Log.customCollaborationInitiation);
}

uint64_t static Log.customCollaborationInitiation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for customCollaborationInitiation != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Log.customCollaborationInitiation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ThirdPartyCollaborationInitiationRequest.Response.shareURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ThirdPartyCollaborationInitiationRequest.Response.recipients.getter()
{
  v1 = *(v0 + *(type metadata accessor for ThirdPartyCollaborationInitiationRequest.Response(0) + 20));
}

id ThirdPartyCollaborationInitiationRequest.Response.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for ThirdPartyCollaborationInitiationRequest.Response(0) + 24));

  return v1;
}

void ThirdPartyCollaborationInitiationRequest.Response.recipientPayloads.getter()
{
  v1 = *(v0 + *(type metadata accessor for ThirdPartyCollaborationInitiationRequest.Response(0) + 20));
  v3 = v0;
  specialized Sequence.reduce<A>(into:_:)(MEMORY[0x277D84F98], partial apply for closure #1 in ThirdPartyCollaborationInitiationRequest.Response.recipientPayloads.getter, &v2, v1);
}

void closure #1 in ThirdPartyCollaborationInitiationRequest.Response.recipientPayloads.getter(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMd, &_s11SocialLayer38CollaborationInitiationResponsePayloadVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = *a2;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 16))(v8, a3, v10);
  v11 = type metadata accessor for CollaborationInitiationResponsePayload();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  specialized Dictionary.subscript.setter(v8, v9);
}

void specialized Sequence.reduce<A>(into:_:)(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v22 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v6 = v21[1];
    v7 = v21[2];
    v8 = v21[3];
    v9 = v21[4];
    v10 = v21[5];
  }

  else
  {
    v11 = -1 << *(a4 + 32);
    v7 = a4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a4 + 56);

    v9 = 0;
  }

  v20 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v21[0] = v18;
        a2(&v22, v21);
        if (v5)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        v6 = v20;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
          swift_dynamicCast();
          v18 = v21[0];
          v16 = v9;
          v17 = v10;
          if (v21[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      outlined consume of Set<TUHandle>.Iterator._Variant();
    }

    else
    {
LABEL_19:
      outlined consume of Set<TUHandle>.Iterator._Variant();
    }
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t ThirdPartyCollaborationInitiationRequest.Response.init(shareURL:recipients:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for ThirdPartyCollaborationInitiationRequest.Response(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t ThirdPartyCollaborationInitiationRequest.recipients.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t ThirdPartyCollaborationInitiationRequest.recipients.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

id ThirdPartyCollaborationInitiationRequest.shareOptions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void ThirdPartyCollaborationInitiationRequest.shareOptions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

id ThirdPartyCollaborationInitiationRequest.metadata.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

void ThirdPartyCollaborationInitiationRequest.metadata.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t key path setter for ThirdPartyCollaborationInitiationRequest.url : ThirdPartyCollaborationInitiationRequest(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  outlined init with copy of URL?(a1, &v9 - v6);
  return (*(**a2 + 192))(v7);
}

uint64_t ThirdPartyCollaborationInitiationRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11SocialLayer40ThirdPartyCollaborationInitiationRequest_url;
  swift_beginAccess();
  return outlined init with copy of URL?(v1 + v3, a1);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ThirdPartyCollaborationInitiationRequest.url.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11SocialLayer40ThirdPartyCollaborationInitiationRequest_url;
  swift_beginAccess();
  outlined assign with take of URL?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *ThirdPartyCollaborationInitiationRequest.__allocating_init(recipients:shareOptions:metadata:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC11SocialLayer40ThirdPartyCollaborationInitiationRequest_url;
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  swift_beginAccess();
  outlined assign with take of URL?(a4, &v11[v12]);
  swift_endAccess();
  return v11;
}

char *ThirdPartyCollaborationInitiationRequest.init(recipients:shareOptions:metadata:url:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC11SocialLayer40ThirdPartyCollaborationInitiationRequest_url;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *(v4 + 2) = a1;
  *(v4 + 3) = a2;
  *(v4 + 4) = a3;
  swift_beginAccess();
  outlined assign with take of URL?(a4, &v4[v9]);
  swift_endAccess();
  return v4;
}

uint64_t ThirdPartyCollaborationInitiationRequest.initiateCollaboration()(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_So24_SWCollaborationMetadataCtMd, &_s10Foundation3URLV_So24_SWCollaborationMetadataCtMR);
  v2[36] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[40] = v5;
  v6 = *(v5 - 8);
  v2[41] = v6;
  v7 = *(v6 + 64) + 15;
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](ThirdPartyCollaborationInitiationRequest.initiateCollaboration(), 0, 0);
}

uint64_t ThirdPartyCollaborationInitiationRequest.initiateCollaboration()()
{
  v91 = v0;
  if (one-time initialization token for customCollaborationInitiation != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 280);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.customCollaborationInitiation);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v88 = v4;
    v5 = *(v0 + 424);
    v6 = *(v0 + 432);
    v7 = *(v0 + 328);
    v89 = *(v0 + 320);
    v8 = *(v0 + 280);
    v9 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v90[0] = v87;
    *v9 = 136315650;
    (*(*v8 + 112))();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUHandle, 0x277D6EEE8);
    lazy protocol witness table accessor for type TUHandle and conformance NSObject();
    v10 = Set.description.getter();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v90);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    (*(*v8 + 184))(v14);
    outlined init with copy of URL?(v6, v5);
    if ((*(v7 + 48))(v5, 1, v89) == 1)
    {
      v15 = 0xE300000000000000;
      v16 = 7104878;
    }

    else
    {
      v18 = *(v0 + 360);
      v19 = *(v0 + 368);
      v21 = *(v0 + 320);
      v20 = *(v0 + 328);
      (*(v20 + 32))(v19, *(v0 + 424), v21);
      (*(v20 + 16))(v18, v19, v21);
      v16 = String.init<A>(reflecting:)();
      v15 = v22;
      (*(v20 + 8))(v19, v21);
    }

    v23 = *(v0 + 280);
    outlined destroy of URL?(*(v0 + 432));
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, v90);

    *(v9 + 14) = v24;
    *(v9 + 22) = 2080;
    v26 = (*(*v23 + 136))(v25);
    v27 = [v26 optionsGroups];

    if (!v27)
    {
      __break(1u);
      return MEMORY[0x282200938](v28);
    }

    v29 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for _SWCollaborationOptionsGroup, 0x277CDC6D0);
    v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = MEMORY[0x231934700](v30, v29);
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, v90);

    *(v9 + 24) = v34;
    _os_log_impl(&dword_231772000, v3, v88, "Received request to initiate collaboration with: %s, url: %s, optionsGroup: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2319361B0](v87, -1, -1);
    MEMORY[0x2319361B0](v9, -1, -1);
  }

  else
  {
    v17 = *(v0 + 280);
  }

  v35 = *(v0 + 416);
  v36 = *(v0 + 320);
  v37 = *(v0 + 328);
  v38 = *(v0 + 280);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v39 = static OS_dispatch_queue.main.getter();
  v40 = [objc_allocWithZone(SLCollaborationHandshakeController) initWithTargetSerialQueue:v39 synchronous:1];
  *(v0 + 440) = v40;

  v41 = *(*v38 + 184);
  v42 = (*v38 + 184) & 0xFFFFFFFFFFFFLL | 0xF6F5000000000000;
  *(v0 + 448) = v41;
  *(v0 + 456) = v42;
  v41();
  v43 = *(v37 + 48);
  *(v0 + 464) = v43;
  *(v0 + 472) = (v37 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v44 = v43(v35, 1, v36);
  v45 = *(v0 + 416);
  if (v44)
  {
    v46 = outlined destroy of URL?(*(v0 + 416));
    v47 = 0;
  }

  else
  {
    v48 = *(v0 + 368);
    v49 = v40;
    v51 = *(v0 + 320);
    v50 = *(v0 + 328);
    (*(v50 + 16))(v48, v45, v51);
    outlined destroy of URL?(v45);
    v47 = URL.startAccessingSecurityScopedResource()();
    v46 = (*(v50 + 8))(v48, v51);
    v40 = v49;
  }

  *(v0 + 584) = v47;
  v52 = *(v0 + 408);
  v53 = *(v0 + 320);
  v54 = *(v0 + 280);
  (v41)(v46);
  v55 = v43(v52, 1, v53);
  v56 = *(v0 + 408);
  if (v55 == 1)
  {
    v57 = v0 + 16;
    v58 = *(v0 + 296);
    v59 = *(v0 + 280);
    v60 = outlined destroy of URL?(*(v0 + 408));
    v61 = (*(*v59 + 160))(v60);
    *(v0 + 544) = v61;
    v62 = *(*v59 + 112);
    v63 = *v59 + 112;
    *(v0 + 552) = v62;
    *(v0 + 560) = v63 & 0xFFFFFFFFFFFFLL | 0xF6E8000000000000;
    v64 = v62();
    specialized Sequence.compactMap<A>(_:)(v64);
    v66 = v65;

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v66);

    isa = Set._bridgeToObjectiveC()().super.isa;
    *(v0 + 568) = isa;

    *(v0 + 16) = v0;
    *(v0 + 56) = v58;
    *(v0 + 24) = ThirdPartyCollaborationInitiationRequest.initiateCollaboration();
    v68 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLV_So24_SWCollaborationMetadataCts5Error_pGMd, &_sSccy10Foundation3URLV_So24_SWCollaborationMetadataCts5Error_pGMR);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned _SWCollaborationMetadata?, @unowned NSError?) -> () with result type (URL, _SWCollaborationMetadata);
    *(v0 + 168) = &block_descriptor;
    *(v0 + 176) = v68;
    [v40 startCollaborationWithMetadata:v61 participants:isa timeout:v0 + 144 completion:30.0];
  }

  else
  {
    v57 = v0 + 80;
    v69 = *(v0 + 352);
    v70 = *(v0 + 320);
    v71 = *(v0 + 328);
    v72 = *(v0 + 312);
    v73 = *(v0 + 280);
    v74 = *(v71 + 32);
    *(v0 + 480) = v74;
    *(v0 + 488) = (v71 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v74(v69, v56, v70);
    URL._bridgeToObjectiveC()(v75);
    v77 = v76;
    *(v0 + 496) = v76;
    v78 = (*(*v73 + 160))();
    *(v0 + 504) = v78;
    v79 = *(*v73 + 112);
    v80 = *v73 + 112;
    *(v0 + 512) = v79;
    *(v0 + 520) = v80 & 0xFFFFFFFFFFFFLL | 0xF6E8000000000000;
    v81 = v79();
    specialized Sequence.compactMap<A>(_:)(v81);
    v83 = v82;

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v83);

    v84 = Set._bridgeToObjectiveC()().super.isa;
    *(v0 + 528) = v84;

    *(v0 + 80) = v0;
    *(v0 + 120) = v72;
    *(v0 + 88) = ThirdPartyCollaborationInitiationRequest.initiateCollaboration();
    v85 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLV_So24_SWCollaborationMetadataCts5Error_pGMd, &_sSccy10Foundation3URLV_So24_SWCollaborationMetadataCts5Error_pGMR);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned _SWCollaborationMetadata?, @unowned NSError?) -> () with result type (URL, _SWCollaborationMetadata);
    *(v0 + 232) = &block_descriptor_4;
    *(v0 + 240) = v85;
    [v40 startCollaborationWithFileURL:v77 metadata:v78 participants:v84 timeout:v0 + 208 completion:30.0];
  }

  v28 = v57;

  return MEMORY[0x282200938](v28);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 536) = v2;
  if (v2)
  {
    v3 = ThirdPartyCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v3 = ThirdPartyCollaborationInitiationRequest.initiateCollaboration();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 528);
  v42 = *(v0 + 512);
  v44 = *(v0 + 520);
  v2 = *(v0 + 488);
  v40 = *(v0 + 496);
  v3 = *(v0 + 480);
  v50 = *(v0 + 584);
  v4 = *(v0 + 344);
  v48 = *(v0 + 352);
  v5 = *(v0 + 320);
  v6 = *(v0 + 328);
  v7 = *(v0 + 304);
  v8 = *(v0 + 288);
  v38 = *(v0 + 504);
  v39 = *(v0 + 280);
  v9 = *(v0 + 272);
  outlined init with take of (URL, _SWCollaborationMetadata)(*(v0 + 312), v7);
  v46 = *(v7 + *(v8 + 48));
  v3(v4, v7, v5);

  v10 = *(v6 + 16);
  v11 = v10(v9, v4, v5);
  v12 = v42(v11);
  v13 = *(v6 + 8);
  v13(v4, v5);
  v13(v48, v5);
  v14 = type metadata accessor for ThirdPartyCollaborationInitiationRequest.Response(0);
  *(v9 + *(v14 + 20)) = v12;
  *(v9 + *(v14 + 24)) = v46;
  if (v50 == 1)
  {
    v16 = *(v0 + 464);
    v15 = *(v0 + 472);
    v17 = *(v0 + 456);
    v18 = *(v0 + 400);
    v19 = *(v0 + 320);
    v20 = *(v0 + 280);
    (*(v0 + 448))();
    v21 = v16(v18, 1, v19);
    v22 = *(v0 + 440);
    v23 = *(v0 + 400);
    if (v21)
    {

      outlined destroy of URL?(v23);
    }

    else
    {
      v24 = *(v0 + 368);
      v25 = *(v0 + 320);
      v10(v24, *(v0 + 400), v25);
      outlined destroy of URL?(v23);
      URL.stopAccessingSecurityScopedResource()();

      v13(v24, v25);
    }
  }

  else
  {
  }

  v27 = *(v0 + 424);
  v26 = *(v0 + 432);
  v29 = *(v0 + 408);
  v28 = *(v0 + 416);
  v31 = *(v0 + 392);
  v30 = *(v0 + 400);
  v33 = *(v0 + 376);
  v32 = *(v0 + 384);
  v34 = *(v0 + 360);
  v35 = *(v0 + 368);
  v41 = *(v0 + 352);
  v43 = *(v0 + 344);
  v45 = *(v0 + 336);
  v47 = *(v0 + 312);
  v49 = *(v0 + 304);
  v51 = *(v0 + 296);

  v36 = *(v0 + 8);

  return v36();
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 576) = v2;
  if (v2)
  {
    v3 = ThirdPartyCollaborationInitiationRequest.initiateCollaboration();
  }

  else
  {
    v3 = ThirdPartyCollaborationInitiationRequest.initiateCollaboration();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 568);
  v42 = *(v0 + 552);
  v44 = *(v0 + 560);
  v2 = *(v0 + 544);
  v46 = *(v0 + 584);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 320);
  v6 = *(v0 + 304);
  v7 = *(v0 + 280);
  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  outlined init with take of (URL, _SWCollaborationMetadata)(*(v0 + 296), v6);
  v10 = *(v6 + *(v8 + 48));
  (*(v4 + 32))(v3, v6, v5);

  v11 = *(v4 + 16);
  v12 = v11(v9, v3, v5);
  v13 = v42(v12);
  v14 = *(v4 + 8);
  v14(v3, v5);
  v15 = type metadata accessor for ThirdPartyCollaborationInitiationRequest.Response(0);
  *(v9 + *(v15 + 20)) = v13;
  *(v9 + *(v15 + 24)) = v10;
  if (v46 == 1)
  {
    v17 = *(v0 + 464);
    v16 = *(v0 + 472);
    v18 = *(v0 + 456);
    v19 = *(v0 + 392);
    v20 = *(v0 + 320);
    v21 = *(v0 + 280);
    (*(v0 + 448))();
    v22 = v17(v19, 1, v20);
    v23 = *(v0 + 440);
    v24 = *(v0 + 392);
    if (v22)
    {

      outlined destroy of URL?(v24);
    }

    else
    {
      v25 = *(v0 + 368);
      v26 = *(v0 + 320);
      v11(v25, *(v0 + 392), v26);
      outlined destroy of URL?(v24);
      URL.stopAccessingSecurityScopedResource()();

      v14(v25, v26);
    }
  }

  else
  {
  }

  v28 = *(v0 + 424);
  v27 = *(v0 + 432);
  v30 = *(v0 + 408);
  v29 = *(v0 + 416);
  v32 = *(v0 + 392);
  v31 = *(v0 + 400);
  v34 = *(v0 + 376);
  v33 = *(v0 + 384);
  v35 = *(v0 + 360);
  v36 = *(v0 + 368);
  v39 = *(v0 + 352);
  v40 = *(v0 + 344);
  v41 = *(v0 + 336);
  v43 = *(v0 + 312);
  v45 = *(v0 + 304);
  v47 = *(v0 + 296);

  v37 = *(v0 + 8);

  return v37();
}

{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v4 = *(v0 + 496);
  v3 = *(v0 + 504);
  v5 = *(v0 + 584);
  v6 = *(v0 + 352);
  v7 = *(v0 + 320);
  v8 = *(v0 + 328);
  swift_willThrow();
  v9 = *(v8 + 8);
  v9(v6, v7);

  if (v5 == 1)
  {
    v11 = *(v0 + 464);
    v10 = *(v0 + 472);
    v12 = *(v0 + 456);
    v13 = *(v0 + 384);
    v14 = *(v0 + 320);
    v15 = *(v0 + 280);
    (*(v0 + 448))();
    v16 = v11(v13, 1, v14);
    v17 = *(v0 + 440);
    v18 = *(v0 + 384);
    if (v16)
    {

      outlined destroy of URL?(v18);
    }

    else
    {
      v19 = *(v0 + 368);
      v20 = *(v0 + 320);
      (*(*(v0 + 328) + 16))(v19, *(v0 + 384), v20);
      outlined destroy of URL?(v18);
      URL.stopAccessingSecurityScopedResource()();

      v9(v19, v20);
    }
  }

  else
  {
  }

  v39 = *(v0 + 536);
  v22 = *(v0 + 424);
  v21 = *(v0 + 432);
  v24 = *(v0 + 408);
  v23 = *(v0 + 416);
  v26 = *(v0 + 392);
  v25 = *(v0 + 400);
  v27 = *(v0 + 376);
  v28 = *(v0 + 384);
  v30 = *(v0 + 360);
  v29 = *(v0 + 368);
  v33 = *(v0 + 352);
  v34 = *(v0 + 344);
  v35 = *(v0 + 336);
  v36 = *(v0 + 312);
  v37 = *(v0 + 304);
  v38 = *(v0 + 296);

  v31 = *(v0 + 8);

  return v31();
}

{
  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 544);
  v4 = *(v0 + 584);
  swift_willThrow();

  if (v4 == 1)
  {
    v6 = *(v0 + 464);
    v5 = *(v0 + 472);
    v7 = *(v0 + 456);
    v8 = *(v0 + 376);
    v9 = *(v0 + 320);
    v10 = *(v0 + 280);
    (*(v0 + 448))();
    v11 = v6(v8, 1, v9);
    v12 = *(v0 + 440);
    v13 = *(v0 + 376);
    if (v11)
    {

      outlined destroy of URL?(v13);
    }

    else
    {
      v14 = *(v0 + 368);
      v15 = *(v0 + 320);
      v16 = *(v0 + 328);
      (*(v16 + 16))(v14, *(v0 + 376), v15);
      outlined destroy of URL?(v13);
      URL.stopAccessingSecurityScopedResource()();

      (*(v16 + 8))(v14, v15);
    }
  }

  else
  {
  }

  v35 = *(v0 + 576);
  v18 = *(v0 + 424);
  v17 = *(v0 + 432);
  v20 = *(v0 + 408);
  v19 = *(v0 + 416);
  v22 = *(v0 + 392);
  v21 = *(v0 + 400);
  v23 = *(v0 + 376);
  v24 = *(v0 + 384);
  v26 = *(v0 + 360);
  v25 = *(v0 + 368);
  v29 = *(v0 + 352);
  v30 = *(v0 + 344);
  v31 = *(v0 + 336);
  v32 = *(v0 + 312);
  v33 = *(v0 + 304);
  v34 = *(v0 + 296);

  v27 = *(v0 + 8);

  return v27();
}