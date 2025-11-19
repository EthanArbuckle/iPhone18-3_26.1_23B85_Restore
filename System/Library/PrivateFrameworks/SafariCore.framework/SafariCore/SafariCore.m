void WBSSetUpAccessToAppDataContainerWithIdentifier(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  os_unfair_lock_lock(&WBSSetUpAccessToAppDataContainerWithIdentifier_lock);
  v2 = objc_alloc_init(WBSScopeExitHandler);
  [(WBSScopeExitHandler *)v2 setHandler:&__block_literal_global_56];
  v3 = WBSSetUpAccessToAppDataContainerWithIdentifier_identifiersOfContainersGrantedAccessForThisProcess;
  if (!WBSSetUpAccessToAppDataContainerWithIdentifier_identifiersOfContainersGrantedAccessForThisProcess)
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v5 = WBSSetUpAccessToAppDataContainerWithIdentifier_identifiersOfContainersGrantedAccessForThisProcess;
    WBSSetUpAccessToAppDataContainerWithIdentifier_identifiersOfContainersGrantedAccessForThisProcess = v4;

    v3 = WBSSetUpAccessToAppDataContainerWithIdentifier_identifiersOfContainersGrantedAccessForThisProcess;
  }

  if ([v3 containsObject:v1])
  {
    v6 = WBS_LOG_CHANNEL_PREFIXSandbox();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v13 = 138412290;
      *&v13[4] = v1;
      _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_INFO, "Already granted sandbox extension for identifier (id: %@)", v13, 0xCu);
    }
  }

  else
  {
    container_query_create();
    container_query_set_class();
    *v13 = xpc_string_create([v1 UTF8String]);
    v7 = xpc_array_create(v13, 1uLL);
    container_query_set_identifiers();
    container_query_operation_set_flags();
    v8 = *MEMORY[0x1E69E9980];
    container_query_set_persona_unique_string();
    if (container_query_get_single_result())
    {
      v9 = container_copy_sandbox_token();
      if ((sandbox_extension_consume() & 0x8000000000000000) == 0)
      {
        free(v9);
      }

      container_query_free();
      [WBSSetUpAccessToAppDataContainerWithIdentifier_identifiersOfContainersGrantedAccessForThisProcess addObject:v1];
    }

    else
    {
      container_query_get_last_error();
      v10 = container_error_copy_unlocalized_description();
      v11 = WBS_LOG_CHANNEL_PREFIXSandbox();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        WBSSetUpAccessToAppDataContainerWithIdentifier_cold_1(v10, v11);
      }

      free(v10);
      container_query_free();
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

void WBSDispatchAsyncToMainQueueWithAutoreleasePool(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __WBSDispatchAsyncToMainQueueWithAutoreleasePool_block_invoke;
  block[3] = &unk_1E7CF1630;
  v4 = v1;
  v2 = v1;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __WBSDispatchAsyncToMainQueueWithAutoreleasePool_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t AppleAccountLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!AppleAccountLibraryCore_frameworkLibrary)
  {
    AppleAccountLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = AppleAccountLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AccountsLibrary()
{
  v1 = 0;
  result = AccountsLibraryCore();
  if (!result)
  {
    AccountsLibrary_cold_1(&v1);
  }

  return result;
}

Class __getACMonitoredAccountStoreClass_block_invoke(uint64_t a1)
{
  AccountsLibrary();
  result = objc_getClass("ACMonitoredAccountStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACMonitoredAccountStoreClass_block_invoke_cold_1();
  }

  getACMonitoredAccountStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B844A430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t AccountsLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!AccountsLibraryCore_frameworkLibrary)
  {
    AccountsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = AccountsLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B844A734(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

uint64_t MobileKeyBagLibraryCore(char **a1)
{
  v3 = *MEMORY[0x1E69E9840];
  if (!MobileKeyBagLibraryCore(char **)::frameworkLibrary)
  {
    MobileKeyBagLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  result = MobileKeyBagLibraryCore(char **)::frameworkLibrary;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void *___ZL33getMKBGetDeviceLockStateSymbolLocv_block_invoke(void *a1)
{
  v6 = 0;
  v2 = MobileKeyBagLibraryCore(&v6);
  if (!v2)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileKeyBagLibrary()"];
    [a1 handleFailureInFunction:v3 file:@"WBSKeyBagLockStatusManager.mm" lineNumber:21 description:{@"%s", v6}];

    __break(1u);
    goto LABEL_5;
  }

  v3 = v2;
  v4 = v6;
  if (v6)
  {
LABEL_5:
    free(v4);
  }

  result = dlsym(v3, "MKBGetDeviceLockState");
  *(*(a1[4] + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t getMKBGetDeviceLockStateSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMKBGetDeviceLockStateSymbolLoc(void)::ptr;
  v6 = getMKBGetDeviceLockStateSymbolLoc(void)::ptr;
  if (!getMKBGetDeviceLockStateSymbolLoc(void)::ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = ___ZL33getMKBGetDeviceLockStateSymbolLocv_block_invoke;
    v2[3] = &unk_1E7CF2198;
    v2[4] = &v3;
    ___ZL33getMKBGetDeviceLockStateSymbolLocv_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B844AB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B844ACA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak((v20 - 72));
  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswords()
{
  if (WBS_LOG_CHANNEL_PREFIXPasswords_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswords_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswords_log;
}

__CFString *generatedPasswordsLogAccessGroup()
{
  os_unfair_recursive_lock_lock_with_options();
  v0 = shouldUseTestingAccessGroups;
  os_unfair_recursive_lock_unlock();
  if (v0)
  {
    v1 = @"com.apple.password-manager.generated-passwords.testing";
  }

  else
  {
    v1 = @"com.apple.password-manager.generated-passwords";
  }

  return v1;
}

uint64_t WBS_LOG_CHANNEL_PREFIXKeychain()
{
  if (WBS_LOG_CHANNEL_PREFIXKeychain_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXKeychain_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXKeychain_log;
}

uint64_t sub_1B844B5CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A990, &unk_1B8574E20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x1E69E7CC8];
  off_1ED9856F8 = result;
  return result;
}

uint64_t sub_1B844B6D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B844B71C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t *___ZN12SafariSharedL21invalidTaskIdentifierEv_block_invoke()
{
  result = dlsym(1, "UIBackgroundTaskInvalid");
  if (result)
  {
    SafariShared::invalidTaskIdentifier(void)::identifer = *result;
  }

  return result;
}

void ___ZN12SafariSharedL17sharedApplicationEv_block_invoke()
{
  v0 = [NSClassFromString(&cfstr_Uiapplication.isa) sharedApplication];
  v1 = SafariShared::sharedApplication(void)::app;
  SafariShared::sharedApplication(void)::app = v0;
}

id SafariShared::sharedApplication(SafariShared *this)
{
  if (SafariShared::sharedApplication(void)::once != -1)
  {
    SafariShared::sharedApplication();
  }

  v2 = SafariShared::sharedApplication(void)::app;

  return v2;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler()
{
  if (WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler_log;
}

void *std::__tree<SafariShared::SuddenTerminationDisabler *>::__emplace_unique_key_args<SafariShared::SuddenTerminationDisabler *,SafariShared::SuddenTerminationDisabler *>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void SafariShared::SuddenTerminationDisabler::enableSuddenTermination(SafariShared::SuddenTerminationDisabler *this)
{
  v2 = SafariShared::sharedApplication(this);

  if (v2)
  {

    SafariShared::SuddenTerminationDisabler::enableSuddenTerminationTask(this);
  }

  else
  {

    SafariShared::SuddenTerminationDisabler::enableSuddenTerminationTransaction(this);
  }
}

uint64_t std::__tree<SafariShared::SuddenTerminationDisabler *>::__erase_unique<SafariShared::SuddenTerminationDisabler *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<SafariShared::SuddenTerminationDisabler *>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v4 = v1[2];
    *v19 = 138543362;
    *&v19[4] = v4;
    _os_log_impl(&dword_1B8447000, v2, OS_LOG_TYPE_DEFAULT, "Beginning new task assertion with reason: %{public}@", v19, 0xCu);
  }

  v5 = SafariShared::sharedApplication(v3);
  v6 = [v5 beginBackgroundTaskWithName:@"com.apple.SafariShared.SuddenTerminationDisabler" expirationHandler:&__block_literal_global_71];

  if (SafariShared::invalidTaskIdentifier(void)::once != -1)
  {
    ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_1();
  }

  if (v6 == SafariShared::invalidTaskIdentifier(void)::identifer)
  {
    v7 = SafariShared::coalescingBackgroundTaskIdentifier == SafariShared::invalidTaskIdentifier(void)::identifer;
    v8 = WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v9)
      {
        ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_5(v8);
      }
    }

    else if (v9)
    {
      ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_4(v8);
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v1[2];
      *v19 = 138543362;
      *&v19[4] = v11;
      _os_log_impl(&dword_1B8447000, v10, OS_LOG_TYPE_DEFAULT, "Did begin task assertion with reason %{public}@", v19, 0xCu);
    }

    v12 = SafariShared::coalescingBackgroundTaskIdentifier;
    if (SafariShared::invalidTaskIdentifier(void)::once != -1)
    {
      ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_1();
    }

    if (v12 != SafariShared::invalidTaskIdentifier(void)::identifer)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        v15 = SafariShared::coalescedDisablerReasons(v14);
        *v19 = 138543362;
        *&v19[4] = v15;
        _os_log_impl(&dword_1B8447000, v13, OS_LOG_TYPE_DEFAULT, "Interrupting previous coalesced task assertion to be replaced with existing reasons: %{public}@", v19, 0xCu);
      }

      v17 = SafariShared::sharedApplication(v16);
      [v17 endBackgroundTask:SafariShared::coalescingBackgroundTaskIdentifier];
    }

    SafariShared::coalescingBackgroundTaskIdentifier = v6;
    if ((_MergedGlobals_1 & 1) == 0)
    {
      ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_3();
    }

    *v19 = v1;
    std::__tree<SafariShared::SuddenTerminationDisabler *>::__emplace_unique_key_args<SafariShared::SuddenTerminationDisabler *,SafariShared::SuddenTerminationDisabler *>(&qword_1ED985C38, v19);
    *v1 = SafariShared::coalescingBackgroundTaskIdentifier;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void ___ZN12SafariSharedL38coalescingBackgroundTaskAssertionQueueEv_block_invoke()
{
  if (SafariShared::invalidTaskIdentifier(void)::once != -1)
  {
    SafariShared::SuddenTerminationDisabler::SuddenTerminationDisabler();
  }

  SafariShared::coalescingBackgroundTaskIdentifier = SafariShared::invalidTaskIdentifier(void)::identifer;
  v0 = dispatch_queue_create("com.apple.SafariShared.CoalescingBackgroundTaskAssertionQueue", 0);
  v1 = SafariShared::coalescingBackgroundTaskAssertionQueue(void)::queue;
  SafariShared::coalescingBackgroundTaskAssertionQueue(void)::queue = v0;
}

void SafariShared::SuddenTerminationDisabler::enableSuddenTerminationTask(SafariShared::SuddenTerminationDisabler *this)
{
  v2 = SafariShared::coalescingBackgroundTaskAssertionQueue(this);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN12SafariShared25SuddenTerminationDisabler27enableSuddenTerminationTaskEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
}

void ___ZN12SafariShared25SuddenTerminationDisabler27enableSuddenTerminationTaskEv_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *v1;
  if (SafariShared::invalidTaskIdentifier(void)::once != -1)
  {
    SafariShared::SuddenTerminationDisabler::SuddenTerminationDisabler();
  }

  if (v2 != SafariShared::invalidTaskIdentifier(void)::identifer)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v1[2];
      *v12 = 138543362;
      *&v12[4] = v4;
      _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEFAULT, "Ending task assertion with reason %{public}@", v12, 0xCu);
    }

    if (SafariShared::invalidTaskIdentifier(void)::once != -1)
    {
      ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_1();
    }

    *v1 = SafariShared::invalidTaskIdentifier(void)::identifer;
    if ((_MergedGlobals_1 & 1) == 0)
    {
      ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_3();
    }

    *v12 = v1;
    std::__tree<SafariShared::SuddenTerminationDisabler *>::__erase_unique<SafariShared::SuddenTerminationDisabler *>(&qword_1ED985C38, v12);
    if (_MergedGlobals_1)
    {
      if (qword_1ED985C48)
      {
        v5 = WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler();
        v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          v7 = SafariShared::coalescedDisablerReasons(v6);
          *v12 = 138543362;
          *&v12[4] = v7;
          _os_log_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEFAULT, "Continuing background task assertion with reasons %{public}@", v12, 0xCu);
        }

        goto LABEL_21;
      }
    }

    else
    {
      ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_3();
    }

    v8 = WBS_LOG_CHANNEL_PREFIXSuddenTerminationDisabler();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      *v12 = 0;
      _os_log_impl(&dword_1B8447000, v8, OS_LOG_TYPE_DEFAULT, "Ending background task assertion", v12, 2u);
    }

    v10 = SafariShared::sharedApplication(v9);
    [v10 endBackgroundTask:SafariShared::coalescingBackgroundTaskIdentifier];

    if (SafariShared::invalidTaskIdentifier(void)::once != -1)
    {
      ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_1();
    }

    SafariShared::coalescingBackgroundTaskIdentifier = SafariShared::invalidTaskIdentifier(void)::identifer;
  }

LABEL_21:
  v11 = *MEMORY[0x1E69E9840];
}

id SafariShared::coalescingBackgroundTaskAssertionQueue(SafariShared *this)
{
  if (SafariShared::coalescingBackgroundTaskAssertionQueue(void)::onceToken != -1)
  {
    SafariShared::coalescingBackgroundTaskAssertionQueue();
  }

  v2 = SafariShared::coalescingBackgroundTaskAssertionQueue(void)::queue;

  return v2;
}

uint64_t *std::__tree<SafariShared::SuddenTerminationDisabler *>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:sn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_3(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_8(int a1, std::string::value_type *a2, std::string *this)
{
  v4 = *a2;

  std::string::push_back(this, v4);
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t result, uint64_t a2, int a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = result;
  *(a2 + 12) = 1024;
  *(a2 + 14) = a3;
  return result;
}

void OUTLINED_FUNCTION_0_10(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 1024;
  *(a4 + 14) = v4;
  return result;
}

void OUTLINED_FUNCTION_0_12(uint64_t a1@<X8>)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *a1 = 1;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<std::tuple<NSString * {__strong}&>>(void *a1, uint64_t a2, void *a3, void ***a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [[WBSSQLiteStatement alloc] initWithDatabase:v7 query:v8 error:a2];
  v10 = v9;
  if (v9)
  {
    v11 = [(WBSSQLiteStatement *)v9 handle];
    v14 = *a4;
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<std::tuple<NSString * {__strong}&>>>(v7, v11, a2, &v14);
    [(WBSSQLiteStatement *)v10 invalidate];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1B844D5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

SafariShared::SuddenTerminationDisabler *SafariShared::SuddenTerminationDisabler::SuddenTerminationDisabler(SafariShared::SuddenTerminationDisabler *this, NSString *a2)
{
  v3 = a2;
  if (SafariShared::invalidTaskIdentifier(void)::once != -1)
  {
    SafariShared::SuddenTerminationDisabler::SuddenTerminationDisabler();
  }

  *this = SafariShared::invalidTaskIdentifier(void)::identifer;
  *(this + 1) = 0;
  *(this + 2) = v3;
  SafariShared::SuddenTerminationDisabler::disableSuddenTermination(this);
  return this;
}

void SafariShared::SuddenTerminationDisabler::disableSuddenTermination(SafariShared::SuddenTerminationDisabler *this)
{
  v2 = SafariShared::sharedApplication(this);

  if (v2)
  {

    SafariShared::SuddenTerminationDisabler::disableSuddenTerminationTask(this);
  }

  else
  {

    SafariShared::SuddenTerminationDisabler::disableSuddenTerminationTransaction(this);
  }
}

void SafariShared::SuddenTerminationDisabler::disableSuddenTerminationTask(SafariShared::SuddenTerminationDisabler *this)
{
  v2 = SafariShared::coalescingBackgroundTaskAssertionQueue(this);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
}

id SafariShared::coalescedDisablerReasons(SafariShared *this)
{
  v1 = [MEMORY[0x1E696AB50] set];
  if (_MergedGlobals_1)
  {
    v2 = qword_1ED985C38;
    if (qword_1ED985C38 != &qword_1ED985C40)
    {
      do
      {
        v3 = *(v2[4] + 16);
        [v1 addObject:v3];

        v4 = v2[1];
        if (v4)
        {
          do
          {
            v5 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v5 = v2[2];
            v6 = *v5 == v2;
            v2 = v5;
          }

          while (!v6);
        }

        v2 = v5;
      }

      while (v5 != &qword_1ED985C40);
    }
  }

  else
  {
    ___ZN12SafariShared25SuddenTerminationDisabler28disableSuddenTerminationTaskEv_block_invoke_cold_3();
  }

  return v1;
}

id WBSAuthenticationServicesAgentInterface()
{
  if (WBSAuthenticationServicesAgentInterface_onceToken != -1)
  {
    WBSAuthenticationServicesAgentInterface_cold_1();
  }

  v1 = WBSAuthenticationServicesAgentInterface_interface;

  return v1;
}

void __WBSAuthenticationServicesAgentInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3093530];
  v1 = WBSAuthenticationServicesAgentInterface_interface;
  WBSAuthenticationServicesAgentInterface_interface = v0;

  v2 = WBSAuthenticationServicesAgentInterface_interface;
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v4, v5, objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_getPasskeysForRunningAssertionWithApplicationIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v7 = WBSAuthenticationServicesAgentInterface_interface;
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  [v7 setClasses:v11 forSelector:sel_getPasskeysForRunningAssertionWithWebFrameIdentifier_completionHandler_ argumentIndex:0 ofReply:1];

  v12 = WBSAuthenticationServicesAgentInterface_interface;
  v13 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v12 setClasses:v13 forSelector:sel_userSelectedAutoFillNearbyDevice_completionHandler_ argumentIndex:0 ofReply:0];

  v14 = WBSAuthenticationServicesAgentInterface_interface;
  v15 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v15 forSelector:sel_didFillCredentialForUsername_forHost_fromProviderWithBundleIdentifier_inAppWithBundleIdentifier_listenerEndpoint_ argumentIndex:4 ofReply:0];

  v16 = WBSAuthenticationServicesAgentInterface_interface;
  v17 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v16 setClasses:v17 forSelector:sel_didFillCredentialForUsername_forURL_fromProviderWithBundleIdentifier_inBrowserWithBundleIdentifier_listenerEndpoint_ argumentIndex:4 ofReply:0];
}

id WBSAuthenticationServicesAgentDelegateInterface()
{
  if (WBSAuthenticationServicesAgentDelegateInterface_onceToken != -1)
  {
    WBSAuthenticationServicesAgentDelegateInterface_cold_1();
  }

  v1 = WBSAuthenticationServicesAgentDelegateInterface_interface;

  return v1;
}

void __WBSAuthenticationServicesAgentDelegateInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3092E50];
  v1 = WBSAuthenticationServicesAgentDelegateInterface_interface;
  WBSAuthenticationServicesAgentDelegateInterface_interface = v0;
}

void sub_1B844E978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_2_2(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x12u);
}

void sub_1B844F750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WBSIsEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  else
  {
    return [a1 isEqual:a2];
  }
}

void sub_1B844F788(uint64_t a1, unint64_t *a2)
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

void __isProcessAllowedToPerformAccountStoreMaintenance_block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  if ([v2 safari_isSafariFamilyApplicationBundle])
  {
    isProcessAllowedToPerformAccountStoreMaintenance_isAllowedToPerformMaintenance = 1;
  }

  else
  {
    v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.AuthenticationServicesCore.AuthenticationServicesAgent", @"com.apple.Preferences", @"com.apple.Safari.SafariCoreUnitTests.xctrunner", 0}];
    v1 = [v2 bundleIdentifier];
    isProcessAllowedToPerformAccountStoreMaintenance_isAllowedToPerformMaintenance = [v0 containsObject:v1];
  }
}

void sub_1B8450304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1B8450C38(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = [v4 passkeyStore];
  v8[2] = v4;
  sub_1B8450D18(a3, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A818, &qword_1B8576980);
  v6 = sub_1B8565FF8();

  return v6;
}

uint64_t sub_1B8450D18(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  if (swift_task_isCurrentExecutor())
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1B85266D0;
    *(v9 + 24) = v8;

    v13 = v2;
    sub_1B8526714(&v13, v14);
    v2 = v3;

    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v9;
      }

      __break(1u);
    }

    v9 = v14[0];
    v11 = swift_isEscapingClosureAtFileLocation();

    if ((v11 & 1) == 0)
    {
      return v9;
    }

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_1B8566448();
  MEMORY[0x1B8CBF120](0xD00000000000003FLL, 0x80000001B858DFE0);
  v13 = v2;
  type metadata accessor for WBSPasskeyStore();
  sub_1B8566548();
  MEMORY[0x1B8CBF120](46, 0xE100000000000000);
  result = sub_1B85665A8();
  __break(1u);
  return result;
}

uint64_t sub_1B8450F24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B8450F64@<X0>(void *a1@<X1>, uint64_t (*a2)(uint64_t)@<X2>, void *a3@<X8>)
{
  v7 = *(type metadata accessor for WBSKeychainPasskey() - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00]();
  v27 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2(v9);
  v12 = *(v11 + 16);
  if (v12)
  {
    v24 = a3;
    v25 = v3;
    v29 = MEMORY[0x1E69E7CC0];
    v28 = a1;
    result = sub_1B8535CAC(0, v12, 0);
    v14 = 0;
    v15 = v29;
    v26 = v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    while (v14 < *(v11 + 16))
    {
      v16 = v11;
      v17 = v7;
      v18 = v27;
      sub_1B85268CC(v26 + *(v7 + 72) * v14, v27);
      sub_1B851F954(v18);
      v20 = v19;
      result = sub_1B85260A0(v18, type metadata accessor for WBSKeychainPasskey);
      v29 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1B8535CAC((v21 > 1), v22 + 1, 1);
        v15 = v29;
      }

      ++v14;
      *(v15 + 16) = v22 + 1;
      *(v15 + 8 * v22 + 32) = v20;
      v7 = v17;
      v11 = v16;
      if (v12 == v14)
      {

        a3 = v24;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
LABEL_9:
    *a3 = v15;
  }

  return result;
}

uint64_t type metadata accessor for WBSKeychainPasskey()
{
  result = qword_1ED985758;
  if (!qword_1ED985758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8451200()
{
  sub_1B84512B4();
  if (v0 <= 0x3F)
  {
    sub_1B8565A38();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B84512B4()
{
  if (!qword_1ED985768[0])
  {
    v0 = sub_1B8566298();
    if (!v1)
    {
      atomic_store(v0, qword_1ED985768);
    }
  }
}

void *WBSPasskeyStore.allPasskeys()()
{
  result[1] = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E0, &unk_1B8574910);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v53 - v2;
  v4 = type metadata accessor for WBSKeychainPasskey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v57 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v53 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v53 - v12;
  v14 = sub_1B8565DA8();
  v16 = sub_1B8451B4C(0, 0xF000000000000000, v14, v15, 0, 0, 0);

  result[0] = 0;
  v17 = SecItemCopyMatching(v16, result);
  if (v17 == -25300)
  {
    if (qword_1ED985688 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_23;
  }

  if (v17)
  {
    v34 = v17;
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v35 = sub_1B8565B78();
    __swift_project_value_buffer(v35, qword_1ED985C68);
    v26 = sub_1B8565B48();
    v36 = sub_1B8566218();
    if (!os_log_type_enabled(v26, v36))
    {
      goto LABEL_40;
    }

    v28 = swift_slowAlloc();
    *v28 = 67240192;
    *(v28 + 4) = v34;
    v29 = "Could not fetch passkeys: %{public}d";
    v30 = v36;
    v31 = v26;
    v32 = v28;
    v33 = 8;
LABEL_29:
    _os_log_impl(&dword_1B8447000, v31, v30, v29, v32, v33);
LABEL_39:
    MEMORY[0x1B8CC1710](v28, -1, -1);
    goto LABEL_40;
  }

  if (!result[0] || (v62 = result[0], swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E8, &qword_1B8574920), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v37 = sub_1B8565B78();
    __swift_project_value_buffer(v37, qword_1ED985C68);
    v26 = sub_1B8565B48();
    v38 = sub_1B8566218();
    if (!os_log_type_enabled(v26, v38))
    {
      goto LABEL_40;
    }

    v28 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v28 = 138477827;
    swift_beginAccess();
    if (result[0])
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        v41 = v40;
LABEL_38:
        *(v28 + 4) = v40;
        *v39 = v41;
        _os_log_impl(&dword_1B8447000, v26, v38, "Unexpected keychain response: %{private}@", v28, 0xCu);
        sub_1B8456588(v39, &qword_1EBA8A8A0, &qword_1B85747C0);
        MEMORY[0x1B8CC1710](v39, -1, -1);
        goto LABEL_39;
      }

      swift_unknownObjectRelease();
    }

    v40 = 0;
    v41 = 0;
    goto LABEL_38;
  }

  v18 = v61;
  if (v61 >> 62)
  {
    v19 = sub_1B8566358();
    v54 = v16;
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_46:
    v16 = MEMORY[0x1E69E7CC0];
LABEL_47:

    v45 = *(v16 + 2);
    if (v45)
    {
      v46 = 0;
      v42 = MEMORY[0x1E69E7CC0];
      v60 = *(v16 + 2);
      do
      {
        if (v46 >= *(v16 + 2))
        {
          __break(1u);
        }

        v47 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v48 = *(v5 + 72);
        sub_1B85268CC(v16 + v47 + v48 * v46, v11);
        v49 = *(v11 + 3) == 0x6F632E656C707061 && *(v11 + 4) == 0xE90000000000006DLL;
        if (v49 || (sub_1B8566758() & 1) != 0)
        {
          sub_1B85260A0(v11, type metadata accessor for WBSKeychainPasskey);
        }

        else
        {
          sub_1B8538128(v11, v57, type metadata accessor for WBSKeychainPasskey);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = v42;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B8535C38(0, v42[2] + 1, 1);
            v45 = v60;
            v42 = v62;
          }

          v52 = v42[2];
          v51 = v42[3];
          if (v52 >= v51 >> 1)
          {
            sub_1B8535C38(v51 > 1, v52 + 1, 1);
            v45 = v60;
            v42 = v62;
          }

          v42[2] = v52 + 1;
          sub_1B8538128(v57, v42 + v47 + v52 * v48, type metadata accessor for WBSKeychainPasskey);
        }

        ++v46;
      }

      while (v45 != v46);
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }

    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  v19 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v54 = v16;
  if (!v19)
  {
    goto LABEL_46;
  }

LABEL_7:
  v20 = 0;
  v59 = v18 & 0xFFFFFFFFFFFFFF8;
  v60 = v18 & 0xC000000000000001;
  v16 = MEMORY[0x1E69E7CC0];
  v55 = v18;
  v56 = v4;
  v58 = v19;
  while (v60)
  {
    v21 = MEMORY[0x1B8CBF6C0](v20, v18);
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_42;
    }

LABEL_13:
    WBSKeychainPasskey.init(keychainDictionary:)(v21, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1B8456588(v3, &qword_1EBA8A8E0, &unk_1B8574910);
    }

    else
    {
      sub_1B8538128(v3, v13, type metadata accessor for WBSKeychainPasskey);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1B8535084(0, *(v16 + 2) + 1, 1, v16);
      }

      v24 = *(v16 + 2);
      v23 = *(v16 + 3);
      if (v24 >= v23 >> 1)
      {
        v16 = sub_1B8535084(v23 > 1, v24 + 1, 1, v16);
      }

      *(v16 + 2) = v24 + 1;
      sub_1B8538128(v13, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v24, type metadata accessor for WBSKeychainPasskey);
      v18 = v55;
      v4 = v56;
    }

    ++v20;
    if (v22 == v58)
    {
      goto LABEL_47;
    }
  }

  if (v20 >= *(v59 + 16))
  {
    goto LABEL_43;
  }

  v21 = *(v18 + 8 * v20 + 32);
  v22 = v20 + 1;
  if (!__OFADD__(v20, 1))
  {
    goto LABEL_13;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  swift_once();
LABEL_23:
  v25 = sub_1B8565B78();
  __swift_project_value_buffer(v25, qword_1ED985C68);
  v26 = sub_1B8565B48();
  v27 = sub_1B8566228();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "No passkeys found.";
    v30 = v27;
    v31 = v26;
    v32 = v28;
    v33 = 2;
    goto LABEL_29;
  }

LABEL_40:

  swift_unknownObjectRelease();
  v42 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v43 = *MEMORY[0x1E69E9840];
  return v42;
}

uint64_t sub_1B8451B4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8F8, &qword_1B8574940);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B8574680;
  v10 = *MEMORY[0x1E697AFF8];
  v58 = *MEMORY[0x1E697AFF8];
  type metadata accessor for CFString(0);
  *(v9 + 32) = v10;
  v57 = *MEMORY[0x1E697B020];
  v12 = *MEMORY[0x1E697B020];
  *(v9 + 56) = v11;
  *(v9 + 64) = v12;
  v13 = *MEMORY[0x1E697AEB0];
  *(v9 + 88) = v11;
  *(v9 + 96) = v13;
  v14 = *MEMORY[0x1E697AEB8];
  *(v9 + 120) = v11;
  *(v9 + 128) = v14;
  v15 = *MEMORY[0x1E697B390];
  *(v9 + 184) = v11;
  *(v9 + 152) = v11;
  *(v9 + 160) = v15;
  v16 = MEMORY[0x1E69E6370];
  v17 = MEMORY[0x1E697B310];
  *(v9 + 192) = 1;
  v18 = *v17;
  *(v9 + 248) = v11;
  *(v9 + 216) = v16;
  *(v9 + 224) = v18;
  *(v9 + 256) = 1;
  v19 = *MEMORY[0x1E697ABD0];
  *(v9 + 280) = v16;
  *(v9 + 288) = v19;
  v20 = 0xD000000000000019;
  if (*(v7 + 16))
  {
    v21 = 0xD000000000000032;
  }

  else
  {
    v21 = 0xD00000000000002ALL;
  }

  if (*(v7 + 16))
  {
    v22 = ".webauthn-recently-deleted";
  }

  else
  {
    v22 = ".webauthn.testing";
  }

  if (*(v7 + 16))
  {
    v20 = 0xD000000000000021;
    v23 = "com.apple.webkit.webauthn";
  }

  else
  {
    v23 = "back Title)";
  }

  if (a5)
  {
    v24 = v22;
  }

  else
  {
    v21 = v20;
    v24 = v23;
  }

  v25 = MEMORY[0x1E69E6158];
  *(v9 + 312) = v11;
  *(v9 + 320) = v21;
  *(v9 + 328) = v24 | 0x8000000000000000;
  v26 = *MEMORY[0x1E697B260];
  v27 = MEMORY[0x1E697B268];
  *(v9 + 344) = v25;
  *(v9 + 352) = v26;
  v28 = *v27;
  *(v9 + 376) = v11;
  *(v9 + 384) = v28;
  v29 = *MEMORY[0x1E697B320];
  *(v9 + 440) = v11;
  *(v9 + 408) = v11;
  *(v9 + 416) = v29;
  *(v9 + 472) = v16;
  *(v9 + 448) = 1;
  sub_1B8451F34(0, &qword_1ED9856C8, 0x1E695DF90);
  v30 = v58;
  v31 = v57;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v18;
  v36 = v19;
  v37 = v26;
  v38 = v28;
  v39 = v29;
  v40 = sub_1B85661D8();
  if (a2 >> 60 != 15)
  {
    v41 = objc_opt_self();
    sub_1B852550C(a1, a2);
    if ([v41 isCredentialExchangeEnabled])
    {
      v42 = *MEMORY[0x1E697AC38];
      if (*MEMORY[0x1E697AC38])
      {
LABEL_18:
        v43 = sub_1B85659A8();
        [v40 __swift_setObject_forKeyedSubscript_];

        v44 = *MEMORY[0x1E697B270];
        v45 = v37;
        [v40 __swift_setObject_forKeyedSubscript_];
        sub_1B852608C(a1, a2);

        goto LABEL_19;
      }

      __break(1u);
    }

    v42 = *MEMORY[0x1E697AC40];
    goto LABEL_18;
  }

LABEL_19:
  if (a7)
  {
    v46 = *MEMORY[0x1E697ADC8];
    v47 = sub_1B8565D68();
    [v40 __swift_setObject_forKeyedSubscript_];
  }

  if (sub_1B8565DA8() == a3 && v48 == a4)
  {

    return v40;
  }

  v49 = sub_1B8566758();

  if (v49)
  {
    return v40;
  }

  v51 = *MEMORY[0x1E697AE90];
  if (*MEMORY[0x1E697AE90])
  {
    v52 = sub_1B8565D68();
    [v40 __swift_setObject_forKeyedSubscript_];

    return v40;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8451F34(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B8451F7C()
{
  v0 = sub_1B8565B78();
  __swift_allocate_value_buffer(v0, qword_1ED985C68);
  __swift_project_value_buffer(v0, qword_1ED985C68);
  return sub_1B8565B58();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t WBS_LOG_CHANNEL_PREFIXRemotelyUpdatableDataController()
{
  if (WBS_LOG_CHANNEL_PREFIXRemotelyUpdatableDataController_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXRemotelyUpdatableDataController_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXRemotelyUpdatableDataController_log;
}

unint64_t sub_1B8452318()
{
  result = qword_1EBA8AD58;
  if (!qword_1EBA8AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8AD58);
  }

  return result;
}

void *sub_1B84526D0()
{
  result[1] = *MEMORY[0x1E69E9840];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E0, &unk_1B8574910);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v36 - v2;
  v4 = type metadata accessor for WBSKeychainPasskey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B8565DA8();
  v11 = sub_1B8451B4C(0, 0xF000000000000000, v9, v10, 1, 0, 0);

  result[0] = 0;
  v12 = SecItemCopyMatching(v11, result);
  if (v12)
  {
    LODWORD(v13) = v12;
    if (qword_1ED985688 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_3;
  }

  if (!result[0] || (v43 = result[0], swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8E8, &qword_1B8574920), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_1ED985688 != -1)
    {
      swift_once();
    }

    v28 = sub_1B8565B78();
    __swift_project_value_buffer(v28, qword_1ED985C68);
    v15 = sub_1B8565B48();
    v29 = sub_1B8566218();
    if (!os_log_type_enabled(v15, v29))
    {
      goto LABEL_37;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138477827;
    swift_beginAccess();
    if (result[0])
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v32 = swift_dynamicCastObjCClass();
      if (v32)
      {
        v33 = v32;
LABEL_35:
        *(v30 + 4) = v32;
        *v31 = v33;
        _os_log_impl(&dword_1B8447000, v15, v29, "Unexpected keychain response: %{private}@", v30, 0xCu);
        sub_1B8456588(v31, &qword_1EBA8A8A0, &qword_1B85747C0);
        MEMORY[0x1B8CC1710](v31, -1, -1);
        v18 = v30;
LABEL_36:
        MEMORY[0x1B8CC1710](v18, -1, -1);
LABEL_37:

        swift_unknownObjectRelease();
        v13 = MEMORY[0x1E69E7CC0];
        goto LABEL_38;
      }

      swift_unknownObjectRelease();
    }

    v32 = 0;
    v33 = 0;
    goto LABEL_35;
  }

  v19 = v42;
  if (v42 >> 62)
  {
    v20 = sub_1B8566358();
  }

  else
  {
    v20 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v11;
  v40 = v20;
  if (v20)
  {
    v21 = 0;
    v41 = v19 & 0xC000000000000001;
    v22 = v19 & 0xFFFFFFFFFFFFFF8;
    v23 = (v5 + 48);
    v13 = MEMORY[0x1E69E7CC0];
    v38 = v19;
    v39 = v5;
    v24 = v40;
    while (1)
    {
      if (v41)
      {
        v25 = MEMORY[0x1B8CBF6C0](v21, v19);
        v11 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v21 >= *(v22 + 16))
        {
          goto LABEL_40;
        }

        v25 = *(v19 + 8 * v21 + 32);
        v11 = (v21 + 1);
        if (__OFADD__(v21, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          swift_once();
LABEL_3:
          v14 = sub_1B8565B78();
          __swift_project_value_buffer(v14, qword_1ED985C68);
          v15 = sub_1B8565B48();
          v16 = sub_1B8566218();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 67240192;
            *(v17 + 4) = v13;
            _os_log_impl(&dword_1B8447000, v15, v16, "Could not fetch passkeys: %{public}d", v17, 8u);
            v18 = v17;
            goto LABEL_36;
          }

          goto LABEL_37;
        }
      }

      WBSKeychainPasskey.init(keychainDictionary:)(v25, v3);
      if ((*v23)(v3, 1, v4) == 1)
      {
        sub_1B8456588(v3, &qword_1EBA8A8E0, &unk_1B8574910);
      }

      else
      {
        sub_1B8538128(v3, v8, type metadata accessor for WBSKeychainPasskey);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1B8535084(0, v13[2] + 1, 1, v13);
        }

        v27 = v13[2];
        v26 = v13[3];
        if (v27 >= v26 >> 1)
        {
          v13 = sub_1B8535084(v26 > 1, v27 + 1, 1, v13);
        }

        v13[2] = v27 + 1;
        sub_1B8538128(v8, v13 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27, type metadata accessor for WBSKeychainPasskey);
        v19 = v38;
        v24 = v40;
      }

      ++v21;
      if (v11 == v24)
      {
        goto LABEL_32;
      }
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_32:

  swift_unknownObjectRelease();
LABEL_38:
  v34 = *MEMORY[0x1E69E9840];
  return v13;
}

void sub_1B8452E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1B8452ECC()
{
  if (MEMORY[0x1E6983310])
  {
    return [v0 init];
  }

  if (qword_1ED985688 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8565B78();
  __swift_project_value_buffer(v2, qword_1ED985C68);
  v3 = sub_1B8565B48();
  v4 = sub_1B85661F8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B8447000, v3, v4, "Passwords notifications are unavailable because UserNotifications.framework is not present", v5, 2u);
    MEMORY[0x1B8CC1710](v5, -1, -1);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

char *sub_1B845300C()
{
  swift_unknownObjectWeakInit();
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 safari_isPasswordsAppBundle];

  if (v2)
  {
    v3 = [objc_opt_self() currentNotificationCenter];
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E6983310]) initWithBundleIdentifier_];
  }

  *&v0[OBJC_IVAR___WBSPasswordsNotificationManager_userNotificationCenter] = v3;
  v8.receiver = v0;
  v8.super_class = WBSPasswordsNotificationManager;
  v4 = objc_msgSendSuper2(&v8, sel_init);
  v5 = *&v4[OBJC_IVAR___WBSPasswordsNotificationManager_userNotificationCenter];
  v6 = v4;
  [v5 setDelegate_];
  sub_1B84531F8();

  return v6;
}

__CFString *passwordCredentialAccessGroup()
{
  os_unfair_recursive_lock_lock_with_options();
  v0 = shouldUseTestingAccessGroups;
  os_unfair_recursive_lock_unlock();
  if (v0)
  {
    v1 = @"com.apple.cfnetwork.testing";
  }

  else
  {
    v1 = @"com.apple.cfnetwork";
  }

  return v1;
}

void sub_1B84531F8()
{
  v36[1] = MEMORY[0x1E69E7CD0];
  v0 = sub_1B8565D68();
  sub_1B8451F34(0, &qword_1EBA8A6C0, 0x1E6983258);
  v1 = sub_1B8565FF8();
  v2 = sub_1B8565FF8();
  v3 = objc_opt_self();
  v4 = [v3 categoryWithIdentifier:v0 actions:v1 intentIdentifiers:v2 options:0];

  sub_1B8453740(v36, v4);
  v5 = sub_1B8565D68();
  v6 = sub_1B8565FF8();
  v7 = sub_1B8565FF8();
  v8 = [v3 categoryWithIdentifier:v5 actions:v6 intentIdentifiers:v7 options:0];

  sub_1B8453740(v36, v8);
  v9 = sub_1B8565D68();
  v10 = sub_1B8565FF8();
  v11 = sub_1B8565FF8();
  v12 = [v3 categoryWithIdentifier:v9 actions:v10 intentIdentifiers:v11 options:0];

  sub_1B8453740(v36, v12);
  v13 = sub_1B8565D68();
  v14 = sub_1B8565FF8();
  v15 = sub_1B8565FF8();
  v16 = [v3 categoryWithIdentifier:v13 actions:v14 intentIdentifiers:v15 options:0];

  sub_1B8453740(v36, v16);
  v17 = @"com.apple.Passwords.Notifications.RecentlyDeleted";
  v18 = sub_1B8565FF8();
  v19 = sub_1B8565FF8();
  v20 = [v3 categoryWithIdentifier:v17 actions:v18 intentIdentifiers:v19 options:0];

  sub_1B8453740(v36, v20);
  v21 = @"com.apple.Passwords.Notifications.GroupChanged";
  v22 = sub_1B8565FF8();
  v23 = sub_1B8565FF8();
  v24 = [v3 categoryWithIdentifier:v21 actions:v22 intentIdentifiers:v23 options:0];

  sub_1B8453740(v36, v24);
  v25 = sub_1B8565D68();
  v26 = sub_1B8565FF8();
  v27 = sub_1B8565FF8();
  v28 = [v3 categoryWithIdentifier:v25 actions:v26 intentIdentifiers:v27 options:0];

  sub_1B8453740(v36, v28);
  v29 = sub_1B8565D68();
  v30 = sub_1B8565FF8();
  v31 = sub_1B8565FF8();
  v32 = [v3 categoryWithIdentifier:v29 actions:v30 intentIdentifiers:v31 options:0];

  sub_1B8453740(v36, v32);
  v33 = *&v34[OBJC_IVAR___WBSPasswordsNotificationManager_userNotificationCenter];
  sub_1B8451F34(0, &qword_1EBA8A6C8, 0x1E6983270);
  sub_1B8453F40();
  v35 = sub_1B8566138();

  [v33 setNotificationCategories_];
}

uint64_t sub_1B8453740(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B8566368();

    if (v9)
    {

      sub_1B8453958();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_1B8566358();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_1B85575E0(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_1B8453D18(v22 + 1);
    }

    v20 = v8;
    sub_1B8557CA4(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_1B8453958();
  v11 = *(v6 + 40);
  v12 = sub_1B8566278();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_1B84539A4(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_1B8566288();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

unint64_t sub_1B8453958()
{
  result = qword_1EBA8A6C8;
  if (!qword_1EBA8A6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA8A6C8);
  }

  return result;
}

void sub_1B84539A4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B8453D18(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B8558254();
      goto LABEL_12;
    }

    sub_1B8453B04(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_1B8566278();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_1B8453958();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_1B8566288();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B8566768();
  __break(1u);
}

uint64_t sub_1B8453B04(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADF0, &qword_1B8576958);
  result = sub_1B85663C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_1B8566278();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B8453D18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8ADF0, &qword_1B8576958);
  result = sub_1B85663C8();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1B8566278();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1B8453F40()
{
  result = qword_1EBA8A6D0;
  if (!qword_1EBA8A6D0)
  {
    sub_1B8451F34(255, &qword_1EBA8A6C8, 0x1E6983270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA8A6D0);
  }

  return result;
}

void sub_1B845429C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

void WBSReleaseOnMainQueueImpl(const void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    os_unfair_lock_lock(&_MergedGlobals_2);
    if (qword_1ED985C60)
    {
      [qword_1ED985C60 addObject:v1];
    }

    else
    {
      v3 = [MEMORY[0x1E695DF70] arrayWithObject:v1];
      v4 = qword_1ED985C60;
      qword_1ED985C60 = v3;
    }

    if ([qword_1ED985C60 count] == 1)
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_73);
    }

    CFRelease(v1);
    *a1 = 0;

    os_unfair_lock_unlock(&_MergedGlobals_2);
  }
}

void WBSDispatchSyncToMainQueueWithAutoreleasePool(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __WBSDispatchSyncToMainQueueWithAutoreleasePool_block_invoke;
  block[3] = &unk_1E7CF1630;
  v4 = v1;
  v2 = v1;
  dispatch_sync(MEMORY[0x1E69E96A0], block);
}

void __WBSDispatchSyncToMainQueueWithAutoreleasePool_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<std::tuple<NSString * {__strong}&>>>(void *a1, sqlite3_stmt *a2, uint64_t a3, void ***a4)
{
  v7 = a1;
  v8 = sqlite3_step(a2);
  if (v8 != 100)
  {
    goto LABEL_5;
  }

  if (!SafariShared::_WBSStatementFetchColumnsInTuple<std::tuple<NSString * {__strong}&>,0>(a2, a4))
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = sqlite3_step(a2);
  if (v8 != 101)
  {
LABEL_5:
    [v7 reportErrorWithCode:v8 statement:a2 error:a3];
    goto LABEL_6;
  }

  v9 = 1;
LABEL_7:

  return v9;
}

uint64_t SafariShared::_WBSStatementFetchColumnsInTuple<std::tuple<NSString * {__strong}&>,0>(sqlite3_stmt *a1, void ***a2)
{
  v3 = SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(a1, 0);
  v4 = **a2;
  **a2 = v3;

  return 1;
}

__CFString *SafariShared::WBSSQLiteDatatypeTraits<NSString * {__strong}>::fetch(sqlite3_stmt *a1, int a2)
{
  if (sqlite3_column_type(a1, a2) == 5)
  {
    v4 = 0;
  }

  else
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = sqlite3_column_text(a1, a2);
    v7 = sqlite3_column_bytes(a1, a2);
    v4 = CFStringCreateWithBytes(v5, v6, v7, 0x8000100u, 0);
  }

  return v4;
}

uint64_t SafariShared::WBSSQLiteDatabaseEnumerate<std::tuple<std::__ignore_type const&>>(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = [[WBSSQLiteStatement alloc] initWithDatabase:v7 query:v8 error:a2];
  v10 = v9;
  if (v9)
  {
    v11 = [(WBSSQLiteStatement *)v9 handle];
    v14 = *a4;
    v12 = SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<std::tuple<std::__ignore_type const&>>>(v7, v11, a2);
    [(WBSSQLiteStatement *)v10 invalidate];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t SafariShared::_WBSSQLiteStatementBindOrStep<0,0,std::tuple<std::tuple<std::__ignore_type const&>>>(void *a1, sqlite3_stmt *a2, uint64_t a3)
{
  v5 = a1;
  v6 = sqlite3_step(a2);
  if (v6 == 100 && (v6 = sqlite3_step(a2), v6 == 101))
  {
    v7 = 1;
  }

  else
  {
    [v5 reportErrorWithCode:v6 statement:a2 error:a3];
    v7 = 0;
  }

  return v7;
}

uint64_t SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v14 = 0;
  v7 = [[WBSSQLiteStatement alloc] initWithDatabase:v5 query:v6 error:&v14];
  v8 = v14;
  v9 = v8;
  if (v7)
  {
    v10 = [(WBSSQLiteStatement *)v7 execute];
    [(WBSSQLiteStatement *)v7 invalidate];
    if ((v10 - 100) >= 2 && v10 != 0)
    {
      [v5 reportErrorWithCode:v10 statement:-[WBSSQLiteStatement handle](v7 error:{"handle"), a2}];
    }
  }

  else
  {
    if (a2)
    {
      v12 = v8;
      *a2 = v9;
    }

    v10 = [v9 code];
  }

  return v10;
}

void temporarilyDisableSuddenTermination(WBSSQLiteDatabase *a1)
{
  os_unfair_lock_lock(&suddenTerminationDisablerLock);
  if (!suddenTerminationDisabler)
  {
    operator new();
  }

  os_unfair_lock_unlock(&suddenTerminationDisablerLock);
  if (temporarilyDisableSuddenTermination(WBSSQLiteDatabase *)::once != -1)
  {
    temporarilyDisableSuddenTermination();
  }

  v1 = dispatch_time(0, 3000000000);
  v2 = suddenTerminationDisablerDispatchSource;

  dispatch_source_set_timer(v2, v1, 0xFFFFFFFFFFFFFFFFLL, 0x493E0uLL);
}

id SafariShared::WBSSQLiteDatabaseFetch<>(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [[WBSSQLiteStatement alloc] initWithDatabase:v3 query:v4];
  v6 = [(WBSSQLiteStatement *)v5 fetch];

  return v6;
}

void ___ZL35temporarilyDisableSuddenTerminationP17WBSSQLiteDatabase_block_invoke()
{
  v0 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, 0);
  v1 = suddenTerminationDisablerDispatchSource;
  suddenTerminationDisablerDispatchSource = v0;

  dispatch_source_set_event_handler(suddenTerminationDisablerDispatchSource, &__block_literal_global_61_1);
  v2 = suddenTerminationDisablerDispatchSource;

  dispatch_resume(v2);
}

void WBSSQLiteDatabase.fetchQuery(_:_:enumerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v8 = sub_1B845554C(a1, a2, a3);
  if (!v5)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    *(v10 + 24) = a5;
    v11 = swift_allocObject();
    v11[2] = sub_1B8455838;
    v11[3] = v10;
    aBlock[4] = sub_1B8455860;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B8455734;
    aBlock[3] = &block_descriptor_2;
    v12 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v13 = [v9 fetchWithEnumerationBlock:v12 error:aBlock];
    _Block_release(v12);
    v14 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    if ((v13 & 1) == 0)
    {
      sub_1B85658D8();

      swift_willThrow();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t WBSSQLiteDatabase.fetchQuery<A>(_:_:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = sub_1B8566048();
  v14[2] = a6;
  v14[3] = &v15;
  v14[4] = a4;
  v14[5] = a5;
  WBSSQLiteDatabase.fetchQuery(_:_:enumerator:)(a1, a2, MEMORY[0x1E69E7CC0], sub_1B845582C, v14);
  v12 = v15;
  if (v6)
  {
  }

  return v12;
}

uint64_t sub_1B845554C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_allocWithZone(WBSSQLiteStatement);

  v6 = v3;
  v7 = sub_1B84559E8(v6);

  if (!v4)
  {
    v9 = *(a3 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = a3 + 32;
      do
      {
        v18 = v10;
        sub_1B853B45C(v11, &v19);
        if (v21 == 1)
        {
          break;
        }

        v12 = v18;
        v15 = v19;
        v16 = v20;
        v17 = v21;
        if (v21)
        {
          sub_1B853B534(&v15, &v18);
          v13 = v20;
          v14 = v21;
          result = __swift_project_boxed_opaque_existential_0(&v18, v20);
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_13:
            __break(1u);
            return result;
          }

          (*(v14 + 8))(v7, v12 + 1, v13, v14);
          __swift_destroy_boxed_opaque_existential_0(&v18);
        }

        else
        {
          result = sub_1B853B4CC(&v15);
          if (__OFADD__(v12, 1))
          {
            goto LABEL_13;
          }

          [v7 bindNullAtParameterIndex_];
        }

        ++v10;
        v11 += 40;
      }

      while (v9 != v10);
    }
  }

  return v7;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B8455734(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2;
  v3();
}

uint64_t sub_1B8455790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(*(a5 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v7(v6);
  sub_1B85660C8();
  return sub_1B8566098();
}

uint64_t sub_1B8455838()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B8455860()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id sub_1B84559E8(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B8565D68();

  v9[0] = 0;
  v4 = [v1 initWithDatabase:a1 query:v3 error:v9];

  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_1B85658D8();

    swift_willThrow();
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

void determineBundle(dispatch_once_t *a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __determineBundle_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (*a1 != -1)
  {
    dispatch_once(a1, block);
  }
}

id _WBSLocalizedString(void *a1, dispatch_once_t *a2, id *a3)
{
  v5 = a1;
  determineBundle(a2, a3);
  v6 = [*a3 localizedStringForKey:v5 value:@"localized string not found" table:0];

  return v6;
}

void __determineBundle_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _WBSGetLocalizableBundleFromAddress();
  v4 = *(a1 + 32);
  v5 = *v4;
  *v4 = v3;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSQLite()
{
  if (WBS_LOG_CHANNEL_PREFIXSQLite_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSQLite_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSQLite_log;
}

uint64_t sub_1B8456588(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1B84568D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1B84569B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = WBSSQLiteStatement;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void WBSSQLiteDatabase.executeQuery(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B845554C(a1, a2, a3);
  if (v3)
  {
    goto LABEL_6;
  }

  v8[0] = 0;
  v5 = v4;
  if ([v4 execute_])
  {
LABEL_5:

LABEL_6:
    v7 = *MEMORY[0x1E69E9840];
    return;
  }

  v6 = v8[0];
  if (v8[0])
  {
    swift_willThrow();
    v6;
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t *std::__tree<SafariShared::SuddenTerminationDisabler *>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:sn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t WBSLookUpLocalizedString(_:dsohandle:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = sub_1B8457180();

  return v1;
}

uint64_t sub_1B8457180()
{
  v30 = sub_1B8565B78();
  v1 = *(v30 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[3];
  v6 = v0[4];
  if (v5)
  {
    v31 = v0[2];
    v7 = v5;
  }

  else
  {
    v7 = v0[1];
    v31 = *v0;
  }

  v8 = qword_1ED985680;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = off_1ED9856F8;

  os_unfair_lock_lock(v9 + 6);
  v10 = *&v9[4]._os_unfair_lock_opaque;
  if (*(v10 + 16) && (v11 = sub_1B84577B0(v6), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    v14 = v13;
  }

  else
  {
    v15 = _WBSGetLocalizableBundleFromAddress();
    v13 = v15;
    if (v15)
    {
      v16 = v15;
      sub_1B84575D0(v13, v6);
    }
  }

  os_unfair_lock_unlock(v9 + 6);

  if (!v13)
  {
    v20 = 0xD00000000000001ALL;
    v22 = 0x80000001B858E6C0;
LABEL_15:
    if (0x80000001B858E6C0 == v22)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v17 = sub_1B8565D68();
  v18 = sub_1B8565D68();
  v19 = [v13 localizedStringForKey:v17 value:v18 table:0];

  v20 = sub_1B8565DA8();
  v22 = v21;

  if (v20 == 0xD00000000000001ALL)
  {
    goto LABEL_15;
  }

LABEL_16:
  if ((sub_1B8566758() & 1) == 0)
  {

    return v20;
  }

LABEL_17:
  sub_1B8565B68();

  v23 = sub_1B8565B48();
  v24 = sub_1B8566218();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32 = v26;
    *v25 = 136315138;
    v27 = sub_1B8525560(v31, v7, &v32);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_1B8447000, v23, v24, "Failed to look up localized string key: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x1B8CC1710](v26, -1, -1);
    MEMORY[0x1B8CC1710](v25, -1, -1);
  }

  else
  {
  }

  (*(v1 + 8))(v4, v30);
  return v20;
}

id _WBSGetLocalizableBundleFromAddress()
{
  v0 = dyld_image_path_containing_address();
  v1 = [MEMORY[0x1E696AC08] defaultManager];
  [v1 stringWithFileSystemRepresentation:v0 length:strlen(v0)];
  v2 = _CFBundleCopyFrameworkURLForExecutablePath();

  if (!v2)
  {
    [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v0 isDirectory:0 relativeToURL:0];
    v2 = _CFBundleCopyBundleURLForExecutableURL();
  }

  v3 = [MEMORY[0x1E696AAE8] bundleWithURL:v2];

  return v3;
}

void sub_1B84575D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1B8457690(a1, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    v8 = *v2;
    v9 = sub_1B84577B0(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_1B852C948();
        v14 = v16;
      }

      sub_1B8548B64(v11, v14);
      *v3 = v14;
    }
  }
}

void sub_1B8457690(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1B84577B0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1B852C948();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1B8457860(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_1B84577B0(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_1B8566778();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7];
    v22 = *(v21 + 8 * v9);
    *(v21 + 8 * v9) = a1;
  }

  else
  {

    sub_1B8457AC8(v9, a2, a1, v20);
  }
}

unint64_t sub_1B84577B0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1B85667C8();

  return sub_1B84577F4(a1, v4);
}

unint64_t sub_1B84577F4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B8457860(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA8A8D8, &qword_1B85748D8);
  result = sub_1B8566618();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = sub_1B85667C8();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1B8457AC8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t WBSLookUpLocalizedString(_:key:dsohandle:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];

  v2 = sub_1B8457180();

  return v2;
}

id WBSMakeAccessibilityIdentifier(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a2;
  v5 = a1;
  v6 = [v3 array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __WBSMakeAccessibilityIdentifier_block_invoke;
  v11[3] = &unk_1E7CF05C8;
  v12 = v6;
  v7 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v11];

  v8 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v8 setPath:v5];

  [v8 setQueryItems:v7];
  v9 = [v8 string];

  return v9;
}

void __WBSMakeAccessibilityIdentifier_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AF60] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

id WBSHTTPProtocolFromSecAttrProtocolValue(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = v1;
    if ([v4 isEqualToString:*MEMORY[0x1E697AE20]])
    {
      v5 = MEMORY[0x1E695AB98];
    }

    else
    {
      if (![v4 isEqualToString:*MEMORY[0x1E697AE30]])
      {
        v6 = WBS_LOG_CHANNEL_PREFIXKeychain();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          WBSHTTPProtocolFromSecAttrProtocolValue_cold_1();
        }

        v3 = 0;
        goto LABEL_13;
      }

      v5 = MEMORY[0x1E695ABA0];
    }

    v3 = *v5;
LABEL_13:

    goto LABEL_14;
  }

  v2 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    WBSHTTPProtocolFromSecAttrProtocolValue_cold_2(v2);
  }

  v3 = 0;
LABEL_14:

  return v3;
}

__CFString *sidecarAccessGroup()
{
  os_unfair_recursive_lock_lock_with_options();
  v0 = shouldUseTestingAccessGroups;
  os_unfair_recursive_lock_unlock();
  if (v0)
  {
    v1 = @"com.apple.password-manager.testing";
  }

  else
  {
    v1 = @"com.apple.password-manager";
  }

  return v1;
}

void __WBSReleaseOnMainQueueImpl_block_invoke()
{
  os_unfair_lock_lock(&_MergedGlobals_2);
  [qword_1ED985C60 removeAllObjects];

  os_unfair_lock_unlock(&_MergedGlobals_2);
}

void SafariShared::SuddenTerminationDisabler::disableSuddenTerminationTransaction(SafariShared::SuddenTerminationDisabler *this)
{
  v2 = SafariShared::coalescingBackgroundTaskAssertionQueue(this);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN12SafariShared25SuddenTerminationDisabler35disableSuddenTerminationTransactionEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
}

void ___ZN12SafariShared25SuddenTerminationDisabler35disableSuddenTerminationTransactionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.SuddenTerminationDisabler:%@", *(v1 + 16)];
  [v4 UTF8String];
  v2 = os_transaction_create();
  v3 = *(v1 + 8);
  *(v1 + 8) = v2;
}

void sub_1B845AC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B845AE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(va);
  _Unwind_Resume(a1);
}

void SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(id *this)
{
  SafariShared::SuddenTerminationDisabler::enableSuddenTermination(this);
}

void SafariShared::SuddenTerminationDisabler::enableSuddenTerminationTransaction(SafariShared::SuddenTerminationDisabler *this)
{
  v2 = SafariShared::coalescingBackgroundTaskAssertionQueue(this);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN12SafariShared25SuddenTerminationDisabler34enableSuddenTerminationTransactionEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);
}

void ___ZN12SafariShared25SuddenTerminationDisabler34enableSuddenTerminationTransactionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

void soft_MKBGetDeviceLockState(const __CFDictionary *a1)
{
  MKBGetDeviceLockStateSymbolLoc = getMKBGetDeviceLockStateSymbolLoc();
  if (MKBGetDeviceLockStateSymbolLoc)
  {

    MKBGetDeviceLockStateSymbolLoc(0);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"int soft_MKBGetDeviceLockState(CFDictionaryRef)"];
    [v2 handleFailureInFunction:v3 file:@"WBSKeyBagLockStatusManager.mm" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

uint64_t WBS_LOG_CHANNEL_PREFIXSandbox()
{
  if (WBS_LOG_CHANNEL_PREFIXSandbox_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSandbox_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSandbox_log;
}

__CFString *recentlyDeletedPasswordCredentialAccessGroup()
{
  os_unfair_recursive_lock_lock_with_options();
  v0 = shouldUseTestingAccessGroups;
  os_unfair_recursive_lock_unlock();
  if (v0)
  {
    v1 = @"com.apple.cfnetwork-recently-deleted.testing";
  }

  else
  {
    v1 = @"com.apple.cfnetwork-recently-deleted";
  }

  return v1;
}

__CFString *recentlyDeletedSidecarAccessGroup()
{
  os_unfair_recursive_lock_lock_with_options();
  v0 = shouldUseTestingAccessGroups;
  os_unfair_recursive_lock_unlock();
  if (v0)
  {
    v1 = @"com.apple.password-manager-recently-deleted.testing";
  }

  else
  {
    v1 = @"com.apple.password-manager-recently-deleted";
  }

  return v1;
}

void WBSSetEnvironmentFromContainerPath(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = a1;
  [v1 fileSystemRepresentation];
  if (__strlcpy_chk() >= 0x400 || (setenv("HOME", __value, 1), setenv("CFFIXED_USER_HOME", __value, 1), __strlcat_chk() >= 0x400))
  {
    exit(1);
  }

  setenv("TMPDIR", __value, 1);

  v2 = *MEMORY[0x1E69E9840];
}

void WBSSetSignalHandler(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v5;
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    v12 = MEMORY[0x1E69E9700];
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [*(*(&v21 + 1) + 8 * v13) intValue];
        v15 = dispatch_source_create(v12, v14, 0, v6);
        dispatch_source_set_event_handler(v15, v7);
        dispatch_resume(v15);
        [v8 addObject:v15];
        v20.__sigaction_u.__sa_handler = 1;
        *&v20.sa_mask = 0;
        sigaction(v14, &v20, 0);

        ++v13;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = [v8 copy];
  v17 = WBSSetSignalHandler_immortalDispatchSources;
  WBSSetSignalHandler_immortalDispatchSources = v16;

  v18 = *MEMORY[0x1E69E9840];
}

id *std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100](id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(result);

    JUMPOUT(0x1B8CC0290);
  }

  return result;
}

void ___ZL35temporarilyDisableSuddenTerminationP17WBSSQLiteDatabase_block_invoke_2()
{
  os_unfair_lock_lock(&suddenTerminationDisablerLock);
  if (suddenTerminationDisabler)
  {
    SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(suddenTerminationDisabler);
    MEMORY[0x1B8CC0290]();
    suddenTerminationDisabler = 0;
  }

  os_unfair_lock_unlock(&suddenTerminationDisablerLock);
}

uint64_t sub_1B845D958()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B845D9B8()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B845DA18()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B845DA60()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B845DA98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B845DB24()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B845DB70()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B845DBFC()
{
  _Block_release(*(v0 + 40));
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B845DC50()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B845DC88()
{
  _Block_release(*(v0 + 48));
  v1 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B845DD10()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void *sub_1B845DDE8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B845DE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B8565C48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B845DEF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B8565C48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

id sub_1B845DFA4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 shouldHideExtensionDiscovery];
  *a2 = result;
  return result;
}

uint64_t sub_1B845DFD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1B845E028@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_1B845E078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B8565938();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B845E124(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B8565938();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B845E1CC()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1B8565D38();
}

uint64_t sub_1B845E1D8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1B845E224@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v8 = *a1;
  v7 = v4;
  result = WBSKeychainPasskey.Metadata.subscript.getter(&v7);
  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_1B845E26C(uint64_t *a1, uint64_t a2, char *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  sub_1B852CF28(v3, v4);
  WBSKeychainPasskey.Metadata.subscript.setter(v3, v4, &v5);
}

uint64_t sub_1B845E2D4@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a2;
  v8 = *a1;
  v7 = v4;
  result = WBSKeychainPasskey.Metadata.subscript.getter(&v7);
  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_1B845E31C(uint64_t *a1, uint64_t a2, char *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;

  WBSKeychainPasskey.Metadata.subscript.setter(v3, v4, &v5);
}

uint64_t sub_1B845E380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B8565A38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B845E42C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B8565A38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t WBSAXShouldShowAnimatedImageControls()
{
  result = libAccessibilityLibraryCore();
  if (result)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {
      v3 = 0;
      v4 = &v3;
      v5 = 0x2020000000;
      v1 = get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_ptr;
      v6 = get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_ptr;
      if (!get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_ptr)
      {
        v2[0] = MEMORY[0x1E69E9820];
        v2[1] = 3221225472;
        v2[2] = __get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_block_invoke;
        v2[3] = &unk_1E7CF0630;
        v2[4] = &v3;
        __get_AXSReduceMotionAutoplayAnimatedImagesEnabledSymbolLoc_block_invoke(v2);
        v1 = v4[3];
      }

      _Block_object_dispose(&v3, 8);
      if (!v1)
      {
        WBSAXShouldShowAnimatedImageControls_cold_1();
      }

      return v1() == 0;
    }
  }

  return result;
}

void sub_1B845E5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t libAccessibilityLibraryCore()
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = libAccessibilityLibraryCore_frameworkLibrary;
  v6 = libAccessibilityLibraryCore_frameworkLibrary;
  if (!libAccessibilityLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_1E7CF05E8;
    v8 = 0;
    v4[3] = _sl_dlopen();
    libAccessibilityLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1B845E704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libAccessibilityLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAccessibilityLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

dispatch_time_t WBSTimeUntilNextWeeklyAnalyticsReportForKey(void *a1)
{
  v1 = a1;
  Current = CFAbsoluteTimeGetCurrent();
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 doubleForKey:v1];
  v5 = v4;

  v6 = v5 - Current + 604800.0;
  if (v6 < 300.0)
  {
    v6 = 300.0;
  }

  v7 = dispatch_walltime(0, 1000000000 * v6);

  return v7;
}

uint64_t descriptionForTimeInterval(NSDate *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DEE8] currentCalendar];
  if ([v2 isDateInToday:v1])
  {
    v3 = 0;
  }

  else if ([v2 isDateInYesterday:v1])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] now];
    v5 = [v2 components:28 fromDate:v1 toDate:v4 options:0];

    if ([v5 day] >= 8)
    {
      if ([v5 day] < 8 || objc_msgSend(v5, "day") >= 15)
      {
        if ([v5 day] < 31)
        {
          v3 = 4;
        }

        else
        {
          v3 = 5;
        }
      }

      else
      {
        v3 = 3;
      }
    }

    else
    {
      v3 = 2;
    }
  }

  return v3;
}

void sub_1B845F9CC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id extensionInvokedMetric(NSString *a1, int a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  v9[0] = @"extensionIdentifier";
  v9[1] = @"method";
  v5 = @"scriptInjection";
  if (a2)
  {
    v5 = @"button";
  }

  v10[0] = v3;
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1B846675C(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

__CFString *stringForFormType(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"Invalid Form Type";
  }

  else
  {
    return off_1E7CF11A8[a1];
  }
}

__CFString *stringForFieldType(unint64_t a1)
{
  if (a1 > 0x18)
  {
    return @"Invalid Field Type";
  }

  else
  {
    return off_1E7CF11D8[a1];
  }
}

__CFString *stringForTabGroupsActionSource(uint64_t a1)
{
  if ((a1 - 1) > 0xA)
  {
    return @"sidebar";
  }

  else
  {
    return off_1E7CF12C8[a1 - 1];
  }
}

__CFString *stringForToolbarButtonType(uint64_t a1)
{
  if ((a1 - 1) > 0x24)
  {
    return @"back";
  }

  else
  {
    return off_1E7CF1320[a1 - 1];
  }
}

BOOL WBSAuditTokenHasEntitlement(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E695E480];
  v5 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  v7 = v6;
  if (v6)
  {
    *token.val = 0;
    v8 = SecTaskCopyValueForEntitlement(v6, v3, &token);
    v9 = v8;
    if (*token.val)
    {
      NSLog(&cfstr_UnableToGetEnt.isa, v3, *token.val);
      CFRelease(*token.val);
      v10 = 0;
      if (!v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!v8)
      {
        v10 = 0;
LABEL_12:
        CFRelease(v7);
        goto LABEL_13;
      }

      v11 = CFGetTypeID(v8);
      v10 = v11 == CFBooleanGetTypeID() && CFBooleanGetValue(v9) != 0;
    }

    CFRelease(v9);
    goto LABEL_12;
  }

  NSLog(&cfstr_UnableToCreate.isa, v3);
  v10 = 0;
LABEL_13:

  return v10;
}

id WBSAuditTokenValueArrayForEntitlement(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E695E480];
  v5 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &token);
  v7 = v6;
  if (!v6)
  {
    NSLog(&cfstr_UnableToCreate.isa, v3);
    v9 = 0;
    goto LABEL_10;
  }

  *token.val = 0;
  v8 = SecTaskCopyValueForEntitlement(v6, v3, &token);
  if (*token.val)
  {
    NSLog(&cfstr_UnableToGetEnt.isa, v3, *token.val);
    CFRelease(*token.val);
    CFRelease(v7);
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  CFRelease(v7);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_UnableToGetAnA.isa, v3);
    goto LABEL_8;
  }

  v9 = v8;
  v8 = 0;
LABEL_9:

LABEL_10:

  return v9;
}

id WBSApplicationIdentifierFromAuditToken(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v9.val = *a1;
  *&v9.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v9);
  v4 = v3;
  if (v3)
  {
    v5 = SecTaskCopyValueForEntitlement(v3, @"application-identifier", 0);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if ((isKindOfClass & 1) == 0)
  {
    v5 = 0;
  }

  return v5;
}

id WBSTeamIdentifierFromAuditToken(_OWORD *a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = a1[1];
  *v6.val = *a1;
  *&v6.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &v6);
  if (v3)
  {
    v4 = SecTaskCopyTeamIdentifier();
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface()
{
  if (WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface_onceToken != -1)
  {
    WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface_cold_1();
  }

  v1 = WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface_interface;

  return v1;
}

void __WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface_block_invoke()
{
  v10[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3092D70];
  v1 = WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface_interface;
  WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface_interface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];
  v4 = [v2 setWithArray:v3];

  [WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface_interface setClasses:v4 forSelector:sel_groupsUpdatedWithInfos_ argumentIndex:0 ofReply:0];
  [WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface_interface setClasses:v4 forSelector:sel_groupsUpdatedWithInfos_shouldForceShowingNotifications_completionHandler_ argumentIndex:0 ofReply:0];
  v5 = MEMORY[0x1E695DFD8];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
  v7 = [v5 setWithArray:v6];

  [WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface_interface setClasses:v7 forSelector:sel_fetchSharingGroupsThatIncludeFamilyMembers_ argumentIndex:0 ofReply:1];
  v8 = *MEMORY[0x1E69E9840];
}

id OUTLINED_FUNCTION_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);

  return a2;
}

id OUTLINED_FUNCTION_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  return a2;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B8473A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B8473E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8473FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8474144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B84742AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8474428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8474578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8474714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B84751C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8475B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B8475DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WBSCloudBookmarksMigrationCoordinatorLogsDirectoryURL(void *a1)
{
  v1 = a1;
  v2 = [@"CloudBookmarksMigrationCoordinator" stringByAppendingPathComponent:@"Logs"];
  v3 = [v1 URLByAppendingPathComponent:v2 isDirectory:1];

  return v3;
}

__CFString *stringFromLocalMigrationState(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"Unexpected Value";
  }

  else
  {
    return off_1E7CF18B8[a1 + 1];
  }
}

__CFString *stringFromRemoteMigrationState(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"Unexpected Value";
  }

  else
  {
    return off_1E7CF18E0[a1 + 1];
  }
}

void sub_1B8477978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1B847A604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WBSCoalescedAsynchronousWriter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B847B9EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXAppleAccount()
{
  if (WBS_LOG_CHANNEL_PREFIXAppleAccount_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAppleAccount_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAppleAccount_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAutoFill()
{
  if (WBS_LOG_CHANNEL_PREFIXAutoFill_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAutoFill_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAutoFill_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCoalescedAsynchronousWriter()
{
  if (WBS_LOG_CHANNEL_PREFIXCoalescedAsynchronousWriter_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCoalescedAsynchronousWriter_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCoalescedAsynchronousWriter_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXDebugUtilities()
{
  if (WBS_LOG_CHANNEL_PREFIXDebugUtilities_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXDebugUtilities_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXDebugUtilities_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXFileManager()
{
  if (WBS_LOG_CHANNEL_PREFIXFileManager_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXFileManager_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXFileManager_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXKeyedArchiver()
{
  if (WBS_LOG_CHANNEL_PREFIXKeyedArchiver_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXKeyedArchiver_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXKeyedArchiver_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXMissingPasswordGroups()
{
  if (WBS_LOG_CHANNEL_PREFIXMissingPasswordGroups_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXMissingPasswordGroups_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXMissingPasswordGroups_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXOther()
{
  if (WBS_LOG_CHANNEL_PREFIXOther_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXOther_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXOther_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPinnedTabRestoration()
{
  if (WBS_LOG_CHANNEL_PREFIXPinnedTabRestoration_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPinnedTabRestoration_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPinnedTabRestoration_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSQLiteStore()
{
  if (WBS_LOG_CHANNEL_PREFIXSQLiteStore_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSQLiteStore_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSQLiteStore_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXXPC()
{
  if (WBS_LOG_CHANNEL_PREFIXXPC_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXXPC_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXXPC_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness()
{
  if (WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExport()
{
  if (WBS_LOG_CHANNEL_PREFIXExport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExport_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXImport()
{
  if (WBS_LOG_CHANNEL_PREFIXImport_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXImport_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXImport_log;
}

__n128 __Block_byref_object_copy__3(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_1B847ED74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__69(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B848066C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B848086C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B84812F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t enumeratePossibleURLsForUserTypedStringWithBlockInternal(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 safari_stringByRemovingUnnecessaryCharactersFromUserTypedURLString];
  if (![v5 length])
  {
    v10 = 0;
    goto LABEL_55;
  }

  v25 = 0;
  v6 = v5;
  v7 = [v6 rangeOfString:@":"];
  v8 = [v6 rangeOfString:@"/"];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v8 != 0x7FFFFFFFFFFFFFFFLL && v8 < v7)
  {
    goto LABEL_5;
  }

  v14 = v6;
  if (([v14 hasPrefix:@"["] & 1) == 0)
  {
    goto LABEL_24;
  }

  v15 = [v14 rangeOfString:@"]"];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  v16 = [v14 substringWithRange:{1, v15 - 1}];
  if ([v16 rangeOfString:@":"] == 0x7FFFFFFFFFFFFFFFLL)
  {

LABEL_24:
LABEL_25:
    if (([v14 safari_hasCaseInsensitivePrefix:@"http:"] & 1) != 0 || (objc_msgSend(v14, "safari_hasCaseInsensitivePrefix:", @"https:") & 1) != 0 || (objc_msgSend(v14, "safari_hasCaseInsensitivePrefix:", @"file:") & 1) != 0 || (objc_msgSend(v14, "safari_hasCaseInsensitivePrefix:", @"ftp:") & 1) != 0 || (objc_msgSend(v14, "safari_hasCaseInsensitivePrefix:", @"javascript:") & 1) != 0 || (objc_msgSend(v14, "safari_hasCaseInsensitivePrefix:", @"about:") & 1) != 0 || objc_msgSend(v14, "length") <= v7 + 1)
    {
    }

    else
    {
      v17 = [v14 characterAtIndex:?] - 58;

      if (v17 > 0xFFF5u)
      {
        goto LABEL_6;
      }
    }

    v18 = [MEMORY[0x1E695DFF8] safari_URLWithUserTypedString:v14];
    if (v18)
    {
      v4[2](v4, v18, &v25);
      v10 = v25;
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_55;
  }

  v21 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"1234567890abcdefABCDEF:"];
  v22 = [v21 invertedSet];
  v23 = [v16 rangeOfCharacterFromSet:v22];

  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_25;
  }

LABEL_5:

LABEL_6:
  if ([v6 safari_hasCaseInsensitivePrefix:@"www."])
  {
    v9 = urlWithAddedComponents(v6, 1);
    if (v9)
    {
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v11 = [v3 rangeOfString:@"/"];
  v12 = [v3 rangeOfString:@"@"];
  if (v12 != 0x7FFFFFFFFFFFFFFFLL && (v11 == 0x7FFFFFFFFFFFFFFFLL || v12 < v11))
  {
    v9 = urlWithAddedComponents(v6, 1);
    if (v9)
    {
      goto LABEL_53;
    }

    goto LABEL_54;
  }

  v13 = [v3 rangeOfString:@"."];
  if (v13 != 0x7FFFFFFFFFFFFFFFLL && (v11 == 0x7FFFFFFFFFFFFFFFLL || v13 < v11))
  {
    v19 = urlWithAddedComponents(v6, 1);
    if (v19)
    {
      v4[2](v4, v19, &v25);
    }

    if ((v25 & 1) == 0)
    {
      v9 = urlWithAddedComponents(v6, 3);
      if (v9)
      {
        goto LABEL_53;
      }

      goto LABEL_54;
    }
  }

  else
  {
    if (([v6 safari_isCaseInsensitiveEqualToString:@"localhost"] & 1) != 0 || objc_msgSend(v6, "safari_hasCaseInsensitivePrefix:", @"localhost/"))
    {
      v9 = urlWithAddedComponents(v6, 1);
      if (v9)
      {
        goto LABEL_53;
      }

      goto LABEL_54;
    }

    v20 = urlWithAddedComponents(v6, 1);
    if (v20)
    {
      v4[2](v4, v20, &v25);
    }

    if ((v25 & 1) == 0)
    {
      v9 = urlWithAddedComponents(v6, 7);
      if (v9)
      {
LABEL_53:
        v4[2](v4, v9, &v25);
      }

LABEL_54:

      v10 = v25;
      goto LABEL_55;
    }
  }

  v10 = 1;
LABEL_55:

  return v10 & 1;
}

void sub_1B8481DF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B8482E0C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

BOOL fileExists(NSURL *a1)
{
  v1 = [(NSURL *)a1 path];
  v2 = lstat([v1 fileSystemRepresentation], &v4) == 0;

  return v2;
}

id urlWithAddedComponents(NSString *a1, uint64_t a2)
{
  v3 = a1;
  if ([(NSString *)v3 length]&& [(NSString *)v3 characterAtIndex:0]!= 47)
  {
    v5 = [(NSString *)v3 mutableCopy];
    v6 = v5;
    if (a2)
    {
      [(__CFString *)v5 insertString:@"http://" atIndex:0];
      a2 &= ~1uLL;
    }

    if (a2)
    {
      v7 = [(__CFString *)v6 rangeOfString:@"://"];
      v8 = v7;
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ((a2 & 2) != 0)
        {
          [(__CFString *)v6 insertString:@"www." atIndex:v7 + 3];
        }

        if ((a2 & 4) != 0)
        {
          v9 = [(__CFString *)v6 length]- v8 - 3;
          v10 = [(__CFString *)v6 rangeOfString:@":" options:0 range:v8 + 3, v9];
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = [(__CFString *)v6 rangeOfString:@"/" options:0 range:v8 + 3, v9];
            if (v10 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v10 = [(__CFString *)v6 length];
            }
          }

          v13.location = v10 - 4;
          v13.length = 4;
          if (CFStringCompareWithOptions(v6, @".com", v13, 1uLL))
          {
            [(__CFString *)v6 insertString:@".com" atIndex:v10];
          }
        }
      }
    }

    v4 = [MEMORY[0x1E695DFF8] safari_URLWithUserTypedString:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL WBSCurrentPasswordSavingBehavior()
{
  v0 = [MEMORY[0x1E695E000] pm_defaults];
  v1 = [v0 objectForKey:@"PasswordSavingBehavior"];

  objc_opt_class();
  v2 = (objc_opt_isKindOfClass() & 1) != 0 && [v1 integerValue] == 1;

  return v2;
}

void WBSReportThreadLocationAndSleep(uint64_t a1, int a2, uint64_t a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = WBS_LOG_CHANNEL_PREFIXDebugUtilities();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    WBSReportThreadLocationAndSleep_cold_1(v6);
  }

  v7 = WBS_LOG_CHANNEL_PREFIXDebugUtilities();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446722;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    *&buf[18] = 2080;
    *&buf[20] = a3;
    _os_log_error_impl(&dword_1B8447000, v7, OS_LOG_TYPE_ERROR, "\t at %{public}s(%d) : %s\n", buf, 0x1Cu);
  }

  while (1)
  {
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
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    memset(buf, 0, sizeof(buf));
    *v9 = 0xE00000001;
    v10 = 1;
    v11 = getpid();
    v8 = 648;
    if (sysctl(v9, 4u, buf, &v8, 0, 0) != -1 && (v13 & 0x800) != 0)
    {
      break;
    }

    sleep(1u);
  }

  __break(0);
  JUMPOUT(0x1B8484730);
}

void WBSLogWithDifferentialPrivacy(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v4 length])
  {
    v5 = [@"com.apple.safari." stringByAppendingString:v3];
    v6 = [v4 copy];

    if (loggingQueue(void)::onceToken != -1)
    {
      WBSLogWithDifferentialPrivacy_cold_1();
    }

    v7 = loggingQueue(void)::loggingQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __WBSLogWithDifferentialPrivacy_block_invoke;
    v9[3] = &unk_1E7CF0908;
    v10 = v5;
    v4 = v6;
    v11 = v4;
    v8 = v5;
    dispatch_async(v7, v9);
  }
}

void __WBSLogWithDifferentialPrivacy_block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  {
    v3 = stringRecorderForKey(NSString *)::recorders;
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stringRecorderForKey(NSString *)::recorders = v3;
  }

  v4 = [v3 objectForKeyedSubscript:v2];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x1E699A0E0]) initWithKey:v2];
    [stringRecorderForKey(NSString *)::recorders setObject:v4 forKeyedSubscript:v2];
  }

  v7[0] = *(a1 + 40);
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v4 record:v5];

  v6 = *MEMORY[0x1E69E9840];
}

void ___ZL12loggingQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("com.apple.Safari.WBSDifferentialPrivacyLogger", v2);
  v1 = loggingQueue(void)::loggingQueue;
  loggingQueue(void)::loggingQueue = v0;
}

void WBSDispatchGroupNotifyWithTimeout(void *a1, void *a2, void *a3, double a4)
{
  v7 = a3;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__4;
  v22[4] = __Block_byref_object_dispose__4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __WBSDispatchGroupNotifyWithTimeout_block_invoke;
  aBlock[3] = &unk_1E7CF1E68;
  v20 = v7;
  v21 = v24;
  v8 = v7;
  v9 = a2;
  v10 = a1;
  v23 = _Block_copy(aBlock);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __WBSDispatchGroupNotifyWithTimeout_block_invoke_2;
  block[3] = &unk_1E7CF0630;
  block[4] = v22;
  v11 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  dispatch_group_notify(v10, v9, v11);

  v12 = dispatch_time(0, (a4 * 1000000000.0));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __WBSDispatchGroupNotifyWithTimeout_block_invoke_3;
  v14[3] = &unk_1E7CF1E90;
  v16 = v24;
  v17 = v22;
  v15 = v11;
  v13 = v11;
  dispatch_after(v12, v9, v14);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

void *__Block_byref_object_copy__4(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __WBSDispatchGroupNotifyWithTimeout_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __WBSDispatchGroupNotifyWithTimeout_block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 40);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void __WBSDispatchGroupNotifyWithTimeout_block_invoke_3(void *a1)
{
  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    v2 = *(*(a1[6] + 8) + 40);
    (*(*(*(a1[6] + 8) + 40) + 16))();
  }

  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = a1[4];

  dispatch_block_cancel(v5);
}

size_t WBSReadExactAmountOfBytesFromFileDescriptor(int a1, char *a2, size_t a3)
{
  v3 = a3;
  while (v3)
  {
    v6 = read(a1, a2, v3);
    if (v3 == v6)
    {
      break;
    }

    if (!v6)
    {
      return 0;
    }

    if (v6 < 0)
    {
      if (*__error() != 4)
      {
        return -1;
      }
    }

    else
    {
      a2 += v6;
      v3 -= v6;
    }
  }

  return v3;
}

id WBSReadExactAmountOfBytesFromFileDescriptorAsNSData(int a1, size_t a2, void *a3)
{
  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:a2];
  v7 = WBSReadExactAmountOfBytesFromFileDescriptor(a1, [v6 mutableBytes], a2);
  if ((v7 & 0x8000000000000000) != 0)
  {
    if (a3)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      *a3 = v8 = 0;
      goto LABEL_7;
    }
  }

  else if (v7)
  {
    v8 = v6;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

ssize_t WBSWriteExactAmountOfBytesToFileDescriptor(int __fd, char *__buf, size_t __nbyte)
{
  result = 0;
  v13 = *MEMORY[0x1E69E9840];
  if (!__buf)
  {
    goto LABEL_17;
  }

  v5 = __nbyte;
  if (!__nbyte)
  {
    goto LABEL_17;
  }

  v6 = __buf;
  while (1)
  {
    result = write(__fd, v6, v5);
    if (v5 == result)
    {
      result = v5;
      goto LABEL_17;
    }

    if (!result)
    {
      goto LABEL_17;
    }

    if (result < 0)
    {
      break;
    }

    v6 += result;
    v5 -= result;
LABEL_11:
    if (!v5)
    {
      result = 0;
      goto LABEL_17;
    }
  }

  v7 = *__error();
  v8 = WBS_LOG_CHANNEL_PREFIXOther();
  v9 = v8;
  if (v7 == 4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v12 = __fd;
      _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Interrupted while writing to file descriptor %d; trying again", buf, 8u);
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    WBSWriteExactAmountOfBytesToFileDescriptor_cold_1(v9, __fd);
  }

  result = -1;
LABEL_17:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B848874C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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

uint64_t ___ZL23MobileKeyBagLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileKeyBagLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B848B6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  v24 = v21;

  objc_destroyWeak((v23 + 32));
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B848B8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = WBSKeychainCredentialNotificationMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1B848DC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __CFString *a11)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    if (v11)
    {
      v12 = MEMORY[0x1E696ABC0];
      a10 = *MEMORY[0x1E696A578];
      a11 = @"Invalid JSON object";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a10 count:1];
      *v11 = [v12 errorWithDomain:@"com.apple.Safari.Core.WBSJSONWriterErrorDomain" code:7 userInfo:v13];
    }

    objc_end_catch();
    JUMPOUT(0x1B848DC1CLL);
  }

  _Unwind_Resume(exception_object);
}

BOOL WBSKeychainItemExists(void *a1, void *a2, void *a3, _DWORD *a4)
{
  PasswordAndItem = getPasswordAndItem(a1, a2, a3, 0, 1, 0);
  if (a4)
  {
    *a4 = PasswordAndItem;
  }

  return PasswordAndItem == 0;
}

uint64_t getPasswordAndItem(void *a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v36[5] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = *MEMORY[0x1E697B008];
  v15 = *MEMORY[0x1E697AE88];
  v35[0] = *MEMORY[0x1E697AFF8];
  v35[1] = v15;
  v36[0] = v14;
  v36[1] = v12;
  v16 = *MEMORY[0x1E697AC30];
  v17 = *MEMORY[0x1E697B318];
  v35[2] = *MEMORY[0x1E697AC30];
  v35[3] = v17;
  v18 = *MEMORY[0x1E695E4D0];
  v36[2] = v13;
  v36[3] = v18;
  v35[4] = *MEMORY[0x1E697B320];
  v36[4] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];
  v20 = [v19 mutableCopy];

  if (v11)
  {
    [v20 setObject:v11 forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  }

  v21 = [MEMORY[0x1E696AD98] numberWithInt:v11 != 0];
  [v20 setObject:v21 forKeyedSubscript:*MEMORY[0x1E697AEB0]];

  if ((a5 & 2) != 0)
  {
    [v20 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  }

  result = 0;
  v22 = SecItemCopyMatching(v20, &result);
  if (v22 == -34018)
  {
    if ((a5 & 1) == 0)
    {
      v22 = 4294933278;
LABEL_12:
      if (a4)
      {
        *a4 = 0;
      }

      v25 = WBS_LOG_CHANNEL_PREFIXKeychain();
      v26 = v25;
      if (v22 == -25300)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138543875;
          *v34 = v11;
          *&v34[8] = 2114;
          *&v34[10] = v12;
          *&v34[18] = 2113;
          *&v34[20] = v13;
          _os_log_impl(&dword_1B8447000, v26, OS_LOG_TYPE_INFO, "SecItemCopyMatching failed: Item not found; accessGroup: %{public}@, service: %{public}@, account: %{private}@", buf, 0x20u);
        }

        v22 = 4294941996;
      }

      else if (v22 == -128)
      {
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138543875;
          *v34 = v11;
          *&v34[8] = 2114;
          *&v34[10] = v12;
          *&v34[18] = 2113;
          *&v34[20] = v13;
          _os_log_impl(&dword_1B8447000, v26, OS_LOG_TYPE_INFO, "SecItemCopyMatching failed: User canceled; accessGroup: %{public}@, service: %{public}@, account: %{private}@", buf, 0x20u);
        }

        v22 = 4294967168;
      }

      else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109891;
        *v34 = v22;
        *&v34[4] = 2114;
        *&v34[6] = v11;
        *&v34[14] = 2114;
        *&v34[16] = v12;
        *&v34[24] = 2113;
        *&v34[26] = v13;
        _os_log_error_impl(&dword_1B8447000, v26, OS_LOG_TYPE_ERROR, "SecItemCopyMatching failed with error %d; accessGroup: %{public}@, service: %{public}@, account: %{private}@", buf, 0x26u);
      }

      goto LABEL_31;
    }

    v23 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543875;
      *v34 = v11;
      *&v34[8] = 2114;
      *&v34[10] = v12;
      *&v34[18] = 2113;
      *&v34[20] = v13;
      _os_log_error_impl(&dword_1B8447000, v23, OS_LOG_TYPE_ERROR, "SecItemCopyMatching failed: Missing entitlement. Falling back to legacy keychain; accessGroup: %{public}@, service: %{public}@, account: %{private}@", buf, 0x20u);
    }

    [v20 removeObjectForKey:*MEMORY[0x1E697B390]];
    v24 = [v13 stringByAppendingString:@"ForWebKitDevelopment"];
    [v20 setObject:v24 forKeyedSubscript:v16];

    v22 = SecItemCopyMatching(v20, &result);
  }

  if (v22)
  {
    goto LABEL_12;
  }

  v27 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543875;
    *v34 = v11;
    *&v34[8] = 2114;
    *&v34[10] = v12;
    *&v34[18] = 2113;
    *&v34[20] = v13;
    _os_log_debug_impl(&dword_1B8447000, v27, OS_LOG_TYPE_DEBUG, "SecItemCopyMatching succeeded; accessGroup: %{public}@, service: %{public}@, account: %{private}@", buf, 0x20u);
  }

  v28 = result;
  if (a4)
  {
    *a4 = [result objectForKey:*MEMORY[0x1E697B3C0]];
  }

  if (a6)
  {
    v29 = [v28 objectForKey:*MEMORY[0x1E697B3C8]];
    *a6 = [v29 copy];
  }

  v22 = 0;
LABEL_31:

  v30 = *MEMORY[0x1E69E9840];
  return v22;
}

BOOL WBSSetKeychainData(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7, const __CFDictionary **a8)
{
  v81 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v69 = 0;
  PasswordAndItem = getPasswordAndItem(v15, v16, v17, 0, a7, &v69);
  v22 = v69;
  v23 = v22;
  if (!PasswordAndItem)
  {
    v68 = a8;
    v40 = *MEMORY[0x1E697AFF8];
    v73[0] = *MEMORY[0x1E697B3C8];
    v73[1] = v40;
    v41 = *MEMORY[0x1E697B008];
    v74[0] = v22;
    v74[1] = v41;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
    v43 = *MEMORY[0x1E697ADC8];
    v71[0] = *MEMORY[0x1E697B3C0];
    v71[1] = v43;
    v67 = v18;
    v72[0] = v18;
    v72[1] = v19;
    v71[2] = *MEMORY[0x1E697ACC8];
    v72[2] = v20;
    v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:3];
    PasswordAndItem = SecItemUpdate(v42, v44);
    v45 = WBS_LOG_CHANNEL_PREFIXKeychain();
    v46 = v45;
    if (PasswordAndItem)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109891;
        *&buf[4] = PasswordAndItem;
        *&buf[8] = 2114;
        *&buf[10] = v15;
        *&buf[18] = 2114;
        *&buf[20] = v16;
        *&buf[28] = 2113;
        *&buf[30] = v17;
        _os_log_error_impl(&dword_1B8447000, v46, OS_LOG_TYPE_ERROR, "SecItemUpdate failed with error %d; accessGroup: %{public}@, service: %{public}@, account: %{private}@", buf, 0x26u);
      }
    }

    else if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543875;
      *&buf[4] = v15;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      *&buf[22] = 2113;
      *&buf[24] = v17;
      _os_log_debug_impl(&dword_1B8447000, v46, OS_LOG_TYPE_DEBUG, "SecItemUpdate succeeded; accessGroup: %{public}@, service: %{public}@, account: %{private}@", buf, 0x20u);
    }

    goto LABEL_32;
  }

  if (PasswordAndItem != -25300)
  {
    goto LABEL_33;
  }

  v68 = a8;
  v64 = v15;
  v24 = v15;
  v62 = v16;
  v25 = v16;
  v26 = v19;
  v27 = v17;
  v67 = v18;
  v28 = v18;
  v29 = v20;
  v61 = v26;
  v30 = v26;
  v31 = v29;
  v32 = v29;
  v33 = *MEMORY[0x1E697B008];
  v34 = *MEMORY[0x1E697AE88];
  v77[0] = *MEMORY[0x1E697AFF8];
  v77[1] = v34;
  *buf = v33;
  *&buf[8] = v25;
  v65 = v25;
  v35 = *MEMORY[0x1E697B3C0];
  v58 = *MEMORY[0x1E697AC30];
  v77[2] = *MEMORY[0x1E697AC30];
  v77[3] = v35;
  v66 = v27;
  *&buf[16] = v27;
  *&buf[24] = v28;
  v63 = v28;
  v36 = *MEMORY[0x1E697ACC8];
  v77[4] = *MEMORY[0x1E697ADC8];
  v77[5] = v36;
  v59 = v32;
  v60 = v30;
  *&buf[32] = v30;
  v79 = v32;
  v77[6] = *MEMORY[0x1E697B320];
  v80 = *MEMORY[0x1E695E4D0];
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v77 count:7];
  v38 = [v37 mutableCopy];

  if (v24)
  {
    [v38 setObject:v24 forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  }

  v39 = [MEMORY[0x1E696AD98] numberWithInt:v24 != 0];
  [v38 setObject:v39 forKeyedSubscript:*MEMORY[0x1E697AEB0]];

  if ((a7 & 2) != 0)
  {
    [v38 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
    if (!v24)
    {
      [v38 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697AD00]];
    }
  }

  result = 0;
  PasswordAndItem = SecItemAdd(v38, &result);
  v19 = v61;
  v16 = v62;
  v20 = v31;
  if (PasswordAndItem == -34018)
  {
    if ((a7 & 1) == 0)
    {
      PasswordAndItem = -34018;
      goto LABEL_24;
    }

    v47 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *v75 = 138543875;
      *v76 = v24;
      *&v76[8] = 2114;
      *&v76[10] = v65;
      *&v76[18] = 2113;
      *&v76[20] = v66;
      _os_log_error_impl(&dword_1B8447000, v47, OS_LOG_TYPE_ERROR, "SecItemAdd failed: Missing entitlement. Falling back to legacy keychain. accessGroup: %{public}@, service: %{public}@, account: %{private}@", v75, 0x20u);
    }

    [v38 removeObjectForKey:*MEMORY[0x1E697B390]];
    [v38 removeObjectForKey:*MEMORY[0x1E697AD00]];
    v48 = [v66 stringByAppendingString:@"ForWebKitDevelopment"];
    [v38 setObject:v48 forKeyedSubscript:v58];

    PasswordAndItem = SecItemAdd(v38, &result);
  }

  if (PasswordAndItem == -128)
  {
    v52 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      *v75 = 138543875;
      *v76 = v24;
      *&v76[8] = 2114;
      *&v76[10] = v65;
      *&v76[18] = 2113;
      *&v76[20] = v66;
      _os_log_impl(&dword_1B8447000, v52, OS_LOG_TYPE_INFO, "SecItemAdd failed: User canceled; accessGroup: %{public}@, service: %{public}@, account: %{private}@", v75, 0x20u);
    }

    v51 = 0;
    PasswordAndItem = -128;
    goto LABEL_31;
  }

  if (!PasswordAndItem)
  {
    v49 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      *v75 = 138543875;
      *v76 = v24;
      *&v76[8] = 2114;
      *&v76[10] = v65;
      *&v76[18] = 2113;
      *&v76[20] = v66;
      _os_log_debug_impl(&dword_1B8447000, v49, OS_LOG_TYPE_DEBUG, "SecItemAdd succeeded; accessGroup: %{public}@, service: %{public}@, account: %{private}@", v75, 0x20u);
    }

    v51 = result;
    v53 = result;

    PasswordAndItem = 0;
    goto LABEL_31;
  }

LABEL_24:
  v50 = WBS_LOG_CHANNEL_PREFIXKeychain();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    *v75 = 67109891;
    *v76 = PasswordAndItem;
    *&v76[4] = 2114;
    *&v76[6] = v24;
    *&v76[14] = 2114;
    *&v76[16] = v65;
    *&v76[24] = 2113;
    *&v76[26] = v66;
    _os_log_error_impl(&dword_1B8447000, v50, OS_LOG_TYPE_ERROR, "SecItemAdd failed with error %d; accessGroup: %{public}@, service: %{public}@, account: %{private}@", v75, 0x26u);
  }

  v51 = 0;
LABEL_31:

  v54 = v51;
  v42 = v23;
  v23 = v54;
  v15 = v64;
LABEL_32:

  v18 = v67;
  a8 = v68;
LABEL_33:
  if (a8)
  {
    v55 = v23;
    *a8 = v23;
  }

  v56 = *MEMORY[0x1E69E9840];
  return PasswordAndItem == 0;
}

BOOL WBSRemoveKeychainData(void *a1, void *a2, void *a3, char a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = removeKeychainData(v7, v8, v9, a4);
  v11 = WBS_LOG_CHANNEL_PREFIXKeychain();
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v15 = 67109891;
      *v16 = v10;
      *&v16[4] = 2114;
      *&v16[6] = v7;
      *&v16[14] = 2114;
      *&v16[16] = v8;
      *&v16[24] = 2113;
      *&v16[26] = v9;
      _os_log_error_impl(&dword_1B8447000, v12, OS_LOG_TYPE_ERROR, "SecItemDelete failed with error %d; accessGroup: %{public}@, service: %{public}@, account: %{private}@", &v15, 0x26u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138543875;
    *v16 = v7;
    *&v16[8] = 2114;
    *&v16[10] = v8;
    *&v16[18] = 2113;
    *&v16[20] = v9;
    _os_log_debug_impl(&dword_1B8447000, v12, OS_LOG_TYPE_DEBUG, "SecItemDelete succeeded; accessGroup: %{public}@, service: %{public}@, account: %{private}@", &v15, 0x20u);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10 == 0;
}

uint64_t removeKeychainData(void *a1, void *a2, void *a3, char a4)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = *MEMORY[0x1E697B008];
  v11 = *MEMORY[0x1E697AE88];
  v20[0] = *MEMORY[0x1E697AFF8];
  v20[1] = v11;
  v21[0] = v10;
  v21[1] = v8;
  v20[2] = *MEMORY[0x1E697AC30];
  v21[2] = v9;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v13 = [v12 mutableCopy];

  if (v7)
  {
    [v13 setObject:v7 forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInt:v7 != 0];
  [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x1E697AEB0]];

  if (a4)
  {
    v15 = SecItemDelete(v13);
    if ((a4 & 2) != 0)
    {
LABEL_5:
      [v13 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
      v16 = SecItemDelete(v13);
      if (!v15)
      {
        goto LABEL_10;
      }

LABEL_9:
      if (v15 != -25300)
      {
        goto LABEL_19;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v15 = 4294941996;
    if ((a4 & 2) != 0)
    {
      goto LABEL_5;
    }
  }

  v16 = 4294941996;
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v16 && v16 != -25300)
  {
    v15 = v16;
  }

  else
  {
    if (v16)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      v15 = 0;
    }

    else
    {
      v15 = 4294941996;
    }
  }

LABEL_19:

  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t WBSRemoveKeychainDataIfExists(void *a1, void *a2, void *a3, char a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = removeKeychainData(v7, v8, v9, a4);
  v11 = v10;
  if (v10 != -25300 && v10)
  {
    v13 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 67109891;
      *v19 = v11;
      *&v19[4] = 2114;
      *&v19[6] = v7;
      *&v19[14] = 2114;
      *&v19[16] = v8;
      *&v19[24] = 2113;
      *&v19[26] = v9;
      _os_log_error_impl(&dword_1B8447000, v13, OS_LOG_TYPE_ERROR, "SecItemDelete failed with error %d; accessGroup: %{public}@, service: %{public}@, account: %{private}@", &v18, 0x26u);
    }
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138543875;
      *v19 = v7;
      *&v19[8] = 2114;
      *&v19[10] = v8;
      *&v19[18] = 2113;
      *&v19[20] = v9;
      _os_log_debug_impl(&dword_1B8447000, v12, OS_LOG_TYPE_DEBUG, "SecItemDelete succeeded; accessGroup: %{public}@, service: %{public}@, account: %{private}@", &v18, 0x20u);
    }
  }

  if (v11)
  {
    v14 = v11 == -25300;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

id _WBSLocalizedStringWithCurrentUserLocale(void *a1, dispatch_once_t *a2, id *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  determineBundle(a2, a3);
  v6 = [*a3 _cfBundle];
  v7 = v5;
  if (v7)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    _WBSLocalizedStringWithCurrentUserLocale_cold_1();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  _WBSLocalizedStringWithCurrentUserLocale_cold_2();
LABEL_3:
  v8 = [MEMORY[0x1E695DF58] preferredLanguages];
  v9 = [v8 mutableCopy];

  v10 = CFBundleCopyBundleLocalizations(v6);
  v11 = CFBundleCopyLocalizationsForPreferences(v10, v9);
  CFRelease(v10);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v11;
  v13 = [(__CFArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * i);
        v18 = CFBundleCopyLocalizedStringForLocalization();
        if (v18)
        {
          v19 = v18;
          goto LABEL_13;
        }
      }

      v14 = [(__CFArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_13:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

void sub_1B84908B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t managedExtensionStateFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"AlwaysOn"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"AlwaysOff"])
  {
    v2 = 2;
  }

  else
  {
    [v1 isEqualToString:@"Allowed"];
    v2 = 0;
  }

  return v2;
}

void enumerateAsynchronously(void *a1, void *a2, unint64_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  if ([v10 count] <= a3)
  {
    dispatch_async(v9, v12);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __enumerateAsynchronously_block_invoke;
    block[3] = &unk_1E7CF2608;
    v16 = v11;
    v14 = v10;
    v18 = a3;
    v15 = v9;
    v17 = v12;
    dispatch_async(v15, block);
  }
}

void sub_1B8495CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __enumerateAsynchronously_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) objectAtIndexedSubscript:*(a1 + 64)];
  v4 = *(a1 + 64);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __enumerateAsynchronously_block_invoke_2;
  v11[3] = &unk_1E7CF25E0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v14 = *(a1 + 64);
  v8 = *(a1 + 48);
  *&v9 = v6;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v7;
  v12 = v10;
  v13 = v9;
  (*(v2 + 16))(v2, v3, v4, v11);
}

void __enumerateAsynchronously_block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    dispatch_async(v3, *(a1 + 48));
  }

  else
  {
    enumerateAsynchronously(v3, *(a1 + 40), *(a1 + 64) + 1, *(a1 + 56), *(a1 + 48));
  }
}

uint64_t ___dateFormatTemplatesWithLongMonth_block_invoke()
{
  v35 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = _dateFormatTemplatesWithLongMonth_dateFormats;
  _dateFormatTemplatesWithLongMonth_dateFormats = v0;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  result = [&unk_1F308E6D0 countByEnumeratingWithState:&v28 objects:v34 count:16];
  v15 = result;
  if (result)
  {
    v14 = *v29;
    do
    {
      v3 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(&unk_1F308E6D0);
        }

        v16 = v3;
        v4 = *(*(&v28 + 1) + 8 * v3);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v18 = [&unk_1F308E6E8 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v18)
        {
          v17 = *v25;
          do
          {
            v5 = 0;
            do
            {
              if (*v25 != v17)
              {
                objc_enumerationMutation(&unk_1F308E6E8);
              }

              v19 = v5;
              v6 = *(*(&v24 + 1) + 8 * v5);
              v20 = 0u;
              v21 = 0u;
              v22 = 0u;
              v23 = 0u;
              v7 = [&unk_1F308E700 countByEnumeratingWithState:&v20 objects:v32 count:16];
              if (v7)
              {
                v8 = v7;
                v9 = *v21;
                do
                {
                  v10 = 0;
                  do
                  {
                    if (*v21 != v9)
                    {
                      objc_enumerationMutation(&unk_1F308E700);
                    }

                    v11 = _dateFormatTemplatesWithLongMonth_dateFormats;
                    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v4, v6, *(*(&v20 + 1) + 8 * v10)];
                    [v11 addObject:v12];

                    ++v10;
                  }

                  while (v8 != v10);
                  v8 = [&unk_1F308E700 countByEnumeratingWithState:&v20 objects:v32 count:16];
                }

                while (v8);
              }

              v5 = v19 + 1;
            }

            while (v19 + 1 != v18);
            v18 = [&unk_1F308E6E8 countByEnumeratingWithState:&v24 objects:v33 count:16];
          }

          while (v18);
        }

        v3 = v16 + 1;
      }

      while (v16 + 1 != v15);
      result = [&unk_1F308E6D0 countByEnumeratingWithState:&v28 objects:v34 count:16];
      v15 = result;
    }

    while (result);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B8499EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B849AE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B849AF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B849B26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B849B4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B849BE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__9(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1B849C9A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B849D0C4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B849E3D0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1B849EA7C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void _SL_BOMCopierNew(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getBOMCopierNewSymbolLoc(void)::ptr;
  v7 = getBOMCopierNewSymbolLoc(void)::ptr;
  if (!getBOMCopierNewSymbolLoc(void)::ptr)
  {
    v1 = BomLibrary();
    v5[3] = dlsym(v1, "BOMCopierNew");
    getBOMCopierNewSymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (v0)
  {
    v0();
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOMCopier _SL_BOMCopierNew()"];
    [v2 handleFailureInFunction:v3 file:@"WBSNSFileManagerExtras.mm" lineNumber:51 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B849F620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _SL_BOMCopierCopyWithOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getBOMCopierCopyWithOptionsSymbolLoc(void)::ptr;
  v15 = getBOMCopierCopyWithOptionsSymbolLoc(void)::ptr;
  if (!getBOMCopierCopyWithOptionsSymbolLoc(void)::ptr)
  {
    v9 = BomLibrary();
    v13[3] = dlsym(v9, "BOMCopierCopyWithOptions");
    getBOMCopierCopyWithOptionsSymbolLoc(void)::ptr = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v8)
  {
    v8(a1, a2, a3, a4);
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int _SL_BOMCopierCopyWithOptions(BOMCopier, const char *, const char *, CFDictionaryRef)"}];
    [v10 handleFailureInFunction:v11 file:@"WBSNSFileManagerExtras.mm" lineNumber:53 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B849F7BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _SL_BOMCopierFree(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getBOMCopierFreeSymbolLoc(void)::ptr;
  v9 = getBOMCopierFreeSymbolLoc(void)::ptr;
  if (!getBOMCopierFreeSymbolLoc(void)::ptr)
  {
    v3 = BomLibrary();
    v7[3] = dlsym(v3, "BOMCopierFree");
    getBOMCopierFreeSymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _SL_BOMCopierFree(BOMCopier)"];
    [v4 handleFailureInFunction:v5 file:@"WBSNSFileManagerExtras.mm" lineNumber:52 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1B849F938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL24getBOMCopierNewSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = BomLibrary();
  result = dlsym(v2, "BOMCopierNew");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBOMCopierNewSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *BomLibrary(void)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!BomLibraryCore(char **)::frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = ___ZL14BomLibraryCorePPc_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E7CF2968;
    v7 = 0;
    BomLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = BomLibraryCore(char **)::frameworkLibrary;
  if (!BomLibraryCore(char **)::frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *BomLibrary()"];
    [v0 handleFailureInFunction:v4 file:@"WBSNSFileManagerExtras.mm" lineNumber:50 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t ___ZL14BomLibraryCorePPc_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  BomLibraryCore(char **)::frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *___ZL36getBOMCopierCopyWithOptionsSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = BomLibrary();
  result = dlsym(v2, "BOMCopierCopyWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBOMCopierCopyWithOptionsSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL25getBOMCopierFreeSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = BomLibrary();
  result = dlsym(v2, "BOMCopierFree");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBOMCopierFreeSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

WBSSavedAccountUnknownHistoryItem *WBSSavedAccountSidecarHistoryItemFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"t"];
  if ([v2 isEqual:@"pwch"])
  {
    goto LABEL_4;
  }

  v3 = [v1 objectForKeyedSubscript:@"t"];
  if ([v3 isEqual:@"pwcr"])
  {

LABEL_4:
LABEL_5:
    v4 = [[WBSSavedAccountPasswordHistoryItem alloc] initWithDictionaryRepresentation:v1];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [[WBSSavedAccountUnknownHistoryItem alloc] initWithDictionaryRepresentation:v1];
    }

    v7 = v6;

    goto LABEL_9;
  }

  v9 = [v1 objectForKeyedSubscript:@"t"];
  v10 = [v9 isEqual:@"pw"];

  if (v10)
  {
    goto LABEL_5;
  }

  v7 = [[WBSSavedAccountUnknownHistoryItem alloc] initWithDictionaryRepresentation:v1];
LABEL_9:

  return v7;
}

__CFString *recentlyDeletedPasskeyCredentialAccessGroup()
{
  os_unfair_recursive_lock_lock_with_options();
  v0 = shouldUseTestingAccessGroups;
  os_unfair_recursive_lock_unlock();
  if (v0)
  {
    v1 = @"com.apple.webkit.webauthn-recently-deleted.testing";
  }

  else
  {
    v1 = @"com.apple.webkit.webauthn-recently-deleted";
  }

  return v1;
}

__CFString *recentlyDeletedPersonalSidecarAccessGroup()
{
  os_unfair_recursive_lock_lock_with_options();
  v0 = shouldUseTestingAccessGroups;
  os_unfair_recursive_lock_unlock();
  if (v0)
  {
    v1 = @"com.apple.password-manager.personal-recently-deleted.testing";
  }

  else
  {
    v1 = @"com.apple.password-manager.personal-recently-deleted";
  }

  return v1;
}

__CFString *passkeyCredentialAccessGroup()
{
  os_unfair_recursive_lock_lock_with_options();
  v0 = shouldUseTestingAccessGroups;
  os_unfair_recursive_lock_unlock();
  if (v0)
  {
    v1 = @"com.apple.webkit.webauthn.testing";
  }

  else
  {
    v1 = @"com.apple.webkit.webauthn";
  }

  return v1;
}

__CFString *personalSidecarAccessGroup()
{
  os_unfair_recursive_lock_lock_with_options();
  v0 = shouldUseTestingAccessGroups;
  os_unfair_recursive_lock_unlock();
  if (v0)
  {
    v1 = @"com.apple.password-manager.personal.testing";
  }

  else
  {
    v1 = @"com.apple.password-manager.personal";
  }

  return v1;
}

id queryForUserInProtectionSpace(void *a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v28[2] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = partialKeychainDictionaryForUserInProtectionSpace(a1, a2);
  v11 = *MEMORY[0x1E697B390];
  v12 = MEMORY[0x1E695E118];
  v28[0] = MEMORY[0x1E695E118];
  v13 = *MEMORY[0x1E697ABD0];
  v27[0] = v11;
  v27[1] = v13;
  if (a5)
  {
    recentlyDeletedPasswordCredentialAccessGroup();
  }

  else
  {
    passwordCredentialAccessGroup();
  }
  v14 = ;
  v28[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v10 addEntriesFromDictionary:v15];

  if (a3 == 1)
  {
    v16 = *MEMORY[0x1E697B318];
    v25[0] = *MEMORY[0x1E697B310];
    v25[1] = v16;
    v26[0] = v12;
    v26[1] = v12;
    v17 = *MEMORY[0x1E697B320];
    v25[2] = *MEMORY[0x1E697B260];
    v25[3] = v17;
    v26[2] = *MEMORY[0x1E697B270];
    v26[3] = v12;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
    [v10 addEntriesFromDictionary:v18];
  }

  v19 = [v9 length];
  v20 = *MEMORY[0x1E697AEB0];
  if (v19)
  {
    [v10 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v20];
    v20 = *MEMORY[0x1E697AE90];
    v21 = v10;
    v22 = v9;
  }

  else
  {
    v22 = MEMORY[0x1E695E118];
    v21 = v10;
  }

  [v21 setObject:v22 forKeyedSubscript:v20];

  v23 = *MEMORY[0x1E69E9840];

  return v10;
}

id queryForPasskeyFromSavedAccount(void *a1)
{
  v23[3] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[WBSFeatureAvailability isCredentialExchangeEnabled];
  v3 = *MEMORY[0x1E697AFF8];
  v23[0] = *MEMORY[0x1E697B020];
  v4 = *MEMORY[0x1E697ABD0];
  v22[0] = v3;
  v22[1] = v4;
  if ([v1 isRecentlyDeleted])
  {
    recentlyDeletedPasskeyCredentialAccessGroup();
  }

  else
  {
    passkeyCredentialAccessGroup();
  }
  v5 = ;
  v22[2] = *MEMORY[0x1E697B390];
  v6 = MEMORY[0x1E695E118];
  v23[1] = v5;
  v23[2] = MEMORY[0x1E695E118];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v8 = [v7 mutableCopy];

  v9 = credentialIDData(v1);
  v10 = MEMORY[0x1E697AC38];
  if (!v2)
  {
    v10 = MEMORY[0x1E697AC40];
  }

  [v8 setObject:v9 forKeyedSubscript:*v10];

  v11 = *MEMORY[0x1E697B318];
  v20[0] = *MEMORY[0x1E697B310];
  v20[1] = v11;
  v21[0] = v6;
  v21[1] = v6;
  v12 = *MEMORY[0x1E697B260];
  v20[2] = *MEMORY[0x1E697B320];
  v20[3] = v12;
  v13 = *MEMORY[0x1E697B270];
  v21[2] = v6;
  v21[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:4];
  [v8 addEntriesFromDictionary:v14];

  v15 = [v1 isSavedInPersonalKeychain];
  v16 = *MEMORY[0x1E697AEB0];
  if (v15)
  {
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v16];
  }

  else
  {
    [v8 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v16];
    v17 = [v1 sharedGroupID];
    [v8 setObject:v17 forKeyedSubscript:*MEMORY[0x1E697AE90]];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v8;
}

id credentialIDData(void *a1)
{
  v1 = MEMORY[0x1E695DEF0];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = [v2 passkeyCredentialID];

  v5 = [v3 initWithBase64EncodedString:v4 options:0];

  return v5;
}

void addPasswordsKeychainViewHintIfNeeded(void *a1)
{
  v2 = a1;
  os_unfair_recursive_lock_lock_with_options();
  v1 = shouldUseTestingAccessGroups;
  os_unfair_recursive_lock_unlock();
  if (v1 == 1)
  {
    [v2 setObject:@"Passwords" forKey:*MEMORY[0x1E697AEA8]];
  }
}

void sub_1B84A6860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id queryForSidecarOfTypeWithUserAndProtectionSpaceInGroupWithID(uint64_t a1, void *a2, void *a3, void *a4, int a5, uint64_t a6)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = partialKeychainDictionaryForUserInProtectionSpace(a2, a3);
  v13 = MEMORY[0x1E695E118];
  [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697B390]];
  if (a6 == 1)
  {
    v14 = *MEMORY[0x1E697B310];
    v33[0] = *MEMORY[0x1E697B318];
    v33[1] = v14;
    v15 = *MEMORY[0x1E697B260];
    v33[2] = *MEMORY[0x1E697B320];
    v33[3] = v15;
    v34[0] = v13;
    v34[1] = v13;
    v16 = *MEMORY[0x1E697B270];
    v34[2] = v13;
    v34[3] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:4];
    [v12 addEntriesFromDictionary:v17];
  }

  if ([v11 length])
  {
    if (a1 == 1936220530)
    {
      v20 = *MEMORY[0x1E697AE90];
      v29[0] = *MEMORY[0x1E697AEB0];
      v29[1] = v20;
      v30[0] = MEMORY[0x1E695E110];
      v30[1] = v11;
      v29[2] = *MEMORY[0x1E697ABD0];
      if (a5)
      {
        recentlyDeletedSidecarAccessGroup();
      }

      else
      {
        sidecarAccessGroup();
      }
      v22 = ;
      v30[2] = v22;
      v23 = MEMORY[0x1E695DF20];
      v24 = v30;
      v25 = v29;
    }

    else
    {
      if (a1 != 1835626085)
      {
        goto LABEL_20;
      }

      v18 = *MEMORY[0x1E697AEB0];
      v32[0] = v13;
      v19 = *MEMORY[0x1E697ABD0];
      v31[0] = v18;
      v31[1] = v19;
      if (a5)
      {
        recentlyDeletedPersonalSidecarAccessGroup();
      }

      else
      {
        personalSidecarAccessGroup();
      }
      v22 = ;
      v31[2] = *MEMORY[0x1E697ADF0];
      v32[1] = v22;
      v32[2] = v11;
      v23 = MEMORY[0x1E695DF20];
      v24 = v32;
      v25 = v31;
    }

    v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:3];
    [v12 addEntriesFromDictionary:v26];

    v21 = v22;
  }

  else
  {
    [v12 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E697AEB0]];
    if (a5)
    {
      recentlyDeletedSidecarAccessGroup();
    }

    else
    {
      sidecarAccessGroup();
    }
    v21 = ;
    [v12 setObject:v21 forKeyedSubscript:*MEMORY[0x1E697ABD0]];
  }

LABEL_20:
  v27 = *MEMORY[0x1E69E9840];

  return v12;
}

void sub_1B84AA430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id queryForPasswordFromSavedAccountAndProtectionSpace(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [v6 user];
  v8 = [v6 sharedGroupID];
  v9 = [v6 isRecentlyDeleted];

  v10 = queryForUserInProtectionSpace(v7, v5, a3, v8, v9);

  return v10;
}

void sub_1B84AA860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B84AAC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B84AAFBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id partialKeychainDictionaryForUserInProtectionSpace(void *a1, void *a2)
{
  v17[5] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = *MEMORY[0x1E697B018];
  v5 = *MEMORY[0x1E697AC50];
  v16[0] = *MEMORY[0x1E697AFF8];
  v16[1] = v5;
  v6 = *MEMORY[0x1E697AC60];
  v17[0] = v4;
  v17[1] = v6;
  v16[2] = *MEMORY[0x1E697AE00];
  v7 = a2;
  v17[2] = [v7 safari_protocolAsSecAttrProtocolValue];
  v16[3] = *MEMORY[0x1E697AE80];
  v8 = [v7 host];
  v17[3] = v8;
  v16[4] = *MEMORY[0x1E697ADF8];
  v9 = MEMORY[0x1E696AD98];
  v10 = [v7 port];

  v11 = [v9 numberWithInteger:v10];
  v17[4] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:5];
  v13 = [v12 mutableCopy];

  if (v3)
  {
    [v13 setObject:v3 forKeyedSubscript:*MEMORY[0x1E697AC30]];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

void OUTLINED_FUNCTION_19(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_20(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id OUTLINED_FUNCTION_21(uint64_t *a1, void *a2)
{
  v3 = *a1;

  return a2;
}

void sub_1B84AFB90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WBSAllowedCreditCardNumberSeparatorCharacters()
{
  if (_MergedGlobals_0 == 1)
  {
    v2 = qword_1ED985AE0;
  }

  else
  {
    v4[1] = v0;
    v5 = v1;
    WBSAllowedCreditCardNumberSeparatorCharacters_cold_1(v4);
    v2 = v4[0];
  }

  return v2;
}

id WBSNormalizedCreditCardNumber(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = WBSAllowedCreditCardNumberSeparatorCharacters();
    v3 = [v1 componentsSeparatedByCharactersInSet:v2];
    v4 = [v3 componentsJoinedByString:&stru_1F3064D08];

    v5 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];
    v7 = [v6 length];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v4;
    }

    if (v7)
    {
      v1 = v4;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t WBSCreditCardTypeFromNumberAllowingPartialMatch(void *a1, int a2)
{
  v3 = a1;
  v4 = WBSNormalizedCreditCardNumber(v3);

  if (!v4)
  {
    goto LABEL_6;
  }

  if (!a2 || (v5 = WBSCreditCardTypeFromNumberAllowingPartialMatch(v4, 0)) == 0)
  {
    v6 = [v4 length];
    v7 = v6;
    if ((a2 & 1) == 0 && v6 <= 3)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }

    v9 = [v4 stringByPaddingToLength:4 withString:@"0" startingAtIndex:0];
    v10 = [v9 integerValue];

    if (a2)
    {
      if (v7 >= 0x11)
      {
        v11 = 0;
        v12 = 0;
        v13 = 0;
        goto LABEL_28;
      }
    }

    else if (v7 != 16 && v7 != 13)
    {
      v12 = 0;
      v11 = v7 < 0x11;
      goto LABEL_25;
    }

    if ((v10 - 4000) < 0x3E8)
    {
      v5 = 1;
      goto LABEL_7;
    }

    v12 = v7 == 16;
    if (v7 == 16)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2;
    }

    if (v14 == 1 && (v10 - 5100) < 0x1F4)
    {
      v5 = 2;
      goto LABEL_7;
    }

    v11 = 1;
    if (a2)
    {
      v13 = 1;
      if (v7 >= 0x10)
      {
        goto LABEL_28;
      }

LABEL_26:
      v5 = 3;
      if ((v10 - 3400) < 0x64 || (v10 - 3700) < 0x64)
      {
        goto LABEL_7;
      }

LABEL_28:
      if ((v10 - 3800) >= 0xC8 && (v10 - 3000) >= 0x3C && (v10 - 3600) > 0x63)
      {
        if (a2)
        {
          if (!v11)
          {
            goto LABEL_43;
          }

LABEL_38:
          v5 = 4;
          if (v10 == 6011 || (v10 - 6440) < 0xA0)
          {
            goto LABEL_7;
          }

          goto LABEL_43;
        }

        if (v12)
        {
          goto LABEL_38;
        }

LABEL_43:
        v15 = v7 < 0x14;
        if (!a2)
        {
          v15 = (v7 & 0xFFFFFFFFFFFFFFFCLL) == 16;
        }

        if (v15 && (v10 - 6200) < 0x33)
        {
          v5 = 5;
        }

        else if (isMaestroCard(v7, v10, a2))
        {
          v5 = 6;
        }

        else
        {
          if ((v10 - 6370) < 0x1E)
          {
            v16 = v13;
          }

          else
          {
            v16 = 0;
          }

          if (v16)
          {
            v5 = 7;
          }

          else if (isJCBCard(v7, v10, a2))
          {
            v5 = 8;
          }

          else
          {
            v5 = 0;
          }
        }

        goto LABEL_7;
      }

      if (a2)
      {
        if (v7 >= 0xF)
        {
          goto LABEL_43;
        }
      }

      else if (v7 != 14)
      {
        goto LABEL_43;
      }

      v5 = 4;
      goto LABEL_7;
    }

LABEL_25:
    v13 = v12;
    if (v7 != 15)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

LABEL_7:

  return v5;
}

uint64_t isMaestroCard(unint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (a1 >= 0x14)
    {
      return 0;
    }
  }

  else if (a1 - 12 > 7)
  {
    return 0;
  }

  result = 1;
  if (a2 > 5892)
  {
    if (((a2 - 6706) > 0x39 || ((1 << (a2 - 50)) & 0x3A0000000000001) == 0) && a2 != 5893)
    {
      v4 = 6304;
LABEL_14:
      if (a2 == v4)
      {
        return result;
      }

      return 0;
    }
  }

  else if (((a2 - 5018) > 0x14 || ((1 << (a2 + 102)) & 0x100005) == 0) && a2 != 604)
  {
    v4 = 5612;
    goto LABEL_14;
  }

  return result;
}

BOOL isJCBCard(unint64_t a1, uint64_t a2, int a3)
{
  if ((a2 - 3000) > 0x3E7)
  {
    if (a3)
    {
      if (a1 >= 0x10)
      {
        return 0;
      }
    }

    else if (a1 != 15)
    {
      return 0;
    }

    return a2 == 1800 || a2 == 2131;
  }

  if ((a2 - 3400) < 0x64)
  {
    return 0;
  }

  v3 = a1 == 16;
  if (a3)
  {
    v3 = a1 < 0x11;
  }

  v4 = (a2 - 3900) >= 0x64 && v3;
  v5 = (a2 - 3600) >= 0x64 && v4;
  v6 = (a2 - 3000) >= 0x3C && v5;
  if ((a2 - 3800) < 0x64)
  {
    v6 = 0;
  }

  return (a2 - 3700) >= 0x64 && v6;
}

id WBSCreditCardTypeLocalizedName(uint64_t a1)
{
  v3 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v4 = @"InstaPayment";
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_19;
        }

        v4 = @"JCB";
      }
    }

    else if (a1 == 5)
    {
      v4 = @"China UnionPay";
    }

    else
    {
      v4 = @"Maestro";
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      v4 = @"American Express (credit card type for filling)";
    }

    else
    {
      v4 = @"Discover";
    }
  }

  else if (a1 == 1)
  {
    v4 = @"Visa (credit card type for filling)";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_19;
    }

    v4 = @"Mastercard (credit card type for filling)";
  }

  v3 = _WBSLocalizedString(v4, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
LABEL_19:

  return v3;
}

id WBSCreditCardTypeLocalizedNameForGeneratingCardNames(uint64_t a1)
{
  v3 = 0;
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v4 = @"InstaPayment card";
      }

      else
      {
        if (a1 != 8)
        {
          goto LABEL_19;
        }

        v4 = @"JCB card";
      }
    }

    else if (a1 == 5)
    {
      v4 = @"China UnionPay card";
    }

    else
    {
      v4 = @"Maestro card";
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      v4 = @"American Express";
    }

    else
    {
      v4 = @"Discover card";
    }
  }

  else if (a1 == 1)
  {
    v4 = @"Visa (credit card name)";
  }

  else
  {
    if (a1 != 2)
    {
      goto LABEL_19;
    }

    v4 = @"Mastercard";
  }

  v3 = _WBSLocalizedString(v4, &_WBSLocalizableStringsBundleOnceToken, &_WBSLocalizableStringsBundle);
LABEL_19:

  return v3;
}

id WBSExpirationDateWithMonthYear(uint64_t a1, unint64_t a2)
{
  if (a2 > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_2;
  }

  v3 = a2;
  v5 = MEMORY[0x1E695D850];
  if (a2 > 0x63)
  {
    goto LABEL_5;
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v6 setDateFormat:@"y"];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02ld", v3];
  v8 = [v6 dateFromString:v7];

  v9 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:*v5];
  v10 = [v9 components:4 fromDate:v8];
  v3 = [v10 year];

  if (v3)
  {
LABEL_5:
    v11 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v11 setDay:15];
    if ((a1 - 13) >= 0xFFFFFFFFFFFFFFF4)
    {
      v12 = a1;
    }

    else
    {
      v12 = 12;
    }

    [v11 setMonth:v12];
    [v11 setYear:v3];
    v13 = [objc_alloc(MEMORY[0x1E695DEE8]) initWithCalendarIdentifier:*v5];
    v2 = [v13 dateFromComponents:v11];
  }

  else
  {
LABEL_2:
    v2 = 0;
  }

  return v2;
}

id WBSLastDigitsOfCreditCardNumber(void *a1)
{
  v1 = WBSNormalizedCreditCardNumber(a1);
  if ([v1 length] < 5)
  {
    v2 = v1;
  }

  else
  {
    v2 = [v1 substringFromIndex:{objc_msgSend(v1, "length") - 4}];
  }

  v3 = v2;

  return v3;
}

__CFString *WBSDisplayTextForCreditCardNumber(void *a1)
{
  v1 = WBSLastDigitsOfCreditCardNumber(a1);
  if (v1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\u202D•••• %@\u202C", v1];
  }

  else
  {
    v2 = &stru_1F3064D08;
  }

  return v2;
}

id WBSLocaleForCreditCardExpirationDate()
{
  if (WBSLocaleForCreditCardExpirationDate::once != -1)
  {
    WBSLocaleForCreditCardExpirationDate_cold_1();
  }

  v1 = WBSLocaleForCreditCardExpirationDate::localeForCreditCardExpirationDate;

  return v1;
}

void __WBSLocaleForCreditCardExpirationDate_block_invoke()
{
  v0 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  v1 = WBSLocaleForCreditCardExpirationDate::localeForCreditCardExpirationDate;
  WBSLocaleForCreditCardExpirationDate::localeForCreditCardExpirationDate = v0;
}

uint64_t WBSStatusCodeGroupFromStatusCode(uint64_t a1)
{
  v1 = 5;
  if ((a1 - 500) >= 0x64)
  {
    v1 = 0;
  }

  if ((a1 - 400) >= 0x64)
  {
    v2 = v1;
  }

  else
  {
    v2 = 4;
  }

  if ((a1 - 300) >= 0x64)
  {
    v3 = v2;
  }

  else
  {
    v3 = 3;
  }

  if ((a1 - 200) >= 0x64)
  {
    v4 = v3;
  }

  else
  {
    v4 = 2;
  }

  if ((a1 - 100) >= 0x64)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

void sub_1B84B2880(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1B84B2A4C(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B84B3A54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void WBSParseOperatingSystemVersion(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v11 = [a1 componentsSeparatedByString:@"."];
  v3 = [v11 count];
  if ((v3 - 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    v5 = [v11 objectAtIndexedSubscript:0];
    v6 = [v5 integerValue];
    v7 = [v11 objectAtIndexedSubscript:1];
    v8 = [v7 integerValue];
    v9 = 0;
    if (v4 == 3)
    {
      v10 = [v11 objectAtIndexedSubscript:2];
      v9 = [v10 integerValue];
    }

    *a2 = v6;
    a2[1] = v8;
    a2[2] = v9;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t WBSMakeOperatingSystemVersion@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

BOOL WBSAppWasLaunchedAfterMajorOSUpgrade(void *a1, void *a2)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v3 = a2;
  WBSParseOperatingSystemVersion(a1, &v8);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  WBSParseOperatingSystemVersion(v3, &v5);

  return v8 >= v5 && (v8 != v5 || v9 > v6);
}

id dictionaryArrayFromBookmarkArray(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v25 = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v1;
  v2 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = @"Title";
    v5 = *v27;
    v6 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        if ([v8 isDirectory])
        {
          v32[0] = v4;
          v9 = [v8 title];
          v10 = v9;
          if (v9)
          {
            v11 = v9;
          }

          else
          {
            v11 = &stru_1F3064D08;
          }

          v32[1] = @"Folder";
          v33[0] = v11;
          v12 = [v8 children];
          v13 = dictionaryArrayFromBookmarkArray();
          v33[1] = v13;
          [*(v6 + 3872) dictionaryWithObjects:v33 forKeys:v32 count:2];
          v14 = v6;
          v16 = v15 = v4;
          [v25 addObject:v16];

          v4 = v15;
          v6 = v14;
        }

        else
        {
          v30[0] = v4;
          v17 = [v8 title];
          v10 = v17;
          if (v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = &stru_1F3064D08;
          }

          v30[1] = @"URL";
          v31[0] = v18;
          v19 = [v8 url];
          v12 = v19;
          if (v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = &stru_1F3064D08;
          }

          v31[1] = v20;
          v13 = [*(v6 + 3872) dictionaryWithObjects:v31 forKeys:v30 count:2];
          [v25 addObject:v13];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v3);
  }

  v21 = [v25 copy];
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

NSString *escapeHTML(NSString *a1)
{
  v1 = a1;
  if (escapeHTML(NSString *)::once != -1)
  {
    escapeHTML();
  }

  if ([(NSString *)v1 rangeOfCharacterFromSet:escapeHTML(NSString *)::htmlCharacters]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = 0;
  }

  else
  {
    v3 = xmlEncodeEntitiesReentrant(0, [(NSString *)v1 UTF8String]);
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:v3 length:strlen(v3) encoding:4 deallocator:&__block_literal_global_86];
    v2 = v1;
    v1 = v4;
  }

  return v1;
}

void ___ZL10escapeHTMLP8NSString_block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"<>&'"];
  v1 = escapeHTML(NSString *)::htmlCharacters;
  escapeHTML(NSString *)::htmlCharacters = v0;
}

void internalSubsetCallback(void *a1, const unsigned __int8 *a2, const unsigned __int8 *a3, const unsigned __int8 *a4)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{a2, a4}];
  [a1 _handleDoctype:?];
}

void startElementCallback(void *a1, const unsigned __int8 *a2, const unsigned __int8 **a3)
{
  if (a3)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (*a3)
    {
      v7 = a3 + 2;
      do
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v7 - 1)];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(v7 - 2)];
        [v6 setObject:v8 forKeyedSubscript:v9];

        v10 = *v7;
        v7 += 2;
      }

      while (v10);
    }

    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [a1 _handleStartElement:v11 attributes:v12];
}

void endElementCallback(void *a1, const unsigned __int8 *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [a1 _handleEndElement:?];
}

void charactersCallback(void *a1, const unsigned __int8 *a2, int a3)
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
  [a1 _handleText:?];
}

void errorCallback(void *a1, _xmlError *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  code = a2->code;
  if ((code - 23) > 0x35 || ((1 << (code - 23)) & 0x20200000000001) == 0)
  {
    v5 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2->message];
    v11[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v5 errorWithDomain:@"WBSHTMLParserErrorDomain" code:code userInfo:v7];
    [a1 _handleError:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B84B7D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *WBSUnlocalizedStringFromPasswordBreachCheckResult(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7CF3180[a1 - 1];
  }
}

void sub_1B84BB150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B84BB3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B84BB5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B84BC030(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

unint64_t WBSPasswordBreachMurmur3HashWithSeed(void *a1, unsigned int a2)
{
  v3 = a1;
  v4 = [v3 bytes];
  v5 = [v3 length];
  v6 = a2;
  v7 = a2;
  while (2)
  {
    v10 = (v4 + (v5 & 0xFFFFFFFFFFFFFFF0));
    v11 = 0;
    switch(v5)
    {
      case 0uLL:
        goto LABEL_20;
      case 1uLL:
        goto LABEL_19;
      case 2uLL:
        goto LABEL_18;
      case 3uLL:
        goto LABEL_17;
      case 4uLL:
        goto LABEL_16;
      case 5uLL:
        goto LABEL_15;
      case 6uLL:
        goto LABEL_14;
      case 7uLL:
        goto LABEL_13;
      case 8uLL:
        goto LABEL_12;
      case 9uLL:
        goto LABEL_11;
      case 0xAuLL:
        goto LABEL_10;
      case 0xBuLL:
        goto LABEL_9;
      case 0xCuLL:
        goto LABEL_8;
      case 0xDuLL:
        goto LABEL_7;
      case 0xEuLL:
        goto LABEL_6;
      case 0xFuLL:
        v11 = v10[14] << 48;
LABEL_6:
        v11 |= v10[13] << 40;
LABEL_7:
        v11 ^= v10[12] << 32;
LABEL_8:
        v11 ^= v10[11] << 24;
LABEL_9:
        v11 ^= v10[10] << 16;
LABEL_10:
        v11 ^= v10[9] << 8;
LABEL_11:
        v7 ^= 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * (v11 ^ v10[8])) | ((0x4CF5AD432745937FLL * (v11 ^ v10[8])) >> 31));
LABEL_12:
        v11 = v10[7] << 56;
LABEL_13:
        v11 |= v10[6] << 48;
LABEL_14:
        v11 ^= v10[5] << 40;
LABEL_15:
        v11 ^= v10[4] << 32;
LABEL_16:
        v11 ^= v10[3] << 24;
LABEL_17:
        v11 ^= v10[2] << 16;
LABEL_18:
        v11 ^= v10[1] << 8;
LABEL_19:
        v6 ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * (v11 ^ *v10)) | ((0x87C37B91114253D5 * (v11 ^ *v10)) >> 33));
LABEL_20:
        v12 = v7 ^ v5;
        v13 = (v6 ^ v5) + v12;
        v14 = v13 + v12;
        v15 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v13 ^ (v13 >> 33))) >> 33));
        v16 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v14 ^ (v14 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v14 ^ (v14 >> 33))) >> 33));
        v17 = (v16 ^ (v16 >> 33)) + (v15 ^ (v15 >> 33));

        return v17;
      default:
        v8 = v5 >> 4;
        v9 = (v4 + 8);
        v7 = v6;
        do
        {
          v6 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *(v9 - 1)) | ((0x87C37B91114253D5 * *(v9 - 1)) >> 33))) ^ v6, 37) + v7) + 1390208809;
          v7 = 5 * (v6 + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * *v9) | ((0x4CF5AD432745937FLL * *v9) >> 31))) ^ v7, 33)) + 944331445;
          v9 += 2;
          --v8;
        }

        while (v8);
        continue;
    }
  }
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

id appendedCanonicalizedCharactersFromCharacterClasses(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = a1;
  v1 = [MEMORY[0x1E696AD60] string];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v12;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 type];
        if (v7 <= 2)
        {
          if (v7)
          {
            if (v7 == 1)
            {
              v8 = @"0123456789";
            }

            else
            {
              v8 = @"abcdefghijklmnopqrstuvwxyz";
              if (v7 != 2)
              {
                goto LABEL_20;
              }
            }

            goto LABEL_23;
          }

          v9 = LABEL_17:;
          goto LABEL_18;
        }

        if (v7 <= 4)
        {
          if (v7 == 3)
          {
            v8 = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
          }

          else
          {
          }

LABEL_23:

LABEL_24:
          [v1 appendString:v8];
          goto LABEL_25;
        }

        if (v7 == 5)
        {
          goto LABEL_17;
        }

        if (v7 != 6)
        {
LABEL_20:

          v8 = 0;
          goto LABEL_25;
        }

        v9 = [v6 value];
LABEL_18:
        v8 = v9;

        if (v8)
        {
          goto LABEL_24;
        }

LABEL_25:
      }

      v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v1;
}

uint64_t createLexiconWithLocale(NSString *a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *MEMORY[0x1E69ABFE0];
  v6[0] = *MEMORY[0x1E69ABFE8];
  v6[1] = v2;
  v7[0] = v1;
  v7[1] = MEMORY[0x1E695E118];
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v3 = LXLexiconCreate();

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1B84C3FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = WBSPasswordGenerationManager;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL passwordMatchesFormatOfGenerationStyle(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 length];
  if (!a2)
  {
    if (v4 == 15 && [v3 containsString:@"-"])
    {
      if (regexForClassicPassword(void)::onceToken != -1)
      {
        passwordMatchesFormatOfGenerationStyle();
      }

      v5 = [regexForClassicPassword(void)::regex numberOfMatchesInString:v3 options:0 range:{0, 15}];
      goto LABEL_13;
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if (a2 == 1 || v4 != 20 || ![v3 containsString:@"-"])
  {
    goto LABEL_14;
  }

  if (regexForMoreTypablePassword(void)::onceToken != -1)
  {
    passwordMatchesFormatOfGenerationStyle();
  }

  v5 = [regexForMoreTypablePassword(void)::regex numberOfMatchesInString:v3 options:0 range:{0, 20}];
LABEL_13:
  v6 = v5 != 0;
LABEL_15:

  return v6;
}

void sub_1B84C42D0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t randomSyllable(void)
{
  v0 = MEMORY[0x1E696AEC0];
  v1 = randomConsonant();
  v2 = randomVowel();
  return [v0 stringWithFormat:@"%C%C%C", v1, v2, randomConsonant()];
}

uint64_t randomConsonant(void)
{
  {
    LODWORD(v0) = randomConsonant(void)::lengthOfConsonants;
  }

  else
  {
    v0 = [@"bcdfghjkmnpqrstvwxz" length];
    randomConsonant(void)::lengthOfConsonants = v0;
  }

  v1 = arc4random_uniform(v0);

  return [@"bcdfghjkmnpqrstvwxz" characterAtIndex:v1];
}

uint64_t randomVowel(void)
{
  {
    LODWORD(v0) = randomVowel(void)::lengthOfVowels;
  }

  else
  {
    v0 = [@"aeiouy" length];
    randomVowel(void)::lengthOfVowels = v0;
  }

  v1 = arc4random_uniform(v0);

  return [@"aeiouy" characterAtIndex:v1];
}

uint64_t randomNumber(void)
{
  {
    LODWORD(v0) = randomNumber(void)::lengthOfNumbers;
  }

  else
  {
    v0 = [@"0123456789" length];
    randomNumber(void)::lengthOfNumbers = v0;
  }

  v1 = arc4random_uniform(v0);

  return [@"0123456789" characterAtIndex:v1];
}

void sub_1B84C4B44(_Unwind_Exception *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getPasswordRandomCharacters(uint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = *a1;
  v4 = a1[1];
  v6 = (v4 - *a1) >> 1;
  std::vector<unsigned char>::vector[abi:sn200100](&__p, v6);
  v7 = __p;
  v8 = [v3 length];
  if (v4 == v5)
  {
    goto LABEL_16;
  }

  v21 = v5;
  v22 = v4;
  v9 = 0;
  v10 = v8;
  v11 = (0xFFu % v8) ^ 0xFF;
  v12 = *MEMORY[0x1E697B308];
  v13 = v7;
  v14 = v6;
  do
  {
      ;
    }

    v15 = v6 - v9;
    if (v6 > v9)
    {
      v16 = &v7[v9];
      do
      {
        v18 = *v16++;
        v17 = v18;
        if (v18 < v11)
        {
          v7[v9++] = v17 % v10;
        }

        --v15;
      }

      while (v15);
    }

    v13 = &v7[v9];
    v14 = v6 - v9;
  }

  while (v6 > v9);
  if (v22 == v21)
  {
LABEL_16:
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v19 = 0;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    while (v24 - __p > v19)
    {
      v20 = [v3 characterAtIndex:*(__p + v19)];
      if (v19 >= (a1[1] - *a1) >> 1)
      {
        break;
      }

      *(*a1 + 2 * v19++) = v20;
      if (v6 == v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1B84C6040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id tokenizedPassword(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 lowercaseString];
  if (a2 == 1)
  {
    goto LABEL_5;
  }

  if (a2 == 2)
  {
    if ([v3 length] == 18)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v6 = [v4 substringWithRange:{0, 6}];
      v7 = [v6 safari_setOfAllSubstringsWithMinimumLength:3];
      v8 = [v7 allObjects];
      [v5 addObjectsFromArray:v8];

      v9 = [v4 substringWithRange:{6, 6}];
      v10 = [v9 safari_setOfAllSubstringsWithMinimumLength:3];
      v11 = [v10 allObjects];
      [v5 addObjectsFromArray:v11];

      v12 = [v4 substringWithRange:{12, 6}];
      v13 = [v12 safari_setOfAllSubstringsWithMinimumLength:3];
      v14 = [v13 allObjects];
      [v5 addObjectsFromArray:v14];

      goto LABEL_9;
    }
  }

  else if (a2 == 3 && [v3 length] == 18)
  {
LABEL_5:
    v5 = [v4 safari_setOfAllSubstringsWithMinimumLength:3];
    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

void sub_1B84C621C(_Unwind_Exception *a1)
{
  v7 = v4;

  _Unwind_Resume(a1);
}

void ___ZL23regexForClassicPasswordv_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^[%@]{3}-[%@]{3}-[%@]{3}-[%@]{3}$", @"abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ0123456789", @"abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ0123456789", @"abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ0123456789", @"abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ0123456789"];
  v7 = 0;
  v1 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v0 options:16 error:&v7];
  v2 = v7;
  v3 = regexForClassicPassword(void)::regex;
  regexForClassicPassword(void)::regex = v1;

  if (v2)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v2 safari_privacyPreservingDescription];
      ___ZL23regexForClassicPasswordv_block_invoke_cold_1(v5, buf, v4);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B84C6724(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___ZL27regexForMoreTypablePasswordv_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AEC0] stringWithFormat:@"^[%@]{6}-[%@]{6}-[%@]{6}$", @"abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ0123456789", @"abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ0123456789", @"abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ0123456789"];
  v7 = 0;
  v1 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v0 options:16 error:&v7];
  v2 = v7;
  v3 = regexForMoreTypablePassword(void)::regex;
  regexForMoreTypablePassword(void)::regex = v1;

  if (v2)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v2 safari_privacyPreservingDescription];
      ___ZL23regexForClassicPasswordv_block_invoke_cold_1(v5, buf, v4);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B84C6860(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *std::vector<unsigned short>::vector[abi:sn200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned short>::__vallocate[abi:sn200100](result, a2);
  }

  return result;
}

void std::vector<unsigned short>::__vallocate[abi:sn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    std::allocator<unsigned short>::allocate_at_least[abi:sn200100](a1, a2);
  }

  std::vector<unsigned short>::__throw_length_error[abi:sn200100]();
}

void std::allocator<unsigned short>::allocate_at_least[abi:sn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned short>::__throw_length_error[abi:sn200100]();
}

void *std::vector<unsigned char>::vector[abi:sn200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:sn200100](result, a2);
  }

  return result;
}

void std::vector<unsigned char>::__vallocate[abi:sn200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<unsigned short>::__throw_length_error[abi:sn200100]();
}

void ___ZL50ignorePasswordGenerationIsDisallowedByRequirementsv_block_invoke()
{
  if (+[WBSFeatureAvailability hasInternalContent])
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    ignorePasswordGenerationIsDisallowedByRequirements(void)::ignorePasswordGenerationIsDisallowedByRequirements = [v0 BOOLForKey:@"WBSIgnorePasswordGenerationIsDisallowedByRequirements"];
  }

  else
  {
    ignorePasswordGenerationIsDisallowedByRequirements(void)::ignorePasswordGenerationIsDisallowedByRequirements = 0;
  }
}

uint64_t WBSAuthenticationPolicyForPasswordManager()
{
  if (+[WBSFeatureAvailability isDTOMitigationEnabled])
  {
    return 1025;
  }

  else
  {
    return 2;
  }
}

uint64_t WBSAuthenticationPolicyForCreditCards()
{
  if (+[WBSFeatureAvailability isDTOMitigationEnabled])
  {
    return 1025;
  }

  else
  {
    return 2;
  }
}

uint64_t WBSAuthenticationPolicyForCredentialsExport()
{
  if (+[WBSFeatureAvailability isDTOMitigationEnabled])
  {
    return 1025;
  }

  else
  {
    return 2;
  }
}

double nChooseK(double a1, double a2)
{
  v2 = 0.0;
  if (a2 <= a1)
  {
    if (a1 * 0.5 < a2)
    {
      a2 = a1 - a2;
    }

    v2 = 1.0;
    if (a2 != 0.0 && a2 >= 1.0)
    {
      v4 = 2;
      v5 = 1.0;
      do
      {
        v2 = v2 * (a1 - v5 + 1.0) / v5;
        v5 = v4++;
      }

      while (a2 >= v5);
    }
  }

  return v2;
}

void sub_1B84CC294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double factorial(unint64_t a1)
{
  result = 1.0;
  if (a1 > 1)
  {
    return factorial(a1 - 1, 1.0) * a1;
  }

  return result;
}

void sub_1B84CC4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t WBSFileVaultRecoveryKeyListenerInterface()
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (WBSFileVaultRecoveryKeyListenerInterface_onceToken != -1)
  {
    WBSFileVaultRecoveryKeyListenerInterface_cold_1();
  }

  v0 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v2 = [v0 setWithArray:v1];

  v3 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:3];
  v5 = [v3 setWithArray:{v4, v10, v11}];

  [WBSFileVaultRecoveryKeyListenerInterface_interface setClasses:v2 forSelector:sel_saveRecoveryKeyWithRequest_completion_ argumentIndex:0 ofReply:0];
  [WBSFileVaultRecoveryKeyListenerInterface_interface setClasses:v5 forSelector:sel_saveRecoveryKeyWithRequest_completion_ argumentIndex:0 ofReply:1];
  [WBSFileVaultRecoveryKeyListenerInterface_interface setClasses:v2 forSelector:sel_recoveryKeyForVolumeID_serialNumber_completion_ argumentIndex:0 ofReply:0];
  [WBSFileVaultRecoveryKeyListenerInterface_interface setClasses:v5 forSelector:sel_recoveryKeyForVolumeID_serialNumber_completion_ argumentIndex:0 ofReply:1];
  [WBSFileVaultRecoveryKeyListenerInterface_interface setClasses:v2 forSelector:sel_recoveryKeysForSerialNumber_completion_ argumentIndex:0 ofReply:0];
  [WBSFileVaultRecoveryKeyListenerInterface_interface setClasses:v5 forSelector:sel_recoveryKeysForSerialNumber_completion_ argumentIndex:0 ofReply:1];
  [WBSFileVaultRecoveryKeyListenerInterface_interface setClasses:v2 forSelector:sel_deleteRecoveryKeyForVolumeID_serialNumber_completion_ argumentIndex:0 ofReply:0];
  [WBSFileVaultRecoveryKeyListenerInterface_interface setClasses:v5 forSelector:sel_deleteRecoveryKeyForVolumeID_serialNumber_completion_ argumentIndex:0 ofReply:1];
  v6 = WBSFileVaultRecoveryKeyListenerInterface_interface;
  v7 = WBSFileVaultRecoveryKeyListenerInterface_interface;

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

void __WBSFileVaultRecoveryKeyListenerInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F309E840];
  v1 = WBSFileVaultRecoveryKeyListenerInterface_interface;
  WBSFileVaultRecoveryKeyListenerInterface_interface = v0;
}

unsigned __int16 *skipWhitespaceCharacters(unsigned __int16 *result, void *a2)
{
  while (1)
  {
    v2 = *result;
    v3 = v2 > 0x20;
    v4 = (1 << v2) & 0x100003600;
    if (v3 || v4 == 0)
    {
      break;
    }

    ++result;
  }

  *a2 = result;
  return result;
}

__CFString *parseIdentifier(UniChar *chars, UniChar **a2, void *a3)
{
  v3 = chars;
  v4 = *chars;
  if (*chars)
  {
    v5 = 0;
    v6 = chars;
    while (v4 == 45 || (v4 & 0xFFDFu) - 65 <= 0x19)
    {
      v7 = v6[1];
      ++v6;
      v4 = v7;
      --v5;
      if (!v7)
      {
        goto LABEL_8;
      }
    }

    if (v5)
    {
LABEL_8:
      *a3 = -1;
      *a2 = v6;
      v8 = CFStringCreateWithCharactersNoCopy(*MEMORY[0x1E695E480], chars, -v5, *MEMORY[0x1E695E498]);
      goto LABEL_11;
    }

    v3 = v6;
  }

  *a3 = 2;
  *a2 = v3;
  v8 = &stru_1F3064D08;
LABEL_11:

  return v8;
}

id parseNamedCharacterClass(UniChar *a1, void *a2, void *a3)
{
  v11 = a1;
  v5 = parseIdentifier(a1, &v11, a3);
  v6 = v5;
  if (*a3 != -1)
  {
    v7 = 0;
LABEL_3:
    *a2 = v11;
    goto LABEL_17;
  }

  v8 = [v5 lowercaseString];
  if ([v8 isEqualToString:@"ascii-printable"])
  {
    v9 = 0;
  }

  else if ([v8 isEqualToString:@"lower"])
  {
    v9 = 2;
  }

  else if ([v8 isEqualToString:@"upper"])
  {
    v9 = 3;
  }

  else if ([v8 isEqualToString:@"digit"])
  {
    v9 = 1;
  }

  else if ([v8 isEqualToString:@"special"])
  {
    v9 = 4;
  }

  else
  {
    if (([v8 isEqualToString:@"unicode"] & 1) == 0)
    {

      v7 = 0;
      *a3 = 1;
      goto LABEL_3;
    }

    v9 = 5;
  }

  *a3 = -1;
  *a2 = v11;
  v7 = [WBSPasswordCharacterClass namedCharacterClassWithType:v9];
LABEL_17:

  return v7;
}

uint64_t parsePositiveIntegerPropertyValue(unsigned __int16 *a1, void *a2, uint64_t *a3)
{
  v3 = *a1;
  if (v3 - 48 > 9)
  {
    v4 = -1;
    v6 = 3;
  }

  else
  {
    v4 = 0;
    if (*a1)
    {
      while (v3 != 59)
      {
        if (v3 - 48 > 9)
        {
          v7 = v3 == 0;
          if (v3)
          {
            v6 = 3;
          }

          else
          {
            v6 = -1;
          }

          if (!v7)
          {
            v4 = -1;
          }

          goto LABEL_13;
        }

        v4 = 10 * v4 + v3 - 48;
        v5 = a1[1];
        ++a1;
        v3 = v5;
        if (!v5)
        {
          break;
        }
      }
    }

    v6 = -1;
  }

LABEL_13:
  *a3 = v6;
  *a2 = a1;
  return v4;
}

id parseCustomCharacterClass(_WORD *a1, void *a2, void *a3)
{
  if (*a1 == 91)
  {
    v6 = [MEMORY[0x1E696AD60] string];
    v7 = a1 + 2;
    for (i = 2; ; i += 2)
    {
      v9 = *(v7 - 1);
      if (!*(v7 - 1))
      {
        v10 = 0;
        *a3 = 3;
        *a2 = v7 - 1;
        goto LABEL_16;
      }

      if (v9 == 93)
      {
        break;
      }

      if ((v9 - 32) < 0x5F && (i < 3 || v9 != 45))
      {
        [v6 appendFormat:@"%C", *(v7 - 1)];
      }

      ++v7;
    }

    if (*v7 == 93)
    {
      [v6 appendFormat:@"%C", 93];
    }

    else
    {
      --v7;
    }

    *a3 = -1;
    *a2 = v7;
    v10 = [WBSPasswordCharacterClass customCharacterClassWithValue:v6];
LABEL_16:
  }

  else
  {
    v10 = 0;
    *a3 = 3;
    *a2 = a1;
  }

  return v10;
}

id parsePasswordRequiredOrAllowedPropertyValue(UniChar *a1, UniChar **a2, uint64_t *a3)
{
  v5 = a1;
  v19 = a1;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = *v5;
LABEL_2:
  if (v7)
  {
    if (v7 == 45 || (v7 & 0xFFDF) - 65 <= 0x19)
    {
      v11 = parseNamedCharacterClass(v5, &v19, a3);
      v12 = v11;
      if (*a3 == -1)
      {
        [v6 addObject:v11];

        v10 = v19;
LABEL_10:
        v5 = v10 + 1;
        for (i = v10; ; ++i)
        {
          v14 = *i;
          if (v14 > 0x3B)
          {
            break;
          }

          if (((1 << v14) & 0x100003600) == 0)
          {
            if (v14 == 44)
            {
              while (1)
              {
                v7 = *v5;
                if (v7 > 0x20 || ((1 << v7) & 0x100003600) == 0)
                {
                  break;
                }

                ++v5;
              }

              v19 = v5;
              if (!v7)
              {
                v16 = 2;
                goto LABEL_33;
              }

              goto LABEL_2;
            }

            if (v14 == 59)
            {
              v10 = i;
              goto LABEL_25;
            }

            break;
          }

          ++v5;
        }

        if (!*i)
        {
          goto LABEL_25;
        }

        *a3 = 3;
        *a2 = i;
        goto LABEL_27;
      }

      *a2 = v5;
    }

    else if (v7 == 91)
    {
      v8 = parseCustomCharacterClass(v5, &v19, a3);
      v9 = v8;
      if (*a3 == -1)
      {
        [v6 addObject:v8];
        v10 = v19 + 1;

        goto LABEL_10;
      }

      *a2 = v19;
    }

    else
    {
      v16 = 3;
LABEL_33:
      *a3 = v16;
      *a2 = v5;
    }

LABEL_27:
    v17 = MEMORY[0x1E695E0F0];
    goto LABEL_28;
  }

  v10 = v5;
LABEL_25:
  *a3 = -1;
  *a2 = v10;
  v17 = v6;
LABEL_28:

  return v17;
}