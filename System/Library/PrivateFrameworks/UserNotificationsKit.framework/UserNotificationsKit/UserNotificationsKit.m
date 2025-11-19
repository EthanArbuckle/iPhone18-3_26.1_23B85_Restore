uint64_t NCIsEqual(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return a1 == a2;
  }
}

uint64_t NCIsEqualToSet(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqualToSet:a2];
  }

  else
  {
    return a1 == a2;
  }
}

uint64_t NCIsEqualToArray(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqualToArray:a2];
  }

  else
  {
    return a1 == a2;
  }
}

void *sub_270A3666C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_270A3667C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270A366B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_270A3670C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083EF38);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083EF40);
  sub_270A4E1D0();
  sub_270A4E2D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_270A367AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EF78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270A36884()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270A368BC()
{

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_270A36904()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_270A3694C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_270A369BC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_270A88760();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_270A36A60(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_270A88760();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_270A36B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F190);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_270A36C08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDE0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F190);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_270A36D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_270A88760();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_270A36DDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_270A88760();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_270A36EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F370);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_270A88840();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_270A36FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F370);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_270A88840();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_270A370F4()
{
  v1 = type metadata accessor for SourceGroupView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_270A88910();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  v8 = sub_270A88840();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_270A37278@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270A88AA0();
  *a1 = result;
  return result;
}

uint64_t sub_270A372D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270A88A40();
  *a1 = result;
  return result;
}

uint64_t sub_270A37380@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270A88A80();
  *a1 = result;
  return result;
}

uint64_t sub_270A373D4@<X0>(uint64_t a1@<X8>)
{
  result = sub_270A88AC0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_270A37438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F370);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_270A37504(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F370);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_270A37614@<X0>(void *a1@<X8>)
{
  result = sub_270A88A20();
  *a1 = v3;
  return result;
}

uint64_t sub_270A37684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F370);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_270A37750(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F370);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_270A3781C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270A37878()
{
  MEMORY[0x2743AF5D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_270A378B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270A378E8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_270A37988(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_270A88760();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_270A37A40(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_270A88760();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_270A37AE4()
{
  v1 = sub_270A88760();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_270A37BF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270A37C80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270A37D8C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_270A37DCC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_270A37E14()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_270A37E5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_270A37EC4()
{
  MEMORY[0x2743AF5D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t NCIsEqualToDictionary(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqualToDictionary:a2];
  }

  else
  {
    return a1 == a2;
  }
}

id NCUserNotificationsKitFrameworkBundle()
{
  if (NCUserNotificationsKitFrameworkBundle___once[0] != -1)
  {
    NCUserNotificationsKitFrameworkBundle_cold_1();
  }

  v1 = NCUserNotificationsKitFrameworkBundle___bundle;

  return v1;
}

uint64_t __NCUserNotificationsKitFrameworkBundle_block_invoke()
{
  NCUserNotificationsKitFrameworkBundle___bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.UserNotificationsKit"];

  return MEMORY[0x2821F96F8]();
}

void sub_270A39F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 48), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void NCRegisterUserNotificationsUILogging()
{
  if (NCRegisterUserNotificationsUILogging_onceToken != -1)
  {
    NCRegisterUserNotificationsUILogging_cold_1();
  }
}

uint64_t __NCRegisterUserNotificationsUILogging_block_invoke()
{
  v0 = os_log_create(NCUILogSubsystem, "Dispatch");
  v1 = NCUILogDispatch;
  NCUILogDispatch = v0;

  v2 = os_log_create(NCUILogSubsystem, "Client");
  v3 = NCUILogClient;
  NCUILogClient = v2;

  v4 = os_log_create(NCUILogSubsystem, "Lists");
  v5 = NCUILogLists;
  NCUILogLists = v4;

  v6 = os_log_create(NCUILogSubsystem, "ListStates");
  v7 = NCUILogListStates;
  NCUILogListStates = v6;

  v8 = os_log_create(NCUILogSubsystem, "Management");
  v9 = NCUILogManagement;
  NCUILogManagement = v8;

  v10 = os_log_create(NCUILogSubsystem, "Icons");
  v11 = NCUILogIcons;
  NCUILogIcons = v10;

  v12 = os_log_create(NCUILogSubsystem, "CommunicationNotifications");
  v13 = NCUILogCommunicationNotifications;
  NCUILogCommunicationNotifications = v12;

  v14 = os_log_create(NCUILogSubsystem, "Onboarding");
  v15 = NCUILogOnboarding;
  NCUILogOnboarding = v14;

  v16 = os_log_create(NCUILogSubsystem, "Utilities");
  v17 = NCUILogOnboarding;
  NCUILogOnboarding = v16;

  v18 = os_log_create(NCUILogSubsystem, "Summarization");
  v19 = NCUILogSummarization;
  NCUILogSummarization = v18;

  NCUILogScrollPosition = os_log_create(NCUILogSubsystem, "ScrollPosition");

  return MEMORY[0x2821F96F8]();
}

__CFString *NCNotificationSuppressionToString(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"<invalid>";
  }

  else
  {
    return off_279E0DAD0[a1];
  }
}

__CFString *NCNotificationIntelligentInterruptionBehaviorToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_279E0DAE8[a1];
  }
}

__CFString *NCNotificationDeliveryReasonToString(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"<invalid>";
  }

  else
  {
    return off_279E0DB08[a1];
  }
}

void sub_270A46B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_activity_scope_state_s state, uint64_t a18, uint64_t a19, char a20)
{
  _Block_object_dispose(&a20, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t sub_270A4A218()
{
  v0 = sub_270A88890();
  __swift_allocate_value_buffer(v0, qword_28083EDE8);
  v1 = __swift_project_value_buffer(v0, qword_28083EDE8);
  if (qword_28083EE08 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280842BE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_270A4A2E0()
{
  v1 = *v0;
  sub_270A89630();
  MEMORY[0x2743AEAF0](v1);
  return sub_270A89680();
}

uint64_t sub_270A4A328()
{
  v1 = *v0;
  sub_270A89630();
  MEMORY[0x2743AEAF0](v1);
  return sub_270A89680();
}

uint64_t sub_270A4A36C@<X0>(uint64_t a1@<X8>)
{
  v14 = *(v1 + 8);
  v15 = *v1;
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  type metadata accessor for ViewState();
  sub_270A4E514(&qword_28083EEF0, type metadata accessor for ViewState);

  v5 = sub_270A88930();
  v6 = *(v1 + 24);

  v7 = sub_270A88980();
  v9 = v8;
  if (!*(v5 + 40))
  {
    v10 = sub_270A4A944(v15, v14);
    v11 = *(v5 + 40);
    *(v5 + 40) = v10;
    v12 = v10;

    sub_270A4A49C();
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  return result;
}

void sub_270A4A49C()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = [v1 rootLayer];
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(MEMORY[0x277CD9FB8]) initWithLayer_];
      v5 = v0[4];
      v0[4] = v4;

      v6 = v0[5];
      if (!v6 || (v7 = [v6 rootLayer]) == 0 || (v8 = v7, v9 = objc_msgSend(v7, sel_states), v8, !v9) || (v10 = sub_270A890D0(), v9, v11 = sub_270A4A650(v10), , !v11))
      {

        v11 = MEMORY[0x277D84F90];
      }

      if (v11 >> 62)
      {
        if (sub_270A892D0())
        {
          goto LABEL_10;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_10:
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2743AE840](0, v11);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v12 = *(v11 + 32);
        }

        v13 = v12;

        goto LABEL_17;
      }

      v13 = 0;
LABEL_17:
      v16 = v0[6];
      v0[6] = v13;
      v15 = v13;
      sub_270A4A75C(v16);

      v14 = v16;
      goto LABEL_18;
    }
  }

  v14 = v0[4];
  v0[4] = 0;
LABEL_18:
}

uint64_t sub_270A4A650(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_270A893F0();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_270A4D604(i, v5);
    sub_270A4DC8C(0, &qword_28083EEF8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_270A893D0();
    sub_270A89400();
    sub_270A89410();
    sub_270A893E0();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_270A4A75C(void *a1)
{
  v2 = *(v1 + 48);
  if (!v2)
  {
    return;
  }

  v20 = v2;
  v4 = [v20 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_270A88FC0();
    v8 = v7;

    if (a1)
    {
      goto LABEL_4;
    }

LABEL_9:
    v11 = 0;
    v13 = v20;
    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v6 = 0;
  v8 = 0;
  if (!a1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = [a1 name];
  if (v9)
  {
    v10 = v9;
    v11 = sub_270A88FC0();
    a1 = v12;

    v13 = v20;
    if (!v8)
    {
LABEL_15:
      if (a1)
      {
        goto LABEL_16;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v11 = 0;
    a1 = 0;
    v13 = v20;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

LABEL_10:
  if (!a1)
  {
LABEL_16:

    goto LABEL_17;
  }

  if (v6 == v11 && v8 == a1)
  {

LABEL_19:

    return;
  }

  v19 = sub_270A89570();

  if ((v19 & 1) == 0)
  {
LABEL_17:
    v14 = [v20 name];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = sub_270A88FC0();
    v18 = v17;

    sub_270A4AE34(v16, v18);
    goto LABEL_19;
  }

  v13 = v20;
LABEL_24:
}

id sub_270A4A944(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_270A886D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - v14;
  v16 = sub_270A88FB0();
  v17 = sub_270A88FB0();
  v18 = [v3 URLForResource:v16 withExtension:v17];

  if (!v18)
  {
    if (qword_28083EDE0 != -1)
    {
      swift_once();
    }

    v33 = sub_270A88890();
    __swift_project_value_buffer(v33, qword_28083EDE8);

    v34 = sub_270A88870();
    v35 = sub_270A891A0();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v43 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_270A4D698(a1, a2, &v43);
      _os_log_impl(&dword_270A33000, v34, v35, "Fail to create packageURL with name:%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x2743AF520](v37, -1, -1);
      MEMORY[0x2743AF520](v36, -1, -1);
    }

    return 0;
  }

  sub_270A886C0();

  sub_270A4DC8C(0, &qword_28083EF00);
  v19 = *(v7 + 16);
  v19(v13, v15, v6);
  v20 = sub_270A88FC0();
  v22 = sub_270A4D3BC(v13, v20, v21, 0);
  if (!v22)
  {
    if (qword_28083EDE0 != -1)
    {
      swift_once();
    }

    v23 = sub_270A88890();
    __swift_project_value_buffer(v23, qword_28083EDE8);
    v19(v10, v15, v6);
    v24 = sub_270A88870();
    v25 = sub_270A891A0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v42;
      *v26 = 136315138;
      sub_270A4E514(&qword_28083EF08, MEMORY[0x277CC9260]);
      v27 = sub_270A89550();
      v29 = v28;
      v30 = *(v7 + 8);
      v30(v10, v6);
      v31 = sub_270A4D698(v27, v29, &v43);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_270A33000, v24, v25, "Fail to load Mica file from URL:%s", v26, 0xCu);
      v32 = v42;
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x2743AF520](v32, -1, -1);
      MEMORY[0x2743AF520](v26, -1, -1);

      v30(v15, v6);
    }

    else
    {

      v38 = *(v7 + 8);
      v38(v10, v6);
      v38(v15, v6);
    }

    return 0;
  }

  v40 = v22;
  (*(v7 + 8))(v15, v6);
  return v40;
}

void sub_270A4AE34(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  if (!v3)
  {
    return;
  }

  v4 = *(v2 + 40);
  if (!v4)
  {
    return;
  }

  v20 = v3;
  v19 = [v4 rootLayer];
  if (!v19)
  {
    goto LABEL_17;
  }

  v7 = sub_270A88FB0();
  v8 = [v19 stateWithName_];

  if (!v8)
  {

    v16 = v19;
LABEL_18:

    return;
  }

  v9 = v2;
  v10 = v19;
  v11 = [v20 stateOfLayer_];
  if (v11)
  {
    v12 = v11;
    sub_270A4DC8C(0, &qword_28083EEF8);
    v13 = v8;
    v14 = sub_270A89230();

    if (v14)
    {

LABEL_16:
LABEL_17:
      v16 = v20;
      goto LABEL_18;
    }
  }

  else
  {
    v17 = v8;
  }

  LODWORD(v15) = 1.0;
  [v20 setState:v8 ofLayer:v10 transitionSpeed:{v15, v19}];

  [v20 cancelTimers];
  v18 = *(v9 + 16);
  if (!v18)
  {

    goto LABEL_16;
  }

  v18(a1, a2);

  sub_270A4DFC0(v18);
}

uint64_t sub_270A4B050()
{
  sub_270A4DFC0(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_270A4B0C4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ViewState();
  result = sub_270A888C0();
  *a1 = result;
  return result;
}

void *sub_270A4B104(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnimatedViewState();
  v4 = swift_allocObject();
  v4[8] = 0;
  v4[9] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = 0;
  v4[7] = 0;
  v4[4] = 0;
  v4[5] = 0;

  return v4;
}

uint64_t sub_270A4B164@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EF70);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = v36 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EF78);
  MEMORY[0x28223BE20](v40);
  v6 = v36 - v5;
  v7 = *v1;
  v37 = *(v1 + 8);
  v38 = v7;
  v8 = *(v1 + 24);
  v36[1] = *(v1 + 16);
  v39 = v8;
  v9 = *(v1 + 32);
  type metadata accessor for AnimatedViewState();
  sub_270A4E514(&qword_28083EF80, type metadata accessor for AnimatedViewState);

  v10 = sub_270A88930();
  v11 = *(v1 + 42);
  type metadata accessor for ViewState();
  sub_270A4E514(&qword_28083EEF0, type metadata accessor for ViewState);

  v12 = sub_270A88980();
  v14 = v13;
  if (!*(v10 + 40))
  {
    v15 = sub_270A4A944(v38, v37);
    v16 = *(v10 + 40);
    *(v10 + 40) = v15;
    v17 = v15;

    sub_270A4A49C();
  }

  v18 = swift_allocObject();
  v19 = *(v2 + 80);
  v18[5] = *(v2 + 64);
  v18[6] = v19;
  *(v18 + 105) = *(v2 + 89);
  v20 = *(v2 + 16);
  v18[1] = *v2;
  v18[2] = v20;
  v21 = *(v2 + 48);
  v18[3] = *(v2 + 32);
  v18[4] = v21;
  *&v47 = v39;
  *(&v47 + 1) = v9;
  LOBYTE(v48) = v11;
  *(&v48 + 1) = v12;
  *&v49 = v14;
  *(&v49 + 1) = sub_270A4E82C;
  v50 = v18;
  v51 = 0;
  LOBYTE(v54[0]) = *(v2 + 40);
  v22 = swift_allocObject();
  v23 = *(v2 + 80);
  v22[5] = *(v2 + 64);
  v22[6] = v23;
  *(v22 + 105) = *(v2 + 89);
  v24 = *(v2 + 16);
  v22[1] = *v2;
  v22[2] = v24;
  v25 = *(v2 + 48);
  v22[3] = *(v2 + 32);
  v22[4] = v25;
  sub_270A4E580(v2, v46);
  sub_270A4E580(v2, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EF88);
  sub_270A4E5B8();
  v26 = v41;
  sub_270A88D30();

  v52[2] = v49;
  v52[3] = v50;
  v53 = v51;
  v52[0] = v47;
  v52[1] = v48;
  sub_270A4E644(v52, &qword_28083EF88);
  v27 = *(v2 + 72);
  v28 = *(v2 + 80);
  *&v47 = *(v2 + 64);
  v54[0] = v28;
  v46[0] = v47;
  v46[1] = v27;
  v46[2] = v28;
  v29 = v40;
  sub_270A4E6A4(&v47, &v45);

  sub_270A4E700(v54, &v45, &qword_28083EF98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EFA0);
  sub_270A888E0();
  v30 = swift_allocObject();
  v31 = *(v2 + 80);
  v30[5] = *(v2 + 64);
  v30[6] = v31;
  *(v30 + 105) = *(v2 + 89);
  v32 = *(v2 + 16);
  v30[1] = *v2;
  v30[2] = v32;
  v33 = *(v2 + 48);
  v30[3] = *(v2 + 32);
  v30[4] = v33;
  (*(v42 + 32))(v6, v26, v43);
  v34 = &v6[*(v29 + 56)];
  *v34 = sub_270A4E7DC;
  v34[1] = v30;
  sub_270A367AC(v6, v44);
  return sub_270A4E580(v2, v46);
}

uint64_t sub_270A4B5F8(uint64_t result)
{
  if (*(result + 40))
  {
    v1 = result;
    type metadata accessor for AnimatedViewState();
    sub_270A4E514(&qword_28083EF80, type metadata accessor for AnimatedViewState);
    sub_270A88930();
    v2 = *(v1 + 48);
    v3 = *(v1 + 56);
    v4 = *(v1 + 41);
    v7 = *(v1 + 64);
    v8 = *(v1 + 80);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EFA0);
    MEMORY[0x2743AE330](&v6, v5);
    sub_270A4BE80(v4, v6, v2, v3);
  }

  return result;
}

void sub_270A4B704(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnimatedViewState();
  sub_270A4E514(&qword_28083EF80, type metadata accessor for AnimatedViewState);
  *(sub_270A88930() + 64) = 0;

  v3 = sub_270A4B8D8(a2);
  v4 = sub_270A88930();
  v5 = *(v4 + 48);
  *(v4 + 48) = v3;
  v10 = v3;
  sub_270A4A75C(v5);

  if (*(a2 + 40))
  {
    sub_270A88930();
    v6 = *(a2 + 48);
    v7 = *(a2 + 56);
    v8 = *(a2 + 41);
    v12 = *(a2 + 64);
    v13 = *(a2 + 80);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EFA0);
    MEMORY[0x2743AE330](&v11, v9);
    sub_270A4BE80(v8, v11, v6, v7);
  }

  else
  {
  }
}

void *sub_270A4B8D8(uint64_t a1)
{
  v27 = *(a1 + 64);
  v28 = *(a1 + 80);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EFA0);
  MEMORY[0x2743AE330](&v26, v1);
  if (!v26[2])
  {
LABEL_31:

    return 0;
  }

  v3 = v26[4];
  v2 = v26[5];

  if (v2)
  {
    type metadata accessor for AnimatedViewState();
    sub_270A4E514(&qword_28083EF80, type metadata accessor for AnimatedViewState);
    v4 = *(sub_270A88930() + 40);
    if (v4 && (v5 = [v4 rootLayer]) != 0 && (v6 = v5, v7 = objc_msgSend(v5, sel_states), v6, v7) && (v8 = sub_270A890D0(), v7, v9 = sub_270A4A650(v8), , v9))
    {
    }

    else
    {

      v9 = MEMORY[0x277D84F90];
    }

    if (v9 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_270A892D0())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2743AE840](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 name];
        if (v15)
        {
          v16 = v15;
          v17 = v3;
          v18 = v2;
          v19 = sub_270A88FC0();
          v21 = v20;

          v22 = v19;
          v2 = v18;
          if (v22 == v17 && v18 == v21)
          {

            return v13;
          }

          v3 = v17;
          v24 = sub_270A89570();

          if (v24)
          {

            return v13;
          }
        }

        ++v11;
        if (v14 == i)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

LABEL_30:

    goto LABEL_31;
  }

  return 0;
}

void *sub_270A4BC20(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  if (*(a1 + 16) <= a2)
  {
    goto LABEL_34;
  }

  v5 = a1 + 32 * a2;
  v3 = *(v5 + 40);
  v24 = *(v5 + 32);
  v6 = *(a3 + 40);
  if (!v6)
  {

LABEL_9:

    v4 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v7 = [v6 rootLayer];
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 states];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = sub_270A890D0();

  v4 = sub_270A4A650(v10);

  if (!v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v4 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_270A892D0())
  {
    v12 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2743AE840](v12, v4);
      }

      else
      {
        if (v12 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v13 = *(v4 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v13 name];
      if (v16)
      {
        v17 = v16;
        v18 = sub_270A88FC0();
        v20 = v19;

        if (v3)
        {
          if (v18 == v24 && v3 == v20)
          {

            return v14;
          }

          v22 = sub_270A89570();

          if (v22)
          {

LABEL_30:

            return v14;
          }
        }

        else
        {
        }
      }

      else if (!v3)
      {
        goto LABEL_30;
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:

  return 0;
}

uint64_t sub_270A4BE80(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FE40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  if (*(v4 + 72))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EF20);
    sub_270A89160();
  }

  *(v4 + 72) = 0;

  v14 = *(v4 + 64);
  v15 = *(a2 + 16);
  v26 = a3;
  HIDWORD(v25) = a1;
  if (v14 >= v15)
  {
    if (v14)
    {
      v18 = sub_270A896F0();
      v17 = v19;
    }

    else
    {
      v17 = 0;
      v18 = 4000000000000000000;
    }

    goto LABEL_9;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v16 = a2 + 32 * v14;
    v18 = *(v16 + 48);
    v17 = *(v16 + 56);
LABEL_9:
    v20 = sub_270A89150();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    v21 = swift_allocObject();
    swift_weakInit();
    sub_270A89130();

    v22 = sub_270A89120();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    *(v23 + 16) = v22;
    *(v23 + 24) = v24;
    *(v23 + 32) = v18;
    *(v23 + 40) = v17;
    *(v23 + 48) = v21;
    *(v23 + 56) = BYTE4(v25) & 1;
    *(v23 + 64) = a2;
    *(v23 + 72) = v14;
    *(v23 + 80) = v26;
    *(v23 + 88) = a4;

    *(v5 + 72) = sub_270A7ED48(0, 0, v12, &unk_270A8D0E0, v23);
  }

  __break(1u);
  return result;
}

uint64_t sub_270A4C0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 88) = v15;
  *(v8 + 72) = v14;
  *(v8 + 160) = a7;
  *(v8 + 56) = a6;
  *(v8 + 64) = a8;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  v9 = sub_270A89430();
  *(v8 + 96) = v9;
  *(v8 + 104) = *(v9 - 8);
  *(v8 + 112) = swift_task_alloc();
  sub_270A89130();
  *(v8 + 120) = sub_270A89120();
  v11 = sub_270A89110();
  *(v8 + 128) = v11;
  *(v8 + 136) = v10;

  return MEMORY[0x2822009F8](sub_270A4C1FC, v11, v10);
}

uint64_t sub_270A4C1FC()
{
  v1 = sub_270A896C0();
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  v4 = (v1 >> 63) & 0xF21F494C589C0000;
  sub_270A895D0();
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_270A4C2F8;

  return (sub_270A831C0)(v2, v4 + v3, 0, 0, 1);
}

uint64_t sub_270A4C2F8()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 152) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_270A4C620;
  }

  else
  {
    v8 = sub_270A4C490;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_270A4C490()
{
  v1 = *(v0 + 152);

  sub_270A89170();
  if (!v1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      if (!*(result + 48))
      {
LABEL_11:

        goto LABEL_12;
      }

      v3 = *(v0 + 72);
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
      }

      else
      {
        v5 = *(v0 + 64);
        v6 = *(v0 + 160);
        v7 = *(v5 + 16);
        if (v6 != 1)
        {
          goto LABEL_8;
        }

        if (v7)
        {
          v4 %= v7;
LABEL_8:
          v8 = result;
          v10 = *(v0 + 80);
          v9 = *(v0 + 88);
          if (v4 >= v7)
          {
            v10();
          }

          else
          {
            v11 = result;
            v12 = sub_270A4BC20(*(v0 + 64), v4, result);
            v13 = *(v8 + 48);
            *(v11 + 48) = v12;
            v14 = v12;
            sub_270A4A75C(v13);

            *(v11 + 64) = v4;
            sub_270A4BE80(v6, v5, v10, v9);
          }

          goto LABEL_11;
        }
      }

      __break(1u);
      return result;
    }
  }

LABEL_12:

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_270A4C620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_270A4C68C()
{
}

uint64_t sub_270A4C6BC()
{
  sub_270A4DFC0(*(v0 + 16));

  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_270A4C75C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_270A89570() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:

  return MEMORY[0x2821FE668](v4, v5, v7, v8);
}

uint64_t sub_270A4C7F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EF38);
  MEMORY[0x28223BE20](v1);
  v3 = &v13[-v2];
  type metadata accessor for CAPackageViewLayer();
  v4 = *v0;
  v15 = *(v0 + 24);
  v16 = v4;
  v5 = swift_allocObject();
  v6 = v0[1];
  *(v5 + 16) = *v0;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v0 + 4);
  sub_270A4E700(&v16, &v14, &qword_28083EF40);
  sub_270A4E700(&v15, &v14, &qword_28083EF48);
  sub_270A88960();
  v7 = swift_allocObject();
  v8 = v0[1];
  *(v7 + 16) = *v0;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(v0 + 4);
  v9 = &v3[*(v1 + 36)];
  *v9 = sub_270A4E15C;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  v14 = v16;
  v10 = swift_allocObject();
  v11 = v0[1];
  *(v10 + 16) = *v0;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v0 + 4);
  sub_270A4E700(&v16, v13, &qword_28083EF40);
  sub_270A4E700(&v16, v13, &qword_28083EF40);
  sub_270A4E700(&v15, v13, &qword_28083EF48);
  sub_270A4E700(&v16, v13, &qword_28083EF40);
  sub_270A4E700(&v15, v13, &qword_28083EF48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083EF40);
  sub_270A4E1D0();
  sub_270A4E2D0();
  sub_270A88D30();

  sub_270A4E644(&v16, &qword_28083EF40);
  return sub_270A4E644(v3, &qword_28083EF38);
}

void sub_270A4CAA0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 32) + 40);
  if (v3)
  {
    v5 = [v3 rootLayer];
    if (v5)
    {
      v6 = v5;
      v7 = v5;
      sub_270A4CB54(v6);

      *(a1 + OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_contentMode) = *(a2 + 16);
    }
  }
}

void sub_270A4CB54(void *a1)
{
  v2 = OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSublayer_];
  }
}

void sub_270A4CBEC()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for CAPackageViewLayer();
  objc_msgSendSuper2(&v18, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_packageLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 bounds];
    sub_270A4CD38(v0, &v19, v4, v6, v8, v10, v11, v12, v13, v14);
    m = v19;
    CATransform3DMakeAffineTransform(&v16, &m);
    [v2 setTransform_];
    [v0 bounds];
    MidX = CGRectGetMidX(v20);
    [v0 bounds];
    [v2 setPosition_];
    [v2 setGeometryFlipped_];
  }
}

CGFloat sub_270A4CD38@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>, CGFloat a7@<D4>, CGFloat a8@<D5>, CGFloat a9@<D6>, CGFloat a10@<D7>)
{
  v18 = *(a1 + OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_contentMode);
  Width = CGRectGetWidth(*&a3);
  if (v18)
  {
    v33.origin.x = a7;
    v33.origin.y = a8;
    v33.size.width = a9;
    v33.size.height = a10;
    v20 = Width / CGRectGetWidth(v33);
    v34.origin.x = a3;
    v34.origin.y = a4;
    v34.size.width = a5;
    v34.size.height = a6;
    Height = CGRectGetHeight(v34);
    v35.origin.x = a7;
    v35.origin.y = a8;
    v35.size.width = a9;
    v35.size.height = a10;
    v22 = Height / CGRectGetHeight(v35);
    v23 = v20;
  }

  else
  {
    v36.origin.x = a3;
    v36.origin.y = a4;
    v36.size.width = a5;
    v36.size.height = a6;
    v30 = Width / CGRectGetHeight(v36);
    v37.origin.x = a7;
    v37.origin.y = a8;
    v37.size.width = a9;
    v37.size.height = a10;
    v29 = CGRectGetWidth(v37);
    v38.origin.x = a7;
    v38.origin.y = a8;
    v38.size.width = a9;
    v38.size.height = a10;
    if (v30 >= v29 / CGRectGetHeight(v38))
    {
      v41.origin.x = a3;
      v41.origin.y = a4;
      v41.size.width = a5;
      v41.size.height = a6;
      v24 = CGRectGetHeight(v41);
      v42.origin.x = a7;
      v42.origin.y = a8;
      v42.size.width = a9;
      v42.size.height = a10;
      v25 = CGRectGetHeight(v42);
    }

    else
    {
      v39.origin.x = a3;
      v39.origin.y = a4;
      v39.size.width = a5;
      v39.size.height = a6;
      v24 = CGRectGetWidth(v39);
      v40.origin.x = a7;
      v40.origin.y = a8;
      v40.size.width = a9;
      v40.size.height = a10;
      v25 = CGRectGetWidth(v40);
    }

    v23 = v24 / v25;
    v22 = v23;
  }

  CGAffineTransformMakeScale(&v32, v23, v22);
  result = v32.a;
  v27 = *&v32.c;
  v28 = *&v32.tx;
  *a2 = *&v32.a;
  a2[1] = v27;
  a2[2] = v28;
  return result;
}

id sub_270A4D0CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_270A4D170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_270A4D1B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MicaView.ContentMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MicaView.ContentMode(uint64_t result, unsigned int a2, unsigned int a3)
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

id sub_270A4D3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_270A886B0();
  v7 = sub_270A88FB0();

  if (a4)
  {
    v8 = sub_270A88F50();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_270A886D0();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_270A88690();

    swift_willThrow();
    v15 = sub_270A886D0();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

unint64_t sub_270A4D588()
{
  result = qword_28083EEE8;
  if (!qword_28083EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083EEE8);
  }

  return result;
}

uint64_t sub_270A4D604(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

unint64_t sub_270A4D698(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_270A4D764(v11, 0, 0, 1, a1, a2);
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
    sub_270A4D604(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_270A4D764(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_270A4D870(a5, a6);
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
    result = sub_270A893C0();
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

uint64_t sub_270A4D870(uint64_t a1, unint64_t a2)
{
  v3 = sub_270A4D8BC(a1, a2);
  sub_270A4D9EC(&unk_28808C6F8);
  return v3;
}

uint64_t sub_270A4D8BC(uint64_t a1, unint64_t a2)
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

  v6 = sub_270A4DAD8(v5, 0);
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

  result = sub_270A893C0();
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
        v10 = sub_270A89080();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_270A4DAD8(v10, 0);
        result = sub_270A89370();
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

uint64_t sub_270A4D9EC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_270A4DB4C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_270A4DAD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083EF10);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_270A4DB4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083EF10);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_270A4DC8C(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_270A4DDC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_270A4DECC;

  return sub_270A4C0EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_270A4DECC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_270A4DFC0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_270A4DFE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_270A4E02C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_270A4E098(uint64_t a1, unint64_t *a2)
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

unint64_t sub_270A4E0E4()
{
  result = qword_28083EF30;
  if (!qword_28083EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083EF30);
  }

  return result;
}

uint64_t objectdestroy_83Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_270A4E1A0()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    sub_270A4AE34(*(v0 + 16), v1);
  }
}

unint64_t sub_270A4E1D0()
{
  result = qword_28083EF50;
  if (!qword_28083EF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083EF38);
    sub_270A4E7E4(&qword_28083EF58, &qword_28083EF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083EF50);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_270A4E2D0()
{
  result = qword_28083EF68;
  if (!qword_28083EF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083EF68);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_270A4E358(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_270A4E3B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_270A4E444(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_270A4E48C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270A4E514(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_270A4E5B8()
{
  result = qword_28083EF90;
  if (!qword_28083EF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083EF88);
    sub_270A4E0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083EF90);
  }

  return result;
}

uint64_t sub_270A4E644(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_270A4E700(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_104Tm()
{

  sub_270A4E55C();

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_270A4E7E4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_270A4E874(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_270A4E8BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270A4E934@<X0>(uint64_t a1@<X8>)
{
  v40 = sub_270A88DF0();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_270A88AF0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  if (v10 == 0.0)
  {
    type metadata accessor for NotificationSourceIconCache();
    sub_270A4EFA8();
    result = sub_270A889D0();
    __break(1u);
  }

  else
  {
    v46 = *(v1 + 40);
    v11 = *(v1 + 32);
    v45 = v11;
    v12 = v46;

    LODWORD(v39) = v12;
    if (v12 == 1)
    {
      v13 = v11;
    }

    else
    {
      sub_270A4F000(&v45, &v43);
      sub_270A891B0();
      v14 = sub_270A88C10();
      v38 = v10;
      v15 = v11;
      v16 = v9;
      v17 = v7;
      v18 = v5;
      v19 = v3;
      v20 = v6;
      v21 = a1;
      v22 = v14;
      sub_270A88860();

      a1 = v21;
      v6 = v20;
      v3 = v19;
      v5 = v18;
      v7 = v17;
      v9 = v16;
      v11 = v15;
      sub_270A88AE0();
      swift_getAtKeyPath();
      sub_270A4F070(&v45);
      (*(v7 + 8))(v9, v6);
      v13 = v43;
    }

    v23 = *v1;
    v24 = *(v1 + 8);
    if (sub_270A52698(*v1, v24, v13))
    {

      v25 = v40;
      (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v40);
      v26 = sub_270A88E10();
      (*(v3 + 8))(v5, v25);
      v41 = v26;
      v42 = 0;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F080);
      sub_270A4F0D8();
      sub_270A88BC0();
    }

    else
    {
      if (v39)
      {
        v27 = v11;
        sub_270A52748(v23, v24, v11);
      }

      else
      {

        sub_270A891B0();
        v28 = sub_270A88C10();
        v38 = v11;
        v29 = a1;
        v30 = v28;
        sub_270A88860();

        a1 = v29;
        sub_270A88AE0();
        swift_getAtKeyPath();
        sub_270A4F070(&v45);
        v39 = *(v7 + 8);
        v39(v9, v6);
        sub_270A52748(v23, v24, v43);

        sub_270A891B0();
        v31 = sub_270A88C10();
        sub_270A88860();

        sub_270A88AE0();
        swift_getAtKeyPath();
        sub_270A4F070(&v45);
        v39(v9, v6);
        v27 = v43;
      }

      v32 = sub_270A52D28(v24, v27);

      if (v32)
      {
        v33 = v32;
        sub_270A88DC0();
        v34 = v40;
        (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v40);
        v32 = sub_270A88E10();

        (*(v3 + 8))(v5, v34);
      }

      v41 = v32;
      v42 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F080);
      sub_270A4F0D8();
      sub_270A88BC0();
    }

    v36 = v44;
    *a1 = v43;
    *(a1 + 8) = v36;
  }

  return result;
}

double sub_270A4EEF0@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v18 = *v1;
  v19[0] = v3;
  *(v19 + 9) = *(v1 + 25);
  sub_270A4E934(&v11);
  v4 = v11;
  v5 = v12;
  sub_270A88EA0();
  sub_270A88970();
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  result = *&v17;
  *(a1 + 48) = v17;
  return result;
}

unint64_t sub_270A4EFA8()
{
  result = qword_28083F070;
  if (!qword_28083F070)
  {
    type metadata accessor for NotificationSourceIconCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F070);
  }

  return result;
}

uint64_t sub_270A4F000(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F078);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_270A4F070(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_270A4F0D8()
{
  result = qword_28083F088;
  if (!qword_28083F088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F088);
  }

  return result;
}

unint64_t sub_270A4F154()
{
  result = qword_28083F090;
  if (!qword_28083F090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F098);
    sub_270A4F1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F090);
  }

  return result;
}

unint64_t sub_270A4F1E0()
{
  result = qword_28083F0A0;
  if (!qword_28083F0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28083F0A8);
    sub_270A4F0D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F0A0);
  }

  return result;
}

id sub_270A4F26C()
{
  sub_270A4F2C4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280842BE0 = result;
  return result;
}

unint64_t sub_270A4F2C4()
{
  result = qword_28083F0B0;
  if (!qword_28083F0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28083F0B0);
  }

  return result;
}

uint64_t sub_270A4F310(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270A4F330(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_270A4F39C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270A4F3EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_270A4F440(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_270A4F458(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_270A4F488(uint64_t a1)
{
  v2 = 0xD000000000000015;
  v26 = sub_270A88840();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = *(a1 + 16);
    v7 = MEMORY[0x277D84F90];
    if (v6)
    {
      v27 = MEMORY[0x277D84F90];
      sub_270A50388(0, v6, 0);
      v7 = v27;
      v9 = *(v3 + 16);
      v8 = v3 + 16;
      v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
      v23 = *(v8 + 56);
      v24 = v9;
      v25 = v8;
      v11 = (v8 - 8);
      do
      {
        v12 = v26;
        v24(v5, v10, v26);
        v13 = sub_270A88830();
        v15 = v14;
        (*v11)(v5, v12);
        v27 = v7;
        v17 = *(v7 + 16);
        v16 = *(v7 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_270A50388((v16 > 1), v17 + 1, 1);
          v7 = v27;
        }

        *(v7 + 16) = v17 + 1;
        v18 = v7 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
        v10 += v23;
        --v6;
      }

      while (v6);
    }

    v27 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FBB0);
    sub_270A503A8();
    v19 = sub_270A88F90();
    v21 = v20;

    v27 = 0xD000000000000020;
    v28 = 0x8000000270A90C20;
    MEMORY[0x2743AE510](v19, v21);

    MEMORY[0x2743AE510](41, 0xE100000000000000);
    return v27;
  }

  return v2;
}

uint64_t sub_270A4F6E4(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_270A89050();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t sub_270A4F74C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return sub_270A7CF54(v2, v3);
    }

    return 0;
  }

  return !v3;
}

void sub_270A4F77C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = [objc_opt_self() currentNotificationSettingsCenter];
    v4 = [v3 notificationSystemSettings];
    [v4 mutableCopy];

    sub_270A89270();
    swift_unknownObjectRelease();
    sub_270A50558();
    if (swift_dynamicCast())
    {
      v5 = (a1 + 32);
      do
      {
        v6 = *v5++;
        v12[0] = v6;

        sub_270A4F94C(v12, v11, v3);

        --v1;
      }

      while (v1);
      v7 = v3;
      v3 = v11;
    }

    else
    {
      if (qword_28122C2A0 != -1)
      {
        swift_once();
      }

      v8 = sub_270A88890();
      __swift_project_value_buffer(v8, qword_28122C340);
      v7 = sub_270A88870();
      v9 = sub_270A891B0();
      if (os_log_type_enabled(v7, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_270A33000, v7, v9, "Cannot get a mutable copy of UNNotificationSystemSettings", v10, 2u);
        MEMORY[0x2743AF520](v10, -1, -1);
      }
    }
  }
}

void sub_270A4F94C(uint64_t *a1, void *a2, void *a3)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC20);
  MEMORY[0x28223BE20](v7);
  v9 = &v56[-v8];
  v10 = sub_270A88840();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a1;
  if (!*a1)
  {
    [a2 setPrioritizationSetting_];
    [a3 setNotificationSystemSettings_];
    return;
  }

  v64 = v3;
  v58 = a3;
  v59 = v11;
  v16 = *MEMORY[0x277D77EF8];
  v17 = *(v11 + 104);
  v18 = v15;
  v60 = a2;
  v19 = v12;
  v17(v14, v16, v12);
  v57 = sub_270A4FF2C(v14, v18);
  v62 = v7;
  v21 = v59 + 8;
  v20 = *(v59 + 8);
  v20(v14, v19);
  v17(v14, v16, v19);
  v61 = v18;
  v22 = sub_270A4FF2C(v14, v18);
  v63 = v19;
  v23 = v19;
  v24 = v59;
  v20(v14, v23);
  if (v57)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v26 = v60;
  [v60 setSummarizationSetting_];
  [v58 setNotificationSystemSettings_];
  v65 = MEMORY[0x277D84F98];
  v27 = sub_270A75D38();
  v28 = sub_270A6F244(v27);

  v29 = sub_270A75F9C(v28);

  v30 = 1 << *(v29 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v29 + 64);
  v33 = (v30 + 63) >> 6;
  v60 = (v21 + 8);
  v34 = v22;

  v35 = 0;
  while (v32)
  {
    v36 = v35;
    v37 = v63;
LABEL_14:
    v38 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v39 = v38 | (v36 << 6);
    (*(v24 + 16))(v9, *(v29 + 48) + *(v24 + 72) * v39, v37);
    v40 = *(*(v29 + 56) + 8 * v39);
    *&v9[*(v62 + 48)] = v40;

    v41 = sub_270A4FF2C(v9, v61);
    v42 = v64;
    sub_270A50004(v40, v41, v34, &v65);
    v64 = v42;
    sub_270A4E644(v9, &qword_28083FC20);
  }

  v37 = v63;
  while (1)
  {
    v36 = (v35 + 1);
    if (__OFADD__(v35, 1))
    {
      __break(1u);
LABEL_24:
      swift_once();
      goto LABEL_20;
    }

    if (v36 >= v33)
    {
      break;
    }

    v32 = *(v29 + 64 + 8 * v36);
    ++v35;
    if (v32)
    {
      v35 = v36;
      goto LABEL_14;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F0C8);
  v43 = sub_270A88F50();
  v66[0] = 0;
  v44 = [v58 setSourceSettings:v43 error:v66];

  if (v44)
  {
    v45 = v66[0];

    return;
  }

  v46 = v66[0];
  v35 = sub_270A88690();

  swift_willThrow();
  if (qword_28122C2A0 != -1)
  {
    goto LABEL_24;
  }

LABEL_20:
  v47 = sub_270A88890();
  __swift_project_value_buffer(v47, qword_28122C340);
  v48 = v35;
  v49 = sub_270A88870();
  v50 = sub_270A891A0();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v66[0] = v52;
    *v51 = 136315138;
    swift_getErrorValue();
    v53 = sub_270A895E0();
    v55 = sub_270A4D698(v53, v54, v66);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_270A33000, v49, v50, "Cannot save settings with error: '%s'", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x2743AF520](v52, -1, -1);
    MEMORY[0x2743AF520](v51, -1, -1);
  }

  else
  {
  }
}

BOOL sub_270A4FF2C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_270A88840();
    ++v2;
    sub_270A5122C();
  }

  while ((sub_270A88FA0() & 1) == 0);
  return v3 != v4;
}

void sub_270A50004(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a1;
  if (a1 >> 62)
  {
LABEL_34:
    v35 = a3;
    v36 = a2;
    v37 = sub_270A892D0();
    a2 = v36;
    a3 = v35;
    v5 = v37;
    if (v37)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v41 = v4 & 0xFFFFFFFFFFFFFF8;
      v42 = v4 & 0xC000000000000001;
      if ((a2 | a3))
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      v40 = v7;
      v38 = v5;
      v39 = v4;
      do
      {
        if (v42)
        {
          v8 = MEMORY[0x2743AE840](v6, v4);
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          if (v6 >= *(v41 + 16))
          {
            goto LABEL_29;
          }

          v8 = *(v4 + 8 * v6 + 32);
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }
        }

        v43 = v9;
        v10 = v8;
        v11 = [v8 sourceIdentifier];
        v12 = sub_270A88FC0();
        v14 = v13;

        v45 = 0xD000000000000014;
        v46 = 0x8000000270A90C50;
        v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F0D0);
        v15 = sub_270A89490();

        v4 = v45;
        v16 = v46;
        v17 = v47;

        v18 = v17;
        v19 = sub_270A7D244(v4, v16);
        if (a2)
        {
          goto LABEL_30;
        }

        v15[(v19 >> 6) + 8] |= 1 << v19;
        v20 = (v15[6] + 16 * v19);
        *v20 = v4;
        v20[1] = v16;
        *(v15[7] + 8 * v19) = v18;
        v21 = v15[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_31;
        }

        v15[2] = v23;

        sub_270A4E644(&v45, &qword_28083F0D8);
        v4 = a4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = *a4;
        v25 = v48;
        *a4 = 0x8000000000000000;
        v26 = sub_270A7D244(v12, v14);
        v27 = v25[2];
        v28 = (a2 & 1) == 0;
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
          goto LABEL_32;
        }

        v4 = a2;
        if (v25[3] >= v29)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v31 = v48;
            if (a2)
            {
              goto LABEL_7;
            }
          }

          else
          {
            sub_270A714C0();
            v31 = v48;
            if (v4)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
          sub_270A6F5F8(v29, isUniquelyReferenced_nonNull_native);
          v30 = sub_270A7D244(v12, v14);
          if ((v4 & 1) != (a2 & 1))
          {
            sub_270A895A0();
            __break(1u);
            return;
          }

          v26 = v30;
          v31 = v48;
          if (v4)
          {
LABEL_7:
            *(v31[7] + 8 * v26) = v15;

            goto LABEL_8;
          }
        }

        v31[(v26 >> 6) + 8] |= 1 << v26;
        v32 = (v31[6] + 16 * v26);
        *v32 = v12;
        v32[1] = v14;
        *(v31[7] + 8 * v26) = v15;
        v33 = v31[2];
        v22 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v22)
        {
          goto LABEL_33;
        }

        v31[2] = v34;
LABEL_8:
        *a4 = v31;

        ++v6;
        v4 = v39;
      }

      while (v43 != v38);
    }
  }
}

char *sub_270A50388(char *a1, int64_t a2, char a3)
{
  result = sub_270A5044C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_270A503A8()
{
  result = qword_28083FDB0;
  if (!qword_28083FDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28083FBB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083FDB0);
  }

  return result;
}

char *sub_270A5040C(char *a1, int64_t a2, char a3)
{
  result = sub_270A505A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_270A5042C(char *a1, int64_t a2, char a3)
{
  result = sub_270A506B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_270A5044C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F0B8);
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

unint64_t sub_270A50558()
{
  result = qword_28083F0C0;
  if (!qword_28083F0C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28083F0C0);
  }

  return result;
}

char *sub_270A505A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FC50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_270A506B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F0E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_270A507C0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FBE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v31 - v5;
  v7 = sub_270A88840();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v38 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = v31 - v11;
  v43 = a1;
  v44 = a2;
  v41 = 40;
  v42 = 0xE100000000000000;
  sub_270A51284();
  v12 = sub_270A89260();

  v14 = v12[2];
  if (v14 > 2)
  {
    goto LABEL_24;
  }

  if (!v14)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v15 = sub_270A894A0();

  if (v15)
  {
    if (v15 == 1)
    {
      v16 = 1;
      if (v14 == 2)
      {
        goto LABEL_6;
      }

LABEL_28:

      v43 = 0;
      v44 = 0;
      if (v16)
      {
        goto LABEL_10;
      }

      goto LABEL_29;
    }

LABEL_24:

    return 1;
  }

  v16 = 0;
  if (v14 != 2)
  {
    goto LABEL_28;
  }

LABEL_6:
  if (v12[2] >= 2uLL)
  {
    v17 = v12[6];
    v18 = v12[7];

    v43 = v17;
    v44 = v18;
    v19 = sub_270A89040();
    if (v19 > 0)
    {
      sub_270A4F6E4(v19);
    }

    if (v16)
    {
LABEL_10:
      if (v44)
      {
        v20 = HIBYTE(v44) & 0xF;
        if ((v44 & 0x2000000000000000) == 0)
        {
          v20 = v43 & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {
          v41 = v43;
          v42 = v44;
          v31[1] = v44;
          v39 = 44;
          v40 = 0xE100000000000000;
          result = sub_270A89260();
          v21 = result;
          v36 = *(result + 16);
          if (v36)
          {
            v22 = 0;
            v34 = v8;
            v35 = (v8 + 48);
            v23 = (v8 + 32);
            v31[2] = v8 + 8;
            v32 = (v8 + 16);
            v24 = result + 40;
            v25 = MEMORY[0x277D84F90];
            v33 = v6;
            while (v22 < *(v21 + 16))
            {

              sub_270A88820();
              if ((*v35)(v6, 1, v7) == 1)
              {

                sub_270A4E644(v6, &qword_28083FBE0);
                goto LABEL_24;
              }

              v26 = *v23;
              v27 = v37;
              (*v23)(v37, v6, v7);
              (*v32)(v38, v27, v7);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_270A6ECD0(0, v25[2] + 1, 1, v25);
              }

              v29 = v25[2];
              v28 = v25[3];
              if (v29 >= v28 >> 1)
              {
                v25 = sub_270A6ECD0(v28 > 1, v29 + 1, 1, v25);
              }

              ++v22;
              v30 = v34;
              (*(v34 + 8))(v37, v7);
              v25[2] = v29 + 1;
              result = (v26)(v25 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v29, v38, v7);
              v24 += 16;
              v6 = v33;
              if (v36 == v22)
              {
                goto LABEL_32;
              }
            }

            __break(1u);
            goto LABEL_36;
          }

          v25 = MEMORY[0x277D84F90];
LABEL_32:
        }

        else
        {
          v25 = MEMORY[0x277D84F90];
        }

        return v25;
      }

      return 1;
    }

LABEL_29:

    return 0;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_270A50C64(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v67[1] = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083FC20);
  MEMORY[0x28223BE20](v9);
  v11 = &v55[-v10];
  v12 = sub_270A88840();
  MEMORY[0x28223BE20](v12);
  v16 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *a1;
  if (!*a1)
  {
    [a2 setPrioritizationSetting_];
    [a3 setNotificationSystemSettings_];
    return;
  }

  v65 = v4;
  v60 = a3;
  v61 = a4;
  v18 = *MEMORY[0x277D77EF8];
  v19 = *(v14 + 104);
  v57 = a2;
  v58 = v14;
  v20 = v13;
  v21 = v9;
  v22 = v14;
  v19(v16, v18, v13);
  v56 = sub_270A4FF2C(v16, v17);
  v59 = v21;
  v24 = *(v22 + 8);
  v23 = v22 + 8;
  v24(v16, v20);
  v19(v16, v18, v20);
  v63 = v17;
  v62 = sub_270A4FF2C(v16, v17);
  v64 = v20;
  v24(v16, v20);
  if (v56)
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

  v26 = v57;
  [v57 setSummarizationSetting_];
  v27 = v59;
  [v60 setNotificationSystemSettings_];
  v66 = MEMORY[0x277D84F98];
  v28 = *(v61 + OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_categorizedSources);
  v29 = 1 << *(v28 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v28 + 64);
  v32 = (v29 + 63) >> 6;
  v61 = v23 + 8;
  swift_bridgeObjectRetain_n();
  v33 = 0;
  v34 = v58;
  while (v31)
  {
    v35 = v33;
    v36 = v64;
LABEL_14:
    v37 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v38 = v37 | (v35 << 6);
    (*(v34 + 16))(v11, *(v28 + 48) + *(v34 + 72) * v38, v36);
    v39 = *(*(v28 + 56) + 8 * v38);
    *&v11[*(v27 + 48)] = v39;

    v40 = sub_270A4FF2C(v11, v63);
    v41 = v65;
    sub_270A50004(v39, v40, v62, &v66);
    v65 = v41;
    sub_270A4E644(v11, &qword_28083FC20);
  }

  v36 = v64;
  while (1)
  {
    v35 = (v33 + 1);
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_24:
      swift_once();
      goto LABEL_20;
    }

    if (v35 >= v32)
    {
      break;
    }

    v31 = *(v28 + 64 + 8 * v35);
    ++v33;
    if (v31)
    {
      v33 = v35;
      goto LABEL_14;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F0C8);
  v42 = sub_270A88F50();
  v67[0] = 0;
  v43 = [v60 setSourceSettings:v42 error:v67];

  if (v43)
  {
    v44 = v67[0];

    return;
  }

  v45 = v67[0];
  v33 = sub_270A88690();

  swift_willThrow();
  if (qword_28122C2A0 != -1)
  {
    goto LABEL_24;
  }

LABEL_20:
  v46 = sub_270A88890();
  __swift_project_value_buffer(v46, qword_28122C340);
  v47 = v33;
  v48 = sub_270A88870();
  v49 = sub_270A891A0();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v67[0] = v51;
    *v50 = 136315138;
    swift_getErrorValue();
    v52 = sub_270A895E0();
    v54 = sub_270A4D698(v52, v53, v67);

    *(v50 + 4) = v54;
    _os_log_impl(&dword_270A33000, v48, v49, "Cannot save settings with error: '%s'", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x2743AF520](v51, -1, -1);
    MEMORY[0x2743AF520](v50, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_270A5122C()
{
  result = qword_28083F0E0;
  if (!qword_28083F0E0)
  {
    sub_270A88840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F0E0);
  }

  return result;
}

unint64_t sub_270A51284()
{
  result = qword_28083F0F0;
  if (!qword_28083F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F0F0);
  }

  return result;
}

uint64_t static NCNotificationSourceCategorizer.eligibleForSummarization(category:)(unint64_t a1)
{
  v2 = sub_270A88840();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    v6 = MEMORY[0x277D77EF8];
  }

  else
  {
    v6 = qword_279E0DD40[a1];
  }

  (*(v3 + 104))(v5, *v6, v2);
  v7 = sub_270A88800();
  (*(v3 + 8))(v5, v2);
  return v7 & 1;
}

uint64_t static NCNotificationSourceCategorizer.category(of:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_270A88840();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2743ADD00](a1, a2);
  v8 = (*(v5 + 88))(v7, v4);
  result = 0;
  if (v8 != *MEMORY[0x277D77EF0])
  {
    if (v8 == *MEMORY[0x277D77EE8])
    {
      return 1;
    }

    else if (v8 == *MEMORY[0x277D77F00])
    {
      return 2;
    }

    else
    {
      if (v8 != *MEMORY[0x277D77EF8])
      {
        (*(v5 + 8))(v7, v4);
      }

      return 3;
    }
  }

  return result;
}

NCNotificationSourceCategorizer __swiftcall NCNotificationSourceCategorizer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for NCNotificationSourceCategorizer()
{
  result = qword_28083F0F8;
  if (!qword_28083F0F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28083F0F8);
  }

  return result;
}

id sub_270A518EC()
{
  v1 = [v0 icon];
  v2 = [v1 applicationIdentifier];

  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D1B1A8]) initWithBundleIdentifier_];

    return v3;
  }

  v5 = [v0 icon];
  v6 = [v5 name];

  if (!v6)
  {
    v8 = [v0 icon];
    v9 = [v8 data];

    if (v9)
    {
      v10 = sub_270A886F0();
      v12 = v11;

      v13 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v14 = sub_270A886E0();
      v15 = [v13 initWithData_];

      if (v15)
      {
        v16 = v15;
        v17 = [v16 CGImage];
        if (v17)
        {
          v18 = v17;
          [v16 scale];
          v20 = [objc_allocWithZone(MEMORY[0x277D1B160]) initWithCGImage:v18 scale:v19];

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F100);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_270A8D5C0;
          *(v21 + 32) = v20;
          v22 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
          sub_270A51D28();
          v23 = v20;
          v24 = sub_270A890B0();

          v3 = [v22 initWithImages_];

          sub_270A51D74(v10, v12);
          return v3;
        }
      }

      sub_270A51D74(v10, v12);
    }

    else
    {
      v25 = [v0 icon];
      v26 = [v25 path];

      if (v26)
      {
        v27 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithContentsOfFile_];

        if (v27)
        {
          v28 = v27;
          v29 = [v28 CGImage];
          if (v29)
          {
            v30 = v29;
            [v28 scale];
            v32 = [objc_allocWithZone(MEMORY[0x277D1B160]) initWithCGImage:v30 scale:v31];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F100);
            v33 = swift_allocObject();
            *(v33 + 16) = xmmword_270A8D5C0;
            *(v33 + 32) = v32;
            v34 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
            sub_270A51D28();
            v35 = v32;
            v36 = sub_270A890B0();

            v3 = [v34 initWithImages_];

            return v3;
          }
        }
      }
    }

    return 0;
  }

  sub_270A88FC0();

  v7 = sub_270A51DC8();

  return v7;
}

unint64_t sub_270A51D28()
{
  result = qword_28083F108;
  if (!qword_28083F108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28083F108);
  }

  return result;
}

uint64_t sub_270A51D74(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_270A51DC8()
{
  v1 = [v0 bundlePath];
  if (!v1)
  {
    sub_270A88FC0();
    v1 = sub_270A88FB0();
  }

  v2 = [objc_allocWithZone(MEMORY[0x277CCA8D8]) initWithPath_];

  v3 = sub_270A88FB0();
  v4 = [objc_opt_self() imageNamed:v3 inBundle:v2];

  if (v4)
  {
    v5 = v4;
    v6 = [v5 CGImage];
    if (v6)
    {
      v7 = v6;
      [v5 scale];
      v9 = [objc_allocWithZone(MEMORY[0x277D1B160]) initWithCGImage:v7 scale:v8];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F100);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_270A8D5C0;
      *(v10 + 32) = v9;
      v11 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      sub_270A51D28();
      v12 = v9;
      v13 = sub_270A890B0();

      v14 = [v11 initWithImages_];

      return v14;
    }
  }

  return 0;
}

uint64_t sub_270A52010(uint64_t a1, uint64_t *a2)
{
  v3 = sub_270A88890();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_270A88880();
}

unint64_t sub_270A52088(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ELL;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_270A520F4()
{
  result = sub_270A88CB0();
  qword_280842C00 = result;
  return result;
}

uint64_t sub_270A52114()
{
  result = sub_270A88D90();
  qword_280842C08 = result;
  return result;
}

uint64_t sub_270A52134()
{
  result = sub_270A88CA0();
  qword_280842C10 = result;
  return result;
}

uint64_t sub_270A52154()
{
  result = sub_270A88DA0();
  qword_280842C18 = result;
  return result;
}

uint64_t sub_270A52174()
{
  result = sub_270A88D70();
  qword_280842C20 = result;
  return result;
}

uint64_t sub_270A52194()
{
  result = sub_270A88D60();
  qword_280842C28 = result;
  return result;
}

uint64_t sub_270A521B4()
{
  result = sub_270A88CA0();
  qword_280842C30 = result;
  return result;
}

uint64_t sub_270A521D4()
{
  result = sub_270A88D70();
  qword_280842C38 = result;
  return result;
}

uint64_t sub_270A52230()
{
  result = sub_270A88D40();
  qword_280842C50 = result;
  return result;
}

uint64_t sub_270A52250()
{
  if (qword_28083EE50 != -1)
  {
    swift_once();
  }

  qword_280842C58 = qword_280842C38;
}

uint64_t sub_270A522B4()
{
  result = sub_270A88C90();
  qword_280842C60 = result;
  return result;
}

uint64_t sub_270A52308(uint64_t a1, uint64_t *a2)
{
  v3 = sub_270A88D50();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 104))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_270A88DB0();
  *a2 = result;
  return result;
}

uint64_t sub_270A523F0()
{
  result = sub_270A896F0();
  qword_280842C78 = result;
  unk_280842C80 = v1;
  return result;
}

uint64_t sub_270A5241C()
{
  result = sub_270A896F0();
  qword_280842C88 = result;
  unk_280842C90 = v1;
  return result;
}

uint64_t sub_270A5244C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F110);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_270A8D610;
  strcpy((v0 + 32), "Not Summarized");
  *(v0 + 47) = -18;
  *(v0 + 48) = xmmword_270A8D620;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0x7A6972616D6D7553;
  *(v0 + 80) = 0xEA00000000006465;
  if (qword_28083EE90 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = sub_270A896D0();
  *(v0 + 96) = v1;
  *(v0 + 104) = 1;
  strcpy((v0 + 112), "Not Summarized");
  *(v0 + 127) = -18;
  if (qword_28083EE98 != -1)
  {
    swift_once();
  }

  result = sub_270A896D0();
  *(v0 + 128) = result;
  *(v0 + 136) = v3;
  *(v0 + 144) = 1;
  qword_280842C98 = v0;
  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_270A525D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_270A52618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_270A52698(void *a1, double a2, double a3)
{
  swift_beginAccess();
  v7 = *(v3 + 64);
  if (*(v7 + 16) && (v8 = sub_270A7D168(a1, a2, a3), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 16 * v8);
    v11 = *v10;
    v12 = v10[1];
    swift_retain_n();
    v13 = v12;
    swift_endAccess();
    sub_270A54814(v11, v12);
    return v11;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

void sub_270A52748(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = sub_270A88F30();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_270A4DC8C(0, &unk_28083FD80);
  *v11 = sub_270A891D0();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_270A88F40();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    swift_beginAccess();
    v13 = *(v4[8] + 16);
    v62 = a1;
    if (v13)
    {
      sub_270A7D168(a1, a2, a3);
      if (v14)
      {
        swift_endAccess();

        return;
      }
    }

    v60 = a1;
    swift_endAccess();
    swift_beginAccess();
    v15 = v4[6];
    v16 = *(v15 + 16);
    v61 = v4;
    if (v16)
    {
      sub_270A89630();
      sub_270A89650();
      v17 = v62;

      sub_270A89240();

      if (a2 == 0.0)
      {
        v18 = 0.0;
      }

      else
      {
        v18 = a2;
      }

      MEMORY[0x2743AEB10](*&v18);
      if (a3 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = a3;
      }

      MEMORY[0x2743AEB10](*&v19);
      v20 = sub_270A89680();
      v21 = -1 << *(v15 + 32);
      v22 = v20 & ~v21;
      if ((*(v15 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        do
        {
          v24 = *(v15 + 48) + 24 * v22;
          v25 = *v24;
          if (*v24)
          {
            v27 = *(v24 + 8);
            v26 = *(v24 + 16);
            sub_270A4DC8C(0, &qword_28083F120);
            v28 = v17;
            v29 = v25;
            v30 = sub_270A89230();

            if ((v30 & 1) != 0 && v27 == a2 && v26 == a3)
            {
              goto LABEL_41;
            }
          }

          v22 = (v22 + 1) & v23;
        }

        while (((*(v15 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
      }

      v4 = v61;
    }

    swift_beginAccess();
    v32 = v4[7];
    if (*(v32 + 16))
    {
      sub_270A89630();
      sub_270A89650();
      v33 = v62;

      sub_270A89240();

      if (a2 == 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = a2;
      }

      MEMORY[0x2743AEB10](*&v34);
      if (a3 == 0.0)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = a3;
      }

      MEMORY[0x2743AEB10](*&v35);
      v36 = sub_270A89680();
      v37 = -1 << *(v32 + 32);
      v38 = v36 & ~v37;
      if ((*(v32 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
      {
        v39 = ~v37;
        while (1)
        {
          v40 = *(v32 + 48) + 24 * v38;
          v41 = *v40;
          if (*v40)
          {
            v43 = *(v40 + 8);
            v42 = *(v40 + 16);
            sub_270A4DC8C(0, &qword_28083F120);
            v28 = v33;
            v44 = v41;
            v45 = sub_270A89230();

            if ((v45 & 1) != 0 && v43 == a2 && v42 == a3)
            {
              break;
            }
          }

          v38 = (v38 + 1) & v39;
          if (((*(v32 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
          {
            goto LABEL_42;
          }
        }

LABEL_41:

        return;
      }

LABEL_42:

      v4 = v61;
    }

    swift_beginAccess();
    v47 = v4[5];
    v48 = *(v47 + 16);
    if (v48)
    {

      v49 = 0;
      v50 = (v47 + 48);
      do
      {
        v51 = *(v50 - 2);
        if (v51)
        {
          v53 = *(v50 - 1);
          v52 = *v50;
          sub_270A4DC8C(0, &qword_28083F120);
          v54 = v62;
          v55 = v51;
          v56 = sub_270A89230();

          if ((v56 & 1) != 0 && v53 == a2 && v52 == a3)
          {

            swift_beginAccess();
            v58 = sub_270A531AC(v49);
            swift_endAccess();

            goto LABEL_55;
          }
        }

        ++v49;
        v50 += 3;
      }

      while (v48 != v49);
    }

LABEL_55:
    swift_beginAccess();
    v59 = v62;
    sub_270A541C0(0, 0, v60, a2, a3);
    swift_endAccess();

    sub_270A53250();
  }

  else
  {
    __break(1u);
  }
}

id sub_270A52D28(double a1, double a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 72);
  if (*(v6 + 16) && (v7 = sub_270A7D168(0, a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    return v9;
  }

  else
  {
    swift_endAccess();
    v11 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a1 scale:{a1, a2}];
    [v11 setDrawBorder_];
    v12 = [objc_opt_self() genericApplicationIcon];
    v13 = [v12 CGImageForDescriptor_];
    v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

    swift_beginAccess();
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v3 + 72);
    *(v3 + 72) = 0x8000000000000000;
    sub_270A70B00(v15, 0, isUniquelyReferenced_nonNull_native, a1, a2);
    *(v3 + 72) = v17;
    swift_endAccess();

    return v15;
  }
}

uint64_t sub_270A52ED8(double a1, double a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    sub_270A89650();
    v7 = a4;
    sub_270A89240();
  }

  else
  {
    sub_270A89650();
  }

  if (a1 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a1;
  }

  MEMORY[0x2743AEB10](*&v8);
  if (a2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a2;
  }

  return MEMORY[0x2743AEB10](*&v9);
}

uint64_t sub_270A52F78()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_270A89630();
  sub_270A52ED8(v2, v3, v5, v1);
  return sub_270A89680();
}

uint64_t sub_270A52FE0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_270A89630();
  sub_270A52ED8(v2, v3, v5, v1);
  return sub_270A89680();
}

void *sub_270A53054(uint64_t a1)
{
  v2 = v1;
  v4 = sub_270A88F00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  sub_270A4DC8C(0, &unk_28083FD80);
  (*(v5 + 104))(v7, *MEMORY[0x277D851C0], v4);
  v8 = sub_270A891F0();
  (*(v5 + 8))(v7, v4);
  v9 = MEMORY[0x277D84F90];
  v2[3] = v8;
  v10 = MEMORY[0x277D84FA0];
  v2[5] = v9;
  v2[6] = v10;
  v2[7] = v10;
  v2[8] = sub_270A64868(v9);
  v2[9] = sub_270A649A0(v9);
  v2[4] = a1;
  return v2;
}

uint64_t sub_270A531AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_270A540DC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_270A53250()
{
  v1 = v0;
  v2 = sub_270A88EF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_270A88F20();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v11 = v1[5];
  v12 = *(v11 + 16);
  if (v12)
  {
    result = swift_beginAccess();
    v13 = *(v1[6] + 16);
    v14 = v1[4];
    v15 = __OFSUB__(v14, v13);
    v16 = v14 - v13;
    if (!((v16 < 0) ^ v15 | (v16 == 0)))
    {
      if (v16 < v12)
      {
        v12 = v16;
      }

      if (v16 < 0)
      {
        __break(1u);
      }

      else
      {
        if (*(v11 + 16) >= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = *(v11 + 16);
        }

        if (v17)
        {
          v39 = v12;
          v47 = objc_opt_self();
          v46 = v1[3];
          v45 = v54;
          v44 = (v3 + 8);
          v43 = (v7 + 8);

          v49 = v1;
          v42 = v2;
          v41 = v5;
          v38 = v11;
          v18 = (v11 + 48);
          v40 = v9;
          v48 = v6;
          do
          {
            v19 = *(v18 - 2);
            v20 = *(v18 - 1);
            v21 = *v18;
            swift_beginAccess();
            v52 = v19;
            sub_270A71F80(aBlock, v19, v20, v21);
            swift_endAccess();

            v22 = swift_allocObject();
            *(v22 + 16) = 0;
            v23 = v47;
            v24 = [v47 currentTraitCollection];
            v25 = [v24 layoutDirection];

            v51 = v25 == 0;
            v26 = [v23 currentTraitCollection];
            v27 = [v26 accessibilityContrast];

            swift_beginAccess();
            *(v22 + 16) = v27 == 1;
            v28 = [v23 currentTraitCollection];
            v29 = [v28 userInterfaceStyle];

            v30 = swift_allocObject();
            swift_weakInit();
            v31 = swift_allocObject();
            *(v31 + 16) = v30;
            *(v31 + 24) = v19;
            *(v31 + 32) = v20;
            *(v31 + 40) = v21;
            *(v31 + 48) = v51;
            v50 = v22;
            *(v31 + 56) = v22;
            *(v31 + 64) = v29 == 2;
            v54[2] = sub_270A5436C;
            v54[3] = v31;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            v54[0] = sub_270A53DF8;
            v54[1] = &block_descriptor;
            v32 = _Block_copy(aBlock);
            v33 = v52;

            v34 = v40;
            sub_270A88F10();
            v54[7] = MEMORY[0x277D84F90];
            sub_270A547BC(&qword_28083F128, 255, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FD90);
            sub_270A5439C();
            v35 = v41;
            v36 = v42;
            sub_270A89280();
            MEMORY[0x2743AE690](0, v34, v35, v32);
            _Block_release(v32);

            v37 = v48;
            (*v44)(v35, v36);
            (*v43)(v34, v37);

            v18 += 3;
            --v17;
          }

          while (v17);
          swift_unknownObjectRelease();
          v1 = v49;
          v12 = v39;
        }

        result = swift_beginAccess();
        if (*(v1[5] + 16) >= v12)
        {
          sub_270A542AC(0, v12);
          return swift_endAccess();
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_270A53860(double a1, double a2, uint64_t a3, void *a4, char a5, uint64_t a6, char a7)
{
  v13 = sub_270A88EF0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_270A88F20();
  v30 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v21 = sub_270A54400(a4, a5 & 1, *(a6 + 16), a7 & 1, a1, a2);
    sub_270A4DC8C(0, &unk_28083FD80);
    v22 = sub_270A891D0();
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v21;
    *(v24 + 32) = a4;
    *(v24 + 40) = a1;
    *(v24 + 48) = a2;
    aBlock[4] = sub_270A547AC;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_270A53DF8;
    aBlock[3] = &block_descriptor_19;
    v25 = _Block_copy(aBlock);
    v29 = v17;
    v26 = v25;
    v27 = a4;
    v28 = v21;

    sub_270A88F10();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_270A547BC(&qword_28083F128, 255, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FD90);
    sub_270A5439C();
    sub_270A89280();
    MEMORY[0x2743AE690](0, v19, v16, v26);
    _Block_release(v26);

    (*(v14 + 8))(v16, v13);
    return (*(v30 + 8))(v19, v29);
  }

  return result;
}

uint64_t sub_270A53BE4(double a1, double a2, uint64_t a3, void *a4, void *a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    type metadata accessor for NotificationSourceIconCache();
    sub_270A547BC(&qword_28083F070, v11, type metadata accessor for NotificationSourceIconCache);
    sub_270A888C0();
    sub_270A888D0();

    if (a4)
    {
      v12 = a4;
      v13 = sub_270A88DD0();
      swift_beginAccess();
      v14 = a5;
      v15 = v12;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v10 + 64);
      *(v10 + 64) = 0x8000000000000000;
      sub_270A70C90(v13, v15, a5, isUniquelyReferenced_nonNull_native, a1, a2);

      *(v10 + 64) = v19;
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      v17 = a5;
      sub_270A71F80(v20, a5, a1, a2);
      swift_endAccess();
    }

    swift_beginAccess();
    v18 = sub_270A7447C(a5, a1, a2);
    swift_endAccess();
    sub_270A54804(v18);
    sub_270A53250();
  }

  return result;
}

uint64_t sub_270A53DF8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_270A53E3C()
{

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_270A53ECC(uint64_t *a1, int a2)
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

uint64_t sub_270A53F14(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_270A53F74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_270A53FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_270A54038()
{
  result = qword_28083F118;
  if (!qword_28083F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F118);
  }

  return result;
}

uint64_t sub_270A5408C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_270A888C0();
  *a1 = result;
  return result;
}

BOOL sub_270A540F0(_BOOL8 result, void *a2, double a3, double a4, double a5, double a6)
{
  if (!result)
  {
    if (a2 || a3 != a5)
    {
      return result;
    }

    return a4 == a6;
  }

  if (!a2)
  {
    return 0;
  }

  v7 = result;
  v10 = a4;
  v11 = a6;
  sub_270A4DC8C(0, &qword_28083F120);
  v12 = a2;
  v13 = v7;
  LOBYTE(v7) = sub_270A89230();

  result = 0;
  if (v7)
  {
    a6 = v11;
    a4 = v10;
    if (a3 == a5)
    {
      return a4 == a6;
    }
  }

  return result;
}

unint64_t sub_270A541C0(unint64_t result, uint64_t a2, void *a3, double a4, double a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = *v5;
  v8 = *(*v5 + 2);
  if (v8 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v7 + 3) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    v7 = sub_270A6EBB0(isUniquelyReferenced_nonNull_native, v18, 1, v7);
    *v5 = v7;
  }

  result = sub_270A66C8C(v9, a2, 1, a3, a4, a5);
  *v5 = v7;
  return result;
}

unint64_t sub_270A542AC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_270A6EBB0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_270A66D8C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_270A5439C()
{
  result = qword_28083F130;
  if (!qword_28083F130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28083FD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F130);
  }

  return result;
}

id sub_270A54400(void *a1, char a2, char a3, char a4, double a5, double a6)
{
  if (!a1)
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v20 = sub_270A88890();
    __swift_project_value_buffer(v20, qword_28122C340);
    v21 = sub_270A88870();
    v22 = sub_270A891A0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_270A33000, v21, v22, "should never call loadImage(for:completion) where request.source is nil. use placeholder(...) instead", v23, 2u);
      MEMORY[0x2743AF520](v23, -1, -1);
    }

    goto LABEL_18;
  }

  v11 = a1;
  v12 = sub_270A518EC();
  if (!v12)
  {
    if (qword_28122C2A0 != -1)
    {
      swift_once();
    }

    v24 = sub_270A88890();
    __swift_project_value_buffer(v24, qword_28122C340);
    v21 = v11;
    v25 = sub_270A88870();
    v26 = sub_270A891A0();

    if (!os_log_type_enabled(v25, v26))
    {

      return 0;
    }

    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136446210;
    v29 = [v21 sourceIdentifier];
    v30 = sub_270A88FC0();
    v32 = v31;

    v33 = sub_270A4D698(v30, v32, &v36);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_270A33000, v25, v26, "could not load icon for %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x2743AF520](v28, -1, -1);
    MEMORY[0x2743AF520](v27, -1, -1);

LABEL_18:
    return 0;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:a5 scale:{a5, a6}];
  [v14 setDrawBorder_];
  if (a2)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  [v14 setLanguageDirection_];
  [v14 setContrast_];
  [v14 setAppearance_];
  v16 = [v13 imageForDescriptor_];
  if (v16)
  {
    v17 = v16;
    v18 = v17;
    if (![v17 placeholder] || (v19 = v14, v18 = objc_msgSend(v13, sel_prepareImageForDescriptor_, v19), v19, v17, v18))
    {

      v17 = v18;
    }
  }

  else
  {
    v17 = 0;
  }

  v35 = [v17 CGImage];

  return v35;
}

uint64_t sub_270A547BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_270A54804(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_270A54814(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_270A5485C()
{
  v0 = sub_270A88890();
  __swift_allocate_value_buffer(v0, qword_28122C2C0);
  __swift_project_value_buffer(v0, qword_28122C2C0);
  return sub_270A88880();
}

uint64_t sub_270A548F0(uint64_t a1)
{
  v2 = sub_270A5BEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270A5492C(uint64_t a1)
{
  v2 = sub_270A5BEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270A54968(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F2C0);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F2C8);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F2D0);
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F2D8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_270A5BE3C();
  sub_270A896B0();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_270A5BEE4();
      sub_270A89510();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_270A5BE90();
      v16 = v22;
      sub_270A89510();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_270A5BF38();
    sub_270A89510();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

uint64_t sub_270A54CE8(uint64_t a1)
{
  v2 = sub_270A5BF38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270A54D24(uint64_t a1)
{
  v2 = sub_270A5BF38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270A54D60()
{
  v1 = 0x6465747065636361;
  if (*v0 != 1)
  {
    v1 = 0x64657463656A6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64657261656C63;
  }
}

uint64_t sub_270A54DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270A5AB58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270A54DE4(uint64_t a1)
{
  v2 = sub_270A5BE3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270A54E20(uint64_t a1)
{
  v2 = sub_270A5BE3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270A54E5C(uint64_t a1)
{
  v2 = sub_270A5BE90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270A54E98(uint64_t a1)
{
  v2 = sub_270A5BE90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270A54ED4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_270A5AC70(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_270A54F1C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_270A5BD40();
  sub_270A896B0();
  v10[15] = *v3;
  v10[14] = 0;
  sub_270A5BDE8();
  sub_270A89540();
  if (!v2)
  {
    _s10EngagementVMa(0);
    v10[13] = 1;
    sub_270A88760();
    sub_270A5A954(&qword_28083F210, MEMORY[0x277CC9578]);
    sub_270A89540();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_270A550EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_270A88760();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F250);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v17 - v6;
  v8 = _s10EngagementVMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_270A5BD40();
  sub_270A896A0();
  if (!v2)
  {
    v19 = v8;
    v11 = v10;
    v13 = v22;
    v12 = v23;
    v26 = 0;
    sub_270A5BD94();
    v14 = v24;
    sub_270A894F0();
    v18 = v11;
    *v11 = v27;
    v25 = 1;
    sub_270A5A954(&qword_28083F228, MEMORY[0x277CC9578]);
    sub_270A894F0();
    (*(v13 + 8))(v7, v14);
    v15 = v18;
    (*(v20 + 32))(&v18[*(v19 + 20)], v5, v12);
    sub_270A5A9B0(v15, v21, _s10EngagementVMa);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_270A55408()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 1684957547;
  }
}

uint64_t sub_270A5542C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v5 || (sub_270A89570() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_270A89570();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_270A55508(uint64_t a1)
{
  v2 = sub_270A5BD40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270A55544(uint64_t a1)
{
  v2 = sub_270A5BD40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270A555B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_270A88720();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_270A555D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F200);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_270A5BC98();
  sub_270A896B0();
  v11 = 0;
  sub_270A88760();
  sub_270A5A954(&qword_28083F210, MEMORY[0x277CC9578]);
  sub_270A89520();
  if (!v1)
  {
    _s6RecordVMa(0);
    v10 = 1;
    sub_270A89520();
    v9 = 2;
    _s10EngagementVMa(0);
    sub_270A5A954(&qword_28083F218, _s10EngagementVMa);
    sub_270A89520();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_270A55818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F190);
  MEMORY[0x28223BE20](v3 - 8);
  v33 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDE0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F220);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = _s6RecordVMa(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_270A88760();
  v17 = *(*(v16 - 8) + 56);
  v17(v15, 1, 1, v16);
  v18 = *(v13 + 28);
  v17(&v15[v18], 1, 1, v16);
  v19 = *(v13 + 32);
  v20 = _s10EngagementVMa(0);
  v21 = *(*(v20 - 8) + 56);
  v38 = v15;
  v21(&v15[v19], 1, 1, v20);
  v22 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v22);
  sub_270A5BC98();
  v23 = v39;
  sub_270A896A0();
  if (v23)
  {
    v24 = v38;
  }

  else
  {
    v39 = v18;
    v31 = v19;
    v25 = v34;
    v43 = 0;
    sub_270A5A954(&qword_28083F228, MEMORY[0x277CC9578]);
    v26 = v35;
    v27 = v11;
    sub_270A894D0();
    v24 = v38;
    sub_270A5AA88(v26, v38, &unk_28083FDE0);
    v42 = 1;
    sub_270A894D0();
    sub_270A5AA88(v25, v24 + v39, &unk_28083FDE0);
    v41 = 2;
    sub_270A5A954(&qword_28083F230, _s10EngagementVMa);
    v28 = v33;
    v29 = v37;
    sub_270A894D0();
    (*(v36 + 8))(v27, v29);
    sub_270A5AA88(v28, v24 + v31, &qword_28083F190);
    sub_270A5AAF0(v24, v32, _s6RecordVMa);
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return sub_270A5A8A0(v24, _s6RecordVMa);
}

uint64_t sub_270A55D10(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F238);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_270A5BCEC();
  sub_270A896B0();
  v8[15] = 0;
  sub_270A88760();
  sub_270A5A954(&qword_28083F210, MEMORY[0x277CC9578]);
  sub_270A89540();
  if (!v1)
  {
    _s12GlobalRecordVMa(0);
    v8[14] = 1;
    sub_270A89530();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_270A55ECC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_270A88760();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F248);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v22 - v7;
  v9 = _s12GlobalRecordVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_270A5BCEC();
  sub_270A896A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_270A5A954(&qword_28083F228, MEMORY[0x277CC9578]);
  v14 = v26;
  sub_270A894F0();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_270A894E0();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_270A5AAF0(v19, v18, _s12GlobalRecordVMa);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_270A5A8A0(v19, _s12GlobalRecordVMa);
}

unint64_t sub_270A56224()
{
  v1 = 0x656D656761676E65;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_270A56290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270A5B200(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270A562B8(uint64_t a1)
{
  v2 = sub_270A5BC98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270A562F4(uint64_t a1)
{
  v2 = sub_270A5BC98();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_270A56364()
{
  if (*v0)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_270A563A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x8000000270A912E0 == a2 || (sub_270A89570() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000270A91300 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_270A89570();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_270A56484(uint64_t a1)
{
  v2 = sub_270A5BCEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270A564C0(uint64_t a1)
{
  v2 = sub_270A5BCEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_270A564FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_270A88720() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_270A89570();
}

uint64_t sub_270A565B4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v54 = a6;
  v47 = a5;
  v9 = sub_270A89000();
  MEMORY[0x28223BE20](v9 - 8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F170);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v14 = _s6RecordVMa(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = *(a3 + 16);
  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  sub_270A89380();

  *&v51 = 0xD00000000000002CLL;
  *(&v51 + 1) = 0x8000000270A91050;
  v42 = 0x8000000270A91050;
  v44 = a1;
  v45 = a2;
  MEMORY[0x2743AE510](a1, a2);
  v22 = sub_270A88FB0();

  v43 = v21;
  v23 = [v21 objectForKey_];

  if (v23)
  {
    sub_270A89270();
    swift_unknownObjectRelease();
  }

  else
  {
    v51 = 0u;
    v52 = 0u;
  }

  v53[0] = v51;
  v53[1] = v52;
  v25 = v48;
  v24 = v49;
  if (!*(&v52 + 1))
  {
    sub_270A4E644(v53, &qword_28083FCB0);
    v27 = v54;
LABEL_10:
    (*(v15 + 56))(v13, 1, 1, v14);
    v29 = sub_270A88760();
    v30 = *(*(v29 - 8) + 56);
    v30(v20, 1, 1, v29);
    v30(&v20[*(v14 + 20)], 1, 1, v29);
    v31 = *(v14 + 24);
    v32 = _s10EngagementVMa(0);
    (*(*(v32 - 8) + 56))(&v20[v31], 1, 1, v32);
    goto LABEL_11;
  }

  v26 = swift_dynamicCast();
  v27 = v54;
  if ((v26 & 1) == 0)
  {
    goto LABEL_10;
  }

  LOBYTE(v28) = v50;
  if (!v50)
  {
    goto LABEL_10;
  }

  sub_270A57278(_s6RecordVMa, &qword_28083F188, _s6RecordVMa, &unk_270A8DB24, v13);
  if (!v24)
  {
    swift_bridgeObjectRelease_n();
    (*(v15 + 56))(v13, 0, 1, v14);
    sub_270A5A9B0(v13, v20, _s6RecordVMa);
LABEL_11:
    sub_270A5AAF0(v20, v18, _s6RecordVMa);
    sub_270A584B8(v18, v25, v47, v27, &v51);
    if (sub_270A5A018(v20, v18))
    {
LABEL_12:
      sub_270A5A8A0(v18, _s6RecordVMa);
      sub_270A5A8A0(v20, _s6RecordVMa);

      LOBYTE(v28) = v51;

      return v28 & 1;
    }

    sub_270A88670();
    swift_allocObject();
    sub_270A88660();
    sub_270A5A954(&qword_28083F178, _s6RecordVMa);
    v33 = sub_270A88650();
    v35 = v34;

    if (!v24)
    {
      sub_270A88FF0();
      sub_270A88FE0();
      v38 = v37;
      sub_270A51D74(v33, v35);
      if (v38)
      {
        v39 = sub_270A88FB0();

        *&v53[0] = 0;
        *(&v53[0] + 1) = 0xE000000000000000;
        sub_270A89380();

        *&v53[0] = 0xD00000000000002CLL;
        *(&v53[0] + 1) = v42;
        MEMORY[0x2743AE510](v44, v45);
        v40 = sub_270A88FB0();

        [v43 setObject:v39 forKey:v40];

        goto LABEL_12;
      }

      sub_270A5A900();
      swift_allocError();
      *v41 = 0xD00000000000001DLL;
      v41[1] = 0x8000000270A91080;
      swift_willThrow();
    }

    v28 = _s6RecordVMa;
    sub_270A5A8A0(v18, _s6RecordVMa);
    sub_270A5A8A0(v20, _s6RecordVMa);

    return v28 & 1;
  }

  swift_bridgeObjectRelease_n();
  return v28 & 1;
}

uint64_t sub_270A56C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v7 = sub_270A89000();
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F170);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v38 - v10;
  v11 = _s6RecordVMa(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = *(a3 + 16);
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  sub_270A89380();

  *&v47 = 0xD00000000000002CLL;
  *(&v47 + 1) = 0x8000000270A91050;
  v39 = 0x8000000270A91050;
  v41 = a1;
  v42 = a2;
  MEMORY[0x2743AE510](a1, a2);
  v19 = sub_270A88FB0();

  v40 = v18;
  v20 = [v18 objectForKey_];

  if (v20)
  {
    sub_270A89270();
    swift_unknownObjectRelease();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
  }

  v49[0] = v47;
  v49[1] = v48;
  v21 = v50;
  v22 = v15;
  if (!*(&v48 + 1))
  {
    sub_270A4E644(v49, &qword_28083FCB0);
    v24 = v45;
LABEL_10:
    (*(v12 + 56))(v24, 1, 1, v11);
    v26 = sub_270A88760();
    v27 = *(*(v26 - 8) + 56);
    v27(v17, 1, 1, v26);
    v27(&v17[*(v11 + 20)], 1, 1, v26);
    v28 = *(v11 + 24);
    v29 = _s10EngagementVMa(0);
    (*(*(v29 - 8) + 56))(&v17[v28], 1, 1, v29);
    goto LABEL_11;
  }

  v23 = swift_dynamicCast();
  v24 = v45;
  if ((v23 & 1) == 0 || !v46)
  {
    goto LABEL_10;
  }

  sub_270A57278(_s6RecordVMa, &qword_28083F188, _s6RecordVMa, &unk_270A8DB24, v24);
  result = swift_bridgeObjectRelease_n();
  if (v21)
  {
    return result;
  }

  (*(v12 + 56))(v24, 0, 1, v11);
  sub_270A5A9B0(v24, v17, _s6RecordVMa);
LABEL_11:
  sub_270A5AAF0(v17, v22, _s6RecordVMa);
  sub_270A59944(v22, v44);
  if (!sub_270A5A018(v17, v22))
  {
    sub_270A88670();
    swift_allocObject();
    sub_270A88660();
    sub_270A5A954(&qword_28083F178, _s6RecordVMa);
    v30 = sub_270A88650();
    v32 = v31;

    if (!v21)
    {
      sub_270A88FF0();
      sub_270A88FE0();
      v34 = v33;
      sub_270A51D74(v30, v32);
      if (v34)
      {
        v35 = sub_270A88FB0();

        *&v49[0] = 0;
        *(&v49[0] + 1) = 0xE000000000000000;
        sub_270A89380();

        *&v49[0] = 0xD00000000000002CLL;
        *(&v49[0] + 1) = v39;
        MEMORY[0x2743AE510](v41, v42);
        v36 = sub_270A88FB0();

        [v40 setObject:v35 forKey:v36];
      }

      else
      {
        sub_270A5A900();
        swift_allocError();
        *v37 = 0xD00000000000001DLL;
        v37[1] = 0x8000000270A91080;
        swift_willThrow();
      }
    }
  }

  sub_270A5A8A0(v22, _s6RecordVMa);
  return sub_270A5A8A0(v17, _s6RecordVMa);
}

uint64_t sub_270A57278@<X0>(void (*a1)(void)@<X2>, unint64_t *a2@<X3>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v17[0] = a5;
  v17[1] = a4;
  v8 = sub_270A89000();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_270A88FF0();
  v12 = sub_270A88FD0();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  if (v14 >> 60 == 15)
  {
    sub_270A5A900();
    swift_allocError();
    *v15 = 0xD00000000000001DLL;
    v15[1] = 0x8000000270A910A0;
    return swift_willThrow();
  }

  else
  {
    sub_270A88640();
    swift_allocObject();
    sub_270A88630();
    a1(0);
    sub_270A5A954(a2, a3);
    sub_270A88620();

    return sub_270A5A99C(v12, v14);
  }
}

uint64_t sub_270A5745C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = sub_270A88FB0();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_270A89270();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_270A4E644(v12, &qword_28083FCB0);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

  sub_270A57278(_s12GlobalRecordVMa, &qword_28083F1C0, _s12GlobalRecordVMa, &unk_270A8DAD4, a1);
  result = swift_bridgeObjectRelease_n();
  if (v2)
  {
    return result;
  }

  v8 = 0;
LABEL_10:
  v9 = _s12GlobalRecordVMa(0);
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

void sub_270A5761C()
{
  v2 = sub_270A89000();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = *(v0 + 16);
  sub_270A88670();
  swift_allocObject();
  sub_270A88660();
  _s12GlobalRecordVMa(0);
  sub_270A5A954(&qword_28083F1B8, _s12GlobalRecordVMa);
  v4 = sub_270A88650();
  v6 = v5;

  if (!v1)
  {
    sub_270A88FF0();
    sub_270A88FE0();
    v8 = v7;
    sub_270A51D74(v4, v6);
    if (v8)
    {
      v9 = sub_270A88FB0();

      v10 = sub_270A88FB0();
      [v3 setObject:v9 forKey:v10];
    }

    else
    {
      sub_270A5A900();
      swift_allocError();
      *v11 = 0xD00000000000001DLL;
      v11[1] = 0x8000000270A91080;
      swift_willThrow();
    }
  }
}

uint64_t sub_270A57804()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_270A57860(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v96 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F1B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v87 - v10;
  v12 = _s12GlobalRecordVMa(0);
  v94 = *(v12 - 8);
  v95 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v90 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v89 = &v87 - v16;
  MEMORY[0x28223BE20](v15);
  v91 = &v87 - v17;
  v18 = sub_270A88840();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v87 - v23;
  if (a2[OBJC_IVAR___NCSummarizationChinSuggestionManager_alwaysShowChinSuggestion] == 1)
  {
    if (qword_28122C2B8 != -1)
    {
      swift_once();
    }

    v25 = sub_270A88890();
    __swift_project_value_buffer(v25, qword_28122C2C0);

    v26 = a4;
    v27 = a2;
    v28 = sub_270A88870();
    v29 = sub_270A891C0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v92 = a5;
      v32 = v31;
      v97[0] = v31;
      *v30 = 136446210;
      v98 = 0;
      v99 = 0xE000000000000000;
      sub_270A89380();

      v98 = 0xD00000000000002ELL;
      v99 = 0x8000000270A91020;
      MEMORY[0x2743AE510](a3, v26);
      v33 = sub_270A4D698(v98, v99, v97);

      *(v30 + 4) = v33;
      _os_log_impl(&dword_270A33000, v28, v29, "%{public}s Showing chin suggestion because internal testing user default is set.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      v34 = v32;
      a5 = v92;
      MEMORY[0x2743AF520](v34, -1, -1);
      MEMORY[0x2743AF520](v30, -1, -1);
    }

    v35 = 1;
    goto LABEL_35;
  }

  v93 = a2;
  v87 = a3;
  v88 = a4;
  MEMORY[0x2743ADD00](a3, a4);
  (*(v19 + 104))(v22, *MEMORY[0x277D77EE8], v18);
  sub_270A5A954(&qword_28122C2B0, MEMORY[0x277D77F08]);
  sub_270A89090();
  sub_270A89090();
  if (v98 == v97[0] && v99 == v97[1])
  {
    v36 = *(v19 + 8);
    v36(v22, v18);
    v36(v24, v18);
  }

  else
  {
    v37 = sub_270A89570();
    v92 = a5;
    v38 = *(v19 + 8);
    v38(v22, v18);
    v38(v24, v18);
    a5 = v92;

    if ((v37 & 1) == 0)
    {
      v43 = v88;
      if (qword_28122C2B8 != -1)
      {
        swift_once();
      }

      v44 = sub_270A88890();
      __swift_project_value_buffer(v44, qword_28122C2C0);

      v45 = v93;
      v46 = sub_270A88870();
      v47 = sub_270A891C0();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v97[0] = v49;
        *v48 = 136446210;
        v98 = 0;
        v99 = 0xE000000000000000;
        sub_270A89380();

        v98 = 0xD00000000000002ELL;
        v99 = 0x8000000270A91020;
        MEMORY[0x2743AE510](v87, v43);
        v50 = sub_270A4D698(v98, v99, v97);

        *(v48 + 4) = v50;
        _os_log_impl(&dword_270A33000, v46, v47, "%{public}s Not showing chin suggestion because bundleId is not in newsAndEntertainment", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v49);
        v51 = v49;
        a5 = v92;
        MEMORY[0x2743AF520](v51, -1, -1);
        MEMORY[0x2743AF520](v48, -1, -1);
      }

      v35 = 0;
      goto LABEL_35;
    }
  }

  v39 = *v96;
  v40 = v100;
  sub_270A5745C(v11);
  v41 = v88;
  if (v40)
  {
    if (qword_28122C2B8 != -1)
    {
      swift_once();
    }

    v74 = sub_270A88890();
    __swift_project_value_buffer(v74, qword_28122C2C0);

    v75 = v93;
    v76 = v40;
    v77 = sub_270A88870();
    v78 = sub_270A891C0();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v81 = a5;
      v82 = swift_slowAlloc();
      v97[0] = v82;
      *v79 = 136446466;
      v98 = 0;
      v99 = 0xE000000000000000;
      sub_270A89380();

      v98 = 0xD00000000000002ELL;
      v99 = 0x8000000270A91020;
      MEMORY[0x2743AE510](v87, v41);
      v83 = sub_270A4D698(v98, v99, v97);

      *(v79 + 4) = v83;
      *(v79 + 12) = 2114;
      v84 = v40;
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v79 + 14) = v85;
      *v80 = v85;
      _os_log_impl(&dword_270A33000, v77, v78, "%{public}s Not showing chin suggestion due to error: %{public}@", v79, 0x16u);
      sub_270A4E644(v80, &unk_28083FDD0);
      MEMORY[0x2743AF520](v80, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v82);
      v86 = v82;
      a5 = v81;
      MEMORY[0x2743AF520](v86, -1, -1);
      MEMORY[0x2743AF520](v79, -1, -1);
    }

    else
    {
    }

    v35 = 0;
  }

  else
  {
    v42 = v95;
    if ((*(v94 + 48))(v11, 1, v95) == 1)
    {
      sub_270A4E644(v11, &qword_28083F1B0);
LABEL_28:

      v73 = v93;
      v35 = sub_270A565B4(v87, v41, v39, v73, v87, v41) & 1;
      goto LABEL_35;
    }

    v52 = v91;
    sub_270A5A9B0(v11, v91, _s12GlobalRecordVMa);
    v53 = (v52 + *(v42 + 20));
    if (*v53 == v87 && v53[1] == v41 || (sub_270A89570() & 1) != 0 || (sub_270A88710(), v55 = *&v93[OBJC_IVAR___NCSummarizationChinSuggestionManager_secondsBeforeStartShowingChinSuggestionForNextApp], fabs(v54) >= v55))
    {
      sub_270A5A8A0(v52, _s12GlobalRecordVMa);
      goto LABEL_28;
    }

    if (qword_28122C2B8 != -1)
    {
      swift_once();
    }

    v56 = sub_270A88890();
    __swift_project_value_buffer(v56, qword_28122C2C0);
    v57 = v89;
    sub_270A5AAF0(v52, v89, _s12GlobalRecordVMa);
    v58 = v90;
    sub_270A5AAF0(v52, v90, _s12GlobalRecordVMa);

    v59 = v93;
    v60 = sub_270A88870();
    v61 = sub_270A891C0();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v92 = a5;
      v63 = v62;
      v100 = swift_slowAlloc();
      v97[0] = v100;
      *v63 = 136446978;
      v98 = 0;
      v99 = 0xE000000000000000;
      LODWORD(v96) = v61;
      sub_270A89380();

      v98 = 0xD00000000000002ELL;
      v99 = 0x8000000270A91020;
      MEMORY[0x2743AE510](v87, v41);
      v64 = sub_270A4D698(v98, v99, v97);

      *(v63 + 4) = v64;
      *(v63 + 12) = 2082;
      v65 = (v57 + *(v95 + 20));
      v66 = *v65;
      v67 = v65[1];

      sub_270A5A8A0(v57, _s12GlobalRecordVMa);
      v68 = sub_270A4D698(v66, v67, v97);

      *(v63 + 14) = v68;
      *(v63 + 22) = 2048;
      sub_270A88710();
      v70 = fabs(v69);
      sub_270A5A8A0(v58, _s12GlobalRecordVMa);
      *(v63 + 24) = v70;
      *(v63 + 32) = 2048;
      *(v63 + 34) = v55;
      _os_log_impl(&dword_270A33000, v60, v96, "%{public}s Not showing chin suggestion because it was shown for %{public}s %f seconds ago, must wait %f seconds", v63, 0x2Au);
      v71 = v100;
      swift_arrayDestroy();
      MEMORY[0x2743AF520](v71, -1, -1);
      v72 = v63;
      a5 = v92;
      MEMORY[0x2743AF520](v72, -1, -1);
    }

    else
    {

      sub_270A5A8A0(v58, _s12GlobalRecordVMa);
      sub_270A5A8A0(v57, _s12GlobalRecordVMa);
    }

    sub_270A5A8A0(v52, _s12GlobalRecordVMa);
    v35 = 0;
  }

LABEL_35:
  *a5 = v35;
}

uint64_t sub_270A584B8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v111 = a4;
  v112 = a5;
  v109 = a3;
  v113 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDE0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v104 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v100 - v9;
  v11 = sub_270A88760();
  v106 = *(v11 - 8);
  v107 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v105 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v100 = &v100 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v101 = &v100 - v17;
  MEMORY[0x28223BE20](v16);
  v110 = &v100 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F190);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v100 - v20;
  v22 = _s10EngagementVMa(0);
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v102 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v108 = &v100 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v100 - v28;
  v30 = _s6RecordVMa(0);
  sub_270A4E700(a1 + *(v30 + 24), v21, &qword_28083F190);
  v31 = *(v23 + 48);
  v103 = v22;
  if (v31(v21, 1, v22) != 1)
  {
    sub_270A5A9B0(v21, v29, _s10EngagementVMa);
    v37 = v29;
    if (qword_28122C2B8 != -1)
    {
      swift_once();
    }

    v38 = sub_270A88890();
    __swift_project_value_buffer(v38, qword_28122C2C0);
    v39 = v108;
    sub_270A5AAF0(v29, v108, _s10EngagementVMa);
    v40 = v111;

    v41 = v113;
    v42 = sub_270A88870();
    v43 = sub_270A891C0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 136446466;
      v114 = 0;
      v115 = 0xE000000000000000;
      v116[0] = v45;
      sub_270A89380();

      v114 = 0xD00000000000002ELL;
      v115 = 0x8000000270A91020;
      MEMORY[0x2743AE510](v109, v40);
      v46 = sub_270A4D698(v114, v115, v116);

      *(v44 + 4) = v46;
      *(v44 + 12) = 2082;
      sub_270A5AAF0(v39, v102, _s10EngagementVMa);
      v47 = sub_270A89010();
      v48 = v37;
      v50 = v49;
      sub_270A5A8A0(v39, _s10EngagementVMa);
      v51 = sub_270A4D698(v47, v50, v116);

      *(v44 + 14) = v51;
      _os_log_impl(&dword_270A33000, v42, v43, "%{public}s Not showing chin suggestion because user already engaged %{public}s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2743AF520](v45, -1, -1);
      MEMORY[0x2743AF520](v44, -1, -1);

      v52 = v48;
    }

    else
    {

      sub_270A5A8A0(v39, _s10EngagementVMa);
      v52 = v29;
    }

    result = sub_270A5A8A0(v52, _s10EngagementVMa);
    goto LABEL_21;
  }

  sub_270A4E644(v21, &qword_28083F190);
  v32 = *(v30 + 20);
  sub_270A4E700(a1 + v32, v10, &unk_28083FDE0);
  v34 = v106;
  v33 = v107;
  v35 = *(v106 + 48);
  if (v35(v10, 1, v107) == 1)
  {
    v36 = v110;
    sub_270A88740();
    if (v35(v10, 1, v33) != 1)
    {
      sub_270A4E644(v10, &unk_28083FDE0);
    }
  }

  else
  {
    v36 = v110;
    (*(v34 + 32))(v110, v10, v33);
  }

  sub_270A4E644(a1 + v32, &unk_28083FDE0);
  v53 = *(v34 + 16);
  v53(a1 + v32, v36, v33);
  (*(v34 + 56))(a1 + v32, 0, 1, v33);
  sub_270A88710();
  v55 = *&v113[OBJC_IVAR___NCSummarizationChinSuggestionManager_secondsBeforeStartShowingChinSuggestionAfterFirstSummary];
  if (v55 > fabs(v54))
  {
    v56 = v111;
    if (qword_28122C2B8 != -1)
    {
      swift_once();
    }

    v57 = sub_270A88890();
    __swift_project_value_buffer(v57, qword_28122C2C0);
    v58 = v105;
    v53(v105, v36, v33);

    v59 = v113;
    v60 = sub_270A88870();
    v61 = sub_270A891C0();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = v58;
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v113 = v64;
      v114 = 0;
      *v63 = 136446722;
      v115 = 0xE000000000000000;
      v116[0] = v64;
      sub_270A89380();

      v114 = 0xD00000000000002ELL;
      v115 = 0x8000000270A91020;
      MEMORY[0x2743AE510](v109, v56);
      v65 = sub_270A4D698(v114, v115, v116);

      *(v63 + 4) = v65;
      *(v63 + 12) = 2082;
      sub_270A5A954(&unk_28083FDA0, MEMORY[0x277CC9578]);
      v66 = v62;
      v67 = sub_270A89550();
      v69 = v68;
      v70 = *(v34 + 8);
      v70(v66, v33);
      v71 = sub_270A4D698(v67, v69, v116);

      *(v63 + 14) = v71;
      *(v63 + 22) = 2048;
      *(v63 + 24) = v55;
      _os_log_impl(&dword_270A33000, v60, v61, "%{public}s Not showing chin suggestion because date first stack summary shown %{public}s isn't at least %f seconds ago", v63, 0x20u);
      v72 = v113;
      swift_arrayDestroy();
      MEMORY[0x2743AF520](v72, -1, -1);
      MEMORY[0x2743AF520](v63, -1, -1);

      result = (v70)(v36, v33);
LABEL_21:
      v78 = 0;
      goto LABEL_22;
    }

    v77 = *(v34 + 8);
LABEL_20:
    v77(v58, v33);
    result = (v77)(v36, v33);
    goto LABEL_21;
  }

  v74 = v104;
  sub_270A4E700(a1, v104, &unk_28083FDE0);
  v75 = v35(v74, 1, v33);
  v76 = v111;
  if (v75 == 1)
  {
    sub_270A4E644(v74, &unk_28083FDE0);
  }

  else
  {
    v58 = v101;
    (*(v34 + 32))(v101, v74, v33);
    sub_270A88710();
    v80 = *&v113[OBJC_IVAR___NCSummarizationChinSuggestionManager_secondsBeforeStopShowingChinSuggestionWithoutEngagement];
    if (v80 < fabs(v79))
    {
      if (qword_28122C2B8 != -1)
      {
        swift_once();
      }

      v81 = sub_270A88890();
      __swift_project_value_buffer(v81, qword_28122C2C0);
      v82 = v100;
      v53(v100, v58, v33);

      v83 = v113;
      v84 = sub_270A88870();
      v85 = sub_270A891C0();

      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *v86 = 136446722;
        v114 = 0;
        v115 = 0xE000000000000000;
        v116[0] = v87;
        sub_270A89380();

        v114 = 0xD00000000000002ELL;
        v115 = 0x8000000270A91020;
        MEMORY[0x2743AE510](v109, v76);
        v88 = sub_270A4D698(v114, v115, v116);

        *(v86 + 4) = v88;
        *(v86 + 12) = 2048;
        v89 = v100;
        sub_270A88710();
        v91 = fabs(v90);
        v92 = *(v34 + 8);
        v92(v89, v33);
        *(v86 + 14) = v91;
        *(v86 + 22) = 2048;
        *(v86 + 24) = v80;
        _os_log_impl(&dword_270A33000, v84, v85, "%{public}s Not showing chin suggestion because it's been %f seconds since the chin suggestion was first shown and user hasn't engaged, which exceeds %f second allowance", v86, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x2743AF520](v87, -1, -1);
        MEMORY[0x2743AF520](v86, -1, -1);

        v92(v101, v33);
        result = (v92)(v36, v33);
        goto LABEL_21;
      }

      v77 = *(v34 + 8);
      v77(v82, v33);
      goto LABEL_20;
    }

    (*(v34 + 8))(v58, v33);
  }

  if (qword_28122C2B8 != -1)
  {
    swift_once();
  }

  v93 = sub_270A88890();
  __swift_project_value_buffer(v93, qword_28122C2C0);

  v94 = v113;
  v95 = sub_270A88870();
  v96 = sub_270A891C0();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v97 = 136446210;
    v114 = 0;
    v115 = 0xE000000000000000;
    v116[0] = v98;
    sub_270A89380();

    v114 = 0xD00000000000002ELL;
    v115 = 0x8000000270A91020;
    MEMORY[0x2743AE510](v109, v76);
    v99 = sub_270A4D698(v114, v115, v116);

    *(v97 + 4) = v99;
    _os_log_impl(&dword_270A33000, v95, v96, "%{public}s Should show chin suggestion", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v98);
    MEMORY[0x2743AF520](v98, -1, -1);
    MEMORY[0x2743AF520](v97, -1, -1);
  }

  result = (*(v34 + 8))(v36, v33);
  v78 = 1;
LABEL_22:
  *v112 = v78;
  return result;
}

void sub_270A5933C(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = _s12GlobalRecordVMa(0);
  MEMORY[0x28223BE20](v44);
  v46 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28122C2B8 != -1)
  {
    swift_once();
  }

  v11 = sub_270A88890();
  v12 = __swift_project_value_buffer(v11, qword_28122C2C0);

  v13 = a2;
  v14 = sub_270A88870();
  v15 = sub_270A891C0();

  v45 = v13;

  if (!os_log_type_enabled(v14, v15))
  {

    v19 = v47;
    goto LABEL_22;
  }

  v41 = a1;
  v42 = v12;
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v52 = v17;
  *v16 = 136446466;
  v48 = 0;
  v49 = 0xE000000000000000;
  sub_270A89380();

  v48 = 0xD00000000000002ELL;
  v49 = 0x8000000270A91020;
  v43 = a3;
  MEMORY[0x2743AE510](a3, a4);
  v18 = sub_270A4D698(v48, v49, &v52);

  *(v16 + 4) = v18;
  *(v16 + 12) = 2082;
  if (a5 > 2)
  {
    v19 = v47;
    if (a5 != 3)
    {
      if (a5 == 4)
      {
        v20 = 0xE800000000000000;
        v22 = 0x747065636341;
      }

      else
      {
        if (a5 != 5)
        {
          goto LABEL_16;
        }

        v20 = 0xE800000000000000;
        v22 = 0x7463656A6552;
      }

      v21 = v22 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      goto LABEL_21;
    }

    v20 = 0xE700000000000000;
    v23 = 1634036803;
LABEL_18:
    v21 = v23 | 0x64657200000000;
    goto LABEL_21;
  }

  v19 = v47;
  if (!a5)
  {
    v20 = 0xE500000000000000;
    v21 = 0x6E776F6853;
    goto LABEL_21;
  }

  if (a5 == 1)
  {
    v20 = 0xE700000000000000;
    v23 = 1768978501;
    goto LABEL_18;
  }

  if (a5 != 2)
  {
LABEL_16:
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E55;
    goto LABEL_21;
  }

  v20 = 0xE800000000000000;
  v21 = 0x6C6C417261656C43;
LABEL_21:
  v24 = sub_270A4D698(v21, v20, &v52);

  *(v16 + 14) = v24;
  _os_log_impl(&dword_270A33000, v14, v15, "%{public}s Recording chin suggestion event: %{public}s", v16, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x2743AF520](v17, -1, -1);
  MEMORY[0x2743AF520](v16, -1, -1);

  a3 = v43;
  a1 = v41;
LABEL_22:
  v48 = a3;
  v49 = a4;
  v50 = a5;
  v51 = 0;

  ChinSuggestionAnalyticsEvent.log()();

  v25 = v46;
  if (a5)
  {
    goto LABEL_23;
  }

  sub_270A88740();
  v26 = (v25 + *(v44 + 20));
  *v26 = a3;
  v26[1] = a4;

  sub_270A5761C();
  if (!v19)
  {
    sub_270A5A8A0(v25, _s12GlobalRecordVMa);
LABEL_23:
    sub_270A56C54(a3, a4, *a1, a5);
    if (!v19)
    {
      return;
    }

    goto LABEL_27;
  }

  sub_270A5A8A0(v25, _s12GlobalRecordVMa);
LABEL_27:

  v27 = v45;
  v28 = v19;
  v29 = sub_270A88870();
  v30 = sub_270A891C0();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = 0;
    v52 = v47;
    *v31 = 136446722;
    v49 = 0xE000000000000000;
    sub_270A89380();

    v48 = 0xD00000000000002ELL;
    v49 = 0x8000000270A91020;
    MEMORY[0x2743AE510](a3, a4);
    v32 = sub_270A4D698(v48, v49, &v52);

    *(v31 + 4) = v32;
    *(v31 + 12) = 2082;
    v48 = a5;
    type metadata accessor for ChinSuggestionEvent(0);
    v33 = sub_270A89010();
    v35 = sub_270A4D698(v33, v34, &v52);

    *(v31 + 14) = v35;
    *(v31 + 22) = 2114;
    v36 = v19;
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 24) = v37;
    v38 = v46;
    *v46 = v37;
    _os_log_impl(&dword_270A33000, v29, v30, "%{public}s Failed to save chin suggestion event %{public}s due to error: %{public}@", v31, 0x20u);
    sub_270A4E644(v38, &unk_28083FDD0);
    MEMORY[0x2743AF520](v38, -1, -1);
    v39 = v47;
    swift_arrayDestroy();
    MEMORY[0x2743AF520](v39, -1, -1);
    MEMORY[0x2743AF520](v31, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_270A59944(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F190);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v29 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDE0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  if (!a2)
  {
    v30 = a1;
    sub_270A4E700(a1, v16, &unk_28083FDE0);
    v19 = sub_270A88760();
    v20 = *(v19 - 8);
    v21 = *(v20 + 48);
    if (v21(v16, 1, v19) == 1)
    {
      sub_270A88740();
      if (v21(v16, 1, v19) != 1)
      {
        sub_270A4E644(v16, &unk_28083FDE0);
      }
    }

    else
    {
      (*(v20 + 32))(v18, v16, v19);
    }

    (*(v20 + 56))(v18, 0, 1, v19);
    a1 = v30;
    sub_270A5AA88(v18, v30, &unk_28083FDE0);
  }

  v22 = *(_s6RecordVMa(0) + 24);
  sub_270A4E700(a1 + v22, v10, &qword_28083F190);
  v23 = _s10EngagementVMa(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v10, 1, v23) != 1)
  {
    sub_270A5A9B0(v10, v12, _s10EngagementVMa);
    (*(v24 + 56))(v12, 0, 1, v23);
    return sub_270A5AA88(v12, a1 + v22, &qword_28083F190);
  }

  switch(a2)
  {
    case 5:
      sub_270A88740();
      v26 = 0;
      v27 = 2;
      goto LABEL_15;
    case 4:
      sub_270A88740();
      v26 = 0;
      v27 = 1;
LABEL_15:
      *v7 = v27;
      break;
    case 3:
      sub_270A88740();
      v26 = 0;
      *v7 = 0;
      break;
    default:
      v26 = 1;
      break;
  }

  (*(v24 + 56))(v7, v26, 1, v23);
  sub_270A5AA18(v7, v12);
  if (v25(v10, 1, v23) != 1)
  {
    sub_270A4E644(v10, &qword_28083F190);
  }

  return sub_270A5AA88(v12, a1 + v22, &qword_28083F190);
}

void __swiftcall NCSummarizationChinSuggestionManager.init()(NCSummarizationChinSuggestionManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

unint64_t type metadata accessor for NCSummarizationChinSuggestionManager()
{
  result = qword_28083F168;
  if (!qword_28083F168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28083F168);
  }

  return result;
}

uint64_t sub_270A59FE0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_270A5A018(uint64_t a1, uint64_t a2)
{
  v4 = _s10EngagementVMa(0);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F190);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v50[-v7];
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F198);
  MEMORY[0x28223BE20](v54);
  v57 = &v50[-v8];
  v9 = sub_270A88760();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v59 = &v50[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28083FDE0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v58 = &v50[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v16 = &v50[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F1A0);
  v18 = MEMORY[0x28223BE20](v17);
  v60 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v50[-v21];
  v23 = *(v20 + 48);
  v62 = a1;
  sub_270A4E700(a1, &v50[-v21], &unk_28083FDE0);
  v61 = a2;
  sub_270A4E700(a2, &v22[v23], &unk_28083FDE0);
  v24 = *(v10 + 48);
  if (v24(v22, 1, v9) == 1)
  {
    if (v24(&v22[v23], 1, v9) == 1)
    {
      sub_270A4E644(v22, &unk_28083FDE0);
      goto LABEL_8;
    }

LABEL_6:
    v25 = &qword_28083F1A0;
    v26 = v22;
LABEL_23:
    sub_270A4E644(v26, v25);
    return 0;
  }

  sub_270A4E700(v22, v16, &unk_28083FDE0);
  if (v24(&v22[v23], 1, v9) == 1)
  {
    (*(v10 + 8))(v16, v9);
    goto LABEL_6;
  }

  v27 = v59;
  (*(v10 + 32))(v59, &v22[v23], v9);
  sub_270A5A954(&qword_28083F1A8, MEMORY[0x277CC9578]);
  v51 = sub_270A88FA0();
  v28 = *(v10 + 8);
  v28(v27, v9);
  v28(v16, v9);
  sub_270A4E644(v22, &unk_28083FDE0);
  if ((v51 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v29 = _s6RecordVMa(0);
  v30 = *(v29 + 20);
  v31 = *(v17 + 48);
  v32 = v60;
  sub_270A4E700(v62 + v30, v60, &unk_28083FDE0);
  v33 = v61 + v30;
  v34 = v61;
  sub_270A4E700(v33, &v32[v31], &unk_28083FDE0);
  if (v24(v32, 1, v9) != 1)
  {
    v35 = v58;
    sub_270A4E700(v32, v58, &unk_28083FDE0);
    if (v24(&v32[v31], 1, v9) != 1)
    {
      v36 = v59;
      (*(v10 + 32))(v59, &v32[v31], v9);
      sub_270A5A954(&qword_28083F1A8, MEMORY[0x277CC9578]);
      v37 = v35;
      v38 = sub_270A88FA0();
      v39 = *(v10 + 8);
      v39(v36, v9);
      v39(v37, v9);
      sub_270A4E644(v32, &unk_28083FDE0);
      if ((v38 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v10 + 8))(v35, v9);
    goto LABEL_13;
  }

  if (v24(&v32[v31], 1, v9) != 1)
  {
LABEL_13:
    v25 = &qword_28083F1A0;
    v26 = v32;
    goto LABEL_23;
  }

  sub_270A4E644(v32, &unk_28083FDE0);
LABEL_15:
  v40 = *(v29 + 24);
  v41 = *(v54 + 48);
  v42 = v57;
  sub_270A4E700(v62 + v40, v57, &qword_28083F190);
  sub_270A4E700(v34 + v40, &v42[v41], &qword_28083F190);
  v43 = v56;
  v44 = *(v55 + 48);
  if (v44(v42, 1, v56) == 1)
  {
    if (v44(&v42[v41], 1, v43) == 1)
    {
      sub_270A4E644(v42, &qword_28083F190);
      return 1;
    }

    goto LABEL_21;
  }

  v46 = v53;
  sub_270A4E700(v42, v53, &qword_28083F190);
  if (v44(&v42[v41], 1, v43) == 1)
  {
    sub_270A5A8A0(v46, _s10EngagementVMa);
LABEL_21:
    v25 = &qword_28083F198;
LABEL_22:
    v26 = v42;
    goto LABEL_23;
  }

  v47 = &v42[v41];
  v48 = v52;
  sub_270A5A9B0(v47, v52, _s10EngagementVMa);
  if (*v46 != *v48)
  {
    sub_270A5A8A0(v48, _s10EngagementVMa);
    sub_270A5A8A0(v46, _s10EngagementVMa);
    v25 = &qword_28083F190;
    goto LABEL_22;
  }

  v49 = sub_270A88720();
  sub_270A5A8A0(v48, _s10EngagementVMa);
  sub_270A5A8A0(v46, _s10EngagementVMa);
  sub_270A4E644(v42, &qword_28083F190);
  return (v49 & 1) != 0;
}

uint64_t sub_270A5A8A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_270A5A900()
{
  result = qword_28083F180;
  if (!qword_28083F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F180);
  }

  return result;
}

uint64_t sub_270A5A954(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_270A5A99C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_270A51D74(a1, a2);
  }

  return a1;
}

uint64_t sub_270A5A9B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_270A5AA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_270A5AA88(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_270A5AAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_270A5AB58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657261656C63 && a2 == 0xE700000000000000;
  if (v4 || (sub_270A89570() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465747065636361 && a2 == 0xE800000000000000 || (sub_270A89570() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657463656A6572 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_270A89570();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_270A5AC70(void *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F278);
  v32 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v33 = &v26 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F280);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F288);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F290);
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_270A5BE3C();
  v12 = v35;
  sub_270A896A0();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = sub_270A89500();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = sub_270A893B0();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F2A0);
    *v21 = &_s10EngagementV4KindON;
    sub_270A894C0();
    sub_270A893A0();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_270A5BF38();
    v22 = v11;
    sub_270A894B0();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_270A5BEE4();
    v22 = v11;
    sub_270A894B0();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_270A5BE90();
  sub_270A894B0();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v35);
  return v36;
}

uint64_t sub_270A5B200(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001CLL && 0x8000000270A912A0 == a2;
  if (v4 || (sub_270A89570() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000270A912C0 == a2 || (sub_270A89570() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D656761676E65 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_270A89570();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

id sub_270A5B32C()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_270A88FB0();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    *&v1[OBJC_IVAR___NCSummarizationChinSuggestionManager_userDefaults] = v4;
    _s13RecordManagerCMa();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = &v1[OBJC_IVAR___NCSummarizationChinSuggestionManager_recordManager];
    *v6 = 0;
    *(v6 + 1) = v5;
    v7 = v4;
    v8 = sub_270A88FB0();
    v9 = [v7 objectForKey_];

    if (v9)
    {
      sub_270A89270();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      if (swift_dynamicCast())
      {
        v15 = v25;
        goto LABEL_15;
      }
    }

    else
    {
      sub_270A4E644(&v29, &qword_28083FCB0);
    }

    v15 = 0x40F5180000000000;
LABEL_15:
    *&v1[OBJC_IVAR___NCSummarizationChinSuggestionManager_secondsBeforeStopShowingChinSuggestionWithoutEngagement] = v15;
    v16 = sub_270A88FB0();
    v17 = [v7 objectForKey_];

    if (v17)
    {
      sub_270A89270();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      if (swift_dynamicCast())
      {
        v18 = v25;
        goto LABEL_23;
      }
    }

    else
    {
      sub_270A4E644(&v29, &qword_28083FCB0);
    }

    v18 = 0;
LABEL_23:
    *&v1[OBJC_IVAR___NCSummarizationChinSuggestionManager_secondsBeforeStartShowingChinSuggestionAfterFirstSummary] = v18;
    v19 = sub_270A88FB0();
    v20 = [v7 objectForKey_];

    if (v20)
    {
      sub_270A89270();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      if (swift_dynamicCast())
      {
        v21 = v25;
        goto LABEL_31;
      }
    }

    else
    {
      sub_270A4E644(&v29, &qword_28083FCB0);
    }

    v21 = 0x410FA40000000000;
LABEL_31:
    *&v1[OBJC_IVAR___NCSummarizationChinSuggestionManager_secondsBeforeStartShowingChinSuggestionForNextApp] = v21;
    v22 = sub_270A88FB0();
    v23 = [v7 objectForKey_];

    if (v23)
    {
      sub_270A89270();
      swift_unknownObjectRelease();
    }

    else
    {

      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      if (swift_dynamicCast())
      {
        v24 = v25;
LABEL_39:
        v1[OBJC_IVAR___NCSummarizationChinSuggestionManager_alwaysShowChinSuggestion] = v24;
        v26.receiver = v1;
        v26.super_class = NCSummarizationChinSuggestionManager;
        return objc_msgSendSuper2(&v26, sel_init);
      }
    }

    else
    {
      sub_270A4E644(&v29, &qword_28083FCB0);
    }

    v24 = 0;
    goto LABEL_39;
  }

  if (qword_28122C2B8 != -1)
  {
    swift_once();
  }

  v10 = sub_270A88890();
  __swift_project_value_buffer(v10, qword_28122C2C0);
  v11 = sub_270A88870();
  v12 = sub_270A891C0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_270A33000, v11, v12, "SummarizationChinSuggestionManager: Unable to run suggestion manager. Failed to initialize UserDefaults.", v13, 2u);
    MEMORY[0x2743AF520](v13, -1, -1);
  }

  type metadata accessor for NCSummarizationChinSuggestionManager();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_270A5B81C(uint64_t a1, int a2)
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

uint64_t sub_270A5B864(uint64_t result, int a2, int a3)
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

uint64_t sub_270A5B8D8()
{
  result = sub_270A88760();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_270A5B98C()
{
  sub_270A5BA48(319, &qword_28083F1E8, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_270A5BA48(319, &qword_28083F1F0, _s10EngagementVMa);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_270A5BA48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_270A89250();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_270A5BAC4()
{
  result = sub_270A88760();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_270A5BB38(uint64_t a1)
{
  *(a1 + 8) = sub_270A5A954(&qword_28083F1C0, _s12GlobalRecordVMa);
  result = sub_270A5A954(&qword_28083F1B8, _s12GlobalRecordVMa);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_270A5BBBC(uint64_t a1)
{
  *(a1 + 8) = sub_270A5A954(&qword_28083F188, _s6RecordVMa);
  result = sub_270A5A954(&qword_28083F178, _s6RecordVMa);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_270A5BC44()
{
  result = qword_28083F1F8;
  if (!qword_28083F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F1F8);
  }

  return result;
}

unint64_t sub_270A5BC98()
{
  result = qword_28083F208;
  if (!qword_28083F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F208);
  }

  return result;
}

unint64_t sub_270A5BCEC()
{
  result = qword_28083F240;
  if (!qword_28083F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F240);
  }

  return result;
}

unint64_t sub_270A5BD40()
{
  result = qword_28083F258;
  if (!qword_28083F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F258);
  }

  return result;
}

unint64_t sub_270A5BD94()
{
  result = qword_28083F260;
  if (!qword_28083F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F260);
  }

  return result;
}

unint64_t sub_270A5BDE8()
{
  result = qword_28083F270;
  if (!qword_28083F270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F270);
  }

  return result;
}

unint64_t sub_270A5BE3C()
{
  result = qword_28083F298;
  if (!qword_28083F298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F298);
  }

  return result;
}

unint64_t sub_270A5BE90()
{
  result = qword_28083F2A8;
  if (!qword_28083F2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F2A8);
  }

  return result;
}

unint64_t sub_270A5BEE4()
{
  result = qword_28083F2B0;
  if (!qword_28083F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F2B0);
  }

  return result;
}

unint64_t sub_270A5BF38()
{
  result = qword_28083F2B8;
  if (!qword_28083F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F2B8);
  }

  return result;
}

uint64_t _s21ShownExperienceRecordV10ExperienceOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s21ShownExperienceRecordV10ExperienceOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_270A5C140()
{
  result = qword_28083F2E0;
  if (!qword_28083F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F2E0);
  }

  return result;
}

unint64_t sub_270A5C198()
{
  result = qword_28083F2E8;
  if (!qword_28083F2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F2E8);
  }

  return result;
}

unint64_t sub_270A5C1F0()
{
  result = qword_28083F2F0;
  if (!qword_28083F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F2F0);
  }

  return result;
}

unint64_t sub_270A5C248()
{
  result = qword_28083F2F8;
  if (!qword_28083F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F2F8);
  }

  return result;
}

unint64_t sub_270A5C2A0()
{
  result = qword_28083F300;
  if (!qword_28083F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F300);
  }

  return result;
}

unint64_t sub_270A5C2F8()
{
  result = qword_28083F308;
  if (!qword_28083F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F308);
  }

  return result;
}

unint64_t sub_270A5C350()
{
  result = qword_28083F310;
  if (!qword_28083F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F310);
  }

  return result;
}

unint64_t sub_270A5C3A8()
{
  result = qword_28083F318;
  if (!qword_28083F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F318);
  }

  return result;
}

unint64_t sub_270A5C400()
{
  result = qword_28083F320;
  if (!qword_28083F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F320);
  }

  return result;
}

unint64_t sub_270A5C458()
{
  result = qword_28083F328;
  if (!qword_28083F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F328);
  }

  return result;
}

unint64_t sub_270A5C4B0()
{
  result = qword_28083F330;
  if (!qword_28083F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F330);
  }

  return result;
}

unint64_t sub_270A5C508()
{
  result = qword_28083F338;
  if (!qword_28083F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F338);
  }

  return result;
}

unint64_t sub_270A5C560()
{
  result = qword_28083F340;
  if (!qword_28083F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F340);
  }

  return result;
}

unint64_t sub_270A5C5B8()
{
  result = qword_28083F348;
  if (!qword_28083F348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F348);
  }

  return result;
}

unint64_t sub_270A5C610()
{
  result = qword_28083F350;
  if (!qword_28083F350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F350);
  }

  return result;
}

unint64_t sub_270A5C668()
{
  result = qword_28083F358;
  if (!qword_28083F358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F358);
  }

  return result;
}

unint64_t sub_270A5C6C0()
{
  result = qword_28083F360;
  if (!qword_28083F360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F360);
  }

  return result;
}

unint64_t sub_270A5C718()
{
  result = qword_28083F368;
  if (!qword_28083F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28083F368);
  }

  return result;
}

void sub_270A5C7F4()
{
  sub_270A5C918(319, &qword_28083F388, &qword_28083F390, &unk_270A8E308, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_270A63154(319, &qword_28083F398, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_270A5C918(319, &qword_28083F3A0, &qword_28083F3A8, &unk_270A8E310, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_270A5C918(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_270A5C998()
{
  if (qword_28083EE00 != -1)
  {
    swift_once();
  }

  v0 = qword_280842BE0;
  v1 = sub_270A88FB0();
  v2 = sub_270A88FB0();
  v3 = [v0 localizedStringForKey:v1 value:0 table:v2];

  v4 = sub_270A88FC0();
  return v4;
}

uint64_t sub_270A5CA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3D8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3E0);
  MEMORY[0x28223BE20](v36);
  v7 = &v32 - v6;
  v38 = sub_270A88BE0();
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3E8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3F0);
  v14 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v16 = &v32 - v15;
  v40 = *(a1 + *(type metadata accessor for NotificationSummarizationOnboardingCustomizationByCategoriesView(0) + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3B8);
  sub_270A88E40();
  v17 = v43;
  if (v43)
  {
    *v5 = sub_270A88B30();
    *(v5 + 1) = 0x4018000000000000;
    v5[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F420);
    sub_270A5D014(v17, &v5[*(v18 + 44)]);
    v19 = sub_270A88C20();
    sub_270A888F0();
    v20 = &v5[*(v3 + 36)];
    *v20 = v19;
    *(v20 + 1) = v21;
    *(v20 + 2) = v22;
    *(v20 + 3) = v23;
    *(v20 + 4) = v24;
    v20[40] = 0;
    sub_270A4E700(v5, v7, &qword_28083F3D8);
    swift_storeEnumTagMultiPayload();
    sub_270A5DCBC();
    v25 = sub_270A4E7E4(&qword_28083F3F8, &qword_28083F3E8);
    v26 = sub_270A5DC74(&qword_28083F400, MEMORY[0x277CDE330]);
    *&v40 = v10;
    *(&v40 + 1) = v38;
    v41 = v25;
    v42 = v26;
    swift_getOpaqueTypeConformance2();
    sub_270A88BC0();

    return sub_270A4E644(v5, &qword_28083F3D8);
  }

  else
  {
    sub_270A88950();
    sub_270A88BD0();
    v33 = sub_270A4E7E4(&qword_28083F3F8, &qword_28083F3E8);
    v28 = sub_270A5DC74(&qword_28083F400, MEMORY[0x277CDE330]);
    v34 = v3;
    v29 = v28;
    v30 = v38;
    sub_270A88D10();
    (*(v35 + 8))(v9, v30);
    (*(v11 + 8))(v13, v10);
    v31 = v37;
    (*(v14 + 16))(v7, v16, v37);
    swift_storeEnumTagMultiPayload();
    sub_270A5DCBC();
    *&v40 = v10;
    *(&v40 + 1) = v30;
    v41 = v33;
    v42 = v29;
    swift_getOpaqueTypeConformance2();
    sub_270A88BC0();
    return (*(v14 + 8))(v16, v31);
  }
}

uint64_t sub_270A5D014@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_270A88840();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v64 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v72 = &v62 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v62 - v10;
  v12 = type metadata accessor for SourceGroupView(0);
  v13 = MEMORY[0x28223BE20](v12);
  v67 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v62 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v65 = &v62 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v74 = (&v62 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v75 = (&v62 - v22);
  MEMORY[0x28223BE20](v21);
  v24 = (&v62 - v23);
  v25 = *MEMORY[0x277D77EE8];
  v71 = *(v5 + 104);
  v71(v11, v25, v4);
  *v24 = swift_getKeyPath();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F3C0);
  swift_storeEnumTagMultiPayload();
  v26 = v12[5];
  v76 = v5;
  v69 = *(v5 + 16);
  v69(v24 + v26, v11, v4);
  v27 = (v24 + v12[6]);
  v77 = a1;
  v28 = a1;
  v73 = ObjectType;
  sub_270A88E30();
  v29 = v79;
  *v27 = v78;
  v27[1] = v29;
  v30 = *&v28[OBJC_IVAR____TtC20UserNotificationsKit44NotificationSummarizationOnboardingViewModel_categorizedSources];
  if (*(v30 + 16) && (v31 = sub_270A7D2BC(v11), (v32 & 1) != 0))
  {
    v33 = *(*(v30 + 56) + 8 * v31);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v34 = *(v76 + 8);
  v76 += 8;
  v63 = v34;
  v34(v11, v4);
  *(v24 + v12[7]) = v33;
  v35 = v72;
  v71(v72, *MEMORY[0x277D77EF0], v4);
  KeyPath = swift_getKeyPath();
  v37 = v75;
  *v75 = KeyPath;
  swift_storeEnumTagMultiPayload();
  v69(v37 + v12[5], v35, v4);
  v38 = (v37 + v12[6]);
  v77 = v28;
  v39 = v28;
  sub_270A88E30();
  v40 = v79;
  *v38 = v78;
  v38[1] = v40;
  if (*(v30 + 16) && (v41 = sub_270A7D2BC(v35), (v42 & 1) != 0))
  {
    v43 = *(*(v30 + 56) + 8 * v41);
  }

  else
  {
    v43 = MEMORY[0x277D84F90];
  }

  v44 = v63;
  v63(v72, v4);
  *(v75 + v12[7]) = v43;
  v45 = v64;
  v71(v64, *MEMORY[0x277D77F00], v4);
  v46 = swift_getKeyPath();
  v47 = v74;
  *v74 = v46;
  swift_storeEnumTagMultiPayload();
  v69(v47 + v12[5], v45, v4);
  v48 = (v47 + v12[6]);
  v77 = v39;
  v49 = v39;
  sub_270A88E30();
  v50 = v79;
  *v48 = v78;
  v48[1] = v50;
  if (*(v30 + 16) && (v51 = sub_270A7D2BC(v45), (v52 & 1) != 0))
  {
    v53 = *(*(v30 + 56) + 8 * v51);
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  v44(v45, v4);
  v54 = v74;
  *(v74 + v12[7]) = v53;
  v55 = v65;
  sub_270A625E8(v24, v65, type metadata accessor for SourceGroupView);
  v56 = v75;
  v57 = v66;
  sub_270A625E8(v75, v66, type metadata accessor for SourceGroupView);
  v58 = v67;
  sub_270A625E8(v54, v67, type metadata accessor for SourceGroupView);
  v59 = v68;
  sub_270A625E8(v55, v68, type metadata accessor for SourceGroupView);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28083F428);
  sub_270A625E8(v57, v59 + *(v60 + 48), type metadata accessor for SourceGroupView);
  sub_270A625E8(v58, v59 + *(v60 + 64), type metadata accessor for SourceGroupView);
  sub_270A62CF4(v54, type metadata accessor for SourceGroupView);
  sub_270A62CF4(v56, type metadata accessor for SourceGroupView);
  sub_270A62CF4(v24, type metadata accessor for SourceGroupView);
  sub_270A62CF4(v58, type metadata accessor for SourceGroupView);
  sub_270A62CF4(v57, type metadata accessor for SourceGroupView);
  return sub_270A62CF4(v55, type metadata accessor for SourceGroupView);
}