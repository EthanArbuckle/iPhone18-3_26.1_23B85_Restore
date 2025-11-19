void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  return [v31 countByEnumeratingWithState:&a19 objects:&a31 count:16];
}

void OUTLINED_FUNCTION_2_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

BOOL OUTLINED_FUNCTION_2_3(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEBUG);
}

__n128 OUTLINED_FUNCTION_2_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a15)
{
  v18 = *(v16 + 112);
  result = a15;
  *(v17 - 256) = a15.n128_u32[0];
  v20 = v17 - 256;
  *(v20 + 4) = v15;
  *(v17 - 244) = 2114;
  *(v20 + 14) = v18;
  return result;
}

uint64_t OUTLINED_FUNCTION_2_8(uint64_t a1)
{

  return MEMORY[0x28211F870](v2, v1, a1);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

__n128 OUTLINED_FUNCTION_0_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(a20 + 32);
  result = a17;
  *v21 = a17.n128_u32[0];
  *(v21 + 4) = v22;
  *(v21 + 12) = 2114;
  *(v21 + 14) = v20;
  return result;
}

id OUTLINED_FUNCTION_0_16(id a1)
{

  return a1;
}

_BYTE *OUTLINED_FUNCTION_4_0(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_5@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

uint64_t RBSAttributePathIncrement(char a1, char a2)
{
  v2 = a1 & 0xF;
  if ((a1 & 0xFu) >= 0xEuLL)
  {
    v2 = 14;
  }

  return ((a2 & 0xF) << (4 * (v2 + 1))) | (v2 + 1);
}

void OUTLINED_FUNCTION_7(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, a5, 2u);
}

void OUTLINED_FUNCTION_7_5(float a1)
{
  *(v3 - 160) = a1;
  v4 = v3 - 160;
  *(v4 + 4) = v1;
  *(v3 - 148) = 2114;
  *(v4 + 14) = v2;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x18u);
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return os_unfair_lock_lock_with_options();
}

void OUTLINED_FUNCTION_1_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

void OUTLINED_FUNCTION_1_12(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_1_13(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);

  return [v4 countByEnumeratingWithState:va objects:va1 count:16];
}

void OUTLINED_FUNCTION_1_16(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_1_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_5_6(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(v24 - 144) = a1;
  *(v22 + 4) = v23;
  *(v24 - 132) = 2114;
  *(v22 + 14) = a22;
  *(v24 - 122) = 2114;
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

uint64_t __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x266729AD0](*(a2 + 40));
  *(a1 + 40) = result;
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

void RBPowerlogEvent(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = RBPowerlogEvent_onceToken;
  v8 = a2;
  if (v7 != -1)
  {
    RBPowerlogEvent_cold_1();
  }

  v9 = RBPowerlogEvent_eventQueue;
  v10 = [[RBPLEvent alloc] initWithevent:a1 identity:v8 assertionCount:a3 pid:a4];

  [v9 enqueueEvent:v10];
}

void _addRBProperties(void *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = xpc_dictionary_get_value(v5, "_AdditionalProperties");
  v9 = v8;
  v10 = MEMORY[0x277D86468];
  if (!v8 || MEMORY[0x26672A380](v8) != v10)
  {
    empty = xpc_dictionary_create_empty();

    xpc_dictionary_set_value(v5, "_AdditionalProperties", empty);
    v9 = empty;
  }

  v12 = xpc_dictionary_get_value(v9, "RunningBoard");
  v13 = v12;
  if (!v12 || MEMORY[0x26672A380](v12) != v10)
  {
    v14 = xpc_dictionary_create_empty();

    xpc_dictionary_set_value(v9, "RunningBoard", v14);
    v13 = v14;
  }

  if (v6)
  {
    v15 = [v6 encodeForJob];
    if (v15)
    {
      xpc_dictionary_set_value(v13, "RunningBoardLaunchedIdentity", v15);
    }

    else
    {
      v16 = rbs_job_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        _addRBProperties_cold_1();
      }
    }
  }

  xpc_dictionary_set_BOOL(v13, "RunningBoardLaunched", 1);
  v17 = xpc_dictionary_get_value(v13, "Managed");
  if (!v17 && [v6 defaultManageFlags] == 255)
  {
    xpc_dictionary_set_BOOL(v13, "Managed", 1);
  }

  v18 = [v7 beforeTranslocationBundlePath];

  if (v18)
  {
    v19 = [v7 beforeTranslocationBundlePath];
    xpc_dictionary_set_string(v13, "BeforeTranslocationBundlePath", [v19 UTF8String]);
  }

  v20 = [v7 homeDirectory];

  if (v20)
  {
    v21 = [v7 homeDirectory];
    xpc_dictionary_set_string(v13, "HOME", [v21 UTF8String]);
  }

  v22 = [v7 tmpDirectory];

  if (v22)
  {
    v23 = [v7 tmpDirectory];
    xpc_dictionary_set_string(v13, "TMPDIR", [v23 UTF8String]);
  }

  if (([v7 executionOptions] & 0x80) != 0)
  {
    v24 = rbs_job_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v6;
      _os_log_impl(&dword_262485000, v24, OS_LOG_TYPE_DEFAULT, "Launching %{public}@ with MTE enabled.", buf, 0xCu);
    }

    xpc_dictionary_set_BOOL(v5, "EnableCheckedAllocations", 1);
  }

  v25 = [v7 launchRequestIdentifierToMachNameMap];
  if ([v25 count])
  {
    v26 = xpc_dictionary_create_empty();
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = ___addRBProperties_block_invoke;
    v37 = &unk_279B33190;
    v38 = v26;
    v39 = v6;
    v27 = v26;
    [v25 enumerateKeysAndObjectsUsingBlock:&v34];
    xpc_dictionary_set_value(v13, "LaunchRequestEndpointIdentifiers", v27);
  }

  v28 = [v7 spawnConstraint];

  if (v28)
  {
    [v7 spawnConstraint];
    v29 = _CFXPCCreateXPCObjectFromCFObject();
    v30 = v29;
    if (!v29 || MEMORY[0x26672A380](v29) != v10)
    {
      v31 = rbs_job_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = [v7 spawnConstraint];
        *buf = 138543618;
        v41 = v6;
        v42 = 2114;
        v43 = v32;
        _os_log_impl(&dword_262485000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ failed to set spawn constraint for job: %{public}@", buf, 0x16u);
      }
    }

    xpc_dictionary_set_value(v5, "SpawnConstraint", v30);
  }

  v33 = *MEMORY[0x277D85DE8];
}

id _describeXPCObject()
{
  v0 = MEMORY[0x26672A230]();
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:v0];
  free(v0);

  return v1;
}

void OUTLINED_FUNCTION_8_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t *OUTLINED_FUNCTION_8_1@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_11_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_3_2@<X0>(uint64_t a1@<X8>)
{
  v3 = *v2;
  v4 = *(v1 + a1);
  return v1;
}

void OUTLINED_FUNCTION_3_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void *OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{

  return mmap(0, v5, 3, 1, a5, 0);
}

BOOL OUTLINED_FUNCTION_32(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1)
{

  return [v2 setObject:v1 forKeyedSubscript:a1];
}

BOOL OUTLINED_FUNCTION_29(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

uint64_t OUTLINED_FUNCTION_29_0()
{

  return [v0 rb_hasEntitlementDomain:1];
}

void ___addRBProperties_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    xpc_dictionary_set_string(*(a1 + 32), [v5 UTF8String], objc_msgSend(v6, "UTF8String"));
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 BOOLValue])
    {
      xpc_dictionary_set_BOOL(*(a1 + 32), [v5 UTF8String], 1);
    }

    else
    {
      v7 = rbs_job_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v10 = 138543874;
        v11 = v8;
        v12 = 2114;
        v13 = v5;
        v14 = 2114;
        v15 = v6;
        _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring unsupported LaunchRequestEndpointIdentifiers value for launchIdentifier %{public}@: value=%{public}@", &v10, 0x20u);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

BOOL OUTLINED_FUNCTION_21(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_21_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

__CFString *NSStringFromDarwinGPURole(unsigned int a1)
{
  if (a1 > 7)
  {
    return @"(undefined)";
  }

  else
  {
    return off_279B33EA8[a1];
  }
}

BOOL OUTLINED_FUNCTION_27(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_24(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_23(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_23_1()
{
  result = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  return result;
}

BOOL OUTLINED_FUNCTION_20_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_15@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return [v0 rb_hasEntitlementDomain:1];
}

uint64_t OUTLINED_FUNCTION_25_1()
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_22_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  v4 = *(result + 40);
  return result;
}

BOOL OUTLINED_FUNCTION_26(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_26_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

uint64_t OUTLINED_FUNCTION_26_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a20 = a1;

  return [v20 enumerateKeysAndObjectsUsingBlock:&a13];
}

void _handleDeath(void *a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = a2;
  v8 = rbs_ttl_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v9)
    {
      v11 = 138544130;
      v12 = v5;
      v13 = 1024;
      v14 = [v6 os_reason_namespace];
      v15 = 2048;
      v16 = [v6 os_reason_code];
      v17 = 1024;
      v18 = [v6 wait4Status];
      _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ termination reported by launchd (%u, %llu, %u)", &v11, 0x22u);
    }

    v8 = [MEMORY[0x277D46F28] exitContextForNamespace:objc_msgSend(v6 code:"os_reason_namespace") wait4Status:{objc_msgSend(v6, "os_reason_code"), objc_msgSend(v6, "wait4Status")}];
    [v5 setLastExitContext:v8];
  }

  else if (v9)
  {
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ termination reported by launchd without exit status", &v11, 0xCu);
  }

  v7[2](v7);
  v10 = *MEMORY[0x277D85DE8];
}

void sub_262490B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _RBLogAddStateCaptureBlockWithTitle(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_14:
    _RBLogAddStateCaptureBlockWithTitle_cold_2();
    if (v7)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  _RBLogAddStateCaptureBlockWithTitle_cold_1();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (v7)
  {
    goto LABEL_4;
  }

LABEL_15:
  _RBLogAddStateCaptureBlockWithTitle_cold_3();
LABEL_4:
  v8 = v7;
  v9 = v6;
  v10 = os_state_add_handler();
  if (v10)
  {
    os_unfair_lock_lock(&_lock);
    if (!_registeredStateCaptureBlocks)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v13 = _registeredStateCaptureBlocks;
      _registeredStateCaptureBlocks = v12;
    }

    v14 = objc_alloc_init(RBLogStateCaptureEntry);
    v16 = v14;
    if (v14)
    {
      objc_setProperty_nonatomic_copy(v14, v15, v8, 16);
    }

    [(RBLogStateCaptureEntry *)v16 setTitle:v9];
    [(RBLogStateCaptureEntry *)v16 setQueue:v5];
    v17 = _registeredStateCaptureBlocks;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v10];
    [v17 setObject:v16 forKey:v18];

    os_unfair_lock_unlock(&_lock);
    v10 = [[RBStateCaptureInvalidator alloc] initWithHandle:v10];
  }

  return v10;
}

void OUTLINED_FUNCTION_14_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, (v5 - 144), 0x20u);
}

BOOL OUTLINED_FUNCTION_31(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_INFO);
}

BOOL OUTLINED_FUNCTION_39(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_30(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

BOOL OUTLINED_FUNCTION_30_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_13_1(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint8_t buf)
{

  _os_log_error_impl(a1, v23, OS_LOG_TYPE_ERROR, a4, &buf, 0x20u);
}

double _positiveDoubleForDefault(const __CFString *a1, double a2)
{
  v3 = CFPreferencesCopyValue(a1, @"com.apple.assertiond", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      valuePtr = 0.0;
      Value = CFNumberGetValue(v4, kCFNumberDoubleType, &valuePtr);
      if (valuePtr > 0.0 && Value != 0)
      {
        a2 = valuePtr;
      }
    }

    CFRelease(v4);
  }

  return a2;
}

void sub_262493DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_262495E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2624991C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26249E0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26249E2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26249E418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26249E828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _errorWithRequestCodeAndInfoBuilder(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v14 = v13;
  if (v10)
  {
    [v13 setObject:v10 forKey:*MEMORY[0x277CCA470]];
  }

  if (v11)
  {
    [v14 setObject:v11 forKey:*MEMORY[0x277CCA7E8]];
  }

  if (v12)
  {
    v12[2](v12, v14);
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:v9 code:a2 userInfo:v14];

  return v15;
}

void _parseEntitlementConfigAndAddToRestrictedEntitlements(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v24 = [v3 countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v24)
  {
    v23 = *v32;
    *&v5 = 138412290;
    v21 = v5;
    v22 = v3;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v31 + 1) + 8 * i);
        v8 = [v3 objectForKeyedSubscript:{v7, v21}];
        v9 = [v8 objectForKeyedSubscript:@"Type"];
        if ([v9 isEqualToString:@"Daemon"])
        {
          v25 = v9;
          v10 = [MEMORY[0x277D46F60] identityForDaemonJobLabel:v7];
LABEL_10:
          v11 = v10;
          v26 = v8;
          v12 = [v8 objectForKeyedSubscript:@"Entitlements"];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v27 + 1) + 8 * j);
                v18 = [v4 objectForKey:v17];
                if (v18)
                {
                  v19 = v18;
                  [v18 addObject:v11];
                }

                else
                {
                  v19 = [MEMORY[0x277CBEB58] setWithObject:v11];
                  [v4 setObject:v19 forKey:v17];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v14);
          }

          v3 = v22;
          v9 = v25;
          v8 = v26;
          goto LABEL_23;
        }

        if ([v9 isEqualToString:@"App"])
        {
          v25 = v9;
          v10 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:v7 jobLabel:v7 auid:0 platform:6];
          goto LABEL_10;
        }

        v11 = rbs_general_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = v21;
          v37 = v7;
          _os_log_fault_impl(&dword_262485000, v11, OS_LOG_TYPE_FAULT, "_parseEntitlementConfigAndAddToRestrictedEntitlements failed fetching type of identity %@", buf, 0xCu);
        }

LABEL_23:
      }

      v24 = [v3 countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v24);
  }

  v20 = *MEMORY[0x277D85DE8];
}

NSObject *_getPlistInRunningBoardLibrary(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = RBSPathForSystemDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"RunningBoard"];
  v4 = [v3 stringByAppendingPathComponent:v1];

  v14 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4 options:8 error:&v14];
  v6 = v14;
  if (!v6)
  {
    v13 = 0;
    v8 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:&v13];
    v7 = v13;
    if (v7)
    {
      v9 = rbs_general_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        _getPlistInRunningBoardLibrary_cold_1(v7, v9);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v8;
        v10 = v8;
        goto LABEL_13;
      }

      v9 = rbs_general_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        _getPlistInRunningBoardLibrary_cold_2(v8, v9);
      }
    }

    goto LABEL_11;
  }

  v7 = v6;
  v8 = rbs_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 localizedDescription];
    *buf = 138543362;
    v16 = v9;
    _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_DEFAULT, "_getPlistInRunningBoardLibrary skipped because NSData dataWithContentsOfFile resulted in %{public}@", buf, 0xCu);
LABEL_11:
  }

  v10 = 0;
LABEL_13:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id restrictedEntitlementsFromPlist()
{
  v28 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB38] dictionary];
  v1 = _getPlistInRunningBoardLibrary(@"runningboardEntitlementsConfiguration.plist");
  v18 = v1;
  if (v1)
  {
    _parseEntitlementConfigAndAddToRestrictedEntitlements(v1, v0);
  }

  else
  {
    v2 = rbs_general_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      restrictedEntitlementsFromPlist_cold_1(v2);
    }
  }

  v3 = _getPlistInRunningBoardLibrary(@"runningboardAdditionalEntitlementsConfiguration.plist");
  v17 = v3;
  if (v3)
  {
    _parseEntitlementConfigAndAddToRestrictedEntitlements(v3, v0);
  }

  else
  {
    v4 = rbs_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_INFO, "RunningBoard did not find a secondary entitlements configuration at runningboardAdditionalEntitlementsConfiguration.plist", buf, 2u);
    }
  }

  v16 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.runningboard"];
  v15 = [v16 objectForKey:@"AdditionalEntitlementsConfigurations"];
  _parseEntitlementConfigAndAddToRestrictedEntitlements(v15, v0);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v0;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = rbs_general_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v5 objectForKeyedSubscript:{v10, v15}];
          *buf = 138543618;
          v24 = v10;
          v25 = 2114;
          v26 = v12;
          _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_INFO, "generated restrictions for entitlement %{public}@: %{public}@", buf, 0x16u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

id _posixErrorWithCodeAndDescription(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v4 = *MEMORY[0x277CCA5B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = a2;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a2;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v3 errorWithDomain:v4 code:a1 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void ___synchronizeJobsQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.runningboardservices.synchronizeJobs", v2);
  v1 = _synchronizeJobsQueue_queue;
  _synchronizeJobsQueue_queue = v0;
}

void OUTLINED_FUNCTION_36(float a1)
{
  *(v3 - 240) = a1;
  *(v2 + 36) = v1;
  *(v3 - 228) = 2114;
}

uint64_t OUTLINED_FUNCTION_38()
{

  return memorystatus_control();
}

void sub_2624B4C34(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x840], 8);
  _Block_object_dispose(&STACK[0x7D0], 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_28_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, (v5 - 144), 2u);
}

void sub_2624BFC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_2624C396C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2624C3AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2624C4264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2624C43C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2624C5850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t currentDeviceClass()
{
  if (currentDeviceClass___once != -1)
  {
    currentDeviceClass_cold_1();
  }

  return currentDeviceClass___value;
}

void __currentDeviceClass_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = [v0 intValue];
  if (v0)
  {
    CFRelease(v0);
  }

  if ((v1 - 1) > 5)
  {
    v2 = -1;
  }

  else
  {
    v2 = dword_26250BB68[v1 - 1];
  }

  currentDeviceClass___value = v2;
}

void sub_2624C6DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id safeGetProperty(void *a1, void *a2, uint64_t a3, void *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = [a1 objectForKeyedSubscript:v7];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      goto LABEL_9;
    }

    v11 = rbs_assertion_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v22 = v7;
      v23 = 2114;
      v24 = objc_opt_class();
      v25 = 2114;
      v26 = a3;
      v18 = v24;
      _os_log_error_impl(&dword_262485000, v11, OS_LOG_TYPE_ERROR, "Detected misconfigured attribute. Property %{public}@ had class %{public}@ when class %{public}@ was expected", buf, 0x20u);
    }

    if (v8)
    {
      v12 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA470];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Detected misconfigured attribute. Property %@ had class %@ when class %@ was expected", v7, objc_opt_class(), a3];
      v20 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v15 = [v12 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v14];

      [v8 addObject:v15];
    }
  }

  v10 = 0;
LABEL_9:

  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

void OUTLINED_FUNCTION_10_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

void sub_2624CFDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _errorWithRequestCode(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKey:*MEMORY[0x277CCA470]];
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:v5 code:a2 userInfo:v8];

  return v9;
}

void sub_2624D1220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2624D1E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_2624D5C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2624D7D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_2624D8EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_2624DB058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2624DC8A4(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v1 - 8);
    v1 -= 8;
  }

  while (v1 != v2);
  _Unwind_Resume(a1);
}

uint64_t __RBPowerlogEvent_block_invoke()
{
  RBPowerlogEvent_eventQueue = objc_alloc_init(RBPLEventQueue);

  return MEMORY[0x2821F96F8]();
}

void _getPlistInRunningBoardLibrary_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138543362;
  v6 = v3;
  _os_log_fault_impl(&dword_262485000, a2, OS_LOG_TYPE_FAULT, "_getPlistInRunningBoardLibrary failed in NSPropertyList propertyListWithData with error %{public}@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void _getPlistInRunningBoardLibrary_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_262485000, a2, OS_LOG_TYPE_FAULT, "_getPlistInRunningBoardLibrary failed because result is not dictionary (%{public}@)", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void _addRBProperties_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "%{public}@ failed to encode identity", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void _RBLogAddStateCaptureBlockWithTitle_cold_1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<RBSInvalidatable> _RBLogAddStateCaptureBlockWithTitle(__strong dispatch_queue_t, NSString *__strong, __strong RBLogStateCaptureBlock, BOOL)"}];
  [OUTLINED_FUNCTION_0_15(v0 v1];
}

void _RBLogAddStateCaptureBlockWithTitle_cold_2()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<RBSInvalidatable> _RBLogAddStateCaptureBlockWithTitle(__strong dispatch_queue_t, NSString *__strong, __strong RBLogStateCaptureBlock, BOOL)"}];
  [OUTLINED_FUNCTION_0_15(v0 v1];
}

void _RBLogAddStateCaptureBlockWithTitle_cold_3()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id<RBSInvalidatable> _RBLogAddStateCaptureBlockWithTitle(__strong dispatch_queue_t, NSString *__strong, __strong RBLogStateCaptureBlock, BOOL)"}];
  [OUTLINED_FUNCTION_0_15(v0 v1];
}