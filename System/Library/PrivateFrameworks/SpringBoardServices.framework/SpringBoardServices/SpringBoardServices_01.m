uint64_t SBSDisplayEdgeAdjacentToNeighboringDisplay(void *a1)
{
  v1 = a1;
  if (__sb__runningInSpringBoard())
  {
    v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.springboard"];
  }

  v3 = v2;
  v4 = [v2 objectForKey:@"SBExternalDisplayArrangementEdge"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 unsignedIntValue];
  }

  else
  {
    v6 = 1;
  }

  v7 = [v1 hardwareIdentifier];
  if (v7)
  {
  }

  else if ([v1 isMainDisplay])
  {
    goto LABEL_13;
  }

  if ((v6 - 1) > 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = dword_1917295E8[(v6 - 1)];
  }

LABEL_13:

  return v6;
}

__CFString *SBSSystemNotesPresentationModeDescription(uint64_t a1)
{
  v1 = @"unknown";
  if (!a1)
  {
    v1 = @"floating-window";
  }

  if (a1 == 1)
  {
    return @"minimized";
  }

  else
  {
    return v1;
  }
}

__CFString *SBSSystemNotesCreateReasonDescription(unint64_t a1)
{
  if (a1 >= 3)
  {
    SBSSystemNotesCreateReasonDescription_cold_1();
  }

  if (a1 > 2)
  {
    return @"-unknown-";
  }

  else
  {
    return off_1E73610D0[a1];
  }
}

id SBCardItemsControllerServerInterface()
{
  v9[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05C8E08];
  v1 = MEMORY[0x1E695DFD8];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v3 = [v1 setWithArray:v2];
  [v0 setClasses:v3 forSelector:sel_setCardItems_forControllerWithIdentifier_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v4 setWithArray:v5];
  [v0 setClasses:v6 forSelector:sel_getCardItemsForControllerWithIdentifier_withHandler_ argumentIndex:0 ofReply:1];

  return v0;
}

void sub_1916EA530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t __SystemStatusLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SystemStatusLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getSTBackgroundActivityIdentifierBackgroundLocationSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSTBackgroundActivityIdentifierBackgroundLocationSymbolLoc_ptr;
  v6 = getSTBackgroundActivityIdentifierBackgroundLocationSymbolLoc_ptr;
  if (!getSTBackgroundActivityIdentifierBackgroundLocationSymbolLoc_ptr)
  {
    v1 = SystemStatusLibrary();
    v4[3] = dlsym(v1, "STBackgroundActivityIdentifierBackgroundLocation");
    getSTBackgroundActivityIdentifierBackgroundLocationSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1916EADA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSTBackgroundActivityIdentifierBackgroundLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemStatusLibrary();
  result = dlsym(v2, "STBackgroundActivityIdentifierBackgroundLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTBackgroundActivityIdentifierBackgroundLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getSTBackgroundActivityIdentifierBackgroundLocation()
{
  STBackgroundActivityIdentifierBackgroundLocationSymbolLoc = getSTBackgroundActivityIdentifierBackgroundLocationSymbolLoc();
  if (!STBackgroundActivityIdentifierBackgroundLocationSymbolLoc)
  {
    getSTBackgroundActivityIdentifierBackgroundLocation_cold_1();
  }

  v1 = *STBackgroundActivityIdentifierBackgroundLocationSymbolLoc;

  return v1;
}

void *__getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemStatusLibrary();
  result = dlsym(v2, "STBackgroundActivityIdentifiersDescription");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTBackgroundActivityIdentifiersDescriptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SystemStatusUILibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = SystemStatusUILibraryCore_frameworkLibrary;
  v5 = SystemStatusUILibraryCore_frameworkLibrary;
  if (!SystemStatusUILibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E7361218;
    v7 = *off_1E7361228;
    v8 = 0;
    v3[3] = _sl_dlopen();
    SystemStatusUILibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1916EAFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SystemStatusUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  SystemStatusUILibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SystemStatusUILibrary()
{
  v1 = 0;
  result = SystemStatusUILibraryCore();
  if (!result)
  {
    SystemStatusUILibrary_cold_1(&v1);
  }

  return result;
}

uint64_t getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_ptr;
  v6 = getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_ptr;
  if (!getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_ptr)
  {
    v1 = SystemStatusUILibrary();
    v4[3] = dlsym(v1, "STUIBackgroundActivityIdentifiersForStyleOverrides");
    getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1916EB180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemStatusUILibrary();
  result = dlsym(v2, "STUIBackgroundActivityIdentifiersForStyleOverrides");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_STUIBackgroundActivityIdentifiersForStyleOverrides(uint64_t a1)
{
  STUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc = getSTUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc();
  if (!STUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc)
  {
    soft_STUIBackgroundActivityIdentifiersForStyleOverrides_cold_1();
  }

  return STUIBackgroundActivityIdentifiersForStyleOverridesSymbolLoc(a1);
}

uint64_t getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_ptr;
  v6 = getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_ptr;
  if (!getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_ptr)
  {
    v1 = SystemStatusUILibrary();
    v4[3] = dlsym(v1, "STUIStyleOverridesForBackgroundActivityIdentifiers");
    getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1916EB300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SystemStatusUILibrary();
  result = dlsym(v2, "STUIStyleOverridesForBackgroundActivityIdentifiers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t soft_STUIStyleOverridesForBackgroundActivityIdentifiers(uint64_t a1)
{
  STUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc = getSTUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc();
  if (!STUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc)
  {
    soft_STUIStyleOverridesForBackgroundActivityIdentifiers_cold_1();
  }

  return STUIStyleOverridesForBackgroundActivityIdentifiersSymbolLoc(a1);
}

void sub_1916EBEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SBSEventObserverInitialize(NSObject *a1, void *a2)
{
  v3 = a2;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __SBSEventObserverInitialize_block_invoke;
  handler[3] = &unk_1E73614E0;
  v6 = v3;
  v4 = v3;
  xpc_set_event_stream_handler("com.apple.notifyd.matching", a1, handler);
}

void SBSEventObserverStartObservingEvent(void *a1)
{
  v1 = a1;
  if (!CFEqual(a1, @"SignificantTimeChangeNotification"))
  {
    v1 = [@"com.apple.springboardservices.eventobserver.internal" stringByAppendingString:v1];
  }

  v2 = [v1 UTF8String];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v3, "Notification", v2);
  xpc_set_event();
}

uint64_t SBSEventObserverStopObservingEvent(void *a1)
{
  v1 = a1;
  if (!CFEqual(a1, @"SignificantTimeChangeNotification"))
  {
    v1 = [@"com.apple.springboardservices.eventobserver.internal" stringByAppendingString:v1];
  }

  [v1 UTF8String];

  return xpc_set_event();
}

void SBSEventObserverStopObservingAllEvents()
{
  v0 = xpc_copy_event();
  xpc_dictionary_apply(v0, &__block_literal_global_38);
}

uint64_t SBSEventObserverGetValueForState(void *a1)
{
  v1 = a1;
  if (!CFEqual(a1, @"SignificantTimeChangeNotification"))
  {
    v1 = [@"com.apple.springboardservices.eventobserver.internal" stringByAppendingString:v1];
  }

  out_token = 0;
  v2 = notify_register_check([v1 UTF8String], &out_token);
  v3 = 0;
  if (!v2)
  {
    v6 = 0;
    if (notify_get_state(out_token, &v6))
    {
      v4 = 1;
    }

    else
    {
      v4 = v6 == 0;
    }

    v3 = !v4;
    notify_cancel(out_token);
  }

  return v3;
}

void _SBSAutolockTimerRegisterForExternalChangeNotification()
{
  if (_SBSAutolockTimerRegisterForExternalChangeNotification___once != -1)
  {
    _SBSAutolockTimerRegisterForExternalChangeNotification_cold_1();
  }
}

uint64_t _SBSAutolockTimerPostExternalChangeNotification(uint64_t state64)
{
  v1 = state64;
  LODWORD(state64) = _SBSAutolockTimerPostExternalChangeNotification_token;
  if (_SBSAutolockTimerPostExternalChangeNotification_token != -1 || (notify_register_check("com.apple.springboard.autolockfired", &_SBSAutolockTimerPostExternalChangeNotification_token), state64 = _SBSAutolockTimerPostExternalChangeNotification_token, _SBSAutolockTimerPostExternalChangeNotification_token != -1))
  {
    notify_set_state(state64, v1);

    return notify_post("com.apple.springboard.autolockfired");
  }

  return state64;
}

void sub_1916EDF7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SBSUIAppSetWantsLockButtonEvents(uint64_t a1)
{
  v2 = SBSSpringBoardServerPort();

  return SBSetWantsLockButtonEvents(v2, a1);
}

void sub_1916F1280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916F25B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_1916F2CC0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1916F34DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1916F4800(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromPreferredNotificationListMode(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"inherit";
  }

  else
  {
    return off_1E7361858[a1 - 1];
  }
}

__CFString *NSStringFromPreferredLayout(uint64_t a1)
{
  if (a1)
  {
    return @"centeredY";
  }

  else
  {
    return @"default";
  }
}

__CFString *NSStringFromRemoteContentBackgroundStyle(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"dark";
  }

  else
  {
    return off_1E7361878[a1];
  }
}

uint64_t SBSAppSwitcherServiceRegistrationGetTypeID()
{
  if (SBSAppSwitcherServiceRegistrationGetTypeID_onceToken != -1)
  {
    SBSAppSwitcherServiceRegistrationGetTypeID_cold_1();
  }

  return SBSAppSwitcherServiceRegistrationGetTypeID_typeID;
}

void SBSAppSwitcherServiceRegistrationFinalize(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], v1, 1u, -1);
    *(a1 + 80) = 0;
    v3 = *(a1 + 88);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 88) = 0;
    }

    v4 = *(a1 + 96);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 96) = 0;
    }
  }
}

uint64_t SBSAppSwitcherServiceRegistrationEqual(const __CFString *a1, const __CFString *a2)
{
  ComposedKey = _SBSAppSwitcherServiceRegistrationCreateComposedKey(a1);
  v5 = _SBSAppSwitcherServiceRegistrationCreateComposedKey(a2);
  v6 = CFGetTypeID(a1);
  v7 = CFGetTypeID(a2);
  if (SBSAppSwitcherServiceRegistrationGetTypeID_onceToken != -1)
  {
    SBSAppSwitcherServiceRegistrationGetTypeID_cold_1();
  }

  v8 = SBSAppSwitcherServiceRegistrationGetTypeID_typeID;
  v9 = CFEqual(ComposedKey, v5);
  if (ComposedKey)
  {
    CFRelease(ComposedKey);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return (v8 == (v6 == v7)) & v9;
}

CFHashCode SBSAppSwitcherServiceRegistrationHash(const __CFString *a1)
{
  ComposedKey = _SBSAppSwitcherServiceRegistrationCreateComposedKey(a1);
  v3 = CFHash(a1[3].isa);
  if (ComposedKey)
  {
    CFRelease(ComposedKey);
  }

  return v3;
}

uint64_t __SBSAppSwitcherServiceRegistrationGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  SBSAppSwitcherServiceRegistrationGetTypeID_typeID = result;
  return result;
}

uint64_t SBSAppSwitcherServiceRegister(const __CFAllocator *a1, const __CFString *a2, const __CFString *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SBSAppSwitcherServiceRegister_cold_3(v8);
    }

    goto LABEL_13;
  }

  if (!a3)
  {
    v8 = SBLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      SBSAppSwitcherServiceRegister_cold_2(v8);
    }

LABEL_13:

    return 0;
  }

  if (SBSAppSwitcherServiceRegistrationGetTypeID_onceToken != -1)
  {
    SBSAppSwitcherServiceRegistrationGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    name = 0;
    if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name) || (*(Instance + 80) = name, *(Instance + 88) = CFStringCreateCopy(a1, a2), *(Instance + 96) = CFStringCreateCopy(a1, a3), memset(buffer, 0, 512), v41 = 0u, v42 = 0u, v39 = 0u, v40 = 0u, v37 = 0u, v38 = 0u, v35 = 0u, v36 = 0u, v33 = 0u, v34 = 0u, v31 = 0u, v32 = 0u, v29 = 0u, v30 = 0u, v27 = 0u, v28 = 0u, v25 = 0u, v26 = 0u, v23 = 0u, v24 = 0u, v21 = 0u, v22 = 0u, v19 = 0u, v20 = 0u, v17 = 0u, v18 = 0u, v15 = 0u, v16 = 0u, v13 = 0u, v14 = 0u, *v11 = 0u, v12 = 0u, CFStringGetCString(*(Instance + 88), buffer, 1024, 0x8000100u), CFStringGetCString(*(Instance + 96), v11, 1024, 0x8000100u), v7 = SBSSpringBoardServerPort(), SBAppSwitcherServiceRegister(v7, *(Instance + 80), buffer, v11)))
    {
      CFRelease(Instance);
      return 0;
    }
  }

  return Instance;
}

uint64_t SBSAppSwitcherServiceRegistrationGetBundleID(uint64_t result)
{
  if (result)
  {
    if (*(result + 80))
    {
      return *(result + 88);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL SBSAppSwitcherServiceRegistrationGetIsValid(_BOOL8 result)
{
  if (result)
  {
    return *(result + 80) != 0;
  }

  return result;
}

uint64_t SBSAppSwitcherServiceRegistrationGetViewControllerClassName(uint64_t result)
{
  if (result)
  {
    if (*(result + 80))
    {
      return *(result + 96);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFStringRef _SBSAppSwitcherServiceRegistrationCreateComposedKey(const __CFString *a1)
{
  v1 = a1;
  v6[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    isa = v1[3].isa;
    v6[0] = v1[2].length;
    v6[1] = isa;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
    v1 = CFStringCreateByCombiningStrings(*MEMORY[0x1E695E480], v4, @":");

    objc_autoreleasePoolPop(v2);
  }

  return v1;
}

void sub_1916F94A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void SBSRegisterDisplayIdentifiersChangedBlock(void *a1)
{
  v1 = a1;
  v2 = +[_SBSDisplayIdentifiersCache sharedInstance];
  [v2 registerChangedBlock:v1];
}

uint64_t SBSSetRequiredContextIdsForMedusaDragAndDropForSpotlightOnly(void *a1)
{
  _requiredContextIdsForMedusaDragAndDrop = [a1 copy];

  return MEMORY[0x1EEE66BB8]();
}

__CFString *NSStringFromSBSAccessoryType(unint64_t a1)
{
  if (a1 > 8)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7361A48[a1];
  }
}

void sub_1916FCA30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void __copy_assignment_8_8_t0w40_s40_s48(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v4;
  *(a1 + 16) = v5;
  objc_storeStrong((a1 + 40), *(a2 + 5));
  v6 = *(a2 + 6);

  objc_storeStrong((a1 + 48), v6);
}

void SBMachServiceInitialize(uint64_t *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (a1[5])
  {
    v2 = SBLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      SBMachServiceInitialize_cold_1();
    }

LABEL_13:

    return;
  }

  if (!v1 || !a1[4] || !a1[2])
  {
    v2 = SBLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      SBMachServiceInitialize_cold_2();
    }

    goto LABEL_13;
  }

  v4 = *(a1 + 2);
  v5 = *(a1[3] + 8);
  IsUsable = BSMachPortIsUsable();
  v7 = SBLogCommon();
  v8 = v7;
  if (IsUsable)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 136446466;
      v13 = v1;
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_19169D000, v8, OS_LOG_TYPE_INFO, "[SBMig] Service initialized: %{public}s (ID %d)", &v12, 0x12u);
    }

    v12 = 16;
    MEMORY[0x193AFF7F0](*MEMORY[0x1E69E9A60], v4, 1, &v12, 1);
    f = dispatch_mach_create_f();
    dispatch_set_qos_class_fallback();
    v10 = a1[5];
    a1[5] = f;
    v11 = f;

    dispatch_mach_connect();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136446210;
      v13 = v1;
      _os_log_impl(&dword_19169D000, v8, OS_LOG_TYPE_DEFAULT, "[SBMig] Service %{public}s cannot be initialized because the receive port is invalid.", &v12, 0xCu);
    }
  }
}

uint64_t SBSUIActivateRemoteAlertWithLifecycleNotifications(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = a1;
  if (v9)
  {
    v10 = a2;
    v11 = [v10 bs_safeStringForKey:@"ViewControllerClass"];
    if (v11)
    {
      v12 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:v9 viewControllerClassName:v11];
      -[SBSRemoteAlertDefinition setForCarPlay:](v12, "setForCarPlay:", [v10 bs_BOOLForKey:@"CarDisplay"]);
      v13 = [SBSRemoteAlertConfigurationContext configurationContextWithLegacyAlertOptions:v10];
      v14 = [SBSRemoteAlertHandle lookupHandlesForDefinition:v12 creatingIfNone:1 configurationContext:v13];
      v15 = [v14 firstObject];

      if (v15)
      {
        v29 = 0;
        v30 = &v29;
        v31 = 0x3032000000;
        v32 = __Block_byref_object_copy__4;
        v33 = __Block_byref_object_dispose__4;
        v34 = objc_alloc_init(_SBSUIRemoteAlertServiceObserverHandle);
        [v15 registerObserver:v30[5]];
        v16 = v30[5];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __SBSUIActivateRemoteAlertWithLifecycleNotifications_block_invoke;
        v26[3] = &unk_1E7361B80;
        v27 = v8;
        v28 = &v29;
        [v16 setDeactivationHandler:v26];
        if ([v15 isActive])
        {
          if (v7)
          {
            v7[2](v7, 1);
          }
        }

        else
        {
          v18 = v30[5];
          v21 = MEMORY[0x1E69E9820];
          v22 = 3221225472;
          v23 = __SBSUIActivateRemoteAlertWithLifecycleNotifications_block_invoke_2;
          v24 = &unk_1E735F6D8;
          v25 = v7;
          [v18 setActivationHandler:&v21];
          v19 = [SBSRemoteAlertActivationContext activationContextWithLegacyAlertOptions:v10, v21, v22, v23, v24];
          [v19 setShouldInvalidateWhenDeactivated:1];
          [v15 activateWithContext:v19];
        }

        _Block_object_dispose(&v29, 8);
        v17 = 1;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void sub_1916FEF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SBSUIActivateRemoteAlertWithLifecycleNotifications_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

uint64_t __SBSUIActivateRemoteAlertWithLifecycleNotifications_block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

BOOL SBSUIIsNamedRemoteAlertCurrentlyActive(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length] && objc_msgSend(v4, "length"))
  {
    v5 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:v3 viewControllerClassName:v4];
    v6 = [SBSRemoteAlertHandle lookupHandlesForDefinition:v5 creatingIfNone:0];
    v7 = [v6 count] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

__CFString *NSStringFromAnalyticsQueryName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"FolderStats";
  }

  else
  {
    return off_1E7361BF8[a1 - 1];
  }
}

__CFString *NSStringFromAnalyticsEventType(uint64_t a1)
{
  if ((a1 - 1) > 0x46)
  {
    return @"HomeButtonPressed";
  }

  else
  {
    return off_1E7361E58[a1 - 1];
  }
}

__CFString *NSStringFromSBSAnalyticsActionButtonInteractionType(uint64_t a1)
{
  v1 = @"Pressed";
  if (a1 == 1)
  {
    v1 = @"LongPressed";
  }

  if (a1 == 2)
  {
    return @"Suppressed";
  }

  else
  {
    return v1;
  }
}

uint64_t _SBSGetIsAlive(int a1, _BYTE *a2, mach_msg_timeout_t a3)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x30D4000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162387, 0x18u, 0x30u, v7, a3, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 200100)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _SBSDisplayIdentifierForPID(mach_port_t a1, mach_port_t a2, char *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(&msg[20].msgh_size, 0, 28);
  memset(&msg[1].msgh_local_port, 0, 448);
  *&msg[0].msgh_id = 0u;
  *&msg[0].msgh_size = 0u;
  *&msg[1].msgh_bits = *MEMORY[0x1E69E99E0];
  msg[1].msgh_remote_port = a2;
  special_reply_port = mig_get_special_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = special_reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x30D4100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v7 = mach_msg(msg, 3162115, 0x24u, 0x434u, msgh_local_port, 0, 0);
  msgh_remote_port = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (msg[0].msgh_id == 71)
      {
        msgh_remote_port = 4294966988;
      }

      else if (msg[0].msgh_id == 200101)
      {
        if ((msg[0].msgh_bits & 0x80000000) == 0)
        {
          if (msg[0].msgh_size - 1069 <= 0xFFFFFBFE)
          {
            if (msg[1].msgh_remote_port)
            {
              v9 = msg[0].msgh_remote_port == 0;
            }

            else
            {
              v9 = 0;
            }

            if (v9 && msg[0].msgh_size == 36)
            {
              msgh_remote_port = msg[1].msgh_remote_port;
            }

            else
            {
              msgh_remote_port = 4294966996;
            }

            goto LABEL_28;
          }

          if (!msg[0].msgh_remote_port)
          {
            msgh_remote_port = msg[1].msgh_remote_port;
            if (!msg[1].msgh_remote_port)
            {
              msgh_remote_port = 4294966996;
              if (msg[1].msgh_voucher_port <= 0x400 && msg[0].msgh_size - 44 >= msg[1].msgh_voucher_port && msg[0].msgh_size == ((LOWORD(msg[1].msgh_voucher_port) + 3) & 0xFFC) + 44)
              {
                mig_strncpy(a3, &msg[1].msgh_id, 1024);
                return 0;
              }
            }

            goto LABEL_28;
          }
        }

        msgh_remote_port = 4294966996;
      }

      else
      {
        msgh_remote_port = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(msg);
      return msgh_remote_port;
    }

    mig_dealloc_special_reply_port();
  }

  if ((msgh_remote_port - 268435459) <= 1)
  {
    if ((msg[0].msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg[0].msgh_local_port);
    }

    goto LABEL_28;
  }

  return msgh_remote_port;
}

uint64_t _SBSDisplayIdentifiersForPID(int a1, int a2, void *a3, _DWORD *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  *&msg_4[28] = a2;
  special_reply_port = mig_get_special_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = special_reply_port;
  msg = 5395;
  *&msg_4[12] = 0x30D4200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v8 = *&msg_4[8];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x24u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg_4[16] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg_4[16] == 200102)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 36)
          {
            v10 = 4294966996;
            if (*&msg_4[28])
            {
              if (*&msg_4[4])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg_4[28];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_28;
        }

        v10 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
        {
          v11 = *&msg_4[36];
          if (*&msg_4[36] == *&msg_4[48])
          {
            v10 = 0;
            *a3 = *&msg_4[24];
            *a4 = v11;
            return v10;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg_4[8]);
    }

    goto LABEL_28;
  }

  return v10;
}

uint64_t _SBSApplicationDisplayIdentifiers(int a1, char a2, char a3, void *a4, _DWORD *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  msg_4[28] = a2;
  *&msg_4[29] = 0;
  msg_4[31] = 0;
  msg_4[32] = a3;
  *&msg_4[33] = 0;
  msg_4[35] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = special_reply_port;
  msg = 5395;
  *&msg_4[12] = 0x30D4300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v9 = *&msg_4[8];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(&msg, 3162115, 0x28u, 0x40u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg_4[16] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg_4[16] == 200103)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 36)
          {
            v11 = 4294966996;
            if (*&msg_4[28])
            {
              if (*&msg_4[4])
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&msg_4[28];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_28;
        }

        v11 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
        {
          v12 = *&msg_4[36];
          if (*&msg_4[36] == *&msg_4[48])
          {
            v11 = 0;
            *a4 = *&msg_4[24];
            *a5 = v12;
            return v11;
          }
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg_4[8]);
    }

    goto LABEL_28;
  }

  return v11;
}

uint64_t _SBSFrontmostApplicationDisplayIdentifier(mach_port_t a1, char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&msg[20].msgh_size, 0, 28);
  memset(&msg[1].msgh_local_port, 0, 448);
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  special_reply_port = mig_get_special_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = special_reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x30D4400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x434u, msgh_local_port, 0, 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (msg[0].msgh_id == 71)
      {
        msgh_remote_port = 4294966988;
      }

      else if (msg[0].msgh_id == 200104)
      {
        if ((msg[0].msgh_bits & 0x80000000) == 0)
        {
          if (msg[0].msgh_size - 1069 <= 0xFFFFFBFE)
          {
            if (msg[1].msgh_remote_port)
            {
              v8 = msg[0].msgh_remote_port == 0;
            }

            else
            {
              v8 = 0;
            }

            if (v8 && msg[0].msgh_size == 36)
            {
              msgh_remote_port = msg[1].msgh_remote_port;
            }

            else
            {
              msgh_remote_port = 4294966996;
            }

            goto LABEL_28;
          }

          if (!msg[0].msgh_remote_port)
          {
            msgh_remote_port = msg[1].msgh_remote_port;
            if (!msg[1].msgh_remote_port)
            {
              msgh_remote_port = 4294966996;
              if (msg[1].msgh_voucher_port <= 0x400 && msg[0].msgh_size - 44 >= msg[1].msgh_voucher_port && msg[0].msgh_size == ((LOWORD(msg[1].msgh_voucher_port) + 3) & 0xFFC) + 44)
              {
                mig_strncpy(a2, &msg[1].msgh_id, 1024);
                return 0;
              }
            }

            goto LABEL_28;
          }
        }

        msgh_remote_port = 4294966996;
      }

      else
      {
        msgh_remote_port = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(msg);
      return msgh_remote_port;
    }

    mig_dealloc_special_reply_port();
  }

  if ((msgh_remote_port - 268435459) <= 1)
  {
    if ((msg[0].msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg[0].msgh_local_port);
    }

    goto LABEL_28;
  }

  return msgh_remote_port;
}

uint64_t _SBSBundlePathForDisplayIdentifier(mach_port_name_t a1, const char *a2, char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, 480);
  *name = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v16 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v16 + 8, a2, 1024);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v15 = 0x30D4500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v8 = name[3];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(name, 3162115, v6 + 40, 0x434u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v15) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v15) == 200105)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] - 1069 <= 0xFFFFFBFE)
          {
            if (LODWORD(v16[0]))
            {
              v11 = name[2] == 0;
            }

            else
            {
              v11 = 0;
            }

            if (v11 && name[1] == 36)
            {
              v10 = LODWORD(v16[0]);
            }

            else
            {
              v10 = 4294966996;
            }

            goto LABEL_31;
          }

          if (!name[2])
          {
            v10 = LODWORD(v16[0]);
            if (!LODWORD(v16[0]))
            {
              v10 = 4294966996;
              if (DWORD2(v16[0]) <= 0x400 && name[1] - 44 >= DWORD2(v16[0]) && name[1] == ((WORD4(v16[0]) + 3) & 0xFFC) + 44)
              {
                mig_strncpy(a3, v16 + 12, 1024);
                return 0;
              }
            }

            goto LABEL_31;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(name);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_31;
  }

  return v10;
}

uint64_t _SBSIsSystemApplication(int a1, _BYTE *a2, _BYTE *a3)
{
  *&msg[20] = 0u;
  v13 = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x30D4700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x18u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 200107)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v9 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v13;
                *a3 = BYTE4(v13);
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg[32] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _SBSLocalizedApplicationNameForDisplayIdentifier(mach_port_name_t a1, const char *a2, char *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, 480);
  *name = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v16 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v16 + 8, a2, 1024);
  }

  LODWORD(v16[0]) = 0;
  DWORD1(v16[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v15 = 0x30D4800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v8 = name[3];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(name, 3162115, v6 + 40, 0x434u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (DWORD1(v15) == 71)
      {
        v10 = 4294966988;
      }

      else if (DWORD1(v15) == 200108)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] - 1069 <= 0xFFFFFBFE)
          {
            if (LODWORD(v16[0]))
            {
              v11 = name[2] == 0;
            }

            else
            {
              v11 = 0;
            }

            if (v11 && name[1] == 36)
            {
              v10 = LODWORD(v16[0]);
            }

            else
            {
              v10 = 4294966996;
            }

            goto LABEL_31;
          }

          if (!name[2])
          {
            v10 = LODWORD(v16[0]);
            if (!LODWORD(v16[0]))
            {
              v10 = 4294966996;
              if (DWORD2(v16[0]) <= 0x400 && name[1] - 44 >= DWORD2(v16[0]) && name[1] == ((WORD4(v16[0]) + 3) & 0xFFC) + 44)
              {
                mig_strncpy(a3, v16 + 12, 1024);
                return 0;
              }
            }

            goto LABEL_31;
          }
        }

        v10 = 4294966996;
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(name);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_31;
  }

  return v10;
}

uint64_t _SBSGetDisplayIdentifiersForExternalAccessoryProtocols(mach_port_name_t a1, const char *a2, void *a3, _DWORD *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
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
  v17 = 0u;
  *name = 0u;
  memset(v16, 0, sizeof(v16));
  *(&v16[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(&v16[1] + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(&v16[1] + 8, a2, 1024);
  }

  LODWORD(v16[1]) = 0;
  DWORD1(v16[1]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v16[0] = 0x30D4900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v10 = name[3];
  }

  else
  {
    v10 = special_reply_port;
  }

  v11 = mach_msg(name, 3162115, v8 + 40, 0x40u, v10, 0, 0);
  v12 = v11;
  if ((v11 - 268435458) > 0xE || ((1 << (v11 - 2)) & 0x4003) == 0)
  {
    if (!v11)
    {
      if (DWORD1(v16[0]) == 71)
      {
        v12 = 4294966988;
      }

      else if (DWORD1(v16[0]) == 200109)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 36)
          {
            v12 = 4294966996;
            if (LODWORD(v16[1]))
            {
              if (name[2])
              {
                v12 = 4294966996;
              }

              else
              {
                v12 = LODWORD(v16[1]);
              }
            }
          }

          else
          {
            v12 = 4294966996;
          }

          goto LABEL_31;
        }

        v12 = 4294966996;
        if (DWORD2(v16[0]) == 1 && name[1] == 56 && !name[2] && BYTE7(v16[1]) == 1)
        {
          v13 = DWORD2(v16[1]);
          if (DWORD2(v16[1]) == DWORD1(v17))
          {
            v12 = 0;
            *a3 = *(v16 + 12);
            *a4 = v13;
            return v12;
          }
        }
      }

      else
      {
        v12 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(name);
      return v12;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v12 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_31;
  }

  return v12;
}

uint64_t _SBSGetIconState(int a1, char a2, void *a3, _DWORD *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  msg_4[28] = a2;
  *&msg_4[29] = 0;
  msg_4[31] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = special_reply_port;
  msg = 5395;
  *&msg_4[12] = 0x30D4A00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v8 = *&msg_4[8];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x24u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg_4[16] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg_4[16] == 200110)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 36)
          {
            v10 = 4294966996;
            if (*&msg_4[28])
            {
              if (*&msg_4[4])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg_4[28];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_28;
        }

        v10 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
        {
          v11 = *&msg_4[36];
          if (*&msg_4[36] == *&msg_4[48])
          {
            v10 = 0;
            *a3 = *&msg_4[24];
            *a4 = v11;
            return v10;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg_4[8]);
    }

    goto LABEL_28;
  }

  return v10;
}

uint64_t _SBSGetPendingIconState(int a1, char a2, void *a3, _DWORD *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  msg_4[28] = a2;
  *&msg_4[29] = 0;
  msg_4[31] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = special_reply_port;
  msg = 5395;
  *&msg_4[12] = 0x30D4B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v8 = *&msg_4[8];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x24u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg_4[16] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg_4[16] == 200111)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 36)
          {
            v10 = 4294966996;
            if (*&msg_4[28])
            {
              if (*&msg_4[4])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg_4[28];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_28;
        }

        v10 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
        {
          v11 = *&msg_4[36];
          if (*&msg_4[36] == *&msg_4[48])
          {
            v10 = 0;
            *a3 = *&msg_4[24];
            *a4 = v11;
            return v10;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg_4[8]);
    }

    goto LABEL_28;
  }

  return v10;
}

uint64_t _SBSGetFlattenedIconState(int a1, char a2, void *a3, _DWORD *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  msg_4[28] = a2;
  *&msg_4[29] = 0;
  msg_4[31] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = special_reply_port;
  msg = 5395;
  *&msg_4[12] = 0x30D4C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v8 = *&msg_4[8];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x24u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg_4[16] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg_4[16] == 200112)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 36)
          {
            v10 = 4294966996;
            if (*&msg_4[28])
            {
              if (*&msg_4[4])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg_4[28];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_28;
        }

        v10 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
        {
          v11 = *&msg_4[36];
          if (*&msg_4[36] == *&msg_4[48])
          {
            v10 = 0;
            *a3 = *&msg_4[24];
            *a4 = v11;
            return v10;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg_4[8]);
    }

    goto LABEL_28;
  }

  return v10;
}

uint64_t _SBSSetIconState(mach_port_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 1;
  v11 = a2;
  v12 = 16777472;
  v13 = a3;
  v14 = *MEMORY[0x1E69E99E0];
  v15 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&v9.msgh_bits = 2147489043;
  v9.msgh_remote_port = a1;
  v9.msgh_local_port = special_reply_port;
  *&v9.msgh_voucher_port = 0x30D4D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v9);
    msgh_local_port = v9.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(&v9, 3162115, 0x38u, 0x2Cu, msgh_local_port, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    goto LABEL_14;
  }

  if (v6)
  {
    mig_dealloc_special_reply_port();
LABEL_14:
    if ((v7 - 268435459) > 1)
    {
      return v7;
    }

    if ((v9.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v9.msgh_local_port);
    }

LABEL_19:
    mach_msg_destroy(&v9);
    return v7;
  }

  if (v9.msgh_id == 71)
  {
    v7 = 4294966988;
    goto LABEL_19;
  }

  if (v9.msgh_id != 200113)
  {
    v7 = 4294966995;
    goto LABEL_19;
  }

  v7 = 4294966996;
  if ((v9.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (*&v9.msgh_size != 36)
  {
    goto LABEL_19;
  }

  v7 = HIDWORD(v11);
  if (HIDWORD(v11))
  {
    goto LABEL_19;
  }

  return v7;
}

uint64_t _SBSSetApplicationBadgeNumber(mach_port_name_t a1, const char *a2, int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, 480);
  *name = 0u;
  v10 = 0u;
  *(&v10 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v11 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v11 + 8, a2, 1024);
  }

  LODWORD(v11[0]) = 0;
  DWORD1(v11[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  *(v11 + v6 + 8) = a3;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v10 = 0x30D4E00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v7 = mach_msg(name, 2097153, v6 + 44, 0, 0, 0, 0);
  if ((v7 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v7;
}

uint64_t _SBSSetApplicationBadgeString(mach_port_name_t a1, const char *a2, const char *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  memset(v17, 0, 464);
  *name = 0u;
  v15 = 0u;
  *(&v15 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(&v16 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(&v16 + 8, a2, 1024);
  }

  LODWORD(v16) = 0;
  DWORD1(v16) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = &name[-256] + v6;
  v8 = v17 + v6;
  if (MEMORY[0x1EEE9AC40])
  {
    v9 = mig_strncpy_zerofill(v8, a3, 1024);
  }

  else
  {
    v9 = mig_strncpy(v8, a3, 1024);
  }

  v10 = v6 + 48;
  *(v7 + 267) = v9;
  *(v7 + 266) = 0;
  v11 = (v9 + 3) & 0xFFFFFFFC;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v15 = 0x30D4F00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v12 = mach_msg(name, 2097153, v10 + v11, 0, 0, 0, 0);
  if ((v12 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v12;
}

uint64_t _SBSGetIconPNGData(mach_port_name_t a1, const char *a2, char a3, void *a4, _DWORD *a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  *name = 0u;
  memset(v19, 0, sizeof(v19));
  *(&v19[0] + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v9 = mig_strncpy_zerofill(&v19[1] + 8, a2, 1024);
  }

  else
  {
    v9 = mig_strncpy(&v19[1] + 8, a2, 1024);
  }

  LODWORD(v19[1]) = 0;
  DWORD1(v19[1]) = v9;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  v11 = name + v10;
  v11[40] = a3;
  *(v11 + 41) = 0;
  v11[43] = 0;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v19[0] = 0x30D5100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v13 = name[3];
  }

  else
  {
    v13 = special_reply_port;
  }

  v14 = mach_msg(name, 3162115, v10 + 44, 0x40u, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) > 0xE || ((1 << (v14 - 2)) & 0x4003) == 0)
  {
    if (!v14)
    {
      if (DWORD1(v19[0]) == 71)
      {
        v15 = 4294966988;
      }

      else if (DWORD1(v19[0]) == 200117)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 36)
          {
            v15 = 4294966996;
            if (LODWORD(v19[1]))
            {
              if (name[2])
              {
                v15 = 4294966996;
              }

              else
              {
                v15 = LODWORD(v19[1]);
              }
            }
          }

          else
          {
            v15 = 4294966996;
          }

          goto LABEL_31;
        }

        v15 = 4294966996;
        if (DWORD2(v19[0]) == 1 && name[1] == 56 && !name[2] && BYTE7(v19[1]) == 1)
        {
          v16 = DWORD2(v19[1]);
          if (DWORD2(v19[1]) == DWORD1(v20))
          {
            v15 = 0;
            *a4 = *(v19 + 12);
            *a5 = v16;
            return v15;
          }
        }
      }

      else
      {
        v15 = 4294966995;
      }

LABEL_31:
      mach_msg_destroy(name);
      return v15;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v15 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_31;
  }

  return v15;
}

uint64_t (*SpringBoardUtility_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 200018) >= 0xFFFFFFEE)
  {
    return _SBMigSpringBoardUtility_subsystem[5 * (v1 - 200000) + 5];
  }

  else
  {
    return 0;
  }
}

_DWORD *_XGetIsAlive(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (result[6] || result[7] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  result = _SBMigGetIsAlive(result[3], (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

size_t _XDisplayIdentifierForPID(size_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v8[0] = *(result + 56);
  v8[1] = v6;
  result = _SBMigDisplayIdentifierForPID(v4, v5, a2 + 44, v8);
  *(a2 + 32) = result;
  v7 = *MEMORY[0x1E69E99E0];
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    result = strlen((a2 + 44));
    if ((result + 1) >> 32)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = v7;
    }

    else
    {
      *(a2 + 36) = 0;
      *(a2 + 40) = result + 1;
      *(a2 + 4) = ((result + 4) & 0xFFFFFFFC) + 44;
    }
  }

  return result;
}

uint64_t _XDisplayIdentifiersForPID(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 52) = 0;
  v4 = a2 + 52;
  v5 = a2 + 28;
  *(a2 + 36) = 16777472;
  v6 = *(result + 12);
  v7 = *(result + 32);
  v8 = *(result + 72);
  v9[0] = *(result + 56);
  v9[1] = v8;
  result = _SBMigDisplayIdentifiersForPID(v6, v7, v5, v4, v9);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XApplicationDisplayIdentifiers(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 40) || *(result + 44) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 52) = 0;
  v4 = a2 + 52;
  v5 = a2 + 28;
  *(a2 + 36) = 16777472;
  v6 = *(result + 12);
  v7 = *(result + 32);
  v8 = *(result + 36);
  v9 = *(result + 76);
  v10[0] = *(result + 60);
  v10[1] = v9;
  result = _SBMigApplicationDisplayIdentifiers(v6, v7, v8, v5, v4, v10);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XFrontmostApplicationDisplayIdentifier(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v8[0] = *(v3 + 5);
  v8[1] = v6;
  result = _SBMigFrontmostApplicationDisplayIdentifier(v5, a2 + 44, v8);
  *(a2 + 32) = result;
  v7 = *MEMORY[0x1E69E99E0];
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    result = strlen((a2 + 44));
    if ((result + 1) >> 32)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = v7;
    }

    else
    {
      *(a2 + 36) = 0;
      *(a2 + 40) = result + 1;
      *(a2 + 4) = ((result + 4) & 0xFFFFFFFC) + 44;
    }
  }

  return result;
}

_DWORD *_XBundlePathForDisplayIdentifier(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 1065) < 0xFFFFFBFF) || ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 10, 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v10 = v3 + ((v4 + 3) & 0xFFC);
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  v11 = v3[3];
  v12 = *(v10 + 36);
  v14[0] = *(v10 + 20);
  v14[1] = v12;
  result = _SBMigBundlePathForDisplayIdentifier(v11, (v3 + 10), a2 + 44, v14);
  *(a2 + 32) = result;
  v13 = *MEMORY[0x1E69E99E0];
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    result = strlen((a2 + 44));
    if ((result + 1) >> 32)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = v13;
    }

    else
    {
      *(a2 + 36) = 0;
      *(a2 + 40) = result + 1;
      *(a2 + 4) = ((result + 4) & 0xFFFFFFFC) + 44;
    }
  }

  return result;
}

_DWORD *_XIsSystemApplication(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = _SBMigIsSystemApplication(v5, a2 + 36, a2 + 40, v7);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

_DWORD *_XLocalizedApplicationNameForDisplayIdentifier(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 1065) < 0xFFFFFBFF) || ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 10, 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v10 = v3 + ((v4 + 3) & 0xFFC);
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  v11 = v3[3];
  v12 = *(v10 + 36);
  v14[0] = *(v10 + 20);
  v14[1] = v12;
  result = _SBMigLocalizedApplicationNameForDisplayIdentifier(v11, (v3 + 10), a2 + 44, v14);
  *(a2 + 32) = result;
  v13 = *MEMORY[0x1E69E99E0];
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    result = strlen((a2 + 44));
    if ((result + 1) >> 32)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = v13;
    }

    else
    {
      *(a2 + 36) = 0;
      *(a2 + 40) = result + 1;
      *(a2 + 4) = ((result + 4) & 0xFFFFFFFC) + 44;
    }
  }

  return result;
}

_DWORD *_XGetDisplayIdentifiersForExternalAccessoryProtocols(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], (v4 - 1065) < 0xFFFFFBFF) || ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), !v8 || (result = memchr(result + 10, 0, v4 - 40)) == 0))
  {
    v9 = -304;
LABEL_11:
    *(a2 + 32) = v9;
    goto LABEL_12;
  }

  v10 = v3 + ((v4 + 3) & 0xFFC);
  if (*v10 || *(v10 + 1) <= 0x1Fu)
  {
    v9 = -309;
    goto LABEL_11;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = 16777472;
  v11 = v3[3];
  v12 = *(v10 + 36);
  v13[0] = *(v10 + 20);
  v13[1] = v12;
  result = _SBMigGetDisplayIdentifiersForExternalAccessoryProtocols(v11, (v3 + 10), (a2 + 28), (a2 + 52), v13);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_12:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XGetIconState(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 52) = 0;
  v4 = (a2 + 52);
  v5 = (a2 + 28);
  *(a2 + 36) = 16777472;
  v6 = *(result + 12);
  v7 = *(result + 32);
  v8 = *(result + 72);
  v9[0] = *(result + 56);
  v9[1] = v8;
  result = _SBMigGetIconState(v6, v7, v5, v4, v9);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XGetPendingIconState(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 52) = 0;
  v4 = (a2 + 52);
  v5 = (a2 + 28);
  *(a2 + 36) = 16777472;
  v6 = *(result + 12);
  v7 = *(result + 32);
  v8 = *(result + 72);
  v9[0] = *(result + 56);
  v9[1] = v8;
  result = _SBMigGetPendingIconState(v6, v7, v5, v4, v9);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XGetFlattenedIconState(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 52) = 0;
  v4 = (a2 + 52);
  v5 = (a2 + 28);
  *(a2 + 36) = 16777472;
  v6 = *(result + 12);
  v7 = *(result + 32);
  v8 = *(result + 72);
  v9[0] = *(result + 56);
  v9[1] = v8;
  result = _SBMigGetFlattenedIconState(v6, v7, v5, v4, v9);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void _XSetIconState(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 12);
        v7 = *(a1 + 28);
        v8 = *(a1 + 92);
        v9[0] = *(a1 + 76);
        v9[1] = v8;
        *(a2 + 32) = _SBMigSetIconState(v6, v7, v4, v9);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        goto LABEL_11;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
LABEL_11:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

_DWORD *_XSetApplicationBadgeNumber(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1069 >= 0xFFFFFBFF) && (v5 = result[9], v5 <= 0x400) && ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 44 >= v5) ? (v7 = v4 == v6 + 44) : (v7 = 0), v7 && (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr(result + 10, 0, v8 - 40)) != 0)))
  {
    v9 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v9 && *(v9 + 1) > 0x1Fu)
    {
      v11 = v3[3];
      v12 = *(v3 + v6 + 40);
      v13 = *(v9 + 36);
      v14[0] = *(v9 + 20);
      v14[1] = v13;
      result = _SBMigSetApplicationBadgeNumber(v11, (v3 + 10), v12, v14);
      *(a2 + 32) = result;
      return result;
    }

    v10 = -309;
  }

  else
  {
    v10 = -304;
  }

  *(a2 + 32) = v10;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XSetApplicationBadgeString(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0)
  {
    goto LABEL_16;
  }

  v3 = result;
  v4 = result[1];
  if ((v4 - 2097) < 0xFFFFF7FF)
  {
    goto LABEL_16;
  }

  v5 = result[9];
  if (v5 > 0x400)
  {
    goto LABEL_16;
  }

  v6 = (v5 + 3) & 0xFFFFFFFC;
  if (v4 - 48 < v5 || v4 < v6 + 48)
  {
    goto LABEL_16;
  }

  v8 = v4 - v6;
  v9 = result + v6;
  v10 = *(v9 + 11);
  v11 = v10 <= 0x400 && v8 - 48 >= v10;
  v12 = ((v10 + 3) & 0xFFC) + 48;
  if (!v11 || v8 != v12)
  {
    goto LABEL_16;
  }

  v15 = 1064;
  if (v4 < 0x428)
  {
    v15 = result[1];
  }

  result = memchr(result + 10, 0, v15 - 40);
  if (result && ((v16 = v9 + 48, v3 + v4 - v16 >= 1024) ? (v17 = 1024) : (v17 = v3 + v4 - v16), (result = memchr(v16, 0, v17)) != 0))
  {
    v18 = v3 + ((v4 + 3) & 0x1FFC);
    if (!*v18 && *(v18 + 1) > 0x1Fu)
    {
      v19 = v3[3];
      v20 = *(v18 + 36);
      v21[0] = *(v18 + 20);
      v21[1] = v20;
      result = _SBMigSetApplicationBadgeString(v19, (v3 + 10), v16, v21);
      *(a2 + 32) = result;
      return result;
    }

    v14 = -309;
  }

  else
  {
LABEL_16:
    v14 = -304;
  }

  *(a2 + 32) = v14;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XGetIconPNGData(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || (v3 = result, v4 = result[1], v4 - 1069 < 0xFFFFFBFF) || (v5 = result[9], v5 > 0x400) || ((v6 = (v5 + 3) & 0xFFFFFFFC, v4 - 44 >= v5) ? (v7 = v4 == v6 + 44) : (v7 = 0), !v7 || (v4 >= 0x428 ? (v8 = 1064) : (v8 = v4), (result = memchr(result + 10, 0, v8 - 40)) == 0)))
  {
    v10 = -304;
    goto LABEL_17;
  }

  v9 = v3 + ((v4 + 3) & 0xFFC);
  if (*v9 || *(v9 + 1) <= 0x1Fu)
  {
    v10 = -309;
LABEL_17:
    *(a2 + 32) = v10;
    goto LABEL_18;
  }

  *(a2 + 52) = 0;
  *(a2 + 36) = 16777472;
  v11 = v3[3];
  v12 = *(v3 + v6 + 40);
  v13 = *(v9 + 36);
  v14[0] = *(v9 + 20);
  v14[1] = v13;
  result = _SBMigGetIconPNGData(v11, (v3 + 10), v12, (a2 + 28), (a2 + 52), v14);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_18:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t SpringBoardUtility_server(_DWORD *a1, uint64_t a2)
{
  v2 = a1[2];
  *a2 = *a1 & 0x1F;
  *(a2 + 4) = 36;
  v3 = a1[5] + 100;
  *(a2 + 8) = v2;
  *(a2 + 12) = 0;
  *(a2 + 16) = 0;
  *(a2 + 20) = v3;
  v4 = a1[5];
  if ((v4 - 200018) >= 0xFFFFFFEE && (v5 = _SBMigSpringBoardUtility_subsystem[5 * (v4 - 200000) + 5]) != 0)
  {
    (v5)(a1, a2);
    return 1;
  }

  else
  {
    result = 0;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    *(a2 + 32) = -303;
  }

  return result;
}

uint64_t _SBSSuspendFrontmostApp(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x186A000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _SBSInterruptKeybagRefetch(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x186A100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _SBSGetActiveInterfaceOrientation(int a1, _DWORD *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x186A200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 100102)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _SBSPresentPowerDownUI(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x186A300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _SBSReboot(int a1)
{
  v8 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x186A400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162115, 0x18u, 0x2Cu, v3, 0, 0);
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v5 - 268435459) > 1)
    {
      return v5;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v5;
  }

  if (*&msg[20] == 71)
  {
    v5 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 100104)
  {
    v5 = 4294966995;
    goto LABEL_20;
  }

  v5 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v5 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v5;
}

uint64_t _SBSShutDown(int a1)
{
  v8 = 0;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x186A500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v3 = *&msg[12];
  }

  else
  {
    v3 = special_reply_port;
  }

  v4 = mach_msg(msg, 3162115, 0x18u, 0x2Cu, v3, 0, 0);
  v5 = v4;
  if ((v4 - 268435458) <= 0xE && ((1 << (v4 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v4)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v5 - 268435459) > 1)
    {
      return v5;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v5;
  }

  if (*&msg[20] == 71)
  {
    v5 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 100105)
  {
    v5 = 4294966995;
    goto LABEL_20;
  }

  v5 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v5 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v5;
}

uint64_t _SBSEnableLockScreenBundle(mach_port_t a1, char a2, char *src, uint64_t a4, unsigned int a5)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(v16, 0, 448);
  *&v15[8] = 0u;
  memset(&name, 0, sizeof(name));
  v12 = 1;
  v13 = a4;
  v14 = 16777472;
  *v15 = a5;
  *&v15[4] = *MEMORY[0x1E69E99E0];
  v15[12] = a2;
  *&v15[13] = 0;
  v15[15] = 0;
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(v16, src, 1024);
  }

  else
  {
    v7 = mig_strncpy(v16, src, 1024);
  }

  *&v15[16] = 0;
  *&v15[20] = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  *(v16 + v8) = a5;
  name.msgh_bits = -2147483629;
  name.msgh_remote_port = a1;
  name.msgh_local_port = 0;
  *&name.msgh_voucher_port = 0x186A600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
  }

  v9 = mach_msg(&name, 2097153, v8 + 68, 0, 0, 0, 0);
  if ((v9 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    mach_msg_destroy(&name);
  }

  return v9;
}

uint64_t _SBSLockDevice(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100008;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _SBSShowNetworkPromptsIfNecessary(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100009;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _SBSGetCurrentBacklightFactor(int a1, _DWORD *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x186AA00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 100110)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _SBSDimScreen(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100011;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _SBSAddWebClipToHomeScreen(mach_port_name_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, 480);
  *name = 0u;
  v11 = 0u;
  *(&v11 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v12 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v12 + 8, a2, 1024);
  }

  LODWORD(v12[0]) = 0;
  DWORD1(v12[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v11 = 0x186AC00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v6 = name[3];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(name, 3162115, v4 + 40, 0x2Cu, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    return v8;
  }

  if (DWORD1(v11) == 71)
  {
    v8 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v11) != 100112)
  {
    v8 = 4294966995;
    goto LABEL_23;
  }

  v8 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v8 = LODWORD(v12[0]);
  if (LODWORD(v12[0]))
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t _SBSRemoveWebClipFromHomeScreen(mach_port_name_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, 480);
  *name = 0u;
  v11 = 0u;
  *(&v11 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v12 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v12 + 8, a2, 1024);
  }

  LODWORD(v12[0]) = 0;
  DWORD1(v12[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v11 = 0x186AD00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v6 = name[3];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(name, 3162115, v4 + 40, 0x2Cu, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    return v8;
  }

  if (DWORD1(v11) == 71)
  {
    v8 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v11) != 100113)
  {
    v8 = 4294966995;
    goto LABEL_23;
  }

  v8 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v8 = LODWORD(v12[0]);
  if (LODWORD(v12[0]))
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t _SBSReloadIconForIdentifier(mach_port_name_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 480);
  *name = 0u;
  v8 = 0u;
  *(&v8 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v9 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v9 + 8, a2, 1024);
  }

  LODWORD(v9[0]) = 0;
  DWORD1(v9[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v8 = 0x186AE00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v5 = mach_msg(name, 2097153, v4 + 40, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v5;
}

uint64_t _SBSAddDownloadingIconForDisplayIdentifier(mach_port_name_t a1, const char *a2, const char *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  memset(v20, 0, 464);
  *name = 0u;
  v18 = 0u;
  *(&v18 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(&v19 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(&v19 + 8, a2, 1024);
  }

  LODWORD(v19) = 0;
  DWORD1(v19) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = &name[-256] + v6;
  v8 = v20 + v6;
  if (MEMORY[0x1EEE9AC40])
  {
    v9 = mig_strncpy_zerofill(v8, a3, 1024);
  }

  else
  {
    v9 = mig_strncpy(v8, a3, 1024);
  }

  v10 = v6 + 48;
  *(v7 + 267) = v9;
  *(v7 + 266) = 0;
  v11 = (v9 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v18 = 0x186AF00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v13 = name[3];
  }

  else
  {
    v13 = special_reply_port;
  }

  v14 = mach_msg(name, 3162115, v10 + v11, 0x2Cu, v13, 0, 0);
  v15 = v14;
  if ((v14 - 268435458) <= 0xE && ((1 << (v14 - 2)) & 0x4003) != 0)
  {
    goto LABEL_21;
  }

  if (v14)
  {
    mig_dealloc_special_reply_port();
LABEL_21:
    if ((v15 - 268435459) > 1)
    {
      return v15;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_26:
    mach_msg_destroy(name);
    return v15;
  }

  if (DWORD1(v18) == 71)
  {
    v15 = 4294966988;
    goto LABEL_26;
  }

  if (DWORD1(v18) != 100115)
  {
    v15 = 4294966995;
    goto LABEL_26;
  }

  v15 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  if (name[1] != 36)
  {
    goto LABEL_26;
  }

  if (name[2])
  {
    goto LABEL_26;
  }

  v15 = v19;
  if (v19)
  {
    goto LABEL_26;
  }

  return v15;
}

uint64_t _SBSScrollToIconWithDisplayIdentifier(mach_port_name_t a1, const char *a2, char a3)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, 480);
  *name = 0u;
  v11 = 0u;
  *(&v11 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v12 + 8, a2, 1024);
  }

  else
  {
    v5 = mig_strncpy(v12 + 8, a2, 1024);
  }

  LODWORD(v12[0]) = 0;
  DWORD1(v12[0]) = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  v7 = name + v6;
  v7[40] = a3;
  *(v7 + 41) = 0;
  v7[43] = 0;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v11 = 0x186B000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v8 = mach_msg(name, 2097153, v6 + 44, 0, 0, 0, 0);
  if ((v8 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v8;
}

uint64_t _SBSGetNowPlayingAppBundleIdentifier(mach_port_t a1, char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&msg[20].msgh_size, 0, 28);
  memset(&msg[1].msgh_local_port, 0, 448);
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  special_reply_port = mig_get_special_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = special_reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x186B100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x434u, msgh_local_port, 0, 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (msg[0].msgh_id == 71)
      {
        msgh_remote_port = 4294966988;
      }

      else if (msg[0].msgh_id == 100117)
      {
        if ((msg[0].msgh_bits & 0x80000000) == 0)
        {
          if (msg[0].msgh_size - 1069 <= 0xFFFFFBFE)
          {
            if (msg[1].msgh_remote_port)
            {
              v8 = msg[0].msgh_remote_port == 0;
            }

            else
            {
              v8 = 0;
            }

            if (v8 && msg[0].msgh_size == 36)
            {
              msgh_remote_port = msg[1].msgh_remote_port;
            }

            else
            {
              msgh_remote_port = 4294966996;
            }

            goto LABEL_28;
          }

          if (!msg[0].msgh_remote_port)
          {
            msgh_remote_port = msg[1].msgh_remote_port;
            if (!msg[1].msgh_remote_port)
            {
              msgh_remote_port = 4294966996;
              if (msg[1].msgh_voucher_port <= 0x400 && msg[0].msgh_size - 44 >= msg[1].msgh_voucher_port && msg[0].msgh_size == ((LOWORD(msg[1].msgh_voucher_port) + 3) & 0xFFC) + 44)
              {
                mig_strncpy(a2, &msg[1].msgh_id, 1024);
                return 0;
              }
            }

            goto LABEL_28;
          }
        }

        msgh_remote_port = 4294966996;
      }

      else
      {
        msgh_remote_port = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(msg);
      return msgh_remote_port;
    }

    mig_dealloc_special_reply_port();
  }

  if ((msgh_remote_port - 268435459) <= 1)
  {
    if ((msg[0].msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg[0].msgh_local_port);
    }

    goto LABEL_28;
  }

  return msgh_remote_port;
}

uint64_t _SBSGetTopButtonFrames(int a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9)
{
  v33 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x186B200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v18 = *&msg[12];
  }

  else
  {
    v18 = special_reply_port;
  }

  v19 = mach_msg(msg, 3162115, 0x18u, 0x6Cu, v18, 0, 0);
  v20 = v19;
  if ((v19 - 268435458) > 0xE || ((1 << (v19 - 2)) & 0x4003) == 0)
  {
    if (!v19)
    {
      if (*&msg[20] == 71)
      {
        v20 = 4294966988;
      }

      else if (*&msg[20] == 100118)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 100)
          {
            if (!*&msg[8])
            {
              v20 = *&msg[32];
              if (!*&msg[32])
              {
                v23 = *(&v28 + 1);
                *a2 = v28;
                *a3 = v23;
                v24 = *(&v29 + 1);
                *a4 = v29;
                *a5 = v24;
                v25 = *(&v30 + 1);
                *a6 = v30;
                *a7 = v25;
                v26 = *(&v31 + 1);
                *a8 = v31;
                *a9 = v26;
                return v20;
              }

              goto LABEL_26;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v21 = 1;
            }

            else
            {
              v21 = *&msg[32] == 0;
            }

            if (v21)
            {
              v20 = 4294966996;
            }

            else
            {
              v20 = *&msg[32];
            }

            goto LABEL_26;
          }
        }

        v20 = 4294966996;
      }

      else
      {
        v20 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(msg);
      return v20;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v20 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_26;
  }

  return v20;
}

uint64_t _SBSGetApplicationNetworkFlags(int a1, _BYTE *a2, _BYTE *a3)
{
  *&msg[20] = 0u;
  v13 = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x186B400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v7 = *&msg[12];
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(msg, 3162115, 0x18u, 0x34u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg[20] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg[20] == 100120)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v9 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v13;
                *a3 = BYTE4(v13);
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v10 = 1;
            }

            else
            {
              v10 = *&msg[32] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&msg[32];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _SBSAppSwitcherServiceRegister(mach_port_t a1, int a2, char *src, const char *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  memset(v23, 0, 448);
  v21 = 0u;
  v22 = 0u;
  memset(&name, 0, sizeof(name));
  v19 = 1;
  v20 = a2;
  DWORD1(v21) = 1310720;
  *(&v21 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v6 = mig_strncpy_zerofill(&v22 + 8, src, 1024);
  }

  else
  {
    v6 = mig_strncpy(&v22 + 8, src, 1024);
  }

  LODWORD(v22) = 0;
  DWORD1(v22) = v6;
  v7 = (v6 + 3) & 0xFFFFFFFC;
  v8 = &name + v7 - 1024;
  v9 = v23 + v7;
  if (MEMORY[0x1EEE9AC40])
  {
    v10 = mig_strncpy_zerofill(v9, a4, 1024);
  }

  else
  {
    v10 = mig_strncpy(v9, a4, 1024);
  }

  v11 = v7 + 64;
  *(v8 + 271) = v10;
  *(v8 + 270) = 0;
  v12 = (v10 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x186B500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v15 = mach_msg(&name, 3162115, v11 + v12, 0x2Cu, msgh_local_port, 0, 0);
  v16 = v15;
  if ((v15 - 268435458) <= 0xE && ((1 << (v15 - 2)) & 0x4003) != 0)
  {
    goto LABEL_21;
  }

  if (v15)
  {
    mig_dealloc_special_reply_port();
LABEL_21:
    if ((v16 - 268435459) > 1)
    {
      return v16;
    }

    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

LABEL_26:
    mach_msg_destroy(&name);
    return v16;
  }

  if (name.msgh_id == 71)
  {
    v16 = 4294966988;
    goto LABEL_26;
  }

  if (name.msgh_id != 100121)
  {
    v16 = 4294966995;
    goto LABEL_26;
  }

  v16 = 4294966996;
  if ((name.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_26;
  }

  if (name.msgh_size != 36)
  {
    goto LABEL_26;
  }

  if (name.msgh_remote_port)
  {
    goto LABEL_26;
  }

  v16 = v21;
  if (v21)
  {
    goto LABEL_26;
  }

  return v16;
}

uint64_t _SBSSetVoiceControlEnabled(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100022;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _SBSSetInterceptsMenuButton(mach_port_t a1, char a2, char a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = 0;
  v9 = 0;
  v10 = a3;
  v11 = 0;
  v12 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100023;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 2097153, 0x28u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t _SBSSetWantsLockButtonEvents(mach_port_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100024;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _SBSGetMediaVolume(int a1, _DWORD *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x186B900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 100125)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _SBSSetMediaVolume(mach_port_t a1, float a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100026;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _SBSGetHomeScreenIconMetrics(int a1, void *a2, void *a3, void *a4, void *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _DWORD *a9, _DWORD *a10, _DWORD *a11, _DWORD *a12)
{
  v39 = *MEMORY[0x1E69E9840];
  v38 = 0;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  *&name_12[4] = 0u;
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v29 = 5395;
  *name_12 = 0x186BB00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v29);
    v21 = name_8;
  }

  else
  {
    v21 = special_reply_port;
  }

  v22 = mach_msg(&v29, 3162115, 0x18u, 0x68u, v21, 0, 0);
  v23 = v22;
  if ((v22 - 268435458) > 0xE || ((1 << (v22 - 2)) & 0x4003) == 0)
  {
    if (!v22)
    {
      if (*&name_12[4] == 71)
      {
        v23 = 4294966988;
      }

      else if (*&name_12[4] == 100127)
      {
        if ((v29 & 0x80000000) == 0)
        {
          if (name == 96)
          {
            if (!name_4)
            {
              v23 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = v34;
                *a3 = *(&v34 + 1);
                *a4 = v35;
                *a5 = *(&v35 + 1);
                v26 = DWORD1(v36);
                *a6 = v36;
                *a7 = v26;
                v27 = HIDWORD(v36);
                *a8 = DWORD2(v36);
                *a9 = v27;
                v28 = DWORD1(v37);
                *a10 = v37;
                *a11 = v28;
                *a12 = DWORD2(v37);
                return v23;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v24 = 1;
            }

            else
            {
              v24 = *&name_12[16] == 0;
            }

            if (v24)
            {
              v23 = 4294966996;
            }

            else
            {
              v23 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v23 = 4294966996;
      }

      else
      {
        v23 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v29);
      return v23;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v23 - 268435459) <= 1)
  {
    if ((v29 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v23;
}

uint64_t _SBSFlashColor(mach_port_t a1, float a2, float a3, float a4)
{
  v11 = *MEMORY[0x1E69E99E0];
  v12 = a2;
  v13 = a3;
  v14 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&v10.msgh_bits = 5395;
  v10.msgh_remote_port = a1;
  v10.msgh_local_port = special_reply_port;
  *&v10.msgh_voucher_port = 0x186BC00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    msgh_local_port = v10.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v7 = mach_msg(&v10, 3162115, 0x2Cu, 0x2Cu, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_14;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_14:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((v10.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v10.msgh_local_port);
    }

LABEL_19:
    mach_msg_destroy(&v10);
    return v8;
  }

  if (v10.msgh_id == 71)
  {
    v8 = 4294966988;
    goto LABEL_19;
  }

  if (v10.msgh_id != 100128)
  {
    v8 = 4294966995;
    goto LABEL_19;
  }

  v8 = 4294966996;
  if ((v10.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_19;
  }

  if (*&v10.msgh_size != 36)
  {
    goto LABEL_19;
  }

  v8 = LODWORD(v12);
  if (v12 != 0.0)
  {
    goto LABEL_19;
  }

  return v8;
}

uint64_t _SBSProgrammaticSwitchAppGestureMoveToLeft(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x186BD00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _SBSProgrammaticSwitchAppGestureMoveToRight(mach_port_t a1)
{
  msg.msgh_size = 0;
  msg.msgh_bits = 19;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  *&msg.msgh_voucher_port = 0x186BE00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v1 = mach_msg(&msg, 2097153, 0x18u, 0, 0, 0, 0);
  if ((v1 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v1;
}

uint64_t _SBSSetVoiceRecognitionAudioInputPaths(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_191729870;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _SBSSetAssistantRecognitionStrings(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_191729880;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _SBSSetAlertSuppressionContextsBySectionIdentifier(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1917298A0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 2097153, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t _SBSSetAppIsConnectedToEA(mach_port_t a1, int a2, char a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  v9 = 0;
  v10 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100035;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 2097153, 0x28u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t _SBSLockDeviceAndFeatures(mach_port_t a1, char a2, char a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = 0;
  v9 = 0;
  v10 = a3;
  v11 = 0;
  v12 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100036;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 2097153, 0x28u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

uint64_t _SBSActivateAssistantWithContext(mach_port_t a1, int a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 1;
  v12 = a3;
  v13 = 16777472;
  v14 = a4;
  v15 = *MEMORY[0x1E69E99E0];
  v16 = a2;
  v17 = a4;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x186C500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v7 = mach_msg(&msg, 3162115, 0x3Cu, 0x2Cu, msgh_local_port, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

LABEL_20:
    mach_msg_destroy(&msg);
    return v8;
  }

  if (msg.msgh_id == 71)
  {
    v8 = 4294966988;
    goto LABEL_20;
  }

  if (msg.msgh_id != 100137)
  {
    v8 = 4294966995;
    goto LABEL_20;
  }

  v8 = 4294966996;
  if ((msg.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (msg.msgh_size != 36)
  {
    goto LABEL_20;
  }

  if (msg.msgh_remote_port)
  {
    goto LABEL_20;
  }

  v8 = HIDWORD(v12);
  if (HIDWORD(v12))
  {
    goto LABEL_20;
  }

  return v8;
}

uint64_t _SBSSetProceduralWallpaper(mach_port_t a1, const char *a2, char a3, uint64_t a4, unsigned int a5)
{
  v49 = *MEMORY[0x1E69E9840];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *&v20[8] = 0u;
  memset(&name, 0, sizeof(name));
  v17 = 1;
  v18 = a4;
  v19 = 16777472;
  *v20 = a5;
  *&v20[4] = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v8 = mig_strncpy_zerofill(&v20[20], a2, 1024);
  }

  else
  {
    v8 = mig_strncpy(&v20[20], a2, 1024);
  }

  *&v20[12] = 0;
  *&v20[16] = v8;
  v9 = (v8 + 3) & 0xFFFFFFFC;
  v10 = &name + v9;
  v10[60] = a3;
  *(v10 + 61) = 0;
  v10[63] = 0;
  *(v10 + 16) = a5;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x186C600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v13 = mach_msg(&name, 3162115, v9 + 68, 0x2Cu, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) <= 0xE && ((1 << (v13 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v13)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v14 - 268435459) > 1)
    {
      return v14;
    }

    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

LABEL_23:
    mach_msg_destroy(&name);
    return v14;
  }

  if (name.msgh_id == 71)
  {
    v14 = 4294966988;
    goto LABEL_23;
  }

  if (name.msgh_id != 100138)
  {
    v14 = 4294966995;
    goto LABEL_23;
  }

  v14 = 4294966996;
  if ((name.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name.msgh_size != 36)
  {
    goto LABEL_23;
  }

  if (name.msgh_remote_port)
  {
    goto LABEL_23;
  }

  v14 = HIDWORD(v18);
  if (HIDWORD(v18))
  {
    goto LABEL_23;
  }

  return v14;
}

uint64_t _SBSSetWallpaperImageForLocations(mach_port_t a1, uint64_t a2, int a3, char a4, char a5, char a6, char a7, char *src, float a9, float a10, float a11, float a12, float a13, float a14, double a15, char a16, char a17, char a18, uint64_t a19, unsigned int a20, _BYTE *a21)
{
  v43 = *MEMORY[0x1E69E9840];
  memset(v42, 0, 384);
  v40 = 0u;
  v41 = 0u;
  *&v38[8] = 0u;
  v39 = 0u;
  memset(&name, 0, sizeof(name));
  v32 = 2;
  v33 = a2;
  v34 = 16777472;
  v35 = a3;
  v36 = a19;
  v37 = 16777472;
  *v38 = a20;
  *&v38[4] = *MEMORY[0x1E69E99E0];
  *&v38[12] = a3;
  v38[16] = a4;
  *&v38[17] = 0;
  v38[19] = 0;
  *&v38[20] = a9;
  *&v39 = __PAIR64__(LODWORD(a11), LODWORD(a10));
  *(&v39 + 1) = __PAIR64__(LODWORD(a13), LODWORD(a12));
  *&v40 = a14;
  BYTE4(v40) = a5;
  BYTE7(v40) = 0;
  *(&v40 + 5) = 0;
  BYTE8(v40) = a6;
  BYTE11(v40) = 0;
  *(&v40 + 9) = 0;
  BYTE12(v40) = a7;
  HIBYTE(v40) = 0;
  *(&v40 + 13) = 0;
  *&v41 = a15;
  if (MEMORY[0x1EEE9AC40])
  {
    v22 = mig_strncpy_zerofill(v42, src, 1024);
  }

  else
  {
    v22 = mig_strncpy(v42, src, 1024);
  }

  DWORD2(v41) = 0;
  HIDWORD(v41) = v22;
  v23 = (v22 + 3) & 0xFFFFFFFC;
  v24 = &name + v23;
  v24[128] = a16;
  *(v24 + 129) = 0;
  v24[131] = 0;
  v24[132] = a17;
  *(v24 + 133) = 0;
  v24[135] = 0;
  v24[136] = a18;
  *(v24 + 137) = 0;
  v24[139] = 0;
  *(v24 + 35) = a20;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x186C700000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v27 = mach_msg(&name, 3162115, v23 + 144, 0x30u, msgh_local_port, 0, 0);
  v28 = v27;
  if ((v27 - 268435458) > 0xE || ((1 << (v27 - 2)) & 0x4003) == 0)
  {
    if (!v27)
    {
      if (name.msgh_id == 71)
      {
        v28 = 4294966988;
      }

      else if (name.msgh_id == 100139)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 40)
          {
            if (!name.msgh_remote_port)
            {
              v28 = HIDWORD(v33);
              if (!HIDWORD(v33))
              {
                *a21 = v34;
                return v28;
              }

              goto LABEL_29;
            }
          }

          else if (name.msgh_size == 36)
          {
            if (name.msgh_remote_port)
            {
              v29 = 1;
            }

            else
            {
              v29 = HIDWORD(v33) == 0;
            }

            if (v29)
            {
              v28 = 4294966996;
            }

            else
            {
              v28 = HIDWORD(v33);
            }

            goto LABEL_29;
          }
        }

        v28 = 4294966996;
      }

      else
      {
        v28 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(&name);
      return v28;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v28 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_29;
  }

  return v28;
}

uint64_t _SBSSetWallpaperImageSurfaceForLocations(mach_port_t a1, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, char a8, float a9, float a10, float a11, float a12, float a13, float a14, double a15, char a16, char a17, char a18, char *src, char a20, char a21, char a22, uint64_t a23, int a24, _BYTE *a25)
{
  v73 = *MEMORY[0x1E69E9840];
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  *&v51[16] = 0u;
  v52 = 0u;
  v50 = 0u;
  *v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v38 = 0u;
  memset(&name, 0, sizeof(name));
  v36 = 5;
  v37 = a2;
  DWORD1(v38) = 1245184;
  DWORD2(v38) = a3;
  v39 = 1245184;
  v40 = a4;
  v41 = 16777472;
  v42 = a5;
  v43 = a6;
  v44 = 16777472;
  v45 = a7;
  v46 = a23;
  v47 = 16777472;
  LODWORD(v48) = a24;
  *(&v48 + 4) = *MEMORY[0x1E69E99E0];
  HIDWORD(v48) = a5;
  LODWORD(v49) = a7;
  BYTE4(v49) = a8;
  BYTE7(v49) = 0;
  *(&v49 + 5) = 0;
  *(&v49 + 1) = __PAIR64__(LODWORD(a10), LODWORD(a9));
  *&v50 = __PAIR64__(LODWORD(a12), LODWORD(a11));
  *(&v50 + 1) = __PAIR64__(LODWORD(a14), LODWORD(a13));
  v51[0] = a16;
  v51[3] = 0;
  *&v51[1] = 0;
  v51[4] = a17;
  v51[7] = 0;
  *&v51[5] = 0;
  v51[8] = a18;
  v51[11] = 0;
  *&v51[9] = 0;
  *&v51[12] = a15;
  if (MEMORY[0x1EEE9AC40])
  {
    v26 = mig_strncpy_zerofill(&v51[28], src, 1024);
  }

  else
  {
    v26 = mig_strncpy(&v51[28], src, 1024);
  }

  *&v51[20] = 0;
  *&v51[24] = v26;
  v27 = (v26 + 3) & 0xFFFFFFFC;
  v28 = &name + v27;
  v28[172] = a20;
  *(v28 + 173) = 0;
  v28[175] = 0;
  v28[176] = a21;
  *(v28 + 177) = 0;
  v28[179] = 0;
  v28[180] = a22;
  *(v28 + 181) = 0;
  v28[183] = 0;
  *(v28 + 46) = a24;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x186C800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v31 = mach_msg(&name, 3162115, v27 + 188, 0x30u, msgh_local_port, 0, 0);
  v32 = v31;
  if ((v31 - 268435458) > 0xE || ((1 << (v31 - 2)) & 0x4003) == 0)
  {
    if (!v31)
    {
      if (name.msgh_id == 71)
      {
        v32 = 4294966988;
      }

      else if (name.msgh_id == 100140)
      {
        if ((name.msgh_bits & 0x80000000) == 0)
        {
          if (name.msgh_size == 40)
          {
            if (!name.msgh_remote_port)
            {
              v32 = v38;
              if (!v38)
              {
                *a25 = BYTE4(v38);
                return v32;
              }

              goto LABEL_29;
            }
          }

          else if (name.msgh_size == 36)
          {
            if (name.msgh_remote_port)
            {
              v33 = 1;
            }

            else
            {
              v33 = v38 == 0;
            }

            if (v33)
            {
              v32 = 4294966996;
            }

            else
            {
              v32 = v38;
            }

            goto LABEL_29;
          }
        }

        v32 = 4294966996;
      }

      else
      {
        v32 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(&name);
      return v32;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v32 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    goto LABEL_29;
  }

  return v32;
}

uint64_t _SBSClearWallpaperAsset(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x186C900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 100141)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _SBSGetWallpaperOptions(int a1, char a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7, _DWORD *a8, _BYTE *a9, _BYTE *a10, _BYTE *a11, void *a12, void *a13, _DWORD *a14)
{
  v36 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  v31 = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  msg[32] = a2;
  *&msg[33] = 0;
  msg[35] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x186CA00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v22 = *&msg[12];
  }

  else
  {
    v22 = special_reply_port;
  }

  v23 = mach_msg(msg, 3162115, 0x24u, 0x6Cu, v22, 0, 0);
  v24 = v23;
  if ((v23 - 268435458) > 0xE || ((1 << (v23 - 2)) & 0x4003) == 0)
  {
    if (!v23)
    {
      if (*&msg[20] == 71)
      {
        v24 = 4294966988;
      }

      else if (*&msg[20] == 100142)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v24 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v24 = 4294966996;
              }

              else
              {
                v24 = *&msg[32];
              }
            }
          }

          else
          {
            v24 = 4294966996;
          }

          goto LABEL_28;
        }

        v24 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 100 && !*&msg[8] && BYTE3(v31) == 1)
        {
          v25 = DWORD1(v31);
          if (DWORD1(v31) == HIDWORD(v34))
          {
            v24 = 0;
            v26 = DWORD1(v32);
            *a3 = v32;
            *a4 = v26;
            v27 = HIDWORD(v32);
            *a5 = DWORD2(v32);
            *a6 = v27;
            v28 = DWORD1(v33);
            *a7 = v33;
            *a8 = v28;
            *a9 = BYTE8(v33);
            *a10 = BYTE12(v33);
            *a11 = v34;
            *a12 = *(&v34 + 4);
            *a13 = *&msg[28];
            *a14 = v25;
            return v24;
          }
        }
      }

      else
      {
        v24 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(msg);
      return v24;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v24 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_28;
  }

  return v24;
}

uint64_t _SBSSetWallpaperVariant(int a1, char a2, _BYTE *a3)
{
  memset(&name[16], 0, 28);
  *name = 0u;
  *&name[20] = *MEMORY[0x1E69E99E0];
  name[28] = a2;
  *&name[29] = 0;
  name[31] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&name[4] = a1;
  *&name[8] = special_reply_port;
  v11 = 5395;
  *&name[12] = 0x186CB00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v11);
    v6 = *&name[8];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(&v11, 3162115, 0x24u, 0x30u, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) > 0xE || ((1 << (v7 - 2)) & 0x4003) == 0)
  {
    if (!v7)
    {
      if (*&name[16] == 71)
      {
        v8 = 4294966988;
      }

      else if (*&name[16] == 100143)
      {
        if ((v11 & 0x80000000) == 0)
        {
          if (*name == 40)
          {
            if (!*&name[4])
            {
              v8 = *&name[28];
              if (!*&name[28])
              {
                *a3 = name[32];
                return v8;
              }

              goto LABEL_26;
            }
          }

          else if (*name == 36)
          {
            if (*&name[4])
            {
              v9 = 1;
            }

            else
            {
              v9 = *&name[28] == 0;
            }

            if (v9)
            {
              v8 = 4294966996;
            }

            else
            {
              v8 = *&name[28];
            }

            goto LABEL_26;
          }
        }

        v8 = 4294966996;
      }

      else
      {
        v8 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v11);
      return v8;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v8 - 268435459) <= 1)
  {
    if ((v11 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&name[8]);
    }

    goto LABEL_26;
  }

  return v8;
}

uint64_t _SBSGetWallpaperLegibilitySettings(int a1, char a2, void *a3, _DWORD *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&msg_4[16], 0, 44);
  *msg_4 = 0u;
  *&msg_4[20] = *MEMORY[0x1E69E99E0];
  msg_4[28] = a2;
  *&msg_4[29] = 0;
  msg_4[31] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg_4[4] = a1;
  *&msg_4[8] = special_reply_port;
  msg = 5395;
  *&msg_4[12] = 0x186CC00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v8 = *&msg_4[8];
  }

  else
  {
    v8 = special_reply_port;
  }

  v9 = mach_msg(&msg, 3162115, 0x24u, 0x40u, v8, 0, 0);
  v10 = v9;
  if ((v9 - 268435458) > 0xE || ((1 << (v9 - 2)) & 0x4003) == 0)
  {
    if (!v9)
    {
      if (*&msg_4[16] == 71)
      {
        v10 = 4294966988;
      }

      else if (*&msg_4[16] == 100144)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (*msg_4 == 36)
          {
            v10 = 4294966996;
            if (*&msg_4[28])
            {
              if (*&msg_4[4])
              {
                v10 = 4294966996;
              }

              else
              {
                v10 = *&msg_4[28];
              }
            }
          }

          else
          {
            v10 = 4294966996;
          }

          goto LABEL_28;
        }

        v10 = 4294966996;
        if (*&msg_4[20] == 1 && *msg_4 == 56 && !*&msg_4[4] && msg_4[35] == 1)
        {
          v11 = *&msg_4[36];
          if (*&msg_4[36] == *&msg_4[48])
          {
            v10 = 0;
            *a3 = *&msg_4[24];
            *a4 = v11;
            return v10;
          }
        }
      }

      else
      {
        v10 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v10;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v10 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg_4[8]);
    }

    goto LABEL_28;
  }

  return v10;
}

uint64_t _SBSAddAlertItemsSuppressionAssertion(mach_port_t a1, const char *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v15, 0, 464);
  memset(&name, 0, sizeof(name));
  v12 = 1;
  v13 = a3;
  DWORD1(v14) = 1310720;
  *(&v14 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v15 + 8, a2, 1024);
  }

  else
  {
    v4 = mig_strncpy(v15 + 8, a2, 1024);
  }

  LODWORD(v15[0]) = 0;
  DWORD1(v15[0]) = v4;
  v5 = (v4 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x186CD00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&name, 3162115, v5 + 56, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v9 - 268435459) > 1)
    {
      return v9;
    }

    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

LABEL_23:
    mach_msg_destroy(&name);
    return v9;
  }

  if (name.msgh_id == 71)
  {
    v9 = 4294966988;
    goto LABEL_23;
  }

  if (name.msgh_id != 100145)
  {
    v9 = 4294966995;
    goto LABEL_23;
  }

  v9 = 4294966996;
  if ((name.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name.msgh_size != 36)
  {
    goto LABEL_23;
  }

  if (name.msgh_remote_port)
  {
    goto LABEL_23;
  }

  v9 = v14;
  if (v14)
  {
    goto LABEL_23;
  }

  return v9;
}

uint64_t _SBSIsReachabilityEnabled(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x186CF00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 100147)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _SBSSetReachabilityEnabled(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100048;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _SBSOverrideDisplayedDate(mach_port_name_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, 480);
  *name = 0u;
  v11 = 0u;
  *(&v11 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v12 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v12 + 8, a2, 1024);
  }

  LODWORD(v12[0]) = 0;
  DWORD1(v12[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v11 = 0x186D100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v6 = name[3];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(name, 3162115, v4 + 40, 0x2Cu, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    return v8;
  }

  if (DWORD1(v11) == 71)
  {
    v8 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v11) != 100149)
  {
    v8 = 4294966995;
    goto LABEL_23;
  }

  v8 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v8 = LODWORD(v12[0]);
  if (LODWORD(v12[0]))
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t _SBSSetIdleText(mach_port_name_t a1, const char *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(v12, 0, 480);
  *name = 0u;
  v11 = 0u;
  *(&v11 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v12 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v12 + 8, a2, 1024);
  }

  LODWORD(v12[0]) = 0;
  DWORD1(v12[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v11 = 0x186D200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v6 = name[3];
  }

  else
  {
    v6 = special_reply_port;
  }

  v7 = mach_msg(name, 3162115, v4 + 40, 0x2Cu, v6, 0, 0);
  v8 = v7;
  if ((v7 - 268435458) <= 0xE && ((1 << (v7 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v7)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v8 - 268435459) > 1)
    {
      return v8;
    }

    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

LABEL_23:
    mach_msg_destroy(name);
    return v8;
  }

  if (DWORD1(v11) == 71)
  {
    v8 = 4294966988;
    goto LABEL_23;
  }

  if (DWORD1(v11) != 100150)
  {
    v8 = 4294966995;
    goto LABEL_23;
  }

  v8 = 4294966996;
  if ((name[0] & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name[1] != 36)
  {
    goto LABEL_23;
  }

  if (name[2])
  {
    goto LABEL_23;
  }

  v8 = LODWORD(v12[0]);
  if (LODWORD(v12[0]))
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t _SBSTagTouchForTypingMenu(mach_port_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100052;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _SBSAcquireFocusPreventingFullScreenPresentationAssertion(mach_port_t a1, const char *a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  memset(v15, 0, 464);
  memset(&name, 0, sizeof(name));
  v12 = 1;
  v13 = a3;
  DWORD1(v14) = 1310720;
  *(&v14 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v4 = mig_strncpy_zerofill(v15 + 8, a2, 1024);
  }

  else
  {
    v4 = mig_strncpy(v15 + 8, a2, 1024);
  }

  LODWORD(v15[0]) = 0;
  DWORD1(v15[0]) = v4;
  v5 = (v4 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name.msgh_remote_port = a1;
  name.msgh_local_port = special_reply_port;
  name.msgh_bits = -2147478253;
  *&name.msgh_voucher_port = 0x186D500000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
    msgh_local_port = name.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v8 = mach_msg(&name, 3162115, v5 + 56, 0x2Cu, msgh_local_port, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) <= 0xE && ((1 << (v8 - 2)) & 0x4003) != 0)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    mig_dealloc_special_reply_port();
LABEL_18:
    if ((v9 - 268435459) > 1)
    {
      return v9;
    }

    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

LABEL_23:
    mach_msg_destroy(&name);
    return v9;
  }

  if (name.msgh_id == 71)
  {
    v9 = 4294966988;
    goto LABEL_23;
  }

  if (name.msgh_id != 100153)
  {
    v9 = 4294966995;
    goto LABEL_23;
  }

  v9 = 4294966996;
  if ((name.msgh_bits & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  if (name.msgh_size != 36)
  {
    goto LABEL_23;
  }

  if (name.msgh_remote_port)
  {
    goto LABEL_23;
  }

  v9 = v14;
  if (v14)
  {
    goto LABEL_23;
  }

  return v9;
}

uint64_t _SBSSetShowsProgress(mach_port_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100056;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _SBSSetAllApplicationsShowSyncIndicator(mach_port_t a1, int a2, mach_msg_timeout_t timeout)
{
  v7 = *MEMORY[0x1E69E99E0];
  v8 = a2;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100059;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v4 = mach_msg(&msg, 2097169, 0x24u, 0, 0, timeout, 0);
  if ((v4 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v4;
}

uint64_t _SBSSetShowsOverridesForRecording(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 100060;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 2097153, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

uint64_t _SBSGetWallpaperPreviewSurface(int a1, char a2, int a3, int a4, _DWORD *a5, double a6)
{
  v21 = *MEMORY[0x1E69E9840];
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[24] = 1;
  *&msg[28] = a4;
  v14 = 1245184;
  v15 = *MEMORY[0x1E69E99E0];
  v16 = a2;
  v17 = 0;
  v18 = 0;
  v19 = a6;
  v20 = a3;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = -2147478253;
  *&msg[16] = 0x186DD00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v9 = *&msg[12];
  }

  else
  {
    v9 = special_reply_port;
  }

  v10 = mach_msg(msg, 3162115, 0x40u, 0x30u, v9, 0, 0);
  v11 = v10;
  if ((v10 - 268435458) > 0xE || ((1 << (v10 - 2)) & 0x4003) == 0)
  {
    if (!v10)
    {
      if (*&msg[20] == 71)
      {
        v11 = 4294966988;
      }

      else if (*&msg[20] == 100161)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v11 = 4294966996;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v11 = 4294966996;
              }

              else
              {
                v11 = *&msg[32];
              }
            }
          }

          else
          {
            v11 = 4294966996;
          }

          goto LABEL_27;
        }

        v11 = 4294966996;
        if (*&msg[24] == 1 && *&msg[4] == 40 && !*&msg[8] && HIWORD(v14) << 16 == 1114112)
        {
          v11 = 0;
          *a5 = *&msg[28];
          return v11;
        }
      }

      else
      {
        v11 = 4294966995;
      }

LABEL_27:
      mach_msg_destroy(msg);
      return v11;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v11 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_27;
  }

  return v11;
}

uint64_t _SBSGetWallpaperPreview(mach_port_t a1, char a2, int a3, uint64_t a4, int a5, void *a6, _DWORD *a7, double a8)
{
  v18 = 1;
  v19 = a4;
  v20 = 16777472;
  v21 = a5;
  v22 = *MEMORY[0x1E69E99E0];
  LOBYTE(v23) = a2;
  *(&v23 + 1) = 0;
  HIBYTE(v23) = 0;
  v24 = a8;
  v25 = a3;
  v26 = a5;
  special_reply_port = mig_get_special_reply_port();
  *&msg.msgh_bits = 2147489043;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = special_reply_port;
  *&msg.msgh_voucher_port = 0x186DE00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    msgh_local_port = msg.msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v13 = mach_msg(&msg, 3162115, 0x48u, 0x40u, msgh_local_port, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (msg.msgh_id == 71)
      {
        v14 = 4294966988;
      }

      else if (msg.msgh_id == 100162)
      {
        if ((msg.msgh_bits & 0x80000000) == 0)
        {
          if (msg.msgh_size == 36)
          {
            v14 = 4294966996;
            if (HIDWORD(v19))
            {
              if (msg.msgh_remote_port)
              {
                v14 = 4294966996;
              }

              else
              {
                v14 = HIDWORD(v19);
              }
            }
          }

          else
          {
            v14 = 4294966996;
          }

          goto LABEL_28;
        }

        v14 = 4294966996;
        if (v18 == 1 && msg.msgh_size == 56 && !msg.msgh_remote_port && HIBYTE(v20) == 1)
        {
          v15 = v21;
          if (v21 == v23)
          {
            v14 = 0;
            *a6 = v19;
            *a7 = v15;
            return v14;
          }
        }
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    goto LABEL_28;
  }

  return v14;
}

uint64_t _SBSSetWallpaperOptionsForLocations(mach_port_name_t a1, char a2, char a3, char a4, char *src, char a6, _BYTE *a7, float a8, float a9, float a10, float a11, float a12, float a13, double a14)
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0u;
  memset(v31, 0, 432);
  v28 = 0u;
  v29 = 0u;
  *name = 0u;
  v27 = 0u;
  *(&v27 + 1) = *MEMORY[0x1E69E99E0];
  *&v28 = __PAIR64__(LODWORD(a9), LODWORD(a8));
  *(&v28 + 1) = __PAIR64__(LODWORD(a11), LODWORD(a10));
  *&v29 = __PAIR64__(LODWORD(a13), LODWORD(a12));
  BYTE8(v29) = a2;
  *(&v29 + 9) = 0;
  BYTE11(v29) = 0;
  BYTE12(v29) = a3;
  *(&v29 + 13) = 0;
  HIBYTE(v29) = 0;
  LOBYTE(v30) = a4;
  *(&v30 + 1) = 0;
  BYTE3(v30) = 0;
  *(&v30 + 4) = a14;
  if (MEMORY[0x1EEE9AC40])
  {
    v17 = mig_strncpy_zerofill(v31 + 4, src, 1024);
  }

  else
  {
    v17 = mig_strncpy(v31 + 4, src, 1024);
  }

  HIDWORD(v30) = 0;
  LODWORD(v31[0]) = v17;
  v18 = (v17 + 3) & 0xFFFFFFFC;
  v19 = name + v18;
  v19[84] = a6;
  *(v19 + 85) = 0;
  v19[87] = 0;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v27 = 0x186DF00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v21 = name[3];
  }

  else
  {
    v21 = special_reply_port;
  }

  v22 = mach_msg(name, 3162115, v18 + 88, 0x30u, v21, 0, 0);
  v23 = v22;
  if ((v22 - 268435458) > 0xE || ((1 << (v22 - 2)) & 0x4003) == 0)
  {
    if (!v22)
    {
      if (DWORD1(v27) == 71)
      {
        v23 = 4294966988;
      }

      else if (DWORD1(v27) == 100163)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 40)
          {
            if (!name[2])
            {
              v23 = v28;
              if (!v28)
              {
                *a7 = BYTE4(v28);
                return v23;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v24 = 1;
            }

            else
            {
              v24 = v28 == 0;
            }

            if (v24)
            {
              v23 = 4294966996;
            }

            else
            {
              v23 = v28;
            }

            goto LABEL_29;
          }
        }

        v23 = 4294966996;
      }

      else
      {
        v23 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      return v23;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v23 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

  return v23;
}

uint64_t _SBSGetBatteryAwakeTime(mach_port_t a1, char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&msg[20].msgh_size, 0, 28);
  memset(&msg[1].msgh_local_port, 0, 448);
  *&msg[0].msgh_id = 0u;
  msg[0].msgh_size = 0;
  special_reply_port = mig_get_special_reply_port();
  msg[0].msgh_remote_port = a1;
  msg[0].msgh_local_port = special_reply_port;
  msg[0].msgh_bits = 5395;
  *&msg[0].msgh_voucher_port = 0x186E000000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    msgh_local_port = msg[0].msgh_local_port;
  }

  else
  {
    msgh_local_port = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x434u, msgh_local_port, 0, 0);
  msgh_remote_port = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (msg[0].msgh_id == 71)
      {
        msgh_remote_port = 4294966988;
      }

      else if (msg[0].msgh_id == 100164)
      {
        if ((msg[0].msgh_bits & 0x80000000) == 0)
        {
          if (msg[0].msgh_size - 1069 <= 0xFFFFFBFE)
          {
            if (msg[1].msgh_remote_port)
            {
              v8 = msg[0].msgh_remote_port == 0;
            }

            else
            {
              v8 = 0;
            }

            if (v8 && msg[0].msgh_size == 36)
            {
              msgh_remote_port = msg[1].msgh_remote_port;
            }

            else
            {
              msgh_remote_port = 4294966996;
            }

            goto LABEL_28;
          }

          if (!msg[0].msgh_remote_port)
          {
            msgh_remote_port = msg[1].msgh_remote_port;
            if (!msg[1].msgh_remote_port)
            {
              msgh_remote_port = 4294966996;
              if (msg[1].msgh_voucher_port <= 0x400 && msg[0].msgh_size - 44 >= msg[1].msgh_voucher_port && msg[0].msgh_size == ((LOWORD(msg[1].msgh_voucher_port) + 3) & 0xFFC) + 44)
              {
                mig_strncpy(a2, &msg[1].msgh_id, 1024);
                return 0;
              }
            }

            goto LABEL_28;
          }
        }

        msgh_remote_port = 4294966996;
      }

      else
      {
        msgh_remote_port = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(msg);
      return msgh_remote_port;
    }

    mig_dealloc_special_reply_port();
  }

  if ((msgh_remote_port - 268435459) <= 1)
  {
    if ((msg[0].msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg[0].msgh_local_port);
    }

    goto LABEL_28;
  }

  return msgh_remote_port;
}

uint64_t _SBSGetRecentSleepsWakes(int a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  special_reply_port = mig_get_special_reply_port();
  msg_8 = a1;
  msg_12 = special_reply_port;
  msg = 5395;
  *msg_16 = 0x186E100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = msg_12;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x18u, 0x40u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg_16[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg_16[4] == 100165)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (msg_4 == 36)
          {
            v9 = 4294966996;
            if (*&msg_16[16])
            {
              if (msg_8)
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&msg_16[16];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_28;
        }

        v9 = 4294966996;
        if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
        {
          v10 = *&msg_16[24];
          if (*&msg_16[24] == *&msg_16[36])
          {
            v9 = 0;
            *a2 = *&msg_16[12];
            *a3 = v10;
            return v9;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg_12);
    }

    goto LABEL_28;
  }

  return v9;
}

uint64_t _SBSGetScheduledPowerEvents(int a1, void *a2, _DWORD *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(&msg_16[4], 0, 44);
  msg_4 = 0;
  special_reply_port = mig_get_special_reply_port();
  msg_8 = a1;
  msg_12 = special_reply_port;
  msg = 5395;
  *msg_16 = 0x186E200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
    v7 = msg_12;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&msg, 3162115, 0x18u, 0x40u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&msg_16[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&msg_16[4] == 100166)
      {
        if ((msg & 0x80000000) == 0)
        {
          if (msg_4 == 36)
          {
            v9 = 4294966996;
            if (*&msg_16[16])
            {
              if (msg_8)
              {
                v9 = 4294966996;
              }

              else
              {
                v9 = *&msg_16[16];
              }
            }
          }

          else
          {
            v9 = 4294966996;
          }

          goto LABEL_28;
        }

        v9 = 4294966996;
        if (*&msg_16[8] == 1 && msg_4 == 56 && !msg_8 && msg_16[23] == 1)
        {
          v10 = *&msg_16[24];
          if (*&msg_16[24] == *&msg_16[36])
          {
            v9 = 0;
            *a2 = *&msg_16[12];
            *a3 = v10;
            return v9;
          }
        }
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_28:
      mach_msg_destroy(&msg);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg_12);
    }

    goto LABEL_28;
  }

  return v9;
}

uint64_t _SBSGetBatteryUsageTimesInSeconds(int a1, _DWORD *a2, _DWORD *a3, _BYTE *a4, _BYTE *a5)
{
  v19 = 0;
  v18 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x186E300000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v11 = *&msg[12];
  }

  else
  {
    v11 = special_reply_port;
  }

  v12 = mach_msg(msg, 3162115, 0x18u, 0x3Cu, v11, 0, 0);
  v13 = v12;
  if ((v12 - 268435458) > 0xE || ((1 << (v12 - 2)) & 0x4003) == 0)
  {
    if (!v12)
    {
      if (*&msg[20] == 71)
      {
        v13 = 4294966988;
      }

      else if (*&msg[20] == 100167)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 52)
          {
            if (!*&msg[8])
            {
              v13 = *&msg[32];
              if (!*&msg[32])
              {
                v16 = DWORD1(v18);
                *a2 = v18;
                *a3 = v16;
                *a4 = BYTE8(v18);
                *a5 = BYTE12(v18);
                return v13;
              }

              goto LABEL_26;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v14 = 1;
            }

            else
            {
              v14 = *&msg[32] == 0;
            }

            if (v14)
            {
              v13 = 4294966996;
            }

            else
            {
              v13 = *&msg[32];
            }

            goto LABEL_26;
          }
        }

        v13 = 4294966996;
      }

      else
      {
        v13 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(msg);
      return v13;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v13 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_26;
  }

  return v13;
}

uint64_t (*SpringBoardUser_server_routine(uint64_t a1))()
{
  v1 = *(a1 + 20);
  if ((v1 - 100068) >= 0xFFFFFFBC)
  {
    return _SBMigSpringBoardUser_subsystem[5 * (v1 - 100000) + 5];
  }

  else
  {
    return 0;
  }
}

_DWORD *_XSuspendFrontmostApp(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = result + 6;
    if (!result[6] && result[7] > 0x1Fu)
    {
      v5 = result[3];
      v6 = *(v3 + 9);
      v7[0] = *(v3 + 5);
      v7[1] = v6;
      result = _SBMigSuspendFrontmostApp(v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v4 = -309;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XInterruptKeybagRefetch(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = result + 6;
    if (!result[6] && result[7] > 0x1Fu)
    {
      v5 = result[3];
      v6 = *(v3 + 9);
      v7[0] = *(v3 + 5);
      v7[1] = v6;
      result = _SBMigInterruptKeybagRefetch(v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v4 = -309;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XGetActiveInterfaceOrientation(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (result[6] || result[7] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  result = _SBMigGetActiveInterfaceOrientation(result[3], a2 + 36);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

_DWORD *_XPresentPowerDownUI(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = result + 6;
    if (!result[6] && result[7] > 0x1Fu)
    {
      v5 = result[3];
      v6 = *(v3 + 9);
      v7[0] = *(v3 + 5);
      v7[1] = v6;
      result = _SBMigPresentPowerDownUI(v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v4 = -309;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XReboot(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    v3 = a1 + 6;
    if (a1[6] || a1[7] < 0x20u)
    {
      result = 4294966987;
    }

    else
    {
      v5 = a1[3];
      v6 = *(v3 + 9);
      v7[0] = *(v3 + 5);
      v7[1] = v6;
      result = _SBMigReboot(v5, v7);
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XShutDown(_DWORD *a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || a1[1] != 24)
  {
    result = 4294966992;
  }

  else
  {
    v3 = a1 + 6;
    if (a1[6] || a1[7] < 0x20u)
    {
      result = 4294966987;
    }

    else
    {
      v5 = a1[3];
      v6 = *(v3 + 9);
      v7[0] = *(v3 + 5);
      v7[1] = v6;
      result = _SBMigShutDown(v5, v7);
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void _XEnableLockScreenBundle(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if (v5 - 1093 < 0xFFFFFBFF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 39) != 1)
  {
    goto LABEL_19;
  }

  v6 = *(a1 + 60);
  if (v6 > 0x400)
  {
LABEL_2:
    v3 = -304;
    goto LABEL_3;
  }

  v3 = -304;
  if (v5 - 68 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 68)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 40);
  if (v8 != *(a1 + v7 + 64))
  {
LABEL_19:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x440)
  {
    v9 = 1088;
  }

  else
  {
    v9 = v5;
  }

  if (!memchr((a1 + 64), 0, v9 - 64))
  {
    goto LABEL_2;
  }

  v10 = ((v5 + 3) & 0xFFC) + a1;
  if (!*v10 && *(v10 + 4) > 0x1Fu)
  {
    v11 = *(a1 + 12);
    v12 = *(a1 + 52);
    v13 = *(a1 + 28);
    v14 = *(v10 + 36);
    v15[0] = *(v10 + 20);
    v15[1] = v14;
    *(a2 + 32) = _SBMigEnableLockScreenBundle(v11, v12, a1 + 64, v13, v8, v15);
    mig_deallocate(*(a1 + 28), *(a1 + 40));
    *(a1 + 28) = 0;
    *(a1 + 40) = 0;
    return;
  }

  v3 = -309;
LABEL_3:
  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t _XLockDevice(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigLockDevice(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XShowNetworkPromptsIfNecessary(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigShowNetworkPromptsIfNecessary(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XGetCurrentBacklightFactor(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (result[6] || result[7] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  result = _SBMigGetCurrentBacklightFactor(result[3], (a2 + 36));
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XDimScreen(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigDimScreen(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XAddWebClipToHomeScreen(int *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if ((v6 - 1065) >= 0xFFFFFBFF)
    {
      v7 = a1[9];
      v8 = v7 <= 0x400 && v6 - 40 >= v7;
      if (v8 && v6 == ((v7 + 3) & 0xFFC) + 40)
      {
        if (memchr(a1 + 10, 0, v6 - 40))
        {
          v9 = a1 + ((v6 + 3) & 0xFFC);
          if (*v9 || *(v9 + 1) < 0x20u)
          {
            result = 4294966987;
          }

          else
          {
            v10 = a1[3];
            v11 = *(v9 + 36);
            v12[0] = *(v9 + 20);
            v12[1] = v11;
            result = _SBMigAddWebClipToHomeScreen(v10, (a1 + 10), v12);
          }
        }

        else
        {
          result = 4294966992;
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XRemoveWebClipFromHomeScreen(int *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if ((v6 - 1065) >= 0xFFFFFBFF)
    {
      v7 = a1[9];
      v8 = v7 <= 0x400 && v6 - 40 >= v7;
      if (v8 && v6 == ((v7 + 3) & 0xFFC) + 40)
      {
        if (memchr(a1 + 10, 0, v6 - 40))
        {
          v9 = a1 + ((v6 + 3) & 0xFFC);
          if (*v9 || *(v9 + 1) < 0x20u)
          {
            result = 4294966987;
          }

          else
          {
            v10 = a1[3];
            v11 = *(v9 + 36);
            v12[0] = *(v9 + 20);
            v12[1] = v11;
            result = _SBMigRemoveWebClipFromHomeScreen(v10, (a1 + 10), v12);
          }
        }

        else
        {
          result = 4294966992;
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XReloadIconForIdentifier(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], (v4 - 1065) >= 0xFFFFFBFF) && ((v5 = result[9], v5 <= 0x400) ? (v6 = v4 - 40 >= v5) : (v6 = 0), (v7 = ((v5 + 3) & 0xFFC) + 40, v6) ? (v8 = v4 == v7) : (v8 = 0), v8 && (result = memchr(result + 10, 0, v4 - 40)) != 0))
  {
    v10 = v3 + ((v4 + 3) & 0xFFC);
    if (!*v10 && *(v10 + 1) > 0x1Fu)
    {
      v11 = v3[3];
      v12 = *(v10 + 36);
      v13[0] = *(v10 + 20);
      v13[1] = v12;
      result = _SBMigReloadIconForIdentifier(v11, (v3 + 10), v13);
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XAddDownloadingIconForDisplayIdentifier(int *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if ((v6 - 2097) >= 0xFFFFF7FF)
    {
      v7 = a1[9];
      if (v7 <= 0x400)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 - 48 >= v7 && v6 >= v8 + 48)
        {
          v10 = v6 - v8;
          v11 = a1 + v8;
          v12 = *(v11 + 11);
          v13 = v12 <= 0x400 && v10 - 48 >= v12;
          if (v13 && v10 == ((v12 + 3) & 0xFFC) + 48)
          {
            v14 = 1064;
            if (v6 < 0x428)
            {
              v14 = a1[1];
            }

            if (memchr(a1 + 10, 0, v14 - 40) && (a1 + v6 - (v11 + 48) >= 1024 ? (v15 = 1024) : (v15 = a1 + v6 - (v11 + 48)), memchr(v11 + 48, 0, v15)))
            {
              result = _SBMigAddDownloadingIconForDisplayIdentifier();
            }

            else
            {
              result = 4294966992;
            }
          }
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XScrollToIconWithDisplayIdentifier(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) == 0 && (v3 = result, v4 = result[1], v4 - 1069 >= 0xFFFFFBFF) && (v5 = result[9], v5 <= 0x400) && (v4 - 44 >= v5 ? (v6 = v4 == ((v5 + 3) & 0xFFFFFFFC) + 44) : (v6 = 0), v6 && (v4 >= 0x428 ? (v7 = 1064) : (v7 = v4), (result = memchr(result + 10, 0, v7 - 40)) != 0)))
  {
    v8 = (v3 + ((v4 + 3) & 0xFFC));
    if (!*v8 && v8[1] > 0x1Fu)
    {
      result = _SBMigScrollToIconWithDisplayIdentifier();
      *(a2 + 32) = result;
      return result;
    }

    v9 = -309;
  }

  else
  {
    v9 = -304;
  }

  *(a2 + 32) = v9;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XGetNowPlayingAppBundleIdentifier(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v8[0] = *(v3 + 5);
  v8[1] = v6;
  result = _SBMigGetNowPlayingAppBundleIdentifier(v5, (a2 + 44), v8);
  *(a2 + 32) = result;
  v7 = *MEMORY[0x1E69E99E0];
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    result = strlen((a2 + 44));
    if ((result + 1) >> 32)
    {
      *(a2 + 32) = -304;
      *(a2 + 24) = v7;
    }

    else
    {
      *(a2 + 36) = 0;
      *(a2 + 40) = result + 1;
      *(a2 + 4) = ((result + 4) & 0xFFFFFFFC) + 44;
    }
  }

  return result;
}

_DWORD *_XGetTopButtonFrames(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = _SBMigGetTopButtonFrames(v5, a2 + 36, a2 + 44, a2 + 52, a2 + 60, a2 + 68, a2 + 76, a2 + 84, a2 + 92, v7);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 100;
  }

  return result;
}

_DWORD *_XGetApplicationNetworkFlags(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = _SBMigGetApplicationNetworkFlags(v5, (a2 + 36), (a2 + 40), v7);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 44;
  }

  return result;
}

uint64_t _XAppSwitcherServiceRegister(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_2:
    result = 4294966992;
    goto LABEL_3;
  }

  v5 = *(a1 + 24);
  result = 4294966992;
  if (v5 == 1)
  {
    v6 = *(a1 + 4);
    if ((v6 - 2113) >= 0xFFFFF7FF)
    {
      if (*(a1 + 38) << 16 != 1114112)
      {
        result = 4294966996;
        goto LABEL_3;
      }

      v7 = *(a1 + 52);
      if (v7 <= 0x400 && v6 - 64 >= v7)
      {
        v8 = (v7 + 3) & 0xFFFFFFFC;
        if (v6 >= v8 + 64)
        {
          v9 = v6 - v8;
          v10 = a1 + v8;
          v11 = *(v10 + 60);
          v12 = v11 <= 0x400 && v9 - 64 >= v11;
          if (v12 && v9 == ((v11 + 3) & 0xFFC) + 64)
          {
            v13 = 1080;
            if (v6 < 0x438)
            {
              v13 = *(a1 + 4);
            }

            if (!memchr((a1 + 56), 0, v13 - 56))
            {
              goto LABEL_2;
            }

            v14 = (v10 + 64);
            v15 = (a1 + v6 - v14) >= 1024 ? 1024 : a1 + v6 - v14;
            if (!memchr(v14, 0, v15))
            {
              goto LABEL_2;
            }

            v16 = ((v6 + 3) & 0x1FFC) + a1;
            if (*v16 || *(v16 + 4) < 0x20u)
            {
              result = 4294966987;
            }

            else
            {
              v17 = *(a1 + 12);
              v18 = *(a1 + 28);
              v19 = *(v16 + 36);
              v20[0] = *(v16 + 20);
              v20[1] = v19;
              result = _SBMigAppSwitcherServiceRegister(v17, v18, a1 + 56, v14, v20);
            }
          }
        }
      }
    }
  }

LABEL_3:
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetVoiceControlEnabled(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigSetVoiceControlEnabled(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetInterceptsMenuButton(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 40) && *(result + 44) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 36);
      v7 = *(result + 76);
      v8[0] = *(result + 60);
      v8[1] = v7;
      result = _SBMigSetInterceptsMenuButton(v4, v5, v6, v8);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetWantsLockButtonEvents(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigSetWantsLockButtonEvents(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XGetMediaVolume(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = _SBMigGetMediaVolume(v5, (a2 + 36), v7);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XSetMediaVolume(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigSetMediaVolume(v4, v7, v5);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XGetHomeScreenIconMetrics(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (result[6] || result[7] <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  result = _SBMigGetHomeScreenIconMetrics(result[3], a2 + 36, a2 + 44, a2 + 52, a2 + 60, a2 + 68, a2 + 72, a2 + 76, a2 + 80, a2 + 84, a2 + 88, a2 + 92);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 96;
  }

  return result;
}

uint64_t _XFlashColor(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 || *(a1 + 4) != 44)
  {
    result = 4294966992;
  }

  else if (*(a1 + 44) || *(a1 + 48) < 0x20u)
  {
    result = 4294966987;
  }

  else
  {
    result = _SBMigFlashColor(*(a1 + 12), *(a1 + 32), *(a1 + 36), *(a1 + 40));
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XProgrammaticSwitchAppGestureMoveToLeft(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = result + 6;
    if (!result[6] && result[7] > 0x1Fu)
    {
      v5 = result[3];
      v6 = *(v3 + 9);
      v7[0] = *(v3 + 5);
      v7[1] = v6;
      result = _SBMigProgrammaticSwitchAppGestureMoveToLeft(v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v4 = -309;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XProgrammaticSwitchAppGestureMoveToRight(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
  }

  else
  {
    v3 = result + 6;
    if (!result[6] && result[7] > 0x1Fu)
    {
      v5 = result[3];
      v6 = *(v3 + 9);
      v7[0] = *(v3 + 5);
      v7[1] = v6;
      result = _SBMigProgrammaticSwitchAppGestureMoveToRight(v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v4 = -309;
  }

  *(a2 + 32) = v4;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void _XSetVoiceRecognitionAudioInputPaths(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 12);
        v7 = *(a1 + 28);
        v8 = *(a1 + 92);
        v9[0] = *(a1 + 76);
        v9[1] = v8;
        *(a2 + 32) = _SBMigSetVoiceRecognitionAudioInputPaths(v6, v7, v4, v9);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XSetAssistantRecognitionStrings(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 12);
        v7 = *(a1 + 28);
        v8 = *(a1 + 92);
        v9[0] = *(a1 + 76);
        v9[1] = v8;
        *(a2 + 32) = _SBMigSetAssistantRecognitionStrings(v6, v7, v4, v9);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XSetAlertSuppressionContextsBySectionIdentifier(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 56)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 52)))
    {
      if (!*(a1 + 56) && *(a1 + 60) > 0x1Fu)
      {
        v6 = *(a1 + 12);
        v7 = *(a1 + 28);
        v8 = *(a1 + 92);
        v9[0] = *(a1 + 76);
        v9[1] = v8;
        *(a2 + 32) = _SBMigSetAlertSuppressionContextsBySectionIdentifier(v6, v7, v4, v9);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        return;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

uint64_t _XSetAppIsConnectedToEA(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 40) && *(result + 44) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 36);
      v7 = *(result + 76);
      v8[0] = *(result + 60);
      v8[1] = v7;
      result = _SBMigSetAppIsConnectedToEA(v4, v5, v6, v8);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XLockDeviceAndFeatures(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 40)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 40) && *(result + 44) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 36);
      v7 = *(result + 76);
      v8[0] = *(result + 60);
      v8[1] = v7;
      result = _SBMigLockDeviceAndFeatures(v4, v5, v6, v8);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

void _XActivateAssistantWithContext(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) != 0 && *(a1 + 24) == 1 && *(a1 + 4) == 60)
  {
    if (*(a1 + 39) == 1 && (v4 = *(a1 + 40), v4 == *(a1 + 56)))
    {
      if (!*(a1 + 60) && *(a1 + 64) > 0x1Fu)
      {
        v6 = *(a1 + 12);
        v7 = *(a1 + 52);
        v8 = *(a1 + 28);
        v9 = *(a1 + 96);
        v10[0] = *(a1 + 80);
        v10[1] = v9;
        *(a2 + 32) = _SBMigActivateAssistantWithContext(v6, v7, v8, v4, v10);
        mig_deallocate(*(a1 + 28), *(a1 + 40));
        *(a1 + 28) = 0;
        *(a1 + 40) = 0;
        goto LABEL_11;
      }

      v5 = -309;
    }

    else
    {
      v5 = -300;
    }
  }

  else
  {
    v5 = -304;
  }

  *(a2 + 32) = v5;
LABEL_11:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XSetProceduralWallpaper(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 1)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if (v5 - 1093 < 0xFFFFFBFF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 39) != 1)
  {
    goto LABEL_19;
  }

  v6 = *(a1 + 56);
  if (v6 > 0x400)
  {
LABEL_2:
    v3 = -304;
    goto LABEL_3;
  }

  v3 = -304;
  if (v5 - 68 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 68)
  {
    goto LABEL_3;
  }

  v8 = a1 + v7;
  v9 = *(a1 + 40);
  if (v9 != *(v8 + 64))
  {
LABEL_19:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x43C)
  {
    v10 = 1084;
  }

  else
  {
    v10 = v5;
  }

  if (!memchr((a1 + 60), 0, v10 - 60))
  {
    goto LABEL_2;
  }

  v11 = ((v5 + 3) & 0xFFC) + a1;
  if (!*v11 && *(v11 + 4) > 0x1Fu)
  {
    v12 = *(a1 + 12);
    v13 = *(v8 + 60);
    v14 = *(a1 + 28);
    v15 = *(v11 + 36);
    v16[0] = *(v11 + 20);
    v16[1] = v15;
    *(a2 + 32) = _SBMigSetProceduralWallpaper(v12, a1 + 60, v13, v14, v9, v16);
    mig_deallocate(*(a1 + 28), *(a1 + 40));
    *(a1 + 28) = 0;
    *(a1 + 40) = 0;
    goto LABEL_4;
  }

  v3 = -309;
LABEL_3:
  *(a2 + 32) = v3;
LABEL_4:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
}

void _XSetWallpaperImageForLocations(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 2)
  {
    goto LABEL_3;
  }

  v5 = *(a1 + 4);
  if (v5 - 1169 < 0xFFFFFBFF)
  {
    goto LABEL_3;
  }

  if (*(a1 + 39) != 1 || *(a1 + 55) != 1)
  {
    goto LABEL_21;
  }

  v6 = *(a1 + 124);
  if (v6 > 0x400)
  {
LABEL_2:
    v3 = -304;
LABEL_3:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  v3 = -304;
  if (v5 - 144 < v6)
  {
    goto LABEL_3;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 144)
  {
    goto LABEL_3;
  }

  v8 = *(a1 + 40);
  if (v8 != *(a1 + 68) || (v9 = (a1 + v7 - 1024), v10 = *(a1 + 56), v10 != *(a1 + v7 + 140)))
  {
LABEL_21:
    v3 = -300;
    goto LABEL_3;
  }

  if (v5 >= 0x480)
  {
    v11 = 1152;
  }

  else
  {
    v11 = v5;
  }

  if (!memchr((a1 + 128), 0, v11 - 128))
  {
    goto LABEL_2;
  }

  v12 = ((v5 + 3) & 0xFFC) + a1;
  if (*v12 || *(v12 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_3;
  }

  v13 = *(a1 + 12);
  v14 = *(a1 + 28);
  v15 = *(a1 + 72);
  v16 = *(a1 + 76);
  v17 = *(a1 + 80);
  v18 = *(a1 + 84);
  v19 = *(a1 + 88);
  v20 = *(a1 + 92);
  v21 = *(a1 + 96);
  v22 = *(a1 + 100);
  v23 = *(a1 + 104);
  v24 = *(a1 + 108);
  v25 = *(a1 + 112);
  v26 = v9[1152];
  v27 = v9[1156];
  v28 = v9[1160];
  v29 = *(a1 + 44);
  v30 = *(v12 + 36);
  v32[0] = *(v12 + 20);
  v32[1] = v30;
  *(a2 + 32) = _SBMigSetWallpaperImageForLocations(v13, v14, v8, v15, v22, v23, v24, a1 + 128, v16, v17, v18, v19, v20, v21, v25, v26, v27, v28, v29, v10, (a2 + 36), v32);
  mig_deallocate(*(a1 + 44), *(a1 + 56));
  *(a1 + 44) = 0;
  *(a1 + 56) = 0;
  mig_deallocate(*(a1 + 28), *(a1 + 40));
  *(a1 + 28) = 0;
  *(a1 + 40) = 0;
  v31 = *(a2 + 32);
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!v31)
  {
    *(a2 + 4) = 40;
  }
}

void _XSetWallpaperImageSurfaceForLocations(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v3 = -304;
  if (*(a1 + 24) != 5)
  {
    goto LABEL_24;
  }

  v5 = *(a1 + 4);
  if (v5 - 1213 < 0xFFFFFBFF)
  {
    goto LABEL_24;
  }

  if (*(a1 + 38) << 16 != 1114112 || *(a1 + 50) << 16 != 1114112 || *(a1 + 63) != 1 || *(a1 + 79) != 1 || *(a1 + 95) != 1)
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 168);
  if (v6 > 0x400)
  {
LABEL_2:
    v3 = -304;
LABEL_24:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return;
  }

  v3 = -304;
  if (v5 - 188 < v6)
  {
    goto LABEL_24;
  }

  v7 = (v6 + 3) & 0xFFFFFFFC;
  if (v5 != v7 + 188)
  {
    goto LABEL_24;
  }

  if (*(a1 + 64) != *(a1 + 108) || *(a1 + 80) != *(a1 + 112) || (v8 = a1 + v7 - 1024, *(a1 + 96) != *(v8 + 1208)))
  {
LABEL_23:
    v3 = -300;
    goto LABEL_24;
  }

  v34 = v8;
  v35 = *(a1 + 96);
  v37 = *(a1 + 80);
  v36 = *(a1 + 64);
  v9 = *(a1 + 4);
  if (v5 >= 0x4AC)
  {
    v10 = 1196;
  }

  else
  {
    v10 = v5;
  }

  if (!memchr((a1 + 172), 0, v10 - 172))
  {
    goto LABEL_2;
  }

  v11 = ((v9 + 3) & 0xFFC) + a1;
  if (*v11 || *(v11 + 4) <= 0x1Fu)
  {
    v3 = -309;
    goto LABEL_24;
  }

  v12 = *(a1 + 12);
  v13 = *(a1 + 28);
  v14 = *(a1 + 40);
  v15 = *(a1 + 52);
  v16 = *(a1 + 68);
  v17 = *(a1 + 116);
  v18 = *(a1 + 120);
  v19 = *(a1 + 124);
  v20 = *(a1 + 128);
  v21 = *(a1 + 132);
  v22 = *(a1 + 136);
  v23 = *(a1 + 140);
  v24 = *(a1 + 144);
  v25 = *(a1 + 148);
  v26 = *(a1 + 152);
  v27 = *(a1 + 156);
  v28 = v34[1196];
  v29 = v34[1200];
  v30 = v34[1204];
  v31 = *(a1 + 84);
  v32 = *(v11 + 36);
  v38[0] = *(v11 + 20);
  v38[1] = v32;
  *(a2 + 32) = _SBMigSetWallpaperImageSurfaceForLocations(v12, v13, v14, v15, v36, v16, v37, v17, v18, v19, v20, v21, v22, v23, v27, v24, v25, v26, a1 + 172, v28, v29, v30, v31, v35, (a2 + 36), v38);
  mig_deallocate(*(a1 + 84), *(a1 + 96));
  *(a1 + 84) = 0;
  *(a1 + 96) = 0;
  mig_deallocate(*(a1 + 68), *(a1 + 80));
  *(a1 + 68) = 0;
  *(a1 + 80) = 0;
  mig_deallocate(*(a1 + 52), *(a1 + 64));
  *(a1 + 52) = 0;
  *(a1 + 64) = 0;
  v33 = *(a2 + 32);
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!v33)
  {
    *(a2 + 4) = 40;
  }
}

_DWORD *_XClearWallpaperAsset(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = _SBMigClearWallpaperAsset(v5, (a2 + 36), v7);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XGetWallpaperOptions(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 96) = 0;
  *(a2 + 36) = 16777472;
  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v6;
  result = _SBMigGetWallpaperOptions(v4, v5, a2 + 52, a2 + 56, a2 + 60, a2 + 64, a2 + 68, a2 + 72, a2 + 76, a2 + 80, a2 + 84, a2 + 88, a2 + 28, a2 + 96, v7);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 96);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 100;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XSetWallpaperVariant(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v4 = *(result + 12);
  v5 = *(result + 32);
  v6 = *(result + 72);
  v7[0] = *(result + 56);
  v7[1] = v6;
  result = _SBMigSetWallpaperVariant(v4, v5, (a2 + 36), v7);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XGetWallpaperLegibilitySettings(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
    goto LABEL_7;
  }

  if (*(result + 36) || *(result + 40) <= 0x1Fu)
  {
    v3 = -309;
LABEL_7:
    *(a2 + 32) = v3;
    goto LABEL_8;
  }

  *(a2 + 52) = 0;
  v4 = (a2 + 52);
  v5 = (a2 + 28);
  *(a2 + 36) = 16777472;
  v6 = *(result + 12);
  v7 = *(result + 32);
  v8 = *(result + 72);
  v9[0] = *(result + 56);
  v9[1] = v8;
  result = _SBMigGetWallpaperLegibilitySettings(v6, v7, v5, v4, v9);
  if (!result)
  {
    *(a2 + 40) = *(a2 + 52);
    *(a2 + 44) = *MEMORY[0x1E69E99E0];
    *a2 |= 0x80000000;
    *(a2 + 4) = 56;
    *(a2 + 24) = 1;
    return result;
  }

  *(a2 + 32) = result;
LABEL_8:
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XAddAlertItemsSuppressionAssertion(uint64_t a1, uint64_t a2)
{
  if ((*a1 & 0x80000000) == 0)
  {
    goto LABEL_2;
  }

  v5 = *(a1 + 24);
  result = 4294966992;
  if (v5 == 1)
  {
    v6 = *(a1 + 4);
    if ((v6 - 1081) >= 0xFFFFFBFF)
    {
      if (*(a1 + 38) << 16 != 1114112)
      {
        result = 4294966996;
        goto LABEL_3;
      }

      v7 = *(a1 + 52);
      if (v7 <= 0x400 && v6 - 56 >= v7 && v6 == ((v7 + 3) & 0xFFC) + 56)
      {
        if (!memchr((a1 + 56), 0, v6 - 56))
        {
LABEL_2:
          result = 4294966992;
          goto LABEL_3;
        }

        v8 = ((v6 + 3) & 0xFFC) + a1;
        if (*v8 || *(v8 + 4) < 0x20u)
        {
          result = 4294966987;
        }

        else
        {
          v9 = *(a1 + 12);
          v10 = *(a1 + 28);
          v11 = *(v8 + 36);
          v12[0] = *(v8 + 20);
          v12[1] = v11;
          result = _SBMigAddAlertItemsSuppressionAssertion(v9, a1 + 56, v10, v12);
        }
      }
    }
  }

LABEL_3:
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

_DWORD *_XIsReachabilityEnabled(_DWORD *result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || result[1] != 24)
  {
    v4 = -304;
    goto LABEL_7;
  }

  v3 = result + 6;
  if (result[6] || result[7] <= 0x1Fu)
  {
    v4 = -309;
LABEL_7:
    *(a2 + 32) = v4;
    *(a2 + 24) = *MEMORY[0x1E69E99E0];
    return result;
  }

  v5 = result[3];
  v6 = *(v3 + 9);
  v7[0] = *(v3 + 5);
  v7[1] = v6;
  result = _SBMigIsReachabilityEnabled(v5, (a2 + 36), v7);
  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  if (!result)
  {
    *(a2 + 4) = 40;
  }

  return result;
}

uint64_t _XSetReachabilityEnabled(uint64_t result, uint64_t a2)
{
  if ((*result & 0x80000000) != 0 || *(result + 4) != 36)
  {
    v3 = -304;
  }

  else
  {
    if (!*(result + 36) && *(result + 40) > 0x1Fu)
    {
      v4 = *(result + 12);
      v5 = *(result + 32);
      v6 = *(result + 72);
      v7[0] = *(result + 56);
      v7[1] = v6;
      result = _SBMigSetReachabilityEnabled(v4, v5, v7);
      *(a2 + 32) = result;
      return result;
    }

    v3 = -309;
  }

  *(a2 + 32) = v3;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}

uint64_t _XOverrideDisplayedDate(int *a1, uint64_t a2)
{
  v4 = *a1;
  result = 4294966992;
  if ((v4 & 0x80000000) == 0)
  {
    v6 = a1[1];
    if ((v6 - 1065) >= 0xFFFFFBFF)
    {
      v7 = a1[9];
      v8 = v7 <= 0x400 && v6 - 40 >= v7;
      if (v8 && v6 == ((v7 + 3) & 0xFFC) + 40)
      {
        if (memchr(a1 + 10, 0, v6 - 40))
        {
          v9 = a1 + ((v6 + 3) & 0xFFC);
          if (*v9 || *(v9 + 1) < 0x20u)
          {
            result = 4294966987;
          }

          else
          {
            v10 = a1[3];
            v11 = *(v9 + 36);
            v12[0] = *(v9 + 20);
            v12[1] = v11;
            result = _SBMigOverrideDisplayedDate(v10, (a1 + 10), v12);
          }
        }

        else
        {
          result = 4294966992;
        }
      }
    }
  }

  *(a2 + 32) = result;
  *(a2 + 24) = *MEMORY[0x1E69E99E0];
  return result;
}