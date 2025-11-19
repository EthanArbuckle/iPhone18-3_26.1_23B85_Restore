uint64_t WorkoutDevicesProviderTester.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 64);
  v5 = *(v0 + 88);

  v6 = *(v0 + 104);
  v7 = *(v0 + 120);
  v8 = *(v0 + 144);
  v9 = *(v0 + 168);

  v10 = *(v0 + 184);
  v11 = *(v0 + 200);
  v12 = *(v0 + 224);
  v13 = *(v0 + 248);

  v14 = *(v0 + 264);
  v15 = *(v0 + 280);
  v16 = *(v0 + 304);
  v17 = *(v0 + 328);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall WorkoutDevicesProviderTester.addTestDevice(_:)(WorkoutCore::WorkoutDevice *a1)
{
  v2 = *&a1->systemImage._object;
  *&v5.type = *&a1->type;
  *&v5.systemImage._object = v2;
  v5.productModel = a1->productModel;
  name = a1->name;
  v5.id = a1->id;
  v5.name = name;
  v4 = *(v1 + 336);
  WorkoutDevicesProvider.addDevice(_:)(&v5);
}

Swift::Void __swiftcall WorkoutDevicesProviderTester.removeTestDevice(_:)(WorkoutCore::WorkoutDevice *a1)
{
  v2 = *&a1->systemImage._object;
  *&v5.type = *&a1->type;
  *&v5.systemImage._object = v2;
  v5.productModel = a1->productModel;
  name = a1->name;
  v5.id = a1->id;
  v5.name = name;
  v4 = *(v1 + 336);
  WorkoutDevicesProvider.removeDevice(_:)(&v5);
}

void WorkoutDevicesProviderTester.observeTestingNotifications()()
{
  v0 = 0;
  do
  {
    v1 = outlined read-only object #0 of static WorkoutDeviceConnectionNotification.allCases.getter[v0++ + 32];
    v2 = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = 0xD00000000000001DLL;
    if (v1 != 6)
    {
      v3 = 0xD000000000000020;
    }

    v4 = "wo_disconnect_powerbeats";
    if (v1 != 6)
    {
      v4 = "wo_connect_heart_rate_monitor";
    }

    v5 = 0xD000000000000018;
    if (v1 == 4)
    {
      v5 = 0xD000000000000015;
    }

    v6 = "wo_disconnect_airpods";
    if (v1 != 4)
    {
      v6 = "wo_connect_powerbeats";
    }

    if (v1 <= 5)
    {
      v3 = v5;
      v4 = v6;
    }

    if (v1 == 2)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (v1 == 2)
    {
      v8 = "wo_disconnect_watch";
    }

    else
    {
      v8 = "wo_connect_airpods";
    }

    v10 = "alertValue";
    v9 = 0xD000000000000010;
    if (v1)
    {
      v9 = 0xD000000000000013;
      v10 = "wo_connect_watch";
    }

    if (v1 <= 1)
    {
      v7 = v9;
      v8 = v10;
    }

    if (v1 <= 3)
    {
      v11 = v7;
    }

    else
    {
      v11 = v3;
    }

    if (v1 <= 3)
    {
      v12 = v8;
    }

    else
    {
      v12 = v4;
    }

    v13 = MEMORY[0x20F2E6C00](v11, v12 | 0x8000000000000000);

    CFNotificationCenterAddObserver(v2, observer, @objc closure #1 in WorkoutDevicesProviderTester.observe(notification:), v13, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  while (v0 != 8);
}

void @objc closure #1 in WorkoutDevicesProviderTester.observe(notification:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in WorkoutDevicesProviderTester.observe(notification:)(a2, a3);
}

void WorkoutDevicesProviderTester.handleNotification(_:)(_BYTE *a1)
{
  v2 = *a1;
  if (v2 > 3)
  {
    if (*a1 > 5u)
    {
      if (v2 == 6)
      {
        v8 = *(v1 + 304);
        *&v17.type = *(v1 + 288);
        *&v17.systemImage._object = v8;
        v17.productModel = *(v1 + 320);
        v5 = *(v1 + 256);
        v4 = *(v1 + 272);
        goto LABEL_12;
      }

      v15 = *(v1 + 304);
      *&v17.type = *(v1 + 288);
      *&v17.systemImage._object = v15;
      v17.productModel = *(v1 + 320);
      v12 = *(v1 + 256);
      v11 = *(v1 + 272);
    }

    else
    {
      if (v2 == 4)
      {
        v6 = *(v1 + 224);
        *&v17.type = *(v1 + 208);
        *&v17.systemImage._object = v6;
        v17.productModel = *(v1 + 240);
        v5 = *(v1 + 176);
        v4 = *(v1 + 192);
        goto LABEL_12;
      }

      v13 = *(v1 + 224);
      *&v17.type = *(v1 + 208);
      *&v17.systemImage._object = v13;
      v17.productModel = *(v1 + 240);
      v12 = *(v1 + 176);
      v11 = *(v1 + 192);
    }
  }

  else if (*a1 > 1u)
  {
    if (v2 == 2)
    {
      v7 = *(v1 + 144);
      *&v17.type = *(v1 + 128);
      *&v17.systemImage._object = v7;
      v17.productModel = *(v1 + 160);
      v5 = *(v1 + 96);
      v4 = *(v1 + 112);
      goto LABEL_12;
    }

    v14 = *(v1 + 144);
    *&v17.type = *(v1 + 128);
    *&v17.systemImage._object = v14;
    v17.productModel = *(v1 + 160);
    v12 = *(v1 + 96);
    v11 = *(v1 + 112);
  }

  else
  {
    if (!*a1)
    {
      v3 = *(v1 + 64);
      *&v17.type = *(v1 + 48);
      *&v17.systemImage._object = v3;
      v17.productModel = *(v1 + 80);
      v5 = *(v1 + 16);
      v4 = *(v1 + 32);
LABEL_12:
      v17.id = v5;
      v17.name = v4;
      v9 = *(v1 + 336);
      WorkoutDevicesProvider.addDevice(_:)(&v17);
      return;
    }

    v10 = *(v1 + 64);
    *&v17.type = *(v1 + 48);
    *&v17.systemImage._object = v10;
    v17.productModel = *(v1 + 80);
    v12 = *(v1 + 16);
    v11 = *(v1 + 32);
  }

  v17.id = v12;
  v17.name = v11;
  v16 = *(v1 + 336);
  WorkoutDevicesProvider.removeDevice(_:)(&v17);
}

uint64_t specialized WorkoutDevicesProviderTester.init(devicesProvider:)(void *a1)
{
  v2 = v1;
  v35 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  v11 = *(v4 + 8);
  v11(v7, v3);
  *(v2 + 16) = v8;
  *(v2 + 24) = v10;
  *(v2 + 32) = 0xD000000000000010;
  *(v2 + 40) = 0x800000020B467680;
  *(v2 + 48) = 0;
  *(v2 + 49) = *v39;
  *(v2 + 52) = *&v39[3];
  *(v2 + 56) = 0xD000000000000015;
  *(v2 + 64) = 0x800000020B45C750;
  *(v2 + 72) = 1;
  *(v2 + 73) = *v38;
  *(v2 + 76) = *&v38[3];
  *(v2 + 80) = 0xD000000000000010;
  *(v2 + 88) = 0x800000020B467680;
  v12 = specialized static SmartRoutingDeviceSymbolNameProvider.symbolName(forProductID:)(8231);
  v14 = v13;
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  v11(v7, v3);
  v18 = 0x7073646F70726961;
  if (v14)
  {
    v18 = v12;
  }

  v19 = 0xEA00000000006F72;
  if (v14)
  {
    v19 = v14;
  }

  *(v2 + 96) = v15;
  *(v2 + 104) = v17;
  strcpy((v2 + 112), "Test AirPods");
  *(v2 + 125) = 0;
  *(v2 + 126) = -5120;
  *(v2 + 128) = 1;
  *(v2 + 136) = v18;
  *(v2 + 144) = v19;
  *(v2 + 152) = 1;
  *(v2 + 160) = xmmword_20B445230;
  v20 = specialized static SmartRoutingDeviceSymbolNameProvider.symbolName(forProductID:)(8221);
  v22 = v21;
  UUID.init()();
  v23 = UUID.uuidString.getter();
  v25 = v24;
  v11(v7, v3);
  v26 = 0x7073646F70726961;
  if (v22)
  {
    v26 = v20;
  }

  v27 = 0xEA00000000006F72;
  if (v22)
  {
    v27 = v22;
  }

  *(v2 + 176) = v23;
  *(v2 + 184) = v25;
  *(v2 + 192) = 0xD000000000000013;
  *(v2 + 200) = 0x800000020B4676A0;
  *(v2 + 208) = 1;
  *(v2 + 216) = v26;
  *(v2 + 224) = v27;
  *(v2 + 232) = 1;
  *(v2 + 240) = 0xD000000000000013;
  *(v2 + 248) = 0x800000020B4676A0;
  UUID.init()();
  v28 = UUID.uuidString.getter();
  v30 = v29;
  v11(v7, v3);
  *(v2 + 256) = v28;
  *(v2 + 264) = v30;
  *(v2 + 272) = 0xD000000000000017;
  *(v2 + 280) = 0x800000020B4676C0;
  *(v2 + 288) = 2;
  *(v2 + 289) = *v37;
  *(v2 + 292) = *&v37[3];
  *(v2 + 296) = 0x69662E7472616568;
  *(v2 + 304) = 0xEA00000000006C6CLL;
  *(v2 + 312) = 1;
  *(v2 + 313) = *v36;
  *(v2 + 316) = *&v36[3];
  *(v2 + 320) = 0xD000000000000017;
  *(v2 + 328) = 0x800000020B4676C0;
  v31 = v35;
  *(v2 + 336) = v35;
  v32 = v31;
  WorkoutDevicesProviderTester.observeTestingNotifications()();
  return v2;
}

uint64_t specialized closure #1 in WorkoutDevicesProviderTester.observe(notification:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    type metadata accessor for WorkoutDevicesProviderTester();
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass() && a2)
    {
      v3._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
      WorkoutDeviceConnectionNotification.init(rawValue:)(v3);
      if (v5 != 8)
      {
        v4 = v5;
        WorkoutDevicesProviderTester.handleNotification(_:)(&v4);
      }

      return swift_unknownObjectRelease();
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id specialized static PreviewChecker.isPreview.getter()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x800000020B467710), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];
  }

  else
  {
    v6 = 0xE100000000000000;
    v7 = 48;
  }

  v8 = MEMORY[0x20F2E6C00](v7, v6);

  v9 = [v8 BOOLValue];

  return v9;
}

id FakeCMLiveSkiData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FakeCMLiveSkiData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FakeCMLiveSkiData()
{
  result = type metadata singleton initialization cache for FakeCMLiveSkiData;
  if (!type metadata singleton initialization cache for FakeCMLiveSkiData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for FakeCMLiveSkiData()
{
  result = type metadata accessor for Date();
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

BOOL WorkoutConfiguration.isEditable.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 - 1) >= 3)
  {
    return v2 == 0;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v6 = static WorkoutDevicesProvider.shared;
    v3 = static WorkoutDevicesProvider.shared;
    v4 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();
  }

  return v4;
}

Swift::Bool __swiftcall WorkoutConfiguration.canStartWorkout(with:includeCurrentPlatform:)(Swift::OpaquePointer with, Swift::Bool includeCurrentPlatform)
{
  rawValue = with._rawValue;
  if (includeCurrentPlatform)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_3;
  }

  v6 = *(with._rawValue + 2);

LABEL_7:
  v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  swift_beginAccess();
  if (v6)
  {
    v9 = 0;
    v10 = &selRef_totalDiskCapacity;
    v24 = v6;
    do
    {
      if (v9 >= *(rawValue + 2))
      {
        __break(1u);
LABEL_38:
        rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(rawValue + 2) + 1, 1, rawValue);
LABEL_3:
        v5 = *(rawValue + 2);
        v4 = *(rawValue + 3);
        v6 = v5 + 1;
        if (v5 >= v4 >> 1)
        {
          rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1, rawValue);
        }

        *(rawValue + 2) = v6;
        rawValue[v5 + 32] = 3;
        goto LABEL_7;
      }

      v11 = rawValue[v9 + 32];
      if (([*&v2[v7] v10[18]] & 1) == 0)
      {
        if (v2[v8])
        {
          if (!v11)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v11 != 3)
          {
            goto LABEL_20;
          }

          v12 = *&v2[v7];
          v13 = [v12 effectiveTypeIdentifier];
          if ((v13 - 13) > 0x3A || ((1 << (v13 - 13)) & 0x600008001000801) == 0)
          {

            goto LABEL_10;
          }

          v15 = [v12 isIndoor];

          if ((v15 & 1) == 0)
          {
LABEL_20:
            type metadata accessor for GoalWorkoutConfiguration();
            if (!swift_dynamicCastClass())
            {
              goto LABEL_34;
            }

            v16 = v8;
            swift_getKeyPath();
            swift_getKeyPath();
            v17 = v2;
            static Published.subscript.getter();

            v18 = [v25 goalTypeIdentifier];

            if (v18 != 1)
            {

              return 1;
            }

            v19 = *&v2[v7];
            v20 = [v19 isIndoor];
            if ([v19 isDownhillSnowSport])
            {

              v21 = 0;
            }

            else
            {
              v22 = [v19 effectiveTypeIdentifier];

              v21 = v22 != 21;
            }

            v8 = v16;
            v6 = v24;
            v10 = &selRef_totalDiskCapacity;
            if (v11 <= 1)
            {
              if (v11 != 1 || v21)
              {
LABEL_34:

                return 1;
              }
            }

            else if (v11 != 2 && !(v20 & 1 | !v21))
            {
              goto LABEL_34;
            }
          }
        }
      }

LABEL_10:
      ++v9;
    }

    while (v6 != v9);
  }

  return 0;
}

uint64_t WorkoutConfiguration.startButtonState(with:)@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23[-v6];
  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  if (*(v1 + v8) && (v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate, swift_beginAccess(), outlined init with copy of Date?(v1 + v9, v7), v10 = type metadata accessor for Date(), LODWORD(v9) = (*(*(v10 - 8) + 48))(v7, 1, v10), result = outlined destroy of Date?(v7), v9 != 1))
  {
    v19 = 3;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v12 = rawValue;
    v13 = rawValue[2];
    if (v13)
    {
      rawValue = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v14._rawValue = rawValue;
      v15 = rawValue[2];
      v16 = 8;
      do
      {
        v17 = v12[v16];
        rawValue = v14._rawValue;
        v18 = *(v14._rawValue + 3);
        if (v15 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v15 + 1, 1);
          v14._rawValue = rawValue;
        }

        *(v14._rawValue + 2) = v15 + 1;
        *(v14._rawValue + v15 + 32) = v17;
        v16 += 10;
        ++v15;
        --v13;
      }

      while (v13);
    }

    else
    {

      v14._rawValue = MEMORY[0x277D84F90];
    }

    v20 = WorkoutConfiguration.canStartWorkout(with:includeCurrentPlatform:)(v14, 1);

    if (v20)
    {
      v19 = 0;
    }

    else
    {
      v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      result = [*(v2 + v21) isWaterLockActivity];
      if ((result & 1) != 0 || (v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_type, result = swift_beginAccess(), *(v2 + v22)))
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }
    }
  }

  *a1 = v19;
  return result;
}

void CyclingSensorsStore.CentralManagerDelegate.centralManagerDidUpdateState(_:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.core);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = [v5 state];

    _os_log_impl(&dword_20AEA4000, v6, v7, "[CyclingSensors] isPowerMeterAvailable: centralManagerDidUpdateState to: %ld", v8, 0xCu);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  if ([v5 state]== 5)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v10, "[CyclingSensors] isPowerMeterAvailable: central is poweredOn", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = *MEMORY[0x277CCC9C0];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_20B423A90;
    *(v16 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v16 + 40) = v17;

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v31 = v15;
      v20 = v2;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      v23 = MEMORY[0x20F2E6F70](v16, MEMORY[0x277D837D0]);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_20AEA4000, v18, v19, "[CyclingSensors] isPowerMeterAvailable: retrievePeripherals with tags: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x20F2E9420](v22, -1, -1);
      v26 = v21;
      v2 = v20;
      v15 = v31;
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    v28 = swift_allocObject();
    v28[2] = v13;
    v28[3] = v15;
    v28[4] = v2;
    aBlock[4] = partial apply for closure #1 in CyclingSensorsStore.CentralManagerDelegate.centralManagerDidUpdateState(_:);
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [CBPeripheral], @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_65;
    v29 = _Block_copy(aBlock);
    v30 = v2;

    [v5 retrievePeripheralsWithTags:isa completion:v29];
    _Block_release(v29);
  }
}

uint64_t closure #1 in CyclingSensorsStore.CentralManagerDelegate.centralManagerDidUpdateState(_:)(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.core);

    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_7;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v31 = v15;
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v31);
    *(v13 + 12) = 2112;
    v16 = a2;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[CyclingSensors] isPowerMeterAvailable: Cannot retrieve tagged %s peripherals, power meter is not available, error: %@", v13, 0x16u);
    _sypSgWOhTm_3(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v18 = v15;
LABEL_6:
    MEMORY[0x20F2E9420](v18, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
LABEL_7:

    v19 = 0;
    goto LABEL_16;
  }

  if (a1 >> 62)
  {
    v20 = __CocoaSet.count.getter();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.core);

    v11 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v11, v29))
    {
      goto LABEL_7;
    }

    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v31);
    _os_log_impl(&dword_20AEA4000, v11, v29, "[CyclingSensors] isPowerMeterAvailable: No peripherals found with tag %s, power meter is not available", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v18 = v30;
    goto LABEL_6;
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.core);

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136315138;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v31);
    _os_log_impl(&dword_20AEA4000, v22, v23, "[CyclingSensors] isPowerMeterAvailable: Central retrieved %%d peripherals tagged %s, power meter is available", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x20F2E9420](v25, -1, -1);
    MEMORY[0x20F2E9420](v24, -1, -1);
  }

  v19 = 1;
LABEL_16:
  v26 = *(a5 + OBJC_IVAR____TtCC11WorkoutCore19CyclingSensorsStoreP33_BFB47E54904849BCE37B11B0EFE4650622CentralManagerDelegate_completion + 8);
  return (*(a5 + OBJC_IVAR____TtCC11WorkoutCore19CyclingSensorsStoreP33_BFB47E54904849BCE37B11B0EFE4650622CentralManagerDelegate_completion))(v19);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [CBPeripheral], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  type metadata accessor for CBPeripheral();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a3;
  v5(v6, a3);
}

id CyclingSensorsStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CyclingSensorsStore.init()()
{
  *&v0[OBJC_IVAR____TtC11WorkoutCore19CyclingSensorsStore_centralManagerDelegate] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore19CyclingSensorsStore_centralManager] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CyclingSensorsStore();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t CyclingSensorsStore.isPowerMeterAvailable(completion:)(uint64_t (*a1)(uint64_t))
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B467870);
  v5 = [v3 objectForKey_];

  if (!v5)
  {
    memset(v16, 0, sizeof(v16));
    _sypSgWOhTm_3(v16, &_sypSgMd, &_sypSgMR);
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.core);
    v10 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v14))
    {
      v8 = 1;
      goto LABEL_12;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20AEA4000, v10, v14, "[CyclingSensors] isPowerMeterAvailable: cannot detect, assuming paired watch has power meter in BT settings, return true", v12, 2u);
    v8 = 1;
    goto LABEL_10;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _sypSgWOhTm_3(v16, &_sypSgMd, &_sypSgMR);
  v6 = [v2 standardUserDefaults];
  v7 = MEMORY[0x20F2E6C00](0xD000000000000013, 0x800000020B467870);
  v8 = [v6 BOOLForKey_];

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.core);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_20AEA4000, v10, v11, "[CyclingSensors] isPowerMeterAvailable: PowerMeterAvailable test default is set, return: %{BOOL}d", v12, 8u);
LABEL_10:
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

LABEL_12:

  return a1(v8);
}

id CyclingSensorsStore.CentralManagerDelegate.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t type metadata accessor for CBPeripheral()
{
  result = lazy cache variable for type metadata for CBPeripheral;
  if (!lazy cache variable for type metadata for CBPeripheral)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CBPeripheral);
  }

  return result;
}

void *StandardActivityPickerItem.topSuggested.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLStandardActivityPickerItem_topSuggested);
  v2 = v1;
  return v1;
}

id StandardActivityPickerItem.compoundItem.getter()
{
  v1 = *&v0[OBJC_IVAR___NLStandardActivityPickerItem_activityType];
  v2 = type metadata accessor for CompoundActivityPickerItem();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v1;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v0;
  v7.receiver = v3;
  v7.super_class = v2;
  v4 = v0;
  v5 = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id StandardActivityPickerItem.__allocating_init(type:activityType:goal:topSuggested:)(char *a1, void *a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = specialized StandardActivityPickerItem.init(type:activityType:goal:topSuggested:)(a1, a2, a3, a4);

  return v10;
}

id StandardActivityPickerItem.init(type:activityType:goal:topSuggested:)(char *a1, void *a2, void *a3, void *a4)
{
  v7 = specialized StandardActivityPickerItem.init(type:activityType:goal:topSuggested:)(a1, a2, a3, a4);

  return v7;
}

uint64_t StandardActivityPickerItem.detail(formattingManager:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___NLStandardActivityPickerItem_goal);
  v4 = [v3 goalTypeIdentifier];
  [v3 doubleValue];
  v5 = [a1 localizedGoalDescriptionForGoalType:v4 goalValue:*(v1 + OBJC_IVAR___NLStandardActivityPickerItem_activityType) activityType:?];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = *(v1 + OBJC_IVAR___NLStandardActivityPickerItem_topSuggested);
    if (v8)
    {
      v9 = v8;

      v7 = WorkoutConfiguration.displayDetail(formatter:)(a1);
    }

    return v7;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id StandardActivityPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StandardActivityPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StandardActivityPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void StandardActivityPickerItem.copy(with:)(void *a1@<X8>)
{
  v11 = *(v1 + OBJC_IVAR___NLStandardActivityPickerItem_type);
  v3 = *(v1 + OBJC_IVAR___NLStandardActivityPickerItem_activityType);
  v4 = *(v1 + OBJC_IVAR___NLStandardActivityPickerItem_goal);
  v5 = *(v1 + OBJC_IVAR___NLStandardActivityPickerItem_topSuggested);
  v6 = type metadata accessor for StandardActivityPickerItem();
  objc_allocWithZone(v6);
  v7 = v5;
  v8 = v3;
  v9 = v4;
  v10 = specialized StandardActivityPickerItem.init(type:activityType:goal:topSuggested:)(&v11, v8, v9, v5);

  a1[3] = v6;
  *a1 = v10;
}

id protocol witness for Identifiable.id.getter in conformance StandardActivityPickerItem@<X0>(void *a1@<X8>)
{
  result = [*v1 id];
  *a1 = result;
  return result;
}

Swift::Int StandardActivityPickerItem.hash.getter()
{
  v1 = v0;
  Hasher.init()();
  v10[3] = &type metadata for WorkoutFeatures;
  v10[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v10[0]) = 11;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v10);
  MEMORY[0x20F2E7FF0](*(v0 + OBJC_IVAR___NLStandardActivityPickerItem_type));
  v3 = *(v0 + OBJC_IVAR___NLStandardActivityPickerItem_activityType);
  NSObject.hash(into:)();
  if (v2)
  {
    v4 = *(v1 + OBJC_IVAR___NLStandardActivityPickerItem_topSuggested);
    if (v4)
    {
      v5 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      MEMORY[0x20F2E7FF0](*(v4 + v5) + 1);
      v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v7 = *(v4 + v6);
      NSObject.hash(into:)();
    }
  }

  else
  {
    v8 = *(v1 + OBJC_IVAR___NLStandardActivityPickerItem_goal);
    NSObject.hash(into:)();
  }

  return Hasher.finalize()();
}

uint64_t StandardActivityPickerItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v5);
  if (!v6)
  {
    outlined destroy of Any?(v5);
    goto LABEL_5;
  }

  type metadata accessor for StandardActivityPickerItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = specialized static StandardActivityPickerItem.== infix(_:_:)(v1, v4);

  return v2 & 1;
}

uint64_t StandardActivityPickerItem.description.getter()
{
  _StringGuts.grow(_:)(37);

  v10[0] = 0xD000000000000021;
  v10[1] = 0x800000020B467A30;
  v1 = *(v0 + OBJC_IVAR___NLStandardActivityPickerItem_type);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 0xE600000000000000;
      v3 = 0x6E6F74747562;
    }

    else if (v1 == 4)
    {
      v2 = 0xE700000000000000;
      v3 = 0x646567616E616DLL;
    }

    else
    {
      v2 = 0xE800000000000000;
      v3 = 0x646E756F706D6F63;
    }
  }

  else if (*(v0 + OBJC_IVAR___NLStandardActivityPickerItem_type))
  {
    if (v1 == 1)
    {
      v2 = 0xE900000000000064;
      v3 = 0x6574636964657270;
    }

    else
    {
      v2 = 0xE600000000000000;
      v3 = 0x646564697567;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x647261646E617473;
  }

  MEMORY[0x20F2E6D80](v3, v2);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v4 = v10[0];
  _StringGuts.grow(_:)(17);

  strcpy(v10, "activityType: ");
  HIBYTE(v10[1]) = -18;
  v5 = [*(v0 + OBJC_IVAR___NLStandardActivityPickerItem_activityType) description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x20F2E6D80](v6, v8);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);

  MEMORY[0x20F2E6D80](v10[0], v10[1]);

  return v4;
}

uint64_t specialized static StandardActivityPickerItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v21 = &type metadata for WorkoutFeatures;
  v22 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v20[0]) = 11;
  v4 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v20);
  v5 = *(a1 + OBJC_IVAR___NLStandardActivityPickerItem_type);
  v6 = *(a2 + OBJC_IVAR___NLStandardActivityPickerItem_type);
  if ((v4 & 1) == 0)
  {
    if (v5 == v6)
    {
      _sSo8NSObjectCMaTm_3(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      v15 = *(a1 + OBJC_IVAR___NLStandardActivityPickerItem_activityType);
      v16 = *(a2 + OBJC_IVAR___NLStandardActivityPickerItem_activityType);
      if (static NSObject.== infix(_:_:)())
      {
        v17 = *(a1 + OBJC_IVAR___NLStandardActivityPickerItem_goal);
        v18 = *(a2 + OBJC_IVAR___NLStandardActivityPickerItem_goal);
        v14 = static NSObject.== infix(_:_:)();
        return v14 & 1;
      }
    }

    goto LABEL_11;
  }

  if (v5 != v6)
  {
    goto LABEL_11;
  }

  _sSo8NSObjectCMaTm_3(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v7 = *(a1 + OBJC_IVAR___NLStandardActivityPickerItem_activityType);
  v8 = *(a2 + OBJC_IVAR___NLStandardActivityPickerItem_activityType);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = *(a1 + OBJC_IVAR___NLStandardActivityPickerItem_topSuggested);
  v10 = *(a2 + OBJC_IVAR___NLStandardActivityPickerItem_topSuggested);
  if (!v9)
  {
    if (!v10)
    {
      v14 = 1;
      return v14 & 1;
    }

    goto LABEL_11;
  }

  if (!v10)
  {
LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  v21 = type metadata accessor for WorkoutConfiguration();
  v22 = &protocol witness table for WorkoutConfiguration;
  v20[0] = v10;
  v11 = *((*MEMORY[0x277D85000] & *v9) + 0x1D0);
  v12 = v10;
  v13 = v11(v20);

  __swift_destroy_boxed_opaque_existential_1(v20);
  v14 = v13;
  return v14 & 1;
}

id specialized StandardActivityPickerItem.init(type:activityType:goal:topSuggested:)(char *a1, void *a2, void *a3, void *a4)
{
  v53 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18 = *a1;
  v51 = v4;
  v4[OBJC_IVAR___NLStandardActivityPickerItem_type] = v18;
  *&v4[OBJC_IVAR___NLStandardActivityPickerItem_activityType] = a2;
  *&v4[OBJC_IVAR___NLStandardActivityPickerItem_goal] = a3;
  v19 = objc_allocWithZone(MEMORY[0x277D0A838]);
  v46 = a2;
  v20 = a3;
  v21 = [v19 initWithGoalTypeIdentifier:0 value:0];
  v52 = v17;
  UUID.init()();
  v50 = specialized Occurrence.__allocating_init(count:)(0);
  v22 = *(v9 + 16);
  v48 = v15;
  v22(v15, v17, v8);
  v23 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration());
  swift_beginAccess();
  v57 = v21;
  _sSo8NSObjectCMaTm_3(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v49 = v21;
  Published.init(initialValue:)();
  swift_endAccess();
  v24 = v47;
  v22(v47, v15, v8);
  v25 = v22;
  *&v23[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v27 = type metadata accessor for Date();
  v28 = *(*(v27 - 8) + 56);
  v28(&v23[v26], 1, 1, v27);
  v28(&v23[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v27);
  v29 = v46;
  v30 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v31 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v31 - 8) + 56))(&v23[v30], 1, 1, v31);
  (*(v9 + 56))(&v23[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v8);
  v32 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v23[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v25(&v23[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v24, v8);
  v33 = v50;
  v34 = v51;
  *&v23[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v29;
  v23[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v23[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v33;
  swift_beginAccess();
  *&v23[v32] = 0;
  v23[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v35 = type metadata accessor for WorkoutConfiguration();
  v56.receiver = v23;
  v56.super_class = v35;
  v36 = objc_msgSendSuper2(&v56, sel_init);

  v37 = *(v9 + 8);
  v37(v24, v8);
  v37(v48, v8);
  v37(v52, v8);
  v38 = OBJC_IVAR___NLStandardActivityPickerItem_openGoalConfiguration;
  *&v34[OBJC_IVAR___NLStandardActivityPickerItem_openGoalConfiguration] = v36;
  v55[3] = &type metadata for WorkoutFeatures;
  v55[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v55[0]) = 11;
  LOBYTE(v36) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(v55);
  if (v36)
  {
    v39 = v53;
    if ([v29 identifier] != 82)
    {
      v39 = *&v34[v38];
    }

    v40 = v39;
    *&v34[OBJC_IVAR___NLStandardActivityPickerItem_topSuggested] = v39;
  }

  else
  {
    v41 = v53;
    *&v34[OBJC_IVAR___NLStandardActivityPickerItem_topSuggested] = v53;
    v42 = v41;
  }

  v43 = type metadata accessor for StandardActivityPickerItem();
  v54.receiver = v34;
  v54.super_class = v43;
  return objc_msgSendSuper2(&v54, sel_init);
}

uint64_t _sSo8NSObjectCMaTm_3(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id MathUtils.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MathUtils.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MathUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MathUtils.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MathUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x20F2E9440](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x20F2E9440](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized static MathUtils.randomNumberInRange(minValue:maxValue:)(double a1, double a2)
{
  if (a1 > a2)
  {
    __break(1u);
  }

  else if (COERCE__INT64(fabs(a2 - a1)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
    return;
  }

  __break(1u);
}

uint64_t AnyActivityPickerItem.init(item:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

WorkoutCore::ActivityPickerItemType_optional __swiftcall ActivityPickerItemType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivityPickerItemType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityPickerItemType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t ActivityPickerItemType.description.getter()
{
  v1 = *v0;
  v2 = 0x647261646E617473;
  v3 = 0x6E6F74747562;
  v4 = 0x646567616E616DLL;
  if (v1 != 4)
  {
    v4 = 0x646E756F706D6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6574636964657270;
  if (v1 != 1)
  {
    v5 = 0x646564697567;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ActivityPickerItemType()
{
  v1 = *v0;
  v2 = 0x647261646E617473;
  v3 = 0x6E6F74747562;
  v4 = 0x646567616E616DLL;
  if (v1 != 4)
  {
    v4 = 0x646E756F706D6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6574636964657270;
  if (v1 != 1)
  {
    v5 = 0x646564697567;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void *AnyActivityPickerItem.item.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v1;
  return v1;
}

Swift::Int AnyActivityPickerItem.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AnyActivityPickerItem()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AnyActivityPickerItem()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ActivityPickerItemType and conformance ActivityPickerItemType()
{
  result = lazy protocol witness table cache variable for type ActivityPickerItemType and conformance ActivityPickerItemType;
  if (!lazy protocol witness table cache variable for type ActivityPickerItemType and conformance ActivityPickerItemType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityPickerItemType and conformance ActivityPickerItemType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyActivityPickerItem and conformance AnyActivityPickerItem()
{
  result = lazy protocol witness table cache variable for type AnyActivityPickerItem and conformance AnyActivityPickerItem;
  if (!lazy protocol witness table cache variable for type AnyActivityPickerItem and conformance AnyActivityPickerItem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyActivityPickerItem and conformance AnyActivityPickerItem);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityPickerItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityPickerItemType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyActivityPickerItem(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AnyActivityPickerItem(uint64_t result, int a2, int a3)
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

id CompoundActivityPickerItem.value.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value);
  *a1 = v2;
  return (v2 & 0x7FFFFFFFFFFFFFFFLL);
}

id CompoundActivityPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CompoundActivityPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompoundActivityPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void CompoundActivityPickerItem.copy(with:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value);
  v6 = *(v2 + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType);
  if ((v5 & 0x8000000000000000) != 0)
  {
    v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    [v7 copyWithZone_];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for GuidedFeaturedActivityPickerItem();
    swift_dynamicCast();
    v13 = v19 | 0x8000000000000000;
    v9 = type metadata accessor for CompoundActivityPickerItem();
    v14 = objc_allocWithZone(v9);
    v14[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
    *&v14[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v6;
    *&v14[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v13;
    v18.receiver = v14;
    v18.super_class = v9;
    v15 = v6;
    v12 = objc_msgSendSuper2(&v18, sel_init);
  }

  else
  {
    v7 = v5;
    [v7 copyWithZone_];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for StandardActivityPickerItem();
    swift_dynamicCast();
    v8 = v19;
    v9 = type metadata accessor for CompoundActivityPickerItem();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
    *&v10[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v6;
    *&v10[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v8;
    v17.receiver = v10;
    v17.super_class = v9;
    v11 = v6;
    v12 = objc_msgSendSuper2(&v17, sel_init);
  }

  v16 = v12;

  a2[3] = v9;
  *a2 = v16;
}

id protocol witness for Identifiable.id.getter in conformance CompoundActivityPickerItem@<X0>(void *a1@<X8>)
{
  result = [*(*v1 + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value) & 0x7FFFFFFFFFFFFFFFLL id];
  *a1 = result;
  return result;
}

uint64_t CompoundActivityPickerItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v16);
  if (v17)
  {
    type metadata accessor for CompoundActivityPickerItem();
    if (swift_dynamicCast())
    {
      v2 = v15;
      v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value);
      v4 = *&v15[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value];
      if ((v3 & 0x8000000000000000) != 0)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          v12 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
          v13 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
          v7 = v12;
          v8 = v13;
          v9 = specialized static GuidedFeaturedActivityPickerItem.== infix(_:_:)(v8, v7);
          goto LABEL_11;
        }
      }

      else if ((v4 & 0x8000000000000000) == 0)
      {
        v5 = v4;
        v6 = v3;
        v7 = v5;
        v8 = v6;
        v9 = specialized static StandardActivityPickerItem.== infix(_:_:)(v8, v7);
LABEL_11:
        v10 = v9;

        v2 = v8;
        goto LABEL_12;
      }

      v11 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
      v7 = v11;
      v10 = 0;
LABEL_12:

      return v10 & 1;
    }
  }

  else
  {
    outlined destroy of Any?(v16);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t CompoundActivityPickerItem.description.getter()
{
  v1 = (*(v0 + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value) & 0x7FFFFFFFFFFFFFFFLL);
  v2 = [v1 description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized static CompoundActivityPickerItemValue.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
      v5 = (v2 & 0x7FFFFFFFFFFFFFFFLL);
      v6 = specialized static GuidedFeaturedActivityPickerItem.== infix(_:_:)(v5, v4);
      goto LABEL_7;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v3;
    v5 = v2;
    v6 = specialized static StandardActivityPickerItem.== infix(_:_:)(v5, v4);
LABEL_7:
    v7 = v6;

    return v7 & 1;
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t getEnumTagSinglePayload for CompoundActivityPickerItemValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for CompoundActivityPickerItemValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_LapsMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher() + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_LapsMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_LapsMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_LapsMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher() + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_LapsMetricsPublisher.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher() + 20);
  return UnknownStorage.init()();
}

uint64_t static Apple_Workout_Core_LapsMetricsPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_LapsMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_LapsMetricsPublisher.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_LapsMetricsPublisher.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher() + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Apple_Workout_Core_LapsMetricsPublisher.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher() + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_6(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_LapsMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_6(&lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_LapsMetricsPublisher@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_LapsMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_LapsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_LapsMetricsPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_LapsMetricsPublisher;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_LapsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_6(&lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_LapsMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_LapsMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_LapsMetricsPublisher(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_6(&lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_LapsMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_LapsMetricsPublisher()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_6(&lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_LapsMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_LapsMetricsPublisher(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_6(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_LapsMetricsPublisher()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_6(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static DispatchUtilities.ensureMainQueueOrAsync(block:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  type metadata accessor for OS_dispatch_queue();
  v15 = static OS_dispatch_queue.main.getter();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_8;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_66;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v8, v17);
  _Block_release(v17);

  (*(v5 + 8))(v8, v4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

id AutoBugCaptureReporterTypes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AutoBugCaptureReporterTypes.init()(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id @objc AutoBugCaptureReporterTypes.init()(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4.receiver = a1;
  v4.super_class = a3();
  return objc_msgSendSuper2(&v4, sel_init);
}

id AutoBugCaptureReporterTypes.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id VoiceMotivationEndEventAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceMotivationEndEventAlert.init()()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for VoiceMotivationEndEventAlert();
  v10.receiver = v0;
  v10.super_class = v6;
  v7 = objc_msgSendSuper2(&v10, sel_init);
  [v7 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v5, v1);
  [v7 setEventDate_];

  return v7;
}

id VoiceMotivationEndEventAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceMotivationEndEventAlert();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AutoBugCaptureReporter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AutoBugCaptureReporter.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoBugCaptureReporter();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AutoBugCaptureReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AutoBugCaptureReporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized closure #1 in AutoBugCaptureReporter.reportSnapshot(type:subtype:context:thresholdValues:)(uint64_t a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x277D6B198];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v3;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v5 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v4, &v49);
      outlined destroy of AnyHashable(v48);
      if (swift_dynamicCast() & 1) != 0 && (v44)
      {
        v6 = *MEMORY[0x277D6B188];
        v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v50 = v7;
        AnyHashable.init<A>(_:)();
        if (*(a1 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v9 & 1) != 0))
        {
          outlined init with copy of Any(*(a1 + 56) + 32 * v8, &v49);
          outlined destroy of AnyHashable(v48);
          v10 = swift_dynamicCast();
          if (v10)
          {
            v11 = v44;
          }

          else
          {
            v11 = 0;
          }

          if (v10)
          {
            v12 = v46;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          outlined destroy of AnyHashable(v48);
          v11 = 0;
          v12 = 0;
        }

        if (one-time initialization token for app != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static WOLog.app);

        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v48[0] = v40;
          *v39 = 136315138;
          if (v12)
          {
            v41 = v11;
          }

          else
          {
            v41 = 0;
          }

          if (!v12)
          {
            v12 = 0xE000000000000000;
          }

          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v12, v48);

          *(v39 + 4) = v42;
          _os_log_impl(&dword_20AEA4000, v37, v38, "Diagnostic reporter snapshot accepted with sessionID=%s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x20F2E9420](v40, -1, -1);
          MEMORY[0x20F2E9420](v39, -1, -1);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
      outlined destroy of AnyHashable(v48);
    }

    v13 = *MEMORY[0x277D6B168];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v14;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v16 & 1) != 0))
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v15, &v49);
      outlined destroy of AnyHashable(v48);
      if (swift_dynamicCast())
      {
        v17 = v44;
LABEL_21:
        v18 = *MEMORY[0x277D6B180];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v19;
        AnyHashable.init<A>(_:)();
        if (*(a1 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(v48), (v21 & 1) != 0))
        {
          outlined init with copy of Any(*(a1 + 56) + 32 * v20, &v49);
          outlined destroy of AnyHashable(v48);
          if (swift_dynamicCast())
          {
            v23 = v45;
            v22 = v47;
LABEL_27:
            if (v17 == *MEMORY[0x277D6B040] || v17 == *MEMORY[0x277D6B058] || v17 == *MEMORY[0x277D6B038] || v17 == *MEMORY[0x277D6B088])
            {
              if (one-time initialization token for app != -1)
              {
                swift_once();
              }

              v31 = type metadata accessor for Logger();
              __swift_project_value_buffer(v31, static WOLog.app);

              v25 = Logger.logObject.getter();
              v26 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v25, v26))
              {
                v27 = swift_slowAlloc();
                v28 = swift_slowAlloc();
                v48[0] = v28;
                *v27 = 134218242;
                *(v27 + 4) = v17;
                *(v27 + 12) = 2080;
                v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v48);

                *(v27 + 14) = v32;
                v30 = "Diagnostic reporter snapshot rejected with expected reason %ld (%s)";
                goto LABEL_39;
              }
            }

            else
            {
              if (one-time initialization token for app != -1)
              {
                swift_once();
              }

              v24 = type metadata accessor for Logger();
              __swift_project_value_buffer(v24, static WOLog.app);

              v25 = Logger.logObject.getter();
              v26 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v25, v26))
              {
                v27 = swift_slowAlloc();
                v28 = swift_slowAlloc();
                v48[0] = v28;
                *v27 = 134218242;
                *(v27 + 4) = v17;
                *(v27 + 12) = 2080;
                v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v22, v48);

                *(v27 + 14) = v29;
                v30 = "Diagnostic reporter snapshot rejected with unexpected reason %ld (%s";
LABEL_39:
                _os_log_impl(&dword_20AEA4000, v25, v26, v30, v27, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v28);
                MEMORY[0x20F2E9420](v28, -1, -1);
                MEMORY[0x20F2E9420](v27, -1, -1);
LABEL_48:

                return;
              }
            }

            goto LABEL_48;
          }
        }

        else
        {
          outlined destroy of AnyHashable(v48);
        }

        v23 = 0;
        v22 = 0xE000000000000000;
        goto LABEL_27;
      }
    }

    else
    {
      outlined destroy of AnyHashable(v48);
    }

    v17 = 0;
    goto LABEL_21;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static WOLog.app);
  oslog = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v34, "Diagnostic reporter returned no response", v35, 2u);
    MEMORY[0x20F2E9420](v35, -1, -1);
  }
}

void specialized AutoBugCaptureReporter.reportSnapshot(type:subtype:context:thresholdValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v35 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v16 = [objc_opt_self() mainBundle];
  v17 = [v16 bundleIdentifier];

  v18 = MEMORY[0x20F2E6C00](0x74756F6B726F57, 0xE700000000000000);
  v19 = MEMORY[0x20F2E6C00](a1, a2);
  v20 = MEMORY[0x20F2E6C00](a3, a4);
  if (a6)
  {
    v21 = MEMORY[0x20F2E6C00](a5, a6);
    if (!a8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v21 = 0;
  if (a8)
  {
LABEL_3:
    a8 = MEMORY[0x20F2E6C00](a7, a8);
  }

LABEL_4:
  v22 = [v35 signatureWithDomain:v18 type:v19 subType:v20 subtypeContext:v21 detectedProcess:v17 triggerThresholdValues:a8];

  if (v22)
  {
    aBlock = 0;
    v23 = v22;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static WOLog.app);
  v25 = v22;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock = v29;
    *v28 = 136315138;
    if (v22)
    {
      v30 = [v25 description];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;
    }

    else
    {
      v33 = 0xE300000000000000;
      v31 = 7104878;
    }

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &aBlock);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_20AEA4000, v26, v27, "Failed to cast diagnostic reporter signature {signature: %s}", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x20F2E9420](v29, -1, -1);
    MEMORY[0x20F2E9420](v28, -1, -1);
  }

  else
  {
  }
}

uint64_t key path setter for HeartRateAverageAccumulator.currentAverageAccumulator : HeartRateAverageAccumulator(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLHeartRateAverageAccumulator_currentAverageAccumulator;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t HeartRateAverageAccumulator.currentAverageAccumulator.getter()
{
  v1 = OBJC_IVAR___NLHeartRateAverageAccumulator_currentAverageAccumulator;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t HeartRateAverageAccumulator.currentAverageAccumulator.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLHeartRateAverageAccumulator_currentAverageAccumulator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id HeartRateAverageAccumulator.__allocating_init(builder:averageInterval:)(void *a1, double a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v2);
  v7 = OBJC_IVAR___NLHeartRateAverageAccumulator_countPerMinuteUnit;
  *&v6[v7] = [objc_opt_self() _countPerMinuteUnit];
  *&v6[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentSum] = 0;
  *&v6[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentCount] = 0;
  *&v6[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentMinimum] = 0;
  *&v6[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentMaximum] = 0;
  type metadata accessor for WindowedDiscreteAccumulator();
  swift_allocObject();
  *&v6[OBJC_IVAR___NLHeartRateAverageAccumulator_currentAverageAccumulator] = WindowedDiscreteAccumulator.init(over:averageCacheInterval:)(a2, 1.0);
  v10.receiver = v6;
  v10.super_class = v3;
  v8 = objc_msgSendSuper2(&v10, sel_initWithBuilder_staleTimeout_, a1, a2);

  return v8;
}

id HeartRateAverageAccumulator.init(builder:averageInterval:)(void *a1, double a2)
{
  v3 = specialized HeartRateAverageAccumulator.init(builder:averageInterval:)(a1, a2);

  return v3;
}

Swift::Void __swiftcall HeartRateAverageAccumulator.update(with:)(HKStatistics with)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v124 - v14;
  if ([v2 disabledForSession])
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.app);
    v17 = with.super.isa;
    v131 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v131, v18))
    {
      goto LABEL_14;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v17;
    *v20 = v17;
    v21 = v17;
    v22 = "[HeartRateAverageAccumulator] disabled for session, skip update with statistics: %@";
LABEL_13:
    _os_log_impl(&dword_20AEA4000, v131, v18, v22, v19, 0xCu);
    _sSo8NSObjectCSgWOhTm_13(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v20, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);
LABEL_14:
    v33 = v131;

    return;
  }

  v23 = [(objc_class *)with.super.isa mostRecentQuantity];
  if (!v23)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static WOLog.app);
    v31 = with.super.isa;
    v131 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v131, v18))
    {
      goto LABEL_14;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v31;
    *v20 = v31;
    v32 = v31;
    v22 = "[HeartRateAverageAccumulator] cannot get mostRecentQuantity from statistics: %@";
    goto LABEL_13;
  }

  v24 = v23;
  [v23 doubleValueForUnit_];
  v26 = v25;

  v27 = [(objc_class *)with.super.isa mostRecentQuantityDateInterval];
  if (v27)
  {
    v28 = v27;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = type metadata accessor for DateInterval();
    (*(*(v29 - 8) + 56))(v13, 0, 1, v29);
  }

  else
  {
    v29 = type metadata accessor for DateInterval();
    (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  }

  outlined init with take of DateInterval?(v13, v15);
  type metadata accessor for DateInterval();
  v34 = *(v29 - 8);
  if ((*(v34 + 48))(v15, 1, v29) == 1)
  {
    _sSo8NSObjectCSgWOhTm_13(v15, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static WOLog.app);
    v36 = with.super.isa;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v40 = v36;
      v41 = v36;
      _os_log_impl(&dword_20AEA4000, v37, v38, "[HeartRateAverageAccumulator] cannot get end date from statistics: %@", v39, 0xCu);
      _sSo8NSObjectCSgWOhTm_13(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v40, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }
  }

  else
  {
    DateInterval.end.getter();
    (*(v34 + 8))(v15, v29);
    Date.timeIntervalSinceReferenceDate.getter();
    v43 = v42;
    v130 = *(v5 + 8);
    v130(v8, v4);
    v44 = OBJC_IVAR___NLHeartRateAverageAccumulator_currentAverageAccumulator;
    swift_beginAccess();
    v45 = *(&v44->isa + v2);
    v134 = v26;
    v135 = v43;

    WindowedDiscreteAccumulator.append(_:)(__PAIR128__(v47, v46));

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static WOLog.app);
    v49 = v2;
    v50 = with.super.isa;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v127 = v52;
      v128 = v51;
      v129 = v50;
      v131 = v44;
      v53 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v132 = v126;
      *v53 = 136316162;
      v134 = 0.0;
      v135 = 0xE000000000000000;
      Double.write<A>(to:)();
      MEMORY[0x20F2E6D80](544497952, 0xE400000000000000);
      Date.init(timeIntervalSinceReferenceDate:)();
      if (one-time initialization token for logDateFormatter != -1)
      {
        swift_once();
      }

      v54 = static WOLog.logDateFormatter;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v56 = [v54 stringFromDate_];

      v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v59 = v58;

      v130(v8, v4);
      MEMORY[0x20F2E6D80](v57, v59);

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*&v134, v135, &v132);

      *(v53 + 4) = v60;
      *(v53 + 12) = 2048;
      v61 = *(&v131->isa + v2);

      v62 = static Date.timeIntervalSinceReferenceDate.getter();
      v64 = v63;
      v65 = *(v61 + 32);
      v66 = *(v65 + 32);
      MEMORY[0x28223BE20](v62);
      *(&v124 - 2) = partial apply for specialized closure #1 in Atomic.wrappedValue.getter;
      *(&v124 - 1) = v65;

      os_unfair_lock_lock(v66 + 4);
      partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v134);
      os_unfair_lock_unlock(v66 + 4);
      v67 = v134;
      LOBYTE(isa) = v135;

      if (isa)
      {
        v69 = *(v61 + 16);
        v70 = MEMORY[0x28223BE20](v68);
        *(&v124 - 2) = v64;
        *(&v124 - 1) = v61;
        v71 = *(v69 + 24);
        v72 = MEMORY[0x28223BE20](v70);
        *(&v124 - 4) = partial apply for closure #1 in WindowedDiscreteAccumulator.recalculateAverage(end:);
        *(&v124 - 3) = v73;
        *(&v124 - 2) = v69;
        MEMORY[0x28223BE20](v72);
        *(&v124 - 2) = partial apply for specialized closure #1 in Atomic.with<A>(_:);
        *(&v124 - 1) = v74;

        os_unfair_lock_lock(v71 + 4);
        partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v134);
        os_unfair_lock_unlock(v71 + 4);
        v75 = *&v134;

        v77 = *(v61 + 40);
        v134 = *&v75;
        v78 = *(v77 + 24);
        v79 = MEMORY[0x28223BE20](v76);
        *(&v124 - 2) = v77;
        *(&v124 - 1) = &v134;
        MEMORY[0x28223BE20](v79);
        *(&v124 - 2) = partial apply for specialized closure #1 in Atomic.wrappedValue.setter;
        *(&v124 - 1) = v80;

        os_unfair_lock_lock(v78 + 4);
        _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_2(v81);
        os_unfair_lock_unlock(v78 + 4);

        v83 = *(v61 + 32);
        v134 = v64;
        LOBYTE(v135) = 0;
        v84 = *(v83 + 32);
        v85 = MEMORY[0x28223BE20](v82);
        *(&v124 - 2) = v83;
        *(&v124 - 1) = &v134;
        MEMORY[0x28223BE20](v85);
        *(&v124 - 2) = partial apply for specialized closure #1 in Atomic.wrappedValue.setter;
        *(&v124 - 1) = v86;

        os_unfair_lock_lock(v84 + 4);
        closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v87);
        os_unfair_lock_unlock(v84 + 4);

        v89 = *(v61 + 40);
        v90 = *(v89 + 24);
        MEMORY[0x28223BE20](v88);
        *(&v124 - 2) = partial apply for specialized closure #1 in Atomic.wrappedValue.getter;
        *(&v124 - 1) = v89;

        os_unfair_lock_lock(v90 + 4);
        closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v134);
      }

      else
      {
        if (*(v61 + 24) < v64 - v67)
        {
          v91 = *(v61 + 16);
          v92 = MEMORY[0x28223BE20](v68);
          *(&v124 - 2) = v64;
          *(&v124 - 1) = v61;
          v93 = *(v91 + 24);
          v94 = MEMORY[0x28223BE20](v92);
          *(&v124 - 4) = closure #1 in WindowedDiscreteAccumulator.recalculateAverage(end:)partial apply;
          *(&v124 - 3) = v95;
          *(&v124 - 2) = v91;
          MEMORY[0x28223BE20](v94);
          *(&v124 - 2) = closure #1 in Atomic.with<A>(_:)specialized partial apply;
          *(&v124 - 1) = v96;

          os_unfair_lock_lock(v93 + 4);
          closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v134);
          os_unfair_lock_unlock(v93 + 4);
          v97 = *&v134;

          v99 = *(v61 + 40);
          v134 = *&v97;
          v100 = *(v99 + 24);
          v101 = MEMORY[0x28223BE20](v98);
          *(&v124 - 2) = v99;
          *(&v124 - 1) = &v134;
          MEMORY[0x28223BE20](v101);
          *(&v124 - 2) = closure #1 in Atomic.wrappedValue.setterspecialized partial apply;
          *(&v124 - 1) = v102;

          os_unfair_lock_lock(v100 + 4);
          closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v103);
          os_unfair_lock_unlock(v100 + 4);

          v105 = *(v61 + 32);
          v134 = v64;
          LOBYTE(v135) = 0;
          v106 = *(v105 + 32);
          v107 = MEMORY[0x28223BE20](v104);
          *(&v124 - 2) = v105;
          *(&v124 - 1) = &v134;
          MEMORY[0x28223BE20](v107);
          *(&v124 - 2) = closure #1 in Atomic.wrappedValue.setterspecialized partial apply;
          *(&v124 - 1) = v108;

          os_unfair_lock_lock(v106 + 4);
          closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v109);
          os_unfair_lock_unlock(v106 + 4);
        }

        v110 = *(v61 + 40);
        v90 = *(v110 + 24);
        MEMORY[0x28223BE20](v68);
        *(&v124 - 2) = closure #1 in Atomic.wrappedValue.getterspecialized partial apply;
        *(&v124 - 1) = v110;

        os_unfair_lock_lock(v90 + 4);
        closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v134);
      }

      os_unfair_lock_unlock(v90 + 4);
      v111 = *&v134;

      *(v53 + 14) = v111;
      *(v53 + 22) = 2048;
      v113 = v131;
      v114 = (*(&v131->isa + v2))[2];
      v115 = *(v114 + 24);
      MEMORY[0x28223BE20](v112);
      *(&v124 - 2) = partial apply for specialized closure #1 in Atomic.wrappedValue.getter;
      *(&v124 - 1) = v114;

      os_unfair_lock_lock(v115 + 4);
      partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v134);
      os_unfair_lock_unlock(v115 + 4);
      v116 = *&v134;

      v117 = *(v116 + 16);

      *(v53 + 24) = v117;

      *(v53 + 32) = 2048;
      *(v53 + 34) = (*(&v113->isa + v2))[6];
      *(v53 + 42) = 2112;
      v50 = v129;
      *(v53 + 44) = v129;
      v118 = v125;
      *v125 = v50;
      v119 = v50;
      v120 = v128;
      _os_log_impl(&dword_20AEA4000, v128, v127, "[HeartRateAverageAccumulator] received current heart rate (%s) current average (%f BPM) across %ld entries over last %f seconds, statistics: %@", v53, 0x34u);
      _sSo8NSObjectCSgWOhTm_13(v118, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v118, -1, -1);
      v121 = v126;
      __swift_destroy_boxed_opaque_existential_0(v126);
      MEMORY[0x20F2E9420](v121, -1, -1);
      MEMORY[0x20F2E9420](v53, -1, -1);
    }

    else
    {
    }

    *&v49[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentSum] = v26 + *&v49[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentSum];
    *&v49[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentCount] = *&v49[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentCount] + 1.0;
    v122 = *&v49[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentMinimum];
    if (v122 >= v26)
    {
      v122 = v26;
    }

    *&v49[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentMinimum] = v122;
    if (v26 > v122)
    {
      v122 = v26;
    }

    *&v49[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentMaximum] = v122;
    v123 = type metadata accessor for HeartRateAverageAccumulator();
    v133.receiver = v49;
    v133.super_class = v123;
    objc_msgSendSuper2(&v133, sel_updateWithStatistics_, v50);
  }
}

id HeartRateAverageAccumulator.lastAveragingSegmentHeartRateData.getter@<X0>(uint64_t a1@<X8>)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for HeartRateAverageAccumulator();
  result = objc_msgSendSuper2(&v11, sel_heartRateData);
  v4 = v10;
  v5 = *&v1[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentCount];
  v6 = 0.0;
  if (v5 != 0.0)
  {
    v6 = *&v1[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentSum] / v5;
  }

  v7 = *&v1[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentMinimum];
  v8 = *&v1[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentMaximum];
  *a1 = v9;
  *(a1 + 8) = 1;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v4;
  return result;
}

Swift::Void __swiftcall HeartRateAverageAccumulator.markAveragingSegment()()
{
  v1 = v0;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.app);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[HeartRateAverageAccumulator] Marking averaging segment", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  *(v1 + OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentSum) = 0;
  *(v1 + OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentCount) = 0;
  *(v1 + OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentMinimum) = 0;
  *(v1 + OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentMaximum) = 0;
}

id HeartRateAverageAccumulator.__allocating_init(builder:staleTimeout:)(void *a1, double a2)
{
  v4 = [objc_allocWithZone(v2) initWithBuilder:a1 staleTimeout:a2];

  return v4;
}

id HeartRateAverageAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartRateAverageAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized closure #1 in Atomic.wrappedValue.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  result = swift_beginAccess();
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  return result;
}

{
  v3 = *a2;
  result = swift_beginAccess();
  *(a1 + 16) = v3;
  return result;
}

double specialized closure #1 in Atomic.wrappedValue.getter@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  swift_beginAccess();
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<D0>(void (*a1)(double *__return_ptr)@<X1>, double *a2@<X8>)
{
  a1(&v5);
  if (!v2)
  {
    result = v5;
    *a2 = v5;
  }

  return result;
}

double specialized closure #1 in Atomic.with<A>(_:)@<D0>(void (*a1)(double *__return_ptr, uint64_t)@<X0>, uint64_t a2@<X2>, double *a3@<X8>)
{
  swift_beginAccess();
  a1(&v8, a2 + 16);
  swift_endAccess();
  if (!v3)
  {
    result = v8;
    *a3 = v8;
  }

  return result;
}

uint64_t specialized closure #1 in Atomic.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v5;
  return result;
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  result = a1(&v6);
  if (!v2)
  {
    v5 = v7;
    *a2 = v6;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t specialized closure #1 in Atomic.wrappedValue.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 16);
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

id specialized HeartRateAverageAccumulator.init(builder:averageInterval:)(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = OBJC_IVAR___NLHeartRateAverageAccumulator_countPerMinuteUnit;
  *&v3[v6] = [objc_opt_self() _countPerMinuteUnit];
  *&v3[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentSum] = 0;
  *&v3[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentCount] = 0;
  *&v3[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentMinimum] = 0;
  *&v3[OBJC_IVAR___NLHeartRateAverageAccumulator_averagingSegmentMaximum] = 0;
  type metadata accessor for WindowedDiscreteAccumulator();
  swift_allocObject();
  *&v3[OBJC_IVAR___NLHeartRateAverageAccumulator_currentAverageAccumulator] = WindowedDiscreteAccumulator.init(over:averageCacheInterval:)(a2, 1.0);
  v8.receiver = v3;
  v8.super_class = type metadata accessor for HeartRateAverageAccumulator();
  return objc_msgSendSuper2(&v8, sel_initWithBuilder_staleTimeout_, a1, a2);
}

uint64_t outlined init with take of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #1 in Atomic.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v4;
  return result;
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v8);
  if (!v2)
  {
    v7 = v9;
    *a1 = v8;
    *(a1 + 8) = v7;
  }

  return result;
}

double partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<D0>(double *a1@<X8>)
{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = v7;
    *a1 = v7;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in Atomic.wrappedValue.setter()
{
  return partial apply for specialized closure #1 in Atomic.wrappedValue.setter();
}

{
  return partial apply for specialized closure #1 in Atomic.wrappedValue.setter();
}

{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *v1;
  v4 = *(v1 + 8);
  result = swift_beginAccess();
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  return result;
}

double partial apply for specialized closure #1 in Atomic.wrappedValue.getter@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

uint64_t partial apply for specialized closure #1 in Atomic.wrappedValue.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

double closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply@<D0>(double *a1@<X8>)
{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1);
}

{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1);
}

{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_Sd_TG5TA_0(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_Sd_TG5TA_0(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_Sd_TG5TA_0(a1);
}

{
  return _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_Sd_TG5TA_0(a1);
}

double closure #1 in Atomic.wrappedValue.getterspecialized partial apply@<D0>(double *a1@<X8>)
{
  return partial apply for specialized closure #1 in Atomic.wrappedValue.getter(a1);
}

{
  return _s11WorkoutCore6AtomicC12wrappedValuexvgxyYbXEfU_Sd_TG5TA_0(a1);
}

double closure #1 in Atomic.with<A>(_:)specialized partial apply@<D0>(double *a1@<X8>)
{
  return partial apply for specialized closure #1 in Atomic.with<A>(_:)(a1);
}

{
  return _s11WorkoutCore6AtomicC4withyqd__qd__xzKXEKlFqd__yYbKXEfU_SayAA21WindowedDiscreteEntryVG_SdTG5TA_0(a1);
}

{
  return _s11WorkoutCore6AtomicC4withyqd__qd__xzKXEKlFqd__yYbKXEfU_SayAA21WindowedDiscreteEntryVG_SdTG5TA_0(a1);
}

uint64_t closure #1 in Atomic.wrappedValue.setterspecialized partial apply()
{
  return partial apply for specialized closure #1 in Atomic.wrappedValue.setter();
}

{
  return partial apply for specialized closure #1 in Atomic.wrappedValue.setter();
}

{
  return _s11WorkoutCore6AtomicC12wrappedValuexvsyyYbXEfU_SdSg_TG5TA_0();
}

{
  return _s11WorkoutCore6AtomicC12wrappedValuexvsyyYbXEfU_Sd_TG5TA_0();
}

{
  return _s11WorkoutCore6AtomicC12wrappedValuexvsyyYbXEfU_SdSg_TG5TA_0();
}

void closure #1 in WindowedDiscreteAccumulator.recalculateAverage(end:)partial apply(uint64_t *a1@<X0>, double *a2@<X8>)
{
  partial apply for closure #1 in WindowedDiscreteAccumulator.recalculateAverage(end:)(a1, a2);
}

{
  _s11WorkoutCore27WindowedDiscreteAccumulatorC18recalculateAverage3endS2d_tFSdSayAA0cD5EntryVGzXEfU_TA_0(a1, a2);
}

{
  _s11WorkoutCore27WindowedDiscreteAccumulatorC18recalculateAverage3endS2d_tFSdSayAA0cD5EntryVGzXEfU_TA_0(a1, a2);
}

uint64_t HeartRateMetricsPublisher.currentHeartRate.getter()
{
  return HeartRateMetricsPublisher.currentHeartRate.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t HeartRateMetricsPublisher.liveHeartRateZones.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t HeartRateMetricsPublisher.currentHeartRate.setter()
{
  return HeartRateMetricsPublisher.currentHeartRate.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t HeartRateMetricsPublisher.liveHeartRateZones.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t HeartRateMetricsPublisher.isStaleHeartRate.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for HeartRateMetricsPublisher.currentHeartRate : HeartRateMetricsPublisher@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  return key path getter for HeartRateMetricsPublisher.currentHeartRate : HeartRateMetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t key path setter for HeartRateMetricsPublisher.currentHeartRate : HeartRateMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  return key path setter for HeartRateMetricsPublisher.currentHeartRate : HeartRateMetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*HeartRateMetricsPublisher.currentHeartRate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return HeartRateMetricsPublisher.currentHeartRate.modify;
}

uint64_t (*HeartRateMetricsPublisher.$currentHeartRate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__currentHeartRate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return HeartRateMetricsPublisher.$currentHeartRate.modify;
}

uint64_t HeartRateMetricsPublisher.currentHeartRateValueType.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path getter for HeartRateMetricsPublisher.currentHeartRateValueType : HeartRateMetricsPublisher@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for HeartRateMetricsPublisher.currentHeartRateValueType : HeartRateMetricsPublisher(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t HeartRateMetricsPublisher.currentHeartRateValueType.setter(char *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*HeartRateMetricsPublisher.currentHeartRateValueType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return HeartRateMetricsPublisher.currentHeartRateValueType.modify;
}

uint64_t key path setter for HeartRateMetricsPublisher.$currentHeartRateValueType : HeartRateMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore25HeartRateCurrentValueTypeO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore25HeartRateCurrentValueTypeO_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t HeartRateMetricsPublisher.$currentHeartRateValueType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore25HeartRateCurrentValueTypeO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore25HeartRateCurrentValueTypeO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*HeartRateMetricsPublisher.$currentHeartRateValueType.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore25HeartRateCurrentValueTypeO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore25HeartRateCurrentValueTypeO_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__currentHeartRateValueType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return HeartRateMetricsPublisher.$currentHeartRateValueType.modify;
}

uint64_t (*HeartRateMetricsPublisher.averageHeartRate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return HeartRateMetricsPublisher.averageHeartRate.modify;
}

uint64_t (*HeartRateMetricsPublisher.$averageHeartRate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__averageHeartRate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return HeartRateMetricsPublisher.$averageHeartRate.modify;
}

uint64_t (*HeartRateMetricsPublisher.maximumHeartRate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return HeartRateMetricsPublisher.maximumHeartRate.modify;
}

uint64_t key path setter for HeartRateMetricsPublisher.$currentHeartRate : HeartRateMetricsPublisher(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t HeartRateMetricsPublisher.$currentHeartRate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*HeartRateMetricsPublisher.$maximumHeartRate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__maximumHeartRate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return HeartRateMetricsPublisher.$maximumHeartRate.modify;
}

uint64_t HeartRateMetricsPublisher.isStaleHeartRate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*HeartRateMetricsPublisher.isStaleHeartRate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return HeartRateMetricsPublisher.isStaleHeartRate.modify;
}

uint64_t key path setter for HeartRateMetricsPublisher.$isStaleHeartRate : HeartRateMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t HeartRateMetricsPublisher.$isStaleHeartRate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*HeartRateMetricsPublisher.$isStaleHeartRate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__isStaleHeartRate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return HeartRateMetricsPublisher.$isStaleHeartRate.modify;
}

uint64_t key path getter for HeartRateMetricsPublisher.liveHeartRateZones : HeartRateMetricsPublisher@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for HeartRateMetricsPublisher.liveHeartRateZones : HeartRateMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*HeartRateMetricsPublisher.liveHeartRateZones.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return HeartRateMetricsPublisher.liveHeartRateZones.modify;
}

void HeartRateMetricsPublisher.currentHeartRate.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t HeartRateMetricsPublisher.$currentHeartRate.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for HeartRateMetricsPublisher.$currentHeartRate : HeartRateMetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for HeartRateMetricsPublisher.$liveHeartRateZones : HeartRateMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F13HeartRateZoneCGSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F13HeartRateZoneCGSg_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t HeartRateMetricsPublisher.$liveHeartRateZones.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F13HeartRateZoneCGSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F13HeartRateZoneCGSg_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*HeartRateMetricsPublisher.$liveHeartRateZones.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F13HeartRateZoneCGSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F13HeartRateZoneCGSg_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__liveHeartRateZones;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return HeartRateMetricsPublisher.$liveHeartRateZones.modify;
}

void HeartRateMetricsPublisher.$currentHeartRate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t HeartRateMetricsPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  HeartRateMetricsPublisher.init()();
  return v3;
}

uint64_t HeartRateMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMR);
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v1);
  v30 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x28223BE20](v4);
  v27 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__currentHeartRate;
  v33 = 0;
  v34 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  Published.init(initialValue:)();
  v18 = *(v13 + 32);
  v18(v0 + v17, v16, v12);
  v19 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__currentHeartRateValueType;
  LOBYTE(v33) = 0;
  Published.init(initialValue:)();
  (*(v8 + 32))(v0 + v19, v11, v7);
  v20 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__averageHeartRate;
  v33 = 0;
  v34 = 1;
  Published.init(initialValue:)();
  v18(v0 + v20, v16, v12);
  v21 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__maximumHeartRate;
  v33 = 0;
  v34 = 1;
  Published.init(initialValue:)();
  v18(v0 + v21, v16, v12);
  v22 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__isStaleHeartRate;
  LOBYTE(v33) = 1;
  v23 = v27;
  Published.init(initialValue:)();
  (*(v28 + 32))(v0 + v22, v23, v29);
  v24 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__liveHeartRateZones;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGSgMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGSgMR);
  v25 = v30;
  Published.init(initialValue:)();
  (*(v31 + 32))(v0 + v24, v25, v32);
  return v0;
}

uint64_t HeartRateMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__currentHeartRate;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__currentHeartRateValueType;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__averageHeartRate, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__maximumHeartRate, v2);
  v6 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__isStaleHeartRate;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__liveHeartRateZones;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t HeartRateMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__currentHeartRate;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__currentHeartRateValueType;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMd, &_s7Combine9PublishedVy11WorkoutCore25HeartRateCurrentValueTypeOGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__averageHeartRate, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__maximumHeartRate, v2);
  v6 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__isStaleHeartRate;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC11WorkoutCore25HeartRateMetricsPublisher__liveHeartRateZones;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E13HeartRateZoneCGSgGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance HeartRateMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t HeartRateMetricsPublisher.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  *(a1 + 8) = 1;
  v6 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v7 = a1 + v6[6];
  UnknownStorage.init()();
  v8 = a1 + v6[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a1 + v6[8];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v6[9];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v6[10];
  v12 = *(v3 + 56);
  v18 = v2;
  v16 = v12;
  v12(a1 + v11, 1, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v19;
  *(a1 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a1 + 9) = v19;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v20 & 1) == 0)
  {
    *v8 = v19;
    *(v8 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v20 & 1) == 0)
  {
    *v9 = v19;
    *(v9 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v20 & 1) == 0)
  {
    *v10 = v19;
    *(v10 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v19)
  {
    v14 = v17;
    specialized LiveZones.protobuf.getter(result);

    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_2(a1 + v11, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVWObTm_0(v14, a1 + v11, type metadata accessor for Apple_Workout_Core_LiveZones);
    return v16(a1 + v11, 0, 1, v18);
  }

  return result;
}

uint64_t HeartRateMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  HeartRateMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_HeartRateMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  return v4;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher);
  }

  return result;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.decodeInto(publisher:)()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = *(v0 + 8);
  v40 = *v0;
  v41 = v12;
  Apple_Workout_Core_HeartRateCurrentValueType.decoded.getter(&v39);
  v13 = v39;
  swift_getKeyPath();
  swift_getKeyPath();
  v38 = v13;

  static Published.subscript.setter();
  v14 = *(v0 + 9);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v40) = v14;

  static Published.subscript.setter();
  v15 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v16 = v1 + v15[7];
  v17 = *v16;
  v18 = *(v16 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v17;
  v41 = (v18 & 1) != 0;

  static Published.subscript.setter();
  v19 = v1 + v15[8];
  v20 = *v19;
  v21 = *(v19 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v20;
  v41 = (v21 & 1) != 0;

  static Published.subscript.setter();
  v22 = v1 + v15[9];
  v23 = *v22;
  v24 = *(v22 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v40 = v23;
  v41 = (v24 & 1) != 0;

  static Published.subscript.setter();
  v25 = v15[10];
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOcTm_0(v1 + v25, v11, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v26 = *(v3 + 48);
  v27 = v26(v11, 1, v2);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_2(v11, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  if (v27 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = 0;
  }

  else
  {
    v28 = v1 + v25;
    v29 = v36;
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOcTm_0(v28, v36, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    if (v26(v29, 1, v2) == 1)
    {
      v30 = v37;
      *v37 = MEMORY[0x277D84F90];
      *(v30 + 8) = 0;
      v31 = v30 + *(v2 + 24);
      UnknownStorage.init()();
      v32 = v30 + *(v2 + 28);
      *v32 = 0;
      v32[4] = 1;
      if (v26(v29, 1, v2) != 1)
      {
        _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_2(v29, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
      }
    }

    else
    {
      v30 = v37;
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVWObTm_0(v29, v37, type metadata accessor for Apple_Workout_Core_LiveZones);
    }

    v33 = Apple_Workout_Core_LiveZones.decodedHRZones.getter();
    outlined destroy of Apple_Workout_Core_HeartRateMetricsPublisher(v30, type metadata accessor for Apple_Workout_Core_LiveZones);
    swift_getKeyPath();
    swift_getKeyPath();
    v40 = v33;
  }

  return static Published.subscript.setter();
}

uint64_t HeartRateMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static HeartRateMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance HeartRateMetricsPublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  HeartRateMetricsPublisher.protobuf.getter(v4);
  lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher();
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_HeartRateMetricsPublisher(v4, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  return v6;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance HeartRateMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static HeartRateMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance HeartRateMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static HeartRateMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void Apple_Workout_Core_HeartRateCurrentValueType.decoded.getter(BOOL *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v4 = v3 != 0;
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.core);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v3;
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v4 = 0;
  }

  *a1 = v4;
}

uint64_t Apple_Workout_Core_LiveZones.decodedHRZones.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v64 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v64 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  v14 = type metadata accessor for Apple_Workout_Core_Zone();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v69 = (&v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v17);
  v71 = &v64 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (&v64 - v22);
  MEMORY[0x28223BE20](v21);
  v72 = (&v64 - v24);
  v70 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  v25 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v75 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x277D84F90];
  v76 = MEMORY[0x277D84F90];
  v29 = *v0;
  v30 = *(*v0 + 16);
  if (v30)
  {
    v67 = v8;
    v68 = v23;
    v73 = v13;
    v31 = v29 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v32 = *(v26 + 72);
    v64 = v0;
    v65 = v32;
    v33 = (v15 + 48);
    v66 = v11;
    v34 = v72;
    v35 = v75;
    while (1)
    {
      v74 = v30;
      outlined init with copy of Apple_Workout_Core_LiveZone(v31, v35);
      v36 = *(v70 + 24);
      v37 = v35 + v36;
      v38 = v73;
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOcTm_0(v37, v73, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      v39 = *v33;
      if ((*v33)(v38, 1, v14) == 1)
      {
        *v34 = 0.0;
        v34[1] = 0.0;
        v34[2] = 0.0;
        v40 = v34 + *(v14 + 32);
        UnknownStorage.init()();
        if (v39(v38, 1, v14) != 1)
        {
          _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_2(v73, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
        }
      }

      else
      {
        _s11WorkoutCore06Apple_a1_B10_LiveZonesVWObTm_0(v38, v34, type metadata accessor for Apple_Workout_Core_Zone);
      }

      v41 = *v34;
      outlined destroy of Apple_Workout_Core_HeartRateMetricsPublisher(v34, type metadata accessor for Apple_Workout_Core_Zone);
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOcTm_0(&v75[v36], v11, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      v42 = v39(v11, 1, v14);
      v43 = v71;
      if (v42 == 1)
      {
        v44 = v68;
        *v68 = 0.0;
        v44[1] = 0.0;
        v44[2] = 0.0;
        v45 = v44 + *(v14 + 32);
        UnknownStorage.init()();
        if (v39(v11, 1, v14) != 1)
        {
          _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_2(v11, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
        }
      }

      else
      {
        v44 = v68;
        _s11WorkoutCore06Apple_a1_B10_LiveZonesVWObTm_0(v11, v68, type metadata accessor for Apple_Workout_Core_Zone);
      }

      v46 = v44[1];
      result = outlined destroy of Apple_Workout_Core_HeartRateMetricsPublisher(v44, type metadata accessor for Apple_Workout_Core_Zone);
      if (v41 > v46)
      {
        break;
      }

      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOcTm_0(&v75[v36], v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      if (v39(v8, 1, v14) == 1)
      {
        *v43 = 0;
        v43[1] = 0;
        v43[2] = 0;
        v48 = v43 + *(v14 + 32);
        UnknownStorage.init()();
        v49 = v39(v8, 1, v14);
        v34 = v72;
        if (v49 != 1)
        {
          _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_2(v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
        }
      }

      else
      {
        _s11WorkoutCore06Apple_a1_B10_LiveZonesVWObTm_0(v8, v43, type metadata accessor for Apple_Workout_Core_Zone);
        v34 = v72;
      }

      v50 = *(v43 + 4);
      outlined destroy of Apple_Workout_Core_HeartRateMetricsPublisher(v43, type metadata accessor for Apple_Workout_Core_Zone);
      v35 = v75;
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOcTm_0(&v75[v36], v5, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      if (v39(v5, 1, v14) == 1)
      {
        v51 = v69;
        *v69 = 0;
        v51[1] = 0;
        v51[2] = 0;
        v52 = v51 + *(v14 + 32);
        UnknownStorage.init()();
        if (v39(v5, 1, v14) != 1)
        {
          _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_2(v5, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
        }
      }

      else
      {
        v51 = v69;
        _s11WorkoutCore06Apple_a1_B10_LiveZonesVWObTm_0(v5, v69, type metadata accessor for Apple_Workout_Core_Zone);
      }

      v53 = v5;
      v54 = *(v51 + 5);
      outlined destroy of Apple_Workout_Core_HeartRateMetricsPublisher(v51, type metadata accessor for Apple_Workout_Core_Zone);
      type metadata accessor for LiveHeartRateZone();
      v55 = swift_allocObject();
      *(v55 + 48) = 0;
      result = swift_beginAccess();
      *(v55 + 48) = 0;
      v56 = floor(v41);
      v57 = floor(v46);
      if (v56 > v57)
      {
        goto LABEL_30;
      }

      *(v55 + 16) = v56;
      *(v55 + 24) = v57;
      *(v55 + 32) = v50;
      *(v55 + 40) = v54;
      *(v55 + 48) = *v35;

      MEMORY[0x20F2E6F30](v58);
      if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      outlined destroy of Apple_Workout_Core_HeartRateMetricsPublisher(v35, type metadata accessor for Apple_Workout_Core_LiveZone);
      v11 = v66;
      v31 += v65;
      v30 = v74 - 1;
      v5 = v53;
      v8 = v67;
      if (v74 == 1)
      {
        v28 = v76;
        v0 = v64;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_25:
    v59 = &v0[*(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 28)];
    v60 = *(v59 + 4);
    if (v60)
    {
      v61 = 0;
    }

    else
    {
      v61 = *v59;
    }

    v62 = v0[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMR);
    v63 = swift_allocObject();
    *(v63 + 24) = 0;
    *(v63 + 32) = 1;
    *(v63 + 16) = v28;
    swift_beginAccess();
    *(v63 + 24) = v61;
    *(v63 + 32) = v60;
    *(v63 + 33) = v62;
    return v63;
  }

  return result;
}

uint64_t specialized static HeartRateMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HeartRateMetricsPublisher();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  HeartRateMetricsPublisher.init()();
  v18 = a1;
  v19 = a2;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_HeartRateMetricsPublisher.decodeInto(publisher:)();
    outlined destroy of Apple_Workout_Core_HeartRateMetricsPublisher(v10, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  }

  return v14;
}

uint64_t type metadata accessor for HeartRateMetricsPublisher()
{
  result = type metadata singleton initialization cache for HeartRateMetricsPublisher;
  if (!type metadata singleton initialization cache for HeartRateMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for HeartRateMetricsPublisher()
{
  _s7Combine9PublishedVySdSgGMaTm_0(319, &lazy cache variable for type metadata for Published<Double?>, &_sSdSgMd, &_sSdSgMR);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    type metadata accessor for Published<HeartRateCurrentValueType>(319, &lazy cache variable for type metadata for Published<HeartRateCurrentValueType>);
    if (v4 <= 0x3F)
    {
      v9 = *(v3 - 8) + 64;
      type metadata accessor for Published<HeartRateCurrentValueType>(319, &lazy cache variable for type metadata for Published<Bool>);
      if (v6 <= 0x3F)
      {
        v10 = *(v5 - 8) + 64;
        _s7Combine9PublishedVySdSgGMaTm_0(319, &lazy cache variable for type metadata for Published<LiveZones<LiveHeartRateZone>?>, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGSgMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGSgMR);
        if (v8 <= 0x3F)
        {
          v11 = *(v7 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Published<HeartRateCurrentValueType>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void _s7Combine9PublishedVySdSgGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined init with copy of Apple_Workout_Core_LiveZone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s11WorkoutCore06Apple_a1_B10_LiveZonesVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FIUIWorkoutSettingsManager.userConfiguredSupportedMetricsButDuration.getter()
{
  result = [v0 orderedEnabledAndSupportedMetrics];
  if (!result)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of Any(v5, v26);
      outlined init with take of Any(v26, &v24);
      type metadata accessor for NSNumber();
      if ((swift_dynamicCast() & 1) != 0 && v25)
      {
        MEMORY[0x20F2E6F30]();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v27;
      }

      v5 += 32;
      --v4;
    }

    while (v4);

    if (!(v6 >> 62))
    {
LABEL_11:
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_11;
    }
  }

  result = __CocoaSet.count.getter();
  v8 = result;
  if (result)
  {
LABEL_12:
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F2E7A20](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        result = *(v6 + 8 * v9 + 32);
      }

      v11 = result;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [result unsignedIntegerValue];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v13;
      ++v9;
      if (v12 == v8)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_26:
  v10 = MEMORY[0x277D84F90];
LABEL_27:

  v16 = *(v10 + 16);
  if (v16)
  {
    v17 = (v10 + 32);
    v18 = MEMORY[0x277D84F90];
    do
    {
      v22 = *v17++;
      v21 = v22;
      if (v22 != 3)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v26[0] = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
          v18 = *&v26[0];
        }

        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v18 = *&v26[0];
        }

        *(v18 + 16) = v20 + 1;
        *(v18 + 8 * v20 + 32) = v21;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  return v18;
}

uint64_t FIUIWorkoutSettingsManager.supportsPowerMetrics.getter()
{
  result = [v0 orderedSupportedMetrics];
  if (!result)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of Any(v5, v29);
      outlined init with take of Any(v29, &v27);
      type metadata accessor for NSNumber();
      if ((swift_dynamicCast() & 1) != 0 && v28)
      {
        MEMORY[0x20F2E6F30]();
        if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v30;
      }

      v5 += 32;
      --v4;
    }

    while (v4);

    if (!(v6 >> 62))
    {
LABEL_11:
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_11;
    }
  }

  result = __CocoaSet.count.getter();
  v8 = result;
  if (result)
  {
LABEL_12:
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F2E7A20](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        result = *(v6 + 8 * v9 + 32);
      }

      v11 = result;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [result unsignedIntegerValue];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v13;
      ++v9;
      if (v12 == v8)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_26:
  v10 = MEMORY[0x277D84F90];
LABEL_27:

  v16 = *(v10 + 16);
  if (v16)
  {
    v17 = (v10 + 32);
    v18 = MEMORY[0x277D84F90];
    do
    {
      v22 = *v17++;
      v21 = v22;
      v23 = (1 << v22) & 0x300000001800;
      if (v22 <= 0x2D && v23 != 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v29[0] = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
          v18 = *&v29[0];
        }

        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v18 = *&v29[0];
        }

        *(v18 + 16) = v20 + 1;
        *(v18 + 8 * v20 + 32) = v21;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v26 = *(v18 + 16);

  return v26 != 0;
}

uint64_t MetricPlatter.metrics.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

void MetricPlatter.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v1 + 1);
  v7 = *v1;
  MetricPlatterType.rawValue.getter(a1);
  String.hash(into:)();

  Hasher._combine(_:)(v2);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      do
      {
        v6 = *v5++;
        MEMORY[0x20F2E7FF0](v6);
        --v4;
      }

      while (v4);
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricPlatter.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricPlatter.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MetricPlatter.CodingKeys()
{
  v1 = 0x6564756C636E69;
  if (*v0 != 1)
  {
    v1 = 0x7363697274656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MetricPlatter.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MetricPlatter.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetricPlatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetricPlatter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricPlatter.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore13MetricPlatterV10CodingKeys33_CAC6FBEE04D72E5C5846DC0CD2EABA75LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore13MetricPlatterV10CodingKeys33_CAC6FBEE04D72E5C5846DC0CD2EABA75LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v14 = v1[1];
  v13[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v9;
  v17 = 0;
  lazy protocol witness table accessor for type MetricPlatterType and conformance MetricPlatterType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v13[0];
    v16 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13[1] = v12;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo19HKWorkoutMetricTypeVGMd, &_sSaySo19HKWorkoutMetricTypeVGMR);
    lazy protocol witness table accessor for type [HKWorkoutMetricType] and conformance <A> [A](&lazy protocol witness table cache variable for type [HKWorkoutMetricType] and conformance <A> [A], &lazy protocol witness table cache variable for type HKWorkoutMetricType and conformance HKWorkoutMetricType);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

Swift::Int MetricPlatter.hashValue.getter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v4[72] = *v0;
  v4[73] = v1;
  v5 = v2;
  Hasher.init(_seed:)();
  MetricPlatter.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t MetricPlatter.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore13MetricPlatterV10CodingKeys33_CAC6FBEE04D72E5C5846DC0CD2EABA75LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore13MetricPlatterV10CodingKeys33_CAC6FBEE04D72E5C5846DC0CD2EABA75LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type MetricPlatterType and conformance MetricPlatterType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v19;
  v17 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo19HKWorkoutMetricTypeVGMd, &_sSaySo19HKWorkoutMetricTypeVGMR);
  v16 = 2;
  lazy protocol witness table accessor for type [HKWorkoutMetricType] and conformance <A> [A](&lazy protocol witness table cache variable for type [HKWorkoutMetricType] and conformance <A> [A], &lazy protocol witness table cache variable for type HKWorkoutMetricType and conformance HKWorkoutMetricType);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v15[1];
  *a2 = v11;
  *(a2 + 1) = v12 & 1;
  *(a2 + 8) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricPlatter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v4[72] = *v0;
  v4[73] = v1;
  v5 = v2;
  Hasher.init(_seed:)();
  MetricPlatter.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricPlatter()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 8);
  v4[72] = *v0;
  v4[73] = v1;
  v5 = v2;
  Hasher.init(_seed:)();
  MetricPlatter.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t MetricPlatter.id.getter()
{
  result = 0x647261646E617473;
  switch(*v0)
  {
    case 2:
      result = 0x6C61767265746E69;
      break;
    case 3:
      result = 0x6C61767265746E69;
      break;
    case 4:
      result = 0x7265636170;
      break;
    case 5:
      result = 1701011826;
      break;
    case 6:
      result = 0x746E656D676573;
      break;
    case 7:
      result = 0x7974697669746361;
      break;
    case 8:
      result = 0x6F65646976;
      break;
    case 9:
      result = 0x74696C7073;
      break;
    case 0xA:
      result = 0x7461527472616568;
      break;
    case 0xB:
      result = 0x6F707369746C756DLL;
      break;
    case 0xC:
      result = 0x7265776F70;
      break;
    case 0xD:
      result = 0x6E6F5A7265776F70;
      break;
    case 0xE:
      result = 0x6F69746176656C65;
      break;
    case 0xF:
      result = 0x656D6F6465657073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for Identifiable.id.getter in conformance MetricPlatter@<X0>(uint64_t *a1@<X8>)
{
  result = MetricPlatter.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FIUIWorkoutSettingsManager.allSupportedMetrics.getter()
{
  result = [v0 orderedSupportedMetrics];
  if (!result)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of Any(v5, v18);
      outlined init with take of Any(v18, &v16);
      type metadata accessor for NSNumber();
      if ((swift_dynamicCast() & 1) != 0 && v17)
      {
        MEMORY[0x20F2E6F30]();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v19;
      }

      v5 += 32;
      --v4;
    }

    while (v4);

    if (!(v6 >> 62))
    {
LABEL_11:
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_11;
    }
  }

  result = __CocoaSet.count.getter();
  v8 = result;
  if (result)
  {
LABEL_12:
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F2E7A20](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        result = *(v6 + 8 * v9 + 32);
      }

      v11 = result;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [result unsignedIntegerValue];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v13;
      ++v9;
      if (v12 == v8)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_26:
  v10 = MEMORY[0x277D84F90];
LABEL_27:

  return v10;
}

uint64_t FIUIWorkoutSettingsManager.allSupportedMetricsButDuration.getter()
{
  v0 = FIUIWorkoutSettingsManager.allSupportedMetrics.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v7 = *v2++;
      v6 = v7;
      if (v7 != 3)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1);
        }

        v5 = *(v3 + 16);
        v4 = *(v3 + 24);
        if (v5 >= v4 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v4 > 1), v5 + 1, 1);
        }

        *(v3 + 16) = v5 + 1;
        *(v3 + 8 * v5 + 32) = v6;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t FIUIWorkoutSettingsManager.supportsPace.getter()
{
  result = [v0 orderedSupportedMetrics];
  if (!result)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of Any(v5, v24);
      outlined init with take of Any(v24, &v22);
      type metadata accessor for NSNumber();
      if ((swift_dynamicCast() & 1) != 0 && v23)
      {
        MEMORY[0x20F2E6F30]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v25;
      }

      v5 += 32;
      --v4;
    }

    while (v4);

    if (!(v6 >> 62))
    {
LABEL_11:
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_11;
    }
  }

  result = __CocoaSet.count.getter();
  v8 = result;
  if (result)
  {
LABEL_12:
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F2E7A20](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        result = *(v6 + 8 * v9 + 32);
      }

      v11 = result;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [result unsignedIntegerValue];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v13;
      ++v9;
      if (v12 == v8)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_26:
  v10 = MEMORY[0x277D84F90];
LABEL_27:

  v16 = *(v10 + 16);
  v17 = 32;
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *(v10 + v17);
    v17 += 8;
  }

  while (v20 != 8);
  v21 = v18 != 0;

  return v21;
}

uint64_t FIUIWorkoutSettingsManager.supportsCadenceMetrics.getter()
{
  result = [v0 orderedSupportedMetrics];
  if (!result)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = MEMORY[0x277D84F90];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of Any(v5, v27);
      outlined init with take of Any(v27, &v25);
      type metadata accessor for NSNumber();
      if ((swift_dynamicCast() & 1) != 0 && v26)
      {
        MEMORY[0x20F2E6F30]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v7 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v28;
      }

      v5 += 32;
      --v4;
    }

    while (v4);

    if (!(v6 >> 62))
    {
LABEL_11:
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_11;
    }
  }

  result = __CocoaSet.count.getter();
  v8 = result;
  if (result)
  {
LABEL_12:
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F2E7A20](v9, v6);
      }

      else
      {
        if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        result = *(v6 + 8 * v9 + 32);
      }

      v11 = result;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [result unsignedIntegerValue];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      if (v15 >= v14 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v15 + 1;
      *(v10 + 8 * v15 + 32) = v13;
      ++v9;
      if (v12 == v8)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_26:
  v10 = MEMORY[0x277D84F90];
LABEL_27:

  v16 = *(v10 + 16);
  if (v16)
  {
    v17 = (v10 + 32);
    v18 = MEMORY[0x277D84F90];
    do
    {
      v22 = *v17++;
      v21 = v22;
      if ((v22 - 15) <= 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v27[0] = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
          v18 = *&v27[0];
        }

        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v18 = *&v27[0];
        }

        *(v18 + 16) = v20 + 1;
        *(v18 + 8 * v20 + 32) = v21;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v24 = *(v18 + 16);

  return v24 != 0;
}

unint64_t lazy protocol witness table accessor for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatter.CodingKeys and conformance MetricPlatter.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MetricPlatterType and conformance MetricPlatterType()
{
  result = lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType;
  if (!lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType;
  if (!lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType;
  if (!lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType;
  if (!lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType;
  if (!lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricPlatterType and conformance MetricPlatterType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [HKWorkoutMetricType] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo19HKWorkoutMetricTypeVGMd, &_sSaySo19HKWorkoutMetricTypeVGMR);
    lazy protocol witness table accessor for type HKWorkoutMetricType and conformance HKWorkoutMetricType(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HKWorkoutMetricType and conformance HKWorkoutMetricType(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HKWorkoutMetricType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized static MetricPlatter.== infix(_:_:)(char *a1, char *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 1);
  v4 = a2[1];
  v5 = *(a2 + 1);
  v13 = *a1;
  v12 = *a2;
  v6 = MetricPlatterType.rawValue.getter(a1);
  v8 = v7;
  if (v6 == MetricPlatterType.rawValue.getter(v6) && v8 == v9)
  {

    if (v2 != v4)
    {
      return 0;
    }
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if (v11 & 1) == 0 || ((v2 ^ v4))
    {
      return result;
    }
  }

  result = (v3 | v5) == 0;
  if (v3 && v5)
  {

    return _sSasSQRzlE2eeoiySbSayxG_ABtFZSo19HKWorkoutMetricTypeV_Tt1g5(v3, v5);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricPlatter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for MetricPlatter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricPlatter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricPlatter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized MetricPlatter.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6564756C636E69 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t WindowedDiscreteAccumulator.__allocating_init(over:averageCacheInterval:)(double a1, double a2)
{
  v4 = swift_allocObject();
  WindowedDiscreteAccumulator.init(over:averageCacheInterval:)(a1, a2);
  return v4;
}

WorkoutCore::WindowedDiscreteEntry __swiftcall WindowedDiscreteEntry.init(current:timeIntervalSinceReferenceDate:)(Swift::Double current, Swift::Double timeIntervalSinceReferenceDate)
{
  *v2 = current;
  v2[1] = timeIntervalSinceReferenceDate;
  result.timeIntervalSinceReferenceDate = timeIntervalSinceReferenceDate;
  result.current = current;
  return result;
}

uint64_t WindowedDiscreteEntry.description.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = v0[1];
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](544497952, 0xE400000000000000);
  Date.init(timeIntervalSinceReferenceDate:)();
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v8 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = [v8 stringFromDate_];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  (*(v2 + 8))(v5, v1);
  MEMORY[0x20F2E6D80](v11, v13);

  return v15[0];
}

uint64_t WindowedDiscreteAccumulator.init(over:averageCacheInterval:)(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore6AtomicCySayAA21WindowedDiscreteEntryVGGMd, &_s11WorkoutCore6AtomicCySayAA21WindowedDiscreteEntryVGGMR);
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = MEMORY[0x277D84F90];
  *(v5 + 24) = v6;
  *(v2 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore6AtomicCySdSgGMd, &_s11WorkoutCore6AtomicCySdSgGMR);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v7 + 32) = v8;
  *(v7 + 16) = 0;
  *(v7 + 24) = 1;
  *(v2 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore6AtomicCySdGMd, &_s11WorkoutCore6AtomicCySdGMR);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = v10;
  *(v2 + 40) = v9;
  *(v2 + 48) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t WindowedDiscreteAccumulator.count.getter()
{
  v1 = *(*(v0 + 16) + 24);

  os_unfair_lock_lock(v1 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_Say11WorkoutCore21WindowedDiscreteEntryVG_TG5TA_0(&v5);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v5;

  v3 = *(v2 + 16);

  return v3;
}

double WindowedDiscreteAccumulator.average.getter()
{
  static Date.timeIntervalSinceReferenceDate.getter();

  return WindowedDiscreteAccumulator.cachedAverage(now:)(v0);
}

Swift::Double __swiftcall WindowedDiscreteAccumulator.cachedAverage(now:)(Swift::Double now)
{
  v2 = v1;
  v4 = *(*(v1 + 32) + 32);

  os_unfair_lock_lock(v4 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_SdSg_TG5TA_0(&v42);
  os_unfair_lock_unlock(v4 + 4);
  v5 = v42;
  v6 = v43;

  if (v6)
  {
    v8 = *(v2 + 16);
    v9 = MEMORY[0x28223BE20](v7);
    v10 = *(v8 + 24);
    v11 = MEMORY[0x28223BE20](v9);
    MEMORY[0x28223BE20](v11);

    os_unfair_lock_lock(v10 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v42);
    os_unfair_lock_unlock(v10 + 4);
    v12 = v42;

    v14 = *(v2 + 40);
    v42 = v12;
    v15 = *(v14 + 24);
    v16 = MEMORY[0x28223BE20](v13);
    MEMORY[0x28223BE20](v16);

    os_unfair_lock_lock(v15 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v17);
    os_unfair_lock_unlock(v15 + 4);

    v19 = *(v2 + 32);
    v42 = now;
    v43 = 0;
    v20 = *(v19 + 32);
    v21 = MEMORY[0x28223BE20](v18);
    MEMORY[0x28223BE20](v21);

    os_unfair_lock_lock(v20 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v22);
    os_unfair_lock_unlock(v20 + 4);

    v24 = *(*(v2 + 40) + 24);
    MEMORY[0x28223BE20](v23);

    os_unfair_lock_lock(v24 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v42);
  }

  else
  {
    if (*(v2 + 24) < now - v5)
    {
      v25 = *(v2 + 16);
      v26 = MEMORY[0x28223BE20](v7);
      v27 = *(v25 + 24);
      v28 = MEMORY[0x28223BE20](v26);
      MEMORY[0x28223BE20](v28);

      os_unfair_lock_lock(v27 + 4);
      closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v42);
      os_unfair_lock_unlock(v27 + 4);
      v29 = v42;

      v31 = *(v2 + 40);
      v42 = v29;
      v32 = *(v31 + 24);
      v33 = MEMORY[0x28223BE20](v30);
      MEMORY[0x28223BE20](v33);

      os_unfair_lock_lock(v32 + 4);
      closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v34);
      os_unfair_lock_unlock(v32 + 4);

      v36 = *(v2 + 32);
      v42 = now;
      v43 = 0;
      v37 = *(v36 + 32);
      v38 = MEMORY[0x28223BE20](v35);
      MEMORY[0x28223BE20](v38);

      os_unfair_lock_lock(v37 + 4);
      closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v39);
      os_unfair_lock_unlock(v37 + 4);
    }

    v24 = *(*(v2 + 40) + 24);
    MEMORY[0x28223BE20](v7);

    os_unfair_lock_lock(v24 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(&v42);
  }

  os_unfair_lock_unlock(v24 + 4);
  v40 = v42;

  return v40;
}

Swift::Void __swiftcall WindowedDiscreteAccumulator.append(_:)(WorkoutCore::WindowedDiscreteEntry a1)
{
  v3 = v2;
  v4 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4[1];
  v11 = *(v3 + 16);
  v43 = *v4;
  v44 = v10;
  v12 = *(v11 + 24);
  v39 = partial apply for closure #1 in WindowedDiscreteAccumulator.append(_:);
  v40 = &v42;
  v41 = v11;
  v36 = partial apply for specialized closure #1 in Atomic.with<A>(_:);
  v37 = &v38;

  os_unfair_lock_lock(v12 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_3(v13);
  os_unfair_lock_unlock(v12 + 4);

  v14 = *(v3 + 32);
  v45 = 0;
  LOBYTE(v46) = 1;
  v15 = *(v14 + 32);
  v34 = v14;
  v35 = &v45;
  v31 = _s11WorkoutCore6AtomicC12wrappedValuexvsyyYbXEfU_SdSg_TG5TA_0;
  v32 = &v33;

  os_unfair_lock_lock(v15 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v16);
  os_unfair_lock_unlock(v15 + 4);

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.app);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v30 = v5;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 136315138;
    v45 = 0;
    v46 = 0xE000000000000000;
    v47 = v21;
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](544497952, 0xE400000000000000);
    Date.init(timeIntervalSinceReferenceDate:)();
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v22 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v24 = [v22 stringFromDate_];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    (*(v6 + 8))(v9, v30);
    MEMORY[0x20F2E6D80](v25, v27);

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v47);

    *(v20 + 4) = v28;
    _os_log_impl(&dword_20AEA4000, v18, v19, "[WindowedDiscreteAccumulator] append entry (%s)", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x20F2E9420](v21, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }
}

uint64_t closure #1 in WindowedDiscreteAccumulator.append(_:)(uint64_t *a1, double a2, double a3)
{
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 16 * v9;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;
  *a1 = v6;
  return result;
}

Swift::Double __swiftcall WindowedDiscreteAccumulator.recalculateAverage(end:)(Swift::Double end)
{
  v2 = *(*(v1 + 16) + 24);

  os_unfair_lock_lock(v2 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_Sd_TG5TA_0(&v5);
  os_unfair_lock_unlock(v2 + 4);
  v3 = v5;

  return v3;
}

void closure #1 in WindowedDiscreteAccumulator.recalculateAverage(end:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v10 = type metadata accessor for Date();
  v58 = *(v10 - 8);
  v11 = *(v58 + 64);
  MEMORY[0x28223BE20](v10);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(*a1 + 16);
  v15 = a4 - *(a2 + 48);
  v16 = v14;
  v17 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  v18 = 0;
  v16 = 0;
  while (*(v13 + v18 + 40) >= v15)
  {
    ++v16;
    v18 += 16;
    if (v14 == v16)
    {
      v16 = *(*a1 + 16);
      v17 = v16;
      goto LABEL_10;
    }
  }

  v17 = v16 + 1;
  if (!__OFADD__(v16, 1))
  {
    if (v17 != v14)
    {
      v48 = *(*a1 + 16);
      while (v17 < v48)
      {
        v5 = *(v13 + v18 + 56);
        if (v5 >= v15)
        {
          if (v17 != v16)
          {
            if (v16 >= v48)
            {
              goto LABEL_37;
            }

            v59 = *(v13 + 32 + 16 * v16);
            v50 = *(v13 + v18 + 48);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
            }

            v49 = v13 + 16 * v16;
            *(v49 + 32) = v50;
            *(v49 + 40) = v5;
            *(v13 + v18 + 48) = v59;
            *a1 = v13;
          }

          ++v16;
        }

        ++v17;
        v48 = *(v13 + 16);
        v18 += 16;
        if (v17 == v48)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      swift_once();
LABEL_21:
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static WOLog.app);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v30, v31))
      {

        goto LABEL_25;
      }

      v53 = v31;
      v54 = v30;
      v55 = a3;
      v56 = v4;
      v13 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v60 = v52;
      *v13 = 134219266;
      *(v13 + 4) = v5;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v18;
      *(v13 + 22) = 2080;
      v17 = v57;
      Date.init(timeIntervalSinceReferenceDate:)();
      v51 = v18;
      if (one-time initialization token for logDateFormatter == -1)
      {
LABEL_23:
        v32 = static WOLog.logDateFormatter;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v34 = [v32 stringFromDate_];

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v38 = v59;
        v58 = *(v58 + 8);
        (v58)(v17, v59);
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, &v60);

        *(v13 + 24) = v39;
        *(v13 + 32) = 2080;
        Date.init(timeIntervalSinceReferenceDate:)();
        v40 = Date._bridgeToObjectiveC()().super.isa;
        v41 = [v32 stringFromDate_];

        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        (v58)(v17, v38);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v60);

        *(v13 + 34) = v45;
        *(v13 + 42) = 2048;
        *(v13 + 44) = v14;
        *(v13 + 52) = 2048;
        *(v13 + 54) = v51;
        v46 = v54;
        _os_log_impl(&dword_20AEA4000, v54, v53, "[WindowedDiscreteAccumulator] recalculated average (%f BPM) accross %ld entries in time window (%s - %s) entries count (before: %ld, after: %ld)", v13, 0x3Eu);
        v47 = v52;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v47, -1, -1);
        MEMORY[0x20F2E9420](v13, -1, -1);

        a3 = v55;
LABEL_25:
        *a3 = v5;
        return;
      }

LABEL_40:
      swift_once();
      goto LABEL_23;
    }

    v17 = *(*a1 + 16);
LABEL_9:
    if (v17 < v16)
    {
      __break(1u);
      goto LABEL_40;
    }

LABEL_10:
    *&v59 = v10;
    specialized Array.replaceSubrange<A>(_:with:)(v16, v17);
    v19 = *a1;
    v18 = *(*a1 + 16);
    if (!v18)
    {
      v5 = 0.0;
      goto LABEL_20;
    }

    if (v18 == 1)
    {
      v20 = 0;
      v21 = 0.0;
    }

    else
    {
      v20 = v18 & 0x7FFFFFFFFFFFFFFELL;
      v22 = (v19 + 48);
      v21 = 0.0;
      v23 = v18 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v24 = *(v22 - 2);
        v25 = *v22;
        v22 += 4;
        v21 = v21 + v24 + v25;
        v23 -= 2;
      }

      while (v23);
      if (v18 == v20)
      {
        goto LABEL_19;
      }
    }

    v26 = v18 - v20;
    v27 = (v19 + 16 * v20 + 32);
    do
    {
      v28 = *v27;
      v27 += 2;
      v21 = v21 + v28;
      --v26;
    }

    while (v26);
LABEL_19:
    v5 = v21 / v18;
LABEL_20:
    if (one-time initialization token for app == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  __break(1u);
}

void *WindowedDiscreteAccumulator.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t WindowedDiscreteAccumulator.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t partial apply for specialized closure #1 in Atomic.with<A>(_:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v2(v3 + 16);
  return swift_endAccess();
}

uint64_t getEnumTagSinglePayload for WindowedDiscreteEntry(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WindowedDiscreteEntry(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

WorkoutCore::Platform_optional __swiftcall Platform.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v1.value = WorkoutCore_Platform_watch;
  }

  else
  {
    v1.value = WorkoutCore_Platform_unknownDefault;
  }

  if (rawValue)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Platform@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type [Platform] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Platform] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Platform] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore8PlatformOGMd, &_sSay11WorkoutCore8PlatformOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Platform] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Platform and conformance Platform()
{
  result = lazy protocol witness table cache variable for type Platform and conformance Platform;
  if (!lazy protocol witness table cache variable for type Platform and conformance Platform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Platform and conformance Platform);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Platform and conformance Platform;
  if (!lazy protocol witness table cache variable for type Platform and conformance Platform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Platform and conformance Platform);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Platform()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Platform()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for Platform(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Platform(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore15KnownPublishersO_SD4KeysVyAFs6UInt32V_GTt0g5(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type KnownPublishers and conformance KnownPublishers();
  result = MEMORY[0x20F2E7290](v2, &type metadata for KnownPublishers, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = specialized Set._Variant.insert(_:)(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSyp_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x20F2E7290](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Int WorkoutConfigurationFilterType.configurationTypes.getter()
{
  v1 = *v0;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v3 = &outlined read-only object #2 of WorkoutConfigurationFilterType.configurationTypes.getter;
    }

    else if (v1 == 4)
    {
      v3 = &outlined read-only object #5 of WorkoutConfigurationFilterType.configurationTypes.getter;
    }

    else
    {
      v3 = &outlined read-only object #3 of WorkoutConfigurationFilterType.configurationTypes.getter;
    }
  }

  else
  {
    if (!*v0)
    {
      v2 = &outlined read-only object #0 of WorkoutConfigurationFilterType.configurationTypes.getter;
      return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_SayAHGTt0g5Tf4g_nTm(v2, lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType, &type metadata for ConfigurationType, specialized Set._Variant.insert(_:));
    }

    if (v1 == 1)
    {
      v2 = &outlined read-only object #4 of WorkoutConfigurationFilterType.configurationTypes.getter;
      return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_SayAHGTt0g5Tf4g_nTm(v2, lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType, &type metadata for ConfigurationType, specialized Set._Variant.insert(_:));
    }

    v3 = &outlined read-only object #1 of WorkoutConfigurationFilterType.configurationTypes.getter;
  }

  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore17ConfigurationTypeO_Tt0g5Tf4g_n(v3);
}

WorkoutCore::WorkoutConfigurationFilterType_optional __swiftcall WorkoutConfigurationFilterType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutConfigurationFilterType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutConfigurationFilterType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t static WorkoutConfigurationFilterType.supported(for:)(uint64_t a1)
{
  v8 = MEMORY[0x277D84FA0];
  specialized Set._Variant.insert(_:)(&v7, 1);
  if (specialized Set.contains(_:)(0, a1))
  {
    specialized Set._Variant.insert(_:)(&v3, 2);
  }

  if (specialized Set.contains(_:)(3u, a1))
  {
    specialized Set._Variant.insert(_:)(&v4, 4);
  }

  if (specialized Set.contains(_:)(1u, a1))
  {
    specialized Set._Variant.insert(_:)(&v5, 3);
  }

  if (specialized Set.contains(_:)(2u, a1))
  {
    specialized Set._Variant.insert(_:)(&v6, 5);
  }

  return v8;
}

uint64_t WorkoutConfigurationFilterType.accessibilityIdentifier.getter()
{
  v1 = *v0;
  v2 = 0x6574736567677553;
  v3 = 0x6D6F74737543;
  v4 = 0x7265636150;
  if (v1 != 4)
  {
    v4 = 0x756F522065636152;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 7105601;
  if (v1 != 1)
  {
    v5 = 0x736C616F47;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x20F2E7290](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_SayAHGTt0g5Tf4g_nTm(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x20F2E7290](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutConfigurationFilterType and conformance WorkoutConfigurationFilterType()
{
  result = lazy protocol witness table cache variable for type WorkoutConfigurationFilterType and conformance WorkoutConfigurationFilterType;
  if (!lazy protocol witness table cache variable for type WorkoutConfigurationFilterType and conformance WorkoutConfigurationFilterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfigurationFilterType and conformance WorkoutConfigurationFilterType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [WorkoutConfigurationFilterType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutConfigurationFilterType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutConfigurationFilterType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A23ConfigurationFilterTypeOGMd, &_sSay11WorkoutCore0A23ConfigurationFilterTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutConfigurationFilterType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutConfigurationFilterType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutConfigurationFilterType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t WorkoutManagedConfigurationsStore.__allocating_init(queryClient:backgroundAssertionManager:systemConfigurationSyncStateHandler:applicationSignificantTimeChangeNotificationName:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = specialized WorkoutManagedConfigurationsStore.__allocating_init(queryClient:backgroundAssertionManager:systemConfigurationSyncStateHandler:applicationSignificantTimeChangeNotificationName:)(a1, a2, v11, a4, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1Tm_17(a3);
  return v12;
}

uint64_t one-time initialization function for managedConfigurationsDidUpdate()
{
  result = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B468360);
  static NSNotificationName.managedConfigurationsDidUpdate = result;
  return result;
}

id static NSNotificationName.managedConfigurationsDidUpdate.getter()
{
  if (one-time initialization token for managedConfigurationsDidUpdate != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.managedConfigurationsDidUpdate;

  return v1;
}

uint64_t key path setter for WorkoutManagedConfigurationsStore.cachedManagedConfigurations : WorkoutManagedConfigurationsStore(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;
}

uint64_t WorkoutManagedConfigurationsStore.cachedManagedConfigurations.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 136);
}

uint64_t WorkoutManagedConfigurationsStore.cachedManagedConfigurations.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 136);
  *(v1 + 136) = a1;
}

id WorkoutManagedConfigurationsStore.nanoSyncControl.getter()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 152);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for nanoSyncControl != -1)
    {
      swift_once();
    }

    v3 = static WorkoutCoreInjector.nanoSyncControl;
    v4 = *(v0 + 152);
    *(v0 + 152) = static WorkoutCoreInjector.nanoSyncControl;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t WorkoutManagedConfigurationsStore.init(queryClient:backgroundAssertionManager:systemConfigurationSyncStateHandler:applicationSignificantTimeChangeNotificationName:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = specialized WorkoutManagedConfigurationsStore.init(queryClient:backgroundAssertionManager:systemConfigurationSyncStateHandler:applicationSignificantTimeChangeNotificationName:)(a1, a2, v14, a4, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_1Tm_17(a3);
  return v16;
}

uint64_t WorkoutManagedConfigurationsStore.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  __swift_destroy_boxed_opaque_existential_1Tm_17((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_17((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm_17((v0 + 96));
  v3 = *(v0 + 136);

  return v0;
}

uint64_t WorkoutManagedConfigurationsStore.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 144);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver_];

  __swift_destroy_boxed_opaque_existential_1Tm_17((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_17((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm_17((v0 + 96));
  v3 = *(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t WorkoutManagedConfigurationsStore.reloadManagedConfigurations()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();

  if ([v12 isMainThread])
  {
    *(v1 + 160) = 0;
    WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(0);
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v18 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in WorkoutManagedConfigurationsStore.reloadManagedConfigurations();
    *(v14 + 24) = v1;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_46_0;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v18;
    MEMORY[0x20F2E7580](0, v11, v6, v15);
    _Block_release(v15);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v7);
  }
}

void WorkoutManagedConfigurationsStore.registerForNotificationsIfNeeded()()
{
  if (*(v0 + 160) == 1 && (*(v0 + 161) & 1) == 0)
  {
    v1 = v0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.app);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "[ManagedConfigurationStore] registering for HK sync changes", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = NSNotificationNameForSyncedPersistenceType();
    v7 = [v6 UTF8String];
    type metadata accessor for OS_dispatch_queue();
    v8 = static OS_dispatch_queue.main.getter();
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    *(v10 + 24) = v9;
    v13[4] = partial apply for closure #1 in WorkoutManagedConfigurationsStore.registerForNotificationsIfNeeded();
    v13[5] = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    v13[3] = &block_descriptor_39_3;
    v11 = _Block_copy(v13);
    v12 = v6;

    swift_beginAccess();
    notify_register_dispatch(v7, (v1 + 144), v8, v11);
    swift_endAccess();
    _Block_release(v11);

    *(v1 + 161) = 1;
  }
}

uint64_t closure #1 in WorkoutManagedConfigurationsStore.registerForNotificationsIfNeeded()(uint64_t a1, void *a2)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.app);
  v4 = a2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[ManagedConfigurationStore] received %@ notification, will reload workout_managed_configurations", v7, 0xCu);
    _s10Foundation4UUIDVSgWOhTm_5(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    WorkoutManagedConfigurationsStore.didReceiveManagedNotification()();
  }

  return result;
}

void WorkoutManagedConfigurationsStore.didReceiveManagedNotification()()
{
  [*(v0 + 168) invalidate];
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_weakInit();
  v6[4] = partial apply for closure #1 in WorkoutManagedConfigurationsStore.didReceiveManagedNotification();
  v6[5] = v2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v6[3] = &block_descriptor_32_0;
  v3 = _Block_copy(v6);

  v4 = [v1 scheduledTimerWithTimeInterval:0 repeats:v3 block:1.0];
  _Block_release(v3);
  v5 = *(v0 + 168);
  *(v0 + 168) = v4;
}

void closure #1 in WorkoutManagedConfigurationsStore.didReceiveManagedNotification()()
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.app);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20AEA4000, v1, v2, "[ManagedConfigurationStore] firing notification timer for coalesced notifications", v3, 2u);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    WorkoutManagedConfigurationsStore.reloadManagedConfigurations()();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 168);

    [v5 invalidate];
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + 168);
    *(v6 + 168) = 0;
  }
}

uint64_t WorkoutManagedConfigurationsStore.stopSyncing(for:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[17];
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = v5;
  v8 = v2[17];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = v2[17];
  v20 = v10;
  v2[17] = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
  }

  v11 = *(*(v10 + 48) + 8 * v7);

  v12 = *(*(v10 + 56) + 8 * v7);
  specialized _NativeDictionary._delete(at:)(v7, v10);
  v2[17] = v10;
  swift_endAccess();

  v13 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for managedConfigurationsDidUpdate != -1)
  {
    swift_once();
  }

  [v13 postNotificationName:static NSNotificationName.managedConfigurationsDidUpdate object:{0, v20}];

  v14 = v2[5];
  v15 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v14);
  type metadata accessor for QueriedExternalProvider();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = 0;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = v2;
  v18 = *(v15 + 128);
  swift_retain_n();

  v18(v16, 1, 0, partial apply for closure #1 in WorkoutManagedConfigurationsStore.stopSyncing(for:), v17, v14, v15);
}

void closure #1 in WorkoutManagedConfigurationsStore.stopSyncing(for:)(char a1, void *a2, uint64_t a3)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.app);

  v7 = a2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315650;
    swift_beginAccess();
    v12 = *(a3 + 32);
    v13 = *(a3 + 40);

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, aBlock);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = a1 & 1;
    *(v10 + 18) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v15 = Optional.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, aBlock);

    *(v10 + 20) = v17;
    _os_log_impl(&dword_20AEA4000, v8, v9, "[ManagedConfigurationStore] Stopped syncing %s. success=%{BOOL}d, error=%s", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  if (a1)
  {
    v18 = WorkoutManagedConfigurationsStore.nanoSyncControl.getter();
    aBlock[4] = closure #1 in closure #1 in WorkoutManagedConfigurationsStore.stopSyncing(for:);
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_59_0;
    v19 = _Block_copy(aBlock);
    [v18 forceNanoSyncWithOptions:0 completion:v19];

    _Block_release(v19);
  }
}

void closure #1 in closure #1 in WorkoutManagedConfigurationsStore.stopSyncing(for:)(char a1, void *a2)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.app);
  v5 = a2;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
    v9 = Optional.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 10) = v11;
    _os_log_impl(&dword_20AEA4000, oslog, v6, "[ManagedConfigurationStore]  nano sync success=%{BOOL}d, error=%s", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm_17(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t WorkoutManagedConfigurationsStore.handleSignificantTimeChangeNotification()(const char *a1)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.app);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, a1, v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  return WorkoutManagedConfigurationsStore.updateManagedConfigurationObserversIfNecessary()();
}

uint64_t @objc WorkoutManagedConfigurationsStore.handleSignificantTimeChangeNotification()(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t WorkoutManagedConfigurationsStore.updateManagedConfigurationObserversIfNecessary()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();

  if ([v12 isMainThread])
  {
    closure #1 in WorkoutManagedConfigurationsStore.updateManagedConfigurationObserversIfNecessary()();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v18 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in WorkoutManagedConfigurationsStore.updateManagedConfigurationObserversIfNecessary();
    *(v14 + 24) = v1;
    aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_9;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_68;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v18;
    MEMORY[0x20F2E7580](0, v11, v6, v15);
    _Block_release(v15);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v7);
  }
}

void closure #1 in WorkoutManagedConfigurationsStore.updateManagedConfigurationObserversIfNecessary()()
{
  if (WorkoutManagedConfigurationsStore.hasAvailableManagedConfigurations.getter())
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v0 = type metadata accessor for Logger();
    __swift_project_value_buffer(v0, static WOLog.app);
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_20AEA4000, v1, v2, "[ManagedConfigurationStore] forcing observers to update", v3, 2u);
      MEMORY[0x20F2E9420](v3, -1, -1);
    }

    v4 = [objc_opt_self() defaultCenter];
    oslog = v4;
    if (one-time initialization token for managedConfigurationsDidUpdate != -1)
    {
      swift_once();
      v4 = oslog;
    }

    [v4 postNotificationName:static NSNotificationName.managedConfigurationsDidUpdate object:0];
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.app);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v6, "[ManagedConfigurationStore] no available managed configurations. skipping update", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }
  }
}

uint64_t WorkoutManagedConfigurationsStore.hasAvailableManagedConfigurations.getter()
{
  result = swift_beginAccess();
  v2 = 0;
  v3 = *(v0 + 136);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
LABEL_9:
    v9 = *(*(v3 + 56) + ((v2 << 9) | (8 * __clz(__rbit64(v6)))));
    if (v9 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 &= v6 - 1;
    if (result)
    {
      return 1;
    }
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {
      return 0;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void WorkoutManagedConfigurationsStore.updateManagedOccurrence(externalProvider:managedConfiguration:completionDate:)(unint64_t a1, char *a2, uint64_t a3)
{
  v138 = a3;
  v143 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v136 = &v130 - v6;
  v135 = type metadata accessor for Date();
  v134 = *(v135 - 8);
  v7 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v133 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v137 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v130 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = type metadata accessor for UUID();
  v140 = *(v142 - 8);
  v20 = *(v140 + 64);
  v21 = MEMORY[0x28223BE20](v142);
  v23 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v141 = &v130 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v130 - v26;
  if (one-time initialization token for placeholder != -1)
  {
    swift_once();
  }

  v28 = static ExternalProvider.placeholder;
  swift_beginAccess();
  v29 = *(a1 + 32);
  v30 = *(a1 + 40);
  swift_beginAccess();
  if (v29 == *(v28 + 4) && v30 == *(v28 + 5) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static WOLog.app);
    v32 = v143;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v145[0] = v36;
      *v35 = 136315138;
      v37 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v38 = v140;
      v39 = v142;
      (*(v140 + 16))(v27, &v32[v37], v142);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      (*(v38 + 8))(v27, v39);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v145);

      *(v35 + 4) = v43;
      _os_log_impl(&dword_20AEA4000, v33, v34, "[ManagedConfigurationStore] Skipping placeholder provider for: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_17(v36);
      MEMORY[0x20F2E9420](v36, -1, -1);
      MEMORY[0x20F2E9420](v35, -1, -1);
    }

    return;
  }

  type metadata accessor for OS_dispatch_queue();
  *v19 = static OS_dispatch_queue.main.getter();
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v44 = _dispatchPreconditionTest(_:)();
  v46 = *(v16 + 8);
  v45 = v16 + 8;
  v46(v19, v15);
  if ((v44 & 1) == 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v47 = OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID;
  v48 = v143;
  swift_beginAccess();
  outlined init with copy of UUID?(&v48[v47], v14);
  v45 = v140;
  v49 = (v140 + 48);
  v50 = *(v140 + 48);
  v28 = v142;
  if (v50(v14, 1, v142) == 1)
  {
    v51 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v45 + 16))(v141, &v48[v51], v28);
    if (v50(v14, 1, v28) != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_5(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v45 + 32))(v141, v14, v28);
  }

  v52 = v139;
  swift_beginAccess();
  v53 = v52[17];
  if (!*(v53 + 16))
  {
LABEL_28:
    if (one-time initialization token for app == -1)
    {
LABEL_29:
      v77 = type metadata accessor for Logger();
      __swift_project_value_buffer(v77, static WOLog.app);
      (*(v45 + 16))(v23, v141, v28);
      v78 = Logger.logObject.getter();
      v79 = v45;
      v80 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v146[0] = v82;
        *v81 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v83 = dispatch thunk of CustomStringConvertible.description.getter();
        v85 = v84;
        v86 = *(v79 + 8);
        v86(v23, v142);
        v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v146);

        *(v81 + 4) = v87;
        _os_log_impl(&dword_20AEA4000, v78, v80, "[ManagedConfigurationStore] Skipping occurrence update for managed_configuration: %s", v81, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_17(v82);
        v88 = v82;
        v28 = v142;
        MEMORY[0x20F2E9420](v88, -1, -1);
        MEMORY[0x20F2E9420](v81, -1, -1);
      }

      else
      {

        v86 = *(v79 + 8);
        v86(v23, v28);
      }

      v86(v141, v28);
      return;
    }

LABEL_50:
    swift_once();
    goto LABEL_29;
  }

  v54 = v52[17];

  v55 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v56 & 1) == 0)
  {

    goto LABEL_28;
  }

  v57 = *(*(v53 + 56) + 8 * v55);

  MEMORY[0x28223BE20](v58);
  *(&v130 - 2) = v141;
  specialized Collection.firstIndex(where:)(partial apply for closure #1 in WorkoutManagedConfigurationsStore.updateManagedOccurrence(externalProvider:managedConfiguration:completionDate:), (&v130 - 4), v57);
  v60 = v59;
  v62 = v61;

  v45 = v140;
  if (v62)
  {
    goto LABEL_28;
  }

  v130 = v60;
  v63 = swift_allocObject();
  v131 = v63;
  v64 = v143;
  *(v63 + 16) = v143;
  v132 = (v63 + 16);
  v65 = v137;
  outlined init with copy of UUID?(v64 + v47, v137);
  v66 = v50(v65, 1, v28);
  v67 = v64;
  _s10Foundation4UUIDVSgWOhTm_5(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v66 == 1)
  {
    goto LABEL_34;
  }

  v68 = v139[17];
  if (!*(v68 + 16))
  {
    goto LABEL_34;
  }

  v69 = v139[17];

  v70 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v71 & 1) == 0)
  {

    goto LABEL_34;
  }

  v72 = *(*(v68 + 56) + 8 * v70);

  v73 = v132;
  v74 = &v147;
  if ((v72 & 0xC000000000000001) != 0)
  {
    goto LABEL_55;
  }

  if ((v130 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v130 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_57:
    __break(1u);
    return;
  }

  for (i = *(v72 + v130 + 4); ; i = MEMORY[0x20F2E7A20](*(v74 - 32), v72))
  {
    v76 = i;

    *v73 = v76;

    v67 = v76;
LABEL_34:
    v89 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v90 = *(v67 + v89);
    v91 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
    swift_beginAccess();
    v92 = *&v90[v91];
    v93 = __OFADD__(v92, 1);
    v94 = v92 + 1;
    if (v93)
    {
      __break(1u);
      goto LABEL_52;
    }

    *&v90[v91] = v94;
    v95 = v134;
    v143 = *(v134 + 16);
    v96 = v133;
    v73 = v135;
    (v143)(v133, v138, v135);
    v97 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
    swift_beginAccess();
    v98 = *(v95 + 40);
    v99 = v90;
    v98(&v90[v97], v96, v73);
    swift_endAccess();

    v49 = v132;
    v100 = *v132;
    v101 = v136;
    (v143)(v136, v138, v73);
    (*(v95 + 56))(v101, 0, 1, v73);
    v102 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
    swift_beginAccess();
    v103 = v100;
    outlined assign with take of Date?(v101, v100 + v102);
    swift_endAccess();

    v104 = *v49;
    v28 = specialized WorkoutConfiguration.sanitized()();

    v67 = WorkoutManagedConfigurationsStore.cachedManagedConfigurations.modify();
    v72 = specialized Dictionary.subscript.modify(v145, a1);
    a1 = *v105;
    if (!*v105)
    {
      break;
    }

    v106 = v105;
    v107 = v28;
    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *v106 = a1;
    v50 = v131;
    if (!isUniquelyReferenced_nonNull_bridgeObject || a1 >> 62)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
      *v106 = a1;
    }

    v74 = &v147;
    if ((v130 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v74 = (a1 & 0xFFFFFFFFFFFFFF8);
      if (v130 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v109 = &v74[8 * v130];
        v110 = *(v109 + 4);
        *(v109 + 4) = v107;

        (v72)(v145, 0);
        (v67)(v146, 0);
        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_55:
    ;
  }

  (v72)(v145, 0);
  (v67)(v146, 0);
  v50 = v131;
LABEL_43:
  if (one-time initialization token for app == -1)
  {
    goto LABEL_44;
  }

LABEL_52:
  swift_once();
LABEL_44:
  v111 = type metadata accessor for Logger();
  __swift_project_value_buffer(v111, static WOLog.app);

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v144 = v116;
    *v114 = 138412546;
    swift_beginAccess();
    v117 = *v49;
    v118 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v119 = *&v117[v118];
    *(v114 + 4) = v119;
    *v115 = v119;
    *(v114 + 12) = 2080;
    v120 = v119;
    v121 = v117;
    v122 = WorkoutConfiguration.logDisplayName.getter();
    v124 = v123;

    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, &v144);

    *(v114 + 14) = v125;
    _os_log_impl(&dword_20AEA4000, v112, v113, "[ManagedConfigurationStore] Updated occurrence (%@) for managed_configuration (%s)", v114, 0x16u);
    _s10Foundation4UUIDVSgWOhTm_5(v115, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v115, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_17(v116);
    MEMORY[0x20F2E9420](v116, -1, -1);
    MEMORY[0x20F2E9420](v114, -1, -1);
  }

  v126 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for managedConfigurationsDidUpdate != -1)
  {
    swift_once();
  }

  [v126 postNotificationName:static NSNotificationName.managedConfigurationsDidUpdate object:0];

  v127 = v139[5];
  v128 = v139[6];
  __swift_project_boxed_opaque_existential_1(v139 + 2, v127);
  v129 = *(v128 + 64);

  v129(v28, partial apply for closure #2 in WorkoutManagedConfigurationsStore.updateManagedOccurrence(externalProvider:managedConfiguration:completionDate:), v50, v127, v128);

  (*(v140 + 8))(v141, v142);
}

uint64_t closure #1 in WorkoutManagedConfigurationsStore.updateManagedOccurrence(externalProvider:managedConfiguration:completionDate:)(uint64_t *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v3 + 16))(v6, v7 + v8, v2);
  v9 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v9 & 1;
}

void closure #2 in WorkoutManagedConfigurationsStore.updateManagedOccurrence(externalProvider:managedConfiguration:completionDate:)(int a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
    v11 = 7104846;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.app);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v34 = v11;
    v18 = v17;
    v35 = swift_slowAlloc();
    v36 = v35;
    *v18 = 136315906;
    swift_beginAccess();
    v19 = *(a3 + 16);
    v33 = a1;
    v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v7 + 16))(v10, v19 + v20, v6);
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v36);

    *(v18 + 4) = v24;
    *(v18 + 12) = 1024;
    *(v18 + 14) = v33 & 1;
    *(v18 + 18) = 2080;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v13, &v36);

    *(v18 + 20) = v25;
    *(v18 + 28) = 2080;
    swift_beginAccess();
    v26 = *(a3 + 16);
    v27 = WorkoutConfiguration.logDisplayName.getter();
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v36);

    *(v18 + 30) = v30;
    _os_log_impl(&dword_20AEA4000, v15, v16, "[ManagedConfigurationStore] Saved occurrence for sanitized managed_configuration: %s, success: %{BOOL}d, error: %s (%s)", v18, 0x26u);
    v31 = v35;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(Swift::Bool enteringForeground)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v59 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v52 - v8;
  MEMORY[0x28223BE20](v7);
  v61 = &v52 - v10;
  v11 = v1[15];
  v12 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v11);
  v13 = (*(v12 + 8))(v11, v12);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = __swift_project_value_buffer(v14, static WOLog.app);

  v58 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109888;
    v19 = *(v2 + 160);
    *(v18 + 4) = v19 ^ 1;
    *(v18 + 8) = 1024;
    *(v18 + 10) = v19;

    *(v18 + 14) = 1024;
    *(v18 + 16) = v13 & 1;
    *(v18 + 20) = 1024;
    *(v18 + 22) = enteringForeground;
    _os_log_impl(&dword_20AEA4000, v16, v17, "[ManagedConfigurationStore] loadIfNeeded: %{BOOL}d (loaded: %{BOOL}d, canLoadConfigurations: %{BOOL}d, enteringForeground: %{BOOL}d)", v18, 0x1Au);
    MEMORY[0x20F2E9420](v18, -1, -1);

    if ((v13 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    if ((v13 & 1) == 0)
    {
      return;
    }
  }

  if (*(v2 + 160) != 1 || enteringForeground)
  {
    v20 = v61;
    UUID.init()();
    v21 = v2[10];
    v22 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v21);
    v63 = 3;
    v54 = (*(v22 + 8))(&v63, v20, 0xD000000000000034, 0x800000020B468210, v21, v22, 15.0);
    v23 = v60;
    v56 = *(v60 + 16);
    v57 = v60 + 16;
    v56(v9, v20, v4);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v53 = v25;
      v26 = v23;
      v27 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v62 = v52;
      *v27 = 136315650;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1702256979, 0xE400000000000000, &v62);
      *(v27 + 12) = 2080;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v55 = *(v26 + 8);
      v55(v9, v4);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v62);

      *(v27 + 14) = v31;
      *(v27 + 22) = 2080;
      if (v54)
      {
        if (v54 == 2)
        {
          v32 = 0xEC00000065746165;
          v33 = 0x7243746F6E6E6163;
        }

        else if (v54 == 1)
        {
          v32 = 0xED00007374736978;
          v33 = 0x4579646165726C61;
        }

        else
        {
          v33 = 0;
          v32 = 0xE000000000000000;
        }
      }

      else
      {
        v32 = 0xE700000000000000;
        v33 = 0x73736563637573;
      }

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v62);

      *(v27 + 24) = v34;
      _os_log_impl(&dword_20AEA4000, v24, v53, "[ManagedConfigurationStore] load background assertion (%s, %s) acquired: %s", v27, 0x20u);
      v35 = v52;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v35, -1, -1);
      MEMORY[0x20F2E9420](v27, -1, -1);

      v23 = v60;
    }

    else
    {

      v55 = *(v23 + 8);
      v55(v9, v4);
    }

    static Date.timeIntervalSinceReferenceDate.getter();
    v37 = v36;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412290;
      v42 = [objc_opt_self() currentThread];
      *(v40 + 4) = v42;
      *v41 = v42;
      _os_log_impl(&dword_20AEA4000, v38, v39, "[ManagedConfigurationStore] loading all workout_managed_configurations from thread: %@", v40, 0xCu);
      _s10Foundation4UUIDVSgWOhTm_5(v41, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v40, -1, -1);
    }

    v43 = swift_allocObject();
    swift_weakInit();
    v44 = v59;
    v45 = v61;
    v56(v59, v61, v4);
    v46 = (*(v23 + 80) + 25) & ~*(v23 + 80);
    v47 = v4;
    v48 = swift_allocObject();
    *(v48 + 16) = v43;
    *(v48 + 24) = 3;
    (*(v23 + 32))(v48 + v46, v44, v4);
    *(v48 + ((v5 + v46 + 7) & 0xFFFFFFFFFFFFFFF8)) = v37;
    v49 = v2[5];
    v50 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v49);
    v51 = *(v50 + 88);

    v51(partial apply for closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:), v48, v49, v50);

    v55(v45, v47);
  }
}

uint64_t closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, double a6)
{
  v48 = a4;
  v49 = a1;
  v50 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v42 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v20 = *(v15 + 16);
  v20(&v42 - v18, a5, v14);
  v52 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20(v52, v19, v14);
  v21 = (*(v15 + 80) + 25) & ~*(v15 + 80);
  v22 = (v16 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = a3;
  *(v24 + 16) = a3;
  v26 = v48;
  *(v24 + 24) = v48;
  v27 = *(v15 + 32);
  v51 = v14;
  v27(v24 + v21, v19, v14);
  *(v24 + v22) = a6;
  v29 = v49;
  v28 = v50;
  *(v24 + v23) = v49;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
  v30 = v28;
  v31 = objc_opt_self();
  v32 = v30;

  if ([v31 isMainThread])
  {
    v33 = v52;
    closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(v25, v26, v52, v29, v30, a6);

    v34 = v33;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v35 = static OS_dispatch_queue.main.getter();
    v36 = swift_allocObject();
    *(v36 + 16) = partial apply for closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:);
    *(v36 + 24) = v24;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_56_0;
    v37 = _Block_copy(aBlock);

    v38 = v42;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v39 = v44;
    v40 = v47;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v38, v39, v37);
    _Block_release(v37);

    (*(v46 + 8))(v39, v40);
    (*(v43 + 8))(v38, v45);
    v34 = v52;
  }

  return (*(v15 + 8))(v34, v51);
}

uint64_t closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, double a6)
{
  LOBYTE(v10) = a2;
  static Date.timeIntervalSinceReferenceDate.getter();
  v13 = v12;
  if (one-time initialization token for app != -1)
  {
LABEL_47:
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.app);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    a6 = v13 - a6;
    v17 = swift_slowAlloc();
    *v17 = 134218240;
    *(v17 + 4) = *(a4 + 16);

    *(v17 + 12) = 2048;
    *(v17 + 14) = a6;
    _os_log_impl(&dword_20AEA4000, v15, v16, "[ManagedConfigurationStore] loaded %ld workout_managed_configurations from database, elapsed time: %f seconds", v17, 0x16u);
    MEMORY[0x20F2E9420](v17, -1, -1);

    v79 = v10;
    if (a5)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v79 = v10;
  if (!a5)
  {
LABEL_9:
    v78 = a3;
    a5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore16ExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v10 = a4 + 64;
    v33 = 1 << *(a4 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(a4 + 64);
    v36 = (v33 + 63) >> 6;

    a3 = 0;
    while (1)
    {
      while (1)
      {
        do
        {
          if (!v35)
          {
            while (1)
            {
              v41 = a3 + 1;
              if (__OFADD__(a3, 1))
              {
                __break(1u);
                goto LABEL_47;
              }

              if (v41 >= v36)
              {
                break;
              }

              v35 = *(v10 + 8 * v41);
              ++a3;
              if (v35)
              {
                a3 = v41;
                goto LABEL_12;
              }
            }

            swift_beginAccess();
            Strong = swift_weakLoadStrong();
            if (!Strong)
            {
              goto LABEL_33;
            }

            v60 = Strong;
            swift_beginAccess();
            v61 = *(v60 + 136);

            LOBYTE(v60) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ11WorkoutCore16ExternalProviderC_SayAC0B13ConfigurationCGTt1g5(v62, v61);

            if (v60)
            {

              v63 = Logger.logObject.getter();
              v64 = static os_log_type_t.default.getter();
              a3 = v78;
              v29 = v79;
              if (os_log_type_enabled(v63, v64))
              {
                v65 = swift_slowAlloc();
                *v65 = 0;
                _os_log_impl(&dword_20AEA4000, v63, v64, "[ManagedConfigurationStore] queried configurations match current cache - will skip reloading", v65, 2u);
                MEMORY[0x20F2E9420](v65, -1, -1);
              }
            }

            else
            {
LABEL_33:
              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.default.getter();
              a3 = v78;
              v29 = v79;
              if (os_log_type_enabled(v66, v67))
              {
                v68 = swift_slowAlloc();
                *v68 = 0;
                _os_log_impl(&dword_20AEA4000, v66, v67, "[ManagedConfigurationStore] queried configurations are different from current cache - reloading!", v68, 2u);
                MEMORY[0x20F2E9420](v68, -1, -1);
              }

              swift_beginAccess();
              v69 = swift_weakLoadStrong();
              if (v69)
              {
                v70 = v69;
                swift_beginAccess();
                v71 = *(v70 + 136);
                *(v70 + 136) = a5;
              }

              v63 = [objc_opt_self() defaultCenter];
              if (one-time initialization token for managedConfigurationsDidUpdate != -1)
              {
                swift_once();
              }

              [v63 postNotificationName:static NSNotificationName.managedConfigurationsDidUpdate object:0];
            }

            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              *v74 = 0;
              _os_log_impl(&dword_20AEA4000, v72, v73, "[ManagedConfigurationStore] finished loading", v74, 2u);
              MEMORY[0x20F2E9420](v74, -1, -1);
            }

            swift_beginAccess();
            v31 = swift_weakLoadStrong();
            if (v31)
            {
              v32 = 1;
              goto LABEL_44;
            }

            return $defer #1 () in closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(a1, v29, a3);
          }

LABEL_12:
          v37 = __clz(__rbit64(v35));
          v35 &= v35 - 1;
          v38 = (a3 << 9) | (8 * v37);
          v39 = *(*(a4 + 48) + v38);
          v40 = *(*(a4 + 56) + v38);
          swift_beginAccess();
        }

        while (*(v39 + 24) != 2);
        swift_beginAccess();
        v42 = *(v39 + 16);
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = a5;
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
        v45 = a5[2];
        v46 = (v43 & 1) == 0;
        v47 = v45 + v46;
        if (__OFADD__(v45, v46))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          type metadata accessor for ExternalProvider();
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        if (a5[3] < v47)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v43 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v77 = v44;
          v54 = v43;
          specialized _NativeDictionary.copy()();
          v55 = v54;
          v44 = v77;
          a5 = v80;
          if ((v55 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_25:
        v52 = a5[7];
        v53 = *(v52 + 8 * v44);
        *(v52 + 8 * v44) = v40;
      }

      v48 = v43;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, isUniquelyReferenced_nonNull_native);
      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_50;
      }

      v44 = v49;
      v51 = v48;
      a5 = v80;
      if (v51)
      {
        goto LABEL_25;
      }

LABEL_27:
      a5[(v44 >> 6) + 8] |= 1 << v44;
      *(a5[6] + 8 * v44) = v42;
      *(a5[7] + 8 * v44) = v40;

      v56 = a5[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_49;
      }

      a5[2] = v58;
    }
  }

LABEL_4:
  v18 = a5;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = a3;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v81 = v23;
    *v22 = 136315138;
    v24 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v81);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_20AEA4000, v19, v20, "[ManagedConfigurationStore] failed to fetch managed configurations due to: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_17(v23);
    MEMORY[0x20F2E9420](v23, -1, -1);
    v28 = v22;
    a3 = v21;
    MEMORY[0x20F2E9420](v28, -1, -1);
  }

  v29 = v79;
  swift_beginAccess();
  v30 = swift_weakLoadStrong();

  if (v30)
  {
    v31 = v30;
    v32 = 0;
LABEL_44:
    *(v31 + 160) = v32;
  }

  return $defer #1 () in closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(a1, v29, a3);
}

uint64_t $defer #1 () in closure #1 in closure #1 in WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    outlined init with copy of BackgroundAssertionManagerProtocol(Strong + 56, v30);

    v11 = v31;
    v12 = v32;
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v29 = a2;
    (*(v12 + 16))(&v29, a3, v11, v12);
    __swift_destroy_boxed_opaque_existential_1Tm_17(v30);
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.app);
  (*(v6 + 16))(v9, a3, v5);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30[0] = v17;
    v18 = 0xE700000000000000;
    v19 = 0x6E6F6973736553;
    *v16 = 136315394;
    if (a2 == 1)
    {
      v19 = 0x797265766F636552;
      v18 = 0xE800000000000000;
    }

    if (!a2)
    {
      v19 = 1702256979;
      v18 = 0xE400000000000000;
    }

    if (a2 <= 2u)
    {
      v20 = v19;
    }

    else
    {
      v20 = 1702256979;
    }

    if (a2 <= 2u)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0xE400000000000000;
    }

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v30);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v6 + 8))(v9, v5);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v30);

    *(v16 + 14) = v26;
    _os_log_impl(&dword_20AEA4000, v14, v15, "[ManagedConfigurationStore] load background assertion (%s, %s) released", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    WorkoutManagedConfigurationsStore.registerForNotificationsIfNeeded()();
  }

  return result;
}