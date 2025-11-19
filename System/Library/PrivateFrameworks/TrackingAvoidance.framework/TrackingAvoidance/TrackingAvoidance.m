__CFString *TASystemStateTypeToString(unint64_t a1)
{
  if (a1 > 0x11)
  {
    return @"<invalid>";
  }

  else
  {
    return off_279DD1CE0[a1];
  }
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, v4, 0xCu);
}

id OUTLINED_FUNCTION_0_0(uint64_t a1, void *a2)
{

  return a2;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_fault_impl(a1, v5, OS_LOG_TYPE_FAULT, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

__CFString *TAPrivateVehicleClassificationReasonEnumToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_279DD18C0[a1];
  }
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

_BYTE *OUTLINED_FUNCTION_0_1(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_26F2F6228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, void *a35, void *a36, void *a37, void *a38)
{
  *(v40 - 104) = a1;

  _Unwind_Resume(*(v40 - 104));
}

void sub_26F2F8010(_Unwind_Exception *a1)
{
  STACK[0x240] = STACK[0x238];

  _Unwind_Resume(a1);
}

void TARegisterLogs()
{
  if (TARegisterLogs_onceToken != -1)
  {
    TARegisterLogs_cold_1();
  }
}

uint64_t __TARegisterLogs_block_invoke()
{
  v0 = os_log_create("com.apple.tracking-avoidance", "Status");
  v1 = TAStatusLog;
  TAStatusLog = v0;

  v2 = os_log_create("com.apple.tracking-avoidance", "Events");
  v3 = TAEventsLog;
  TAEventsLog = v2;

  v4 = os_log_create("com.apple.TrackingAvoidance", "SeparationAlerts");
  v5 = TASALog;
  TASALog = v4;

  TASAEventsLog = os_log_create("com.apple.TrackingAvoidance", "SeparationAlertsEvents");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_1_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

__CFString *TAVehicularOperatorStateToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1C38[a1];
  }
}

__CFString *TAVehicularStateToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_279DD1C20[a1];
  }
}

__CFString *TAGeoNavigationListenerStateToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_279DD1CC8[a1];
  }
}

__CFString *TAGeoTransportTypeToString(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"<invalid>";
  }

  else
  {
    return off_279DD1C90[a1];
  }
}

__CFString *TACLVisitConfidenceToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_279DD1D70[a1];
  }
}

void OUTLINED_FUNCTION_0_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_2_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *TALocationOfInterestTypeToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_279DD1E58[a1];
  }
}

__CFString *TAUserActivityTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_279DD1E70[a1 - 1];
  }
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return objc_opt_class();
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

void OUTLINED_FUNCTION_2_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x282136CD0](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}