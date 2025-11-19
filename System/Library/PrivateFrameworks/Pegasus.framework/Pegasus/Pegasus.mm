id PGLogCommon()
{
  if (PGLogCommon_onceToken != -1)
  {
    PGLogCommon_cold_1();
  }

  v1 = PGLogCommon___log;

  return v1;
}

__CFString *PGStringFromPictureInPictureInterruptionReason(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"invalid";
  }

  else
  {
    return off_1E7F33090[a1];
  }
}

void sub_1BB283EE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id _PGLogMethodProem(void *a1, int a2)
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

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void PGActivateApplication(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 < 1)
  {
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1000 userInfo:0];
    v6[2](v6, 0, v9);
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E698D028]);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __PGActivateApplication_block_invoke;
    v10[3] = &unk_1E7F32368;
    v11 = v5;
    v12 = v7;
    v13 = v6;
    v8 = v7;
    [v8 applicationInfoForPID:a1 completion:v10];
  }
}

void __PGActivateApplication_block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x1E698CFF8]];
  if (v3)
  {
    if (openApplicationService_block_invoke_onceToken != -1)
    {
      __PGActivateApplication_block_invoke_cold_1();
    }

    if (openApplicationService)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        v15 = *MEMORY[0x1E69DECE0];
        v16[0] = v4;
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      }

      else
      {
        v5 = 0;
      }

      v8 = [MEMORY[0x1E699FB70] optionsWithDictionary:v5];
      v9 = openApplicationService;
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __PGActivateApplication_block_invoke_3;
      v13 = &unk_1E7F32340;
      v14 = *(a1 + 48);
      [v9 openApplication:v3 withOptions:v8 completion:&v10];
    }
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1000 userInfo:0];
    (*(v6 + 16))(v6, 0, v7);
  }

  [*(a1 + 40) invalidate];
}

uint64_t __PGActivateApplication_block_invoke_2()
{
  openApplicationService = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];

  return MEMORY[0x1EEE66BB8]();
}

void __PGActivateApplication_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1000 userInfo:0];
    (*(v3 + 16))(v3, 0, v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5, 1);
  }
}

id PGBundleIdentifierForProcessIdentifier(uint64_t a1)
{
  if (a1 < 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E698D028]);
    v3 = [v2 bundleInfoValueForKey:@"CFBundleIdentifier" PID:a1];
    [v2 invalidate];
  }

  return v3;
}

void sub_1BB28A080(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1BB28C640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PGBundle()
{
  if (PGBundle_onceToken != -1)
  {
    PGBundle_cold_1();
  }

  v1 = PGBundle_bundle;

  return v1;
}

uint64_t __PGBundle_block_invoke()
{
  PGBundle_bundle = +[_PGBundle bundle];

  return MEMORY[0x1EEE66BB8]();
}

id PGLocalizedString(void *a1)
{
  v1 = a1;
  v2 = PGBundle();
  v3 = [v2 localizedStringForKey:v1 value:&stru_1F394B800 table:0];

  return v3;
}

id PGLocalizedStringFromTable(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = PGBundle();
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F394B800 table:v3];

  return v6;
}

void sub_1BB2900E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *NSStringFromPGBackgroundPIPAuthorizationState(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"invalid";
  }

  else
  {
    return off_1E7F32890[a1];
  }
}

void sub_1BB290A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB290C50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_1BB292200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB292908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB292B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB293D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB2949D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PGPictureInPictureRemoteObjectInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3972B08];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{NSClassFromString(&cfstr_Uihostedwindow.isa), 0}];
  [v0 setClasses:v1 forSelector:sel_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler_ argumentIndex:1 ofReply:0];

  return v0;
}

id PGPictureInPictureExportedInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3976910];
  v1 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_updateHostedWindowSize_animationType_initialSpringVelocity_synchronizationFence_ argumentIndex:3 ofReply:0];

  return v0;
}

uint64_t __PGLogCommon_block_invoke()
{
  PGLogCommon___log = os_log_create("com.apple.pegasus", "Common");

  return MEMORY[0x1EEE66BB8]();
}

__CFString *PGStringFromPictureInPictureRemoteObjectState(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"Maiden";
  }

  else
  {
    return off_1E7F33020[a1 - 1];
  }
}

void sub_1BB298144(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB298F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB29C7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB2A11F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB2A3128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getFBSceneManagerClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!FrontBoardLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __FrontBoardLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7F32FE8;
    v5 = 0;
    FrontBoardLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FrontBoardLibraryCore_frameworkLibrary)
  {
    __getFBSceneManagerClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("FBSceneManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSceneManagerClass_block_invoke_cold_1();
  }

  getFBSceneManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FrontBoardLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FrontBoardLibraryCore_frameworkLibrary = result;
  return result;
}

__CFString *PGStringFromPictureInPictureControlsStyle(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"None";
  }

  else
  {
    return off_1E7F33200[a1 - 1];
  }
}

__CFString *PGStringFromPlaybackStateContentType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7F33228[a1 - 1];
  }
}

void sub_1BB2A45DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void PG_dispatch_async_with_timeout(void *a1, void *a2, void *a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v11 = dispatch_queue_create("com.apple.pegasus.PG_dispatch_async_with_timeout", v10);

  v12 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __PG_dispatch_async_with_timeout_block_invoke;
  block[3] = &unk_1E7F33328;
  v18 = v7;
  v19 = v11;
  v22 = a4;
  v20 = v8;
  v21 = v9;
  v13 = v9;
  v14 = v11;
  v15 = v8;
  v16 = v7;
  dispatch_async(v12, block);
}

void PGWaitForNotificationWithTimeout(void *a1, void *a2, void *a3, void *a4, void *a5, double a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__1;
  v27[4] = __Block_byref_object_dispose__1;
  v28 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __PGWaitForNotificationWithTimeout_block_invoke;
  v22[3] = &unk_1E7F33378;
  v25 = v13;
  v26 = v27;
  v23 = v11;
  v24 = v12;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __PGWaitForNotificationWithTimeout_block_invoke_3;
  v19[3] = &unk_1E7F333A0;
  v20 = v14;
  v21 = v27;
  v15 = v14;
  v16 = v12;
  v17 = v11;
  v18 = v13;
  PG_dispatch_async_with_timeout(a1, v22, v19, a6);

  _Block_object_dispose(v27, 8);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __PGWaitForNotificationWithTimeout_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  if (v4 && (*(v4 + 16))())
  {
    v3[2](v3);
  }

  else
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = a1[4];
    v7 = a1[5];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __PGWaitForNotificationWithTimeout_block_invoke_2;
    v11[3] = &unk_1E7F33350;
    v12 = v3;
    v8 = [v5 addObserverForName:v6 object:v7 queue:0 usingBlock:v11];
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

uint64_t __PGWaitForNotificationWithTimeout_block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 removeObserver:*(*(*(a1 + 40) + 8) + 40)];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_1BB2AD064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB2B11FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BB2B85D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB2B8894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB2B8FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB2B9144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB2B9480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1BB2B98FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1BB2BA074(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1BB2C11F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t PGSizeIsPositive()
{
  result = BSFloatGreaterThanFloat();
  if (result)
  {

    return BSFloatGreaterThanFloat();
  }

  return result;
}

Swift::Void __swiftcall UIView.PG_setGlassBackgroundEnabled(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC522F8);
  (MEMORY[0x1EEE9AC00])();
  v5 = &v39[-v4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC52300);
  v6 = (MEMORY[0x1EEE9AC00])();
  v46 = &v39[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v39[-v9];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v39[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v39[-v13];
  v14 = sub_1BB2C7514();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1BB2C7544();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v39[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39[-v20];
  if (_UISolariumEnabled())
  {
    if (!a1)
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      sub_1BB2C75B4();
      return;
    }

    v22 = [v1 isUserInteractionEnabled];
    sub_1BB2C7504();
    v45 = v1;
    sub_1BB2C7554();
    if (v22)
    {
      sub_1BB2C7534();
      (*(v16 + 8))(v19, v15);
    }

    v43 = v21;
    sub_1BB2C75A4();
    v44 = v16;
    v23 = (v16 + 56);
    if (*(&v50 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC52310);
      v24 = v48;
      v25 = swift_dynamicCast();
      v26 = *v23;
      (*v23)(v24, v25 ^ 1u, 1, v15);
    }

    else
    {
      sub_1BB2C5450(&v49, &qword_1EBC52308);
      v26 = *v23;
      v24 = v48;
      (*v23)(v48, 1, 1, v15);
    }

    v27 = v44;
    v41 = *(v44 + 16);
    v42 = v44 + 16;
    v41(v12, v43, v15);
    v26(v12, 0, 1, v15);
    v28 = *(v3 + 48);
    sub_1BB2C53E0(v24, v5);
    sub_1BB2C53E0(v12, &v5[v28]);
    v29 = *(v27 + 48);
    if (v29(v5, 1, v15) == 1)
    {
      sub_1BB2C5450(v12, &qword_1EBC52300);
      v30 = v29(&v5[v28], 1, v15);
      v31 = v43;
      if (v30 == 1)
      {
        sub_1BB2C5450(v5, &qword_1EBC52300);
        v32 = v48;
LABEL_16:
        v35 = v46;
        sub_1BB2C53E0(v32, v46);
        if (v29(v35, 1, v15) == 1)
        {
          sub_1BB2C5450(v35, &qword_1EBC52300);
          sub_1BB2C7524();
        }

        else
        {
          v36 = sub_1BB2C7524();
          v37 = *(v44 + 8);
          v37(v35, v15);
          if (((sub_1BB2C7524() ^ v36) & 1) == 0)
          {
            v37(v31, v15);
            goto LABEL_20;
          }
        }

LABEL_19:
        *(&v50 + 1) = v15;
        v51 = MEMORY[0x1E69DC388];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v49);
        v41(boxed_opaque_existential_1, v31, v15);
        sub_1BB2C75B4();
        (*(v44 + 8))(v31, v15);
LABEL_20:
        sub_1BB2C5450(v32, &qword_1EBC52300);
        return;
      }
    }

    else
    {
      v33 = v47;
      sub_1BB2C53E0(v5, v47);
      if (v29(&v5[v28], 1, v15) != 1)
      {
        (*(v27 + 32))(v19, &v5[v28], v15);
        sub_1BB2C5514();
        v40 = sub_1BB2C7564();
        v34 = *(v27 + 8);
        v34(v19, v15);
        sub_1BB2C5450(v12, &qword_1EBC52300);
        v34(v33, v15);
        sub_1BB2C5450(v5, &qword_1EBC52300);
        v32 = v48;
        v31 = v43;
        if ((v40 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      sub_1BB2C5450(v12, &qword_1EBC52300);
      (*(v27 + 8))(v33, v15);
      v31 = v43;
    }

    sub_1BB2C5450(v5, &qword_1EBC522F8);
    v32 = v48;
    goto LABEL_19;
  }
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

uint64_t sub_1BB2C53E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC52300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BB2C5450(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_1BB2C5514()
{
  result = qword_1EBC51988;
  if (!qword_1EBC51988)
  {
    sub_1BB2C7544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC51988);
  }

  return result;
}

void sub_1BB2C556C(void *a1, uint64_t a2, Swift::Bool a3)
{
  sub_1BB2C7594();
  sub_1BB2C7584();
  sub_1BB2C7574();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a1;
  UIView.PG_setGlassBackgroundEnabled(_:)(a3);
}

Swift::Void __swiftcall UIView.PG_setGlassGroupEnabled(_:)(Swift::Bool a1)
{
  v2 = sub_1BB2C74F4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    if (a1)
    {
      sub_1BB2C74E4();
      *(&v8 + 1) = v2;
      v9 = MEMORY[0x1E69DBEA8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v7);
      (*(v3 + 32))(boxed_opaque_existential_1, v5, v2);
    }

    else
    {
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
    }

    sub_1BB2C75B4();
  }
}

void sub_1BB2C5744(void *a1, uint64_t a2, char a3)
{
  v5 = sub_1BB2C74F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB2C7594();
  sub_1BB2C7584();
  sub_1BB2C7574();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = a1;
  if (_UISolariumEnabled())
  {
    if (a3)
    {
      sub_1BB2C74E4();
      *(&v14 + 1) = v5;
      v15 = MEMORY[0x1E69DBEA8];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
      (*(v6 + 32))(boxed_opaque_existential_1, v8, v5);
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }

    sub_1BB2C75B4();
  }

  else
  {

    v10 = v12;
  }
}

void __getFBSceneManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBSceneManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PGPictureInPictureRemoteObject.m" lineNumber:44 description:{@"Unable to find class %s", "FBSceneManager"}];

  __break(1u);
}

void __getFBSceneManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FrontBoardLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PGPictureInPictureRemoteObject.m" lineNumber:43 description:{@"%s", *a1}];

  __break(1u);
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

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
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