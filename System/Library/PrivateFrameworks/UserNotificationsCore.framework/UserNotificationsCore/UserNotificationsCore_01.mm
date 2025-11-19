uint64_t sub_1DA7C4C94()
{
  v1 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_1DA9401F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = *(v6 + 80);
  v9 = (v4 + v8 + 8) & ~v8;
  v10 = *(v6 + 64);
  v11 = v2 | v8;
  v7(v0 + v3, v5);
  v12 = *(v0 + v4);

  v7(v0 + v9, v5);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DA7C4DC0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C4DF8()
{
  v1 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1DA9401F4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v4);

  v8 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v2 | 7);
}

uint64_t sub_1DA7C4EF0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for NotificationPipelineRequestLogger() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(v0 + 16);

  v9 = v0 + v3;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v17 = sub_1DA9401F4();
    (*(*(v17 - 8) + 8))(v0 + v3, v17);
    goto LABEL_14;
  }

  type metadata accessor for StepFailure(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v33 = v7;
      __swift_destroy_boxed_opaque_existential_1((v0 + v3));
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
      v27 = *(v26 + 48);
      v28 = sub_1DA9402D4();
      v29 = *(v28 - 8);
      if (!(*(v29 + 48))(v9 + v27, 1, v28))
      {
        (*(v29 + 8))(v9 + v27, v28);
      }

      v14 = *(v26 + 64);
      v15 = sub_1DA9402E4();
      v16 = *(v15 - 8);
      v7 = v33;
      if (!(*(v16 + 48))(v9 + v14, 1, v15))
      {
        goto LABEL_13;
      }

      break;
    case 1:
      v32 = v4;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD60C0, &unk_1DA965C60);
      v19 = *(v18 + 48);
      v20 = sub_1DA9402D4();
      v21 = *(v20 - 8);
      if (!(*(v21 + 48))(v9 + v19, 1, v20))
      {
        (*(v21 + 8))(v9 + v19, v20);
      }

      v14 = *(v18 + 64);
      v15 = sub_1DA9402E4();
      v16 = *(v15 - 8);
      v4 = v32;
      if (!(*(v16 + 48))(v9 + v14, 1, v15))
      {
        goto LABEL_13;
      }

      break;
    case 0:
      __swift_destroy_boxed_opaque_existential_1((v0 + v3));
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
      v11 = *(v31 + 48);
      v12 = sub_1DA9402D4();
      v13 = *(v12 - 8);
      if (!(*(v13 + 48))(v9 + v11, 1, v12))
      {
        (*(v13 + 8))(v9 + v11, v12);
      }

      v14 = *(v31 + 64);
      v15 = sub_1DA9402E4();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v9 + v14, 1, v15))
      {
LABEL_13:
        (*(v16 + 8))(v9 + v14, v15);
      }

      break;
  }

LABEL_14:
  v22 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + v6 + 8) & ~v6;
  v24 = *(v0 + v22);

  v25 = sub_1DA9401F4();
  (*(*(v25 - 8) + 8))(v0 + v23, v25);

  return MEMORY[0x1EEE6BDD0](v0, v23 + v7, v2 | v6 | 7);
}

uint64_t sub_1DA7C544C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C549C()
{
  MEMORY[0x1E1273AD0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C54D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C5510()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DA7C556C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DA7C55A4()
{
  v1 = sub_1DA9407A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1DA92A328(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  v7 = *(v0 + 88);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DA7C5684()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DA7C56BC()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

UNCPushRegistration *UNCDictionaryToUNCPushRegistration_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCPushRegistration alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

void sub_1DA7C7C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getCRPairedVehicleManagerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCRPairedVehicleManagerClass_softClass;
  v7 = getCRPairedVehicleManagerClass_softClass;
  if (!getCRPairedVehicleManagerClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCRPairedVehicleManagerClass_block_invoke;
    v3[3] = &unk_1E85D6DE8;
    v3[4] = &v4;
    __getCRPairedVehicleManagerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1DA7C7D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCRPairedVehicleManagerClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CarKitLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E85D6E08;
    v7 = 0;
    CarKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (CarKitLibraryCore_frameworkLibrary)
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
  result = objc_getClass("CRPairedVehicleManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRPairedVehicleManagerClass_block_invoke_cold_1();
  }

  getCRPairedVehicleManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DA7CD774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void UNCPowerLogUserNotificationRequestEvent(__CFString *a1, unsigned int a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = &stru_1F563BF08;
  if (a1)
  {
    v2 = a1;
  }

  v9[1] = @"PostType";
  v10[0] = v2;
  v9[0] = @"BundleIdentifier";
  v3 = MEMORY[0x1E696AD98];
  v4 = a2;
  v5 = a1;
  v6 = [v3 numberWithInteger:v4];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  PLLogRegisteredEvent();
  v8 = *MEMORY[0x1E69E9840];
}

void UNCPowerLogUserNotificationDefaultTriggerEvent(__CFString *a1, unsigned int a2, uint64_t a3)
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = &stru_1F563BF08;
  if (a1)
  {
    v4 = a1;
  }

  v13[0] = v4;
  v12[0] = @"BundleIdentifier";
  v12[1] = @"TriggerType";
  v5 = MEMORY[0x1E696AD98];
  v6 = a2;
  v7 = a1;
  v8 = [v5 numberWithInteger:v6];
  v13[1] = v8;
  v12[2] = @"UIShown";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v13[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  PLLogRegisteredEvent();
  v11 = *MEMORY[0x1E69E9840];
}

void UNCPowerLogUserNotificationTriggerEvent(__CFString *a1, unsigned int a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = &stru_1F563BF08;
  if (a1)
  {
    v2 = a1;
  }

  v9[1] = @"TriggerType";
  v10[0] = v2;
  v9[0] = @"BundleIdentifier";
  v3 = MEMORY[0x1E696AD98];
  v4 = a2;
  v5 = a1;
  v6 = [v3 numberWithInteger:v4];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  PLLogRegisteredEvent();
  v8 = *MEMORY[0x1E69E9840];
}

void UNCPowerLogUserNotificationExtendedTriggerEvent(void *a1, unsigned int a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v28[4] = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a4;
  v13 = a5;
  v14 = MEMORY[0x1E695DF90];
  v15 = &stru_1F563BF08;
  if (v11)
  {
    v15 = v11;
  }

  v28[0] = v15;
  v27[0] = @"BundleIdentifier";
  v27[1] = @"TriggerType";
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v28[1] = v16;
  v27[2] = @"Waking";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v28[2] = v17;
  v27[3] = @"UIShown";
  v18 = [MEMORY[0x1E696AD98] numberWithBool:a6];
  v28[3] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:4];
  v20 = [v14 dictionaryWithDictionary:v19];

  if (v12 && v13)
  {
    v21 = MEMORY[0x1E696AD98];
    [v12 timeIntervalSinceReferenceDate];
    v22 = [v21 numberWithDouble:?];
    [v20 setObject:v22 forKey:@"NSEStartTime"];

    v23 = MEMORY[0x1E696AD98];
    [v13 timeIntervalSinceReferenceDate];
    v24 = [v23 numberWithDouble:?];
    [v20 setObject:v24 forKey:@"NSEEndTime"];
  }

  v25 = [v20 copy];
  PLLogRegisteredEvent();

  v26 = *MEMORY[0x1E69E9840];
}

void *__getSpotlightDaemonClientRegisterSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SpotlightReceiverLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpotlightReceiverLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E85D6F00;
    v8 = 0;
    SpotlightReceiverLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = SpotlightReceiverLibraryCore_frameworkLibrary;
    if (SpotlightReceiverLibraryCore_frameworkLibrary)
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

  v2 = SpotlightReceiverLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SpotlightDaemonClientRegister");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSpotlightDaemonClientRegisterSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SpotlightReceiverLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpotlightReceiverLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

UNCContactRecord *UNNotificationContactToUNCContactRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(UNCContactRecord);
  v4 = [v2 handle];
  [(UNCContactRecord *)v3 setHandle:v4];

  -[UNCContactRecord setHandleType:](v3, "setHandleType:", [v2 handleType]);
  v5 = [v2 serviceName];
  [(UNCContactRecord *)v3 setServiceName:v5];

  v6 = [v2 displayName];
  [(UNCContactRecord *)v3 setDisplayName:v6];

  -[UNCContactRecord setDisplayNameSuggested:](v3, "setDisplayNameSuggested:", [v2 isDisplayNameSuggested]);
  v7 = [v2 customIdentifier];
  [(UNCContactRecord *)v3 setCustomIdentifier:v7];

  v8 = [v2 cnContactIdentifier];
  [(UNCContactRecord *)v3 setCnContactIdentifier:v8];

  v9 = [v2 cnContactFullname];
  [(UNCContactRecord *)v3 setCnContactFullname:v9];

  v10 = [v2 isCNContactIdentifierSuggested];
  [(UNCContactRecord *)v3 setCnContactIdentifierSuggested:v10];

  return v3;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA7D1948(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

__CFString *_UNCAPSTopicListDebugString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E85D7180[a1];
  }
}

void sub_1DA7D99EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA7DD820(void *a1, int a2)
{
  v4 = objc_begin_catch(a1);
  if (a2 == 2)
  {
    [(UNCBundleLibrarian *)v4 _queue_dictionaryAtPath:v2];
    JUMPOUT(0x1DA7DD7D4);
  }

  objc_exception_rethrow();
}

id _UNCNilArgumentError(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Argument %@ is missing for %s", a2, a1];
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:@"UNCErrorDomain" code:2 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id _UNCNilRemoteTargetError(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Recmote target is missing for %s", a1, *MEMORY[0x1E696A578]];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v1 errorWithDomain:@"UNCErrorDomain" code:3 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id _UNCNilDelegateError(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E696ABC0];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Delegate is nil in %s", a1, *MEMORY[0x1E696A578]];
  v8[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v1 errorWithDomain:@"UNCErrorDomain" code:3 userInfo:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA7E4360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA7E44D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA7E654C(void *a1, int a2)
{
  v4 = objc_begin_catch(a1);
  if (a2 == 2)
  {
    [(UNCKeyedDictionaryRepository *)v4 _dictionaryAtPath:v2];
    JUMPOUT(0x1DA7E64F8);
  }

  objc_exception_rethrow();
}

void sub_1DA7EC298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

__CFString *UNCStringFromUNCContentPreviewSetting(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D7598[a1];
  }
}

__CFString *UNCStringFromUNCAnnounceSetting(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D7600[a1 + 1];
  }
}

__CFString *UNCStringFromUNCAnnounceCarPlaySetting(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D75B8[a1 + 1];
  }
}

__CFString *UNCStringFromUNCScheduledDeliverySetting(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D75E0[a1 + 1];
  }
}

__CFString *UNCStringFromUNCSystemSetting(uint64_t a1)
{
  if ((a1 + 1) > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D7600[a1 + 1];
  }
}

__CFString *UNCStringFromBool(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

__CFString *UNCStringFromUNCNotificationListDisplayStyleSetting(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E85D7620[a1];
  }
}

unint64_t UNCSpokenNotificationSettingForAnnounceSetting(unint64_t result)
{
  if (result >= 3)
  {
    return -1;
  }

  return result;
}

unint64_t UNCAnnounceSettingForSpokenNotificationSetting(unint64_t result)
{
  if (result >= 3)
  {
    return -1;
  }

  return result;
}

uint64_t UNCIsEntitledConnection(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1 valueForEntitlement:v5];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = *MEMORY[0x1E6983358];
    if (os_log_type_enabled(*MEMORY[0x1E6983358], OS_LOG_TYPE_ERROR))
    {
      UNCIsEntitledConnection_cold_1(v5, v6, v11);
    }

    goto LABEL_7;
  }

  v8 = [MEMORY[0x1E695DFD8] setWithArray:v7];
  if (!v8)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v8 containsObject:v6];

LABEL_8:
  return v10;
}

id UNSNotificationRecordDictionaryMigration_block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v69 = a3;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_54;
  }

  v5 = [v4 objectForKey:@"SchemaVersion"];
  v6 = [v5 unsignedIntegerValue];

  if (v6 >= 0xB)
  {
    v7 = v4;
    goto LABEL_54;
  }

  v7 = [v4 mutableCopy];
  v8 = 0x1E696A000uLL;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:11];
  [v7 setObject:v9 forKey:@"SchemaVersion"];

  v62 = v7;
  v63 = v4;
  if (v6 <= 2)
  {
    v10 = [v4 objectForKey:@"AudioVolume"];
    v11 = v10;
    if (v10)
    {
      [v10 floatValue];
      if (UNFloatIsZero())
      {
        [v7 removeObjectForKey:@"AudioVolume"];
      }
    }

    goto LABEL_11;
  }

  if (v6 <= 4)
  {
LABEL_11:
    v12 = [v4 objectForKey:@"SoundShouldRepeat"];

    if (v12)
    {
      [v7 removeObjectForKey:@"SoundShouldRepeat"];
    }

    v13 = [v4 objectForKey:@"ToneAlertType"];
    v14 = [v13 integerValue];

    if (v14 == 13)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithInteger:17];
      [v7 unc_safeSetObject:v15 forKey:@"ToneAlertType"];
    }

    goto LABEL_16;
  }

  if (v6 != 5)
  {
    if (v6 > 6)
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

LABEL_16:
  v16 = [v4 objectForKey:@"AppNotificationIdentifier"];
  v17 = [v16 length];

  if (!v17)
  {
    v18 = [MEMORY[0x1E696AFB0] UUID];
    v19 = [v18 UUIDString];
    [v7 setObject:v19 forKey:@"AppNotificationIdentifier"];
  }

LABEL_18:
  v20 = [v4 objectForKey:@"AppNotificationAttachments"];
  if ([v20 count])
  {
    v61 = v6;
    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v20, "count")}];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v60 = v20;
    obj = v20;
    v22 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v85;
      v25 = @"PushStore";
      v64 = *v85;
      v65 = v21;
      do
      {
        v26 = 0;
        v66 = v23;
        do
        {
          if (*v85 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v84 + 1) + 8 * v26);
          v28 = [v27 mutableCopy];
          v29 = [v27 objectForKey:@"AttachmentURL"];
          v30 = [v29 pathComponents];
          v31 = [v30 containsObject:v25];

          if (v31)
          {
            v70 = [v29 lastPathComponent];
            v78 = [v29 URLByDeletingLastPathComponent];
            v72 = [v78 lastPathComponent];
            v76 = [v78 URLByDeletingLastPathComponent];
            v74 = [v76 URLByDeletingLastPathComponent];
            v32 = [v74 URLByDeletingLastPathComponent];
            v33 = [v32 URLByDeletingLastPathComponent];
            v34 = [v33 URLByAppendingPathComponent:@"UserNotifications" isDirectory:1];
            v35 = [v34 URLByAppendingPathComponent:v72 isDirectory:1];
            v36 = [v35 URLByAppendingPathComponent:@"Attachments" isDirectory:1];
            [v36 URLByAppendingPathComponent:v70 isDirectory:0];
            v38 = v37 = v25;
            [v28 setObject:v38 forKey:@"AttachmentURL"];

            v25 = v37;
            v21 = v65;

            v24 = v64;
            v23 = v66;
          }

          [v21 addObject:v28];

          ++v26;
        }

        while (v23 != v26);
        v23 = [obj countByEnumeratingWithState:&v84 objects:v89 count:16];
      }

      while (v23);
    }

    v7 = v62;
    [v62 setObject:v21 forKey:@"AppNotificationAttachments"];

    v4 = v63;
    v8 = 0x1E696A000;
    v20 = v60;
    v6 = v61;
  }

LABEL_30:
  if (v6 <= 7)
  {
    v39 = [v4 objectForKey:@"UNNotificationDefaultDestinations"];

    if (!v39)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"UNNotificationDefaultDestinations"];
    }

    v40 = [v4 objectForKey:{@"UNNotificationAlertDestination", v60}];

    if (!v40)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"UNNotificationAlertDestination"];
    }

    v41 = [v4 objectForKey:@"UNNotificationCarPlayDestination"];

    if (!v41)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"UNNotificationCarPlayDestination"];
    }

    goto LABEL_39;
  }

  if (v6 != 10)
  {
    if (v6 != 8)
    {
LABEL_43:
      v44 = [v4 objectForKey:{@"AppNotificationAttachments", v60}];
      if ([v44 count])
      {
        v75 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v44, "count")}];
        v80 = 0u;
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        obja = v44;
        v71 = v44;
        v77 = [v71 countByEnumeratingWithState:&v80 objects:v88 count:16];
        if (v77)
        {
          v73 = *v81;
          do
          {
            for (i = 0; i != v77; ++i)
            {
              if (*v81 != v73)
              {
                objc_enumerationMutation(v71);
              }

              v46 = *(*(&v80 + 1) + 8 * i);
              v47 = [v46 mutableCopy];
              v48 = [v46 objectForKey:@"AttachmentURL"];
              v79 = [v48 lastPathComponent];
              v49 = [v48 URLByDeletingLastPathComponent];
              v50 = [v49 URLByDeletingLastPathComponent];

              v51 = [v50 lastPathComponent];
              v52 = [v50 URLByDeletingLastPathComponent];
              v53 = [v69 uniqueIdentifierForBundleIdentifier:v51];
              v54 = [v52 URLByAppendingPathComponent:v53 isDirectory:1];
              v55 = [v54 URLByAppendingPathComponent:@"Attachments" isDirectory:1];
              v56 = [v55 URLByAppendingPathComponent:v79 isDirectory:0];
              [v47 setObject:v56 forKey:@"AttachmentURL"];
              [v75 addObject:v47];
            }

            v77 = [v71 countByEnumeratingWithState:&v80 objects:v88 count:16];
          }

          while (v77);
        }

        v7 = v62;
        [v62 setObject:v75 forKey:@"AppNotificationAttachments"];

        v4 = v63;
        v8 = 0x1E696A000uLL;
        v44 = obja;
      }

      goto LABEL_53;
    }

LABEL_39:
    v42 = [v4 objectForKey:{@"UNNotificationLockScreenDestination", v60}];

    if (!v42)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"UNNotificationLockScreenDestination"];
    }

    v43 = [v4 objectForKey:@"UNNotificationNotificationCenterDestination"];

    if (!v43)
    {
      [v7 setObject:MEMORY[0x1E695E118] forKey:@"UNNotificationNotificationCenterDestination"];
    }

    goto LABEL_43;
  }

LABEL_53:
  v57 = [*(v8 + 3480) numberWithUnsignedInteger:{7, v60}];
  [v7 unc_safeSetObject:v57 forKey:@"PresentationOptions"];

LABEL_54:
  v58 = *MEMORY[0x1E69E9840];

  return v7;
}

BOOL UNSNotificationRecordDictionaryValidation_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  if (UNSNotificationRecordDictionaryValidation_block_invoke_4_onceToken != -1)
  {
    UNSNotificationRecordDictionaryValidation_block_invoke_4_cold_1();
  }

  v3 = *&UNSNotificationRecordDictionaryValidation_block_invoke_4___overrideDataRetentionAge;
  v4 = [v2 objectForKey:@"AppNotificationCreationDate"];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  [v4 timeIntervalSinceNow];
  v7 = -v3;
  if (v3 <= 0.0)
  {
    v7 = -259200.0;
  }

  if (v6 >= v7)
  {
    v9 = [v2 objectForKey:@"AppNotificationIdentifier"];
    v8 = [v9 length] != 0;
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  return v8;
}

void UNSNotificationRecordDictionaryValidation_block_invoke_5()
{
  v1 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.usernotifications"];
  [v1 doubleForKey:@"overrideDataRetentionAge"];
  UNSNotificationRecordDictionaryValidation_block_invoke_4___overrideDataRetentionAge = v0;
}

__CFString *UNSStringFromPipelineState(uint64_t a1)
{
  v1 = @"pending";
  if (a1 == 1)
  {
    v1 = @"completed";
  }

  if (a1 == 2)
  {
    return @"failed";
  }

  else
  {
    return v1;
  }
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA7FE5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id UNCPushSettingsDescription(char a1)
{
  if ((a1 & 4) != 0)
  {
    v2 = 65;
  }

  else
  {
    v2 = 45;
  }

  if ((a1 & 2) != 0)
  {
    v3 = 83;
  }

  else
  {
    v3 = 45;
  }

  if (a1)
  {
    v4 = 66;
  }

  else
  {
    v4 = 45;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[s:%c%c%c]", v4, v3, v2];
  if ((a1 & 0x20) != 0)
  {
    v6 = 65;
  }

  else
  {
    v6 = 45;
  }

  if ((a1 & 0x10) != 0)
  {
    v7 = 83;
  }

  else
  {
    v7 = 45;
  }

  if ((a1 & 8) != 0)
  {
    v8 = 66;
  }

  else
  {
    v8 = 45;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[e:%c%c%c]", v8, v7, v6];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v5, v9];

  return v10;
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

void sub_1DA805DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

UNCAttachmentRecord *UNNotificationAttachmentToUNCAttachmentRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(UNCAttachmentRecord);
  v4 = [v2 identifier];
  [(UNCAttachmentRecord *)v3 setIdentifier:v4];

  v5 = [v2 URL];
  [(UNCAttachmentRecord *)v3 setURL:v5];

  v6 = [v2 type];
  [(UNCAttachmentRecord *)v3 setType:v6];

  v7 = [v2 options];

  v8 = [v7 displayLocation];
  if (v8 == 1)
  {
    [(UNCAttachmentRecord *)v3 setHiddenFromDefaultExpandedView:1];
  }

  else if (v8 == 2)
  {
    [(UNCAttachmentRecord *)v3 setThumbnailHidden:1];
  }

  v9 = [v7 thumbnailGeneratorUserInfo];
  v10 = [v9 bs_safeDictionaryForKey:*MEMORY[0x1E69833C8]];
  [(UNCAttachmentRecord *)v3 setThumbnailClippingRect:v10];

  v11 = [v7 thumbnailGeneratorUserInfo];
  v12 = *MEMORY[0x1E69833D0];
  v13 = [v11 bs_safeNumberForKey:*MEMORY[0x1E69833D0]];
  [(UNCAttachmentRecord *)v3 setThumbnailFrameNumber:v13];

  v14 = [v7 thumbnailGeneratorUserInfo];
  v15 = [v14 bs_safeDictionaryForKey:v12];
  [(UNCAttachmentRecord *)v3 setThumbnailTimestamp:v15];

  return v3;
}

void sub_1DA8061A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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

void sub_1DA808E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose((v45 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

UNCNotificationSchedule *UNSDictionaryToUNCNotificationSchedule_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[UNCNotificationSchedule alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA80A9C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (v27)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCRPairedVehicleManagerClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if (!CarKitLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x1E69E9820];
    v5[2] = 3221225472;
    v5[3] = __CarKitLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_1E85D7E48;
    v7 = 0;
    CarKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (CarKitLibraryCore_frameworkLibrary_0)
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
  result = objc_getClass("CRPairedVehicleManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCRPairedVehicleManagerClass_block_invoke_cold_1();
  }

  getCRPairedVehicleManagerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CarKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CarKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1DA812EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1DA81329C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id UNNotificationToNotificationRecord_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 request];
  v4 = (*(UNNotificationRequestToNotificationRecord + 2))(UNNotificationRequestToNotificationRecord, v3);
  v5 = [v2 date];

  [v4 setDate:v5];

  return v4;
}

UNSNotificationRecord *UNNotificationRequestToNotificationRecord_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 content];
  v4 = [v3 sound];
  v5 = [v3 icon];
  v6 = [v3 communicationContext];
  v7 = objc_alloc_init(UNSNotificationRecord);
  v8 = [v3 contentType];
  [(UNSNotificationRecord *)v7 setContentType:v8];

  v9 = [v6 identifier];
  [(UNSNotificationRecord *)v7 setCommunicationContextIdentifier:v9];

  v10 = [v6 associatedObjectUri];
  [(UNSNotificationRecord *)v7 setCommunicationContextAssociatedObjectUri:v10];

  v11 = [v6 bundleIdentifier];
  [(UNSNotificationRecord *)v7 setCommunicationContextBundleIdentifier:v11];

  v12 = [v6 displayName];
  [(UNSNotificationRecord *)v7 setCommunicationContextDisplayName:v12];

  v13 = [v6 recipients];
  v14 = [v13 bs_map:UNNotificationContactToUNCContactRecord];
  [(UNSNotificationRecord *)v7 setCommunicationContextRecipients:v14];

  v15 = [v6 sender];

  if (v15)
  {
    v16 = UNNotificationContactToUNCContactRecord;
    v17 = [v6 sender];
    v18 = v16[2](v16, v17);
    [(UNSNotificationRecord *)v7 setCommunicationContextSender:v18];
  }

  v19 = [v6 contentURL];
  [(UNSNotificationRecord *)v7 setCommunicationContextContentURL:v19];

  v20 = [v6 imageName];
  [(UNSNotificationRecord *)v7 setCommunicationContextImageName:v20];

  -[UNSNotificationRecord setCommunicationContextSystemImage:](v7, "setCommunicationContextSystemImage:", [v6 isSystemImage]);
  -[UNSNotificationRecord setCommunicationContextMentionsCurrentUser:](v7, "setCommunicationContextMentionsCurrentUser:", [v6 mentionsCurrentUser]);
  -[UNSNotificationRecord setCommunicationContextNotifyRecipientAnyway:](v7, "setCommunicationContextNotifyRecipientAnyway:", [v6 notifyRecipientAnyway]);
  -[UNSNotificationRecord setCommunicationContextReplyToCurrentUser:](v7, "setCommunicationContextReplyToCurrentUser:", [v6 isReplyToCurrentUser]);
  -[UNSNotificationRecord setCommunicationContextRecipientCount:](v7, "setCommunicationContextRecipientCount:", [v6 recipientCount]);
  -[UNSNotificationRecord setCommunicationContextCapabilities:](v7, "setCommunicationContextCapabilities:", [v6 capabilities]);
  -[UNSNotificationRecord setCommunicationContextBusinessCorrespondence:](v7, "setCommunicationContextBusinessCorrespondence:", [v6 isBusinessCorrespondence]);
  v21 = [v3 attachments];
  v22 = [v21 bs_map:UNNotificationAttachmentToUNCAttachmentRecord];
  [(UNSNotificationRecord *)v7 setAttachments:v22];

  v23 = [v3 badge];
  [(UNSNotificationRecord *)v7 setBadge:v23];

  v24 = [v3 body];
  objc_opt_class();
  LOBYTE(v22) = objc_opt_isKindOfClass();

  v25 = [v3 body];
  v26 = v25;
  if (v22)
  {
    v27 = [v25 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setBodyLocalizationKey:v27];

    v28 = [v3 body];
    v29 = [v28 un_localizedStringArguments];
    [(UNSNotificationRecord *)v7 setBodyLocalizationArguments:v29];

    v26 = [v3 body];
    v30 = [v26 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setBody:v30];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setBody:v25];
  }

  v31 = [v3 attributedBody];
  v32 = [v31 _un_attributedStringByKeepingOnlyAttachmentAttributes];
  [(UNSNotificationRecord *)v7 setAttributedBody:v32];

  v33 = [v3 categoryIdentifier];
  [(UNSNotificationRecord *)v7 setCategoryIdentifier:v33];

  v34 = [v3 threadIdentifier];
  [(UNSNotificationRecord *)v7 setThreadIdentifier:v34];

  v35 = [v3 date];
  [(UNSNotificationRecord *)v7 setContentDate:v35];

  -[UNSNotificationRecord setInterruptionLevel:](v7, "setInterruptionLevel:", [v3 interruptionLevel]);
  v36 = [v3 defaultActionTitle];
  objc_opt_class();
  LOBYTE(v32) = objc_opt_isKindOfClass();

  v37 = [v3 defaultActionTitle];
  v38 = v37;
  if (v32)
  {
    v39 = [v37 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setDefaultActionTitleLocalizationKey:v39];

    v38 = [v3 defaultActionTitle];
    v40 = [v38 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setDefaultActionTitle:v40];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setDefaultActionTitle:v37];
  }

  -[UNSNotificationRecord setHasDefaultAction:](v7, "setHasDefaultAction:", [v3 hasDefaultAction]);
  v41 = [v3 defaultActionURL];
  [(UNSNotificationRecord *)v7 setDefaultActionURL:v41];

  v42 = [v3 defaultActionBundleIdentifier];
  [(UNSNotificationRecord *)v7 setDefaultActionBundleIdentifier:v42];

  v43 = [v3 expirationDate];
  [(UNSNotificationRecord *)v7 setExpirationDate:v43];

  v44 = [v3 header];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v46 = [v3 header];
  v47 = v46;
  if (isKindOfClass)
  {
    v48 = [v46 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setHeaderLocalizationKey:v48];

    v47 = [v3 header];
    v49 = [v47 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setHeader:v49];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setHeader:v46];
  }

  v50 = [v3 footer];
  objc_opt_class();
  v51 = objc_opt_isKindOfClass();

  v52 = [v3 footer];
  v53 = v52;
  if (v51)
  {
    v54 = [v52 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setFooterLocalizationKey:v54];

    v53 = [v3 footer];
    v55 = [v53 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setFooter:v55];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setFooter:v52];
  }

  v56 = [v2 identifier];
  [(UNSNotificationRecord *)v7 setIdentifier:v56];

  v57 = [v3 launchImageName];
  [(UNSNotificationRecord *)v7 setLaunchImageName:v57];

  -[UNSNotificationRecord setShouldHideDate:](v7, "setShouldHideDate:", [v3 shouldHideDate]);
  -[UNSNotificationRecord setShouldHideTime:](v7, "setShouldHideTime:", [v3 shouldHideTime]);
  -[UNSNotificationRecord setShouldIgnoreDoNotDisturb:](v7, "setShouldIgnoreDoNotDisturb:", [v3 shouldIgnoreDoNotDisturb]);
  -[UNSNotificationRecord setShouldIgnoreDowntime:](v7, "setShouldIgnoreDowntime:", [v3 shouldIgnoreDowntime]);
  -[UNSNotificationRecord setShouldSuppressScreenLightUp:](v7, "setShouldSuppressScreenLightUp:", [v3 shouldSuppressScreenLightUp]);
  -[UNSNotificationRecord setShouldAuthenticateDefaultAction:](v7, "setShouldAuthenticateDefaultAction:", [v3 shouldAuthenticateDefaultAction]);
  -[UNSNotificationRecord setShouldBackgroundDefaultAction:](v7, "setShouldBackgroundDefaultAction:", [v3 shouldBackgroundDefaultAction]);
  -[UNSNotificationRecord setShouldPreventNotificationDismissalAfterDefaultAction:](v7, "setShouldPreventNotificationDismissalAfterDefaultAction:", [v3 shouldPreventNotificationDismissalAfterDefaultAction]);
  -[UNSNotificationRecord setShouldShowSubordinateIcon:](v7, "setShouldShowSubordinateIcon:", [v3 shouldShowSubordinateIcon]);
  -[UNSNotificationRecord setShouldSuppressSyncDismissalWhenRemoved:](v7, "setShouldSuppressSyncDismissalWhenRemoved:", [v3 shouldSuppressSyncDismissalWhenRemoved]);
  -[UNSNotificationRecord setShouldUseRequestIdentifierForDismissalSync:](v7, "setShouldUseRequestIdentifierForDismissalSync:", [v3 shouldUseRequestIdentifierForDismissalSync]);
  -[UNSNotificationRecord setShouldPreemptPresentedNotification:](v7, "setShouldPreemptPresentedNotification:", [v3 shouldPreemptPresentedNotification]);
  -[UNSNotificationRecord setShouldDisplayActionsInline:](v7, "setShouldDisplayActionsInline:", [v3 shouldDisplayActionsInline]);
  v58 = [v3 subtitle];
  objc_opt_class();
  v59 = objc_opt_isKindOfClass();

  v60 = [v3 subtitle];
  v61 = v60;
  if (v59)
  {
    v62 = [v60 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setSubtitleLocalizationKey:v62];

    v63 = [v3 subtitle];
    v64 = [v63 un_localizedStringArguments];
    [(UNSNotificationRecord *)v7 setSubtitleLocalizationArguments:v64];

    v61 = [v3 subtitle];
    v65 = [v61 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setSubtitle:v65];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setSubtitle:v60];
  }

  v66 = [v3 title];
  objc_opt_class();
  v67 = objc_opt_isKindOfClass();

  v68 = [v3 title];
  v69 = v68;
  if (v67)
  {
    v70 = [v68 un_localizedStringKey];
    [(UNSNotificationRecord *)v7 setTitleLocalizationKey:v70];

    v71 = [v3 title];
    v72 = [v71 un_localizedStringArguments];
    [(UNSNotificationRecord *)v7 setTitleLocalizationArguments:v72];

    v69 = [v3 title];
    v73 = [v69 un_localizedStringValue];
    [(UNSNotificationRecord *)v7 setTitle:v73];
  }

  else
  {
    [(UNSNotificationRecord *)v7 setTitle:v68];
  }

  v74 = [v3 summaryArgument];
  [(UNSNotificationRecord *)v7 setSummaryArgument:v74];

  -[UNSNotificationRecord setSummaryArgumentCount:](v7, "setSummaryArgumentCount:", [v3 summaryArgumentCount]);
  v75 = [v3 targetContentIdentifier];
  [(UNSNotificationRecord *)v7 setTargetContentIdentifier:v75];

  v76 = [v3 topicIdentifiers];
  [(UNSNotificationRecord *)v7 setTopicIdentifiers:v76];

  -[UNSNotificationRecord setRealertCount:](v7, "setRealertCount:", [v3 realertCount]);
  v77 = [v3 userInfo];
  [(UNSNotificationRecord *)v7 setUserInfo:v77];

  [v3 relevanceScore];
  [(UNSNotificationRecord *)v7 setRelevanceScore:?];
  v78 = [v3 filterCriteria];
  [(UNSNotificationRecord *)v7 setFilterCriteria:v78];

  -[UNSNotificationRecord setScreenCaptureProhibited:](v7, "setScreenCaptureProhibited:", [v3 screenCaptureProhibited]);
  v79 = [v3 speechLanguage];
  [(UNSNotificationRecord *)v7 setSpeechLanguage:v79];

  v80 = [v5 applicationIdentifier];
  [(UNSNotificationRecord *)v7 setIconApplicationIdentifier:v80];

  v81 = [v5 name];
  [(UNSNotificationRecord *)v7 setIconName:v81];

  v82 = [v5 path];
  [(UNSNotificationRecord *)v7 setIconPath:v82];

  v83 = [v5 systemImageName];
  [(UNSNotificationRecord *)v7 setIconSystemImageName:v83];

  v84 = [v5 uti];
  [(UNSNotificationRecord *)v7 setIconUTI:v84];

  v85 = [v5 dateComponents];
  [(UNSNotificationRecord *)v7 setIconDateComponents:v85];

  -[UNSNotificationRecord setIconShouldSuppressMask:](v7, "setIconShouldSuppressMask:", [v5 shouldSuppressMask]);
  v86 = [v3 accessoryImageName];
  [(UNSNotificationRecord *)v7 setAccessoryImageName:v86];

  v87 = [v3 interruptionLevel];
  v88 = v87;
  if (!v4 && v87 == 3)
  {
    v4 = [MEMORY[0x1E69832B8] defaultCriticalSound];
  }

  v89 = [v4 audioCategory];
  [(UNSNotificationRecord *)v7 setAudioCategory:v89];

  v90 = [v4 audioVolume];
  [(UNSNotificationRecord *)v7 setAudioVolume:v90];

  v91 = [v4 isCritical];
  if (v88 == 3)
  {
    v92 = 1;
  }

  else
  {
    v92 = v91;
  }

  [(UNSNotificationRecord *)v7 setHasCriticalAlertSound:v92];
  -[UNSNotificationRecord setShouldIgnoreAccessibilityDisabledVibrationSetting:](v7, "setShouldIgnoreAccessibilityDisabledVibrationSetting:", [v4 shouldIgnoreAccessibilityDisabledVibrationSetting]);
  -[UNSNotificationRecord setShouldIgnoreRingerSwitch:](v7, "setShouldIgnoreRingerSwitch:", [v4 shouldIgnoreRingerSwitch]);
  -[UNSNotificationRecord setShouldSoundRepeat:](v7, "setShouldSoundRepeat:", [v4 shouldRepeat]);
  [v4 maximumDuration];
  [(UNSNotificationRecord *)v7 setSoundMaximumDuration:?];
  -[UNSNotificationRecord setToneAlertType:](v7, "setToneAlertType:", [v4 alertType]);
  v93 = [v4 alertTopic];
  [(UNSNotificationRecord *)v7 setToneAlertTopic:v93];

  v94 = [v4 toneFileName];
  [(UNSNotificationRecord *)v7 setToneFileName:v94];

  v95 = [v4 toneFileURL];
  [(UNSNotificationRecord *)v7 setToneFileURL:v95];

  v96 = [v4 toneIdentifier];
  [(UNSNotificationRecord *)v7 setToneIdentifier:v96];

  -[UNSNotificationRecord setToneMediaLibraryItemIdentifier:](v7, "setToneMediaLibraryItemIdentifier:", [v4 toneMediaLibraryItemIdentifier]);
  v97 = [v4 vibrationIdentifier];
  [(UNSNotificationRecord *)v7 setVibrationIdentifier:v97];

  v98 = [v4 vibrationPatternFileURL];
  [(UNSNotificationRecord *)v7 setVibrationPatternFileURL:v98];

  v99 = [v2 trigger];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v100 = [v99 dateComponents];
    [(UNSNotificationRecord *)v7 setTriggerDateComponents:v100];

    -[UNSNotificationRecord setTriggerRepeats:](v7, "setTriggerRepeats:", [v99 repeats]);
    v101 = kUNNotificationTriggerTypeCalendar;
LABEL_33:
    [(UNSNotificationRecord *)v7 setTriggerType:*v101];
    goto LABEL_34;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v102 = [v99 date];
    [(UNSNotificationRecord *)v7 setTriggerDate:v102];

    v103 = [v99 timeZone];
    [(UNSNotificationRecord *)v7 setTriggerTimeZone:v103];

    v104 = [v99 repeatCalendar];
    v105 = [v104 calendarIdentifier];
    [(UNSNotificationRecord *)v7 setTriggerRepeatCalendarIdentifier:v105];

    -[UNSNotificationRecord setTriggerRepeatInterval:](v7, "setTriggerRepeatInterval:", [v99 repeatInterval]);
    -[UNSNotificationRecord setTriggerRepeats:](v7, "setTriggerRepeats:", [v99 repeats]);
    v101 = kUNNotificationTriggerTypeLocal;
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v106 = [v99 region];
    [(UNSNotificationRecord *)v7 setTriggerRegion:v106];

    -[UNSNotificationRecord setTriggerRepeats:](v7, "setTriggerRepeats:", [v99 repeats]);
    v101 = kUNNotificationTriggerTypeLocation;
    goto LABEL_33;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UNSNotificationRecord *)v7 setTriggerType:@"Push"];
    v112 = &unk_1F5663668;
    if ([v99 isContentAvailable])
    {
      v113 = &unk_1F5663650;
    }

    else
    {
      v113 = &unk_1F5663668;
    }

    if ([v99 isMutableContent])
    {
      v112 = &unk_1F5663650;
    }

    [(UNSNotificationRecord *)v7 setContentAvailable:v113];
    [(UNSNotificationRecord *)v7 setMutableContent:v112];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v99 timeInterval];
      [(UNSNotificationRecord *)v7 setTriggerTimeInterval:?];
      -[UNSNotificationRecord setTriggerRepeats:](v7, "setTriggerRepeats:", [v99 repeats]);
      v101 = kUNNotificationTriggerTypeTimeInterval;
      goto LABEL_33;
    }
  }

LABEL_34:
  -[UNSNotificationRecord setAllowsDefaultDestinations:](v7, "setAllowsDefaultDestinations:", [v2 destinations] == 15);
  v107 = ([v2 destinations] & 2) != 0 || -[UNSNotificationRecord allowsDefaultDestinations](v7, "allowsDefaultDestinations");
  [(UNSNotificationRecord *)v7 setAllowsLockScreenDestination:v107];
  v108 = ([v2 destinations] & 4) != 0 || -[UNSNotificationRecord allowsDefaultDestinations](v7, "allowsDefaultDestinations");
  [(UNSNotificationRecord *)v7 setAllowsNotificationCenterDestination:v108];
  v109 = ([v2 destinations] & 1) != 0 || -[UNSNotificationRecord allowsDefaultDestinations](v7, "allowsDefaultDestinations");
  [(UNSNotificationRecord *)v7 setAllowsAlertDestination:v109];
  v110 = ([v2 destinations] & 8) != 0 || -[UNSNotificationRecord allowsDefaultDestinations](v7, "allowsDefaultDestinations");
  [(UNSNotificationRecord *)v7 setAllowsCarPlayDestination:v110];

  return v7;
}

void OUTLINED_FUNCTION_0_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t _handleBKEnrollmentChange(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {

    return [a2 _updateHasEnrolledPearlIdentities];
  }

  return result;
}

uint64_t sub_1DA819C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA819CFC, 0, 0);
}

void sub_1DA819CFC()
{
  v34 = *(*(v0 + 16) + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_repository);
  v1 = [v34 allBundleIdentifiers];
  v2 = sub_1DA940BE4();

  v33 = *(v2 + 16);
  if (!v33)
  {
LABEL_16:

    v19 = v35[3];
    v20 = v35[4];
    v21 = v35[2];
    v22 = OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_continuationUUID;
    v23 = sub_1DA93FB24();
    (*(*(v23 - 8) + 16))(v20, v21 + v22, v23);
    type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
    swift_storeEnumTagMultiPayload();
    v24 = MEMORY[0x1E69E7CC0];
    v25 = sub_1DA847D80(MEMORY[0x1E69E7CC0]);
    v26 = v19[9];
    v27 = sub_1DA93FE74();
    (*(*(v27 - 8) + 56))(v20 + v26, 1, 1, v27);
    v28 = (v20 + v19[5]);
    *v28 = 0;
    v28[1] = 0xE000000000000000;
    *(v20 + v19[6]) = v25;
    *(v20 + v19[7]) = v24;
    *(v20 + v19[8]) = 0;
    v29 = *__swift_project_boxed_opaque_existential_1((v21 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint), *(v21 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint + 24));
    sub_1DA90EE38(v20);
    sub_1DA81AA6C(v20, type metadata accessor for UserNotificationsVendorTransaction);

    v30 = v35[1];

    v30();
    return;
  }

  v3 = 0;
  v31 = v2;
  v32 = v2 + 32;
  while (v3 < *(v2 + 16))
  {
    v6 = (v32 + 16 * v3);
    v8 = *v6;
    v7 = v6[1];

    v9 = sub_1DA940A04();
    v10 = [v34 notificationRecordsForBundleIdentifier_];

    sub_1DA81AA20();
    v11 = sub_1DA940BE4();

    if (v11 >> 62)
    {
      v12 = sub_1DA941264();
      if (!v12)
      {
LABEL_15:

        v4 = MEMORY[0x1E69E7CC0];
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_15;
      }
    }

    v36 = MEMORY[0x1E69E7CC0];
    sub_1DA941404();
    if (v12 < 0)
    {
      goto LABEL_20;
    }

    v13 = objc_opt_self();
    v14 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1E1272460](v14, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      ++v14;
      v17 = [v13 updateWithNotificationRecord:v15 shouldSync:1];

      sub_1DA9413E4();
      v18 = *(v36 + 16);
      sub_1DA941414();
      sub_1DA941424();
      sub_1DA9413F4();
    }

    while (v12 != v14);

    v4 = v36;
    v2 = v31;
LABEL_4:
    ++v3;
    v5 = v35[2];
    sub_1DA81A0D0(v8, v7, v4);

    if (v3 == v33)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1DA81A0D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v52 = a3;
  v7 = type metadata accessor for UserNotificationsVendorTransaction.TransactionType(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UserNotificationsVendorTransaction(0);
  v53 = v11;
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v54 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v19 = OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_continuationUUID;
  v20 = sub_1DA93FB24();
  (*(*(v20 - 8) + 16))(v10, v3 + v19, v20);
  swift_storeEnumTagMultiPayload();
  v21 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_categoryRepositoryAggregator);
  v55 = v3;
  v22 = v3 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_settingsProvider;
  v23 = *(v3 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_settingsProvider);
  v24 = *(v22 + 8);
  v25 = &v18[*(v11 + 36)];
  sub_1DA93FE84();
  v57 = sub_1DA847D80(MEMORY[0x1E69E7CC0]);

  sub_1DA8F6BEC(a3, v21, a1, a2, &v57);

  sub_1DA81AACC(v10, v18, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v26 = v57;
  ObjectType = swift_getObjectType();
  v28 = *(v24 + 8);

  v29 = v28(a1, a2, ObjectType, v24);
  v30 = v53;
  v31 = v29;
  sub_1DA81AA6C(v10, type metadata accessor for UserNotificationsVendorTransaction.TransactionType);
  v32 = &v18[v30[5]];
  *v32 = a1;
  v32[1] = a2;
  *&v18[v30[6]] = v26;
  v33 = v30[7];

  v34 = v52;

  *&v18[v33] = v34;
  *&v18[v30[8]] = v31;
  if (qword_1ECBD46D0 != -1)
  {
    swift_once();
  }

  v35 = sub_1DA9405A4();
  __swift_project_value_buffer(v35, qword_1ECBD46D8);
  v36 = v54;
  sub_1DA81AACC(v18, v54, type metadata accessor for UserNotificationsVendorTransaction);
  v37 = v55;

  v38 = sub_1DA940584();
  v39 = sub_1DA940EF4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v57 = v41;
    *v40 = 136315394;
    v56 = v37;
    type metadata accessor for HistoricalNotificationsRequestProcessor();

    v42 = sub_1DA940A74();
    v44 = sub_1DA7AE6E8(v42, v43, &v57);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    sub_1DA81AACC(v36, v51, type metadata accessor for UserNotificationsVendorTransaction);
    v45 = sub_1DA940A74();
    v47 = v46;
    sub_1DA81AA6C(v36, type metadata accessor for UserNotificationsVendorTransaction);
    v48 = sub_1DA7AE6E8(v45, v47, &v57);

    *(v40 + 14) = v48;
    _os_log_impl(&dword_1DA7A9000, v38, v39, "%s sending: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v41, -1, -1);
    MEMORY[0x1E12739F0](v40, -1, -1);
  }

  else
  {

    sub_1DA81AA6C(v36, type metadata accessor for UserNotificationsVendorTransaction);
  }

  v49 = *__swift_project_boxed_opaque_existential_1((v37 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint), *(v37 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint + 24));
  sub_1DA90EE38(v18);
  return sub_1DA81AA6C(v18, type metadata accessor for UserNotificationsVendorTransaction);
}

uint64_t sub_1DA81A5F8()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_continuationUUID;
  v2 = sub_1DA93FB24();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_repository);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_categoryRepositoryAggregator);

  v5 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_settingsProvider);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21UserNotificationsCore39HistoricalNotificationsRequestProcessor_endpoint));
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HistoricalNotificationsRequestProcessor()
{
  result = qword_1ECBD48F8;
  if (!qword_1ECBD48F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA81A728()
{
  result = sub_1DA93FB24();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA81A8B8(uint64_t a1, int a2)
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

uint64_t sub_1DA81A8D8(uint64_t result, int a2, int a3)
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

void sub_1DA81A914(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1DA81A960()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD46D8);
  __swift_project_value_buffer(v0, qword_1ECBD46D8);
  return sub_1DA940594();
}

uint64_t sub_1DA81A9E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1DA940A14();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_1DA81AA20()
{
  result = qword_1ECBD4C00;
  if (!qword_1ECBD4C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBD4C00);
  }

  return result;
}

uint64_t sub_1DA81AA6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA81AACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
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

uint64_t timeout<A, B>(until:tolerance:clock:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v14;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  v9 = sub_1DA9417D4();
  v8[12] = v9;
  v10 = *(v9 - 8);
  v8[13] = v10;
  v11 = *(v10 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA81AE00, 0, 0);
}

uint64_t sub_1DA81AE00()
{
  v1 = *(v0 + 88);
  v2 = swift_allocObject();
  *(v0 + 128) = v2;
  *(v2 + 16) = *(v0 + 72);
  *(v2 + 32) = v1;
  *(v2 + 40) = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_1DA81AEF8;
  v4 = *(v0 + 120);
  v5 = *(v0 + 80);
  v6 = *(v0 + 72);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  v12 = *(v0 + 88);

  return sub_1DA81B33C(v4, &unk_1DA958268, v2, v9, v7, v8, v6, v5);
}

uint64_t sub_1DA81AEF8()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA81AFF4, 0, 0);
}

uint64_t sub_1DA81AFF4()
{
  v1 = v0[16];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v4 = v0[12];
    v5 = v0[3];
    (*(v0[13] + 16))(v0[14], v0[15], v4);
    sub_1DA81C9A8(v4, (v0 + 2), v5);
    v6 = v0[14];
    (*(v0[13] + 8))(v0[15], v0[12]);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DA81B168(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA7B7470;

  return v7(a1);
}

uint64_t sub_1DA81B260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA7B7470;

  return sub_1DA81B168(a1, v7);
}

uint64_t sub_1DA81B33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DA81B374, 0, 0);
}

uint64_t sub_1DA81B374()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  v12 = *(v0 + 72);
  v3 = type metadata accessor for TimeoutState();
  v4 = sub_1DA9417D4();
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  *(v5 + 16) = v1;
  *(v5 + 24) = v12;
  *(v5 + 40) = v6;
  *(v5 + 56) = v7;
  *(v5 + 72) = v2;
  v8 = *(MEMORY[0x1E69E87D8] + 4);
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_1DA81B4D4;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DBF8](v10, v3, v4, 0, 0, &unk_1DA958300, v5, v3);
}

uint64_t sub_1DA81B4D4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1DA81B5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v25;
  v8[11] = v26;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v10 = type metadata accessor for TimeoutState();
  v8[12] = v10;
  v11 = *(v10 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v8[14] = swift_task_alloc();
  v13 = *(*(sub_1DA941134() - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v14 = sub_1DA940CB4();
  v8[16] = v14;
  v15 = *(v14 - 8);
  v8[17] = v15;
  v16 = *(v15 + 64) + 15;
  v8[18] = swift_task_alloc();
  v17 = *(a8 - 8);
  v8[19] = v17;
  v8[20] = *(v17 + 64);
  v8[21] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v18 = sub_1DA941134();
  v8[22] = v18;
  v19 = *(v18 - 8);
  v8[23] = v19;
  v8[24] = *(v19 + 64);
  v8[25] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[26] = AssociatedTypeWitness;
  v21 = *(AssociatedTypeWitness - 8);
  v8[27] = v21;
  v8[28] = *(v21 + 64);
  v8[29] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730) - 8) + 64) + 15;
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA81B8F8, 0, 0);
}

uint64_t sub_1DA81B8F8()
{
  v1 = v0[30];
  v22 = v0[29];
  v29 = v0[28];
  v33 = v0[27];
  v36 = v0[26];
  v25 = v0[25];
  v30 = v0[24];
  v34 = v0[23];
  v24 = v0[22];
  v28 = v0[21];
  v31 = v0[20];
  v35 = v0[19];
  v32 = v0[18];
  v2 = v0[11];
  v4 = v0[9];
  v3 = v0[10];
  v23 = v0[8];
  v21 = v0[7];
  v5 = v0[5];
  v20 = v0[6];
  v26 = v0[4];
  v37 = v0[3];
  v6 = sub_1DA940D34();
  v19 = *(*(v6 - 8) + 56);
  v19(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;
  v7[6] = v2;
  v7[7] = v26;
  v7[8] = v5;
  v27 = sub_1DA940CD4();

  sub_1DA81C4AC(v1, &unk_1DA958318, v7, v27);
  sub_1DA81D190(v1);
  v19(v1, 1, 1, v6);
  (*(v33 + 16))(v22, v20, v36);
  (*(v34 + 16))(v25, v21, v24);
  (*(v35 + 16))(v28, v23, v4);
  v8 = (*(v33 + 80) + 56) & ~*(v33 + 80);
  v9 = (v29 + *(v34 + 80) + v8) & ~*(v34 + 80);
  v10 = (v30 + *(v35 + 80) + v9) & ~*(v35 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v4;
  *(v11 + 5) = v3;
  *(v11 + 6) = v2;
  (*(v33 + 32))(&v11[v8], v22, v36);
  (*(v34 + 32))(&v11[v9], v25, v24);
  (*(v35 + 32))(&v11[v10], v28, v4);
  sub_1DA81C4AC(v1, &unk_1DA958328, v11, v27);
  sub_1DA81D190(v1);
  v12 = *v37;
  sub_1DA940C94();
  v13 = *(MEMORY[0x1E69E8588] + 4);
  v14 = swift_task_alloc();
  v0[31] = v14;
  *v14 = v0;
  v14[1] = sub_1DA81BCA0;
  v15 = v0[18];
  v16 = v0[15];
  v17 = v0[16];

  return MEMORY[0x1EEE6D8A8](v16, 0, 0, v17);
}

uint64_t sub_1DA81BCA0()
{
  v1 = *(*v0 + 248);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1DA81BD9C, 0, 0);
}

uint64_t sub_1DA81BD9C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = (*(v3 + 48))(v1, 1, v2);
  if (v4 == 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6D8A8](v4, v5, v6, v7);
  }

  (*(v3 + 32))(*(v0 + 112), v1, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(v0 + 112);
    v9 = *v8;
    if (v8[1])
    {
      v10 = *(v0 + 80);
      v11 = *(v0 + 16);
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
      *v11 = v9;
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
      sub_1DA9417D4();
      swift_storeEnumTagMultiPayload();
      goto LABEL_12;
    }

    if ((v9 & 1) == 0)
    {
      v19 = *(v0 + 80);
      v20 = *(v0 + 16);
      (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
      sub_1DA81D404();
      *v20 = swift_allocError();
      goto LABEL_11;
    }

    v16 = *(MEMORY[0x1E69E8588] + 4);
    v17 = swift_task_alloc();
    *(v0 + 248) = v17;
    *v17 = v0;
    v17[1] = sub_1DA81BCA0;
    v18 = *(v0 + 144);
    v4 = *(v0 + 120);
    v7 = *(v0 + 128);
    v5 = 0;
    v6 = 0;

    return MEMORY[0x1EEE6D8A8](v4, v5, v6, v7);
  }

  v12 = *(v0 + 112);
  v13 = *(v0 + 80);
  v14 = *(v0 + 16);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  v15 = sub_1DA9417D4();
  (*(*(v15 - 8) + 32))(v14, v12, v15);
LABEL_12:
  v21 = *(v0 + 232);
  v22 = *(v0 + 240);
  v23 = *(v0 + 200);
  v24 = *(v0 + 168);
  v25 = *(v0 + 144);
  v27 = *(v0 + 112);
  v26 = *(v0 + 120);
  v28 = *(v0 + 80);
  v29 = **(v0 + 24);
  type metadata accessor for TimeoutState();
  sub_1DA940CC4();

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1DA81C0A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a1;
  v7[3] = a7;
  v9 = *(a7 - 8);
  v7[4] = v9;
  v10 = *(v9 + 64) + 15;
  v11 = swift_task_alloc();
  v7[5] = v11;
  v15 = (a4 + *a4);
  v12 = a4[1];
  v13 = swift_task_alloc();
  v7[6] = v13;
  *v13 = v7;
  v13[1] = sub_1DA81C1FC;

  return v15(v11);
}

uint64_t sub_1DA81C1FC()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1DA81C3E8;
  }

  else
  {
    v3 = sub_1DA81C310;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA81C310()
{
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  sub_1DA9417D4();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TimeoutState();
  swift_storeEnumTagMultiPayload();
  v1 = v0[5];

  v2 = v0[1];

  return v2();
}

uint64_t sub_1DA81C3E8()
{
  v1 = *(v0 + 24);
  **(v0 + 16) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  sub_1DA9417D4();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for TimeoutState();
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 40);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1DA81C4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v24 - v12;
  sub_1DA81D458(a1, v24 - v12);
  v14 = sub_1DA940D34();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1DA81D190(v13);
    if (*(a3 + 16))
    {
LABEL_3:
      v16 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_1DA940C34();
      v19 = v18;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1DA940D24();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  v19 = 0;
LABEL_6:
  v20 = *v5;
  v21 = swift_allocObject();
  v21[2] = *(a4 + 16);
  v21[3] = a2;
  v21[4] = a3;
  v22 = (v19 | v17);
  if (v19 | v17)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v17;
    v25[3] = v19;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v20;
  swift_task_create();
}

uint64_t sub_1DA81C6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a8;
  v13 = *(MEMORY[0x1E69E86D0] + 4);
  v14 = swift_task_alloc();
  v8[4] = v14;
  *v14 = v8;
  v14[1] = sub_1DA81C77C;

  return MEMORY[0x1EEE6DA68](a4, a5, a6, a7);
}

uint64_t sub_1DA81C77C()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1DA81C90C;
  }

  else
  {
    v3 = sub_1DA81C890;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DA81C890()
{
  v2 = v0[2];
  v1 = v0[3];
  *v2 = 0;
  *(v2 + 8) = 0;
  type metadata accessor for TimeoutState();
  swift_storeEnumTagMultiPayload();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1DA81C90C()
{
  v1 = sub_1DA940E04();
  v2 = v0[5];
  if (v1)
  {

    v2 = 1;
  }

  v4 = v0[2];
  v3 = v0[3];
  *v4 = v2;
  *(v4 + 8) = (v1 & 1) == 0;
  type metadata accessor for TimeoutState();
  swift_storeEnumTagMultiPayload();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1DA81C9A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

uint64_t timeout<A>(until:tolerance:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a4;
  *(v8 + 72) = a6;
  *(v8 + 33) = a5;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *(v8 + 40) = a1;
  v9 = sub_1DA941474();
  *(v8 + 96) = v9;
  v10 = *(v9 - 8);
  *(v8 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA81CB48, 0, 0);
}

uint64_t sub_1DA81CB48()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 33);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v2 & 1;
  sub_1DA941464();
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  sub_1DA81CE28();
  *v3 = v0;
  v3[1] = sub_1DA81CC1C;
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v9 = *(v0 + 48);
  v10 = *(v0 + 40);

  return timeout<A, B>(until:tolerance:clock:operation:)(v10, v9, v0 + 16, v4, v7, v8, v5, v6);
}

uint64_t sub_1DA81CC1C()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v6 = *v1;
  v6[16] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA81CDC4, 0, 0);
  }

  else
  {
    v7 = v6[14];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_1DA81CDC4()
{
  v1 = v0[14];

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

unint64_t sub_1DA81CE28()
{
  result = qword_1ECBD4D30;
  if (!qword_1ECBD4D30)
  {
    sub_1DA941474();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4D30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeadlineExceededError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DeadlineExceededError(_WORD *result, int a2, int a3)
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

uint64_t sub_1DA81CF78(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v15 = v2[2];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v12 = v2[8];
  v11 = v2[9];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1DA7B7660;

  return sub_1DA81B5E4(a1, a2, v8, v9, v10, v12, v11, v15);
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

uint64_t sub_1DA81D0B4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1DA7B7660;

  return sub_1DA81C0A8(a1, v6, v7, v9, v10, v4, v5);
}

uint64_t sub_1DA81D190(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA81D1F8(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v18 = v1[5];
  v6 = v1[6];
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  swift_getAssociatedTypeWitness();
  v10 = *(sub_1DA941134() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (v11 + *(v10 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1DA7B7470;

  return sub_1DA81C6AC(a1, v13, v14, v1 + v8, v1 + v11, v1 + v12, v5, v18);
}

unint64_t sub_1DA81D404()
{
  result = qword_1ECBD4D38[0];
  if (!qword_1ECBD4D38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECBD4D38);
  }

  return result;
}

uint64_t sub_1DA81D458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA81D4C8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA7B7568;

  return v7(a1);
}

uint64_t sub_1DA81D5C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DA7B7660;

  return sub_1DA81D4C8(a1, v5);
}

void sub_1DA81D690(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
  sub_1DA9417D4();
  if (v2 <= 0x3F)
  {
    sub_1DA81DA20();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1DA81D72C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= 8)
  {
    v3 = 8;
  }

  v4 = 9;
  if (v3 + 1 > 9)
  {
    v4 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v9 < 2)
    {
LABEL_27:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_27;
  }

LABEL_16:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1DA81D854(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (v5 + 1 > 9)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 9;
  }

  v7 = v6 + 1;
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v7 <= 3)
  {
    v11 = ((a3 + ~(-1 << (8 * v7)) - 254) >> (8 * v7)) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v7 >= 4)
    {
      bzero(a1, v6 + 1);
      *a1 = v9;
      v10 = 1;
      if (v8 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v10 = (v9 >> (8 * v7)) + 1;
    if (v6 != -1)
    {
      v13 = v9 & ~(-1 << (8 * v7));
      bzero(a1, v7);
      if (v7 != 3)
      {
        if (v7 == 2)
        {
          *a1 = v13;
          if (v8 > 1)
          {
LABEL_42:
            if (v8 == 2)
            {
              *&a1[v7] = v10;
            }

            else
            {
              *&a1[v7] = v10;
            }

            return;
          }
        }

        else
        {
          *a1 = v9;
          if (v8 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v8)
        {
          a1[v7] = v10;
        }

        return;
      }

      *a1 = v13;
      a1[2] = BYTE2(v13);
    }

    if (v8 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v8 <= 1)
  {
    if (v8)
    {
      a1[v7] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v6] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v8 == 2)
  {
    *&a1[v7] = 0;
    goto LABEL_27;
  }

  *&a1[v7] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

void sub_1DA81DA20()
{
  if (!qword_1ECBD4DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6AB0, qword_1DA95D940);
    v0 = sub_1DA9417D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBD4DC0);
    }
  }
}

uint64_t sub_1DA81DAC4()
{
  v1 = sub_1DA93F834();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E08, &qword_1DA958750);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E10, &unk_1DA958758);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v32 - v12;
  v14 = sub_1DA9401F4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NotificationPipelineAnalytics.Item(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA822E78(v0, v22, type metadata accessor for NotificationPipelineAnalytics.Item);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    return 0;
  }

  v33 = v2;
  (*(v15 + 32))(v18, v22, v14);
  sub_1DA940044();
  v24 = sub_1DA940004();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v9, 1, v24) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v26 = &qword_1ECBD4E08;
    v27 = &qword_1DA958750;
    v28 = v9;
  }

  else
  {
    sub_1DA93FFF4();
    (*(v25 + 8))(v9, v24);
    v29 = sub_1DA93F844();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v13, 1, v29) != 1)
    {
      sub_1DA93F814();
      (*(v30 + 8))(v13, v29);
      v31 = sub_1DA93F824();
      (*(v33 + 8))(v5, v1);
      (*(v15 + 8))(v18, v14);
      return v31;
    }

    (*(v15 + 8))(v18, v14);
    v26 = &qword_1ECBD4E10;
    v27 = &unk_1DA958758;
    v28 = v13;
  }

  sub_1DA7BA120(v28, v26, v27);
  return 0;
}

uint64_t sub_1DA81DF08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E08, &qword_1DA958750);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18 - v3;
  v5 = sub_1DA9401F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NotificationPipelineAnalytics.Item(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA822E78(v0, v13, type metadata accessor for NotificationPipelineAnalytics.Item);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    return 2;
  }

  (*(v6 + 32))(v9, v13, v5);
  sub_1DA940044();
  v14 = sub_1DA940004();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {
    (*(v6 + 8))(v9, v5);
    sub_1DA7BA120(v4, &qword_1ECBD4E08, &qword_1DA958750);
    return 2;
  }

  v17 = sub_1DA93FFA4();
  (*(v6 + 8))(v9, v5);
  (*(v15 + 8))(v4, v14);
  return v17;
}

unint64_t sub_1DA81E190@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA82238C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DA81E1BC(int a1)
{
  v2 = v1;
  v69 = a1;
  v65 = sub_1DA940534();
  v64 = *(v65 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DA9404F4();
  v67 = *(v5 - 8);
  v68 = v5;
  v6 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E00, &unk_1DA958720);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v61 - v10;
  v12 = type metadata accessor for LogSignpost();
  v72 = *(v12 - 1);
  v73 = v12;
  v13 = *(v72 + 8);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v61 - v17;
  v19 = sub_1DA93FAF4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v61 - v25;
  v27 = OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_startDate;
  swift_beginAccess();
  sub_1DA822F48(v2 + v27, v18, &unk_1ECBD6530, &unk_1DA958820);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1DA7BA120(v18, &unk_1ECBD6530, &unk_1DA958820);
    v77 = 0;
    v78 = 0xE000000000000000;
    sub_1DA941364();
    MEMORY[0x1E1271BD0](0xD000000000000050, 0x80000001DA950C40);
    LOBYTE(v75) = *(v2 + 16);
    v28 = sub_1DA940A74();
    MEMORY[0x1E1271BD0](v28);

    sub_1DA84AB4C(v77, v78);

    v30 = 7;
    v31 = v2;
LABEL_19:
    *(v31 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_status) = v30;
    return result;
  }

  (*(v20 + 32))(v26, v18, v19);
  sub_1DA93FAE4();
  sub_1DA93F9D4();
  v33 = v32;
  v34 = *(v20 + 8);
  v34(v24, v19);
  sub_1DA93F9D4();
  v36 = v2 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_duration;
  *v36 = v33 - v35;
  *(v36 + 8) = 0;
  v37 = OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_signpost;
  swift_beginAccess();
  sub_1DA822F48(v2 + v37, v11, &qword_1ECBD4E00, &unk_1DA958720);
  v38 = v73;
  v31 = v2;
  if ((*(v72 + 6))(v11, 1, v73) == 1)
  {
    sub_1DA7BA120(v11, &qword_1ECBD4E00, &unk_1DA958720);
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_1DA941364();
    MEMORY[0x1E1271BD0](0xD00000000000004FLL, 0x80000001DA950CA0);
    v74[15] = *(v2 + 16);
    v39 = sub_1DA940A74();
    MEMORY[0x1E1271BD0](v39);

    sub_1DA84AB4C(v75, v76);

    result = (v34)(v26, v19);
    v30 = 7;
    goto LABEL_19;
  }

  v72 = v34;
  v40 = v70;
  sub_1DA822EE0(v11, v70, type metadata accessor for LogSignpost);
  v41 = *(v38 + 6);
  v73 = *v40;
  v42 = *(v40 + 16);
  v43 = *(v40 + 24);
  v44 = sub_1DA940514();
  v45 = v71;
  sub_1DA940544();
  v63 = sub_1DA941074();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {

    (*(v67 + 8))(v45, v68);
    v72(v26, v19);
    v47 = v40;
LABEL_18:
    result = sub_1DA822D50(v47, type metadata accessor for LogSignpost);
    v30 = v69;
    goto LABEL_19;
  }

  if ((v42 & 1) == 0)
  {
    if (v73)
    {
      v46 = v66;
LABEL_14:

      sub_1DA940574();

      v48 = v64;
      v49 = v65;
      v50 = (*(v64 + 88))(v46, v65) == *MEMORY[0x1E69E93E8];
      v62 = v26;
      if (v50)
      {
        v53 = 0;
        v52 = 0;
        v51 = "[Error] Interval already ended";
      }

      else
      {
        (*(v48 + 8))(v46, v49);
        v51 = "%s";
        v52 = 2;
        v53 = 1;
      }

      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v75 = v55;
      *v54 = v52;
      *(v54 + 1) = v53;
      *(v54 + 2) = 2080;
      v56 = sub_1DA941374();
      v58 = sub_1DA7AE6E8(v56, v57, &v75);

      *(v54 + 4) = v58;
      v59 = v71;
      v60 = sub_1DA9404D4();
      _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v44, v63, v60, v73, v51, v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1E12739F0](v55, -1, -1);
      MEMORY[0x1E12739F0](v54, -1, -1);

      (*(v67 + 8))(v59, v68);
      v72(v62, v19);
      v47 = v70;
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v73 >> 32)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v46 = v66;
  if ((v73 & 0xFFFFF800) != 0xD800)
  {
    if (v73 >> 16 <= 0x10)
    {
      v73 = v74;
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1DA81EA1C()
{
  sub_1DA7BA120(v0 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_signpost, &qword_1ECBD4E00, &unk_1DA958720);
  sub_1DA7BA120(v0 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_startDate, &unk_1ECBD6530, &unk_1DA958820);
  sub_1DA822D50(v0 + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_logger, type metadata accessor for NotificationPipelineRequestLogger);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA81EAD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  v6 = v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logged;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logged));
  if ((*(v6 + 4) & 1) == 0)
  {
    sub_1DA84AB4C(0xD000000000000048, 0x80000001DA950E30);
    v7 = sub_1DA940D34();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
    *(v8 + 48) = 1;
    sub_1DA8DB00C(0, 0, v5, &unk_1DA95D1A0, v8);
  }

  os_unfair_lock_unlock(v6);
  sub_1DA822D50(v0 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_item, type metadata accessor for NotificationPipelineAnalytics.Item);
  v9 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_startDate;
  v10 = sub_1DA93FAF4();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  sub_1DA822D50(v1 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_signpost, type metadata accessor for LogSignpost);
  v11 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_steps);

  v12 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_intelligenceServiceAnalytics);

  sub_1DA822D50(v1 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logger, type metadata accessor for NotificationPipelineRequestLogger);
  return v1;
}

uint64_t sub_1DA81ECFC()
{
  sub_1DA81EAD4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA81ED7C()
{
  result = type metadata accessor for NotificationPipelineAnalytics.Item(319);
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_1DA93FAF4();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = type metadata accessor for LogSignpost();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = type metadata accessor for NotificationPipelineRequestLogger();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_1DA81EF2C()
{
  sub_1DA81F088(319, qword_1EE113B80, type metadata accessor for LogSignpost);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1DA81F088(319, &qword_1EE114C80, MEMORY[0x1E6969530]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for NotificationPipelineRequestLogger();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1DA81F088(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DA941134();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DA81F0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 1096) = a5;
  *(v5 + 800) = a4;
  v6 = type metadata accessor for IntelligenceServiceAnalytics.Interval(0);
  *(v5 + 808) = v6;
  v7 = *(v6 - 8);
  *(v5 + 816) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 824) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DF8, &qword_1DA965280) - 8) + 64) + 15;
  *(v5 + 832) = swift_task_alloc();
  *(v5 + 840) = swift_task_alloc();
  v10 = sub_1DA9401F4();
  *(v5 + 848) = v10;
  v11 = *(v10 - 8);
  *(v5 + 856) = v11;
  v12 = *(v11 + 64) + 15;
  *(v5 + 864) = swift_task_alloc();
  *(v5 + 872) = swift_task_alloc();
  *(v5 + 880) = swift_task_alloc();
  *(v5 + 888) = swift_task_alloc();
  v13 = *(*(type metadata accessor for NotificationPipelineAnalytics.Item(0) - 8) + 64) + 15;
  *(v5 + 896) = swift_task_alloc();
  *(v5 + 904) = swift_task_alloc();
  *(v5 + 912) = swift_task_alloc();
  *(v5 + 920) = swift_task_alloc();
  *(v5 + 928) = swift_task_alloc();
  *(v5 + 936) = swift_task_alloc();
  v14 = sub_1DA93FAF4();
  *(v5 + 944) = v14;
  v15 = *(v14 - 8);
  *(v5 + 952) = v15;
  v16 = *(v15 + 64) + 15;
  *(v5 + 960) = swift_task_alloc();
  v17 = sub_1DA940534();
  *(v5 + 968) = v17;
  v18 = *(v17 - 8);
  *(v5 + 976) = v18;
  v19 = *(v18 + 64) + 15;
  *(v5 + 984) = swift_task_alloc();
  v20 = sub_1DA9404F4();
  *(v5 + 992) = v20;
  v21 = *(v20 - 8);
  *(v5 + 1000) = v21;
  v22 = *(v21 + 64) + 15;
  *(v5 + 1008) = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4FA0, &unk_1DA958730) - 8) + 64) + 15;
  *(v5 + 1016) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA81F418, 0, 0);
}

uint64_t sub_1DA81F418()
{
  v61 = v0;
  v1 = v0[100] + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logged;
  os_unfair_lock_lock(v1);
  if (*(v1 + 4) == 1)
  {
    v2 = v0[127];
    v3 = v0[100] + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logger;
    sub_1DA84AB4C(0xD000000000000032, 0x80000001DA9511F0);
    v4 = sub_1DA940D34();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = swift_allocObject();
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
    *(v5 + 48) = 0;
    sub_1DA8DB00C(0, 0, v2, &unk_1DA958748, v5);
  }

  else
  {
    *(v1 + 4) = 1;
  }

  v6 = v0[126];
  v7 = v0[100];
  os_unfair_lock_unlock(v1);
  v8 = v7 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_signpost;
  v9 = type metadata accessor for LogSignpost();
  v10 = *v8;
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = v8 + *(v9 + 24);
  v14 = sub_1DA940514();
  sub_1DA940544();
  v15 = sub_1DA941074();
  result = sub_1DA941124();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  v59 = v15;
  if (v11)
  {
    if (v10 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v10 & 0xFFFFF800) == 0xD800)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (v10 >> 16 <= 0x10)
      {
        v10 = (v0 + 99);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v10)
  {
LABEL_13:
    v20 = v0[123];
    v21 = v0[122];
    v22 = v0[121];

    sub_1DA940574();

    if ((*(v21 + 88))(v20, v22) == *MEMORY[0x1E69E93E8])
    {
      v23 = 0;
      v24 = 0;
      v25 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[122] + 8))(v0[123], v0[121]);
      v25 = "%s";
      v24 = 2;
      v23 = 1;
    }

    v26 = v0[126];
    v27 = v0[125];
    v58 = v0[124];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v60 = v29;
    *v28 = v24;
    *(v28 + 1) = v23;
    *(v28 + 2) = 2080;
    v30 = sub_1DA941374();
    v32 = sub_1DA7AE6E8(v30, v31, &v60);

    *(v28 + 4) = v32;
    v33 = sub_1DA9404D4();
    _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v14, v59, v33, v10, v25, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1E12739F0](v29, -1, -1);
    MEMORY[0x1E12739F0](v28, -1, -1);

    (*(v27 + 8))(v26, v58);
    goto LABEL_17;
  }

  __break(1u);
LABEL_8:
  v17 = v0[126];
  v18 = v0[125];
  v19 = v0[124];

  (*(v18 + 8))(v17, v19);
LABEL_17:
  v34 = v0[120];
  v35 = v0[119];
  v36 = v0[118];
  v37 = v0[117];
  v38 = v0[107];
  v39 = v0[106];
  v40 = v0[100];
  sub_1DA93FAE4();
  sub_1DA93F9D4();
  v42 = v41;
  (*(v35 + 8))(v34, v36);
  sub_1DA93F9D4();
  v44 = v42 - v43;
  v0[128] = sub_1DA940A04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE0, &qword_1DA9586F0);
  inited = swift_initStackObject();
  v0[129] = inited;
  *(inited + 16) = xmmword_1DA958360;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 56) = 1684957547;
  *(inited + 64) = 0xE400000000000000;
  v46 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_item;
  v0[130] = OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_item;
  sub_1DA822E78(v40 + v46, v37, type metadata accessor for NotificationPipelineAnalytics.Item);
  v47 = *(v38 + 48);
  v0[131] = v47;
  v0[132] = (v38 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v48 = 1;
  if (v47(v37, 1, v39) != 1)
  {
    sub_1DA822D50(v0[117], type metadata accessor for NotificationPipelineAnalytics.Item);
    v48 = 0;
  }

  v49 = v0[116];
  v50 = v0[106];
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 80) = 0x6449656C646E7562;
  *(inited + 88) = 0xE800000000000000;
  sub_1DA822E78(v40 + v46, v49, type metadata accessor for NotificationPipelineAnalytics.Item);
  if (v47(v49, 1, v50) == 1)
  {
    v51 = 0xEF4445544E454D45;
    v52 = 0x4C504D4920544F4ELL;
  }

  else
  {
    v53 = v0[111];
    v54 = v0[107];
    v55 = v0[106];
    (*(v54 + 32))(v53, v0[116], v55);
    v52 = sub_1DA940014();
    v51 = v56;
    (*(v54 + 8))(v53, v55);
  }

  v0[133] = v51;
  v57 = swift_task_alloc();
  v0[134] = v57;
  *v57 = v0;
  v57[1] = sub_1DA81FA78;

  return sub_1DA820D9C(v52, v51);
}

uint64_t sub_1DA81FA78(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 1072);
  v5 = *(*v2 + 1064);
  v7 = *v2;
  *(v3 + 1080) = a1;
  *(v3 + 1088) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DA81FB9C, 0, 0);
}

uint64_t sub_1DA81FB9C()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v187 = *(v0 + 1056);
  v3 = *(v0 + 1048);
  v4 = *(v0 + 1040);
  v5 = *(v0 + 1032);
  v6 = *(v0 + 920);
  v7 = *(v0 + 848);
  v8 = *(v0 + 800);
  v9 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v10 = sub_1DA940A04();

  v11 = [v9 initWithString_];

  v5[12] = v11;
  v5[13] = 0x6874706564;
  v5[14] = 0xE500000000000000;
  sub_1DA822E78(v8 + v4, v6, type metadata accessor for NotificationPipelineAnalytics.Item);
  if (v3(v6, 1, v7) == 1)
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  else
  {
    sub_1DA822D50(*(v0 + 920), type metadata accessor for NotificationPipelineAnalytics.Item);
    v12 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  v13 = *(v0 + 1056);
  v14 = *(v0 + 1048);
  v15 = *(v0 + 1040);
  v16 = *(v0 + 1032);
  v17 = *(v0 + 912);
  v18 = *(v0 + 848);
  v19 = *(v0 + 800);
  v16[15] = v12;
  v16[16] = 0x656C7469546D7573;
  v16[17] = 0xEF736874676E654CLL;
  sub_1DA822E78(v19 + v15, v17, type metadata accessor for NotificationPipelineAnalytics.Item);
  if (v14(v17, 1, v18) == 1)
  {
    v20 = 0;
  }

  else
  {
    (*(*(v0 + 856) + 32))(*(v0 + 880), *(v0 + 912), *(v0 + 848));
    sub_1DA940144();
    if (v21)
    {
      v20 = sub_1DA940AC4();
    }

    else
    {
      v20 = 0;
    }

    (*(*(v0 + 856) + 8))(*(v0 + 880), *(v0 + 848));
  }

  v22 = *(v0 + 1056);
  v23 = *(v0 + 1048);
  v24 = *(v0 + 1040);
  v25 = *(v0 + 1032);
  v26 = *(v0 + 904);
  v27 = *(v0 + 848);
  v28 = *(v0 + 800);
  v25[18] = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v25[19] = 0xD000000000000012;
  v25[20] = 0x80000001DA950EA0;
  sub_1DA822E78(v28 + v24, v26, type metadata accessor for NotificationPipelineAnalytics.Item);
  if (v23(v26, 1, v27) == 1)
  {
    v29 = 0;
  }

  else
  {
    (*(*(v0 + 856) + 32))(*(v0 + 872), *(v0 + 904), *(v0 + 848));
    sub_1DA9401E4();
    if (v30)
    {
      v29 = sub_1DA940AC4();
    }

    else
    {
      v29 = 0;
    }

    (*(*(v0 + 856) + 8))(*(v0 + 872), *(v0 + 848));
  }

  v31 = *(v0 + 1056);
  v32 = *(v0 + 1048);
  v33 = *(v0 + 1040);
  v34 = *(v0 + 1032);
  v35 = *(v0 + 896);
  v36 = *(v0 + 848);
  v37 = *(v0 + 800);
  *(v34 + 168) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  strcpy((v34 + 176), "sumBodyLengths");
  *(v34 + 191) = -18;
  sub_1DA822E78(v37 + v33, v35, type metadata accessor for NotificationPipelineAnalytics.Item);
  if (v32(v35, 1, v36) == 1)
  {
    v38 = 0;
    v39 = &selRef_bulletinGroupingSetting;
    v40 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
    v41 = 0x1E695D000;
    v42 = 0x1E696A000;
  }

  else
  {
    (*(*(v0 + 856) + 32))(*(v0 + 864), *(v0 + 896), *(v0 + 848));
    sub_1DA940134();
    v39 = &selRef_bulletinGroupingSetting;
    v41 = 0x1E695D000uLL;
    if (v43)
    {
      v38 = sub_1DA940AC4();
    }

    else
    {
      v38 = 0;
    }

    v40 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
    v42 = 0x1E696A000uLL;
    (*(*(v0 + 856) + 8))(*(v0 + 864), *(v0 + 848));
  }

  v44 = *(v0 + 1040);
  v45 = *(v0 + 1032);
  v46 = *(v0 + 800);
  v45[24] = [objc_allocWithZone(*(v42 + 3480)) v40[396]];
  v45[25] = 0xD000000000000014;
  v45[26] = 0x80000001DA950A90;
  v47 = sub_1DA81DAC4();
  if (v48)
  {
    v49 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  else
  {
    v49 = [objc_allocWithZone(*(v42 + 3480)) v40[396]];
  }

  v50 = *(v0 + 1040);
  v51 = *(v0 + 1032);
  v52 = *(v0 + 800);
  v51[27] = v49;
  v51[28] = 0x746E656772557369;
  v51[29] = 0xE800000000000000;
  v53 = sub_1DA81DF08();
  if (v53 == 2)
  {
    v54 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  else
  {
    v54 = [objc_allocWithZone(*(v42 + 3480)) initWithBool_];
  }

  v55 = *(v0 + 1032);
  v56 = *(v0 + 1096);
  v57 = *(v0 + 800);
  v55[30] = v54;
  v55[31] = 0x737574617473;
  v55[32] = 0xE600000000000000;
  v55[33] = [objc_allocWithZone(*(v42 + 3480)) v40[396]];
  v55[34] = 0x6E6F69746361;
  v55[35] = 0xE600000000000000;
  v55[36] = [objc_allocWithZone(*(v42 + 3480)) v40[396]];
  v55[37] = 0xD00000000000001ALL;
  v55[38] = 0x80000001DA950EC0;
  v58 = *(v57 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_steps);
  if (*(v58 + 16) && (v59 = sub_1DA7BB33C(0), (v60 & 1) != 0) && (v61 = *(*(v58 + 56) + 8 * v59) + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_duration, (*(v61 + 8) & 1) == 0))
  {
    v62 = [objc_allocWithZone(*(v42 + 3480)) initWithDouble_];
  }

  else
  {
    v62 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v63 = *(v0 + 1032);
  v63[39] = v62;
  v63[40] = 0xD000000000000018;
  v63[41] = 0x80000001DA950EE0;
  if (*(v58 + 16) && (v64 = sub_1DA7BB33C(0), (v65 & 1) != 0))
  {
    v66 = [objc_allocWithZone(*(v42 + 3480)) v40[396]];
  }

  else
  {
    v66 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v67 = *(v0 + 1032);
  v67[42] = v66;
  v67[43] = 0xD00000000000001ALL;
  v67[44] = 0x80000001DA950F00;
  if (*(v58 + 16) && (v68 = sub_1DA7BB33C(1u), (v69 & 1) != 0) && (v70 = *(*(v58 + 56) + 8 * v68) + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_duration, (*(v70 + 8) & 1) == 0))
  {
    v71 = [objc_allocWithZone(*(v42 + 3480)) initWithDouble_];
  }

  else
  {
    v71 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v72 = *(v0 + 1032);
  v72[45] = v71;
  v72[46] = 0xD000000000000018;
  v72[47] = 0x80000001DA950F20;
  if (*(v58 + 16) && (v73 = sub_1DA7BB33C(1u), (v74 & 1) != 0))
  {
    v75 = [objc_allocWithZone(*(v42 + 3480)) v40[396]];
  }

  else
  {
    v75 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v76 = *(v0 + 1032);
  v76[48] = v75;
  v76[49] = 0xD00000000000001CLL;
  v76[50] = 0x80000001DA950F40;
  if (*(v58 + 16) && (v77 = sub_1DA7BB33C(2u), (v78 & 1) != 0) && (v79 = *(*(v58 + 56) + 8 * v77) + OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_duration, (*(v79 + 8) & 1) == 0))
  {
    v80 = [objc_allocWithZone(*(v42 + 3480)) initWithDouble_];
  }

  else
  {
    v80 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v81 = *(v0 + 1032);
  v81[51] = v80;
  v81[52] = 0xD00000000000001ALL;
  v81[53] = 0x80000001DA950F60;
  if (*(v58 + 16) && (v82 = sub_1DA7BB33C(2u), (v83 & 1) != 0))
  {
    v84 = [objc_allocWithZone(*(v42 + 3480)) v40[396]];
  }

  else
  {
    v84 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v85 = *(v0 + 1032);
  v86 = *(v0 + 800);
  v85[54] = v84;
  v85[55] = 0xD000000000000023;
  v85[56] = 0x80000001DA950F80;
  v87 = OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_intelligenceServiceAnalytics;
  v88 = *(v86 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_intelligenceServiceAnalytics);
  if (v88)
  {
    v89 = *(v0 + 840);
    v90 = *(v0 + 816);
    v91 = *(v0 + 808);
    v92 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexingInterval;
    swift_beginAccess();
    sub_1DA822F48(v88 + v92, v89, &qword_1ECBD4DF8, &qword_1DA965280);
    v93 = (*(v90 + 48))(v89, 1, v91);
    v94 = *(v0 + 840);
    if (!v93)
    {
      v96 = *(v0 + 824);
      v97 = *(v0 + 808);
      v98 = *(v0 + 840);
      sub_1DA822E78(v94, v96, type metadata accessor for IntelligenceServiceAnalytics.Interval);
      sub_1DA7BA120(v98, &qword_1ECBD4DF8, &qword_1DA965280);
      v99 = v96 + *(v97 + 20);
      sub_1DA93F9D4();
      v101 = v100;
      sub_1DA93F9D4();
      v103 = v102;
      sub_1DA822D50(v96, type metadata accessor for IntelligenceServiceAnalytics.Interval);
      v95 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v41 = 0x1E695D000uLL;
      goto LABEL_57;
    }

    sub_1DA7BA120(v94, &qword_1ECBD4DF8, &qword_1DA965280);
    v41 = 0x1E695D000uLL;
  }

  v95 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
LABEL_57:
  v104 = *(v0 + 1032);
  v104[57] = v95;
  v104[58] = 0xD000000000000026;
  v104[59] = 0x80000001DA950FB0;
  v105 = *(v86 + v87);
  if (v105 && (v106 = (v105 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorDomain), v106[1]))
  {
    v107 = *v106;
    v108 = objc_allocWithZone(MEMORY[0x1E696AEC0]);

    v109 = sub_1DA940A04();
    v110 = [v108 initWithString_];
  }

  else
  {
    v110 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v111 = *(v0 + 1032);
  v111[60] = v110;
  v111[61] = 0xD000000000000025;
  v111[62] = 0x80000001DA950FE0;
  v112 = *(v86 + v87);
  if (v112 && (v113 = (v112 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorClass), v113[1]))
  {
    v114 = *v113;
    v115 = objc_allocWithZone(MEMORY[0x1E696AEC0]);

    v116 = sub_1DA940A04();
    v117 = [v115 initWithString_];
  }

  else
  {
    v117 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v118 = *(v0 + 1032);
  v118[63] = v117;
  v118[64] = 0xD000000000000024;
  v118[65] = 0x80000001DA951010;
  v119 = *(v86 + v87);
  if (v119 && (v120 = (v119 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorCode), v120[1]))
  {
    v121 = *v120;
    v122 = objc_allocWithZone(MEMORY[0x1E696AEC0]);

    v123 = sub_1DA940A04();
    v124 = [v122 initWithString_];
  }

  else
  {
    v124 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v125 = *(v0 + 1032);
  v125[66] = v124;
  v125[67] = 0xD00000000000002BLL;
  v125[68] = 0x80000001DA951040;
  v126 = *(v86 + v87);
  if (v126)
  {
    v127 = *(v0 + 832);
    v128 = *(v0 + 816);
    v129 = *(v0 + 808);
    v130 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_waitingForResultInterval;
    swift_beginAccess();
    sub_1DA822F48(v126 + v130, v127, &qword_1ECBD4DF8, &qword_1DA965280);
    v131 = (*(v128 + 48))(v127, 1, v129);
    v132 = *(v0 + 832);
    if (!v131)
    {
      v134 = *(v0 + 824);
      v135 = *(v0 + 808);
      v136 = *(v0 + 832);
      sub_1DA822E78(v132, v134, type metadata accessor for IntelligenceServiceAnalytics.Interval);
      sub_1DA7BA120(v136, &qword_1ECBD4DF8, &qword_1DA965280);
      v137 = v134 + *(v135 + 20);
      sub_1DA93F9D4();
      v139 = v138;
      sub_1DA93F9D4();
      v141 = v140;
      sub_1DA822D50(v134, type metadata accessor for IntelligenceServiceAnalytics.Interval);
      v133 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      v41 = 0x1E695D000uLL;
      goto LABEL_74;
    }

    sub_1DA7BA120(v132, &qword_1ECBD4DF8, &qword_1DA965280);
    v41 = 0x1E695D000uLL;
  }

  v133 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
LABEL_74:
  v142 = *(v0 + 1032);
  v142[69] = v133;
  v142[70] = 0xD000000000000033;
  v142[71] = 0x80000001DA951070;
  v142[72] = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  v142[73] = 0xD000000000000032;
  v142[74] = 0x80000001DA9510B0;
  v143 = *(v86 + v87);
  if (v143 && (v144 = (v143 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryStatus), (v144[1] & 1) == 0))
  {
    v145 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v40[396]];
  }

  else
  {
    v145 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v146 = *(v0 + 1032);
  v146[75] = v145;
  v146[76] = 0xD00000000000002CLL;
  v146[77] = 0x80000001DA9510F0;
  v147 = *(v86 + v87);
  if (v147 && (v148 = (v147 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_urgencyStatus), (v148[1] & 1) == 0))
  {
    v149 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v40[396]];
  }

  else
  {
    v149 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v150 = *(v0 + 1032);
  v150[78] = v149;
  v150[79] = 0xD000000000000027;
  v150[80] = 0x80000001DA951120;
  v151 = *(v86 + v87);
  if (v151 && (v152 = v151 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryTopLineLength, (*(v152 + 8) & 1) == 0))
  {
    v153 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v40[396]];
  }

  else
  {
    v153 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v154 = *(v0 + 1032);
  v154[81] = v153;
  v154[82] = 0xD00000000000001ELL;
  v154[83] = 0x80000001DA951150;
  v155 = *(v86 + v87);
  if (v155 && (v156 = *(v155 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_isHighlight), v156 != 2))
  {
    v157 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  else
  {
    v157 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v158 = *(v0 + 1032);
  v158[84] = v157;
  v158[85] = 0xD000000000000042;
  v158[86] = 0x80000001DA951170;
  v159 = *(v86 + v87);
  if (v159 && (v160 = *(v159 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_notWaitingForResultBecauseImportantNotification), v160 != 2))
  {
    v161 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  else
  {
    v161 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v162 = *(v0 + 1032);
  v162[87] = v161;
  v162[88] = 0xD000000000000026;
  v162[89] = 0x80000001DA9511C0;
  v163 = *(v86 + v87);
  if (v163 && (v164 = *(v163 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexSkippingReason), v164 != 9))
  {
    v165 = [objc_allocWithZone(MEMORY[0x1E696AD98]) v40[396]];
  }

  else
  {
    v165 = [objc_allocWithZone(*(v41 + 4016)) v39[296]];
  }

  v166 = *(v0 + 1032);
  v167 = *(v0 + 1024);
  v168 = *(v0 + 1016);
  v169 = *(v0 + 1008);
  v170 = *(v0 + 984);
  v171 = *(v0 + 960);
  v172 = *(v0 + 936);
  v173 = *(v0 + 928);
  v177 = *(v0 + 920);
  v178 = *(v0 + 912);
  v179 = *(v0 + 904);
  v180 = *(v0 + 896);
  v181 = *(v0 + 888);
  v182 = *(v0 + 880);
  v183 = *(v0 + 872);
  v184 = *(v0 + 864);
  v185 = *(v0 + 840);
  v186 = *(v0 + 832);
  v188 = *(v0 + 824);
  *(v166 + 720) = v165;
  sub_1DA847D94(v166);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE8, &qword_1DA9586F8);
  swift_arrayDestroy();
  sub_1DA822D04();
  v174 = sub_1DA940964();

  AnalyticsSendEvent();

  v175 = *(v0 + 8);

  return v175();
}

uint64_t sub_1DA820D9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DA820DBC, 0, 0);
}

uint64_t sub_1DA820DBC()
{
  sub_1DA9404A4();
  v0[4] = sub_1DA940494();
  v1 = *(MEMORY[0x1E69C5C78] + 4);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1DA820E6C;
  v4 = v0[2];
  v3 = v0[3];

  return MEMORY[0x1EEE2EF60](v4, v3);
}

uint64_t sub_1DA820E6C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DA820FD8, 0, 0);
  }

  else
  {
    v9 = *(v6 + 32);

    v10 = *(v8 + 8);

    return v10(a1, a2);
  }
}

uint64_t sub_1DA820FD8()
{
  v1 = v0[4];

  if (qword_1EE110E48 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_1DA9405A4();
  __swift_project_value_buffer(v3, qword_1EE11AD90);
  v4 = v2;
  v5 = sub_1DA940584();
  v6 = sub_1DA940F14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DA7A9000, v5, v6, "Failed to get redacted bundleId. %@", v8, 0xCu);
    sub_1DA7BA120(v9, &unk_1ECBD5430, &unk_1DA959190);
    MEMORY[0x1E12739F0](v9, -1, -1);
    MEMORY[0x1E12739F0](v8, -1, -1);
  }

  v12 = v0[6];

  v13 = v0[1];

  return v13(0xD000000000000013, 0x80000001DA950C20);
}

uint64_t sub_1DA821190(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x46654D6863746163;
    v5 = 1935764835;
    if (a1 != 2)
    {
      v5 = 0x6C61636974697263;
    }

    if (a1)
    {
      v4 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001CLL;
    if (a1 != 6)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000012;
    if (a1 != 4)
    {
      v2 = 0x437472656C416F6ELL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1DA8212CC()
{
  v1 = *v0;
  sub_1DA941764();
  MEMORY[0x1E1272850](v1);
  return sub_1DA941794();
}

uint64_t sub_1DA821314()
{
  v1 = *v0;
  sub_1DA941764();
  MEMORY[0x1E1272850](v1);
  return sub_1DA941794();
}

unint64_t sub_1DA821358@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DA822CF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DA82138C()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexingInterval;
  v2 = type metadata accessor for IntelligenceServiceAnalytics.Interval(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_waitingForResultInterval, 1, 1, v2);
  v4 = v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryTopLineLength;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_isHighlight) = 2;
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_notWaitingForResultBecauseImportantNotification) = 2;
  *(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexSkippingReason) = 9;
  v5 = v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_summaryStatus;
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_urgencyStatus;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorDomain);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorClass);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorCode);
  *v9 = 0;
  v9[1] = 0;
  return v0;
}

uint64_t sub_1DA8214C8()
{
  v1 = v0;
  v2 = sub_1DA93F8B4();
  v3 = [v2 domain];
  v4 = sub_1DA940A14();
  v6 = v5;

  v7 = (v1 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorDomain);
  v8 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorDomain + 8);
  *v7 = v4;
  v7[1] = v6;

  [v2 code];
  v9 = sub_1DA941614();
  v10 = (v1 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorCode);
  v11 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorCode + 8);
  *v10 = v9;
  v10[1] = v12;

  swift_getErrorValue();
  swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DF0, &unk_1DA958710);
  v13 = sub_1DA940A74();
  v15 = v14;

  v16 = (v1 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorClass);
  v17 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorClass + 8);
  *v16 = v13;
  v16[1] = v15;
}

uint64_t sub_1DA8215FC()
{
  sub_1DA7BA120(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_indexingInterval, &qword_1ECBD4DF8, &qword_1DA965280);
  sub_1DA7BA120(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_waitingForResultInterval, &qword_1ECBD4DF8, &qword_1DA965280);
  v1 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorDomain + 8);

  v2 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorClass + 8);

  v3 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore28IntelligenceServiceAnalytics_errorCode + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DA821704()
{
  sub_1DA81F088(319, qword_1EE111A38, type metadata accessor for IntelligenceServiceAnalytics.Interval);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DA82180C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceServiceAnalytics.IndexSkippingReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligenceServiceAnalytics.IndexSkippingReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DA8219BC()
{
  result = sub_1DA93FAF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationPipelineAnalytics.StepAnalytics.Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationPipelineAnalytics.StepAnalytics.Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationPipelineAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NotificationPipelineAction(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DA821CF0()
{
  v0 = sub_1DA9401F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1DA821D4C()
{
  result = qword_1EE111580;
  if (!qword_1EE111580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE111580);
  }

  return result;
}

unint64_t sub_1DA821DA4()
{
  result = qword_1ECBD4DD0;
  if (!qword_1ECBD4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4DD0);
  }

  return result;
}

unint64_t sub_1DA821DFC()
{
  result = qword_1ECBD4DD8;
  if (!qword_1ECBD4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4DD8);
  }

  return result;
}

uint64_t sub_1DA821E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 136) = a6;
  *(v6 + 96) = a4;
  *(v6 + 104) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DA821E74, 0, 0);
}

uint64_t sub_1DA821E74()
{
  v1 = *(v0 + 104);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = sub_1DA82208C;
    v3 = *(v0 + 96);

    return sub_1DA820D9C(v3, v1);
  }

  else
  {
    v5 = *(v0 + 136);
    v6 = sub_1DA940A04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE0, &qword_1DA9586F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DA958370;
    *(inited + 32) = 0x6575737369;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(inited + 56) = 0x6449656C646E7562;
    *(inited + 64) = 0xE800000000000000;
    *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    sub_1DA847D94(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE8, &qword_1DA9586F8);
    swift_arrayDestroy();
    sub_1DA822D04();
    v8 = sub_1DA940964();

    AnalyticsSendEvent();

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1DA82208C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v6 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DA82218C, 0, 0);
}

uint64_t sub_1DA82218C()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = sub_1DA940A04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE0, &qword_1DA9586F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA958370;
  *(inited + 32) = 0x6575737369;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 0x6449656C646E7562;
  *(inited + 64) = 0xE800000000000000;
  if (v1)
  {
    v6 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
    v7 = sub_1DA940A04();
    v8 = [v6 initWithString_];
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  }

  *(inited + 72) = v8;
  sub_1DA847D94(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4DE8, &qword_1DA9586F8);
  swift_arrayDestroy();
  sub_1DA822D04();
  v9 = sub_1DA940964();

  AnalyticsSendEvent();

  v10 = *(v0 + 8);

  return v10();
}

unint64_t sub_1DA82238C(unint64_t result)
{
  if (result >= 8)
  {
    return 8;
  }

  return result;
}

uint64_t sub_1DA82239C(uint64_t a1, int a2, unint64_t a3, uint64_t a4)
{
  v90 = a4;
  v86 = a2;
  v83 = a1;
  v92 = sub_1DA93FAF4();
  v87 = *(v92 - 8);
  v5 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v85 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NotificationPipelineAnalytics.Item(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v84 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NotificationPipelineRequestLogger();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v91 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DA9404F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v79 - v19;
  v21 = sub_1DA9405A4();
  isUniquelyReferenced_nonNull_native = *(v21 - 1);
  v23 = *(isUniquelyReferenced_nonNull_native + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1DA940524();
  v89 = *(v26 - 1);
  v27 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = (&v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for LogSignpost();
  v81 = *(v93 - 8);
  v30 = *(v81 + 64);
  v31 = MEMORY[0x1EEE9AC00](v93);
  v82 = &v79 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v88 = (&v79 - v33);
  if (qword_1EE110E38 != -1)
  {
LABEL_25:
    swift_once();
  }

  v34 = __swift_project_value_buffer(v21, qword_1EE11AD78);
  (*(isUniquelyReferenced_nonNull_native + 16))(v25, v34, v21);
  sub_1DA940504();
  sub_1DA940514();
  sub_1DA9404C4();
  v35 = sub_1DA940514();
  v36 = sub_1DA941084();
  if (sub_1DA941124())
  {
    v37 = swift_slowAlloc();
    v80 = v14;
    v38 = v26;
    v39 = v18;
    v40 = a3;
    v41 = v13;
    v42 = v37;
    *v37 = 0;
    v43 = sub_1DA9404D4();
    _os_signpost_emit_with_name_impl(&dword_1DA7A9000, v35, v36, v43, "NotificationPipeline", "", v42, 2u);
    v44 = v42;
    v13 = v41;
    a3 = v40;
    v18 = v39;
    v26 = v38;
    v14 = v80;
    MEMORY[0x1E12739F0](v44, -1, -1);
  }

  (*(v14 + 16))(v18, v20, v13);
  v45 = sub_1DA940564();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_1DA940554();
  (*(v14 + 8))(v20, v13);
  v49 = v88;
  v50 = v89;
  *v88 = "NotificationPipeline";
  v49[1] = 20;
  *(v49 + 16) = 2;
  v49[3] = v48;
  (*(v50 + 32))(v49 + *(v93 + 24), v29, v26);
  v14 = *(a3 + 16);
  if (v14)
  {
    v25 = (a3 + 32);
    v89 = v81 + 56;
    v26 = (v87 + 56);
    v29 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      sub_1DA7BABAC(v25, v95);
      __swift_project_boxed_opaque_existential_1(v95, v95[3]);
      swift_getDynamicType();
      v53 = (*(v95[4] + 8))();
      if (v53 == 4)
      {
        goto LABEL_7;
      }

      v20 = v53;
      v54 = v91;
      sub_1DA822E78(v90, v91, type metadata accessor for NotificationPipelineRequestLogger);
      v55 = type metadata accessor for NotificationPipelineAnalytics.StepAnalytics(0);
      v56 = *(v55 + 48);
      v57 = *(v55 + 52);
      v18 = swift_allocObject();
      (*v89)(&v18[OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_signpost], 1, 1, v93);
      (*v26)(&v18[OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_startDate], 1, 1, v92);
      v58 = &v18[OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_duration];
      *v58 = 0;
      v58[8] = 1;
      v18[OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_status] = 5;
      v18[16] = v20;
      sub_1DA822EE0(v54, &v18[OBJC_IVAR____TtCC21UserNotificationsCore29NotificationPipelineAnalytics13StepAnalytics_logger], type metadata accessor for NotificationPipelineRequestLogger);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v29;
      v21 = v29;
      a3 = sub_1DA7BB33C(v20);
      v60 = v29[2];
      v61 = (v59 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v13 = v59;
      if (v29[3] >= v62)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v29 = v94;
          if (v59)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v21 = &v94;
          sub_1DA85FBB8();
          v29 = v94;
          if (v13)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_1DA85B10C(v62, isUniquelyReferenced_nonNull_native);
        v21 = v94;
        v63 = sub_1DA7BB33C(v20);
        if ((v13 & 1) != (v64 & 1))
        {
          result = sub_1DA9416E4();
          __break(1u);
          return result;
        }

        a3 = v63;
        v29 = v94;
        if (v13)
        {
LABEL_6:
          v51 = v29[7];
          v52 = *(v51 + 8 * a3);
          *(v51 + 8 * a3) = v18;

LABEL_7:
          __swift_destroy_boxed_opaque_existential_1(v95);
          goto LABEL_8;
        }
      }

      v29[(a3 >> 6) + 8] |= 1 << a3;
      *(v29[6] + a3) = v20;
      *(v29[7] + 8 * a3) = v18;
      __swift_destroy_boxed_opaque_existential_1(v95);
      v65 = v29[2];
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_24;
      }

      v29[2] = v67;
LABEL_8:
      v25 += 40;
      if (!--v14)
      {
        goto LABEL_22;
      }
    }
  }

  v29 = MEMORY[0x1E69E7CC8];
LABEL_22:
  v68 = v84;
  sub_1DA822E78(v83, v84, type metadata accessor for NotificationPipelineAnalytics.Item);
  v69 = v85;
  sub_1DA93FAE4();
  v70 = v88;
  v71 = v82;
  sub_1DA822E78(v88, v82, type metadata accessor for LogSignpost);
  v72 = v91;
  sub_1DA822E78(v90, v91, type metadata accessor for NotificationPipelineRequestLogger);
  v73 = type metadata accessor for NotificationPipelineAnalytics(0);
  v74 = *(v73 + 48);
  v75 = *(v73 + 52);
  v76 = swift_allocObject();
  *(v76 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_intelligenceServiceAnalytics) = 0;
  v77 = v76 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logged;
  *v77 = 0;
  *(v77 + 4) = 0;
  sub_1DA822D50(v70, type metadata accessor for LogSignpost);
  sub_1DA822EE0(v68, v76 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_item, type metadata accessor for NotificationPipelineAnalytics.Item);
  *(v76 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_steps) = v29;
  (*(v87 + 32))(v76 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_startDate, v69, v92);
  sub_1DA822EE0(v71, v76 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_signpost, type metadata accessor for LogSignpost);
  *(v76 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_action) = v86;
  sub_1DA822EE0(v72, v76 + OBJC_IVAR____TtC21UserNotificationsCore29NotificationPipelineAnalytics_logger, type metadata accessor for NotificationPipelineRequestLogger);
  return v76;
}

unint64_t sub_1DA822CF4(unint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  return result;
}

unint64_t sub_1DA822D04()
{
  result = qword_1EE110B70;
  if (!qword_1EE110B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE110B70);
  }

  return result;
}

uint64_t sub_1DA822D50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DA822DB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA7B7660;

  return sub_1DA821E50(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DA822E78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA822EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DA822F48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1DA822FF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DA7B7470;

  return sub_1DA821E50(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DA8230D4()
{
  v1 = v0;
  v16 = sub_1DA940FC4();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA940F74();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1DA940854();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DA7AC344();
  v15[0] = "queue_migrations";
  v15[1] = v10;
  sub_1DA940824();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA7AD0C8(&qword_1EE115A70, &qword_1ECBD5D90, &unk_1DA958840);
  sub_1DA9411D4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v16);
  *(v0 + 16) = sub_1DA941004();
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_nextTimerFireDate;
  v12 = sub_1DA93FAF4();
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer) = 0;
  v13 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  *(v1 + v13) = sub_1DA847DA8(MEMORY[0x1E69E7CC0]);
  return v1;
}

uint64_t sub_1DA8233A4()
{
  v1 = v0;
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6AF0, qword_1DA95DAE0);
  sub_1DA940FE4();

  sub_1DA7C5714((v1 + 3));
  sub_1DA823670(v1 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_nextTimerFireDate);

  v3 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations);

  v4 = *(*v1 + 12);
  v5 = *(*v1 + 26);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NotificationMigrationScheduler()
{
  result = qword_1ECBD4E30;
  if (!qword_1ECBD4E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DA8234E8()
{
  sub_1DA8235A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DA8235A8()
{
  if (!qword_1EE114C80)
  {
    sub_1DA93FAF4();
    v0 = sub_1DA941134();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE114C80);
    }
  }
}

id sub_1DA823614@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer);
  if (v3)
  {
    result = [v3 invalidate];
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_1DA823670(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA8236E4(uint64_t a1, uint64_t a2)
{
  v19[0] = a1;
  v4 = sub_1DA9407F4();
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DA940854();
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DA93FAF4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v19[1] = *(v2 + 16);
  (*(v13 + 16))(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v19[0];
  *(v16 + 24) = v2;
  (*(v13 + 32))(v16 + v15, v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = sub_1DA82447C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  sub_1DA940824();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v7, v17);
  _Block_release(v17);
  (*(v22 + 8))(v7, v4);
  (*(v20 + 8))(v11, v21);
}

uint64_t sub_1DA823A74(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1DA93FAF4();
  v94 = *(v6 - 8);
  v7 = *(v94 + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v85 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v97 = &v84 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v84 - v12;
  v14 = sub_1DA93FEC4();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v86 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v99 = &v84 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v84 - v21;
  v23 = *(a1 + 16);
  if (!v23)
  {
    return sub_1DA82424C();
  }

  v102 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  v25 = *(v20 + 16);
  v24 = v20 + 16;
  v100 = v25;
  v26 = (a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64)));
  v95 = (v94 + 16);
  v84 = (v94 + 8);
  v92 = v6;
  v93 = (v24 - 8);
  v101 = v24;
  v98 = *(v24 + 56);
  v87 = (v94 + 40);
  v88 = (v94 + 32);
  v90 = a2;
  v91 = a3;
  v89 = v13;
  v25(v22, v26, v14);
  while (1)
  {
    v27 = v102;
    swift_beginAccess();
    v28 = *(a2 + v27);
    if (!*(v28 + 16))
    {
      break;
    }

    v29 = sub_1DA85A4CC(v22);
    if ((v30 & 1) == 0)
    {
      break;
    }

    v31 = v6;
    v32 = *(v94 + 72);
    v33 = *(v28 + 56) + v32 * v29;
    v34 = *(v94 + 16);
    v35 = v89;
    v34(v89, v33, v31);
    swift_endAccess();
    if ((sub_1DA93FA64() & 1) == 0)
    {
      (*v84)(v35, v31);
      (*v93)(v22, v14);
      v6 = v31;
      goto LABEL_4;
    }

    v96 = v32;
    v36 = v86;
    v100(v86, v22, v14);
    v37 = a3;
    v38 = v102;
    swift_beginAccess();
    v34(v85, v37, v31);
    v39 = *(a2 + v38);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(a2 + v38);
    v41 = v103;
    *(a2 + v38) = 0x8000000000000000;
    v42 = sub_1DA85A4CC(v36);
    v44 = v41[2];
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      goto LABEL_35;
    }

    v48 = v43;
    if (v41[3] < v47)
    {
      sub_1DA85B39C(v47, isUniquelyReferenced_nonNull_native);
      v42 = sub_1DA85A4CC(v86);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_38;
      }

LABEL_26:
      v76 = v103;
      if ((v48 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_26;
    }

    v77 = v42;
    sub_1DA85FD14();
    v42 = v77;
    v76 = v103;
    if ((v48 & 1) == 0)
    {
LABEL_29:
      v76[(v42 >> 6) + 8] |= 1 << v42;
      v78 = v42;
      v79 = v86;
      v100(v76[6] + v42 * v98, v86, v14);
      v6 = v92;
      (*v88)(v76[7] + v78 * v96, v85, v92);
      v71 = *v93;
      (*v93)(v79, v14);
      v80 = v76[2];
      v46 = __OFADD__(v80, 1);
      v81 = v80 + 1;
      if (v46)
      {
        goto LABEL_36;
      }

      v76[2] = v81;
      goto LABEL_31;
    }

LABEL_27:
    v6 = v92;
    (*v87)(v76[7] + v42 * v96, v85, v92);
    v71 = *v93;
    (*v93)(v86, v14);
LABEL_31:
    v82 = *(a2 + v102);
    *(a2 + v102) = v76;

    swift_endAccess();
    (*v84)(v89, v6);
LABEL_24:
    v71(v22, v14);
    a3 = v91;
LABEL_4:
    v26 += v98;
    if (!--v23)
    {
      return sub_1DA82424C();
    }

    v100(v22, v26, v14);
  }

  v50 = v95;
  v96 = v23;
  swift_endAccess();
  v51 = v22;
  v52 = v99;
  v53 = v14;
  v54 = v51;
  v55 = v53;
  (v100)(v99);
  v56 = a3;
  v57 = v102;
  swift_beginAccess();
  (*v50)(v97, v56, v6);
  v58 = *(a2 + v57);
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *(a2 + v57);
  v60 = v103;
  *(a2 + v57) = 0x8000000000000000;
  v62 = sub_1DA85A4CC(v52);
  v63 = v60[2];
  v64 = (v61 & 1) == 0;
  v65 = v63 + v64;
  if (!__OFADD__(v63, v64))
  {
    v66 = v61;
    if (v60[3] >= v65)
    {
      v22 = v54;
      if ((v59 & 1) == 0)
      {
        sub_1DA85FD14();
      }
    }

    else
    {
      sub_1DA85B39C(v65, v59);
      v67 = sub_1DA85A4CC(v99);
      if ((v66 & 1) != (v68 & 1))
      {
        goto LABEL_37;
      }

      v62 = v67;
      v22 = v54;
    }

    v14 = v55;
    v69 = v103;
    v23 = v96;
    v70 = v93;
    if (v66)
    {
      v6 = v92;
      (*(v94 + 40))(v103[7] + *(v94 + 72) * v62, v97, v92);
      v71 = *v70;
      (*v70)(v99, v14);
      a2 = v90;
    }

    else
    {
      v103[(v62 >> 6) + 8] |= 1 << v62;
      v72 = v99;
      v100(v69[6] + v62 * v98, v99, v14);
      v6 = v92;
      (*(v94 + 32))(v69[7] + *(v94 + 72) * v62, v97, v92);
      v71 = *v70;
      (*v70)(v72, v14);
      v73 = v69[2];
      v46 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      a2 = v90;
      if (v46)
      {
        goto LABEL_34;
      }

      v69[2] = v74;
    }

    v75 = *(a2 + v102);
    *(a2 + v102) = v69;

    swift_endAccess();
    goto LABEL_24;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1DA9416E4();
  __break(1u);
LABEL_38:
  result = sub_1DA9416E4();
  __break(1u);
  return result;
}

uint64_t sub_1DA82424C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1DA93FAF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA824808();
  if (*(v9 + 2) && swift_unknownObjectWeakLoadStrong())
  {
    sub_1DA8747B0(v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_1DA825164();
  sub_1DA82527C(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1DA823670(v3);
  }

  (*(v5 + 32))(v8, v3, v4);
  sub_1DA8259A4(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DA824418@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  swift_beginAccess();
  *a2 = *(a1 + v4);
}

uint64_t sub_1DA82447C()
{
  v1 = *(sub_1DA93FAF4() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1DA823A74(v2, v3, v4);
}

uint64_t sub_1DA8244E0(uint64_t a1)
{
  v3 = sub_1DA9407F4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DA940854();
  v8 = *(v16 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1DA825DBC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DA7AF1D0;
  aBlock[3] = &block_descriptor_14;
  v13 = _Block_copy(aBlock);

  sub_1DA940824();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DA825DC4(&qword_1EE115A90, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA7AD0C8(&qword_1EE115A80, &qword_1ECBD6080, &qword_1DA95B5F0);
  sub_1DA9411D4();
  MEMORY[0x1E12720D0](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v16);
}

uint64_t sub_1DA82479C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;

  return sub_1DA82424C();
}

char *sub_1DA824808()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v93 = &v85 - v3;
  v4 = sub_1DA93FAF4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v85 - v10;
  v11 = sub_1DA93FEC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v87 = &v85 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v85 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v85 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E40, &qword_1DA958830);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v26 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v85 - v27;
  v29 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  swift_beginAccess();
  v86 = v0;
  v91 = v29;
  v30 = *(v0 + v29);
  v31 = v20;
  v32 = v4;
  v33 = *(v30 + 64);
  v89 = v30 + 64;
  v34 = 1 << *(v30 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v37 = (v34 + 63) >> 6;
  v106 = (v12 + 16);
  v94 = v5 + 16;
  v110 = (v5 + 32);
  v105 = v5;
  v102 = v12;
  v103 = (v5 + 8);
  v107 = (v12 + 32);
  v108 = (v12 + 8);
  v101 = v30;

  v39 = 0;
  v88 = MEMORY[0x1E69E7CC0];
  v109 = v11;
  v99 = v9;
  v100 = v26;
  v97 = v31;
  v95 = v28;
  v104 = v37;
LABEL_4:
  v40 = v39;
  if (v36)
  {
    while (1)
    {
      v41 = v40;
LABEL_13:
      v43 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v44 = v43 | (v41 << 6);
      v45 = v101;
      v46 = v102;
      v47 = v96;
      (*(v102 + 16))(v96, *(v101 + 48) + *(v102 + 72) * v44, v11);
      v48 = v11;
      v49 = v105;
      v50 = *(v45 + 56) + *(v105 + 72) * v44;
      v51 = v98;
      (*(v105 + 16))(v98, v50, v32);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
      v53 = *(v52 + 48);
      v54 = *(v46 + 32);
      v26 = v100;
      v54(v100, v47, v48);
      (*(v49 + 32))(&v26[v53], v51, v32);
      (*(*(v52 - 8) + 56))(v26, 0, 1, v52);
      v39 = v41;
      v9 = v99;
      v31 = v97;
      v28 = v95;
LABEL_14:
      sub_1DA825CDC(v26, v28);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
      if ((*(*(v55 - 8) + 48))(v28, 1, v55) == 1)
      {
        break;
      }

      v56 = *(v55 + 48);
      v57 = *v107;
      v11 = v109;
      (*v107)(v31, v28, v109);
      (*v110)(v9, &v28[v56], v32);
      sub_1DA93FA84();
      if (v58 <= 0.0)
      {
        (*v106)(v87, v31, v11);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_1DA885D20(0, *(v88 + 2) + 1, 1, v88);
        }

        v61 = *(v88 + 2);
        v60 = *(v88 + 3);
        v85 = v61 + 1;
        if (v61 >= v60 >> 1)
        {
          v88 = sub_1DA885D20(v60 > 1, v61 + 1, 1, v88);
        }

        (*v103)(v9, v32);
        v62 = v102;
        (*(v102 + 8))(v31, v11);
        v63 = v88;
        *(v88 + 2) = v85;
        result = v57(&v63[((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v61], v87, v11);
        v26 = v100;
        v37 = v104;
        goto LABEL_4;
      }

      (*v103)(v9, v32);
      result = (*v108)(v31, v11);
      v40 = v39;
      v37 = v104;
      if (!v36)
      {
        goto LABEL_6;
      }
    }

    v64 = *(v88 + 2);
    v65 = v86;
    if (v64)
    {
      v66 = &v88[(*(v102 + 80) + 32) & ~*(v102 + 80)];
      v67 = *(v102 + 72);
      v68 = *(v102 + 16);
      v103 = (v105 + 56);
      v104 = v68;
      v90 = v32;
      v107 = v67;
      v69 = v91;
      do
      {
        v74 = v92;
        v75 = v109;
        v104(v92, v66, v109);
        swift_beginAccess();
        v76 = *(v65 + v69);
        v77 = sub_1DA85A4CC(v74);
        v79 = v78;
        v80 = *v108;
        (*v108)(v74, v75);
        if (v79)
        {
          v81 = *(v65 + v69);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = *(v65 + v69);
          v111 = v83;
          *(v65 + v69) = 0x8000000000000000;
          v73 = v107;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1DA85FD14();
            v83 = v111;
          }

          v80((*(v83 + 48) + v77 * v73), v109);
          v71 = v93;
          v72 = v90;
          (*(v105 + 32))(v93, *(v83 + 56) + *(v105 + 72) * v77, v90);
          sub_1DA8F4DE0(v77, v83);
          v84 = *(v65 + v69);
          *(v65 + v69) = v83;

          v70 = 0;
        }

        else
        {
          v70 = 1;
          v71 = v93;
          v72 = v90;
          v73 = v107;
        }

        (*v103)(v71, v70, 1, v72);
        swift_endAccess();
        sub_1DA823670(v71);
        v66 = v73 + v66;
        --v64;
      }

      while (v64);
    }

    return v88;
  }

  else
  {
LABEL_6:
    if (v37 <= v40 + 1)
    {
      v42 = v40 + 1;
    }

    else
    {
      v42 = v37;
    }

    v39 = v42 - 1;
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v37)
      {
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
        (*(*(v59 - 8) + 56))(v26, 1, 1, v59);
        v36 = 0;
        goto LABEL_14;
      }

      v36 = *(v89 + 8 * v41);
      ++v40;
      if (v36)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1DA825164()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = sub_1DA93FAF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_nextTimerFireDate;
  swift_beginAccess();
  sub_1DA825C64(v4, v0 + v6);
  swift_endAccess();
  v7 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer;
  v8 = *(v0 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer);
  if (v8)
  {
    [v8 invalidate];
    v9 = *(v0 + v7);
  }

  else
  {
    v9 = 0;
  }

  *(v0 + v7) = 0;
}

uint64_t sub_1DA82527C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v67 - v5;
  v6 = sub_1DA93FAF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v67 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v67 - v13;
  v88 = sub_1DA93FEC4();
  v14 = *(v88 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v77 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E40, &qword_1DA958830);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v86 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v67 - v21;
  v23 = *(v7 + 56);
  v87 = a1;
  v90 = v6;
  v71 = v7 + 56;
  v70 = v23;
  v23(a1, 1, 1, v6);
  v24 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_migrations;
  swift_beginAccess();
  v25 = *(v1 + v24);
  v26 = v22;
  v27 = v25 + 64;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 64);
  v67 = (v28 + 63) >> 6;
  v74 = v7 + 16;
  v75 = v14 + 16;
  v73 = v14 + 32;
  v31 = (v7 + 32);
  v83 = (v7 + 48);
  v80 = v7;
  v68 = (v7 + 8);
  v78 = v14;
  v81 = v25;
  v82 = (v14 + 8);

  v33 = 0;
  v76 = v22;
  v84 = v27;
  v72 = v31;
  while (v30)
  {
    v37 = v33;
LABEL_16:
    v41 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v42 = v41 | (v37 << 6);
    v43 = v81;
    v44 = v77;
    v45 = v78;
    v46 = v88;
    (*(v78 + 16))(v77, *(v81 + 48) + *(v78 + 72) * v42, v88);
    v47 = v79;
    v48 = v80;
    v49 = v90;
    (*(v80 + 16))(v79, *(v43 + 56) + *(v80 + 72) * v42, v90);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
    v51 = *(v50 + 48);
    v52 = *(v45 + 32);
    v40 = v86;
    v52(v86, v44, v46);
    v31 = v72;
    (*(v48 + 32))(v40 + v51, v47, v49);
    (*(*(v50 - 8) + 56))(v40, 0, 1, v50);
    v26 = v76;
LABEL_17:
    sub_1DA825CDC(v40, v26);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
    if ((*(*(v53 - 8) + 48))(v26, 1, v53) == 1)
    {
    }

    v54 = *v31;
    v55 = v26 + *(v53 + 48);
    v56 = v85;
    v57 = v90;
    (*v31)(v85, v55, v90);
    v58 = v89;
    sub_1DA825D4C(v87, v89);
    if ((*v83)(v58, 1, v57) == 1)
    {
      v34 = v87;
      sub_1DA823670(v87);
      sub_1DA823670(v89);
      v35 = v56;
      v36 = v90;
      v54(v34, v35, v90);
      v70(v34, 0, 1, v36);
      v27 = v84;
    }

    else
    {
      v59 = v90;
      v60 = v69;
      v54(v69, v89, v90);
      v61 = v56;
      v62 = sub_1DA93FA64();
      v63 = *v68;
      (*v68)(v60, v59);
      if (v62)
      {
        v64 = v87;
        sub_1DA823670(v87);
        v65 = v90;
        v54(v64, v61, v90);
        v70(v64, 0, 1, v65);
      }

      else
      {
        v63(v61, v90);
      }

      v27 = v84;
    }

    result = (*v82)(v26, v88);
  }

  if (v67 <= v33 + 1)
  {
    v38 = v33 + 1;
  }

  else
  {
    v38 = v67;
  }

  v39 = v38 - 1;
  v40 = v86;
  while (1)
  {
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v37 >= v67)
    {
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E48, &qword_1DA958838);
      (*(*(v66 - 8) + 56))(v40, 1, 1, v66);
      v30 = 0;
      v33 = v39;
      goto LABEL_17;
    }

    v30 = *(v27 + 8 * v37);
    ++v33;
    if (v30)
    {
      v33 = v37;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1DA8259A4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = aBlock - v6;
  v8 = sub_1DA93FAF4();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_nextTimerFireDate;
  swift_beginAccess();
  sub_1DA825C64(v7, v2 + v10);
  swift_endAccess();
  v11 = objc_allocWithZone(MEMORY[0x1E69D54C8]);
  v12 = sub_1DA940A04();
  v13 = [v11 initWithIdentifier_];

  v14 = OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer;
  v15 = *(v2 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer);
  *(v2 + OBJC_IVAR____TtC21UserNotificationsCore30NotificationMigrationScheduler_queue_timer) = v13;

  v16 = *(v2 + v14);
  if (v16)
  {
    v17 = v16;
    v18 = sub_1DA93FA44();
    v19 = *(v2 + 16);
    v20 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1DA825CD4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA7B00D0;
    aBlock[3] = &block_descriptor_8;
    v21 = _Block_copy(aBlock);

    [v17 scheduleForDate:v18 leewayInterval:v19 queue:v21 handler:0.5];
    _Block_release(v21);
  }
}

uint64_t sub_1DA825C0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DA82424C();
  }

  return result;
}

uint64_t sub_1DA825C64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA825CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E40, &qword_1DA958830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA825D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6530, &unk_1DA958820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA825DC4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DA825E30(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1DA825E78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DA825ED4()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA825F84()
{
  *v0;
  *v0;
  sub_1DA940AB4();
}

uint64_t sub_1DA826020()
{
  v1 = *v0;
  sub_1DA941764();
  sub_1DA940AB4();

  return sub_1DA941794();
}

uint64_t sub_1DA8260CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DA8262B4();
  *a2 = result;
  return result;
}

void sub_1DA8260FC(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000014;
  v3 = *v1;
  v4 = "ionActionRecord8";
  v5 = "OptOutOfCoordinationForwardOnly";
  if (v3 == 2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v3 != 2)
  {
    v5 = "DenyListedCategories";
  }

  if (*v1)
  {
    v2 = 0xD00000000000001FLL;
    v4 = "OptOutOfCoordination";
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v2 = v6;
    v7 = v5;
  }

  *a1 = v2;
  a1[1] = v7 | 0x8000000000000000;
}

unint64_t sub_1DA82616C()
{
  v1 = 0xD000000000000014;
  v2 = *v0;
  if (v2 == 2)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1DA8261D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA8262B4();
  *a1 = result;
  return result;
}

uint64_t sub_1DA82620C(uint64_t a1)
{
  v2 = sub_1DA826598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA826248(uint64_t a1)
{
  v2 = sub_1DA826598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA826284@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DA826300(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1DA8262B4()
{
  v0 = sub_1DA9414F4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DA826300(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E50, &unk_1DA958900);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_1DA826598();
  sub_1DA941804();
  if (!v1)
  {
    LOBYTE(v12) = 0;
    v10[2] = sub_1DA941534();
    LOBYTE(v12) = 1;
    v10[1] = sub_1DA941534();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD6790, &qword_1DA9594C0);
    v11 = 2;
    sub_1DA8265EC();
    sub_1DA941544();
    if (v12)
    {
      v8 = v12;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    v11 = 3;
    sub_1DA941544();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1DA826598()
{
  result = qword_1EE110F18[0];
  if (!qword_1EE110F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE110F18);
  }

  return result;
}

unint64_t sub_1DA8265EC()
{
  result = qword_1EE110CC0;
  if (!qword_1EE110CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBD6790, &qword_1DA9594C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110CC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AlertCoordinationSystemFilterSectionConfiguration.CoordinationBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertCoordinationSystemFilterSectionConfiguration.CoordinationBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DA8267CC()
{
  result = qword_1ECBD4E58;
  if (!qword_1ECBD4E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4E58);
  }

  return result;
}

unint64_t sub_1DA826824()
{
  result = qword_1ECBD4E60;
  if (!qword_1ECBD4E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4E60);
  }

  return result;
}

unint64_t sub_1DA82687C()
{
  result = qword_1EE110F08;
  if (!qword_1EE110F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110F08);
  }

  return result;
}

unint64_t sub_1DA8268D4()
{
  result = qword_1EE110F10;
  if (!qword_1EE110F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110F10);
  }

  return result;
}

uint64_t sub_1DA826928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DA93F8E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1DA93F964();
  v9 = *(v46 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v46);
  v44 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v42 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42 - v16;
  v43 = a1;
  v47[0] = a1;
  v47[1] = a2;
  v18 = a2;

  MEMORY[0x1E1271BD0](0xD000000000000010, 0x80000001DA951380);
  (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v4);
  sub_1DA8282D0();
  sub_1DA93F944();
  (*(v5 + 8))(v8, v4);

  v19 = sub_1DA93F974();
  v21 = v20;
  v22 = v20 >> 62;
  v23 = v46;
  v24 = v9;
  if ((v20 >> 62) > 1)
  {
    v25 = v17;
    if (v22 != 2 || *(v19 + 16) == *(v19 + 24))
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v25 = v17;
  if (!v22)
  {
    if ((v20 & 0xFF000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    v26 = v19;
    sub_1DA7AF3EC(0, &qword_1EE110C30, 0x1E696ACD0);
    sub_1DA7AF3EC(0, &unk_1EE114DA0, 0x1E69832B0);
    v40 = sub_1DA940F44();
    (*(v24 + 8))(v25, v23);
    sub_1DA828324(v26, v21);
    return v40;
  }

  if (v19 != v19 >> 32)
  {
    goto LABEL_7;
  }

LABEL_9:
  v44 = v19;
  if (qword_1EE110D30 != -1)
  {
    swift_once();
  }

  v27 = sub_1DA9405A4();
  __swift_project_value_buffer(v27, qword_1EE110D38);
  (*(v24 + 16))(v15, v25, v23);

  v28 = sub_1DA940584();
  v29 = sub_1DA940F14();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v45 = v25;
    v31 = v24;
    v32 = v30;
    v42 = swift_slowAlloc();
    v47[0] = v42;
    *v32 = 136315394;
    sub_1DA828278();
    v33 = sub_1DA941614();
    v35 = v34;
    v36 = *(v31 + 8);
    v36(v15, v23);
    v37 = sub_1DA7AE6E8(v33, v35, v47);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1DA7AE6E8(v43, v18, v47);
    _os_log_impl(&dword_1DA7A9000, v28, v29, "Failed to read sectionURL: %s for: %s", v32, 0x16u);
    v38 = v42;
    swift_arrayDestroy();
    MEMORY[0x1E12739F0](v38, -1, -1);
    MEMORY[0x1E12739F0](v32, -1, -1);

    sub_1DA828324(v44, v21);
    v36(v45, v23);
  }

  else
  {

    sub_1DA828324(v44, v21);
    v39 = *(v24 + 8);
    v39(v15, v23);
    v39(v25, v23);
  }

  return 0;
}

void sub_1DA8270B8(void *a1, NSObject *a2, void *a3)
{
  v155 = a1;
  v156 = a2;
  v159[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1DA93F8E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DA93F964();
  v157 = *(v9 - 8);
  v158 = v9;
  v10 = *(v157 + 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v154 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v151 = &v147 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v149 = &v147 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v153 = &v147 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v147 - v19;
  v152 = objc_opt_self();
  v21 = [v152 defaultManager];
  v22 = OBJC_IVAR____TtC21UserNotificationsCore23StorageSettingsProvider_location;
  v23 = sub_1DA93F904();
  v159[0] = 0;
  v24 = [v21 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:v159];

  v25 = v159[0];
  if (v24)
  {
    v159[0] = v156;
    v159[1] = a3;
    v150 = a3;

    v26 = v25;
    MEMORY[0x1E1271BD0](0xD000000000000010, 0x80000001DA951380);
    (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v4);
    sub_1DA8282D0();
    sub_1DA93F944();
    (*(v5 + 8))(v8, v4);

    v27 = v20;
    if (v155)
    {
      v28 = qword_1EE110D30;
      v29 = v155;
      v31 = v157;
      v30 = v158;
      if (v28 != -1)
      {
        swift_once();
      }

      v32 = sub_1DA9405A4();
      v33 = __swift_project_value_buffer(v32, qword_1EE110D38);
      v34 = *(v31 + 2);
      v35 = v153;
      v151 = v31 + 16;
      v148 = v34;
      v34(v153, v20, v30);
      v36 = v150;

      v37 = v29;
      v152 = v33;
      v38 = v37;
      v39 = sub_1DA940584();
      v40 = sub_1DA940F34();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v159[0] = v147;
        *v41 = 136315650;
        *(v41 + 4) = sub_1DA7AE6E8(v156, v36, v159);
        *(v41 + 12) = 2080;
        sub_1DA828278();
        v43 = v38;
        v44 = sub_1DA941614();
        v45 = v27;
        v47 = v46;
        v153 = *(v31 + 1);
        (v153)(v35, v158);
        v48 = sub_1DA7AE6E8(v44, v47, v159);
        v27 = v45;
        v36 = v150;

        *(v41 + 14) = v48;
        v38 = v43;
        *(v41 + 22) = 2112;
        *(v41 + 24) = v43;
        *v42 = v155;
        v49 = v43;
        _os_log_impl(&dword_1DA7A9000, v39, v40, "Writing %s to: %s with data: %@", v41, 0x20u);
        sub_1DA828378(v42);
        v50 = v42;
        v30 = v158;
        MEMORY[0x1E12739F0](v50, -1, -1);
        v51 = v147;
        swift_arrayDestroy();
        MEMORY[0x1E12739F0](v51, -1, -1);
        MEMORY[0x1E12739F0](v41, -1, -1);
      }

      else
      {

        v153 = *(v31 + 1);
        (v153)(v35, v30);
      }

      v81 = v154;
      v82 = objc_opt_self();
      v159[0] = 0;
      v83 = [v82 archivedDataWithRootObject:v38 requiringSecureCoding:1 error:v159];
      v84 = v159[0];
      if (v83)
      {
        v85 = sub_1DA93F9A4();
        v87 = v86;

        sub_1DA93F9B4();
        v127 = v149;
        v148(v149, v27, v30);

        v128 = v38;
        v129 = sub_1DA940584();
        v130 = sub_1DA940F34();

        if (os_log_type_enabled(v129, v130))
        {
          v132 = swift_slowAlloc();
          v133 = swift_slowAlloc();
          v152 = v87;
          v134 = v133;
          v151 = swift_slowAlloc();
          v159[0] = v151;
          *v132 = 136315650;
          *(v132 + 4) = sub_1DA7AE6E8(v156, v36, v159);
          *(v132 + 12) = 2080;
          sub_1DA828278();
          v156 = v129;
          v135 = sub_1DA941614();
          v154 = v27;
          v136 = v30;
          v138 = v137;
          v157 = (v157 + 8);
          v139 = v127;
          v140 = v153;
          (v153)(v139, v30);
          v141 = sub_1DA7AE6E8(v135, v138, v159);

          *(v132 + 14) = v141;
          *(v132 + 22) = 2112;
          *(v132 + 24) = v128;
          *v134 = v155;
          v142 = v128;
          v143 = v156;
          _os_log_impl(&dword_1DA7A9000, v156, v130, "Successfully wrote %s to: %s with data: %@", v132, 0x20u);
          sub_1DA828378(v134);
          MEMORY[0x1E12739F0](v134, -1, -1);
          v144 = v151;
          swift_arrayDestroy();
          MEMORY[0x1E12739F0](v144, -1, -1);
          MEMORY[0x1E12739F0](v132, -1, -1);
          sub_1DA828324(v85, v152);

          v140(v154, v136);
          goto LABEL_32;
        }

        sub_1DA828324(v85, v87);

        v111 = v127;
LABEL_31:
        v145 = v153;
        (v153)(v111, v30);
        v145(v27, v30);
        goto LABEL_32;
      }

      v88 = v84;
      v89 = sub_1DA93F8C4();

      swift_willThrow();
      v148(v81, v27, v30);

      v90 = v38;
      v91 = v89;
      v92 = sub_1DA940584();
      v93 = sub_1DA940F14();

      if (!os_log_type_enabled(v92, v93))
      {

        v111 = v81;
        goto LABEL_31;
      }

      v94 = swift_slowAlloc();
      v154 = v27;
      v95 = v81;
      v96 = v94;
      v97 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v159[0] = v152;
      *v96 = 136315906;
      *(v96 + 4) = sub_1DA7AE6E8(v156, v36, v159);
      *(v96 + 12) = 2112;
      v98 = v89;
      v99 = _swift_stdlib_bridgeErrorToNSError();
      *(v96 + 14) = v99;
      *v97 = v99;
      *(v96 + 22) = 2080;
      sub_1DA828278();
      v156 = v92;
      v100 = sub_1DA941614();
      v102 = v101;
      v103 = v95;
      v104 = v30;
      v105 = v30;
      v106 = v153;
      (v153)(v103, v104);
      v107 = sub_1DA7AE6E8(v100, v102, v159);

      *(v96 + 24) = v107;
      *(v96 + 32) = 2112;
      *(v96 + 34) = v90;
      v97[1] = v155;
      v108 = v90;
      v109 = v156;
      _os_log_impl(&dword_1DA7A9000, v156, v93, "Failed to write %s error: %@ to: %s with data: %@", v96, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v97, -1, -1);
      v110 = v152;
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v110, -1, -1);
      MEMORY[0x1E12739F0](v96, -1, -1);

      v106(v154, v105);
    }

    else
    {
      v155 = v22;
      v63 = v157;
      v62 = v158;
      if (qword_1EE110D30 != -1)
      {
        swift_once();
      }

      v64 = sub_1DA9405A4();
      __swift_project_value_buffer(v64, qword_1EE110D38);
      v65 = v151;
      v63[2](v151, v27, v62);
      v66 = v150;

      v67 = sub_1DA940584();
      v68 = sub_1DA940F34();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = v65;
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v154 = v27;
        v72 = v71;
        v159[0] = v71;
        *v70 = 136315394;
        *(v70 + 4) = sub_1DA7AE6E8(v156, v66, v159);
        *(v70 + 12) = 2080;
        sub_1DA828278();
        v73 = sub_1DA941614();
        v75 = v74;
        v76 = *(v157 + 1);
        v76(v69, v158);
        v77 = sub_1DA7AE6E8(v73, v75, v159);
        v62 = v158;

        *(v70 + 14) = v77;
        v78 = v68;
        v79 = v76;
        _os_log_impl(&dword_1DA7A9000, v67, v78, "Nil settings set for %s. Remooving: %s", v70, 0x16u);
        swift_arrayDestroy();
        v80 = v72;
        v27 = v154;
        MEMORY[0x1E12739F0](v80, -1, -1);
        MEMORY[0x1E12739F0](v70, -1, -1);
      }

      else
      {

        v79 = v63[1];
        (v79)(v65, v62);
      }

      v112 = [v152 defaultManager];
      v113 = sub_1DA93F904();
      v159[0] = 0;
      v114 = [v112 removeItemAtURL:v113 error:v159];

      if (v114)
      {
        v115 = v159[0];
        (v79)(v27, v62);
      }

      else
      {
        v116 = v159[0];
        v117 = sub_1DA93F8C4();

        swift_willThrow();

        v118 = sub_1DA940584();
        v119 = sub_1DA940F14();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v121 = v62;
          v122 = swift_slowAlloc();
          v159[0] = v122;
          *v120 = 136315138;
          sub_1DA828278();
          v123 = sub_1DA941614();
          v125 = sub_1DA7AE6E8(v123, v124, v159);
          v157 = v79;
          v126 = v125;

          *(v120 + 4) = v126;
          _os_log_impl(&dword_1DA7A9000, v118, v119, "Failed to remove settings for: %s", v120, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v122);
          MEMORY[0x1E12739F0](v122, -1, -1);
          MEMORY[0x1E12739F0](v120, -1, -1);

          (v157)(v27, v121);
        }

        else
        {

          (v79)(v27, v62);
        }
      }
    }
  }

  else
  {
    v52 = v159[0];
    v53 = sub_1DA93F8C4();

    swift_willThrow();
    if (qword_1EE110D30 != -1)
    {
      swift_once();
    }

    v54 = sub_1DA9405A4();
    __swift_project_value_buffer(v54, qword_1EE110D38);

    v55 = sub_1DA940584();
    v56 = sub_1DA940F14();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v159[0] = v58;
      *v57 = 136315138;
      sub_1DA828278();
      v59 = sub_1DA941614();
      v61 = sub_1DA7AE6E8(v59, v60, v159);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_1DA7A9000, v55, v56, "Failed to create storage directory: %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1E12739F0](v58, -1, -1);
      MEMORY[0x1E12739F0](v57, -1, -1);
    }
  }

LABEL_32:
  v146 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DA828070()
{
  v1 = OBJC_IVAR____TtC21UserNotificationsCore23StorageSettingsProvider_location;
  v2 = sub_1DA93F964();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StorageSettingsProvider()
{
  result = qword_1EE1124C0;
  if (!qword_1EE1124C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA828160()
{
  result = sub_1DA93F964();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DA8281F8()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1EE110D38);
  __swift_project_value_buffer(v0, qword_1EE110D38);
  return sub_1DA940594();
}

unint64_t sub_1DA828278()
{
  result = qword_1EE114CB0;
  if (!qword_1EE114CB0)
  {
    sub_1DA93F964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE114CB0);
  }

  return result;
}

unint64_t sub_1DA8282D0()
{
  result = qword_1EE110D00;
  if (!qword_1EE110D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE110D00);
  }

  return result;
}

uint64_t sub_1DA828324(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1DA828378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5430, &unk_1DA959190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA8283F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[13] = a1;
  v5 = sub_1DA93FEC4();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = sub_1DA9401F4();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v11 = sub_1DA93FE74();
  v4[24] = v11;
  v12 = *(v11 - 8);
  v4[25] = v12;
  v13 = *(v12 + 64) + 15;
  v4[26] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA8285D8, 0, 0);
}

uint64_t sub_1DA8285D8()
{
  v96 = v0;
  v2 = v0[29];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[14];
  sub_1DA940074();
  v6 = *(v4 + 48);
  LODWORD(v5) = v6(v2, 1, v3);
  sub_1DA82905C(v2);
  if (v5 == 1)
  {
    v7 = v0[14];
    v8 = v0[15];
    v9 = __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
    sub_1DA940014();

    sub_1DA9400A4();

    v10 = *v9;
    swift_getKeyPath();
    v0[12] = v10;
    sub_1DA829118(&qword_1EE114860, type metadata accessor for RemoteNotificationsProperties);
    sub_1DA93FB74();

    v11 = *(v10 + 56);
    if (v11 >> 62)
    {
      if (v11 < 0)
      {
        v54 = *(v10 + 56);
      }

      if (sub_1DA941264())
      {
        goto LABEL_4;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v11 & 0xC000000000000001) != 0)
      {

        MEMORY[0x1E1272460](0, v11);
      }

      else
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_30;
        }

        v12 = *(v11 + 32);
      }

      v13 = v0[28];
      v14 = v0[24];
      sub_1DA8A6064(v13);

      if (v6(v13, 1, v14) != 1)
      {
        v15 = v0[23];
        v16 = v0[19];
        v17 = v0[20];
        v18 = v0[14];
        (*(v0[25] + 32))(v0[26], v0[28], v0[24]);
        v1 = *(v17 + 16);
        v1(v15, v18, v16);
        if (qword_1ECBD46F8 == -1)
        {
LABEL_9:
          v19 = v0[22];
          v20 = v0[19];
          v21 = v0[14];
          v22 = v0[15];
          v23 = sub_1DA9405A4();
          __swift_project_value_buffer(v23, qword_1ECBD4E68);
          v1(v19, v21, v20);

          v24 = sub_1DA940584();
          v25 = sub_1DA940F34();

          v26 = os_log_type_enabled(v24, v25);
          v27 = v0[22];
          v29 = v0[19];
          v28 = v0[20];
          if (v26)
          {
            v94 = v25;
            v30 = v0[17];
            v31 = v0[18];
            v32 = v0[16];
            v91 = v0[19];
            v33 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            v95 = v93;
            *v33 = 136315394;
            log = v24;
            sub_1DA940124();
            sub_1DA829118(&qword_1EE110EE0, MEMORY[0x1E69DF0D0]);
            v34 = sub_1DA941614();
            v36 = v35;
            (*(v30 + 8))(v31, v32);
            (*(v28 + 8))(v27, v91);
            v37 = sub_1DA7AE6E8(v34, v36, &v95);

            *(v33 + 4) = v37;
            *(v33 + 12) = 2080;
            sub_1DA7BABAC(v8 + 16, (v0 + 7));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4EA0, &qword_1DA958C40);
            v38 = sub_1DA940A74();
            v40 = sub_1DA7AE6E8(v38, v39, &v95);

            *(v33 + 14) = v40;
            _os_log_impl(&dword_1DA7A9000, log, v94, "Fetching settings for notification %s from: %s", v33, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E12739F0](v93, -1, -1);
            MEMORY[0x1E12739F0](v33, -1, -1);
          }

          else
          {

            (*(v28 + 8))(v27, v29);
          }

          v46 = v0[26];
          v47 = v0[27];
          v48 = v0[24];
          v49 = v0[25];
          v50 = v0[23];
          v51 = v0[19];
          v52 = v0[20];
          v53 = v0[13];
          (*(v49 + 16))(v47, v46, v48);
          (*(v49 + 56))(v47, 0, 1, v48);
          sub_1DA940084();
          (*(v49 + 8))(v46, v48);
          (*(v52 + 32))(v53, v50, v51);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
          goto LABEL_25;
        }

LABEL_30:
        swift_once();
        goto LABEL_9;
      }

      goto LABEL_18;
    }

    (*(v0[25] + 56))(v0[28], 1, 1, v0[24]);
LABEL_18:
    sub_1DA82905C(v0[28]);
    if (qword_1ECBD46F8 != -1)
    {
      swift_once();
    }

    v56 = v0[20];
    v55 = v0[21];
    v57 = v0[19];
    v58 = v0[14];
    v59 = v0[15];
    v60 = sub_1DA9405A4();
    __swift_project_value_buffer(v60, qword_1ECBD4E68);
    (*(v56 + 16))(v55, v58, v57);

    v61 = sub_1DA940584();
    v62 = sub_1DA940F34();

    v63 = os_log_type_enabled(v61, v62);
    v65 = v0[20];
    v64 = v0[21];
    v66 = v0[19];
    if (v63)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v95 = v68;
      *v67 = 136315394;
      sub_1DA7BABAC(v8 + 16, (v0 + 2));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4EA0, &qword_1DA958C40);
      v69 = sub_1DA940A74();
      v71 = sub_1DA7AE6E8(v69, v70, &v95);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2080;
      sub_1DA829118(&qword_1EE114E70, MEMORY[0x1E69DF180]);
      v72 = sub_1DA941614();
      v74 = v73;
      (*(v65 + 8))(v64, v66);
      v75 = sub_1DA7AE6E8(v72, v74, &v95);

      *(v67 + 14) = v75;
      _os_log_impl(&dword_1DA7A9000, v61, v62, "Provider: %s didn't provide a UTType for: %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12739F0](v68, -1, -1);
      MEMORY[0x1E12739F0](v67, -1, -1);
    }

    else
    {

      (*(v65 + 8))(v64, v66);
    }

    v76 = v0[13];
    v77 = v0[14];
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
    v79 = *(v78 + 48);
    v80 = *(v78 + 64);
    *(v76 + 24) = &type metadata for SourceDeviceTypeFetchActor.ActorError;
    *(v76 + 32) = sub_1DA8290C4();
    *v76 = 1;
    goto LABEL_24;
  }

  v41 = v0[13];
  v42 = v0[14];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E88, &unk_1DA958C30);
  v44 = *(v43 + 48);
  v45 = *(v43 + 64);
  *(v41 + 24) = &type metadata for SourceDeviceTypeFetchActor.ActorError;
  *(v41 + 32) = sub_1DA8290C4();
  *v41 = 0;
LABEL_24:
  sub_1DA93FF14();
  sub_1DA93FF34();
  type metadata accessor for StepFailure(0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E98, &qword_1DA95D790);
LABEL_25:
  swift_storeEnumTagMultiPayload();
  v82 = v0[28];
  v81 = v0[29];
  v84 = v0[26];
  v83 = v0[27];
  v86 = v0[22];
  v85 = v0[23];
  v87 = v0[21];
  v88 = v0[18];

  v89 = v0[1];

  return v89();
}

uint64_t sub_1DA828EB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DA828F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1DA7B7470;

  return sub_1DA8283F4(a1, v8, a3);
}

uint64_t sub_1DA828FD8()
{
  v0 = sub_1DA9405A4();
  __swift_allocate_value_buffer(v0, qword_1ECBD4E68);
  __swift_project_value_buffer(v0, qword_1ECBD4E68);
  return sub_1DA940594();
}

uint64_t sub_1DA82905C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4E80, &qword_1DA958C00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DA8290C4()
{
  result = qword_1ECBD4E90;
  if (!qword_1ECBD4E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4E90);
  }

  return result;
}

uint64_t sub_1DA829118(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for SourceDeviceTypeFetchActor.ActorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SourceDeviceTypeFetchActor.ActorError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DA8292B4()
{
  result = qword_1ECBD4EA8;
  if (!qword_1ECBD4EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4EA8);
  }

  return result;
}

unint64_t sub_1DA829308(uint64_t a1)
{
  *(a1 + 8) = sub_1DA8292B4();
  result = sub_1DA829338();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DA829338()
{
  result = qword_1ECBD4EB0;
  if (!qword_1ECBD4EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4EB0);
  }

  return result;
}

uint64_t sub_1DA8293E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1DA829524();
  sub_1DA93FB74();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1DA829470(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1DA8295C8(v4);
}

uint64_t sub_1DA82949C()
{
  swift_getKeyPath();
  sub_1DA829524();
  sub_1DA93FB74();

  swift_beginAccess();
  v1 = *(v0 + 16);
}

unint64_t sub_1DA829524()
{
  result = qword_1ECBD4EC0;
  if (!qword_1ECBD4EC0)
  {
    type metadata accessor for NotificationSourceProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBD4EC0);
  }

  return result;
}

uint64_t type metadata accessor for NotificationSourceProvider()
{
  result = qword_1ECBD4EC8;
  if (!qword_1ECBD4EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DA8295C8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);

  v5 = sub_1DA82A28C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1DA829524();
    sub_1DA93FB64();
  }
}

uint64_t sub_1DA8296E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = a2;
}

void (*sub_1DA829748(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC21UserNotificationsCore26NotificationSourceProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1DA829524();
  sub_1DA93FB74();

  *v4 = v1;
  swift_getKeyPath();
  sub_1DA93FB94();

  v4[7] = sub_1DA82938C();
  return sub_1DA829850;
}

void sub_1DA829850(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1DA93FB84();

  free(v1);
}

uint64_t sub_1DA8298E4()
{
  v0 = type metadata accessor for NotificationSource();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v19[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA829C94(v19);
  v5 = v20;
  v6 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v7 = (*(v6 + 8))(0, 0, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  v8 = *(v7 + 16);
  if (v8)
  {
    v19[0] = MEMORY[0x1E69E7CC0];
    sub_1DA82A778(0, v8, 0);
    v9 = v19[0];
    v10 = v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v11 = *(v1 + 72);
    do
    {
      sub_1DA82A798(v10, v4);
      v13 = *(v4 + 2);
      v12 = *(v4 + 3);

      sub_1DA82A7FC(v4);
      v19[0] = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DA82A778((v14 > 1), v15 + 1, 1);
        v9 = v19[0];
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1DA829AD0(uint64_t a1, uint64_t a2)
{
  sub_1DA829C94(v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 8))(a1, a2, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1DA829B6C(uint64_t a1, uint64_t a2)
{
  sub_1DA829C94(v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 16))(a1, a2, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_1DA829BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DA829C94(v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 24))(a1, a2, a3, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_1DA829C94@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_1DA82B0B4(v1 + 24, &v6);
  if (v7)
  {
    return sub_1DA7B9FAC(&v6, a1);
  }

  sub_1DA82A858(&v6);
  v4 = type metadata accessor for XPCSettingsProvider();
  swift_allocObject();
  v5 = XPCSettingsProvider.init()();
  a1[3] = v4;
  a1[4] = &protocol witness table for XPCSettingsProvider;
  *a1 = v5;
  sub_1DA7BABAC(a1, &v6);
  swift_beginAccess();
  sub_1DA82B124(&v6, v1 + 24);
  return swift_endAccess();
}

uint64_t NotificationSourceProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  sub_1DA93FBA4();
  sub_1DA829C94(v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = sub_1DA8E787C(0, 0, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  sub_1DA8295C8(v6);
  return v3;
}

uint64_t NotificationSourceProvider.init()()
{
  v1 = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  sub_1DA93FBA4();
  sub_1DA829C94(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = sub_1DA8E787C(0, 0, v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  sub_1DA8295C8(v4);
  return v1;
}

uint64_t NotificationSourceProvider.deinit()
{
  v1 = *(v0 + 16);

  sub_1DA82A858(v0 + 24);
  v2 = OBJC_IVAR____TtC21UserNotificationsCore26NotificationSourceProvider___observationRegistrar;
  v3 = sub_1DA93FBB4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t NotificationSourceProvider.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  sub_1DA82A858((v0 + 24));
  v2 = OBJC_IVAR____TtC21UserNotificationsCore26NotificationSourceProvider___observationRegistrar;
  v3 = sub_1DA93FBB4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DA82A02C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DA829C94(v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 8))(a1, a2, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t sub_1DA82A0CC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DA829C94(v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 16))(a1, a2, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t sub_1DA82A15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1DA829C94(v11);
  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 24))(a1, a2, a3, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_1DA82A1FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DA941684() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1DA82A28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSource();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_1DA82A798(v14, v11);
        sub_1DA82A798(v15, v8);
        v17 = *(v11 + 1);
        v18 = *(v8 + 1);
        if (v17)
        {
          if (!v18 || (*v11 != *v8 || v17 != v18) && (sub_1DA941684() & 1) == 0)
          {
LABEL_20:
            sub_1DA82A7FC(v8);
            sub_1DA82A7FC(v11);
            v20 = 0;
            return v20 & 1;
          }
        }

        else if (v18)
        {
          goto LABEL_20;
        }

        if ((*(v11 + 2) != *(v8 + 2) || *(v11 + 3) != *(v8 + 3)) && (sub_1DA941684() & 1) == 0)
        {
          goto LABEL_20;
        }

        v19 = v11[48] ^ v8[48];
        sub_1DA82A7FC(v8);
        sub_1DA82A7FC(v11);
        if ((v19 & 1) == 0)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        v20 = v19 ^ 1;
        return v20 & 1;
      }
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1DA82A494(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v28)
  {
    if (a2 >> 62)
    {
      v29 = v3;
      result = sub_1DA941264();
      v3 = v29;
      if (i != result)
      {
        return 0;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i != result)
      {
        return 0;
      }
    }

    if (!i)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v31 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v30 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (i < 0)
    {
      break;
    }

    v34 = a2 & 0xC000000000000001;
    v35 = v3 & 0xC000000000000001;
    v11 = 4;
    v12 = &__block_descriptor_32_e59___UNCNotificationActionRecord_16__0__UNNotificationAction_8l;
    v32 = v3;
    v33 = a2;
    while (1)
    {
      v14 = v11 - 4;
      v4 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if (v35)
      {
        v15 = MEMORY[0x1E1272460](v11 - 4);
      }

      else
      {
        if (v14 >= *(v31 + 16))
        {
          goto LABEL_35;
        }

        v15 = *(v3 + 8 * v11);
      }

      v36 = v11 - 3;
      if (v34)
      {
        v16 = MEMORY[0x1E1272460](v11 - 4, a2);
      }

      else
      {
        if (v14 >= *(v30 + 16))
        {
          goto LABEL_36;
        }

        v16 = *(a2 + 8 * v11);
      }

      result = [*(v15 + 16) v12[402]];
      if (!result)
      {
        goto LABEL_41;
      }

      v17 = result;
      v18 = i;
      v19 = sub_1DA940A14();
      v21 = v20;

      v22 = v12;
      result = [*(v16 + 16) v12[402]];
      if (!result)
      {
        goto LABEL_42;
      }

      v23 = result;
      v24 = sub_1DA940A14();
      v26 = v25;

      if (v19 == v24 && v21 == v26)
      {
      }

      else
      {
        v13 = sub_1DA941684();

        if ((v13 & 1) == 0)
        {
          return 0;
        }
      }

      ++v11;
      i = v18;
      v3 = v32;
      a2 = v33;
      v12 = v22;
      if (v36 == v18)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v27 = v3;
    v28 = sub_1DA941264();
    v3 = v27;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

size_t sub_1DA82A734(size_t a1, int64_t a2, char a3)
{
  result = sub_1DA82AED8(a1, a2, a3, *v3, &qword_1ECBD4ED8, &unk_1DA95FBD0, type metadata accessor for NotificationSource);
  *v3 = result;
  return result;
}

char *sub_1DA82A778(char *a1, int64_t a2, char a3)
{
  result = sub_1DA82AB68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DA82A798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationSource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA82A7FC(uint64_t a1)
{
  v2 = type metadata accessor for NotificationSource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA82A858(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD6520, &qword_1DA958D48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DA82A8C8()
{
  result = sub_1DA93FBB4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

size_t sub_1DA82AAAC(size_t a1, int64_t a2, char a3)
{
  result = sub_1DA82AED8(a1, a2, a3, *v3, &qword_1ECBD4F00, qword_1DA958E20, MEMORY[0x1E69DF180]);
  *v3 = result;
  return result;
}

char *sub_1DA82AAF0(char *a1, int64_t a2, char a3)
{
  result = sub_1DA82AC74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DA82AB10(void *a1, int64_t a2, char a3)
{
  result = sub_1DA82AD90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1DA82AB30(size_t a1, int64_t a2, char a3)
{
  result = sub_1DA82AED8(a1, a2, a3, *v3, &qword_1ECBD4EF8, &qword_1DA958E18, MEMORY[0x1EEE91018]);
  *v3 = result;
  return result;
}

char *sub_1DA82AB68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBD5080, &qword_1DA95D9D0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1DA82AC74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4EF0, &qword_1DA958E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1DA82AD90(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4EE0, &qword_1DA958E00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBD4EE8, &qword_1DA958E08);
    swift_arrayInitWithCopy();
  }

  return v10;
}