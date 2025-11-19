id _CLLogObjectForCategory_RelativeMotionManager_Default()
{
  if (onceToken_RelativeMotionManager_Default != -1)
  {
    _CLLogObjectForCategory_RelativeMotionManager_Default_cold_1();
  }

  v1 = logObject_RelativeMotionManager_Default;

  return v1;
}

void OUTLINED_FUNCTION_1(void *a1, int a2, int a3, int a4, const char *a5, const char *a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_signpost_emit_with_name_impl(a1, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, a5, a6, &buf, 0x26u);
}

void OUTLINED_FUNCTION_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_FAULT, a4, &buf, 0x26u);
}

void OUTLINED_FUNCTION_3(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint8_t buf)
{

  _os_log_impl(a1, v13, OS_LOG_TYPE_INFO, a4, &buf, 0x26u);
}

uint64_t OUTLINED_FUNCTION_5(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13)
{
  a12 = 0u;
  a13 = 0u;
  a10 = 0u;
  a11 = 0u;
  a9 = 0u;

  return [(RMRelativeMotionManager *)a1 getCurrentAudioListenerPoseInternal:?];
}

BOOL OUTLINED_FUNCTION_7(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

BOOL OUTLINED_FUNCTION_8(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

id _CLLogObjectForCategory_IPC_Default()
{
  if (onceToken_IPC_Default != -1)
  {
    _CLLogObjectForCategory_IPC_Default_cold_1();
  }

  v1 = logObject_IPC_Default;

  return v1;
}

id CreateXpcMessage(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = xpc_string_create([a1 UTF8String]);
  if (v3)
  {
    v5 = xpc_data_create([v3 bytes], objc_msgSend(v3, "length"));
    v6 = 2;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  *keys = xmmword_279AF5468;
  v7 = v4;
  v13[0] = v7;
  v8 = v5;
  v13[1] = v8;
  v9 = xpc_dictionary_create(keys, v13, v6);
  for (i = 1; i != -1; --i)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

id OUTLINED_FUNCTION_6_0@<X0>(void *a1@<X8>)
{

  return a1;
}

void OUTLINED_FUNCTION_11(uint64_t a1)
{
  v2 = *(a1 + 8);

  dispatch_assert_queue_V2(v2);
}

void OUTLINED_FUNCTION_12(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t RMCommonCalculateGcd(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a1;
  }

  do
  {
    v2 = a2;
    a2 = a1 % a2;
    LODWORD(a1) = v2;
  }

  while (a2);
  return v2;
}

double RMCommonConvertTicksToSeconds(unint64_t a1)
{
  v2 = *&RMCommonConvertTicksToSeconds_ticksToSeconds;
  if (*&RMCommonConvertTicksToSeconds_ticksToSeconds == 0.0)
  {
    info = 0;
    mach_timebase_info(&info);
    if (info.denom)
    {
      denom = info.denom;
      numer = info.numer;
      do
      {
        v5 = denom;
        denom = numer % denom;
        numer = v5;
      }

      while (denom);
    }

    else
    {
      v5 = info.numer;
    }

    v6 = 1000000000;
    v7 = info.numer / v5;
    do
    {
      v8 = v7;
      v7 = v6;
      v6 = v8 % v6;
    }

    while (v6);
    v2 = (info.numer / v5 / v7) / (0x3B9ACA00 / v7 * (info.denom / v5));
    *&RMCommonConvertTicksToSeconds_ticksToSeconds = v2;
  }

  return v2 * a1;
}

double RMCommonGetMachTime()
{
  v0 = mach_absolute_time();

  return RMCommonConvertTicksToSeconds(v0);
}

double RMCommonGetMachContinuousTime()
{
  v0 = mach_continuous_time();

  return RMCommonConvertTicksToSeconds(v0);
}

id _CLLogObjectForCategory_ConnectionClient_Default()
{
  if (onceToken_ConnectionClient_Default != -1)
  {
    _CLLogObjectForCategory_ConnectionClient_Default_cold_1();
  }

  v1 = logObject_ConnectionClient_Default;

  return v1;
}

void OUTLINED_FUNCTION_5_1(uint64_t a1)
{
  v2 = *(a1 + 32);

  dispatch_assert_queue_V2(v2);
}

id _CLLogObjectForCategory_ConnectionClient_Default_0()
{
  if (onceToken_ConnectionClient_Default != -1)
  {
    _CLLogObjectForCategory_ConnectionClient_Default_cold_1_0();
  }

  v1 = logObject_ConnectionClient_Default;

  return v1;
}