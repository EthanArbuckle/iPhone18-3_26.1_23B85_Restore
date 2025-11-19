uint64_t sub_1C9624E5C()
{
  OUTLINED_FUNCTION_39();
  v3 = *(v2 + 16);
  sub_1C961C00C();
  OUTLINED_FUNCTION_33_10((v3 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager));
  OUTLINED_FUNCTION_42();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1C9624F7C;

  return v7(v0, v1);
}

uint64_t sub_1C9624F7C()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_15();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C9625090, v5, v4);
}

uint64_t sub_1C9625090()
{
  OUTLINED_FUNCTION_30();
  v2 = *(v1 + 16);

  OUTLINED_FUNCTION_65_5((v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler));
  v3 = OUTLINED_FUNCTION_44_8();
  v4(v3);
  OUTLINED_FUNCTION_65_5((v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationDeliveryScheduler));
  v5 = OUTLINED_FUNCTION_44_8();
  v6(v5);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  v7 = sub_1C96A6154();
  v8 = OUTLINED_FUNCTION_107_2(v7, qword_1EDB7AC90);
  v9 = sub_1C96A76A4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v10);
    _os_log_impl(&dword_1C945E000, v8, v9, "Unregistered all notification subscriptions", v0, 2u);
    OUTLINED_FUNCTION_38_0();
  }

  v11 = *(v1 + 24);

  v11();
  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t PrecipitationNotificationsManager.run(with:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1C96A6564();
  OUTLINED_FUNCTION_1();
  v50 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  v10 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v51 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_94_2(v13);
  v14 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v48 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v44 - v20;
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  v21 = sub_1C96A6154();
  v22 = OUTLINED_FUNCTION_107_2(v21, qword_1EDB7AC90);
  v23 = sub_1C96A76A4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_29();
    v44 = a1;
    *v24 = 0;
    _os_log_impl(&dword_1C945E000, v22, v23, "Running notification manager as xpc activity", v24, 2u);
    a1 = v44;
    OUTLINED_FUNCTION_26();
  }

  if (WDWeatherAppIsInstalled())
  {
    v25 = v47;
    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    sub_1C946B5D0(0, &qword_1EDB7CDB0);
    v26 = sub_1C96A7704();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8);
    sub_1C96A5774();

    v27 = v48;
    v28 = v45;
    (*(v48 + 16))(v45, v25, v14);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a2;
    (*(v27 + 32))(v30 + v29, v28, v14);
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1C9627CD4;
    *(v31 + 24) = v30;
    sub_1C96A3D04();
    v32 = sub_1C96A55A4();
    sub_1C96A5644();

    (*(v27 + 8))(v25, v14);
  }

  else
  {
    v33 = sub_1C96A6134();
    v34 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_1(v34))
    {
      v35 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_47(v35);
      OUTLINED_FUNCTION_28_3(&dword_1C945E000, v36, v37, "Weather app was uninstalled; rejecting xpc run instructions");
      OUTLINED_FUNCTION_38_0();
    }

    sub_1C946B5D0(0, &qword_1EDB7CDB0);
    v38 = sub_1C96A7704();
    v39 = swift_allocObject();
    *(v39 + 16) = a1;
    *(v39 + 24) = a2;
    aBlock[4] = sub_1C9627CCC;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C946FCF8;
    aBlock[3] = &block_descriptor_17;
    v40 = _Block_copy(aBlock);
    sub_1C96A3D04();
    v41 = v49;
    sub_1C96A6594();
    v52 = MEMORY[0x1E69E7CC0];
    sub_1C94D7CBC(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
    OUTLINED_FUNCTION_12_33();
    sub_1C9469CB4(v42, &unk_1EC3A5370);
    sub_1C96A79E4();
    MEMORY[0x1CCA8D100](0, v41, v9, v40);
    _Block_release(v40);

    (*(v50 + 8))(v9, v4);
    (*(v51 + 8))(v41, v10);
  }

  return 1;
}

uint64_t sub_1C9625818(void (*a1)(char *, void, uint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_1C96A4A54();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  a1(v4, 0, 1);
  return sub_1C9470AFC(v4, &unk_1EC3A5430);
}

void sub_1C9625910(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t, void, __n128))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_1C96A4A54();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(a1, a2, a3 & 1, v13);
  v16 = sub_1C96A4984();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v17 = sub_1C96A4984();
  v18 = *(v12 + 8);
  v18(v15, v11);
  sub_1C955FEC0();
  v19 = 0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
  {
    v19 = sub_1C96A4984();
    v18(v10, v11);
  }

  WCPowerLogPrecipitationFetch(v16, v17, v19);
}

uint64_t PrecipitationNotificationsManager.verify(schedule:)(uint64_t a1, uint64_t a2)
{
  sub_1C96A5444();
  NotificationEnablementTracker.trackEnablement()();
  sub_1C96A5434();
  if (WDWeatherAppIsInstalled())
  {
    v5 = *(v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
    v6 = *(v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler), v5);
    v7 = (*(v6 + 32))(a1, a2, v5, v6);
  }

  else
  {
    if (qword_1EDB7AC88 != -1)
    {
      OUTLINED_FUNCTION_0_88();
    }

    v8 = sub_1C96A6154();
    v9 = OUTLINED_FUNCTION_107_2(v8, qword_1EDB7AC90);
    v10 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v10))
    {
      v11 = OUTLINED_FUNCTION_29();
      *v11 = 0;
      _os_log_impl(&dword_1C945E000, v9, v10, "Weather app was uninstalled; rejecting verification request", v11, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_1C96A4A54();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    return 0;
  }

  return v7;
}

void PrecipitationNotificationsManager.authorizationDidChange(_:authorizationStatus:)(uint64_t a1, int a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  v5 = sub_1C96A6154();
  v6 = OUTLINED_FUNCTION_107_2(v5, qword_1EDB7AC90);
  v7 = sub_1C96A76A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_29();
    *v8 = 0;
    _os_log_impl(&dword_1C945E000, v6, v7, "About to process a user location authorization change notification", v8, 2u);
    OUTLINED_FUNCTION_26();
  }

  if (a2)
  {
    sub_1C96A7414();
    OUTLINED_FUNCTION_3();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    OUTLINED_FUNCTION_23_0();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C96A3D04();
    v14 = sub_1C96A5E34();
    OUTLINED_FUNCTION_1_63();
    v17 = sub_1C94D7CBC(v15, v16);
    v18 = swift_allocObject();
    *(v18 + 16) = v14;
    *(v18 + 24) = v17;
    *(v18 + 32) = v13;
    *(v18 + 40) = a2;

    OUTLINED_FUNCTION_104();
    sub_1C951C6C4();
  }

  else
  {
    v21 = sub_1C96A6134();
    v19 = sub_1C96A76A4();
    if (os_log_type_enabled(v21, v19))
    {
      v20 = OUTLINED_FUNCTION_29();
      *v20 = 0;
      _os_log_impl(&dword_1C945E000, v21, v19, "Location permission not determined ... aborting.", v20, 2u);
      OUTLINED_FUNCTION_26();
    }
  }
}

uint64_t sub_1C9625F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 96) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  *(v5 + 56) = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940]);
  v7 = sub_1C96A7374();
  *(v5 + 64) = v7;
  *(v5 + 72) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C962605C, v7, v6);
}

uint64_t sub_1C962605C()
{
  OUTLINED_FUNCTION_18();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1C9626160;
    v3 = *(v0 + 96);

    return sub_1C9626300(v3);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    OUTLINED_FUNCTION_17();

    return v5();
  }
}

uint64_t sub_1C9626160()
{
  OUTLINED_FUNCTION_30();
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  v5 = *(v1 + 72);
  v6 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1C9626294, v6, v5);
}

uint64_t sub_1C9626294()
{
  OUTLINED_FUNCTION_18();

  **(v0 + 40) = *(v0 + 80) == 0;
  OUTLINED_FUNCTION_17();

  return v1();
}

uint64_t sub_1C9626300(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 80) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = type metadata accessor for NotificationSubscription(0);
  *(v2 + 40) = swift_task_alloc();
  *(v2 + 48) = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940]);
  v4 = sub_1C96A7374();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1C9626430, v4, v3);
}

uint64_t sub_1C9626430()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_33_10((*(v0 + 16) + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager));
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_29_13(v1);

  return v3(v2);
}

uint64_t sub_1C9626540()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_27();
  v3 = v2;
  OUTLINED_FUNCTION_7_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1C9626788;
  }

  else
  {
    v7 = *(v3 + 56);
    v8 = *(v3 + 64);
    v9 = sub_1C9626650;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1C9626650()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_106_2();
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) == 1)
  {
    sub_1C9470AFC(*(v2 + 24), &qword_1EC3A58D0);
    if (qword_1EDB7AC88 != -1)
    {
      OUTLINED_FUNCTION_0_88();
    }

    v3 = sub_1C96A6154();
    v4 = OUTLINED_FUNCTION_107_2(v3, qword_1EDB7AC90);
    v5 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v5))
    {
      v6 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_47(v6);
      OUTLINED_FUNCTION_16_2(&dword_1C945E000, v7, v8, "Could not fetch the current location subscription status, aborting.");
      OUTLINED_FUNCTION_38_0();
    }
  }

  else
  {
    v9 = *(v2 + 40);
    v10 = *(v2 + 80);
    OUTLINED_FUNCTION_4_56();
    sub_1C96287F0();
    sub_1C9626884(v10, v9);
    OUTLINED_FUNCTION_3_47();
    sub_1C948EA44(v9, v11);
  }

  OUTLINED_FUNCTION_86_0();

  OUTLINED_FUNCTION_17();

  return v12();
}

uint64_t sub_1C9626788()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_106_2();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v0);
  sub_1C9470AFC(*(v1 + 24), &qword_1EC3A58D0);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  v5 = sub_1C96A6154();
  v6 = OUTLINED_FUNCTION_107_2(v5, qword_1EDB7AC90);
  v7 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v7))
  {
    v8 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v8);
    OUTLINED_FUNCTION_16_2(&dword_1C945E000, v9, v10, "Could not fetch the current location subscription status, aborting.");
    OUTLINED_FUNCTION_38_0();
  }

  OUTLINED_FUNCTION_86_0();

  OUTLINED_FUNCTION_17();

  return v11();
}

void sub_1C9626884(int a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for NotificationSubscription(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *(a2 + *(v5 + 32));
  if (v6 == 2 || (v6 & 1) == 0)
  {
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A6154();
    __swift_project_value_buffer(v9, qword_1EDB7AC90);
    v12 = sub_1C96A6134();
    v10 = sub_1C96A76A4();
    if (os_log_type_enabled(v12, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C945E000, v12, v10, "User has not enabled notifications for the current location, aborting.", v11, 2u);
      MEMORY[0x1CCA8E3D0](v11, -1, -1);
    }
  }

  else
  {
    sub_1C946B5D0(0, &qword_1EDB7CDB0);
    v7 = sub_1C96A7704();
    sub_1C9489AA0();
    *(swift_allocObject() + 16) = a1;
    sub_1C96287F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8);
    sub_1C96A5774();

    v8 = sub_1C96A7704();
    sub_1C96A5644();
  }
}

uint64_t sub_1C9626B68(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 3)
  {
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v3 = sub_1C96A6154();
    __swift_project_value_buffer(v3, qword_1EDB7AC90);
    v4 = sub_1C96A6134();
    v5 = sub_1C96A76A4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C945E000, v4, v5, "User has changed authorization status to .authorizedAlways ... scheduling the subscriptions.", v6, 2u);
      MEMORY[0x1CCA8E3D0](v6, -1, -1);
    }

    return PrecipitationNotificationsManager.schedule()();
  }

  else
  {
    v9 = (a1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler);
    v10 = *(a1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 24);
    v11 = *(a1 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationFetchScheduler + 32);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    (*(v11 + 56))(a3, v10, v11);
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v12 = sub_1C96A6154();
    __swift_project_value_buffer(v12, qword_1EDB7AC90);
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C945E000, v13, v14, "User has changed authorization status to NOT .authorizedAlways ... unscheduling the subscription for the current location", v15, 2u);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    v16 = v9[3];
    v17 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v16);
    return (*(v17 + 40))(v16, v17);
  }
}

void sub_1C9626D94()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A50F8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13 - v2;
  if (qword_1EDB7AC88 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC90);
  sub_1C955FEC0();
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    sub_1C955FEC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
    v9 = sub_1C96A70A4();
    v11 = v10;
    sub_1C9470AFC(v3, &qword_1EC3A50F8);
    v12 = sub_1C9484164(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1C945E000, v5, v6, "Rescheduled notifications after location authorization change to date: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  else
  {

    sub_1C9470AFC(v3, &qword_1EC3A50F8);
  }
}

void PrecipitationNotificationsManager.currentCLLocationDidUpdate(_:location:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C946B5D0(0, &qword_1EDB77D08);
  v7 = sub_1C961B254();
  sub_1C96A7414();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = a2;
  v13 = v3;
  v14 = v7;
  v15 = sub_1C96A5E34();
  OUTLINED_FUNCTION_1_63();
  v18 = sub_1C94D7CBC(v16, v17);
  v19 = swift_allocObject();
  v19[2] = v15;
  v19[3] = v18;
  v19[4] = v12;
  v19[5] = v13;
  v19[6] = v14;
  OUTLINED_FUNCTION_104();
  sub_1C951C258();
}

uint64_t sub_1C9627154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450);
  v5[5] = swift_task_alloc();
  type metadata accessor for NotificationSubscription.Location(0);
  v5[6] = swift_task_alloc();
  v5[7] = type metadata accessor for Location();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = sub_1C96A5E34();
  sub_1C96A5E24();
  sub_1C94D7CBC(&qword_1EDB7ACD0, MEMORY[0x1E69E1940]);
  v7 = sub_1C96A7374();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C96272D0, v7, v6);
}

uint64_t sub_1C96272D0()
{
  v44 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[3];
  sub_1C96A4DE4();
  [v3 coordinate];
  v5 = v4;
  v7 = v6;
  sub_1C96A4A54();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v42 = 0x746E6572727563;
  v43 = 0xE700000000000000;
  MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
  *(v1 + v2[11]) = 0;
  v12 = v42;
  v13 = v43;
  *v1 = 0x746E6572727563;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = v5;
  *(v1 + 40) = v7;
  *(v1 + 48) = 1;
  *(v1 + 56) = v12;
  *(v1 + 64) = v13;
  OUTLINED_FUNCTION_14_11(v2[7]);
  OUTLINED_FUNCTION_14_11(v2[8]);
  OUTLINED_FUNCTION_14_11(v2[9]);
  OUTLINED_FUNCTION_14_11(v2[10]);
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_0_88();
  }

  v14 = sub_1C96A6154();
  v0[15] = __swift_project_value_buffer(v14, qword_1EDB7AC90);
  OUTLINED_FUNCTION_11_33();
  sub_1C9489AA0();
  v15 = sub_1C96A6134();
  v16 = sub_1C96A76A4();
  v17 = os_log_type_enabled(v15, v16);
  v18 = v0[10];
  if (v17)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42 = v20;
    OUTLINED_FUNCTION_2_53(7.2225e-34);
    OUTLINED_FUNCTION_28_18();
    sub_1C94D7CBC(v21, v22);
    v23 = sub_1C96A7DB4();
    v25 = v24;
    OUTLINED_FUNCTION_10_38();
    sub_1C948EA44(v18, v26);
    v27 = sub_1C9484164(v23, v25, &v42);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_1C945E000, v15, v16, "Got a current location update from CoreLocation. About to update current location subscribtion. location=%{private,mask.hash}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {

    OUTLINED_FUNCTION_10_38();
    sub_1C948EA44(v18, v28);
  }

  v29 = v0[9];
  v31 = v0[6];
  v30 = v0[7];
  v33 = v0[4];
  v32 = v0[5];
  OUTLINED_FUNCTION_11_33();
  sub_1C9489AA0();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  NotificationSubscription.Location.init(location:locationOverride:)(v29, v32);
  OUTLINED_FUNCTION_33_10((v33 + OBJC_IVAR____TtC11WeatherCore33PrecipitationNotificationsManager_notificationSubscriptionManager));
  OUTLINED_FUNCTION_42();
  v41 = (v37 + *v37);
  v38 = swift_task_alloc();
  v0[16] = v38;
  *v38 = v0;
  v38[1] = sub_1C9627668;
  v39 = v0[6];

  return v41(v39, v30, v31);
}

uint64_t sub_1C9627668()
{
  OUTLINED_FUNCTION_30();
  v2 = *v1;
  OUTLINED_FUNCTION_7_11();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 136) = v0;

  v5 = *(v2 + 112);
  v6 = *(v2 + 104);
  if (v0)
  {
    v7 = sub_1C96279EC;
  }

  else
  {
    v7 = sub_1C962779C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1C962779C()
{
  v21 = v0;

  OUTLINED_FUNCTION_11_33();
  sub_1C9489AA0();
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[11];
  v5 = v0[8];
  if (v3)
  {
    v19 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 141558275;
    *(v6 + 4) = 1752392040;
    *(v6 + 12) = 2081;
    OUTLINED_FUNCTION_28_18();
    sub_1C94D7CBC(v8, v9);
    v10 = sub_1C96A7DB4();
    v12 = v11;
    sub_1C948EA44(v5, type metadata accessor for Location);
    v13 = sub_1C9484164(v10, v12, &v20);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_1C945E000, v1, v2, "Successfully updated current location subscribtion. location=%{private,mask.hash}s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();

    OUTLINED_FUNCTION_9_35();
    sub_1C948EA44(v19, v14);
  }

  else
  {
    v15 = v0[6];

    sub_1C948EA44(v5, type metadata accessor for Location);
    OUTLINED_FUNCTION_9_35();
    sub_1C948EA44(v15, v16);
  }

  sub_1C948EA44(v4, type metadata accessor for Location);

  OUTLINED_FUNCTION_17();

  return v17();
}

uint64_t sub_1C96279EC()
{
  v20 = v0;
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[6];

  OUTLINED_FUNCTION_9_35();
  sub_1C948EA44(v3, v4);
  OUTLINED_FUNCTION_10_38();
  sub_1C948EA44(v2, v5);
  v6 = v1;
  v7 = sub_1C96A6134();
  v8 = sub_1C96A7684();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    OUTLINED_FUNCTION_2_53(7.2225e-34);
    v0[2] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v13 = sub_1C96A70A4();
    v15 = sub_1C9484164(v13, v14, &v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1C945E000, v7, v8, "Failed to update current location subscription with error: %{private,mask.hash}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {
    v16 = v0[17];
  }

  OUTLINED_FUNCTION_17();

  return v17();
}

uint64_t sub_1C9627BE4()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_98_1(v1);

  return sub_1C9623344();
}

uint64_t sub_1C9627C88@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C961C18C();
  *a1 = result;
  return result;
}

void sub_1C9627CD4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1C96A4A54();
  OUTLINED_FUNCTION_7(v7);
  v8 = *(v3 + 16);

  sub_1C9625910(a1, a2, a3 & 1, v8);
}

uint64_t sub_1C9627D78()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_9_32(v4);

  return sub_1C9625F94(v6, v7, v8, v1, v2);
}

uint64_t sub_1C9627E20()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_73_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_9_32(v3);

  return sub_1C9627154(v5, v6, v7, v0, v1);
}

unint64_t sub_1C9627EC8()
{
  result = qword_1EC3A73B0;
  if (!qword_1EC3A73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A73B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationNotificationsManager.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C962809C()
{
  v0 = OUTLINED_FUNCTION_14_29();
  v1 = type metadata accessor for NotificationSubscription(v0);
  OUTLINED_FUNCTION_7(v1);
  v2 = OUTLINED_FUNCTION_14_0();
  return sub_1C9626B68(v2, v3, v4);
}

uint64_t sub_1C96280FC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_73_3();
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_9_32(v5);

  return sub_1C9624D94(v7, v8, v9, v1, v2, v3);
}

uint64_t sub_1C96281A0()
{
  v1 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_9(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  OUTLINED_FUNCTION_7(Schedule);
  v8 = *(v0 + 16);
  v9 = v0 + ((v3 + v5 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1C961C6A4(v8, v0 + v3, v9);
}

uint64_t sub_1C96282DC()
{
  v3 = OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_19_2();
  return sub_1C961D430(v2, v1, v0 + v4);
}

uint64_t sub_1C9628340()
{
  OUTLINED_FUNCTION_14_29();
  v0 = type metadata accessor for PrecipitationNotification();
  OUTLINED_FUNCTION_9(v0);
  v1 = type metadata accessor for PrecipitationNotificationDeliverySchedule();
  OUTLINED_FUNCTION_7(v1);
  v2 = OUTLINED_FUNCTION_14_0();
  return sub_1C961E2E8(v2, v3, v4, v5);
}

uint64_t sub_1C9628408()
{
  OUTLINED_FUNCTION_14_29();
  v0 = type metadata accessor for PrecipitationNotification();
  OUTLINED_FUNCTION_9(v0);
  v1 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_9(v1);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  OUTLINED_FUNCTION_7(Schedule);
  OUTLINED_FUNCTION_69_4();
  v3 = OUTLINED_FUNCTION_14_0();
  return sub_1C961E390(v3, v4, v5, v6);
}

uint64_t sub_1C962852C()
{
  v3 = OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_9(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for PrecipitationNotificationConfiguration();
  OUTLINED_FUNCTION_9(v8);
  v10 = (v5 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v12 = *(v11 + 64);
  Schedule = type metadata accessor for PrecipitationNotificationFetchSchedule();
  OUTLINED_FUNCTION_9(Schedule);
  v15 = v14;
  v17 = v16;
  v18 = (v10 + v12 + *(v15 + 80)) & ~*(v15 + 80);
  return sub_1C961F010(v2, v1, v0 + v5, v0 + v10, v0 + v18, *(v0 + ((*(v17 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1C962866C()
{
  v0 = OUTLINED_FUNCTION_14_29();
  v1 = type metadata accessor for NotificationSubscription(v0);
  OUTLINED_FUNCTION_9(v1);
  v2 = type metadata accessor for PrecipitationNotificationConfiguration();
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_72_2();
  v3 = OUTLINED_FUNCTION_14_0();
  return sub_1C961F570(v3, v4, v5);
}

uint64_t sub_1C962873C()
{
  OUTLINED_FUNCTION_14_29();
  v0 = type metadata accessor for PrecipitationNotificationPolicy();
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_14_0();
  return sub_1C961F480();
}

unint64_t sub_1C962879C()
{
  result = qword_1EC3A73D8;
  if (!qword_1EC3A73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A73D8);
  }

  return result;
}

uint64_t sub_1C96287F0()
{
  OUTLINED_FUNCTION_40_2();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_11();
  v3(v2);
  return v0;
}

uint64_t sub_1C9628848()
{
  OUTLINED_FUNCTION_14_29();
  v0 = type metadata accessor for Location();
  OUTLINED_FUNCTION_9(v0);
  v1 = type metadata accessor for PrecipitationNotificationConfiguration();
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_72_2();
  v2 = OUTLINED_FUNCTION_14_0();
  return sub_1C961FA04(v2, v3, v4, v5);
}

NSObject *sub_1C9628900()
{
  v0 = OUTLINED_FUNCTION_14_29();
  v1 = type metadata accessor for NotificationSubscription(v0);
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_19_2();
  v2 = OUTLINED_FUNCTION_14_0();
  return sub_1C96201E4(v2, v3);
}

uint64_t sub_1C9628958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58D0);
  OUTLINED_FUNCTION_9(v0);
  v1 = OUTLINED_FUNCTION_14_0();
  return sub_1C9624244(v1, v2, v3) & 1;
}

uint64_t sub_1C96289FC()
{
  OUTLINED_FUNCTION_73_3();
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_17_1(v6);
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_9_32(v7);

  return sub_1C9621D14(v9, v10, v11, v1, v2, v3, v4, v5);
}

uint64_t sub_1C9628AB8()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_98_1(v1);

  return sub_1C9623344();
}

uint64_t sub_1C9628B40@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C96207C4();
  *a1 = result;
  return result;
}

uint64_t sub_1C9628B7C()
{
  v0 = type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_7(v0);

  return sub_1C9620BA4();
}

uint64_t sub_1C9628BDC()
{
  v1 = OUTLINED_FUNCTION_14_29();
  v2 = type metadata accessor for NotificationSubscription(v1);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_19_2();
  return sub_1C961CA70(v0 + v3);
}

uint64_t objectdestroy_56Tm()
{
  OUTLINED_FUNCTION_55_5();
  type metadata accessor for NotificationSubscription(0);
  OUTLINED_FUNCTION_124();

  OUTLINED_FUNCTION_84_2();

  type metadata accessor for Location();
  OUTLINED_FUNCTION_64_5();
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_93_1();
  v1(v2);
  v3 = OUTLINED_FUNCTION_104_2();
  if (!OUTLINED_FUNCTION_34_11(v3))
  {
    OUTLINED_FUNCTION_3_35();
    v4 = OUTLINED_FUNCTION_92_2();
    v5(v4);
  }

  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_77_2();
  type metadata accessor for NotificationSubscription.Location(0);
  OUTLINED_FUNCTION_60_5();

  v6 = OUTLINED_FUNCTION_41_12();
  v1(v6);
  if (!OUTLINED_FUNCTION_32_7())
  {
    OUTLINED_FUNCTION_3_35();
    v7 = OUTLINED_FUNCTION_91_2();
    v8(v7);
  }

  OUTLINED_FUNCTION_27_14();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_24_19();
  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_58_4();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1C9628E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = a3(0);
  OUTLINED_FUNCTION_7(v7);
  OUTLINED_FUNCTION_19_2();
  return a4(v4 + v8, a1);
}

uint64_t sub_1C9628E9C()
{
  v1 = OUTLINED_FUNCTION_14_29();
  v2 = type metadata accessor for NotificationSubscription(v1);
  OUTLINED_FUNCTION_9(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = type metadata accessor for PrecipitationNotificationConfiguration();
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_72_2();
  return sub_1C961E774(v0 + v4, v0 + v6);
}

uint64_t sub_1C9628F58()
{
  v0 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_9(v0);
  v1 = type metadata accessor for PrecipitationNotificationConfiguration();
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_69_4();
  v2 = OUTLINED_FUNCTION_14_0();
  return sub_1C9621248(v2, v3, v4, v5);
}

uint64_t objectdestroy_71Tm()
{
  v1 = (type metadata accessor for NotificationSubscription(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v24 = *(*v1 + 64);
  type metadata accessor for PrecipitationNotificationConfiguration();
  OUTLINED_FUNCTION_1();
  v5 = *(v4 + 80);
  v25 = *(v6 + 64);
  v26 = v0;

  v7 = v0 + v3 + v1[7];

  v8 = type metadata accessor for Location();
  v9 = *(v8 + 20);
  v10 = sub_1C96A4DF4();
  OUTLINED_FUNCTION_6();
  v12 = *(v11 + 8);
  v13 = v11 + 8;
  v12(v7 + v9, v10);
  v14 = *(v8 + 24);
  v15 = sub_1C96A4A54();
  if (!OUTLINED_FUNCTION_21_4(v7 + v14))
  {
    OUTLINED_FUNCTION_7_4();
    (*(v16 + 8))(v7 + v14, v15);
  }

  OUTLINED_FUNCTION_38_7();
  OUTLINED_FUNCTION_37_10();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_83_1();
  type metadata accessor for NotificationSubscription.Location(0);
  OUTLINED_FUNCTION_80_2();

  v17 = OUTLINED_FUNCTION_21_25();
  (v12)(v17);
  if (!OUTLINED_FUNCTION_56_4())
  {
    OUTLINED_FUNCTION_7_4();
    (*(v18 + 8))(v7 + v13, v15);
  }

  v19 = (v3 + v24 + v5) & ~v5;
  OUTLINED_FUNCTION_38_7();
  OUTLINED_FUNCTION_37_10();
  OUTLINED_FUNCTION_36_7();
  OUTLINED_FUNCTION_35_9();
  OUTLINED_FUNCTION_83_1();
  OUTLINED_FUNCTION_7_4();
  v21 = *(v20 + 8);
  v21(v26 + v19, v15);
  OUTLINED_FUNCTION_89_2();
  v21(v26 + v19 + v22, v15);

  return MEMORY[0x1EEE6BDD0](v26, v19 + v25, v2 | v5 | 7);
}

uint64_t sub_1C96292B4()
{
  v0 = OUTLINED_FUNCTION_102_2();
  OUTLINED_FUNCTION_9(v0);
  v1 = type metadata accessor for PrecipitationNotificationConfiguration();
  OUTLINED_FUNCTION_7(v1);
  OUTLINED_FUNCTION_69_4();
  v2 = OUTLINED_FUNCTION_14_0();
  return sub_1C9621708(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_56_4()
{
  v4 = v2 + *(v0 + 24);

  return __swift_getEnumTagSinglePayload(v4, 1, v1);
}

uint64_t OUTLINED_FUNCTION_64_5()
{

  return sub_1C96A4DF4();
}

uint64_t OUTLINED_FUNCTION_74_3()
{
}

void OUTLINED_FUNCTION_77_2()
{
  v3 = *(v1 + *(v0 + 44));
}

uint64_t OUTLINED_FUNCTION_80_2()
{
}

uint64_t OUTLINED_FUNCTION_81_1()
{
}

uint64_t OUTLINED_FUNCTION_102_2()
{

  return type metadata accessor for NotificationSubscription(0);
}

uint64_t OUTLINED_FUNCTION_103_2()
{

  return type metadata accessor for NotificationSubscription(0);
}

uint64_t OUTLINED_FUNCTION_104_2()
{

  return sub_1C96A4A54();
}

void OUTLINED_FUNCTION_105_2()
{
  v3 = *(v1 + *(v0 + 44));
}

uint64_t OUTLINED_FUNCTION_106_2()
{
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_1C96A6134();
}

_BYTE *_s8StubDataVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t LanguageConfiguration.language.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

uint64_t LanguageConfiguration.reportWeather.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_1C96A53C4();
}

uint64_t LanguageConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7400);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = *(v1 + 24);
  v13 = *(v1 + 16);
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C9475FB4();
  sub_1C96A7F54();
  LOBYTE(v16) = 0;
  v10 = v15;
  sub_1C96A7D24();
  if (!v10)
  {
    v16 = v13;
    v17 = v14;
    v18 = 1;
    sub_1C95D9D20();
    sub_1C96A53C4();
    sub_1C96A7D74();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C96298BC()
{
  v0 = sub_1C96A7BE4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C9629934@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C96298BC();
  *a1 = result;
  return result;
}

uint64_t sub_1C9629964@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9476010(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C9629990@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C96298BC();
  *a1 = result;
  return result;
}

uint64_t sub_1C96299B8(uint64_t a1)
{
  v2 = sub_1C9475FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C96299F4(uint64_t a1)
{
  v2 = sub_1C9475FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static LanguageConfiguration.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v6 || (sub_1C96A7DE4() & 1) != 0)
  {
    v7 = v2 == v4 && v3 == v5;
    if (v7 || (sub_1C96A7DE4() & 1) != 0)
    {
      return 1;
    }
  }

  return result;
}

unint64_t sub_1C9629ADC()
{
  result = qword_1EC3A7408;
  if (!qword_1EC3A7408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7408);
  }

  return result;
}

void *StubUbiquitousKeyValueStoreProvider.syncError.getter()
{
  OUTLINED_FUNCTION_0_89();
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void StubUbiquitousKeyValueStoreProvider.syncError.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t StubUbiquitousKeyValueStoreProvider.__allocating_init(keyValueStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  StubUbiquitousKeyValueStoreProvider.init(keyValueStore:)(a1);
  return v2;
}

void *StubUbiquitousKeyValueStoreProvider.init(keyValueStore:)(__int128 *a1)
{
  v3 = type metadata accessor for iCloudStatusProvider();
  v4 = swift_allocObject();
  v1[10] = v3;
  v1[11] = &protocol witness table for iCloudStatusProvider;
  v1[7] = v4;
  v1[12] = 0;
  sub_1C94924FC(a1, (v1 + 2));
  return v1;
}

uint64_t StubUbiquitousKeyValueStoreProvider.synchronizeImmediately()()
{
  OUTLINED_FUNCTION_0_89();
  v1 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6630);
  swift_allocObject();
  v2 = v1;
  return sub_1C96A56A4();
}

uint64_t StubUbiquitousKeyValueStoreProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return v0;
}

uint64_t StubUbiquitousKeyValueStoreProvider.__deallocating_deinit()
{
  StubUbiquitousKeyValueStoreProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

uint64_t sub_1C9629EB4()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7410);
  v10[15] = 0;
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7420);
  *(swift_allocObject() + 16) = xmmword_1C96AC330;
  v10[14] = 0;
  sub_1C96A4F44();
  v10[13] = 1;
  sub_1C96A4F44();
  v10[12] = 2;
  sub_1C96A4F44();
  v10[11] = 3;
  sub_1C96A4F44();
  sub_1C962A2FC();
  result = sub_1C96A4F54();
  qword_1EDB7AA98 = result;
  return result;
}

_BYTE *_s18WeatherEnvironmentVwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C962A2FC()
{
  result = qword_1EDB7A1A8[0];
  if (!qword_1EDB7A1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7A1A8);
  }

  return result;
}

uint64_t sub_1C962A43C()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB7CFD0);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_2_61();
  OUTLINED_FUNCTION_4_57();
  return sub_1C96A6144();
}

uint64_t sub_1C962A4C4()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EC3A7460);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_2_61();
  OUTLINED_FUNCTION_4_57();
  return sub_1C96A6144();
}

uint64_t sub_1C962A59C()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB7AC68);
  OUTLINED_FUNCTION_2_19();
  return OUTLINED_FUNCTION_7_39();
}

uint64_t sub_1C962A898()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB77E40);
  __swift_project_value_buffer(v0, qword_1EDB77E40);
  return sub_1C96A6144();
}

uint64_t sub_1C962A93C()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB77E18);
  __swift_project_value_buffer(v0, qword_1EDB77E18);
  return sub_1C96A6144();
}

uint64_t sub_1C962AA28()
{
  v0 = sub_1C96A6154();
  __swift_allocate_value_buffer(v0, qword_1EDB7CFB0);
  OUTLINED_FUNCTION_2_19();
  OUTLINED_FUNCTION_2_61();
  OUTLINED_FUNCTION_4_57();
  return sub_1C96A6144();
}

uint64_t StubCoreRoutineDataManager.__allocating_init()()
{
  v0 = swift_allocObject();
  StubCoreRoutineDataManager.init()();
  return v0;
}

uint64_t static LocationMetadataStore.preferredCacheSize.getter@<X0>(void *a1@<X8>)
{
  *a1 = 32;
  v2 = *MEMORY[0x1E69D6298];
  sub_1C96A64E4();
  OUTLINED_FUNCTION_8_1();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t LocationMetadataStore.configuredCountryCode.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_1C96A53C4();
  return v1;
}

uint64_t LocationMetadataStore.configuredCountryCode.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t LocationMetadataStore.deinit()
{
  sub_1C96A3D04();
  sub_1C96A5524();

  if (v2 >= 2)
  {
    sub_1C96A64A4();
    sub_1C962AE14(v2);
  }

  return v0;
}

uint64_t sub_1C962AE14(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t LocationMetadataStore.__deallocating_deinit()
{
  LocationMetadataStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t LocationMetadataStore.__allocating_init(database:configuredCountryCode:)()
{
  v0 = swift_allocObject();
  LocationMetadataStore.init(database:configuredCountryCode:)();
  return v0;
}

Swift::Void __swiftcall LocationMetadataStore.purgeExpiredCountryCodes()()
{
  OUTLINED_FUNCTION_103();
  sub_1C96A61C4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_62();
  sub_1C96A5534();
  if (v38[0])
  {
    if (qword_1EDB7CF88 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v5 = sub_1C96A6154();
    __swift_project_value_buffer(v5, qword_1EDB7CF90);
    v6 = sub_1C96A6134();
    v7 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_21(v7))
    {
      v8 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_58(v8);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v9, v10, v11, v12, v38[0], 2u);
      OUTLINED_FUNCTION_6_48();
    }

    sub_1C96A5954();
    sub_1C96A5944();
    sub_1C96A6334();
    v38[3] = v3;
    v38[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_11_34();
    v13();
    OUTLINED_FUNCTION_9_36();
    OUTLINED_FUNCTION_26_15();
    if (v0)
    {

      v14 = OUTLINED_FUNCTION_8_40();
      v15(v14);
      v16 = OUTLINED_FUNCTION_7_40();
      v17(v16);
      v18 = v0;
      v19 = sub_1C96A6134();
      v20 = sub_1C96A7684();

      if (os_log_type_enabled(v19, v20))
      {
        swift_slowAlloc();
        v21 = OUTLINED_FUNCTION_62();
        v38[0] = v21;
        OUTLINED_FUNCTION_25_20(4.8751e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
        v22 = sub_1C96A70A4();
        v24 = sub_1C9484164(v22, v23, v38);

        *(v1 + 4) = v24;
        OUTLINED_FUNCTION_16_29(&dword_1C945E000, v25, v26, "Failed to purge expired country codes, error=%{public}s");
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        OUTLINED_FUNCTION_12_5();
        OUTLINED_FUNCTION_26();
      }

      else
      {
      }
    }

    else
    {
      v27 = OUTLINED_FUNCTION_8_40();
      v28(v27);

      v29 = sub_1C96A6134();
      v30 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_21(v30))
      {
        v31 = OUTLINED_FUNCTION_29();
        *v31 = 0;
        OUTLINED_FUNCTION_69();
        _os_log_impl(v32, v33, v34, v35, v31, 2u);
        OUTLINED_FUNCTION_12_5();
      }

      v36 = OUTLINED_FUNCTION_7_40();
      v37(v36);
    }
  }

  OUTLINED_FUNCTION_101();
}

void __swiftcall LocationMetadataStore.queryDisplayRegion(for:)(WeatherCore::LocationDisplayRegion_optional *__return_ptr retstr, Swift::String a2)
{
  OUTLINED_FUNCTION_17_5();
  v2 = sub_1C96A6504();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  (*(v4 + 104))(v7 - v6, *MEMORY[0x1E69D62C0], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6750);
  sub_1C96A6534();
  (*(v4 + 8))(v8, v2);
}

uint64_t sub_1C962B3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_1C96A4A54();
  v9 = *(v8 - 8);
  v63 = v8;
  v64 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v59 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v55 - v19;
  v21 = sub_1C96A61C4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a1;
  result = sub_1C96A5534();
  if (!v74)
  {
    goto LABEL_21;
  }

  v65 = a4;
  v66 = v74;
  sub_1C96A6314();
  v77 = MEMORY[0x1E69E6158];
  v78 = MEMORY[0x1E69D62D8];
  v61 = a2;
  v74 = a2;
  v75 = a3;
  sub_1C96A53C4();
  sub_1C96A6224();
  __swift_destroy_boxed_opaque_existential_1Tm(&v74);
  v26 = sub_1C96A63E4();
  __swift_storeEnumTagSinglePayload(v20, 1, 1, v26);
  v27 = v80;
  sub_1C96A62D4();
  if (v27)
  {

    sub_1C94DDC44(v20);
    (*(v22 + 8))(v24, v21);
    v80 = 0;
LABEL_4:
    if (qword_1EDB7CF88 != -1)
    {
      swift_once();
    }

    v28 = sub_1C96A6154();
    __swift_project_value_buffer(v28, qword_1EDB7CF90);
    sub_1C96A53C4();
    v29 = sub_1C96A6134();
    v30 = sub_1C96A76A4();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v61;
    if (v31)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v74 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      *(v33 + 14) = sub_1C9484164(v32, a3, &v74);
      _os_log_impl(&dword_1C945E000, v29, v30, "No displayRegion found for key: %{private,mask.hash}s", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1CCA8E3D0](v34, -1, -1);
      MEMORY[0x1CCA8E3D0](v33, -1, -1);
    }

    v35 = 0uLL;
    a4 = v65;
    goto LABEL_22;
  }

  v80 = 0;

  sub_1C94DDC44(v20);
  (*(v22 + 8))(v24, v21);
  if (!v68)
  {
    goto LABEL_4;
  }

  v36 = v69;
  v57 = v70;
  sub_1C96A6354();
  v37 = v63;
  result = __swift_getEnumTagSinglePayload(v17, 1, v63);
  if (result == 1)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_1C96A5954();
  v38 = v62;
  sub_1C96A5944();
  v39 = sub_1C96A4994();
  v40 = *(v64 + 8);
  v40(v38, v37);
  v40(v17, v37);
  if (v39)
  {
    result = sub_1C96A6354();
    if (v68)
    {
      v74 = v68;
      v75 = v69;
      v76 = v70;
      v77 = v71;
      v78 = v72;
      v79 = v73;
      sub_1C95B47A8(v67);

      v41 = v67[1];
      v42 = v65;
      *v65 = v67[0];
      v42[1] = v41;
      *(v42 + 32) = 0;
      return result;
    }

    goto LABEL_24;
  }

  v62 = v40;
  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v43 = sub_1C96A6154();
  __swift_project_value_buffer(v43, qword_1EDB7CF90);
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A3D04();
  sub_1C96A3D04();
  v44 = sub_1C96A6134();
  v45 = sub_1C96A76A4();

  if (!os_log_type_enabled(v44, v45))
  {

    a4 = v65;
    goto LABEL_20;
  }

  v56 = v45;
  v46 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v74 = v55;
  *v46 = 141558787;
  *(v46 + 4) = 1752392040;
  *(v46 + 12) = 2081;
  *(v46 + 14) = sub_1C9484164(v61, a3, &v74);
  *(v46 + 22) = 2160;
  *(v46 + 24) = 1752392040;
  *(v46 + 32) = 2081;
  v47 = v59;
  sub_1C96A6354();
  v48 = v47;
  LODWORD(v47) = __swift_getEnumTagSinglePayload(v47, 1, v37);

  v61 = v36;

  if (v47 != 1)
  {
    v49 = v58;
    (*(v64 + 32))(v58, v48, v37);
    sub_1C94B7608(&qword_1EDB7CC50, MEMORY[0x1E6969530]);
    v50 = sub_1C96A7DB4();
    v52 = v51;
    (v62)(v49, v37);
    v53 = sub_1C9484164(v50, v52, &v74);

    *(v46 + 34) = v53;
    _os_log_impl(&dword_1C945E000, v44, v56, "DisplayRegion expired. id=%{private,mask.hash}s, expires=%{private,mask.hash}s", v46, 0x2Au);
    v54 = v55;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v54, -1, -1);
    MEMORY[0x1CCA8E3D0](v46, -1, -1);

    a4 = v65;
LABEL_20:
    LocationMetadataStore.purgeExpiredDisplayRegions()();

LABEL_21:
    v35 = 0uLL;
LABEL_22:
    *a4 = v35;
    a4[1] = v35;
    *(a4 + 32) = 1;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LocationMetadataStore.purgeExpiredDisplayRegions()()
{
  OUTLINED_FUNCTION_103();
  sub_1C96A61C4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_62();
  sub_1C96A5534();
  if (v38[0])
  {
    if (qword_1EDB7CF88 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v5 = sub_1C96A6154();
    __swift_project_value_buffer(v5, qword_1EDB7CF90);
    v6 = sub_1C96A6134();
    v7 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_21(v7))
    {
      v8 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_58(v8);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v9, v10, v11, v12, v38[0], 2u);
      OUTLINED_FUNCTION_6_48();
    }

    sub_1C96A5954();
    sub_1C96A5944();
    sub_1C96A6334();
    v38[3] = v3;
    v38[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_11_34();
    v13();
    OUTLINED_FUNCTION_9_36();
    OUTLINED_FUNCTION_26_15();
    if (v0)
    {

      v14 = OUTLINED_FUNCTION_8_40();
      v15(v14);
      v16 = OUTLINED_FUNCTION_7_40();
      v17(v16);
      v18 = v0;
      v19 = sub_1C96A6134();
      v20 = sub_1C96A7684();

      if (os_log_type_enabled(v19, v20))
      {
        swift_slowAlloc();
        v21 = OUTLINED_FUNCTION_62();
        v38[0] = v21;
        OUTLINED_FUNCTION_25_20(4.8751e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
        v22 = sub_1C96A70A4();
        v24 = sub_1C9484164(v22, v23, v38);

        *(v1 + 4) = v24;
        OUTLINED_FUNCTION_16_29(&dword_1C945E000, v25, v26, "Failed to purge expired display regions, error=%{public}s");
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        OUTLINED_FUNCTION_12_5();
        OUTLINED_FUNCTION_26();
      }

      else
      {
      }
    }

    else
    {
      v27 = OUTLINED_FUNCTION_8_40();
      v28(v27);

      v29 = sub_1C96A6134();
      v30 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_21(v30))
      {
        v31 = OUTLINED_FUNCTION_29();
        *v31 = 0;
        OUTLINED_FUNCTION_69();
        _os_log_impl(v32, v33, v34, v35, v31, 2u);
        OUTLINED_FUNCTION_12_5();
      }

      v36 = OUTLINED_FUNCTION_7_40();
      v37(v36);
    }
  }

  OUTLINED_FUNCTION_101();
}

Swift::tuple_isAvailable_Bool_String_optional __swiftcall LocationMetadataStore.queryAddress(for:)(Swift::String a1)
{
  OUTLINED_FUNCTION_17_5();
  v2 = sub_1C96A6504();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_62();
  v6 = OUTLINED_FUNCTION_28_19();
  v7(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7528);
  sub_1C96A6534();
  (*(v4 + 8))(v1, v2);
  v8 = v11;
  v9 = v12;
  v10 = v13;
  result._1.value._object = v10;
  result._1.value._countAndFlagsBits = v9;
  result.isAvailable = v8;
  return result;
}

void sub_1C962C114(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v71 = a4;
  v7 = sub_1C96A4A54();
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B60);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v58 - v19;
  v21 = sub_1C96A61C4();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  sub_1C96A5534();
  if (v72)
  {
    v70 = v72;
    sub_1C96A6314();
    v73 = MEMORY[0x1E69E6158];
    v74 = MEMORY[0x1E69D62D8];
    v67 = a2;
    *&v72 = a2;
    *(&v72 + 1) = a3;
    sub_1C96A53C4();
    sub_1C96A6224();
    __swift_destroy_boxed_opaque_existential_1Tm(&v72);
    v25 = sub_1C96A63E4();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v25);
    v26 = v79;
    sub_1C96A62D4();
    if (v26)
    {

      sub_1C94DDC44(v20);
      (*(v22 + 8))(v24, v21);
      v79 = 0;
LABEL_4:
      v27 = v67;
      if (qword_1EDB7CF88 != -1)
      {
        swift_once();
      }

      v28 = sub_1C96A6154();
      __swift_project_value_buffer(v28, qword_1EDB7CF90);
      sub_1C96A53C4();
      v29 = sub_1C96A6134();
      v30 = sub_1C96A76A4();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&v72 = v32;
        *v31 = 141558275;
        *(v31 + 4) = 1752392040;
        *(v31 + 12) = 2081;
        *(v31 + 14) = sub_1C9484164(v27, a3, &v72);
        _os_log_impl(&dword_1C945E000, v29, v30, "No address found for key: %{private,mask.hash}s", v31, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        MEMORY[0x1CCA8E3D0](v32, -1, -1);
        MEMORY[0x1CCA8E3D0](v31, -1, -1);
      }

      goto LABEL_9;
    }

    v79 = 0;

    sub_1C94DDC44(v20);
    (*(v22 + 8))(v24, v21);
    v40 = v75;
    if (!v75)
    {
      goto LABEL_4;
    }

    v62 = v76;
    v63 = v77;
    v61 = v78;
    sub_1C96A6354();
    v41 = v68;
    if (__swift_getEnumTagSinglePayload(v17, 1, v68) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1C96A5954();
      sub_1C96A5944();
      v42 = sub_1C96A4994();
      v43 = *(v69 + 8);
      v43(v12, v41);
      v43(v17, v41);
      if ((v42 & 1) == 0)
      {
        v59 = v43;
        if (qword_1EDB7CF88 != -1)
        {
          swift_once();
        }

        v45 = sub_1C96A6154();
        __swift_project_value_buffer(v45, qword_1EDB7CF90);
        sub_1C96A53C4();
        sub_1C96A3D04();
        sub_1C96A3D04();
        sub_1C96A3D04();
        sub_1C96A3D04();
        v46 = sub_1C96A6134();
        v47 = sub_1C96A76A4();

        v60 = v47;
        if (os_log_type_enabled(v46, v47))
        {
          v58 = v46;
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v72 = v49;
          *v48 = 141558787;
          *(v48 + 4) = 1752392040;
          *(v48 + 12) = 2081;
          *(v48 + 14) = sub_1C9484164(v67, a3, &v72);
          *(v48 + 22) = 2160;
          *(v48 + 24) = 1752392040;
          *(v48 + 32) = 2081;
          v50 = v65;
          sub_1C96A6354();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);

          v67 = v40;

          if (EnumTagSinglePayload == 1)
          {
LABEL_29:
            __break(1u);
            return;
          }

          v52 = v64;
          (*(v69 + 32))(v64, v50, v41);
          sub_1C94B7608(&qword_1EDB7CC50, MEMORY[0x1E6969530]);
          v53 = sub_1C96A7DB4();
          v55 = v54;
          v59(v52, v41);
          v56 = sub_1C9484164(v53, v55, &v72);

          *(v48 + 34) = v56;
          v57 = v58;
          _os_log_impl(&dword_1C945E000, v58, v60, "Address expired. id=%{private,mask.hash}s, expires=%{private,mask.hash}s", v48, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1CCA8E3D0](v49, -1, -1);
          MEMORY[0x1CCA8E3D0](v48, -1, -1);
        }

        else
        {
        }

        LocationMetadataStore.purgeExpiredAddresses()();

LABEL_9:

        v33 = v71;
        *v71 = 0;
        *(v33 + 1) = 0;
        *(v33 + 2) = 0;
        return;
      }

      sub_1C96A6354();
      if (v75 != 2)
      {
        v44 = v71;
        *v71 = v75 & 1;
        sub_1C96A6354();

        *(v44 + 8) = v72;
        return;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

  if (qword_1EDB7CF88 != -1)
  {
    swift_once();
  }

  v34 = sub_1C96A6154();
  __swift_project_value_buffer(v34, qword_1EDB7CF90);
  sub_1C96A53C4();
  v35 = sub_1C96A6134();
  v36 = sub_1C96A76A4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v72 = v38;
    *v37 = 141558275;
    *(v37 + 4) = 1752392040;
    *(v37 + 12) = 2081;
    *(v37 + 14) = sub_1C9484164(a2, a3, &v72);
    _os_log_impl(&dword_1C945E000, v35, v36, "Store has no addresses. Skipping look up of key: %{private,mask.hash}s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1CCA8E3D0](v38, -1, -1);
    MEMORY[0x1CCA8E3D0](v37, -1, -1);
  }

  v39 = v71;
  *v71 = 0;
  *(v39 + 1) = 0;
  *(v39 + 2) = 0;
}

Swift::Void __swiftcall LocationMetadataStore.purgeExpiredAddresses()()
{
  OUTLINED_FUNCTION_103();
  sub_1C96A61C4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_24_20();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_62();
  sub_1C96A5534();
  if (v38[0])
  {
    if (qword_1EDB7CF88 != -1)
    {
      OUTLINED_FUNCTION_0_9();
    }

    v5 = sub_1C96A6154();
    __swift_project_value_buffer(v5, qword_1EDB7CF90);
    v6 = sub_1C96A6134();
    v7 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_21(v7))
    {
      v8 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_4_58(v8);
      OUTLINED_FUNCTION_69();
      _os_log_impl(v9, v10, v11, v12, v38[0], 2u);
      OUTLINED_FUNCTION_6_48();
    }

    sub_1C96A5954();
    sub_1C96A5944();
    sub_1C96A6334();
    v38[3] = v3;
    v38[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_11_34();
    v13();
    OUTLINED_FUNCTION_9_36();
    OUTLINED_FUNCTION_26_15();
    if (v0)
    {

      v14 = OUTLINED_FUNCTION_8_40();
      v15(v14);
      v16 = OUTLINED_FUNCTION_7_40();
      v17(v16);
      v18 = v0;
      v19 = sub_1C96A6134();
      v20 = sub_1C96A7684();

      if (os_log_type_enabled(v19, v20))
      {
        swift_slowAlloc();
        v21 = OUTLINED_FUNCTION_62();
        v38[0] = v21;
        OUTLINED_FUNCTION_25_20(4.8751e-34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
        v22 = sub_1C96A70A4();
        v24 = sub_1C9484164(v22, v23, v38);

        *(v1 + 4) = v24;
        OUTLINED_FUNCTION_16_29(&dword_1C945E000, v25, v26, "Failed to purge expired addresses, error=%{public}s");
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        OUTLINED_FUNCTION_12_5();
        OUTLINED_FUNCTION_26();
      }

      else
      {
      }
    }

    else
    {
      v27 = OUTLINED_FUNCTION_8_40();
      v28(v27);

      v29 = sub_1C96A6134();
      v30 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_21(v30))
      {
        v31 = OUTLINED_FUNCTION_29();
        *v31 = 0;
        OUTLINED_FUNCTION_69();
        _os_log_impl(v32, v33, v34, v35, v31, 2u);
        OUTLINED_FUNCTION_12_5();
      }

      v36 = OUTLINED_FUNCTION_7_40();
      v37(v36);
    }
  }

  OUTLINED_FUNCTION_101();
}

void LocationMetadataStore.saveCountryCode(_:for:)()
{
  OUTLINED_FUNCTION_103();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v24 - v17;
  sub_1C96A5534();
  if (v30)
  {
    v24[1] = sub_1C96A6304();
    v25 = v8;

    swift_beginAccess();
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);
    sub_1C96A5954();
    OUTLINED_FUNCTION_66();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A5944();
    sub_1C96A4974();
    (*(v11 + 8))(v15, v9);
    v26 = sub_1C962DA04(v4, v2, v25, v6, v19, v20, v18);
    v27 = v21;
    v28 = v22;
    v29 = v23;
    sub_1C96A62A4();
  }

  OUTLINED_FUNCTION_101();
}

Swift::Void __swiftcall LocationMetadataStore.saveDisplayRegion(_:for:)(WeatherCore::LocationDisplayRegion _, Swift::String a2)
{
  v5 = v2;
  OUTLINED_FUNCTION_17_5();
  v6 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v16 = *v4;
  v19 = v4[1];
  v20 = v16;
  sub_1C96A5534();
  if (v23)
  {
    sub_1C96A6304();

    v22 = v19;
    v21 = v20;
    sub_1C96A5954();
    OUTLINED_FUNCTION_66();
    sub_1C96A53C4();
    sub_1C96A5944();
    sub_1C96A4974();
    (*(v8 + 8))(v12, v6);
    *&v21 = sub_1C95FB13C(v3, v5, &v21, v15);
    *(&v21 + 1) = v17;
    *&v22 = v18;
    sub_1C96A62A4();
  }
}

Swift::Void __swiftcall LocationMetadataStore.saveAddress(_:for:)(Swift::String_optional _, Swift::String a2)
{
  OUTLINED_FUNCTION_103();
  v3 = v2;
  v30 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  if (qword_1EDB7CF88 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v19 = sub_1C96A6154();
  __swift_project_value_buffer(v19, qword_1EDB7CF90);
  OUTLINED_FUNCTION_66();
  sub_1C96A53C4();
  v20 = sub_1C96A6134();
  v21 = sub_1C96A76A4();

  if (os_log_type_enabled(v20, v21))
  {
    swift_slowAlloc();
    v28 = v9;
    v29 = v11;
    v22 = v6;
    v23 = OUTLINED_FUNCTION_62();
    v31[0] = v23;
    *v8 = 141558275;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2081;
    *(v8 + 14) = sub_1C9484164(v30, v3, v31);
    _os_log_impl(&dword_1C945E000, v20, v21, "Save new address. id=%{private,mask.hash}s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v6 = v22;
    OUTLINED_FUNCTION_26();
    v9 = v28;
    v11 = v29;
    OUTLINED_FUNCTION_26();
  }

  sub_1C96A5534();
  if (v31[4])
  {
    sub_1C96A6304();

    sub_1C96A5954();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A5944();
    sub_1C96A4974();
    (*(v11 + 8))(v15, v9);
    v31[0] = sub_1C9692AE4(v8, v6, v30, v3, v18);
    v31[1] = v24;
    v31[2] = v25;
    v31[3] = v26;
    sub_1C96A62A4();
  }

  OUTLINED_FUNCTION_101();
}

Swift::Void __swiftcall LocationMetadataStore.removeAllAddresses()()
{
  if (qword_1EDB7CF88 != -1)
  {
    OUTLINED_FUNCTION_0_9();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB7CF90);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_21(v2))
  {
    v3 = OUTLINED_FUNCTION_29();
    *v3 = 0;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v4, v5, v6, v7, v3, 2u);
    OUTLINED_FUNCTION_26();
  }

  sub_1C96A5534();
  v8 = v9;
  if (v9)
  {
    sub_1C96A62F4();

    v8 = 0;
    sub_1C96A6274();
  }

  sub_1C96A5534();
  if (v9)
  {
    sub_1C96A6324();
    OUTLINED_FUNCTION_66();

    sub_1C96A6374();
    if (v8)
    {
    }
  }
}

uint64_t static LocationMetadataStore.location.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDB7E2C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A64D4();
  __swift_project_value_buffer(v2, qword_1EDB7BEB8);
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t LocationMetadataStore.update(countryCode:for:)()
{
  OUTLINED_FUNCTION_17_5();
  sub_1C96A7544();
  MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_20_24();
  LocationMetadataStore.saveCountryCode(_:for:)();
}

uint64_t LocationMetadataStore.update(address:for:)()
{
  OUTLINED_FUNCTION_17_5();
  sub_1C96A7544();
  MEMORY[0x1CCA8CB00](45, 0xE100000000000000);
  OUTLINED_FUNCTION_30_13();
  v0.value._countAndFlagsBits = OUTLINED_FUNCTION_20_24();
  LocationMetadataStore.saveAddress(_:for:)(v0, v1);
}

unint64_t sub_1C962D9B0()
{
  result = qword_1EC3A7538;
  if (!qword_1EC3A7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7538);
  }

  return result;
}

uint64_t sub_1C962DA04(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v56 = a6;
  v57 = a7;
  v54 = a3;
  v55 = a5;
  v52 = a2;
  v53 = a4;
  v51 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_34();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  v21 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v24 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v17);
  v28 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v17);
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v17);
  v34 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v17);
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v37);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v58 = v51;
  v59 = v52;
  sub_1C96A3D04();
  sub_1C96A6364();

  v44 = 0x766C6F7365726E75;
  if (v53)
  {
    v44 = v54;
  }

  v45 = 0xEC000000656C6261;
  if (v53)
  {
    v45 = v53;
  }

  v58 = v44;
  v59 = v45;
  sub_1C96A6364();

  v58 = v55;
  v59 = v56;
  sub_1C96A6364();

  v46 = sub_1C96A4A54();
  v47 = *(v46 - 8);
  v48 = v57;
  (*(v47 + 16))(v10, v57, v46);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v46);
  sub_1C96A6364();

  (*(v47 + 8))(v48, v46);
  return v24;
}

uint64_t sub_1C962DDFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x80000001C96D5900 == a2;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C96D5920 == a2;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73657269707865 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C96A7DE4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C962DF5C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x73657269707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C962DFE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v20 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7560);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C962E9D4();
  sub_1C96A7F54();
  v22 = a2;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_7_41(&qword_1EC3A4B00);
  OUTLINED_FUNCTION_6_49();
  if (!v5)
  {
    v15 = a4;
    v16 = v19;
    v22 = v20;
    v21 = 1;
    OUTLINED_FUNCTION_6_49();
    v22 = v15;
    v21 = 2;
    OUTLINED_FUNCTION_6_49();
    v22 = v16;
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_7_41(&qword_1EC3A4DD8);
    sub_1C96A7D74();
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_1C962E1D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7550);
  OUTLINED_FUNCTION_1();
  v44 = v3;
  v45 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_12_34();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v46 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  v21 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v11);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v11);
  v27 = OUTLINED_FUNCTION_34();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v11);
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v30 = sub_1C96A6344();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_14_30();
  sub_1C96A6344();
  v38 = *(a1 + 24);
  v48 = a1;
  v39 = a1;
  v40 = v47;
  __swift_project_boxed_opaque_existential_1(v39, v38);
  sub_1C962E9D4();
  v41 = v49;
  sub_1C96A7F44();
  if (v41)
  {
  }

  else
  {
    v49 = v30;
    v50 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_3_49();

    v30 = v51;
    v50 = 1;
    OUTLINED_FUNCTION_3_49();

    v46 = v51;
    v50 = 2;
    OUTLINED_FUNCTION_3_49();

    v50 = 3;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    sub_1C96A7CB4();
    (*(v44 + 8))(v40, v45);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  return v30;
}

uint64_t sub_1C962E6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C962DDFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C962E70C(uint64_t a1)
{
  v2 = sub_1C962E9D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C962E748(uint64_t a1)
{
  v2 = sub_1C962E9D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C962E784(uint64_t a1)
{
  v2 = sub_1C94DD910();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C962E7D0(uint64_t a1)
{
  v2 = sub_1C94DD910();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C962E81C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94DD910();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C962E880@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C962E1D8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1C962E8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94DD910();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C962E91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94DD910();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C962E970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C94DD910();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

unint64_t sub_1C962E9D4()
{
  result = qword_1EC3A7558;
  if (!qword_1EC3A7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7558);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CountryCodeEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C962EB08()
{
  result = qword_1EC3A7568;
  if (!qword_1EC3A7568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7568);
  }

  return result;
}

unint64_t sub_1C962EB60()
{
  result = qword_1EC3A7570;
  if (!qword_1EC3A7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7570);
  }

  return result;
}

unint64_t sub_1C962EBB8()
{
  result = qword_1EC3A7578;
  if (!qword_1EC3A7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7578);
  }

  return result;
}

uint64_t dispatch thunk of PredictedLocationsNotificationsManagerType.processNotificationsForPredictedLocations()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsNotificationsManagerType.reschedulePredictedLocationNotifications()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsNotificationsManagerType.unschedulePredictedLocationNotifications()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t dispatch thunk of PredictedLocationsNotificationsManagerType.decommission()()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_80(v0, v1);
  OUTLINED_FUNCTION_12_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_37(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_77(v3);

  return v6(v5);
}

uint64_t sub_1C962EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_13_38();
  v12 = *(v11 + 24);
  v13 = *(v11 + 32);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15);
  v19 = a5(v9, v8, v17, v6, v5, v12, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  return v19;
}

Swift::OpaquePointer_optional __swiftcall SavedLocationsReader.fetchSavedLocations()()
{
  if (qword_1EDB7CFA8 != -1)
  {
    OUTLINED_FUNCTION_0_91();
  }

  v0 = sub_1C96A6154();
  __swift_project_value_buffer(v0, qword_1EDB7CFB0);
  v1 = sub_1C96A6134();
  v2 = sub_1C96A76A4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = OUTLINED_FUNCTION_29();
    *v3 = 0;
    _os_log_impl(&dword_1C945E000, v1, v2, "About to fetch saved locations from the KVS.", v3, 2u);
    OUTLINED_FUNCTION_26();
  }

  v4 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_23_0();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7580);
  sub_1C96A5784();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  sub_1C96A3D04();
  v7 = v4;
  v8 = sub_1C96A55A4();
  sub_1C96A5644();

  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v10))
  {
    v11 = OUTLINED_FUNCTION_29();
    *v11 = 0;
    _os_log_impl(&dword_1C945E000, v9, v10, "Waiting on semaphore signal from saved locations reading (from KVS)", v11, 2u);
    OUTLINED_FUNCTION_26();
  }

  sub_1C96A7824();
  swift_beginAccess();
  v12 = *(v5 + 16);
  sub_1C96A53C4();

  v14 = v12;
  result.value._rawValue = v14;
  result.is_nil = v13;
  return result;
}

uint64_t sub_1C962F348()
{
  v1 = v0;
  if (qword_1EDB7CFA8 != -1)
  {
    OUTLINED_FUNCTION_0_91();
  }

  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7CFB0);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v4))
  {
    v5 = OUTLINED_FUNCTION_29();
    *v5 = 0;
    _os_log_impl(&dword_1C945E000, v3, v4, "Attempting to fetch locations from the remote key value store", v5, 2u);
    OUTLINED_FUNCTION_26();
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  OUTLINED_FUNCTION_23_0();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7580);
  v6 = sub_1C95B8804();

  return v6;
}

uint64_t sub_1C962F4A8()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 64) = sub_1C962F348();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1C962F54C;

  return MEMORY[0x1EEE44EE0](v0 + 40);
}

uint64_t sub_1C962F54C()
{
  OUTLINED_FUNCTION_18();
  v5 = *v1;
  OUTLINED_FUNCTION_15();
  *v2 = v5;
  *(v5 + 80) = v0;

  if (v0)
  {
    v3 = sub_1C962F674;
  }

  else
  {

    v3 = sub_1C962F65C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C962F674()
{
  v19 = v0;

  if (qword_1EDB7CFA8 != -1)
  {
    OUTLINED_FUNCTION_0_91();
  }

  v1 = *(v0 + 80);
  v2 = sub_1C96A6154();
  __swift_project_value_buffer(v2, qword_1EDB7CFB0);
  v3 = v1;
  v4 = sub_1C96A6134();
  v5 = sub_1C96A7684();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136446466;
    swift_getErrorValue();
    v10 = sub_1C96A7E64();
    v12 = sub_1C9484164(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1C945E000, v4, v5, "Error loading saved locations: %{public}s %@", v7, 0x16u);
    sub_1C9470AFC(v8, &qword_1EC3A5410);
    OUTLINED_FUNCTION_26();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v15 = *(v0 + 8);
  v16 = MEMORY[0x1E69E7CC0];

  return v15(v16);
}

uint64_t SavedLocationsReader.fetchSyncedData(from:fallbackToLegacy:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OUTLINED_FUNCTION_14_31();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - v13;
  sub_1C94D9448(a1, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) != 1)
  {
    OUTLINED_FUNCTION_1_65();
    sub_1C9630D7C(v3, v14, v19);
    if (qword_1EDB7CFA8 != -1)
    {
      OUTLINED_FUNCTION_0_91();
    }

    v20 = sub_1C96A6154();
    __swift_project_value_buffer(v20, qword_1EDB7CFB0);
    OUTLINED_FUNCTION_1_65();
    sub_1C9630B44(v14, v11, v21);
    v22 = sub_1C96A6134();
    v23 = sub_1C96A76A4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8);
      v25 = sub_1C96A6C84();
      OUTLINED_FUNCTION_2_63();
      sub_1C9630BA4(v11, v26);
      *(v24 + 4) = v25;
      _os_log_impl(&dword_1C945E000, v22, v23, "Successfully loaded non-legacy synced data with %ld locations.", v24, 0xCu);
      OUTLINED_FUNCTION_26();
    }

    else
    {
      OUTLINED_FUNCTION_2_63();
      sub_1C9630BA4(v11, v27);
    }

    OUTLINED_FUNCTION_1_65();
    sub_1C9630D7C(v14, a3, v28);
    goto LABEL_15;
  }

  sub_1C9470AFC(v3, &unk_1EC3A5F90);
  if ((a2 & 1) == 0)
  {
LABEL_21:
    v29 = 1;
    return __swift_storeEnumTagSinglePayload(a3, v29, 1, v8);
  }

  if (!sub_1C94D9920(a1))
  {
    if (qword_1EDB7CFA8 != -1)
    {
      OUTLINED_FUNCTION_0_91();
    }

    v30 = sub_1C96A6154();
    __swift_project_value_buffer(v30, qword_1EDB7CFB0);
    v31 = sub_1C96A6134();
    v32 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v32))
    {
      v33 = OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_6_27(v33);
      OUTLINED_FUNCTION_39_0(&dword_1C945E000, v34, v32, "Could not load legacy data - returning nil");
      OUTLINED_FUNCTION_26();
    }

    goto LABEL_21;
  }

  if (qword_1EDB7CFA8 != -1)
  {
    OUTLINED_FUNCTION_0_91();
  }

  v15 = sub_1C96A6154();
  __swift_project_value_buffer(v15, qword_1EDB7CFB0);
  v16 = sub_1C96A6134();
  v17 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v17))
  {
    v18 = OUTLINED_FUNCTION_29();
    *v18 = 0;
    _os_log_impl(&dword_1C945E000, v16, v17, "Falling back to legacy data to build the synced data", v18, 2u);
    OUTLINED_FUNCTION_26();
  }

  SyncedData.init(locationDataModels:)();
LABEL_15:
  v29 = 0;
  return __swift_storeEnumTagSinglePayload(a3, v29, 1, v8);
}

uint64_t sub_1C962FBE8(uint64_t a1)
{
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A60E0);
  sub_1C953DD34();
  v2 = sub_1C96A7204();
  if (!sub_1C9554388(v2, a1))
  {
    if (qword_1EDB7CFA8 != -1)
    {
      swift_once();
    }

    v3 = sub_1C96A6154();
    __swift_project_value_buffer(v3, qword_1EDB7CFB0);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v4 = sub_1C96A6134();
    v5 = sub_1C96A76A4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v16 = v7;
      *v6 = 141558787;
      *(v6 + 4) = 1752392040;
      *(v6 + 12) = 2081;
      v8 = type metadata accessor for LocationDataModel();
      v9 = MEMORY[0x1CCA8CC40](a1, v8);
      v11 = sub_1C9484164(v9, v10, &v16);

      *(v6 + 14) = v11;
      *(v6 + 22) = 2160;
      *(v6 + 24) = 1752392040;
      *(v6 + 32) = 2081;
      v12 = MEMORY[0x1CCA8CC40](v2, v8);
      v14 = sub_1C9484164(v12, v13, &v16);

      *(v6 + 34) = v14;
      _os_log_impl(&dword_1C945E000, v4, v5, "Just uniquified locations. Original locations=%{private,mask.hash}s. Unique locations=%{private,mask.hash}s", v6, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v7, -1, -1);
      MEMORY[0x1CCA8E3D0](v6, -1, -1);
    }
  }

  return v2;
}

uint64_t sub_1C962FE38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[10];
  v7 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v6);
  (*(v7 + 8))(a1, v6, v7);
  if (v3)
  {
    if (qword_1EDB7D010 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7D018);
    sub_1C9484328(a1, v26);
    v9 = v3;
    v10 = sub_1C96A6134();
    v11 = sub_1C96A7684();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136446723;
      v25 = v3;
      v14 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v15 = sub_1C96A70A4();
      v17 = sub_1C9484164(v15, v16, &v27);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2160;
      *(v12 + 14) = 1752392040;
      *(v12 + 22) = 2081;
      sub_1C9484328(v26, &v25);
      v18 = sub_1C96A70A4();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v21 = sub_1C9484164(v18, v20, &v27);

      *(v12 + 24) = v21;
      _os_log_impl(&dword_1C945E000, v10, v11, "Skipping a local location after an unexpected parsing error: %{public}s, localLocation: %{private,mask.hash}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
      MEMORY[0x1CCA8E3D0](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    v24 = type metadata accessor for LocationDataModel();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v24);
  }

  else
  {
    v22 = type metadata accessor for LocationDataModel();
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v22);
  }
}

uint64_t sub_1C96300F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[10];
  v7 = a2[11];
  __swift_project_boxed_opaque_existential_1(a2 + 7, v6);
  (*(v7 + 16))(a1, v6, v7);
  if (v3)
  {
    if (qword_1EDB7CFA8 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7CFB0);
    sub_1C9484328(a1, v26);
    v9 = v3;
    v10 = sub_1C96A6134();
    v11 = sub_1C96A7684();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 141558787;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      v25 = v3;
      v14 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
      v15 = sub_1C96A70A4();
      v17 = sub_1C9484164(v15, v16, &v27);

      *(v12 + 14) = v17;
      *(v12 + 22) = 2160;
      *(v12 + 24) = 1752392040;
      *(v12 + 32) = 2081;
      sub_1C9484328(v26, &v25);
      v18 = sub_1C96A70A4();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v21 = sub_1C9484164(v18, v20, &v27);

      *(v12 + 34) = v21;
      _os_log_impl(&dword_1C945E000, v10, v11, "Skipping a remote location after an unexpected parsing error: %{private,mask.hash}s, remoteLocation: %{private,mask.hash}s", v12, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
      MEMORY[0x1CCA8E3D0](v12, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    v24 = type metadata accessor for LocationDataModel();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v24);
  }

  else
  {
    v22 = type metadata accessor for LocationDataModel();
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v22);
  }
}

void sub_1C96303B8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    *a2 = 0;
    return;
  }

  v4 = SavedLocationsReader.fetchSavedLocations(from:)(a1);
  v24 = v4;
  if (qword_1EDB7CFA8 != -1)
  {
    swift_once();
  }

  v5 = sub_1C96A6154();
  __swift_project_value_buffer(v5, qword_1EDB7CFB0);
  v6 = sub_1C96A6134();
  v7 = sub_1C96A76A4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23[0] = v9;
    *v8 = 136315138;
    if (v4)
    {
      v10 = *(v4 + 16);
    }

    else
    {
      v10 = 0;
    }

    v22 = v10;
    v11 = sub_1C96A7DB4();
    v13 = sub_1C9484164(v11, v12, v23);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C945E000, v6, v7, "SavedLocationsReader: remote locations count: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (!v4)
    {
      goto LABEL_14;
    }
  }

  if (!*(v4 + 16))
  {
LABEL_14:
    v14 = sub_1C94D9F68();
    swift_beginAccess();
    v24 = v14;

    v15 = sub_1C96A6134();
    v16 = sub_1C96A76A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v22 = v18;
      *v17 = 136315138;
      v19 = sub_1C96A7DB4();
      v21 = sub_1C9484164(v19, v20, &v22);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1C945E000, v15, v16, "SavedLocationsReader: local locations count  %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1CCA8E3D0](v18, -1, -1);
      MEMORY[0x1CCA8E3D0](v17, -1, -1);
    }

    goto LABEL_17;
  }

  v14 = v4;
LABEL_17:
  *a2 = v14;
}

uint64_t sub_1C96306D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
  return sub_1C96A53C4();
}

uint64_t SavedLocationsReader.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  return v0;
}

uint64_t SavedLocationsReader.__deallocating_deinit()
{
  SavedLocationsReader.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 176, 7);
}

uint64_t sub_1C9630788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C9630818;

  return SavedLocationsReader.fetchSavedLocationsAsync()();
}

uint64_t sub_1C9630818()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_15();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t *sub_1C9630950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_13_38();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  v19 = swift_allocObject();
  (*(v14 + 16))(v18, v8, a6);
  v20 = sub_1C9630A74(v10, v9, v18, v7, v19, a6, a7);
  (*(v14 + 8))(v8, a6);
  return v20;
}

uint64_t *sub_1C9630A74(__int128 *a1, __int128 *a2, uint64_t a3, __int128 *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  a5[15] = a6;
  a5[16] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5 + 12);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  sub_1C94670AC(a1, (a5 + 2));
  sub_1C94670AC(a2, (a5 + 7));
  sub_1C94670AC(a4, (a5 + 17));
  return a5;
}

uint64_t sub_1C9630B44(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C9630BA4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of SavedLocationsReaderType.fetchSavedLocationsAsync()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C9630818;

  return v7(a1, a2);
}

uint64_t sub_1C9630D7C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C9630DDC()
{
  result = qword_1EDB7A5B0;
  if (!qword_1EDB7A5B0)
  {
    type metadata accessor for SyncedData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7A5B0);
  }

  return result;
}

void sub_1C9630E3C()
{
  if (qword_1EDB7A130 != -1)
  {
    swift_once();
  }

  if (byte_1EDB7A138 == 1)
  {
    v1 = v0[16];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C96AA1C0;
    v3 = v0[3];
    *(inited + 32) = v0[2];
    *(inited + 40) = v3;
    sub_1C96A53C4();
    sub_1C94A3510();
    (*(v1 + 8))();
  }
}

uint64_t sub_1C9630F30()
{
  v1 = sub_1C96A3A84();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1C96A3AA4();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = swift_task_alloc();
  v0[8] = v3;
  v0[9] = sub_1C95D529C();
  *v3 = v0;
  v3[1] = sub_1C9631094;

  return MEMORY[0x1EEDB2C30]();
}

uint64_t sub_1C9631094(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 80) = a1 & 1;

    return MEMORY[0x1EEE6DFA0](sub_1C96311F8, 0, 0);
  }
}

uint64_t sub_1C96311F8()
{
  if (*(v0 + 80) == 1)
  {
    if (qword_1EDB80080 != -1)
    {
      OUTLINED_FUNCTION_0_79();
    }

    v1 = sub_1C96A6154();
    __swift_project_value_buffer(v1, qword_1EDB80088);
    v2 = sub_1C96A6134();
    v3 = sub_1C96A76A4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      OUTLINED_FUNCTION_16_2(&dword_1C945E000, v5, v6, "Submitting changed event for units.");
      MEMORY[0x1CCA8E3D0](v4, -1, -1);
    }

    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);

    (*(v12 + 104))(v10, *MEMORY[0x1E6959DC8], v11);
    sub_1C96A3AD4();
    (*(v12 + 8))(v10, v11);
    sub_1C96A3A94();
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    if (qword_1EDB80080 != -1)
    {
      OUTLINED_FUNCTION_0_79();
    }

    v13 = sub_1C96A6154();
    __swift_project_value_buffer(v13, qword_1EDB80088);
    v14 = sub_1C96A6134();
    v15 = sub_1C96A76A4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      OUTLINED_FUNCTION_16_2(&dword_1C945E000, v17, v18, "No observers for units changed event - skipping.");
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1C963143C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
}

uint64_t sub_1C963146C()
{
  v0 = sub_1C9487974();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  return v0;
}

uint64_t sub_1C96314A4()
{
  v0 = sub_1C963146C();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

uint64_t sub_1C96314D4()
{
  OUTLINED_FUNCTION_1_66();
  *(v0 + 80) = v1;
  return sub_1C96A50F4();
}

uint64_t sub_1C9631504()
{
  OUTLINED_FUNCTION_1_66();
  *(v0 + 81) = v1;
  return sub_1C96A50F4();
}

uint64_t sub_1C9631534()
{
  OUTLINED_FUNCTION_1_66();
  *(v0 + 82) = v1;
  return sub_1C96A50F4();
}

uint64_t sub_1C9631564()
{
  OUTLINED_FUNCTION_1_66();
  *(v0 + 83) = v1;
  return sub_1C96A50F4();
}

uint64_t sub_1C9631594()
{
  OUTLINED_FUNCTION_1_66();
  *(v0 + 84) = v1;
  return sub_1C96A50F4();
}

uint64_t sub_1C96315C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C94B9278;

  return sub_1C9630F30();
}

uint64_t SyncedLocationDisplayContext.init(location:displayContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + *(type metadata accessor for SyncedLocationDisplayContext() + 24)) = MEMORY[0x1E69E7CC8];
  sub_1C96A53C4();
  sub_1C96A66C4();
  sub_1C96A66C4();
  return sub_1C94DBDDC(a1);
}

uint64_t SyncedLocationDisplayContext.canActAsLocationOfInterest.getter()
{
  type metadata accessor for SyncedLocationDisplayContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
  sub_1C96A66E4();
  return v1;
}

uint64_t SyncedLocationDisplayContext.id.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  sub_1C96A66E4();
  return v1;
}

void (*SyncedLocationDisplayContext.id.modify())(void *)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_0(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  *(v0 + 32) = sub_1C96A66D4();
  return sub_1C9633128;
}

uint64_t SyncedLocationDisplayContext.$id.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);

  return sub_1C96A6704();
}

uint64_t SyncedLocationDisplayContext.$id.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_67(v6, v10);
  v8(v7);
  sub_1C96A6714();
  return (*(v4 + 8))(a1, v2);
}

void (*SyncedLocationDisplayContext.$id.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  *OUTLINED_FUNCTION_18_0(v2) = v0;
  v1[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  OUTLINED_FUNCTION_1();
  v1[2] = v3;
  v5 = *(v4 + 64);
  v1[3] = __swift_coroFrameAllocStub(v5);
  v1[4] = __swift_coroFrameAllocStub(v5);
  v1[5] = __swift_coroFrameAllocStub(v5);
  sub_1C96A6704();
  return sub_1C9631AA8;
}

void sub_1C9631AA8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v6 = v3[5];
  v8 = v3[2];
  v7 = v3[3];
  v9 = v3[1];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_1C96A6714();
    v10 = *(v8 + 8);
    v11 = OUTLINED_FUNCTION_4_59();
    v10(v11);
    (v10)(v6, v9);
  }

  else
  {
    OUTLINED_FUNCTION_4_59();
    sub_1C96A6714();
    (*(v8 + 8))(v6, v9);
  }

  free(v6);
  free(v5);
  free(v7);

  free(v3);
}

uint64_t SyncedLocationDisplayContext.canActAsLocationOfInterest.setter()
{
  type metadata accessor for SyncedLocationDisplayContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
  return sub_1C96A66F4();
}

uint64_t (*SyncedLocationDisplayContext.canActAsLocationOfInterest.modify())()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_18_0(v1);
  type metadata accessor for SyncedLocationDisplayContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
  *(v0 + 32) = sub_1C96A66D4();
  return sub_1C954E8EC;
}

uint64_t SyncedLocationDisplayContext.$canActAsLocationOfInterest.getter()
{
  type metadata accessor for SyncedLocationDisplayContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
  return sub_1C96A6704();
}

uint64_t sub_1C9631CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  OUTLINED_FUNCTION_1();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return a7(v12);
}

uint64_t SyncedLocationDisplayContext.$canActAsLocationOfInterest.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = OUTLINED_FUNCTION_1_67(v6, v10);
  v8(v7);
  type metadata accessor for SyncedLocationDisplayContext();
  sub_1C96A6714();
  return (*(v4 + 8))(a1, v2);
}

void (*SyncedLocationDisplayContext.$canActAsLocationOfInterest.modify())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *OUTLINED_FUNCTION_18_0(v2) = v0;
  *(v1 + 8) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
  OUTLINED_FUNCTION_1();
  *(v1 + 16) = v3;
  v5 = *(v4 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v5);
  *(v1 + 32) = __swift_coroFrameAllocStub(v5);
  *(v1 + 40) = __swift_coroFrameAllocStub(v5);
  *(v1 + 48) = *(type metadata accessor for SyncedLocationDisplayContext() + 20);
  sub_1C96A6704();
  return sub_1C9631F8C;
}

void sub_1C9631F8C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v12 = v3[5];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[1];
  if (a2)
  {
    v4(v3[3], v5, v3[1]);
    sub_1C96A6714();
    v9 = *(v7 + 8);
    v10 = OUTLINED_FUNCTION_4_59();
    v9(v10);
    v11 = v12;
    (v9)(v12, v8);
  }

  else
  {
    OUTLINED_FUNCTION_4_59();
    sub_1C96A6714();
    v11 = v12;
    (*(v7 + 8))(v12, v8);
  }

  free(v11);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t SyncedLocationDisplayContext.additionalFields.getter()
{
  type metadata accessor for SyncedLocationDisplayContext();

  return sub_1C96A53C4();
}

uint64_t SyncedLocationDisplayContext.additionalFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncedLocationDisplayContext() + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C9632170()
{
  qword_1EC3A7588 = 25705;
  unk_1EC3A7590 = 0xE200000000000000;
  qword_1EC3A7598 = swift_getKeyPath();
  unk_1EC3A75A0 = 0xD00000000000001ALL;
  qword_1EC3A75A8 = 0x80000001C96D43E0;
  result = swift_getKeyPath();
  qword_1EC3A75B0 = result;
  return result;
}

uint64_t static SyncedLocationDisplayContext.fields.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC3A47F8 != -1)
  {
    swift_once();
  }

  v2 = unk_1EC3A7590;
  v4 = qword_1EC3A7598;
  v3 = unk_1EC3A75A0;
  v5 = qword_1EC3A75A8;
  v6 = qword_1EC3A75B0;
  *a1 = qword_1EC3A7588;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
  a1[4] = v5;
  a1[5] = v6;
  sub_1C96A53C4();
  sub_1C96A3D04();
  sub_1C96A53C4();

  return sub_1C96A3D04();
}

uint64_t SyncedLocationDisplayContext.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + *(type metadata accessor for SyncedLocationDisplayContext() + 24)) = MEMORY[0x1E69E7CC8];
  sub_1C96A66C4();
  return sub_1C96A66C4();
}

uint64_t SyncedLocationDisplayContext.init(id:canActAsLocationOfInterest:)@<X0>(uint64_t a1@<X8>)
{
  *(a1 + *(type metadata accessor for SyncedLocationDisplayContext() + 24)) = MEMORY[0x1E69E7CC8];
  sub_1C96A66C4();
  return sub_1C96A66C4();
}

__n128 sub_1C96323AC@<Q0>(uint64_t a1@<X8>)
{
  static SyncedLocationDisplayContext.fields.getter(&v5);
  v2 = v7;
  result = v6;
  v4 = v8;
  *a1 = v5;
  *(a1 + 8) = result;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  return result;
}

uint64_t sub_1C96323FC(uint64_t a1)
{
  v2 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF46B0](a1, v2);
}

uint64_t sub_1C9632460(uint64_t a1)
{
  v2 = sub_1C94950FC(&unk_1EDB7D720);

  return MEMORY[0x1EEDF5248](a1, v2);
}

uint64_t sub_1C96324B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4698](a1, a2, v4);
}

uint64_t sub_1C9632520(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4640](a1, a2, v4);
}

uint64_t sub_1C9632590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4668](a1, a2, v4);
}

uint64_t sub_1C96325F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF46A8](a1, a2, v4);
}

uint64_t sub_1C9632660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4670](a1, a2, a3, v6);
}

uint64_t sub_1C96326E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF46A0](a1, a2, v4);
}

uint64_t sub_1C9632748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4678](a1, a2, v4);
}

uint64_t sub_1C96327B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4658](a1, a2, v4);
}

uint64_t sub_1C9632820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4650](a1, a2, v4);
}

uint64_t sub_1C9632890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4638](a1, a2, a3, v6);
}

uint64_t sub_1C9632910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4620](a1, a2, v4);
}

uint64_t sub_1C9632978(uint64_t a1)
{
  v2 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4648](a1, v2);
}

uint64_t sub_1C96329D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4628](a1, a2, v4);
}

uint64_t sub_1C9632A38()
{
  sub_1C94950FC(&qword_1EC3A75E0);

  return sub_1C96A6924();
}

void sub_1C9632AA8()
{
  sub_1C94950FC(&qword_1EC3A75E0);

  JUMPOUT(0x1CCA8C2C0);
}

uint64_t sub_1C9632CC8(uint64_t a1)
{
  v2 = sub_1C94950FC(&qword_1EC3A75E0);

  return MEMORY[0x1EEDF4630](a1, v2);
}

uint64_t static SyncedLocationDisplayContext.== infix(_:_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  sub_1C96A66E4();
  sub_1C96A66E4();

  type metadata accessor for SyncedLocationDisplayContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
  sub_1C96A66E4();
  sub_1C96A66E4();
  sub_1C94950FC(&qword_1EC3A75B8);
  if (sub_1C96A6B14())
  {
    v0 = 0;
  }

  else
  {
    v0 = sub_1C96A6B14() ^ 1;
  }

  return v0 & 1;
}

uint64_t SyncedLocationDisplayContext.hash(into:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  sub_1C96A66E4();
  sub_1C96A7144();

  type metadata accessor for SyncedLocationDisplayContext();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8);
  sub_1C96A66E4();
  return sub_1C96A7F04();
}

uint64_t SyncedLocationDisplayContext.hashValue.getter()
{
  sub_1C96A7EE4();
  SyncedLocationDisplayContext.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t sub_1C9632FA0()
{
  sub_1C96A7EE4();
  SyncedLocationDisplayContext.hash(into:)();
  return sub_1C96A7F24();
}

uint64_t Location.Identifier.write(to:)()
{
  result = sub_1C96A70F4();
  if (!v0)
  {
    sub_1C96A70F4();
    return sub_1C96A7864();
  }

  return result;
}

uint64_t static Location.Identifier.read(from:)@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C96A70E4();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = sub_1C96A70E4();
    v9 = v8;
    sub_1C96A7854();
    v11 = v10;
    v13 = v12;
    swift_bridgeObjectRetain_n();
    sub_1C96A53C4();
    MEMORY[0x1CCA8CB00](58, 0xE100000000000000);
    MEMORY[0x1CCA8CB00](v7, v9);

    if (v5 == 0x746E6572727563 && v6 == 0xE700000000000000)
    {

      v15 = 1;
    }

    else
    {
      v15 = sub_1C96A7DE4();
    }

    *a1 = v5;
    *(a1 + 8) = v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v9;
    *(a1 + 32) = v11;
    *(a1 + 40) = v13;
    *(a1 + 48) = v15 & 1;
    *(a1 + 56) = v5;
    *(a1 + 64) = v6;
  }

  return result;
}

uint64_t AppConfiguration.write(to:)()
{
  v2 = v0;
  result = sub_1C96A48A4();
  if (!v1)
  {
    v4 = type metadata accessor for AppConfiguration();
    OUTLINED_FUNCTION_9_37(v4[5]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    __dst[0] = *(v0 + v4[6]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_9_37(v4[7]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_9_37(v4[8]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_9_37(v4[9]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    OUTLINED_FUNCTION_9_37(v4[10]);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    v5 = v0 + v4[11];
    v6 = *(v5 + 8);
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    LOBYTE(__dst[0]) = *v5;
    __dst[1] = v6;
    __dst[2] = v7;
    __dst[3] = v8;
    OUTLINED_FUNCTION_14_0();
    AppStoreReviewConfiguration.write(to:)();
    type metadata accessor for EndpointConfiguration();
    OUTLINED_FUNCTION_5_48(qword_1EDB796F8);
    OUTLINED_FUNCTION_4_60(&qword_1EDB796F0);
    OUTLINED_FUNCTION_64();
    sub_1C96A72D4();
    v9 = *(v0 + v4[13] + 1);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    LOBYTE(__dst[0]) = v9;
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    v10 = v0 + v4[14];
    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A72D4();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_14_0();
    sub_1C96A5514();
    __dst[0] = v12;
    __dst[1] = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
    OUTLINED_FUNCTION_14_0();
    sub_1C96A7924();

    swift_bridgeObjectRelease_n();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_64();
    sub_1C96A7584();

    OUTLINED_FUNCTION_14_0();
    LocationsConfiguration.write(to:)();
    v13 = v4[17];
    memcpy(__dst, (v2 + v13), sizeof(__dst));
    memcpy(__src, (v2 + v13), sizeof(__src));
    sub_1C94B7A74(__dst, v57);
    OUTLINED_FUNCTION_14_0();
    MapsConfiguration.write(to:)();
    memcpy(v57, __src, sizeof(v57));
    sub_1C94BD530(v57);
    sub_1C9633BE4();
    sub_1C9633C38();
    OUTLINED_FUNCTION_64();
    sub_1C96A72D4();
    v14 = (v2 + v4[19]);
    v15 = v14[1];
    v56[0] = *v14;
    v56[1] = v15;
    v16 = v14[3];
    v18 = *v14;
    v17 = v14[1];
    v56[2] = v14[2];
    v56[3] = v16;
    v52 = v18;
    v53 = v17;
    v19 = v14[3];
    v54 = v14[2];
    v55 = v19;
    sub_1C94B694C(v56, v50);
    OUTLINED_FUNCTION_14_0();
    NetworkConfiguration.write(to:)();
    v51[0] = v52;
    v51[1] = v53;
    v51[2] = v54;
    v51[3] = v55;
    sub_1C94BDA7C(v51);
    v20 = (v2 + v4[20]);
    v21 = *v20;
    v22 = v20[1];
    LOBYTE(v20) = v20[2];
    v60 = v21;
    v61 = v22;
    v62 = v20;
    OUTLINED_FUNCTION_14_0();
    NewsConfiguration.write(to:)();
    v23 = v4[21];
    memcpy(v50, (v2 + v23), sizeof(v50));
    memcpy(v49, (v2 + v23), sizeof(v49));
    sub_1C94BDC2C(v50, v48);
    OUTLINED_FUNCTION_14_0();
    NotificationsConfiguration.write(to:)();
    memcpy(v48, v49, sizeof(v48));
    sub_1C94BDE74(v48);
    v24 = (v2 + v4[22]);
    v25 = v24[1];
    v43[0] = *v24;
    v43[1] = v25;
    v43[2] = v24[2];
    *(&v43[2] + 10) = *(v24 + 42);
    OUTLINED_FUNCTION_8();
    PrivacyConfiguration.write(to:)();
    v26 = v2 + v4[24];
    v27 = *(v26 + 32);
    v28 = *(v26 + 16);
    v43[0] = *v26;
    v43[1] = v28;
    *&v43[2] = v27;
    OUTLINED_FUNCTION_8();
    WidgetPrivacyConfiguration.write(to:)();
    LOBYTE(v12) = *(v2 + v4[25] + 32);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A70F4();
    OUTLINED_FUNCTION_64();
    sub_1C96A70F4();
    LOBYTE(v43[0]) = v12;
    OUTLINED_FUNCTION_8();
    sub_1C96A5514();

    v29 = *(v2 + v4[26]);
    sub_1C96A53C4();
    OUTLINED_FUNCTION_18_27();
    if (v29)
    {
    }

    sub_1C959B93C();
    sub_1C959B990();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_64();
    sub_1C96A72D4();

    v30 = (v2 + v4[29]);
    v31 = v30[1];
    v43[0] = *v30;
    v43[1] = v31;
    OUTLINED_FUNCTION_8();
    WeatherDataConfiguration.write(to:)();
    v32 = *(v2 + v4[30]);
    sub_1C96A53C4();
    OUTLINED_FUNCTION_18_27();
    if (v32)
    {
    }

    else
    {

      v33 = v2 + v4[31];
      v34 = *(v33 + 32);
      v35 = *(v33 + 40);
      v36 = *(v33 + 41);
      v37 = *(v33 + 48);
      v38 = *(v33 + 56);
      v39 = *(v33 + 16);
      v43[0] = *v33;
      v43[1] = v39;
      *&v43[2] = v34;
      OUTLINED_FUNCTION_8();
      WeatherMenuRefreshConfiguration.write(to:)();
      v44 = v35;
      v45 = v36;
      v46 = v37;
      v47 = v38;
      OUTLINED_FUNCTION_14_0();
      WeatherMenuAnalyticsConfiguration.write(to:)();
      v40 = v2 + v4[32];
      memcpy(v43, v40, sizeof(v43));
      v41 = *(v40 + 80);
      v42 = *(v40 + 88);
      OUTLINED_FUNCTION_8();
      WidgetRefreshConfiguration.write(to:)();
      LOBYTE(v43[0]) = v41;
      OUTLINED_FUNCTION_8();
      sub_1C96A5514();
      *&v43[0] = v42;
      OUTLINED_FUNCTION_8();
      sub_1C96A5514();
      sub_1C9633C8C();
      sub_1C9633CE0();
      OUTLINED_FUNCTION_64();
      sub_1C96A72D4();
      OUTLINED_FUNCTION_14_0();
      sub_1C96A70F4();
      OUTLINED_FUNCTION_14_0();
      sub_1C96A72D4();
      OUTLINED_FUNCTION_14_0();
      return sub_1C96A72D4();
    }
  }

  return result;
}

uint64_t sub_1C9633BA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EndpointConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9633BE4()
{
  result = qword_1EDB795B0;
  if (!qword_1EDB795B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB795B0);
  }

  return result;
}

unint64_t sub_1C9633C38()
{
  result = qword_1EDB795A8;
  if (!qword_1EDB795A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB795A8);
  }

  return result;
}

unint64_t sub_1C9633C8C()
{
  result = qword_1EDB796E8;
  if (!qword_1EDB796E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB796E8);
  }

  return result;
}

unint64_t sub_1C9633CE0()
{
  result = qword_1EDB796E0;
  if (!qword_1EDB796E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB796E0);
  }

  return result;
}

uint64_t static AppConfiguration.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v227 = a1;
  v183 = a2;
  v181 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v174 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v180 = v4 - v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  v175 = &v129 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_2();
  v178 = v9 - v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_1();
  v179 = v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_1();
  v172 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_1();
  v173 = v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_1();
  v176 = v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v19);
  v177 = &v129 - v20;
  v182 = type metadata accessor for LocationsConfiguration();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  v24 = (v22 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v129 - v26;
  v28 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v171 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v129 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  OUTLINED_FUNCTION_2();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v129 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v40 - 8);
  OUTLINED_FUNCTION_2();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v129 - v45;
  v47 = v184;
  result = sub_1C96A4894();
  if (!v47)
  {
    v166 = v43;
    v167 = v32;
    v168 = v36;
    v169 = v24;
    v170 = v27;
    v49 = v183;
    v184 = v39;
    __swift_storeEnumTagSinglePayload(v46, 0, 1, v28);
    sub_1C96A5504();
    v165 = v46;
    v50 = v226;
    OUTLINED_FUNCTION_11_35();
    v51 = v225;
    OUTLINED_FUNCTION_11_35();
    v52 = v224;
    OUTLINED_FUNCTION_11_35();
    v53 = v223;
    OUTLINED_FUNCTION_11_35();
    v54 = v222;
    OUTLINED_FUNCTION_11_35();
    v55 = v221;
    static AppStoreReviewConfiguration.read(from:)(v217);
    v56 = v217[0];
    v57 = v218;
    v164 = v219;
    v58 = v220;
    type metadata accessor for EndpointConfiguration();
    OUTLINED_FUNCTION_5_48(qword_1EDB796F8);
    OUTLINED_FUNCTION_4_60(&qword_1EDB796F0);
    v59 = sub_1C96A72C4();
    OUTLINED_FUNCTION_11_35();
    v163 = LOBYTE(v216[0]);
    sub_1C96A5504();
    v161 = v215[0];
    OUTLINED_FUNCTION_2_64();
    v162 = sub_1C96A72C4();
    sub_1C96A5504();
    OUTLINED_FUNCTION_17_31();
    sub_1C96A7914();
    v159 = v216[0];
    v60 = v216[1];
    sub_1C96A7534();
    v62 = v61;
    OUTLINED_FUNCTION_17_31();
    v160 = sub_1C96A7574();
    v63 = OUTLINED_FUNCTION_2_64();
    static LocationsConfiguration.read(from:)(v63, v64, v65, v66, v67, v68, v69, v70, v129, v130);
    __swift_storeEnumTagSinglePayload(v184, 0, 1, v182);
    OUTLINED_FUNCTION_2_64();
    static MapsConfiguration.read(from:)();
    memcpy(v215, v216, sizeof(v215));
    sub_1C9633BE4();
    sub_1C9633C38();
    v158 = OUTLINED_FUNCTION_13_39();
    OUTLINED_FUNCTION_2_64();
    static NetworkConfiguration.read(from:)();
    v207 = v211;
    v208 = v212;
    v209 = v213;
    v210 = v214;
    OUTLINED_FUNCTION_2_64();
    static NewsConfiguration.read(from:)();
    v157 = v206[117];
    v156 = v206[118];
    v155 = v206[119];
    OUTLINED_FUNCTION_2_64();
    static NotificationsConfiguration.read(from:)();
    memcpy(v205, v206, sizeof(v205));
    OUTLINED_FUNCTION_2_64();
    static PrivacyConfiguration.read(from:)();
    v201 = *&v203[5];
    v202 = *&v203[7];
    *v203 = v204[0];
    *(&v203[1] + 2) = *(v204 + 10);
    OUTLINED_FUNCTION_2_64();
    static WidgetPrivacyConfiguration.read(from:)(v71);
    v152 = v199;
    v153 = v198;
    v151 = v200;
    OUTLINED_FUNCTION_2_64();
    v150 = sub_1C96A70E4();
    v154 = v72;
    OUTLINED_FUNCTION_17_31();
    v148 = sub_1C96A70E4();
    v149 = v73;
    sub_1C96A5504();
    v146 = v186[0];
    OUTLINED_FUNCTION_17_31();
    v145 = sub_1C96A70E4();
    v147 = v74;
    sub_1C947660C();

    sub_1C959B93C();
    sub_1C959B990();
    v144 = OUTLINED_FUNCTION_13_39();
    OUTLINED_FUNCTION_2_64();
    static WeatherDataConfiguration.read(from:)();
    v141 = v197;
    v142 = v196;
    OUTLINED_FUNCTION_2_64();
    v140 = sub_1C96A70E4();
    v143 = v75;
    OUTLINED_FUNCTION_2_64();
    static WeatherMenuRefreshConfiguration.read(from:)();
    v138 = v194;
    v139 = v193;
    v137 = v195;
    OUTLINED_FUNCTION_2_64();
    static WeatherMenuAnalyticsConfiguration.read(from:)();
    v133 = v190;
    v134 = v189;
    v135 = v192;
    v136 = v191;
    OUTLINED_FUNCTION_2_64();
    static WidgetConfiguration.read(from:)();
    memcpy(v185, v186, sizeof(v185));
    sub_1C9633C8C();
    sub_1C9633CE0();
    v132 = OUTLINED_FUNCTION_13_39();
    OUTLINED_FUNCTION_2_64();
    v130 = sub_1C96A70E4();
    v131 = v76;
    OUTLINED_FUNCTION_2_64();
    v129 = sub_1C96A72C4();
    OUTLINED_FUNCTION_2_64();
    v227 = sub_1C96A72C4();
    sub_1C9470A40(v165, v166, &unk_1EC3A5430);
    v77 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_1(v77, v78, v28);
    if (v79)
    {
      sub_1C96A4954();
      OUTLINED_FUNCTION_23_1(v166, 1, v28);
      if (!v79)
      {
        sub_1C9470AFC(v166, &unk_1EC3A5430);
      }
    }

    else
    {
      (*(v171 + 32))(v167, v166, v28);
    }

    (*(v171 + 32))(v49, v167, v28);
    v80 = type metadata accessor for AppConfiguration();
    *(v49 + v80[5]) = v50;
    *(v49 + v80[6]) = v51;
    *(v49 + v80[7]) = v52;
    *(v49 + v80[8]) = v53;
    *(v49 + v80[9]) = v54;
    *(v49 + v80[10]) = v55;
    v81 = v49 + v80[11];
    *v81 = v56;
    *(v81 + 8) = v57;
    *(v81 + 16) = v164;
    *(v81 + 24) = v58;
    *(v49 + v80[12]) = v59;
    v82 = (v49 + v80[13]);
    *v82 = v163;
    v82[1] = v161;
    v83 = (v49 + v80[14]);
    *v83 = v162;
    v83[1] = v62;
    v84 = v160;
    v83[2] = v159;
    v83[3] = v60;
    *(v49 + v80[15]) = v84;
    sub_1C9470A40(v184, v168, &qword_1EC3A62F0);
    v85 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_1(v85, v86, v182);
    if (!v79)
    {
      sub_1C947F294(v168, v170);
LABEL_24:
      sub_1C947F294(v170, v49 + v80[16]);
      memcpy((v49 + v80[17]), v215, 0xA0uLL);
      *(v49 + v80[18]) = v158;
      v105 = (v49 + v80[19]);
      v106 = v208;
      *v105 = v207;
      v105[1] = v106;
      v107 = v210;
      v105[2] = v209;
      v105[3] = v107;
      v108 = (v49 + v80[20]);
      *v108 = v157;
      v108[1] = v156;
      v108[2] = v155;
      memcpy((v49 + v80[21]), v205, 0x70uLL);
      v109 = v49 + v80[23];
      *v109 = vdupq_n_s64(0x408C200000000000uLL);
      *(v109 + 16) = xmmword_1C96B4FE0;
      *(v109 + 32) = xmmword_1C96B4FF0;
      *(v109 + 48) = xmmword_1C96B5000;
      *(v109 + 64) = xmmword_1C96B5010;
      *(v109 + 80) = xmmword_1C96B5020;
      *(v109 + 96) = xmmword_1C96B5030;
      *(v109 + 112) = xmmword_1C96B5040;
      *(v109 + 128) = 0x3FE999999999999ALL;
      v110 = (v49 + v80[22]);
      v111 = v202;
      *v110 = v201;
      v110[1] = v111;
      v110[2] = *v203;
      *(v110 + 42) = *(&v203[1] + 2);
      v112 = v49 + v80[24];
      v113 = v152;
      *v112 = v153;
      *(v112 + 16) = v113;
      *(v112 + 32) = v151;
      v114 = v49 + v80[25];
      v115 = v154;
      *v114 = v150;
      *(v114 + 8) = v115;
      v116 = v149;
      *(v114 + 16) = v148;
      *(v114 + 24) = v116;
      *(v114 + 32) = v146;
      v117 = (v49 + v80[26]);
      v118 = v147;
      *v117 = v145;
      v117[1] = v118;
      *(v49 + v80[27]) = v144;
      v119 = (v49 + v80[29]);
      v120 = v141;
      *v119 = v142;
      v119[1] = v120;
      v121 = (v49 + v80[30]);
      v122 = v143;
      *v121 = v140;
      v121[1] = v122;
      v123 = v49 + v80[31];
      v124 = v138;
      *v123 = v139;
      *(v123 + 16) = v124;
      v125 = v136;
      *(v123 + 32) = v137;
      LOBYTE(v122) = v133;
      *(v123 + 40) = v134;
      *(v123 + 41) = v122;
      *(v123 + 46) = v188;
      *(v123 + 42) = v187;
      v126 = v135;
      *(v123 + 48) = v125;
      *(v123 + 56) = v126;
      memcpy((v49 + v80[32]), v185, 0x60uLL);
      *(v49 + v80[33]) = v132;
      v127 = (v49 + v80[34]);
      v128 = v131;
      *v127 = v130;
      v127[1] = v128;
      *(v49 + v80[35]) = v129;
      sub_1C9470AFC(v184, &qword_1EC3A62F0);
      result = sub_1C9470AFC(v165, &unk_1EC3A5430);
      *(v49 + v80[36]) = v227;
      return result;
    }

    v87 = v177;
    v88 = v181;
    __swift_storeEnumTagSinglePayload(v177, 1, 1, v181);
    __swift_storeEnumTagSinglePayload(v176, 1, 1, v88);
    v89 = v169;
    *v169 = xmmword_1C96B4F40;
    v89[1] = xmmword_1C96B4F50;
    v90 = v87;
    v91 = v173;
    sub_1C9470A40(v90, v173, &qword_1EC3A4A70);
    if (__swift_getEnumTagSinglePayload(v91, 1, v88) == 1)
    {
      sub_1C96A4754();
      v92 = OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_23_1(v92, v93, v181);
      if (v79)
      {
        __break(1u);
LABEL_21:
        OUTLINED_FUNCTION_19_27(v176);
        OUTLINED_FUNCTION_19_27(v177);
        v59(v180, v179, v181);
LABEL_22:
        v103 = v182;
        v104 = v169;
        v59(v169 + *(v182 + 36), v180, v181);
        *(v104 + *(v103 + 40)) = 1;
        sub_1C947F294(v104, v170);
        OUTLINED_FUNCTION_23_1(v168, 1, v103);
        if (!v79)
        {
          sub_1C9470AFC(v168, &qword_1EC3A62F0);
        }

        goto LABEL_24;
      }

      v94 = OUTLINED_FUNCTION_15_32();
      v95 = v181;
      v59(v94, v172, v181);
      OUTLINED_FUNCTION_23_1(v173, 1, v95);
      if (!v79)
      {
        sub_1C9470AFC(v173, &qword_1EC3A4A70);
      }
    }

    else
    {
      v96 = OUTLINED_FUNCTION_15_32();
      v59(v96, v173, v181);
    }

    v97 = v181;
    v59(v169 + *(v182 + 32), v175, v181);
    sub_1C9470A40(v176, v179, &qword_1EC3A4A70);
    v98 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_1(v98, v99, v97);
    if (!v79)
    {
      goto LABEL_21;
    }

    sub_1C96A4754();
    v100 = OUTLINED_FUNCTION_94();
    result = OUTLINED_FUNCTION_23_1(v100, v101, v181);
    if (!v79)
    {
      OUTLINED_FUNCTION_19_27(v176);
      OUTLINED_FUNCTION_19_27(v177);
      v102 = v181;
      v59(v180, v178, v181);
      OUTLINED_FUNCTION_23_1(v179, 1, v102);
      if (!v79)
      {
        sub_1C9470AFC(v179, &qword_1EC3A4A70);
      }

      goto LABEL_22;
    }

    __break(1u);
  }

  return result;
}

uint64_t static PredictedLocationsNotificationSubscription.Kind.read(from:)@<X0>(void *a1@<X8>)
{
  result = sub_1C96A5504();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

uint64_t static LocationDisplayContext.read(from:)@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C96A5504();
  if (!v1)
  {
    *a1 = v4;
  }

  return result;
}

unint64_t PrecipitationNotification.Kind.rawValue.getter()
{
  result = 0x676E697472617473;
  switch(*v0)
  {
    case 1:
      result = 0x676E6970706F7473;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PrecipitationNotification.init(identifier:kind:starting:stopping:intensity:forecast:date:endDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v15 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v15;
  v16 = type metadata accessor for PrecipitationNotification();
  v17 = v16[6];
  v18 = sub_1C96A5DD4();
  OUTLINED_FUNCTION_6();
  v20 = *(v19 + 32);
  v20(a9 + v17, a4, v18);
  v20(a9 + v16[7], a5, v18);
  v21 = v16[8];
  sub_1C96A5CB4();
  OUTLINED_FUNCTION_6();
  (*(v22 + 32))(a9 + v21, a6);
  v23 = v16[9];
  sub_1C96A5D64();
  OUTLINED_FUNCTION_6();
  (*(v24 + 32))(a9 + v23, a7);
  v25 = v16[10];
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  (*(v26 + 32))(a9 + v25, a8);
  v27 = a9 + v16[11];

  return sub_1C948E818(a10, v27);
}

uint64_t type metadata accessor for PrecipitationNotification()
{
  result = qword_1EC3A7638;
  if (!qword_1EC3A7638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrecipitationNotification.identifier.getter()
{
  v1 = *v0;
  sub_1C96A53C4();
  return v1;
}

uint64_t PrecipitationNotification.starting.getter()
{
  OUTLINED_FUNCTION_14_32();
  sub_1C96A5DD4();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t PrecipitationNotification.stopping.getter()
{
  OUTLINED_FUNCTION_14_32();
  sub_1C96A5DD4();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t PrecipitationNotification.intensity.getter()
{
  OUTLINED_FUNCTION_14_32();
  sub_1C96A5CB4();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t PrecipitationNotification.forecast.getter()
{
  OUTLINED_FUNCTION_14_32();
  sub_1C96A5D64();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t PrecipitationNotification.date.getter()
{
  OUTLINED_FUNCTION_14_32();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

uint64_t PrecipitationNotification.endDate.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_14_32() + 44);

  return sub_1C94D63E8(v2, v0);
}

WeatherCore::PrecipitationNotification::Kind_optional __swiftcall PrecipitationNotification.Kind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C9635764(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E697472617473 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E6970706F7473 && a2 == 0xE800000000000000;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7473616365726F66 && a2 == 0xE800000000000000;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1702125924 && a2 == 0xE400000000000000;
              if (v11 || (sub_1C96A7DE4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C96A7DE4();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C96359F4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      v3 = 0x697472617473;
      goto LABEL_6;
    case 3:
      v3 = 0x6970706F7473;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
      break;
    case 4:
      result = 0x7469736E65746E69;
      break;
    case 5:
      result = 0x7473616365726F66;
      break;
    case 6:
      result = 1702125924;
      break;
    case 7:
      result = 0x65746144646E65;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C9635AFC@<X0>(unint64_t *a1@<X8>)
{
  result = PrecipitationNotification.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C9635BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9635764(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9635C04(uint64_t a1)
{
  v2 = sub_1C963616C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9635C40(uint64_t a1)
{
  v2 = sub_1C963616C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PrecipitationNotification.description.getter()
{
  BYTE8(v5) = 0;
  sub_1C96A7A94();
  MEMORY[0x1CCA8CB00](0x3A646E694BLL, 0xE500000000000000);
  *&v5 = *(v0 + 16);
  sub_1C96A7B54();
  OUTLINED_FUNCTION_16_30();
  type metadata accessor for PrecipitationNotification();
  sub_1C96A5DD4();
  OUTLINED_FUNCTION_15_33();
  OUTLINED_FUNCTION_16_30();
  OUTLINED_FUNCTION_15_33();
  MEMORY[0x1CCA8CB00](0xD00000000000001BLL, 0x80000001C96D5A30);
  sub_1C96A5CB4();
  sub_1C96A7B54();
  MEMORY[0x1CCA8CB00](0x203A65746144203BLL, 0xE800000000000000);
  sub_1C96A4A54();
  OUTLINED_FUNCTION_0_92();
  sub_1C9636B60(v1, v2);
  v3 = sub_1C96A7DB4();
  MEMORY[0x1CCA8CB00](v3);

  return *(&v5 + 1);
}

uint64_t PrecipitationNotification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A75E8);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C963616C();
  sub_1C96A7F54();
  v20[31] = 0;
  OUTLINED_FUNCTION_0_0();
  sub_1C96A7D24();
  if (!v2)
  {
    v20[30] = *(v3 + 16);
    v20[29] = 1;
    sub_1C96361C0();
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    type metadata accessor for PrecipitationNotification();
    v20[28] = 2;
    sub_1C96A5DD4();
    OUTLINED_FUNCTION_6_50();
    sub_1C9636B60(v11, v12);
    OUTLINED_FUNCTION_3_50();
    sub_1C96A7D74();
    v20[27] = 3;
    OUTLINED_FUNCTION_3_50();
    sub_1C96A7D74();
    v20[26] = 4;
    sub_1C96A5CB4();
    OUTLINED_FUNCTION_8_41();
    sub_1C9636B60(v13, v14);
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    v20[25] = 5;
    sub_1C96A5D64();
    OUTLINED_FUNCTION_7_42();
    sub_1C9636B60(v15, v16);
    OUTLINED_FUNCTION_0_0();
    sub_1C96A7D74();
    v20[24] = 6;
    sub_1C96A4A54();
    OUTLINED_FUNCTION_0_92();
    sub_1C9636B60(v17, v18);
    OUTLINED_FUNCTION_3_50();
    sub_1C96A7D74();
    v20[15] = 7;
    OUTLINED_FUNCTION_3_50();
    sub_1C96A7D14();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1C963616C()
{
  result = qword_1EC3A75F0;
  if (!qword_1EC3A75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A75F0);
  }

  return result;
}

unint64_t sub_1C96361C0()
{
  result = qword_1EC3A75F8;
  if (!qword_1EC3A75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A75F8);
  }

  return result;
}

uint64_t PrecipitationNotification.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = v57 - v4;
  v70 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v63 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  v61 = v8 - v7;
  v66 = sub_1C96A5D64();
  OUTLINED_FUNCTION_1();
  v64 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v62 = v12 - v11;
  v67 = sub_1C96A5CB4();
  OUTLINED_FUNCTION_1();
  v65 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  v75 = sub_1C96A5DD4();
  OUTLINED_FUNCTION_1();
  v69 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v57 - v23;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7610);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v25);
  v74 = type metadata accessor for PrecipitationNotification();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v71 = (v28 - v27);
  v29 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1C963616C();
  v30 = v72;
  sub_1C96A7F44();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v73);
  }

  v72 = v17;
  v84 = 0;
  v31 = sub_1C96A7C84();
  v32 = v71;
  *v71 = v31;
  v32[1] = v33;
  v82 = 1;
  sub_1C9636B0C();
  sub_1C96A7CB4();
  *(v32 + 16) = v83;
  v81 = 2;
  OUTLINED_FUNCTION_6_50();
  v36 = sub_1C9636B60(v34, v35);
  v37 = v75;
  sub_1C96A7CB4();
  v58 = v36;
  v38 = v74;
  v39 = v32 + *(v74 + 24);
  v57[0] = *(v69 + 32);
  v57[1] = v69 + 32;
  (v57[0])(v39, v24, v37);
  v80 = 3;
  sub_1C96A7CB4();
  (v57[0])(v32 + *(v38 + 28), v21, v37);
  v79 = 4;
  OUTLINED_FUNCTION_8_41();
  sub_1C9636B60(v40, v41);
  v42 = v67;
  sub_1C96A7CB4();
  v43 = v32;
  LODWORD(v58) = 1;
  v44 = v74;
  (*(v65 + 32))(v43 + *(v74 + 32), v72, v42);
  v78 = 5;
  OUTLINED_FUNCTION_7_42();
  sub_1C9636B60(v45, v46);
  v47 = v62;
  v48 = v66;
  sub_1C96A7CB4();
  (*(v64 + 32))(v43 + v44[9], v47, v48);
  v77 = 6;
  OUTLINED_FUNCTION_0_92();
  sub_1C9636B60(v49, v50);
  v51 = v61;
  v52 = v70;
  OUTLINED_FUNCTION_13_40();
  sub_1C96A7CB4();
  (*(v63 + 32))(v43 + v44[10], v51, v52);
  v76 = 7;
  v53 = v60;
  OUTLINED_FUNCTION_13_40();
  sub_1C96A7C74();
  v54 = OUTLINED_FUNCTION_5_49();
  v55(v54);
  sub_1C948E818(v53, v43 + v44[11]);
  sub_1C9636BA8(v43, v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v73);
  return sub_1C9636C0C(v43);
}

unint64_t sub_1C9636B0C()
{
  result = qword_1EC3A7618;
  if (!qword_1EC3A7618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7618);
  }

  return result;
}

uint64_t sub_1C9636B60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C9636BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrecipitationNotification();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C9636C0C(uint64_t a1)
{
  v2 = type metadata accessor for PrecipitationNotification();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C9636C6C()
{
  result = qword_1EC3A7630;
  if (!qword_1EC3A7630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7630);
  }

  return result;
}

void sub_1C9636D18()
{
  sub_1C96A5DD4();
  if (v0 <= 0x3F)
  {
    sub_1C96A5CB4();
    if (v1 <= 0x3F)
    {
      sub_1C96A5D64();
      if (v2 <= 0x3F)
      {
        sub_1C96A4A54();
        if (v3 <= 0x3F)
        {
          sub_1C94612C0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PrecipitationNotification.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrecipitationNotification.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9636FB8()
{
  result = qword_1EC3A7648;
  if (!qword_1EC3A7648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7648);
  }

  return result;
}

unint64_t sub_1C9637010()
{
  result = qword_1EC3A7650;
  if (!qword_1EC3A7650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7650);
  }

  return result;
}

unint64_t sub_1C9637068()
{
  result = qword_1EC3A7658;
  if (!qword_1EC3A7658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7658);
  }

  return result;
}

unint64_t sub_1C96370BC()
{
  result = qword_1EC3A7660;
  if (!qword_1EC3A7660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7660);
  }

  return result;
}

uint64_t sub_1C9637110()
{
  v0 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C96A45A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45C4();
  __swift_allocate_value_buffer(v6, qword_1EC3A7668);
  __swift_project_value_buffer(v6, qword_1EC3A7668);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EDB94A40);
  (*(v2 + 16))(v4, v7, v1);
  sub_1C96A4BC4();
  return sub_1C96A45D4();
}

uint64_t static SetTemperatureUnitIntent.title.modify()
{
  if (qword_1EC3A4800 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A45C4();
  __swift_project_value_buffer(v0, qword_1EC3A7668);
  OUTLINED_FUNCTION_19_1();
  return OUTLINED_FUNCTION_12_36();
}

uint64_t sub_1C9637418@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9639B24(&qword_1EC3A4800, MEMORY[0x1E6968E10], qword_1EC3A7668);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C96374C8(uint64_t a1)
{
  v2 = sub_1C9639B24(&qword_1EC3A4800, MEMORY[0x1E6968E10], qword_1EC3A7668);
  swift_beginAccess();
  v3 = sub_1C96A45C4();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9637580()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3E34();
  __swift_allocate_value_buffer(v10, qword_1EC3A7680);
  __swift_project_value_buffer(v10, qword_1EC3A7680);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3E54();
}

uint64_t static SetTemperatureUnitIntent.description.modify()
{
  if (qword_1EC3A4808 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A3E34();
  __swift_project_value_buffer(v0, qword_1EC3A7680);
  OUTLINED_FUNCTION_19_1();
  return OUTLINED_FUNCTION_12_36();
}

uint64_t sub_1C9637954@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9639B24(&qword_1EC3A4808, MEMORY[0x1E695A200], qword_1EC3A7680);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C9637A04(uint64_t a1)
{
  v2 = sub_1C9639B24(&qword_1EC3A4808, MEMORY[0x1E695A200], qword_1EC3A7680);
  swift_beginAccess();
  v3 = sub_1C96A3E34();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9637ABC()
{
  v0 = sub_1C96A3B84();
  __swift_allocate_value_buffer(v0, qword_1EC3A7698);
  __swift_project_value_buffer(v0, qword_1EC3A7698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C00);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A3B74();
  sub_1C95E0D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C50);
  sub_1C9469CB4(&qword_1EC3A6C58, &qword_1EC3A6C50);
  return sub_1C96A79E4();
}

uint64_t static SetTemperatureUnitIntent.supportedModes.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A4810 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A3B84();
  __swift_project_value_buffer(v2, qword_1EC3A7698);
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t static SetTemperatureUnitIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A76D0);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A76D8);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C9637E58();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A76E8);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  return sub_1C96A3F14();
}

unint64_t sub_1C9637E58()
{
  result = qword_1EC3A76E0;
  if (!qword_1EC3A76E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A76E0);
  }

  return result;
}

uint64_t sub_1C9637F2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C9637EAC();
  *a1 = result;
  return result;
}

uint64_t SetTemperatureUnitIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v36 = sub_1C96A3F64();
  OUTLINED_FUNCTION_1();
  v34 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  v35 = v4 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B40);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = sub_1C96A4C14();
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v16 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  v23 = sub_1C96A6FF4();
  v24 = OUTLINED_FUNCTION_7(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v25 = sub_1C96A45C4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A76F0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v16, qword_1EDB94A40);
  v28 = *(v18 + 16);
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v28(v22, v27, v16);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_2_7();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v25);
  v38 = 3;
  v29 = sub_1C96A3B94();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v29);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v29);
  (*(v34 + 104))(v35, *MEMORY[0x1E695A500], v36);
  sub_1C963ABE4();
  *v37 = sub_1C96A3C94();
  return sub_1C954DDE0();
}

uint64_t SetTemperatureUnitIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C96383D8, 0, 0);
}

uint64_t sub_1C96383D8()
{
  v15 = v0;
  sub_1C96A3C64();
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      goto LABEL_10;
    }

    v1 = &selRef_fahrenheit;
  }

  else
  {
    v1 = &selRef_celsius;
  }

  v2 = [objc_opt_self() *v1];
  if (v2)
  {
    v3 = v2;
    if (qword_1EDB80318 != -1)
    {
      OUTLINED_FUNCTION_16();
    }

    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 celsius];
    sub_1C946B5D0(0, &qword_1EDB80068);
    v7 = sub_1C96A78B4();

    if (v7)
    {

      v8 = 1;
    }

    else
    {
      v9 = [v4 fahrenheit];
      v10 = sub_1C96A78B4();

      if (v10)
      {
        v8 = 0;
      }

      else
      {
        v8 = 2;
      }
    }

    v14 = v8;
    UnitManager.setPreferredTemperatureUnit(_:)(&v14);

    goto LABEL_17;
  }

LABEL_10:
  if (qword_1EDB80318 != -1)
  {
    OUTLINED_FUNCTION_16();
  }

  v13 = 2;
  UnitManager.setPreferredTemperatureUnit(_:)(&v13);
LABEL_17:
  sub_1C946B5D0(0, &qword_1EDB80340);
  static NSUserDefaults.postSettingsUpdatedNotification()();
  static WidgetUtilities.reloadWidget(reason:)(0xD00000000000003DLL, 0x80000001C96D5A70);
  sub_1C96A3BB4();
  v11 = *(v0 + 8);

  return v11();
}

void __swiftcall TemperatureUnit.temperatureUnit()(NSUnitTemperature_optional *__return_ptr retstr)
{
  if (*v1)
  {
    if (*v1 != 1)
    {
      return;
    }

    v2 = &selRef_fahrenheit;
  }

  else
  {
    v2 = &selRef_celsius;
  }

  v3 = [objc_opt_self() *v2];
}

uint64_t sub_1C9638688(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C94B9278;

  return SetTemperatureUnitIntent.perform()(a1);
}

uint64_t sub_1C9638724(uint64_t a1)
{
  v2 = sub_1C9637E58();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1C9638760()
{
  sub_1C96A3E14();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  SetTemperatureUnitIntent.init()(&v11);
  sub_1C9637E58();
  OUTLINED_FUNCTION_5_50();
  v3 = sub_1C96A3E04();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_117();
  v4(v5);
  SetTemperatureUnitIntent.init()(&v11);
  OUTLINED_FUNCTION_5_50();
  v6 = sub_1C96A3E04();
  v7 = OUTLINED_FUNCTION_117();
  v4(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BC0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C96AEF50;
  *(v8 + 32) = v3;
  *(v8 + 40) = v6;
  v9 = sub_1C96A3DF4();

  return v9;
}

uint64_t sub_1C96388FC(uint64_t a1)
{
  v24 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7788);
  v1 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7790);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C9637E58();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  v25 = sub_1C963AF2C();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v20 = sub_1C96A3D34();
  v6 = v1 + 8;
  v5 = *(v1 + 8);
  v7 = v22;
  v5(v3, v22);
  v21 = v5;
  v23 = v6;
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v19 = sub_1C96A3D34();
  v5(v3, v7);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v18 = sub_1C96A3D34();
  v21(v3, v22);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v17 = sub_1C96A3D34();
  v8 = v21;
  v9 = v22;
  v21(v3, v22);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v16 = sub_1C96A3D34();
  v8(v3, v9);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v10 = sub_1C96A3D34();
  v8(v3, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7798);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C96BA7C0;
  v12 = v19;
  *(v11 + 32) = v20;
  *(v11 + 40) = v12;
  v13 = v17;
  *(v11 + 48) = v18;
  *(v11 + 56) = v13;
  *(v11 + 64) = v16;
  *(v11 + 72) = v10;
  v14 = sub_1C96A3D24();

  return v14;
}

uint64_t sub_1C9638F9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9637ED0();
  *a1 = v3;
  return result;
}

uint64_t sub_1C9638FE0()
{
  sub_1C96A3D04();
  sub_1C9637EF4();
}

uint64_t sub_1C9639054()
{
  v0 = sub_1C96A3D54();
  v1 = sub_1C96A3D54();
  v2 = sub_1C96A3D54();
  v3 = sub_1C96A3D54();
  v4 = sub_1C96A3D54();
  v5 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C96BA7C0;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  v7 = sub_1C96A3D44();

  return v7;
}

uint64_t sub_1C9639198(uint64_t a1)
{
  v11[1] = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7788);
  v1 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v3 = v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7790);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C9637E58();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C963AF2C();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v12 = sub_1C96A3D34();
  v5 = *(v1 + 8);
  v6 = v13;
  v5(v3, v13);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  swift_getKeyPath();
  sub_1C96A3D04();

  sub_1C96A3DB4();

  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v7 = sub_1C96A3D34();
  v5(v3, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7798);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C96AEF50;
  *(v8 + 32) = v12;
  *(v8 + 40) = v7;
  v9 = sub_1C96A3D24();

  return v9;
}

uint64_t sub_1C96394E4()
{
  v0 = sub_1C96A3D94();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  swift_getKeyPath();
  sub_1C963AF2C();
  sub_1C96A3D04();

  sub_1C9637E58();
  sub_1C96A3D84();
  v7 = sub_1C96A3D74();
  (*(v2 + 8))(v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C96AA1C0;
  *(v8 + 32) = v7;
  v9 = sub_1C96A3D64();

  return v9;
}

uint64_t sub_1C9639634()
{
  v0 = sub_1C96A3D54();
  v1 = sub_1C96A3D54();
  v2 = sub_1C96A3D54();
  v3 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AC330;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = sub_1C96A3D44();

  return v5;
}

uint64_t sub_1C963971C()
{
  sub_1C96A3CF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  sub_1C9637E58();
  sub_1C96A3CE4();
  v1 = sub_1C96A3CD4();
  v2 = OUTLINED_FUNCTION_117();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v1;
  v5 = sub_1C96A3CC4();

  return v5;
}

uint64_t sub_1C963984C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13[-v1];
  v3 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1C96A45A4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1C96A3FD4();
  __swift_allocate_value_buffer(v10, qword_1EC3A76B0);
  __swift_project_value_buffer(v10, qword_1EC3A76B0);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EDB94A40);
  (*(v5 + 16))(v7, v11, v4);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v9);
  return sub_1C96A3FC4();
}

uint64_t sub_1C9639B24(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return __swift_project_value_buffer(v5, a3);
}

uint64_t sub_1C9639BB8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  OUTLINED_FUNCTION_8_1();
  return (*(v9 + 16))(a4, v8, v7);
}

uint64_t sub_1C9639C9C(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = a3(0);
  __swift_project_value_buffer(v7, a4);
  swift_beginAccess();
  v8 = *(v7 - 8);
  v9 = OUTLINED_FUNCTION_117();
  v10(v9);
  swift_endAccess();
  return (*(v8 + 8))(a1, v7);
}

uint64_t static TemperatureUnit.typeDisplayRepresentation.modify()
{
  if (qword_1EC3A4818 != -1)
  {
    swift_once();
  }

  v0 = sub_1C96A3FD4();
  __swift_project_value_buffer(v0, qword_1EC3A76B0);
  OUTLINED_FUNCTION_19_1();
  return OUTLINED_FUNCTION_12_36();
}

uint64_t sub_1C9639E00@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C9639B24(&qword_1EC3A4818, MEMORY[0x1E695A558], qword_1EC3A76B0);
  swift_beginAccess();
  v3 = sub_1C96A3FD4();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C9639EB0(uint64_t a1)
{
  v2 = sub_1C9639B24(&qword_1EC3A4818, MEMORY[0x1E695A558], qword_1EC3A76B0);
  swift_beginAccess();
  v3 = sub_1C96A3FD4();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C9639F68()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5700);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v46 = &v28 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v28 - v3;
  v4 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1C96A45A4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v45 = sub_1C96A45C4();
  v10 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77A0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77A8);
  v13 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v42 = *(*(v12 - 8) + 72);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v36 = v12;
  v37 = v14;
  v31 = *(v12 + 48);
  v40 = (v14 + v13);
  *(v14 + v13) = 0;
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v5, qword_1EDB94A40);
  v15 = *(v6 + 16);
  v15(v8, v39, v5);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v45);
  v41 = sub_1C96A3E84();
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v41);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5998);
  v17 = *(v10 + 72);
  v34 = v16;
  v35 = v17;
  v33 = *(v10 + 80);
  v38 = v5;
  v28 = v6 + 16;
  v30 = (v33 + 32) & ~v33;
  v18 = swift_allocObject();
  v32 = xmmword_1C96AA1C0;
  *(v18 + 16) = xmmword_1C96AA1C0;
  sub_1C96A6FA4();
  v19 = v39;
  v29 = v15;
  v15(v8, v39, v5);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  v20 = v40;
  v21 = v44;
  sub_1C96A3E94();
  v22 = &v20[v42];
  v23 = v36;
  v31 = *(v36 + 48);
  *v22 = 1;
  sub_1C96A6FA4();
  v15(v8, v19, v38);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v41);
  sub_1C96A3EA4();
  v40 += 2 * v42;
  v42 = *(v23 + 48);
  *v40 = 2;
  sub_1C96A6FA4();
  v24 = v38;
  v25 = v39;
  v26 = v29;
  v29(v8, v39, v38);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v41);
  *(swift_allocObject() + 16) = v32;
  sub_1C96A6FA4();
  v26(v8, v25, v24);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  sub_1C96A3E94();
  sub_1C96A3EB4();
  sub_1C963B0DC();
  result = sub_1C96A6F04();
  qword_1EC3A76C8 = result;
  return result;
}

uint64_t *sub_1C963A6DC()
{
  if (qword_1EC3A4820 != -1)
  {
    OUTLINED_FUNCTION_0_93();
  }

  return &qword_1EC3A76C8;
}

uint64_t static TemperatureUnit.caseDisplayRepresentations.getter()
{
  if (qword_1EC3A4820 != -1)
  {
    OUTLINED_FUNCTION_0_93();
  }

  swift_beginAccess();
  return sub_1C96A53C4();
}

uint64_t static TemperatureUnit.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1EC3A4820 != -1)
  {
    OUTLINED_FUNCTION_0_93();
  }

  swift_beginAccess();
  qword_1EC3A76C8 = a1;
}

uint64_t static TemperatureUnit.caseDisplayRepresentations.modify()
{
  if (qword_1EC3A4820 != -1)
  {
    OUTLINED_FUNCTION_0_93();
  }

  OUTLINED_FUNCTION_117();
  swift_beginAccess();
  return OUTLINED_FUNCTION_12_36();
}

uint64_t sub_1C963A864@<X0>(void *a1@<X8>)
{
  sub_1C963A6DC();
  swift_beginAccess();
  *a1 = qword_1EC3A76C8;
  return sub_1C96A53C4();
}

uint64_t sub_1C963A8B8(uint64_t *a1)
{
  v1 = *a1;
  sub_1C96A53C4();
  sub_1C963A6DC();
  swift_beginAccess();
  qword_1EC3A76C8 = v1;
}

void static TemperatureUnit.fromTemperatureUnit(_:)(void *a1@<X0>, char *a2@<X8>)
{
  if (a1)
  {
    sub_1C946B5D0(0, &qword_1EDB80068);
    v4 = objc_opt_self();
    v5 = a1;
    v6 = [v4 celsius];
    v7 = sub_1C96A78B4();

    if (v7)
    {

      v8 = 0;
    }

    else
    {
      v9 = [v4 fahrenheit];
      v10 = sub_1C96A78B4();

      if (v10)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }
    }
  }

  else
  {
    v8 = 2;
  }

  *a2 = v8;
}

WeatherCore::TemperatureUnit_optional __swiftcall TemperatureUnit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TemperatureUnit.rawValue.getter()
{
  v1 = 0x65686E6572686166;
  if (*v0 != 1)
  {
    v1 = 0x7953726F7272696DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737569736C6563;
  }
}

uint64_t sub_1C963AB0C@<X0>(uint64_t *a1@<X8>)
{
  result = TemperatureUnit.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C963AB38(uint64_t a1)
{
  v2 = sub_1C963ABE4();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1C963AB88(uint64_t a1)
{
  v2 = sub_1C963AF84();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1C963ABE4()
{
  result = qword_1EC3A76F8;
  if (!qword_1EC3A76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A76F8);
  }

  return result;
}

unint64_t sub_1C963AC3C()
{
  result = qword_1EC3A7700;
  if (!qword_1EC3A7700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7700);
  }

  return result;
}

unint64_t sub_1C963AC94()
{
  result = qword_1EC3A7708;
  if (!qword_1EC3A7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7708);
  }

  return result;
}

unint64_t sub_1C963AD24()
{
  result = qword_1EC3A7710;
  if (!qword_1EC3A7710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7710);
  }

  return result;
}

unint64_t sub_1C963AD7C()
{
  result = qword_1EC3A7718;
  if (!qword_1EC3A7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7718);
  }

  return result;
}

unint64_t sub_1C963ADD4()
{
  result = qword_1EC3A7720;
  if (!qword_1EC3A7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7720);
  }

  return result;
}

unint64_t sub_1C963AE2C()
{
  result = qword_1EC3A7728;
  if (!qword_1EC3A7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7728);
  }

  return result;
}

unint64_t sub_1C963AE84()
{
  result = qword_1EC3A7730;
  if (!qword_1EC3A7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7730);
  }

  return result;
}

unint64_t sub_1C963AED8()
{
  result = qword_1EC3A7738;
  if (!qword_1EC3A7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7738);
  }

  return result;
}

unint64_t sub_1C963AF2C()
{
  result = qword_1EC3A7740;
  if (!qword_1EC3A7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7740);
  }

  return result;
}

unint64_t sub_1C963AF84()
{
  result = qword_1EC3A7748;
  if (!qword_1EC3A7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7748);
  }

  return result;
}

unint64_t sub_1C963B02C()
{
  result = qword_1EC3A7750;
  if (!qword_1EC3A7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7750);
  }

  return result;
}

unint64_t sub_1C963B084()
{
  result = qword_1EC3A7758;
  if (!qword_1EC3A7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7758);
  }

  return result;
}

unint64_t sub_1C963B0DC()
{
  result = qword_1EC3A7760;
  if (!qword_1EC3A7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7760);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureUnit(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C963B2C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_1C96A4764();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_useTransientContext) == 1)
  {
    sub_1C96A6E34();
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    v8 = MEMORY[0x1CCA8C7A0](0, &v25);
    sub_1C9470AFC(&v25, qword_1EC3A6DB0);
  }

  else
  {
    if (qword_1EDB7D060 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A6154();
    v10 = __swift_project_value_buffer(v9, qword_1EDB7D068);
    sub_1C96A3D04();
    v11 = sub_1C96A6134();
    v12 = sub_1C96A76A4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = v10;
      v14 = v13;
      v15 = swift_slowAlloc();
      v23 = v5;
      v16 = v15;
      *&v25 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v17 = sub_1C96A4744();
      v19 = sub_1C9484164(v17, v18, &v25);

      *(v14 + 14) = v19;
      _os_log_impl(&dword_1C945E000, v11, v12, "CoherenceContextProvider use store file= %{private,mask.hash}s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      v20 = v16;
      v5 = v23;
      MEMORY[0x1CCA8E3D0](v20, -1, -1);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
    }

    sub_1C96A6E34();
    (*(v5 + 16))(v7, v0 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_storageURL, v4);
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
    return sub_1C96A6E24();
  }

  return v8;
}

uint64_t sub_1C963B874()
{
  v1 = OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_containerURL;
  v2 = sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_storageURL, v2);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

WeatherCore::WeatherMapOverlayServiceSource __swiftcall WeatherMapOverlayServiceSource.normalized(mapsConfiguration:)(WeatherCore::MapsConfiguration *mapsConfiguration)
{
  v3 = v1;
  if (*v2)
  {
    *v1 = *v2;
  }

  else
  {
    value = mapsConfiguration->useHTTP2.value;
    sub_1C96A4EE4();
    sub_1C96A4EC4();
    if (qword_1EDB7FD38 != -1)
    {
      OUTLINED_FUNCTION_0_94();
    }

    sub_1C96A4EB4();

    v5 = v7;
    switch(v7)
    {
      case 1:
        goto LABEL_10;
      case 2:
      case 6:
        break;
      case 3:
      case 4:
        v5 = 3;
        break;
      case 5:
        v5 = 1;
        break;
      default:
        if (value == 2 || (value & 1) != 0)
        {
          v5 = 5;
        }

        else
        {
LABEL_10:
          v5 = 4;
        }

        break;
    }

    *v3 = v5;
  }

  return mapsConfiguration;
}

WeatherCore::WeatherMapOverlayServiceSource_optional __swiftcall WeatherMapOverlayServiceSource.sourceOverrideForHostnameForAuthenticationSignature(mapsConfiguration:)(WeatherCore::MapsConfiguration *mapsConfiguration)
{
  v3 = v1;
  value = mapsConfiguration->useHTTP2.value;
  v5 = 4;
  switch(*v2)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
LABEL_2:
      v5 = 7;
      break;
    case 5:
      break;
    default:
      sub_1C96A4EE4();
      sub_1C96A4EC4();
      if (qword_1EDB7FD38 != -1)
      {
        OUTLINED_FUNCTION_0_94();
      }

      sub_1C96A4EB4();

      switch(v7)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
          goto LABEL_2;
        default:
          if (value != 2 && (value & 1) == 0)
          {
            goto LABEL_2;
          }

          v5 = 4;
          break;
      }

      break;
  }

  *v3 = v5;
  return mapsConfiguration;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StoredUnitsConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[6])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *a1;
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StoredUnitsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1C963BC6C()
{
  result = qword_1EC3A77B0;
  if (!qword_1EC3A77B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A77B0);
  }

  return result;
}

uint64_t sub_1C963BCC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6174736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6572757373657270 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65657053646E6977 && a2 == 0xE900000000000064;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000011 && 0x80000001C96D5DC0 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C96A7DE4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C963BEC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C963BCC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C963BEEC(uint64_t a1)
{
  v2 = sub_1C948574C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C963BF28(uint64_t a1)
{
  v2 = sub_1C948574C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C963BF64(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  if (*v2 == 2)
  {
    sub_1C96A7F04();
  }

  else
  {
    sub_1C96A7F04();
    sub_1C96A7144();
  }

  sub_1C96A7F04();
  if (v4 != 2)
  {
    sub_1C96A7144();
  }

  sub_1C96A7F04();
  if (v5 != 5)
  {
    sub_1C9690880(a1, v5);
  }

  sub_1C96A7F04();
  if (v6 != 2)
  {
    sub_1C96A7144();
  }

  sub_1C96A7F04();
  if (v7 != 5)
  {
    sub_1C968915C();
  }

  return sub_1C96A7F04();
}

uint64_t sub_1C963C0F8()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v4[18] = *v0;
  v5 = v1;
  v6 = v2;
  sub_1C96A7EE4();
  sub_1C963BF64(v4);
  return sub_1C96A7F24();
}

uint64_t sub_1C963C154()
{
  sub_1C9485C10();

  return sub_1C96A53A4();
}

uint64_t sub_1C963C19C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  v4[18] = *v0;
  v5 = v1;
  v6 = v2;
  sub_1C96A7EE4();
  sub_1C963BF64(v4);
  return sub_1C96A7F24();
}

unint64_t sub_1C963C1F8()
{
  result = qword_1EC3A77D0;
  if (!qword_1EC3A77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A77D0);
  }

  return result;
}

uint64_t AppConfigurationRemoteSettingsProvider.__allocating_init(identityService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 7;
  sub_1C94924FC(a1, v2 + 16);
  return v2;
}

uint64_t sub_1C963C2A0()
{
  result = *(v0 + 56);
  if (result == 7)
  {
    if (qword_1EDB7FD38 != -1)
    {
      swift_once();
    }

    sub_1C963D998();
    sub_1C96A4E44();
    result = v2;
    *(v0 + 56) = v2;
  }

  return result;
}

uint64_t AppConfigurationRemoteSettingsProvider.init(identityService:)(__int128 *a1)
{
  *(v1 + 56) = 7;
  sub_1C94924FC(a1, v1 + 16);
  return v1;
}

uint64_t AppConfigurationRemoteSettingsProvider.settings.getter()
{
  OUTLINED_FUNCTION_18();
  v1[22] = v0;
  type metadata accessor for UserIdentity();
  v1[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70);
  v1[24] = swift_task_alloc();
  v2 = sub_1C96A42A4();
  v1[25] = v2;
  v1[26] = *(v2 - 8);
  v1[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C963C4A0, 0, 0);
}

uint64_t sub_1C963C4A0()
{
  v28 = v0;
  v1 = sub_1C963C2A0();
  if (qword_1EDB7CFF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C96A6154();
  *(v0 + 224) = __swift_project_value_buffer(v2, qword_1EDB7CFF8);
  v3 = sub_1C96A6134();
  v4 = sub_1C96A76A4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_9_8();
    v6 = OUTLINED_FUNCTION_8_4();
    v27 = v6;
    *v5 = 136446210;
    *(v0 + 256) = v1;
    v7 = sub_1C96A70C4();
    v9 = sub_1C9484164(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1C945E000, v3, v4, "About to create RemoteConfigurationSetting for environment: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v10 = sub_1C963CF40(v1);
  if (v10)
  {
    v11 = v10;
    v12 = objc_allocWithZone(MEMORY[0x1E69C6D68]);
    v13 = sub_1C963D2D0(0, 0, 0, 1, v11, 1, 1);
  }

  else
  {
    v13 = 0;
  }

  *(v0 + 232) = v13;
  v14 = v13;
  v15 = sub_1C96A6134();
  v16 = sub_1C96A76A4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_9_8();
    v18 = OUTLINED_FUNCTION_8_4();
    v27 = v18;
    *v17 = 136446210;
    *(v0 + 168) = v13;
    v19 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77E0);
    v20 = sub_1C96A70C4();
    v22 = sub_1C9484164(v20, v21, &v27);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1C945E000, v15, v16, "RemoteConfiguratin DebugOverrides=%{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v23 = [objc_opt_self() ams_sharedAccountStore];
  v24 = [v23 ams_fetchLocaliTunesAccount];
  *(v0 + 240) = v24;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 160;
  *(v0 + 24) = sub_1C963C840;
  v25 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A77D8);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1C963CF54;
  *(v0 + 104) = &block_descriptor_18;
  *(v0 + 112) = v25;
  [v24 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1C963C840()
{
  OUTLINED_FUNCTION_18();
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1C963CC4C;
  }

  else
  {
    v2 = sub_1C963C94C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C963C94C()
{
  v42 = v0;
  v1 = 0x303030303030;
  v2 = *(v0 + 240);
  v3 = sub_1C963D6CC(*(v0 + 160));
  v5 = v4;

  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x303030303030;
  }

  v7 = 0xE600000000000000;
  if (!v5)
  {
    v5 = 0xE600000000000000;
  }

  *(v0 + 144) = v6;
  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  v10 = *(v0 + 200);
  *(v0 + 152) = v5;
  sub_1C96A4284();
  sub_1C946DFF0();
  v11 = sub_1C96A7954();
  (*(v9 + 8))(v8, v10);

  if (v11[2])
  {
    v1 = v11[4];
    v7 = v11[5];
    sub_1C96A53C4();
  }

  OUTLINED_FUNCTION_6_51();
  v41[0] = v5 | 2;
  v41[1] = 0x80000001C96D5E00;
  MEMORY[0x1CCA8CB00](v1, v7);
  sub_1C96A53C4();
  v12 = sub_1C96A6134();
  v13 = sub_1C96A76A4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_9_8();
    v15 = OUTLINED_FUNCTION_8_4();
    v41[0] = v15;
    *v14 = 136446210;
    v16 = sub_1C9484164(v5 | 2, 0x80000001C96D5E00, v41);

    *(v14 + 4) = v16;
    OUTLINED_FUNCTION_7_43(&dword_1C945E000, v17, v18, "RemoteConfiguratin recordID=%{public}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {
  }

  v19 = *(v0 + 184);
  v20 = sub_1C96A4764();
  v21 = OUTLINED_FUNCTION_0_97(v20);
  v22(v21);
  sub_1C96A53C4();
  sub_1C94B648C(v19);
  v23 = [objc_opt_self() mainBundle];
  sub_1C9493F34(v23);
  v24 = [objc_opt_self() defaultDeviceInfo];
  v25 = objc_allocWithZone(MEMORY[0x1E69C6D60]);
  OUTLINED_FUNCTION_2_66();
  v33 = OUTLINED_FUNCTION_1_70(v26, v27, v28, v29, v30, v31, v32, v1, v36, v37, v38, v39, v40, 2);

  OUTLINED_FUNCTION_74();

  return v34(v33);
}

uint64_t sub_1C963CC4C()
{
  v39 = v0;
  v1 = 0x303030303030;
  v3 = v0[30];
  v2 = v0[31];
  swift_willThrow();

  v0[18] = 0x303030303030;
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = 0xE600000000000000;
  v0[19] = 0xE600000000000000;
  sub_1C96A4284();
  sub_1C946DFF0();
  v8 = sub_1C96A7954();
  (*(v5 + 8))(v4, v6);

  if (v8[2])
  {
    v1 = v8[4];
    v7 = v8[5];
    sub_1C96A53C4();
  }

  OUTLINED_FUNCTION_6_51();
  v38[0] = v4 | 2;
  v38[1] = 0x80000001C96D5E00;
  MEMORY[0x1CCA8CB00](v1, v7);
  sub_1C96A53C4();
  v9 = sub_1C96A6134();
  v10 = sub_1C96A76A4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_9_8();
    v12 = OUTLINED_FUNCTION_8_4();
    v38[0] = v12;
    *v11 = 136446210;
    v13 = sub_1C9484164(v4 | 2, 0x80000001C96D5E00, v38);

    *(v11 + 4) = v13;
    OUTLINED_FUNCTION_7_43(&dword_1C945E000, v14, v15, "RemoteConfiguratin recordID=%{public}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  else
  {
  }

  v16 = v0[23];
  v17 = sub_1C96A4764();
  v18 = OUTLINED_FUNCTION_0_97(v17);
  v19(v18);
  sub_1C96A53C4();
  sub_1C94B648C(v16);
  v20 = [objc_opt_self() mainBundle];
  sub_1C9493F34(v20);
  v21 = [objc_opt_self() defaultDeviceInfo];
  v22 = objc_allocWithZone(MEMORY[0x1E69C6D60]);
  OUTLINED_FUNCTION_2_66();
  v30 = OUTLINED_FUNCTION_1_70(v23, v24, v25, v26, v27, v28, v29, v1, v33, v34, v35, v36, v37, 2);

  OUTLINED_FUNCTION_74();

  return v31(v30);
}

uint64_t *sub_1C963CF54(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1C9614994(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1C9611EA0(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AppConfigurationRemoteSettingsProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 57, 7);
}

uint64_t sub_1C963D03C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C963D0CC;

  return AppConfigurationRemoteSettingsProvider.settings.getter();
}

uint64_t sub_1C963D0CC()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;

  OUTLINED_FUNCTION_74();
  if (!v0)
  {
    v3 = v2;
  }

  return v4(v3);
}

id sub_1C963D1C4()
{
  v0 = [objc_opt_self() defaultDeviceInfo];
  v1 = objc_allocWithZone(MEMORY[0x1E69C6D60]);
  return sub_1C963D5A0(MEMORY[0x1E69E7CC0], 0x444972657375, 0xE600000000000000, 0x6F726665726F7473, 0xEC0000004449746ELL, 0x4449656C646E7562, 0xE800000000000000, v0, 0);
}

uint64_t sub_1C963D270()
{
  v1 = sub_1C963D1C4();
  v2 = *(v0 + 8);

  return v2(v1);
}

id sub_1C963D2D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v8 = v7;
  if (!a2)
  {
    v15 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  sub_1C946B5D0(0, &qword_1EDB7CD38);
  v15 = sub_1C96A7294();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C946B5D0(0, &qword_1EDB7CD38);
  v16 = sub_1C96A7294();

LABEL_6:
  LOBYTE(v19) = a7 & 1;
  v17 = [v8 initWithDisableAbTesting:a1 & 1 overrideSegmentSetIDs:v15 additionalSegmentSetIDs:v16 configurationSource:a4 debugEnvironment:a5 ignoreCache:a6 & 1 enableExtraLogs:v19];

  return v17;
}

id sub_1C963D3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14)
{
  v15 = sub_1C96A7004();

  v16 = sub_1C96A7004();

  v17 = sub_1C96A4764();
  v18 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v17) != 1)
  {
    v18 = sub_1C96A46E4();
    (*(*(v17 - 8) + 8))(a5, v17);
  }

  v19 = sub_1C96A7004();

  v20 = sub_1C96A7004();

  v21 = sub_1C96A7004();

  v22 = [v24 initWithRequestKey:v15 responseKey:v16 fallbackURL:v18 userID:v19 storefrontID:v20 bundleID:v21 deviceInfo:a12 debugOverrides:a13 requestMode:a14];

  return v22;
}

id sub_1C963D5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  sub_1C946B5D0(0, &qword_1EC3A77E8);
  v10 = sub_1C96A7294();

  v11 = sub_1C96A7004();

  v12 = sub_1C96A7004();

  v13 = sub_1C96A7004();

  v14 = [v16 initWithRequestInfos:v10 userID:v11 storefrontID:v12 bundleID:v13 deviceInfo:a8 debugOverrides:a9];

  return v14;
}

uint64_t sub_1C963D6CC(void *a1)
{
  v2 = [a1 ams_storefront];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C96A7024();

  return v3;
}

uint64_t dispatch thunk of AppConfigurationRemoteSettingsProviderType.settings.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C963D854;

  return v7(a1, a2);
}

uint64_t sub_1C963D854()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;

  OUTLINED_FUNCTION_74();

  return v2(v1);
}

unint64_t sub_1C963D998()
{
  result = qword_1EDB7B108[0];
  if (!qword_1EDB7B108[0])
  {
    type metadata accessor for AppConfigurationRemoteSettingsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7B108);
  }

  return result;
}

uint64_t PrivacySaltProvider.__allocating_init(identityService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C94924FC(a1, v2 + 16);
  return v2;
}

uint64_t PrivacySaltProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1C963DAC8()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C963DB30()
{
  v1 = *(v0 + 192);
  OUTLINED_FUNCTION_11_37();
  v2(v1);

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_1C963DBF4()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C963DC50()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C963DCAC()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t LocationsOfInterestDataSource.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  return v0;
}

uint64_t LocationsOfInterestDataSource.__deallocating_deinit()
{
  LocationsOfInterestDataSource.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 136, 7);
}

uint64_t sub_1C963DD84(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BF0);

  return sub_1C9569B88(a1);
}

uint64_t GeoJSON<>.assets.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6380);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7800);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v4 + 16))(v7, v1, v2, v12);
  if ((*(v4 + 88))(v7, v2) == *MEMORY[0x1E69E1960])
  {
    (*(v4 + 96))(v7, v2);
    v15 = swift_projectBox();
    (*(v10 + 16))(v14, v15, v8);

    v16 = sub_1C96A5F64();
    (*(v10 + 8))(v14, v8);
    if (v16)
    {
      return v16;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    (*(v4 + 8))(v7, v2);
    return 0;
  }
}

uint64_t sub_1C963E060(void *a1)
{
  a1[1] = sub_1C9469CB4(&unk_1EC3A6440, &unk_1EC3A6380);
  a1[2] = sub_1C9469CB4(&qword_1EC3A7818, &unk_1EC3A6380);
  result = sub_1C9469CB4(&qword_1EC3A7820, &unk_1EC3A6380);
  a1[3] = result;
  return result;
}

uint64_t sub_1C963E124(void *a1)
{
  a1[1] = sub_1C9469CB4(&qword_1EC3A7828, &qword_1EC3A7810);
  a1[2] = sub_1C9469CB4(&qword_1EC3A7830, &qword_1EC3A7810);
  result = sub_1C9469CB4(&qword_1EC3A7838, &qword_1EC3A7810);
  a1[3] = result;
  return result;
}

void sub_1C963E29C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1C96A3D04();
  v4 = a2;
  v3();
}

id sub_1C963E304()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_1C963E35C();
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1C963E35C()
{
  v0 = sub_1C96A5294();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C94F02CC();
  if (qword_1EDB7A468 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A51A4();
  __swift_project_value_buffer(v4, qword_1EDB7A470);
  v5 = sub_1C96A5194();
  v7 = sub_1C9611DB8(v5, v6, 4096);
  sub_1C96A5184();
  v8 = sub_1C96A5284();
  (*(v1 + 8))(v3, v0);
  [v7 setRemoteObjectInterface_];

  return v7;
}

uint64_t DaemonDecommissioningManager.__allocating_init()()
{
  v0 = swift_allocObject();
  DaemonDecommissioningManager.init()();
  return v0;
}

void *DaemonDecommissioningManager.init()()
{
  v1 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  v2 = sub_1C96A5124();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  return v0;
}

uint64_t sub_1C963E594()
{
  sub_1C96A50E4();
  v1 = *(v0 + 24);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
    if (qword_1EDB7AC20 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC28);
  sub_1C96A3D04();
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 134349314;
    *(v7 + 4) = *(v0 + 24);

    *(v7 + 12) = 2082;
    if (qword_1EDB7A468 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A51A4();
    __swift_project_value_buffer(v9, qword_1EDB7A470);
    v10 = sub_1C96A5194();
    v12 = sub_1C9484164(v10, v11, &v23);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1C945E000, v5, v6, "Increasing connection reference count to %{public}ld for: %{public}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 24) == 1)
  {
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      if (qword_1EDB7A468 != -1)
      {
        swift_once();
      }

      v17 = sub_1C96A51A4();
      __swift_project_value_buffer(v17, qword_1EDB7A470);
      v18 = sub_1C96A5194();
      v20 = sub_1C9484164(v18, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1C945E000, v13, v14, "Resuming connection for: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    v21 = sub_1C963E304();
    [v21 resume];
  }

  return sub_1C96A50F4();
}

uint64_t sub_1C963E8B8()
{
  sub_1C96A50E4();
  v1 = *(v0 + 24);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v3;
    if (qword_1EDB7AC20 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC28);
  sub_1C96A3D04();
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 134349314;
    *(v7 + 4) = *(v0 + 24);

    *(v7 + 12) = 2082;
    if (qword_1EDB7A468 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A51A4();
    __swift_project_value_buffer(v9, qword_1EDB7A470);
    v10 = sub_1C96A5194();
    v12 = sub_1C9484164(v10, v11, &v23);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_1C945E000, v5, v6, "Decreasing connection reference count to %{public}ld for: %{public}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
    MEMORY[0x1CCA8E3D0](v7, -1, -1);
  }

  else
  {
  }

  if (!*(v0 + 24))
  {
    v13 = sub_1C96A6134();
    v14 = sub_1C96A76A4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136446210;
      if (qword_1EDB7A468 != -1)
      {
        swift_once();
      }

      v17 = sub_1C96A51A4();
      __swift_project_value_buffer(v17, qword_1EDB7A470);
      v18 = sub_1C96A5194();
      v20 = sub_1C9484164(v18, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1C945E000, v13, v14, "Suspending connection for: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
    }

    v21 = sub_1C963E304();
    [v21 suspend];
  }

  return sub_1C96A50F4();
}

uint64_t DaemonDecommissioningManager.deinit()
{

  return v0;
}

uint64_t DaemonDecommissioningManager.__deallocating_deinit()
{
  DaemonDecommissioningManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1C963EC54()
{
  v27 = v0;
  sub_1C963E594();
  v1 = swift_allocObject();
  v0[22] = v1;
  *(v1 + 16) = 0;
  v2 = sub_1C963E304();
  v0[14] = sub_1C963F544;
  v0[15] = v1;
  v3 = MEMORY[0x1E69E9820];
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C963E29C;
  v0[13] = &block_descriptor_19;
  v4 = _Block_copy(v0 + 10);
  sub_1C96A3D04();

  v5 = [v2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v4);

  sub_1C96A79C4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7840);
  if (!swift_dynamicCast())
  {
    if (qword_1EDB7AC20 != -1)
    {
      swift_once();
    }

    v9 = sub_1C96A6154();
    __swift_project_value_buffer(v9, qword_1EDB7AC28);
    v10 = sub_1C96A6134();
    v11 = sub_1C96A7684();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136446210;
      if (qword_1EDB7A468 != -1)
      {
        swift_once();
      }

      v14 = sub_1C96A51A4();
      __swift_project_value_buffer(v14, qword_1EDB7A470);
      v15 = sub_1C96A5194();
      v17 = sub_1C9484164(v15, v16, &v26);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1C945E000, v10, v11, "Remote object proxy remote interface mismatch for: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      OUTLINED_FUNCTION_26();
      OUTLINED_FUNCTION_26();
    }

    sub_1C963F54C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v6 = v0[18];
  v0[23] = v6;
  swift_beginAccess();
  v7 = *(v1 + 16);
  if (v7)
  {
    swift_willThrow();
    v8 = v7;
    swift_unknownObjectRelease();
LABEL_11:

    sub_1C963E8B8();
    OUTLINED_FUNCTION_17();

    return v19();
  }

  if (qword_1EC3A47A8 != -1)
  {
    swift_once();
  }

  v21 = sub_1C96A6154();
  v0[24] = __swift_project_value_buffer(v21, qword_1EC3A7478);
  v22 = sub_1C96A6134();
  v23 = sub_1C96A7684();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1C945E000, v22, v23, "About to perform decommissioning", v24, 2u);
    OUTLINED_FUNCTION_26();
  }

  v0[2] = v0;
  v0[3] = sub_1C963F134;
  v25 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A55E0);
  v0[10] = v3;
  v0[11] = 1107296256;
  v0[12] = sub_1C9545D94;
  v0[13] = &block_descriptor_3;
  v0[14] = v25;
  [v6 decommissionWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C963F134()
{
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C963F20C, 0, 0);
}

uint64_t sub_1C963F20C()
{
  v0 = sub_1C96A6134();
  v1 = sub_1C96A7684();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C945E000, v0, v1, "Finished decommissioning", v2, 2u);
    OUTLINED_FUNCTION_26();
  }

  swift_unknownObjectRelease();

  sub_1C963E8B8();
  OUTLINED_FUNCTION_17();

  return v3();
}

void sub_1C963F2F0(void *a1, uint64_t a2)
{
  if (qword_1EDB7AC20 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC28);
  v5 = a1;
  v6 = sub_1C96A6134();
  v7 = sub_1C96A7684();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22[0] = v9;
    *v8 = 136446466;
    if (qword_1EDB7A468 != -1)
    {
      swift_once();
    }

    v10 = sub_1C96A51A4();
    __swift_project_value_buffer(v10, qword_1EDB7A470);
    v11 = sub_1C96A5194();
    v13 = sub_1C9484164(v11, v12, v22);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v15 = sub_1C96A70A4();
    v17 = sub_1C9484164(v15, v16, v22);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1C945E000, v6, v7, "Failed to get remote object proxy for: %{public}s with error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
  }

  sub_1C963F54C();
  v18 = swift_allocError();
  *v19 = a1;
  swift_beginAccess();
  v20 = *(a2 + 16);
  *(a2 + 16) = v18;
  v21 = a1;
}

unint64_t sub_1C963F54C()
{
  result = qword_1EC3A7848;
  if (!qword_1EC3A7848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A7848);
  }

  return result;
}

uint64_t sub_1C963F5A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C963F630;

  return DaemonDecommissioningManager.decommission()();
}

uint64_t sub_1C963F630()
{
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t dispatch thunk of DaemonDecommissioningManagerType.decommission()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C963F630;

  return v7(a1, a2);
}

uint64_t sub_1C963F8A8()
{
  OUTLINED_FUNCTION_18();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v4);
  v1[8] = swift_task_alloc();
  v5 = type metadata accessor for SyncedData();
  v1[9] = v5;
  OUTLINED_FUNCTION_7(v5);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C963F970()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_syncedData;
  swift_beginAccess();
  sub_1C9573924(v2 + v3, v1);
  if (OUTLINED_FUNCTION_2_67() == 1)
  {
    OUTLINED_FUNCTION_0_50();
    sub_1C9573A60(v4 + v5, v6, v7);
    if (OUTLINED_FUNCTION_2_67() != 1)
    {
      sub_1C9573994(v0[8]);
    }
  }

  else
  {
    sub_1C95739FC(v0[8], v0[11]);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CE8);
  v11 = *(type metadata accessor for Location() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C96AA1C0;
  sub_1C9573A60(v10, v13 + v12, type metadata accessor for Location);
  SyncedData.init(locations:)();
  sub_1C949506C(&qword_1EDB7A5B0, type metadata accessor for SyncedData);
  sub_1C96A6D34();
  sub_1C9573AC8(v9);
  sub_1C9573AC8(v8);

  OUTLINED_FUNCTION_17();

  return v14();
}

uint64_t sub_1C963FB8C()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v3);
  v1[7] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C963FC18(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_98();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C963FC40()
{
  v1 = *(v0 + 16);
  sub_1C94947B4();
  sub_1C94948B8();
  sub_1C9494964();
  sub_1C9494A68();
  sub_1C96A6CC4();
  v2 = type metadata accessor for SyncedData();
  type metadata accessor for SyncedLocationDisplayContext();
  OUTLINED_FUNCTION_3_26();
  sub_1C949506C(v3, v4);
  sub_1C96A6BE4();
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_1C963FD64()
{
  OUTLINED_FUNCTION_18();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  OUTLINED_FUNCTION_7(v3);
  v1[7] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C963FDF0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_syncedData;
  swift_beginAccess();
  sub_1C9573924(v2 + v3, v1);
  type metadata accessor for SyncedData();
  if (OUTLINED_FUNCTION_2_67() == 1)
  {
    OUTLINED_FUNCTION_0_50();
    sub_1C9573A60(v4 + v5, v6, v7);
    if (OUTLINED_FUNCTION_2_67() != 1)
    {
      sub_1C9573994(v0[7]);
    }
  }

  else
  {
    sub_1C95739FC(v0[7], v0[5]);
  }

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t sub_1C963FED8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_syncedData;
  OUTLINED_FUNCTION_7_21();
  return sub_1C9573924(v1 + v3, a1);
}

uint64_t sub_1C963FF20(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_makeData);
  if (!v2)
  {
    return 0;
  }

  sub_1C96A3D04();
  v4 = v2(a1);
  sub_1C94E1D90(v2);
  return v4;
}

uint64_t sub_1C963FFA0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  OUTLINED_FUNCTION_0_50();
  sub_1C9573A60(a1, v6, v7);
  v8 = type metadata accessor for SyncedData();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_syncedData;
  swift_beginAccess();
  sub_1C95738B4(v6, v1 + v9);
  swift_endAccess();
  return 0;
}

uint64_t sub_1C9640098()
{
  sub_1C9573994(v0 + OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_syncedData);
  sub_1C9573AC8(v0 + OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_defaultSyncedData);
  sub_1C94E1D90(*(v0 + OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_makeSyncedData));
  sub_1C94E1D90(*(v0 + OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_makeData));
  return v0;
}

uint64_t sub_1C96400F8()
{
  sub_1C9640098();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for StubCoherenceDataManager()
{
  result = qword_1EC3A7850;
  if (!qword_1EC3A7850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C96401A4()
{
  sub_1C94940C4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SyncedData();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1C964027C()
{
  v1 = OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_syncedData;
  v2 = type metadata accessor for SyncedData();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_defaultSyncedData;
  sub_1C94947B4();
  sub_1C94948B8();
  sub_1C9494964();
  sub_1C9494A68();
  sub_1C96A6CC4();
  type metadata accessor for SyncedLocationDisplayContext();
  OUTLINED_FUNCTION_3_26();
  sub_1C949506C(v4, v5);
  sub_1C96A6BE4();
  *(v3 + *(v2 + 24)) = MEMORY[0x1E69E7CC8];
  v6 = (v0 + OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_makeSyncedData);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC11WeatherCore24StubCoherenceDataManager_makeData);
  *v7 = 0;
  v7[1] = 0;
  return v0;
}

uint64_t sub_1C96403B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C964045C;

  return sub_1C963F8A8();
}

uint64_t sub_1C964045C()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_17();

  return v0();
}

uint64_t sub_1C9640548()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C9640918;

  return sub_1C963FB8C();
}

uint64_t sub_1C96405E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C9640918;

  return sub_1C963FC18(a1);
}

uint64_t sub_1C964067C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C9640918;

  return sub_1C963FD64();
}

uint64_t sub_1C9640768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C96407F4;

  return sub_1C964007C();
}

uint64_t sub_1C96407F4()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v7 = *v0;

  v5 = *(v7 + 8);

  return v5(v4, v2);
}

uint64_t sub_1C9640920()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7860);
  OUTLINED_FUNCTION_7(v0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - v2;
  sub_1C96A53C4();
  sub_1C9640A4C();
  v4 = sub_1C96A5EA4();
  OUTLINED_FUNCTION_6_52(v3, v5, v6, v4);
  return sub_1C96A5BD4();
}

uint64_t sub_1C9640A4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7868);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7870);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1C96A5E84();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_1C9640B84();
  sub_1C9640E98();
  v7 = sub_1C96A5EE4();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v7);
  return sub_1C96A5E94();
}

uint64_t sub_1C9640B84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7880);
  sub_1C96A5EC4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C96BA7C0;
  sub_1C96A5EB4();
  sub_1C96A5EB4();
  sub_1C96A5EB4();
  sub_1C96A5EB4();
  sub_1C96A5EB4();
  sub_1C96A5EB4();
  return v0;
}

uint64_t sub_1C9640E98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7878);
  sub_1C96A5F04();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C96B2AC0;
  sub_1C96A5EF4();
  sub_1C96A5EF4();
  sub_1C96A5EF4();
  sub_1C96A5EF4();
  sub_1C96A5EF4();
  sub_1C96A5EF4();
  sub_1C96A5EF4();
  sub_1C96A5EF4();

  return MEMORY[0x1EEE51080](v0);
}

uint64_t sub_1C96410E0()
{
  v0 = sub_1C96A5DD4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1C96A4A54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C94CAB74(&OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextMinutes, sub_1C94CE688);
  if (*(result + 16))
  {
    (*(v8 + 16))(v10, result + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7);

    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    (*(v1 + 104))(v3, *MEMORY[0x1E69E1920], v0);
    return sub_1C96A5CD4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C9641334()
{

  v1 = OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_currentWeatherCondition;
  v2 = sub_1C96A5AD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1C96413F0()
{
  sub_1C9641334();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}