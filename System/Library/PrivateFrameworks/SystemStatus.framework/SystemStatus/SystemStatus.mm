void _copyValuesFromDataToData(id *a1, id *a2)
{
  objc_storeStrong(a2 + 1, a1[1]);
  v4 = a2;
  v5 = a1;
  objc_storeStrong(v4 + 2, v5[2]);
  objc_storeStrong(v4 + 3, v5[3]);
  objc_storeStrong(v4 + 4, v5[4]);
  objc_storeStrong(v4 + 5, v5[5]);
  objc_storeStrong(v4 + 6, v5[6]);
  objc_storeStrong(v4 + 7, v5[7]);
  objc_storeStrong(v4 + 8, v5[8]);
  objc_storeStrong(v4 + 9, v5[9]);
  objc_storeStrong(v4 + 10, v5[10]);
  objc_storeStrong(v4 + 11, v5[11]);
  objc_storeStrong(v4 + 12, v5[12]);
  objc_storeStrong(v4 + 13, v5[13]);
  objc_storeStrong(v4 + 14, v5[14]);
  objc_storeStrong(v4 + 15, v5[15]);
  objc_storeStrong(v4 + 16, v5[16]);
  objc_storeStrong(v4 + 17, v5[17]);
  objc_storeStrong(v4 + 18, v5[18]);
  objc_storeStrong(v4 + 19, v5[19]);
  objc_storeStrong(v4 + 20, v5[20]);
  objc_storeStrong(v4 + 21, v5[21]);
  objc_storeStrong(v4 + 22, v5[22]);
  objc_storeStrong(v4 + 23, v5[23]);
  objc_storeStrong(v4 + 24, v5[24]);
  objc_storeStrong(v4 + 25, v5[25]);
  objc_storeStrong(v4 + 26, v5[26]);
  objc_storeStrong(v4 + 27, v5[27]);
  objc_storeStrong(v4 + 28, v5[28]);
  objc_storeStrong(v4 + 29, v5[29]);
  objc_storeStrong(v4 + 30, v5[30]);
  objc_storeStrong(v4 + 31, v5[31]);
  objc_storeStrong(v4 + 32, v5[32]);
  objc_storeStrong(v4 + 33, v5[33]);
  objc_storeStrong(v4 + 34, v5[34]);
  objc_storeStrong(v4 + 35, v5[35]);
  objc_storeStrong(v4 + 36, v5[36]);
  objc_storeStrong(v4 + 37, v5[37]);
  objc_storeStrong(v4 + 38, v5[38]);
  objc_storeStrong(v4 + 39, v5[39]);
  objc_storeStrong(v4 + 40, v5[40]);
  objc_storeStrong(v4 + 41, v5[41]);
  objc_storeStrong(v4 + 42, v5[42]);
  objc_storeStrong(v4 + 43, v5[43]);
  objc_storeStrong(v4 + 44, v5[44]);
  objc_storeStrong(v4 + 45, v5[45]);
  objc_storeStrong(v4 + 46, v5[46]);
}

id STBackgroundActivityIdentifiersDescription(void *a1)
{
  v1 = [a1 bs_map:&__block_literal_global_7];
  v2 = [v1 allObjects];
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

void sub_1DA9C3FDC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

id STLocationStatusDomainLocationAttributionDisplayModeMaskDescription(uint64_t a1)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = [MEMORY[0x1E696AD60] string];
  objc_msgSend(v18[5], "appendString:", @"(");
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __STLocationStatusDomainLocationAttributionDisplayModeMaskDescription_block_invoke;
  v10 = &unk_1E85DEDA0;
  v11 = &v13;
  v12 = &v17;
  v2 = v8;
  v3 = v2;
  if (a1)
  {
    __STLocationStatusDomainLocationAttributionDisplayModeMaskDescription_block_invoke(v2, 1);
  }

  if ((a1 & 2) != 0)
  {
    v9(v3, 2);
  }

  if ((a1 & 4) != 0)
  {
    v9(v3, 4);
  }

  if ((a1 & 8) != 0)
  {
    v9(v3, 8);
  }

  if (!v14[3])
  {
    v4 = v18[5];
    v5 = STLocationStatusDomainLocationAttributionDisplayModeDescription(a1);
    [v4 appendString:v5];
  }

  [v18[5] appendString:@""]);
  v6 = v18[5];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v6;
}

void sub_1DA9C463C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __STLocationStatusDomainLocationAttributionDisplayModeMaskDescription_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = STLocationStatusDomainLocationAttributionDisplayModeDescription(a2);
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = v3;
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v3];

    v3 = v4;
  }

  v6 = v3;
  [*(*(*(a1 + 40) + 8) + 40) appendString:v3];
  ++*(*(*(a1 + 32) + 8) + 24);
}

__CFString *STLocationStatusDomainLocationAttributionDisplayModeDescription(uint64_t a1)
{
  v1 = a1 - 1;
  if (a1 - 1) < 8 && ((0x8Bu >> v1))
  {
    v2 = off_1E85DEDC0[v1];
  }

  else
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
    v2 = [v3 stringWithFormat:@"unknown: %@", v4];
  }

  return v2;
}

BOOL STIsValidDiffForStatusDomain(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = STValidStatusDomainDiffTypes();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __STIsValidDiffForStatusDomain_block_invoke;
    v5[3] = &unk_1E85DE898;
    v6 = v1;
    v3 = [v2 bs_firstObjectPassingTest:v5] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t STValidStatusDomainDiffTypes()
{
  v16 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v16 setWithObjects:{v15, v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
}

__CFString *STSystemStatusDescriptionForDomain(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return 0;
  }

  else
  {
    return off_1E85DEF00[a1];
  }
}

BOOL STIsValidDataForStatusDomain(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = STValidStatusDomainDataTypes();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __STIsValidDataForStatusDomain_block_invoke;
    v5[3] = &unk_1E85DE898;
    v6 = v1;
    v3 = [v2 bs_firstObjectPassingTest:v5] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t STValidStatusDomainDataTypes()
{
  v16 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v11 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  return [v16 setWithObjects:{v15, v14, v13, v12, v11, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
}

id *_STStatusBarDataMatchingMutabilityOfData(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = v3;
  }

  else
  {
    v6 = objc_alloc_init(objc_opt_class());
    _copyValuesFromDataToData(v3, v6);
  }

  return v6;
}

id STSystemStatusLogPublishing()
{
  if (STSystemStatusLogPublishing_onceToken != -1)
  {
    dispatch_once(&STSystemStatusLogPublishing_onceToken, &__block_literal_global_6);
  }

  v1 = STSystemStatusLogPublishing___logObj;

  return v1;
}

id STSystemStatusLogObservation()
{
  if (STSystemStatusLogObservation_onceToken != -1)
  {
    dispatch_once(&STSystemStatusLogObservation_onceToken, &__block_literal_global_3_0);
  }

  v1 = STSystemStatusLogObservation___logObj;

  return v1;
}

void sub_1DA9C6F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA9C7140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA9C729C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA9C7398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __STSystemStatusIsInternalLoggingEnabled_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled = result;
  return result;
}

uint64_t __STSystemStatusLogPublishing_block_invoke()
{
  STSystemStatusLogPublishing___logObj = os_log_create(STSystemStatusLoggingSubsystem, "Publishing");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t STValidStatusDomainDataChangeContextTypes()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, v3, objc_opt_class(), 0}];
}

BOOL STIsValidDataChangeContextForStatusDomain(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = STValidStatusDomainDataChangeContextTypes();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __STIsValidDataChangeContextForStatusDomain_block_invoke;
    v5[3] = &unk_1E85DE898;
    v6 = v1;
    v3 = [v2 bs_firstObjectPassingTest:v5] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *STBackgroundActivityIdentifierDescription(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"com.apple.systemstatus.background-activity." withString:&stru_1F5665198];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = @"(unknown)";
  }

  v4 = v3;

  return v3;
}

__CFString *_STStatusBarDataNetworkStatusDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DEB40[a1];
  }
}

void _copyValuesFromDescriptorToDescriptor(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v19 = a1;
  v5 = [v3 copy];
  v6 = *(v4 + 1);
  *(v4 + 1) = v5;

  v7 = [v19[2] copy];
  v8 = *(v4 + 2);
  *(v4 + 2) = v7;

  v9 = [v19[3] copy];
  v10 = *(v4 + 3);
  *(v4 + 3) = v9;

  v11 = [v19[4] copy];
  v12 = *(v4 + 4);
  *(v4 + 4) = v11;

  objc_storeStrong(v4 + 5, v19[5]);
  *(v4 + 6) = v19[6];
  *(v4 + 7) = v19[7];
  *(v4 + 64) = *(v19 + 64);
  v13 = [v19[9] copy];
  v14 = *(v4 + 9);
  *(v4 + 9) = v13;

  v15 = [v19[10] copy];
  v16 = *(v4 + 10);
  *(v4 + 10) = v15;

  *(v4 + 88) = *(v19 + 88);
  v17 = [v19[12] copy];
  v18 = *(v4 + 12);
  *(v4 + 12) = v17;
}

uint64_t STBackgroundActivityIsVisualEffect(void *a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"none";
  v7[1] = @"darkBlur";
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [v1 arrayWithObjects:v7 count:2];
  v4 = [v3 containsObject:v2];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t STBackgroundActivityIsContinuousAnimation(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = @"none";
  v8 = @"pulseBackground";
  v9 = @"pulseSymbol";
  v1 = MEMORY[0x1E695DEC8];
  v2 = a1;
  v3 = [v1 arrayWithObjects:&v7 count:3];
  v4 = [v3 containsObject:{v2, v7, v8, v9, v10}];

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DA9CBD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA9CCC48(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA9CE700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id STSystemStatusLogDynamicAttribution()
{
  if (qword_1ED7F5C88 != -1)
  {
    dispatch_once(&qword_1ED7F5C88, &__block_literal_global);
  }

  v1 = _MergedGlobals_3;

  return v1;
}

uint64_t __STSystemStatusLogDynamicAttribution_block_invoke()
{
  _MergedGlobals_3 = os_log_create(STSystemStatusLoggingSubsystem, "DynamicAttribution");

  return MEMORY[0x1EEE66BB8]();
}

id STDynamicAttributionXPCServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F567A100];
  [v0 setClass:objc_opt_class() forSelector:sel_setCurrentAttributionKey_application_reply_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_setCurrentAttributionKey_application_reply_ argumentIndex:1 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_setCurrentAttributionStringWithFormat_maskingClientAuditToken_reply_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_setCurrentAttributionWebsiteString_maskingClientAuditToken_reply_ argumentIndex:0 ofReply:0];

  return v0;
}

id STDynamicAttributionXPCClientInterface()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = [v0 initWithObjects:{v1, objc_opt_class(), 0}];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F567F020];
  [v3 setClasses:v2 forSelector:sel_currentAttributionsDidChange_ argumentIndex:0 ofReply:0];

  return v3;
}

__CFString *STStatusItemIdentifierDescription(void *a1)
{
  v1 = [a1 stringByReplacingOccurrencesOfString:@"com.apple.systemstatus.status-item." withString:&stru_1F5665198];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = @"(unknown)";
  }

  v4 = v3;

  return v3;
}

id STStatusItemIdentifiersDescription(void *a1)
{
  v1 = [a1 bs_map:&__block_literal_global_0];
  v2 = [v1 allObjects];
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA9D3EA0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1DA9D4CF4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1DA9D5024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id STSystemStatusLogBundleLoading()
{
  if (STSystemStatusLogBundleLoading_onceToken != -1)
  {
    dispatch_once(&STSystemStatusLogBundleLoading_onceToken, &__block_literal_global_4);
  }

  v1 = STSystemStatusLogBundleLoading___logObj;

  return v1;
}

uint64_t __STSystemStatusLogBundleLoading_block_invoke()
{
  v0 = os_log_create(STSystemStatusLoggingSubsystem, "BundleLoading");
  v1 = STSystemStatusLogBundleLoading___logObj;
  STSystemStatusLogBundleLoading___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1DA9D662C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id STSystemStatusLogCallingDomain()
{
  if (qword_1ED7F5CB8 != -1)
  {
    dispatch_once(&qword_1ED7F5CB8, &__block_literal_global_6);
  }

  v1 = _MergedGlobals_6;

  return v1;
}

uint64_t __STSystemStatusLogCallingDomain_block_invoke()
{
  v0 = os_log_create(STSystemStatusLoggingSubsystem, "CallingDomain");
  v1 = _MergedGlobals_6;
  _MergedGlobals_6 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

__CFString *STDescriptionForServiceState(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"No Service";
  }

  else
  {
    return off_1E85DE3D0[a1 - 1];
  }
}

__CFString *STDescriptionForDataNetworkType(uint64_t a1)
{
  if ((a1 - 1) > 0xF)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E85DE3E8[a1 - 1];
  }
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA9DAD6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA9DE608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id STStatusDomainXPCClientInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F567AE28];
  v1 = STValidStatusDomainDataTypes();
  [v0 setClasses:v1 forSelector:sel_observeData_forDomain_withChangeContext_ argumentIndex:0 ofReply:0];

  v2 = STValidStatusDomainDataChangeContextTypes();
  [v0 setClasses:v2 forSelector:sel_observeData_forDomain_withChangeContext_ argumentIndex:2 ofReply:0];

  v3 = STValidStatusDomainDiffTypes();
  [v0 setClasses:v3 forSelector:sel_observeDiff_forDomain_withChangeContext_ argumentIndex:0 ofReply:0];

  v4 = STValidStatusDomainDataChangeContextTypes();
  [v0 setClasses:v4 forSelector:sel_observeDiff_forDomain_withChangeContext_ argumentIndex:2 ofReply:0];

  return v0;
}

id STStatusDomainXPCServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5683928];
  v1 = STValidStatusDomainUserInteractionTypes();
  [v0 setClasses:v1 forSelector:sel_reportUserInteraction_forDomain_ argumentIndex:0 ofReply:0];

  v2 = STValidStatusDomainDataTypes();
  v3 = [v2 mutableCopy];

  [v3 addObject:objc_opt_class()];
  [v3 addObject:objc_opt_class()];
  [v0 setClasses:v3 forSelector:sel_serverDataForDomains_preferredLocalizations_reply_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1DA9E2448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DA9E3FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double STActivityAttributionUnsafeAuditTokenForPID@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = -1;
  *(a2 + 8) = -1;
  *(a2 + 16) = -1;
  *(a2 + 20) = a1;
  result = NAN;
  *(a2 + 24) = -1;
  return result;
}

BOOL STIsValidUserInteractionForStatusDomain(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = STValidStatusDomainUserInteractionTypes();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __STIsValidUserInteractionForStatusDomain_block_invoke;
    v5[3] = &unk_1E85DE898;
    v6 = v1;
    v3 = [v2 bs_firstObjectPassingTest:v5] != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t STValidStatusDomainUserInteractionTypes()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  return [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, objc_opt_class(), 0}];
}

__CFString *_STStatusBarDataCellularTypeDescription(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DEB70[a1];
  }
}

__CFString *_STStatusBarDataWifiTypeDescription(uint64_t a1)
{
  v1 = @"(unknown)";
  if (a1 == 1)
  {
    v1 = @"hotspot";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"regular";
  }
}

__CFString *_STStatusBarBatteryStateDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DEC20[a1];
  }
}

__CFString *_STStatusBarBluetoothStateDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DEC40[a1];
  }
}

__CFString *_STStatusBarThermalColorDescription(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DEBF0[a1];
  }
}

__CFString *_STStatusBarActivityTypeDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DEC58[a1];
  }
}

__CFString *_STStatusBarLocationTypeDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DEC70[a1];
  }
}

__CFString *_STStatusBarVoiceControlTypeDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DEC88[a1];
  }
}

__CFString *STAirPlayStatusDomainAirPlayStateDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DECA0[a1];
  }
}

void sub_1DA9F68D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

__CFString *STVoiceControlStatusDomainListeningStateDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DEE00[a1];
  }
}

void ___orderedDataEntryKeys_block_invoke()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = +[STStatusBarData entryKeys];
  v1 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v3 = [v0 sortedArrayUsingDescriptors:v2];
  v4 = _MergedGlobals_13;
  _MergedGlobals_13 = v3;

  v5 = *MEMORY[0x1E69E9840];
}

id STStatusDomainPublisherXPCServerInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F5683988];
  v1 = STValidStatusDomainDataTypes();
  [v0 setClasses:v1 forSelector:sel_registerToPublishDomain_fallbackData_ argumentIndex:1 ofReply:0];

  v2 = STValidStatusDomainDataTypes();
  [v0 setClasses:v2 forSelector:sel_publishData_forDomain_withChangeContext_discardingOnExit_reply_ argumentIndex:0 ofReply:0];

  v3 = STValidStatusDomainDataChangeContextTypes();
  [v0 setClasses:v3 forSelector:sel_publishData_forDomain_withChangeContext_discardingOnExit_reply_ argumentIndex:2 ofReply:0];

  v4 = STValidStatusDomainDiffTypes();
  [v0 setClasses:v4 forSelector:sel_publishDiff_forDomain_withChangeContext_replacingData_discardingOnExit_reply_ argumentIndex:0 ofReply:0];

  v5 = STValidStatusDomainDataChangeContextTypes();
  [v0 setClasses:v5 forSelector:sel_publishDiff_forDomain_withChangeContext_replacingData_discardingOnExit_reply_ argumentIndex:2 ofReply:0];

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_replaceDataChangeRecord_discardingOnExit_reply_ argumentIndex:0 ofReply:0];

  return v0;
}

id STStatusDomainPublisherXPCClientInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F567F848];
  v1 = STValidStatusDomainUserInteractionTypes();
  [v0 setClasses:v1 forSelector:sel_handleUserInteraction_forDomain_ argumentIndex:0 ofReply:0];

  return v0;
}

id STSystemStatusLogDataIntegrity()
{
  if (STSystemStatusLogDataIntegrity_onceToken != -1)
  {
    dispatch_once(&STSystemStatusLogDataIntegrity_onceToken, &__block_literal_global_15);
  }

  v1 = STSystemStatusLogDataIntegrity___logObj;

  return v1;
}

uint64_t __STSystemStatusLogDataIntegrity_block_invoke()
{
  v0 = os_log_create(STSystemStatusLoggingSubsystem, "DataIntegrity");
  v1 = STSystemStatusLogDataIntegrity___logObj;
  STSystemStatusLogDataIntegrity___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __STSystemStatusLogObservation_block_invoke()
{
  v0 = os_log_create(STSystemStatusLoggingSubsystem, "Observation");
  v1 = STSystemStatusLogObservation___logObj;
  STSystemStatusLogObservation___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t STSystemStatusIsInternalLoggingEnabled()
{
  if (STSystemStatusIsInternalLoggingEnabled_onceToken != -1)
  {
    dispatch_once(&STSystemStatusIsInternalLoggingEnabled_onceToken, &__block_literal_global_56);
  }

  return STSystemStatusIsInternalLoggingEnabled___internalLoggingEnabled;
}

void sub_1DA9FEE70(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DAA079C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v11 + 40));
  _Unwind_Resume(a1);
}

__CFString *STBatteryStatusDomainChargingStateDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DF138[a1];
  }
}

__CFString *STBatteryStatusDomainChargingDescriptionTypeDescription(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E85DF158[a1];
  }
}

void sub_1DAA0E060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DAA0EF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DAA0F738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *STDescriptionForDataAccessType(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"invalid";
  }

  else
  {
    return off_1E85DF278[a1];
  }
}

void sub_1DAA114F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DAA14B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DAA14DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id STSystemStatusLogBackgroundActivityVisualDescriptor()
{
  if (qword_1ED7F5D88 != -1)
  {
    dispatch_once(&qword_1ED7F5D88, &__block_literal_global_23);
  }

  v1 = _MergedGlobals_18;

  return v1;
}

uint64_t __STSystemStatusLogBackgroundActivityVisualDescriptor_block_invoke()
{
  v0 = os_log_create(STSystemStatusLoggingSubsystem, "BackgroundActivityVisualDescriptor");
  v1 = _MergedGlobals_18;
  _MergedGlobals_18 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void sub_1DAA17E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DAA17FE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1DAA1986C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}