unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v28 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x223D77050](v2, v27);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject pendingStatuses];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_21;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v11)
        {
LABEL_21:
          __CocoaSet.count.getter();
          goto LABEL_22;
        }

        v13 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v14 = *(v13 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v34 = v3;
      v15 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v16 >> 1) - v15) < v10)
          {
            goto LABEL_44;
          }

          v18 = v13 + 8 * v15 + 32;
          if (v9)
          {
            if (v17 < 1)
            {
              goto LABEL_46;
            }

            lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [SKADatabasePublishedLocalStatus] and conformance [A], &_sSaySo31SKADatabasePublishedLocalStatusCGMd, &_sSaySo31SKADatabasePublishedLocalStatusCGMR);
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo31SKADatabasePublishedLocalStatusCGMd, &_sSaySo31SKADatabasePublishedLocalStatusCGMR);
              v20 = specialized protocol witness for Collection.subscript.read in conformance [A](v33, i, v8);
              v22 = *v21;
              (v20)(v33, 0);
              *(v18 + 8 * i) = v22;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v28;
          v3 = v34;
          if (v10 >= 1)
          {
            v23 = *(v13 + 16);
            v5 = __OFADD__(v23, v10);
            v24 = v23 + v10;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v13 + 16) = v24;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      v3 = v34;
      if (v10 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      v2 = v32;
      if (v32 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = __CocoaSet.count.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v25;
  }

  return MEMORY[0x277D84F90];
}

void SKALocalStatusServer.updateBrowseTaskDeviceFilter(databaseContext:)(uint64_t a1)
{
  v77[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 176);
  v77[0] = 0;
  v4 = [v3 allPublishedLocalStatusDevicesInDatabaseContext:a1 error:v77];
  v5 = v77[0];
  if (!v4)
  {
    v23 = v77[0];
    v24 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, log);
    v26 = v24;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_220099000, v27, v28, "Failed to fetch all published local status devices while updating browser device filter: %@", v29, 0xCu);
      outlined destroy of UUID?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v30, -1, -1);
      MEMORY[0x223D77FF0](v29, -1, -1);
    }

    else
    {
    }

    goto LABEL_71;
  }

  v6 = v4;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatusDevice, off_27843D3B8);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v5;

  v77[0] = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_61;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v10 = MEMORY[0x277D84F90];
    v75 = v1;
    if (i)
    {
      v11 = 0;
      v73 = v7 & 0xC000000000000001;
      v12 = v7 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v73)
        {
          v13 = MEMORY[0x223D77050](v11, v7);
        }

        else
        {
          if (v11 >= *(v12 + 16))
          {
            goto LABEL_58;
          }

          v13 = *(v7 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v16 = v7;
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v17 = [v14 idsIdentifier];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v1 = SKALocalStatusServer.shouldDeliverToDevice(idsIdentifier:)(v18, v20);

        if (v1)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = *(v77[0] + 2);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = v77;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v7 = v16;
        ++v11;
        if (v15 == i)
        {
          v22 = v77[0];
          v1 = v75;
          v10 = MEMORY[0x277D84F90];
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v22 = MEMORY[0x277D84F90];
LABEL_23:

    v77[0] = v10;
    if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
    {
      v33 = __CocoaSet.count.getter();
    }

    else
    {
      v33 = *(v22 + 16);
    }

    v34 = MEMORY[0x277D84F90];
    if (!v33)
    {
      break;
    }

    v35 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x223D77050](v35, v22);
      }

      else
      {
        if (v35 >= *(v22 + 16))
        {
          goto LABEL_60;
        }

        v37 = *(v22 + 8 * v35 + 32);
      }

      v7 = v37;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v39 = [v37 pendingStatuses];
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKADatabasePublishedLocalStatus, off_27843D3B0);
      v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v40 >> 62)
      {
        v1 = __CocoaSet.count.getter();
      }

      else
      {
        v1 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v1)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v36 = *(v77[0] + 2);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v77;
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v35;
      if (v38 == v33)
      {
        v41 = v77[0];
        v34 = MEMORY[0x277D84F90];
        v1 = v75;
        goto LABEL_42;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    ;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_42:

  v42 = v1 + OBJC_IVAR___SKALocalStatusServer_browseTask;
  v43 = *(v1 + OBJC_IVAR___SKALocalStatusServer_browseTask);
  if (v43)
  {
    v44 = *(v42 + 24);
    v45 = *(v42 + 8);
    if ((v41 & 0x8000000000000000) != 0 || (v41 & 0x4000000000000000) != 0)
    {
      v46 = __CocoaSet.count.getter();
      if (!v46)
      {
        goto LABEL_64;
      }

LABEL_46:
      v77[0] = v34;
      v47 = v43;

      v74 = v44;
      v48 = v44;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46 & ~(v46 >> 63), 0);
      if (v46 < 0)
      {
        __break(1u);
      }

      v49 = 0;
      v50 = v77[0];
      do
      {
        if ((v41 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x223D77050](v49, v41);
        }

        else
        {
          v51 = *(v41 + 8 * v49 + 32);
        }

        v52 = v51;
        v53 = [v52 idsIdentifier];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v77[0] = v50;
        v58 = v50[2];
        v57 = v50[3];
        if (v58 >= v57 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
          v50 = v77[0];
        }

        ++v49;
        v50[2] = v58 + 1;
        v59 = &v50[2 * v58];
        v59[4] = v54;
        v59[5] = v56;
      }

      while (v46 != v49);

      v44 = v74;
    }

    else
    {
      v46 = *(v41 + 16);
      v76 = *(v42 + 8);
      if (v46)
      {
        goto LABEL_46;
      }

LABEL_64:
      v60 = v44;
      v61 = v43;

      v50 = MEMORY[0x277D84F90];
    }

    isa = Array._bridgeToObjectiveC()().super.isa;
    [v43 setDeviceFilter_];

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, log);

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v77[0] = v67;
      *v66 = 136315138;
      v68 = MEMORY[0x223D76C00](v50, MEMORY[0x277D837D0]);
      v70 = v69;

      v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v77);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_220099000, v64, v65, "Updated browseCompanionLink device filter: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x223D77FF0](v67, -1, -1);
      MEMORY[0x223D77FF0](v66, -1, -1);
    }

    else
    {
    }
  }

  else
  {
  }

LABEL_71:
  v72 = *MEMORY[0x277D85DE8];
}

uint64_t closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v9;
  v10[4] = a2;
  v10[5] = a1;
  swift_retain_n();
  v11 = a1;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), v10);
}

uint64_t closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), a4, 0);
}

uint64_t closure #1 in closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)()
{
  v1 = *(v0 + 16);
  v2 = v1 + OBJC_IVAR___SKALocalStatusServer_browseTask;
  v3 = *(v1 + OBJC_IVAR___SKALocalStatusServer_browseTask);
  if (v3)
  {
    v4 = *(v2 + 24);
    v5 = *(v2 + 8);
    if (*(v2 + 16))
    {
      v6 = *(v0 + 24);
      v7 = *(v1 + 168);
      v8 = v4;
      v9 = v3;

      v10 = [v7 newBackgroundContext];
      v11 = [v6 idsDeviceIdentifier];
      if (v11)
      {
        v12 = v11;
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0xE000000000000000;
      }

      v27 = *(v0 + 16);
      LOBYTE(v27) = SKALocalStatusServer.shouldDeliverToDevice(idsIdentifier:)(v13, v15);

      if (v27)
      {
        v28 = *(v0 + 16);
        v29 = [*(v0 + 24) description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        MEMORY[0x223D76B90](v30, v32);

        MEMORY[0x223D76B90](93, 0xE100000000000000);
        SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(v10, 0x5B646E756F46, 0xE600000000000000);
      }

      else
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v33 = *(v0 + 24);
        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, log);
        v35 = v33;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = *(v0 + 24);
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v39 = 138412290;
          *(v39 + 4) = v38;
          *v40 = v38;
          v41 = v38;
          _os_log_impl(&dword_220099000, v36, v37, "Skip delivery to found device %@", v39, 0xCu);
          outlined destroy of UUID?(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x223D77FF0](v40, -1, -1);
          MEMORY[0x223D77FF0](v39, -1, -1);
        }
      }
    }

    else
    {
      v20 = one-time initialization token for log;
      v21 = v3;

      v22 = v4;
      if (v20 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, log);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_220099000, v24, v25, "Ignoring device found while companionLink is activating", v26, 2u);
        MEMORY[0x223D77FF0](v26, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, log);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_220099000, v17, v18, "Received publish device found without a browserTask. Ignoring", v19, 2u);
      MEMORY[0x223D77FF0](v19, -1, -1);
    }
  }

  v42 = *(v0 + 8);

  return v42();
}

void closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(NSObject *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  if (a1)
  {
    v8 = a1;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, log);
    v10 = a1;
    v24 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_220099000, v24, v11, "Failed to activate browseCompanionLink {error: %@}", v12, 0xCu);
      outlined destroy of UUID?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v13, -1, -1);
      MEMORY[0x223D77FF0](v12, -1, -1);

      v16 = v24;
    }

    else
    {

      v16 = a1;
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, log);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_220099000, v18, v19, "CompanionLink activate delivery START", v20, 2u);
      MEMORY[0x223D77FF0](v20, -1, -1);
    }

    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = a2;

    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), v22);
  }
}

uint64_t closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);

  return SKALocalStatusServer.updateBrowseTask()();
}

uint64_t closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 16);
  v5 = *v0;

  *(v1 + 56) = OBJC_IVAR___SKALocalStatusServer_screenOffStatusTimeoutSeconds;

  return MEMORY[0x2822009F8](closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), v3, 0);
}

{
  v0[8] = *(v0[2] + v0[7]);
  return MEMORY[0x2822009F8](closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), 0, 0);
}

{
  if (v0[8] == 259200)
  {
    v1 = v0[5];
    static Clock<>.continuous.getter();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);
    v3 = v0[5];

    return specialized Clock.sleep(for:tolerance:)(0x230878222D000000, 16393, 0, 0, 1);
  }

  else
  {
    v5 = v0[2];

    return MEMORY[0x2822009F8](closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), v5, 0);
  }
}

{
  v0[9] = *(v0[2] + v0[7]);
  return MEMORY[0x2822009F8](closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), 0, 0);
}

{
  v1 = v0[9];
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  v4 = (v1 >> 63) & 0xF21F494C589C0000;
  v5 = v0[5];
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);
  v7 = v0[5];

  return specialized Clock.sleep(for:tolerance:)(v2, v4 + v3, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v10 = *v1;
  *(*v1 + 88) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);
    v8 = 0;
  }

  else
  {
    v8 = *(v2 + 16);
    *(v2 + 96) = OBJC_IVAR___SKALocalStatusServer_browseTask;
    v7 = closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

{
  v1 = *(v0[2] + v0[12]);
  v0[13] = v1;
  if (v1)
  {
    v2 = v1;

    return MEMORY[0x2822009F8](closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:), 0, 0);
  }

  else
  {
    v3 = v0[5];

    v4 = v0[1];

    return v4();
  }
}

{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

{
  [*(v0 + 104) setControlFlags_];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220099000, v2, v3, "Removing bleScreenOff control flag from browseCompanionLink after 3.5 day timeout", v4, 2u);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  v5 = *(v0 + 104);

  v6 = *(v0 + 40);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t SKALocalStatusServer.updateBrowseTask()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](SKALocalStatusServer.updateBrowseTask(), v0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___SKALocalStatusServer_browseTask;
  *(v0 + 24) = OBJC_IVAR___SKALocalStatusServer_browseTask;
  v3 = v1 + v2;
  v4 = *v3;
  *(v0 + 32) = *v3;
  *(v0 + 40) = *(v3 + 8);
  v5 = *(v3 + 24);
  *(v0 + 48) = v5;
  if (v4)
  {
    v6 = *(v1 + 168);
    v7 = v5;
    v8 = v4;

    v9 = [v6 newBackgroundContext];
    *(v0 + 56) = v9;
    SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(v9, 0xD000000000000015, 0x80000002201AC7B0);
    *(v0 + 64) = v10;
    if (v10)
    {
      v11 = *(MEMORY[0x277D857E0] + 4);
      v12 = swift_task_alloc();
      *(v0 + 72) = v12;
      *v12 = v0;
      v12[1] = SKALocalStatusServer.updateBrowseTask();

      return MEMORY[0x282200460]();
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, log);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_220099000, v25, v26, "No delivery task in startNewBrowserActivate. We expected pending deliveries at this point.", v27, 2u);
      MEMORY[0x223D77FF0](v27, -1, -1);
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, log);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_220099000, v14, v15, "CompanionLink activate delivery END", v16, 2u);
      MEMORY[0x223D77FF0](v16, -1, -1);
    }

    v17 = *(v0 + 48);
    v18 = *(v0 + 16) + *(v0 + 24);
    v29 = *(v0 + 32);

    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    *v18 = v29;
    *(v18 + 16) = 1;
    *(v18 + 24) = v17;
    outlined consume of SKALocalStatusServer.BrowseTask?(v19, v20, v21, v22);
  }

  v23 = *(v0 + 8);

  return v23();
}

{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return MEMORY[0x2822009F8](SKALocalStatusServer.updateBrowseTask(), v2, 0);
}

{
  v1 = *(v0 + 64);

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_220099000, v3, v4, "CompanionLink activate delivery END", v5, 2u);
    MEMORY[0x223D77FF0](v5, -1, -1);
  }

  v6 = *(v0 + 48);
  v7 = *(v0 + 16) + *(v0 + 24);
  v14 = *(v0 + 32);

  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 24);
  *v7 = v14;
  *(v7 + 16) = 1;
  *(v7 + 24) = v6;
  outlined consume of SKALocalStatusServer.BrowseTask?(v8, v9, v10, v11);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[18] = a4;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v8[23] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  v12 = type metadata accessor for Date();
  v8[25] = v12;
  v13 = *(v12 - 8);
  v8[26] = v13;
  v8[27] = *(v13 + 64);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), a5, 0);
}

uint64_t closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)()
{
  v168 = v0;
  v2 = v0[18];
  if (v2 >> 62)
  {
LABEL_56:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v167[0] = MEMORY[0x277D84F90];
    v5 = v167;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
LABEL_58:
      swift_once();
      goto LABEL_17;
    }

    v4 = v167[0];
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      do
      {
        MEMORY[0x223D77050](v6, v0[18]);
        v7 = [swift_unknownObjectRetain() idsIdentifier];
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        swift_unknownObjectRelease_n();
        v167[0] = v4;
        v12 = *(v4 + 16);
        v11 = *(v4 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v4 = v167[0];
        }

        ++v6;
        *(v4 + 16) = v12 + 1;
        v13 = v4 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
      }

      while (v3 != v6);
    }

    else
    {
      v14 = (v0[18] + 32);
      do
      {
        v15 = *v14;
        v16 = [v15 idsIdentifier];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v167[0] = v4;
        v21 = *(v4 + 16);
        v20 = *(v4 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v4 = v167[0];
        }

        *(v4 + 16) = v21 + 1;
        v22 = v4 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
        ++v14;
        --v3;
      }

      while (v3);
    }
  }

  v23 = v0[19];
  v1 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v4);
  v0[30] = v1;

  v0[17] = v1;
  v24 = OBJC_IVAR___SKALocalStatusServer_browseTask;
  v0[31] = OBJC_IVAR___SKALocalStatusServer_browseTask;
  v25 = (v23 + v24);
  v5 = *v25;
  v0[32] = *v25;
  v2 = v25[3];
  v0[33] = v2;
  if (!v5)
  {

    goto LABEL_61;
  }

  v26 = v25[1];
  v27 = v25[2];
  v0[34] = v26;

  outlined copy of SKALocalStatusServer.BrowseTask?(v5, v26, v27, v2);
  if (one-time initialization token for log != -1)
  {
    goto LABEL_58;
  }

LABEL_17:
  v28 = v0[21];
  v29 = type metadata accessor for Logger();
  v0[35] = __swift_project_value_buffer(v29, log);
  v30 = v2;
  v31 = v5;
  swift_bridgeObjectRetain_n();
  v32 = v30;

  v33 = v31;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = &unk_27843F000;
  if (os_log_type_enabled(v34, v35))
  {
    v164 = v32;
    v37 = v0[20];
    v38 = v0[21];
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v167[0] = v40;
    *v39 = 136315650;
    *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v167);
    *(v39 + 12) = 2048;
    *(v39 + 14) = *(v1 + 16);
    *(v39 + 22) = 2048;
    v41 = [v33 activeDevices];
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
    v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v1 >> 62)
    {
      v42 = __CocoaSet.count.getter();
    }

    else
    {
      v42 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v39 + 24) = v42;
    v32 = v164;

    _os_log_impl(&dword_220099000, v34, v35, "deliverAllPendingStatuses CONTINUE. Resuming task {reason: %s, pendingIDSIdentifiers.count: %ld, activeDevices.count: %ld}", v39, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x223D77FF0](v40, -1, -1);
    MEMORY[0x223D77FF0](v39, -1, -1);

    v36 = &unk_27843F000;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v43 = [v33 v36[491]];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RPCompanionLinkDevice, 0x277D44170);
  v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[36] = v44;

  if (v44 >> 62)
  {
    v79 = __CocoaSet.count.getter();
    v0[37] = v79;
    if (v79)
    {
      goto LABEL_25;
    }

    goto LABEL_60;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[37] = v45;
  if (!v45)
  {
LABEL_60:

LABEL_61:
    v80 = v0[25];
    v81 = v0[26];
    v82 = v0[24];
    v83 = v0[19];
    v84 = OBJC_IVAR___SKALocalStatusServer_failedDeliveries;
    swift_beginAccess();
    v85 = *(v83 + v84);

    v87 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy18StatusKitAgentCore08SKALocalE6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAM_G_10Foundation4DateVs5NeverOTg504_s18efg6Core08i2A6j31C25deliverAllPendingStatuses33_mnopqrstu23CBELL2in6reasonScTyyts5z59OGSgSo22NSManagedObjectContextC_SStKFyyYacfU1_10Foundation4y5VAC14kL10AELLVXEfU_Tf1cn_n(v86);

    specialized Sequence<>.min()(v87, v82);

    if ((*(v81 + 48))(v82, 1, v80) == 1)
    {
      v88 = v0[19];
      outlined destroy of UUID?(v0[24], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v89 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
      if (!*(v88 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
      {
LABEL_80:
        if (*(v0[19] + v0[31]))
        {
          v123 = v0[30];

          swift_beginAccess();
          if (!*(v0[17] + 16))
          {
            if (one-time initialization token for log != -1)
            {
              swift_once();
            }

            v124 = type metadata accessor for Logger();
            __swift_project_value_buffer(v124, log);
            v125 = Logger.logObject.getter();
            v126 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v125, v126))
            {
              v127 = swift_slowAlloc();
              *v127 = 0;
              _os_log_impl(&dword_220099000, v125, v126, "failedDeliveryRetryTask CANCELLED {reason: no pending IDS Identifiers}", v127, 2u);
              MEMORY[0x223D77FF0](v127, -1, -1);
            }

            v128 = v0[19];

            v129 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
            if (*(v128 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
            {
              v130 = *(v128 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask);

              MEMORY[0x223D76D40](v131, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

              v132 = *(v128 + v129);
            }

            v152 = v0[19];
            *(v128 + v129) = 0;

            SKALocalStatusServer.stopBrowserTask()();
          }
        }

        else
        {
          if (one-time initialization token for log != -1)
          {
            swift_once();
            v158 = v0[19];
          }

          v133 = v0[30];
          v134 = type metadata accessor for Logger();
          __swift_project_value_buffer(v134, log);
          swift_retain_n();

          v135 = Logger.logObject.getter();
          v136 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v135, v136))
          {
            v163 = v0[30];
            v166 = v0[31];
            v137 = v0[19];
            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v167[0] = v139;
            *v138 = 136315650;
            swift_beginAccess();
            v140 = v0[17];

            v141 = Set.description.getter();
            v143 = v142;

            v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v143, v167);

            *(v138 + 4) = v144;
            *(v138 + 12) = 2080;
            v145 = Set.description.getter();
            v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v146, v167);

            *(v138 + 14) = v147;
            *(v138 + 22) = 1024;
            v148 = *(v137 + v166);

            *(v138 + 24) = v148 == 0;

            _os_log_impl(&dword_220099000, v135, v136, "Starting new browser task: {pendingIDSIdentifiers: %s, originalPendingIDSIdentifiers: %s, browserTask.isNill: %{BOOL}d}", v138, 0x1Cu);
            swift_arrayDestroy();
            MEMORY[0x223D77FF0](v139, -1, -1);
            MEMORY[0x223D77FF0](v138, -1, -1);
          }

          else
          {
            v149 = v0[19];
          }

          v150 = v0[19];
          specialized SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(v0[30]);

          v151 = v0[17];
        }

        v154 = v0[28];
        v153 = v0[29];
        v156 = v0[23];
        v155 = v0[24];

        v157 = v0[1];

        return v157();
      }

      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v90 = type metadata accessor for Logger();
      __swift_project_value_buffer(v90, log);
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        *v93 = 0;
        _os_log_impl(&dword_220099000, v91, v92, "failedDeliveryRetryTask CANCELLED {reason: no failed deliveries}", v93, 2u);
        MEMORY[0x223D77FF0](v93, -1, -1);
      }

      if (*(v88 + v89))
      {
        v94 = *(v88 + v89);

        MEMORY[0x223D76D40](v95, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

        v96 = *(v88 + v89);
      }

      *(v88 + v89) = 0;
    }

    else
    {
      v97 = *(v0[26] + 32);
      v97(v0[29], v0[24], v0[25]);
      Date.timeIntervalSinceNow.getter();
      v99 = v98;
      if (v98 <= 0.0)
      {
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v115 = type metadata accessor for Logger();
        __swift_project_value_buffer(v115, log);
        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.fault.getter();
        v118 = os_log_type_enabled(v116, v117);
        v119 = v0[29];
        v120 = v0[25];
        v121 = v0[26];
        if (v118)
        {
          v122 = swift_slowAlloc();
          *v122 = 134217984;
          *(v122 + 4) = v99;
          _os_log_impl(&dword_220099000, v116, v117, "failedDeliveryRetryTask FAILED. Invalid sleepSeconds {sleepSeconds: %f}", v122, 0xCu);
          MEMORY[0x223D77FF0](v122, -1, -1);
        }

        (*(v121 + 8))(v119, v120);
        goto LABEL_80;
      }

      v100 = v0[19];
      v161 = v97;
      v162 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
      v165 = v100;
      if (*(v100 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
      {

        MEMORY[0x223D76D40](v101, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

        v100 = v0[19];
      }

      v103 = v0[28];
      v102 = v0[29];
      v159 = v103;
      v104 = v0[26];
      v105 = v0[27];
      v106 = v0[25];
      v107 = v0[23];
      v160 = v107;
      v108 = type metadata accessor for TaskPriority();
      (*(*(v108 - 8) + 56))(v107, 1, 1, v108);
      (*(v104 + 16))(v103, v102, v106);
      v109 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer);
      v110 = (*(v104 + 80) + 32) & ~*(v104 + 80);
      v111 = (v105 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
      v112 = swift_allocObject();
      *(v112 + 16) = v100;
      *(v112 + 24) = v109;
      v161(v112 + v110, v159, v106);
      *(v112 + v111) = v99;
      *(v112 + ((v111 + 15) & 0xFFFFFFFFFFFFFFF8)) = v100;
      swift_retain_n();
      v113 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v160, &async function pointer to partial apply for closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), v112);
      (*(v104 + 8))(v102, v106);
      v114 = *(v165 + v162);
      *(v165 + v162) = v113;
    }

    goto LABEL_80;
  }

LABEL_25:
  swift_beginAccess();
  v46 = 0;
  v2 = -1;
  while (1)
  {
    v47 = v0[36];
    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x223D77050](v46);
    }

    else
    {
      if (v46 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v48 = *(v47 + 8 * v46 + 32);
    }

    v49 = v48;
    v0[38] = v48;
    v0[39] = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v50 = [v48 idsDeviceIdentifier];
    if (v50)
    {
      break;
    }

LABEL_27:

LABEL_28:
    v46 = v0[39];
    if (v46 == v0[37])
    {
      v69 = v0[36];
      v70 = v0[33];
      v71 = v0[34];
      v72 = v0[32];

      goto LABEL_61;
    }
  }

  v51 = v50;
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v0[40] = v52;
  v0[41] = v54;
  v55 = v0[17];
  if (!*(v55 + 16))
  {

    goto LABEL_46;
  }

  v56 = *(v55 + 40);
  Hasher.init(_seed:)();

  String.hash(into:)();
  v57 = Hasher._finalize()();
  v58 = -1 << *(v55 + 32);
  v59 = v57 & ~v58;
  if (((*(v55 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
  {
LABEL_44:

LABEL_46:

    goto LABEL_28;
  }

  v1 = ~v58;
  while (1)
  {
    v60 = (*(v55 + 48) + 16 * v59);
    v61 = *v60 == v52 && v60[1] == v54;
    if (v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v59 = (v59 + 1) & v1;
    if (((*(v55 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  v62 = v0[19];

  if ((SKALocalStatusServer.shouldDeliverToDevice(idsIdentifier:)(v52, v54) & 1) == 0)
  {
    v63 = v0[35];

    v49 = v49;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v66 = 138412290;
      *(v66 + 4) = v49;
      *v67 = v49;
      v68 = v49;
      _os_log_impl(&dword_220099000, v64, v65, "Skip delivery to active device %@", v66, 0xCu);
      outlined destroy of UUID?(v67, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v67, -1, -1);
      MEMORY[0x223D77FF0](v66, -1, -1);

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v73 = swift_task_alloc();
  v0[42] = v73;
  *v73 = v0;
  v73[1] = closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);
  v74 = v0[21];
  v75 = v0[22];
  v77 = v0[19];
  v76 = v0[20];

  return SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:)(v49, v76, v74, v75);
}

{
  v126 = v0;
  if (*(v0 + 344))
  {
    v2 = *(v0 + 320);
    v1 = *(v0 + 328);
    v3 = *(v0 + 304);
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v2, v1);
    swift_endAccess();
  }

  else
  {
    v4 = *(v0 + 328);
  }

  for (i = *(v0 + 312); i != *(v0 + 296); i = *(v0 + 312))
  {
    v27 = *(v0 + 288);
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x223D77050](i);
    }

    else
    {
      if (i >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_69;
      }

      v28 = *(v27 + 8 * i + 32);
    }

    v29 = v28;
    *(v0 + 304) = v28;
    *(v0 + 312) = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v30 = [v28 idsDeviceIdentifier];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      *(v0 + 320) = v32;
      *(v0 + 328) = v34;
      v35 = *(v0 + 136);
      if (!*(v35 + 16))
      {

        continue;
      }

      v36 = *(v35 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      v37 = Hasher._finalize()();
      v38 = -1 << *(v35 + 32);
      v39 = v37 & ~v38;
      if (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
LABEL_32:

        continue;
      }

      v40 = ~v38;
      while (1)
      {
        v41 = (*(v35 + 48) + 16 * v39);
        v42 = *v41 == v32 && v41[1] == v34;
        if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v39 = (v39 + 1) & v40;
        if (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v43 = *(v0 + 152);

      if (SKALocalStatusServer.shouldDeliverToDevice(idsIdentifier:)(v32, v34))
      {
        v112 = swift_task_alloc();
        *(v0 + 336) = v112;
        *v112 = v0;
        v112[1] = closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);
        v113 = *(v0 + 168);
        v114 = *(v0 + 176);
        v116 = *(v0 + 152);
        v115 = *(v0 + 160);

        return SKALocalStatusServer.deliverPendingStatuses(to:reason:databaseContext:)(v29, v115, v113, v114);
      }

      v44 = *(v0 + 280);

      v29 = v29;
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *v47 = 138412290;
        *(v47 + 4) = v29;
        *v48 = v29;
        v49 = v29;
        _os_log_impl(&dword_220099000, v45, v46, "Skip delivery to active device %@", v47, 0xCu);
        outlined destroy of UUID?(v48, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x223D77FF0](v48, -1, -1);
        MEMORY[0x223D77FF0](v47, -1, -1);

        continue;
      }
    }
  }

  v6 = *(v0 + 288);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);
  v9 = *(v0 + 256);

  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v12 = *(v0 + 192);
  v13 = *(v0 + 152);
  v14 = OBJC_IVAR___SKALocalStatusServer_failedDeliveries;
  swift_beginAccess();
  v15 = *(v13 + v14);

  v17 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVy18StatusKitAgentCore08SKALocalE6ServerC14FailedDelivery33_CD99E71FFA5F3CD49F44A2A8DCE05CBELLV2IDVAM_G_10Foundation4DateVs5NeverOTg504_s18efg6Core08i2A6j31C25deliverAllPendingStatuses33_mnopqrstu23CBELL2in6reasonScTyyts5z59OGSgSo22NSManagedObjectContextC_SStKFyyYacfU1_10Foundation4y5VAC14kL10AELLVXEfU_Tf1cn_n(v16);

  specialized Sequence<>.min()(v17, v12);

  if ((*(v11 + 48))(v12, 1, v10) != 1)
  {
    v50 = *(*(v0 + 208) + 32);
    v50(*(v0 + 232), *(v0 + 192), *(v0 + 200));
    Date.timeIntervalSinceNow.getter();
    v52 = v51;
    if (v51 <= 0.0)
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, log);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.fault.getter();
      v71 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 232);
      v73 = *(v0 + 200);
      v74 = *(v0 + 208);
      if (v71)
      {
        v75 = swift_slowAlloc();
        *v75 = 134217984;
        *(v75 + 4) = v52;
        _os_log_impl(&dword_220099000, v69, v70, "failedDeliveryRetryTask FAILED. Invalid sleepSeconds {sleepSeconds: %f}", v75, 0xCu);
        MEMORY[0x223D77FF0](v75, -1, -1);
      }

      (*(v74 + 8))(v72, v73);
      goto LABEL_48;
    }

    v53 = *(v0 + 152);
    v120 = v50;
    v121 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
    v123 = v53;
    if (*(v53 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
    {

      MEMORY[0x223D76D40](v54, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

      v53 = *(v0 + 152);
    }

    v56 = *(v0 + 224);
    v55 = *(v0 + 232);
    v118 = v56;
    v57 = *(v0 + 208);
    v58 = *(v0 + 216);
    v59 = *(v0 + 200);
    v60 = *(v0 + 184);
    v119 = v60;
    v61 = type metadata accessor for TaskPriority();
    (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
    (*(v57 + 16))(v56, v55, v59);
    v62 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SKALocalStatusServer and conformance SKALocalStatusServer, type metadata accessor for SKALocalStatusServer);
    v63 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v64 = (v58 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    *(v65 + 16) = v53;
    *(v65 + 24) = v62;
    v120(v65 + v63, v118, v59);
    *(v65 + v64) = v52;
    *(v65 + ((v64 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;
    swift_retain_n();
    v66 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v119, &async function pointer to partial apply for closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), v65);
    (*(v57 + 8))(v55, v59);
    v67 = *(v123 + v121);
    *(v123 + v121) = v66;
    goto LABEL_47;
  }

  v18 = *(v0 + 152);
  outlined destroy of UUID?(*(v0 + 192), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
  if (*(v18 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, log);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_220099000, v21, v22, "failedDeliveryRetryTask CANCELLED {reason: no failed deliveries}", v23, 2u);
      MEMORY[0x223D77FF0](v23, -1, -1);
    }

    if (*(v18 + v19))
    {
      v24 = *(v18 + v19);

      MEMORY[0x223D76D40](v25, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

      v26 = *(v18 + v19);
    }

    *(v18 + v19) = 0;
LABEL_47:
  }

LABEL_48:
  if (*(*(v0 + 152) + *(v0 + 248)))
  {
    v76 = *(v0 + 240);

    swift_beginAccess();
    if (!*(*(v0 + 136) + 16))
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      __swift_project_value_buffer(v77, log);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        *v80 = 0;
        _os_log_impl(&dword_220099000, v78, v79, "failedDeliveryRetryTask CANCELLED {reason: no pending IDS Identifiers}", v80, 2u);
        MEMORY[0x223D77FF0](v80, -1, -1);
      }

      v81 = *(v0 + 152);

      v82 = OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask;
      if (*(v81 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask))
      {
        v83 = *(v81 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask);

        MEMORY[0x223D76D40](v84, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);

        v85 = *(v81 + v82);
      }

      v105 = *(v0 + 152);
      *(v81 + v82) = 0;

      SKALocalStatusServer.stopBrowserTask()();
    }
  }

  else
  {
    if (one-time initialization token for log != -1)
    {
LABEL_70:
      swift_once();
      v117 = *(v0 + 152);
    }

    v86 = *(v0 + 240);
    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, log);
    swift_retain_n();

    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v88, v89))
    {
      v122 = *(v0 + 240);
      v124 = *(v0 + 248);
      v90 = *(v0 + 152);
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v125[0] = v92;
      *v91 = 136315650;
      swift_beginAccess();
      v93 = *(v0 + 136);

      v94 = Set.description.getter();
      v96 = v95;

      v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v96, v125);

      *(v91 + 4) = v97;
      *(v91 + 12) = 2080;
      v98 = Set.description.getter();
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v125);

      *(v91 + 14) = v100;
      *(v91 + 22) = 1024;
      v101 = *(v90 + v124);

      *(v91 + 24) = v101 == 0;

      _os_log_impl(&dword_220099000, v88, v89, "Starting new browser task: {pendingIDSIdentifiers: %s, originalPendingIDSIdentifiers: %s, browserTask.isNill: %{BOOL}d}", v91, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x223D77FF0](v92, -1, -1);
      MEMORY[0x223D77FF0](v91, -1, -1);
    }

    else
    {
      v102 = *(v0 + 152);
    }

    v103 = *(v0 + 152);
    specialized SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(*(v0 + 240));

    v104 = *(v0 + 136);
  }

  v107 = *(v0 + 224);
  v106 = *(v0 + 232);
  v109 = *(v0 + 184);
  v108 = *(v0 + 192);

  v110 = *(v0 + 8);

  return v110();
}

uint64_t closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(char a1)
{
  v2 = *(*v1 + 336);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 344) = a1;

  return MEMORY[0x2822009F8](closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), v3, 0);
}

uint64_t specialized Sequence<>.min()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 112) = a6;
  *(v6 + 104) = a1;
  *(v6 + 96) = a5;
  v8 = type metadata accessor for ContinuousClock();
  *(v6 + 120) = v8;
  v9 = *(v8 - 8);
  *(v6 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 136) = swift_task_alloc();
  v11 = type metadata accessor for OSLogDateFormatter.Style();
  *(v6 + 144) = v11;
  v12 = *(v11 - 8);
  *(v6 + 152) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 160) = swift_task_alloc();
  v14 = type metadata accessor for OSLogDateFormatter();
  *(v6 + 168) = v14;
  v15 = *(v14 - 8);
  *(v6 + 176) = v15;
  v16 = *(v15 + 64) + 15;
  *(v6 + 184) = swift_task_alloc();
  v17 = type metadata accessor for Date();
  *(v6 + 192) = v17;
  v18 = *(v17 - 8);
  *(v6 + 200) = v18;
  v19 = *(v18 + 64) + 15;
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), a6, 0);
}

void closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)()
{
  v34 = v0;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 29);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 12);
  v5 = type metadata accessor for Logger();
  *(v0 + 30) = __swift_project_value_buffer(v5, log);
  v6 = *(v3 + 16);
  *(v0 + 31) = v6;
  *(v0 + 32) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 29);
  v11 = *(v0 + 24);
  v12 = *(v0 + 25);
  if (v9)
  {
    v13 = *(v0 + 22);
    v14 = *(v0 + 23);
    v15 = *(v0 + 20);
    v29 = *(v0 + 21);
    v32 = v8;
    v17 = *(v0 + 18);
    v16 = *(v0 + 19);
    v18 = *(v0 + 13);
    v30 = *(v0 + 24);
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v19 = 136315394;
    (*(v16 + 104))(v15, *MEMORY[0x277D24308], v17);
    static FormatStyle<>.oslog(_:)();
    (*(v16 + 8))(v15, v17);
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter, MEMORY[0x277D24310]);
    Date.formatted<A>(_:)();
    (*(v13 + 8))(v14, v29);
    v20 = *(v12 + 8);
    v20(v10, v30);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 10), *(v0 + 11), &v33);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v18;
    _os_log_impl(&dword_220099000, v7, v32, "failedDeliveryRetryTask SCHEDULED {nextAttemptDate: %s, sleepSeconds: %f}", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x223D77FF0](v31, -1, -1);
    MEMORY[0x223D77FF0](v19, -1, -1);
  }

  else
  {

    v20 = *(v12 + 8);
    v20(v10, v11);
  }

  *(v0 + 33) = v20;
  v22 = v0[13] + 5.0;
  if (COERCE__INT64(fabs(v22)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v23 = *(v0 + 17);
  v24 = 1000000000000000000 * v22;
  v25 = (v22 * 0xDE0B6B3A7640000uLL) >> 64;
  v26 = (v22 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v27 = swift_task_alloc();
  *(v0 + 34) = v27;
  *v27 = v0;
  v27[1] = closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);
  v28 = *(v0 + 17);

  specialized Clock.sleep(for:tolerance:)(v24, v26 + v25, 0, 0, 1);
}

uint64_t closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = v2[17];
  v6 = v2[16];
  v7 = v2[15];
  v8 = v2[14];
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v9 = closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);
  }

  else
  {
    v9 = closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

{
  v114 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  (*(v0 + 248))(*(v0 + 224), *(v0 + 96), *(v0 + 192));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v96 = *(v0 + 224);
    v99 = *(v0 + 200);
    v103 = *(v0 + 192);
    loga = *(v0 + 264);
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 160);
    v94 = *(v0 + 168);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v112 = v12;
    *v11 = 136315394;
    v109 = *MEMORY[0x277D24308];
    (*(v8 + 104))(v7);
    static FormatStyle<>.oslog(_:)();
    (*(v8 + 8))(v7, v9);
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter, MEMORY[0x277D24310]);
    Date.formatted<A>(_:)();
    (*(v6 + 8))(v5, v94);
    (loga)(v96, v103);
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 64), *(v0 + 72), &v112);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v10;
    _os_log_impl(&dword_220099000, v3, v4, "failedDeliveryRetryTask FIRED {nextAttemptDate: %s, sleepSeconds: %f}", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223D77FF0](v12, -1, -1);
    MEMORY[0x223D77FF0](v11, -1, -1);

    v14 = v109;
  }

  else
  {
    v15 = *(v0 + 264);
    v16 = *(v0 + 224);
    v17 = *(v0 + 192);
    v18 = *(v0 + 200);

    v15(v16, v17);
    v14 = *MEMORY[0x277D24308];
  }

  *(v0 + 368) = v14;
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);
  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v23 = *(v0 + 144);
  v24 = *(v0 + 152);
  log = *(v0 + 280);
  v100 = *(v0 + 96);
  v25 = [*(*(v0 + 112) + 168) newBackgroundContext];
  *(v0 + 288) = v25;
  v112 = 0;
  v113 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v112 = 0xD000000000000018;
  v113 = 0x80000002201AC790;
  v26 = *(v24 + 104);
  *(v0 + 296) = v26;
  *(v0 + 304) = (v24 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v110 = v14;
  v26(v21, v14, v23);
  static FormatStyle<>.oslog(_:)();
  v27 = *(v24 + 8);
  *(v0 + 312) = v27;
  *(v0 + 320) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v21, v23);
  *(v0 + 328) = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter, MEMORY[0x277D24310]);
  Date.formatted<A>(_:)();
  v28 = *(v20 + 8);
  *(v0 + 336) = v28;
  *(v0 + 344) = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v28(v19, v22);
  MEMORY[0x223D76B90](*(v0 + 32), *(v0 + 40));

  MEMORY[0x223D76B90](93, 0xE100000000000000);
  v29 = log;
  SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(v25, v112, v113);
  v31 = v30;
  *(v0 + 352) = v30;

  if (log)
  {

    v32 = *(v0 + 256);
    v33 = *(v0 + 240);
    (*(v0 + 248))(*(v0 + 208), *(v0 + 96), *(v0 + 192));
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 264);
    v39 = *(v0 + 200);
    v38 = *(v0 + 208);
    v40 = *(v0 + 192);
    if (v36)
    {
      logb = v34;
      v42 = *(v0 + 176);
      v41 = *(v0 + 184);
      v90 = *(v0 + 168);
      v97 = *(v0 + 264);
      v104 = v35;
      v43 = *(v0 + 152);
      v44 = *(v0 + 160);
      v45 = *(v0 + 144);
      v46 = *(v0 + 104);
      v92 = *(v0 + 192);
      v47 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v112 = v101;
      *v47 = 136315394;
      (*(v43 + 104))(v44, v110, v45);
      static FormatStyle<>.oslog(_:)();
      (*(v43 + 8))(v44, v45);
      Date.formatted<A>(_:)();
      (*(v42 + 8))(v41, v90);
      v97(v38, v92);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 16), *(v0 + 24), &v112);

      *(v47 + 4) = v48;
      *(v47 + 12) = 2048;
      *(v47 + 14) = v46;
      _os_log_impl(&dword_220099000, logb, v104, "failedDeliveryRetryTask CANCELLED {nextAttemptDate: %s, sleepSeconds: %f}", v47, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x223D77FF0](v101, -1, -1);
      MEMORY[0x223D77FF0](v47, -1, -1);
    }

    else
    {

      v37(v38, v40);
    }

    goto LABEL_12;
  }

  if (!v31)
  {
    v60 = *(v0 + 248);
    v59 = *(v0 + 256);
    v61 = *(v0 + 240);
    v62 = *(v0 + 216);
    v63 = *(v0 + 192);
    v64 = *(v0 + 112);
    v65 = *(v0 + 96);
    v66 = *(v64 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask);
    *(v64 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask) = 0;

    v60(v62, v65, v63);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v0 + 352);
    if (v69)
    {
      v102 = *(v0 + 336);
      v105 = *(v0 + 344);
      v88 = *(v0 + 312);
      v89 = *(v0 + 320);
      v87 = *(v0 + 304);
      v86 = *(v0 + 296);
      v111 = *(v0 + 288);
      v85 = *(v0 + 368);
      v71 = *(v0 + 216);
      v91 = *(v0 + 200);
      v93 = *(v0 + 328);
      v95 = *(v0 + 192);
      v98 = *(v0 + 264);
      v72 = *(v0 + 184);
      v74 = *(v0 + 160);
      v73 = *(v0 + 168);
      v75 = *(v0 + 144);
      v76 = *(v0 + 104);
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v112 = v78;
      *v77 = 136315394;
      v86(v74, v85, v75);
      static FormatStyle<>.oslog(_:)();
      v88(v74, v75);
      Date.formatted<A>(_:)();
      v102(v72, v73);
      v98(v71, v95);
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 48), *(v0 + 56), &v112);

      *(v77 + 4) = v79;
      *(v77 + 12) = 2048;
      *(v77 + 14) = v76;
      _os_log_impl(&dword_220099000, v67, v68, "failedDeliveryRetryTask END {nextAttemptDate: %s, sleepSeconds: %f}", v77, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x223D77FF0](v78, -1, -1);
      MEMORY[0x223D77FF0](v77, -1, -1);
    }

    else
    {
      v80 = *(v0 + 264);
      v81 = *(v0 + 216);
      v82 = *(v0 + 192);
      v83 = *(v0 + 200);

      v80(v81, v82);
    }

LABEL_12:
    v52 = *(v0 + 224);
    v51 = *(v0 + 232);
    v54 = *(v0 + 208);
    v53 = *(v0 + 216);
    v55 = *(v0 + 184);
    v56 = *(v0 + 160);
    v57 = *(v0 + 136);

    v58 = *(v0 + 8);

    return v58();
  }

  v49 = *(MEMORY[0x277D857E0] + 4);

  v50 = swift_task_alloc();
  *(v0 + 360) = v50;
  *v50 = v0;
  v50[1] = closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:);

  return MEMORY[0x282200460]();
}

{
  v35 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  (*(v0 + 248))(*(v0 + 208), *(v0 + 96), *(v0 + 192));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v29 = *(v0 + 208);
    v30 = *(v0 + 200);
    v6 = *(v0 + 184);
    v31 = *(v0 + 192);
    v32 = *(v0 + 264);
    v7 = *(v0 + 176);
    v28 = *(v0 + 168);
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = *(v0 + 104);
    v12 = swift_slowAlloc();
    v33 = v1;
    v34 = swift_slowAlloc();
    v13 = v34;
    *v12 = 136315394;
    (*(v8 + 104))(v9, *MEMORY[0x277D24308], v10);
    static FormatStyle<>.oslog(_:)();
    (*(v8 + 8))(v9, v10);
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OSLogDateFormatter and conformance OSLogDateFormatter, MEMORY[0x277D24310]);
    Date.formatted<A>(_:)();
    (*(v7 + 8))(v6, v28);
    v32(v29, v31);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 16), *(v0 + 24), &v34);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2048;
    *(v12 + 14) = v11;
    _os_log_impl(&dword_220099000, v4, v5, "failedDeliveryRetryTask CANCELLED {nextAttemptDate: %s, sleepSeconds: %f}", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223D77FF0](v13, -1, -1);
    MEMORY[0x223D77FF0](v12, -1, -1);
  }

  else
  {
    v15 = *(v0 + 264);
    v17 = *(v0 + 200);
    v16 = *(v0 + 208);
    v18 = *(v0 + 192);

    v15(v16, v18);
  }

  v20 = *(v0 + 224);
  v19 = *(v0 + 232);
  v22 = *(v0 + 208);
  v21 = *(v0 + 216);
  v23 = *(v0 + 184);
  v24 = *(v0 + 160);
  v25 = *(v0 + 136);

  v26 = *(v0 + 8);

  return v26();
}

{
  v1 = *(*v0 + 360);
  v2 = *(*v0 + 352);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return MEMORY[0x2822009F8](closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:), v3, 0);
}

{
  v48 = v0;
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 216);
  v5 = *(v0 + 192);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = *(v6 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask);
  *(v6 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask) = 0;

  v2(v4, v7, v5);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v43 = *(v0 + 336);
    v44 = *(v0 + 344);
    v40 = *(v0 + 328);
    v37 = *(v0 + 312);
    v38 = *(v0 + 320);
    v35 = *(v0 + 296);
    v36 = *(v0 + 304);
    v45 = *(v0 + 288);
    v46 = *(v0 + 352);
    v34 = *(v0 + 368);
    v11 = *(v0 + 216);
    v39 = *(v0 + 200);
    v41 = *(v0 + 192);
    v42 = *(v0 + 264);
    v12 = *(v0 + 184);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = *(v0 + 144);
    v16 = *(v0 + 104);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v47 = v18;
    *v17 = 136315394;
    v35(v14, v34, v15);
    static FormatStyle<>.oslog(_:)();
    v37(v14, v15);
    Date.formatted<A>(_:)();
    v43(v12, v13);
    v42(v11, v41);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v0 + 48), *(v0 + 56), &v47);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v16;
    _os_log_impl(&dword_220099000, v9, v10, "failedDeliveryRetryTask END {nextAttemptDate: %s, sleepSeconds: %f}", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x223D77FF0](v18, -1, -1);
    MEMORY[0x223D77FF0](v17, -1, -1);
  }

  else
  {
    v20 = *(v0 + 352);
    v21 = *(v0 + 264);
    v22 = *(v0 + 216);
    v23 = *(v0 + 192);
    v24 = *(v0 + 200);

    v21(v22, v23);
  }

  v26 = *(v0 + 224);
  v25 = *(v0 + 232);
  v28 = *(v0 + 208);
  v27 = *(v0 + 216);
  v29 = *(v0 + 184);
  v30 = *(v0 + 160);
  v31 = *(v0 + 136);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t SKADatabasePublishedLocalStatus.key.getter@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v25 - v4;
  v6 = type metadata accessor for LSKDomain();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - v12;
  v14 = [v1 keyDomain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LSKDomain.init(rawValue:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of UUID?(v5, &_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
    v15 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    v17 = v16;
    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    v26 = 0xD00000000000001FLL;
    v27 = 0x80000002201AC6D0;
    v18 = [v1 keyDomain];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    MEMORY[0x223D76B90](v19, v21);

    v22 = v27;
    *v17 = v26;
    v17[1] = v22;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D24378], v15);
    return swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    v24 = [v1 keyName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    LSKKey.init(domain:name:)();
    return (*(v7 + 8))(v13, v6);
  }
}

uint64_t closure #1 in SKALocalStatusServer.reconcileObservations(reason:)@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v90 = a4;
  v85 = a2;
  v93 = a5;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v86 = *(v89 - 8);
  v7 = *(v86 + 64);
  MEMORY[0x28223BE20](v89);
  v92 = &v79 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v79 - v11;
  v13 = type metadata accessor for Date();
  v91 = *(v13 - 8);
  v14 = *(v91 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v88 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v87 = &v79 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v79 - v20;
  v22 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = [v22 keyDomain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LSKDomain.init(rawValue:)();
  v24 = type metadata accessor for LSKDomain();
  v25 = (*(*(v24 - 8) + 48))(v21, 1, v24);
  outlined destroy of UUID?(v21, &_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
  if (v25 == 1)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, log);
    v27 = v22;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_17;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v94[0] = v31;
    *v30 = 136315138;
    v32 = [v27 keyDomain];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v94);

    *(v30 + 4) = v36;
    v37 = "Loaded unknown domain from database {keyDomain: %s}";
LABEL_16:
    _os_log_impl(&dword_220099000, v28, v29, v37, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x223D77FF0](v31, -1, -1);
    MEMORY[0x223D77FF0](v30, -1, -1);
LABEL_17:

    v61 = 1;
    v62 = v93;
    goto LABEL_30;
  }

  v38 = [v22 payload];
  if (!v38)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, log);
    v55 = v22;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_17;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v94[0] = v31;
    *v30 = 136315138;
    v56 = [v55 identifier];
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v94);

    *(v30 + 4) = v60;
    v37 = "Skipping status with nil payload {status.identifier: %s}";
    goto LABEL_16;
  }

  v39 = v38;
  v40 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v41;
  v84 = v40;

  v42 = [v22 idsIdentifier];
  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  v46 = *v85;
  if (*(*v85 + 16))
  {
    v47 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v45);
    v49 = v48;

    v50 = v87;
    if (v49)
    {
      v51 = (*(v46 + 56) + 32 * v47);
      v52 = v51[1];
      v82 = *v51;
      v53 = v51[3];
      v85 = v51[2];
      v80 = v52;

      v81 = v53;
    }

    else
    {
      v85 = 0;
      v81 = 0xE000000000000000;
      v82 = 0;
      v80 = 0xE000000000000000;
    }
  }

  else
  {

    v85 = 0;
    v81 = 0xE000000000000000;
    v82 = 0;
    v80 = 0xE000000000000000;
    v50 = v87;
  }

  v63 = [v22 idsIdentifier];
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  v67 = OBJC_IVAR___SKALocalStatusServer_observationTimestamps;
  swift_beginAccess();
  v68 = *(a3 + v67);
  if (!*(v68 + 16))
  {

    goto LABEL_24;
  }

  v69 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v66);
  v71 = v70;

  if ((v71 & 1) == 0)
  {
LABEL_24:
    v73 = 1;
    v72 = v91;
    goto LABEL_25;
  }

  v72 = v91;
  (*(v91 + 16))(v12, *(v68 + 56) + *(v91 + 72) * v69, v13);
  v73 = 0;
LABEL_25:
  (*(v72 + 56))(v12, v73, 1, v13);
  swift_endAccess();
  v74 = *(v72 + 48);
  if (v74(v12, 1, v13) == 1)
  {
    v75 = [v22 modificationDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (v74(v12, 1, v13) != 1)
    {
      outlined destroy of UUID?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v72 + 32))(v50, v12, v13);
  }

  (*(v86 + 16))(v92, v90, v89);
  v76 = [v22 idsIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v72 + 16))(v88, v50, v13);
  v94[0] = v84;
  v94[1] = v83;
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Data and conformance Data();
  v62 = v93;
  LSKLocalStatusObservation.init(key:deviceIDSIdentifier:deviceName:deviceModel:timestamp:value:)();
  (*(v72 + 8))(v50, v13);
  v61 = 0;
LABEL_30:
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  return (*(*(v77 - 8) + 56))(v62, v61, 1, v77);
}

uint64_t SKALocalStatusServer.recipientDevicesChanged()()
{
  v1 = v0;
  v2 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000019, 0x80000002201AC950);
  v3 = v2;
  if (v2 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

    v7 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v37 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v36 = v0;
  v6 = 0;
  v7 = v37;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D77050](v6, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = [v8 uniqueID];
    if (v10)
    {
      v11 = v10;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 0;
    }

    v16 = *(v37 + 16);
    v15 = *(v37 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    }

    ++v6;
    *(v37 + 16) = v16 + 1;
    v17 = v37 + 16 * v16;
    *(v17 + 32) = v12;
    *(v17 + 40) = v14;
  }

  while (v4 != v6);

  v1 = v36;
LABEL_17:
  v18 = 0;
  v19 = *(v7 + 16);
  v20 = MEMORY[0x277D84F90];
LABEL_18:
  v21 = 16 * v18 + 40;
  while (v19 != v18)
  {
    if (v18 >= *(v7 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    ++v18;
    v22 = v21 + 16;
    v23 = *(v7 + v21);
    v21 += 16;
    if (v23)
    {
      v24 = *(v7 + v22 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 16) + 1, 1, v20);
        v20 = result;
      }

      v26 = *(v20 + 16);
      v25 = *(v20 + 24);
      if (v26 >= v25 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 16) = v26 + 1;
      v27 = v20 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      goto LABEL_18;
    }
  }

  v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v20);

  v29 = OBJC_IVAR___SKALocalStatusServer_idsDeviceRecipientIDs;
  v30 = *(v1 + OBJC_IVAR___SKALocalStatusServer_idsDeviceRecipientIDs);

  v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(v31);

  v33 = specialized _setUpCast<A, B>(_:)(v28);

  v34 = _sSh2eeoiySbShyxG_ABtFZSSSg_Tt1g5(v33, v32);

  if ((v34 & 1) == 0)
  {
    v35 = *(v1 + v29);
    *(v1 + v29) = v7;
  }

  return (v34 & 1) == 0;
}

uint64_t specialized _setUpCast<A, B>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v24 = 0;
    if (!v7)
    {
      goto LABEL_30;
    }

    do
    {
      v25 = v24;
LABEL_34:
      v26 = (*(a1 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v7)))));
      v7 &= v7 - 1;
      v32 = *v26;
      v34 = v26[1];

      swift_dynamicCast();
      result = specialized _NativeSet._unsafeUpdate(with:)(v27, v29);
    }

    while (v7);
LABEL_30:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v8)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v25);
      ++v24;
      if (v7)
      {
        v24 = v25;
        goto LABEL_34;
      }
    }
  }

  else
  {
    v9 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v15 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v28 = *v15;
      v30 = v15[1];

      swift_dynamicCast();
      v16 = *(v2 + 40);
      Hasher.init(_seed:)();
      if (v33)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v9 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v9 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v9 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v2 + 48) + 16 * v12);
      *v13 = v31;
      v13[1] = v33;
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v14);
      ++v11;
      if (v7)
      {
        v11 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSSSg_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v26 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v11 = (v7 - 1) & v7;
LABEL_13:
    v14 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v16 = *v14;
    v15 = v14[1];
    v17 = *(a2 + 40);
    Hasher.init(_seed:)();
    if (v15)
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v18 = Hasher._finalize()();
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
LABEL_31:

      return 0;
    }

    v27 = v11;
    v21 = ~v19;
    v22 = *(a2 + 48);
    while (1)
    {
      v23 = (v22 + 16 * v20);
      v24 = v23[1];
      if (v24)
      {
        break;
      }

      if (!v15)
      {
        goto LABEL_28;
      }

LABEL_19:
      v20 = (v20 + 1) & v21;
      if (((*(v9 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (!v15)
    {
      goto LABEL_19;
    }

    v25 = *v23 == v16 && v24 == v15;
    if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_28:
    result = v26;
    v7 = v27;
  }

  while (v27);
LABEL_8:
  v12 = v3;
  while (1)
  {
    v3 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v13 = *(v4 + 8 * v3);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in SKALocalStatusServer.handleIDSDevicesChanged()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x2822009F8](closure #1 in SKALocalStatusServer.handleIDSDevicesChanged(), a4, 0);
}

uint64_t closure #1 in SKALocalStatusServer.handleIDSDevicesChanged()()
{
  v19 = v0;
  v1 = *(v0 + 24);
  SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(*(v0 + 32), 0x20746E756F636341, 0xEF6465676E616863);
  *(v0 + 40) = v2;
  if (v2)
  {
    v16 = *(MEMORY[0x277D857E0] + 4);
    v17 = swift_task_alloc();
    *(v0 + 48) = v17;
    *v17 = v0;
    v17[1] = closure #1 in SKALocalStatusServer.handleIDSDevicesChanged();

    return MEMORY[0x282200460]();
  }

  else
  {
    v3 = *(v0 + 24);
    v4 = SKALocalStatusServer.getFilteredRecipientIDSDevices(from:)(0xD000000000000019, 0x80000002201AC930);
    if (v4 >> 62)
    {
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, log);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      *(v0 + 16) = v5;
      v11 = dispatch thunk of CustomStringConvertible.description.getter();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_220099000, v7, v8, "Could not deliver pending statuses for account change. idsDevices.count: %s}", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D77FF0](v10, -1, -1);
      MEMORY[0x223D77FF0](v9, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 24);
  v4 = *v0;

  return MEMORY[0x2822009F8](closure #1 in SKALocalStatusServer.handleIDSDevicesChanged(), v2, 0);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #1 in SKALocalStatusServer.send(_:to:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v26[0] = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = *(v27 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v26 - v18;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26[1] = *(a2 + 144);
  (*(v16 + 16))(v19, v26[0], v15);
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  (*(v16 + 32))(v21 + v20, v19, v15);
  aBlock[4] = partial apply for closure #1 in closure #1 in SKALocalStatusServer.send(_:to:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_91;
  v22 = _Block_copy(aBlock);
  v23 = a3;
  v24 = a4;
  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223D76E80](0, v14, v10, v22);
  _Block_release(v22);
  (*(v29 + 8))(v10, v7);
  (*(v27 + 8))(v14, v28);
}

void closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(void *a1, void *a2, uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v10 = [a1 keyName];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = MEMORY[0x277D837D0];
  v39 = MEMORY[0x277D837D0];
  *&aBlock = v11;
  *(&aBlock + 1) = v13;
  outlined init with take of Any(&aBlock, v43);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = v9;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, 0x656D614E79656BLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v16 = v42;
  v17 = [a1 keyDomain];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v39 = v14;
  *&aBlock = v18;
  *(&aBlock + 1) = v20;
  outlined init with take of Any(&aBlock, v43);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v42 = v16;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, 0x69616D6F4479656BLL, 0xE90000000000006ELL, v21);
  v22 = v42;
  v23 = [a1 payload];
  if (v23)
  {
    v24 = v23;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    v39 = MEMORY[0x277CC9318];
    *&aBlock = v25;
    *(&aBlock + 1) = v27;
    outlined init with take of Any(&aBlock, v43);
    outlined copy of Data._Representation(v25, v27);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v42 = v22;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, 0x64616F6C796170, 0xE700000000000000, v28);
    outlined consume of Data._Representation(v25, v27);
    v22 = v42;
  }

  v29 = MEMORY[0x223D76B00](0xD000000000000015, 0x80000002201AC230);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v22);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v5 + 16))(v8, v35, v4);
  v31 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v32 = swift_allocObject();
  (*(v5 + 32))(v32 + v31, v8, v4);
  v40 = partial apply for closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:);
  v41 = v32;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v38 = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?, @guaranteed [AnyHashable : Any]?, @guaranteed Error?) -> ();
  v39 = &block_descriptor_97;
  v33 = _Block_copy(&aBlock);

  [v36 sendRequestID:v29 request:isa options:0 responseHandler:v33];
  _Block_release(v33);
}

uint64_t closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  closure #1 in closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(a3, a1, &v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

id closure #1 in closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(void *a1, uint64_t a2, uint64_t *a3)
{
  if (a1)
  {
    swift_willThrow();
    v5 = a1;
    goto LABEL_12;
  }

  if (!a2)
  {
    v10 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    v5 = swift_allocError();
    v12 = v11;
    v13 = 0xE800000000000000;
    goto LABEL_11;
  }

  *&v18[0] = 0x73736563637573;
  *(&v18[0] + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v8 & 1) == 0))
  {
    outlined destroy of AnyHashable(v19);
    v10 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    v5 = swift_allocError();
    v12 = v11;
    v13 = 0xEF73736563637553;
LABEL_11:
    *v11 = 0x65736E6F70736572;
    v11[1] = v13;
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D24380], v10);
    swift_willThrow();
    goto LABEL_12;
  }

  outlined init with copy of Any(*(a2 + 56) + 32 * v7, v18);
  outlined destroy of AnyHashable(v19);
  outlined init with take of Any(v18, v20);
  outlined init with copy of Any(v20, v19);
  if (swift_dynamicCast())
  {
    if (v18[0])
    {
      return __swift_destroy_boxed_opaque_existential_0(v20);
    }

    v14 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    v5 = swift_allocError();
    v16 = v17;
    *v17 = 0xD000000000000022;
    v17[1] = 0x80000002201AC760;
  }

  else
  {
    v14 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    v5 = swift_allocError();
    v16 = v15;
    *v15 = 0x796E612074736143;
    v15[1] = 0xEF73736563637553;
  }

  (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D24378], v14);
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0(v20);
LABEL_12:
  *a3 = v5;
  return a1;
}

uint64_t closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a5, v9);
  v19 = (*(v10 + 80) + 64) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a1;
  *(v20 + 5) = a2;
  *(v20 + 6) = v24;
  *(v20 + 7) = a4;
  (*(v10 + 32))(&v20[v19], v13, v9);
  v21 = a1;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:), v20);
}

uint64_t closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x277D85DE8];
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v10 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:), 0, 0);
}

uint64_t closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:)()
{
  v39 = v0;
  v38[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  v0[13] = __swift_project_value_buffer(v2, log);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v38[0] = v8;
    *v7 = 136315138;
    v9 = [v6 identifier];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v38);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_220099000, v4, v5, "Receive local status CONTINUE. Write status to database. {status: %s}}", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D77FF0](v8, -1, -1);
    MEMORY[0x223D77FF0](v7, -1, -1);
  }

  v14 = v0[6];
  v15 = *(v0[7] + 176);
  v16 = [v15 newBackgroundContext];
  v0[14] = v16;
  v0[5] = 0;
  v17 = [v15 createOrUpdateOrDeleteSubscribedLocalStatus:v14 databaseContext:v16 error:v0 + 5];
  v18 = v0[5];
  if (v17)
  {
    v19 = v0[12];
    v20 = v0[7];
    v21 = v18;
    static Date.now.getter();
    v22 = type metadata accessor for Date();
    (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
    v23 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:), v20, 0);
  }

  else
  {
    v24 = v18;
    v25 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v26 = v25;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v25;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_220099000, v27, v28, "Receive local status FAILED. Database error {error: %@}", v29, 0xCu);
      outlined destroy of UUID?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x223D77FF0](v30, -1, -1);
      MEMORY[0x223D77FF0](v29, -1, -1);
    }

    v34 = v0[11];
    v33 = v0[12];

    swift_willThrow();

    v35 = v0[1];
    v36 = *MEMORY[0x277D85DE8];

    return v35();
  }
}

{
  v8 = *MEMORY[0x277D85DE8];
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  outlined init with copy of (String, Sendable)(v1, v2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v2, v4, v3);
  swift_endAccess();
  outlined destroy of UUID?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:), 0, 0);
}

{
  v10 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 104);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220099000, v2, v3, "Receive local status SUCCESS", v4, 2u);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  v5 = *(v0 + 80);
  v6 = *(v0 + 56);

  _StringGuts.grow(_:)(18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D76B90](v7);

  MEMORY[0x223D76B90](93, 0xE100000000000000);
  *(v0 + 120) = 0x6465766965636572;
  *(v0 + 128) = 0xEF5B737574617453;
  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:), v6, 0);
}

{
  v7 = *MEMORY[0x277D85DE8];
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[7];
  SKALocalStatusServer.reconcileObservations(reason:)(v0[15], v0[16]);

  v4 = v0[1];
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

uint64_t closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[3] = v6;
  v7 = *(v6 - 8);
  v4[4] = v7;
  v8 = *(v7 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand(), a4, 0);
}

uint64_t closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand()()
{
  v1 = *(v0 + 40);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand();
  v3 = *(v0 + 40);

  return specialized Clock.sleep(for:tolerance:)(0xA055690D9DB80000, 1, 0, 0, 1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 56) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 16);
  if (v0)
  {
    v9 = closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand();
  }

  else
  {
    v9 = closure #1 in SKALocalStatusServer.takeTransactionForLaunchOnDemand();
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220099000, v2, v3, "Releasing transaction", v4, 2u);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[2];

  v7 = *(v6 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction);
  *(v6 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction) = 0;
  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8();
}

{

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, log);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_220099000, v2, v3, "Releasing transaction", v4, 2u);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  v7 = *(v6 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction);
  *(v6 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction) = 0;
  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SKALocalStatusServer.FailedDelivery.ID(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  dispatch thunk of Hashable.hash(into:)();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SKALocalStatusServer.FailedDelivery.ID(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SKALocalStatusServer.FailedDelivery.ID(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  dispatch thunk of Hashable.hash(into:)();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SKALocalStatusServer.FailedDelivery.ID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Data and conformance Data();
  if ((static LSKKey.== infix(_:_:)() & 1) == 0)
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

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void SKALocalStatusServer.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void SKALocalStatusServer.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t SKALocalStatusServer.deinit()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);

  v3 = *(v0 + 168);
  swift_unknownObjectRelease();

  v4 = *(v0 + 184);
  swift_unknownObjectRelease();

  outlined destroy of UUID?(v0 + OBJC_IVAR___SKALocalStatusServer_idsDeviceProviderToken, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(v0 + OBJC_IVAR___SKALocalStatusServer_idsDeviceRecipientIDs);

  v6 = *(v0 + OBJC_IVAR___SKALocalStatusServer_observationTimestamps);

  v7 = *(v0 + OBJC_IVAR___SKALocalStatusServer_failedDeliveryRetryTask);

  v8 = *(v0 + OBJC_IVAR___SKALocalStatusServer_failedDeliveries);

  v9 = *(v0 + OBJC_IVAR___SKALocalStatusServer_launchOnDemandTransaction);
  swift_unknownObjectRelease();
  v10 = *(v0 + OBJC_IVAR___SKALocalStatusServer_deliverySubjects);

  v11 = *(v0 + OBJC_IVAR___SKALocalStatusServer_subscriptionSubjects);

  outlined consume of SKALocalStatusServer.BrowseTask?(*(v0 + OBJC_IVAR___SKALocalStatusServer_browseTask), *(v0 + OBJC_IVAR___SKALocalStatusServer_browseTask + 8), *(v0 + OBJC_IVAR___SKALocalStatusServer_browseTask + 16), *(v0 + OBJC_IVAR___SKALocalStatusServer_browseTask + 24));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SKALocalStatusServer.__deallocating_deinit()
{
  SKALocalStatusServer.deinit();

  return MEMORY[0x282200960](v0);
}

id SKALocalStatusServer.DatabaseDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PublishStatusInvocation.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for LSKStatusOptions();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v3[14] = v11;
  v12 = *(v11 - 8);
  v3[15] = v12;
  v13 = *(v12 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](PublishStatusInvocation.invoke(with:context:client:), 0, 0);
}

uint64_t PublishStatusInvocation.invoke(with:context:client:)()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[3];
  v4 = PublishStatusInvocation.Parameters.payload.getter();
  v6 = v5;
  v0[19] = v4;
  v0[20] = v5;
  PublishStatusInvocation.Parameters.key.getter();
  PublishStatusInvocation.Parameters.options.getter();
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = PublishStatusInvocation.invoke(with:context:client:);
  v8 = v0[17];
  v9 = v0[12];
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[4];

  return SKALocalStatusServer.publish(_:for:options:)(v8, v9, v4, v6, v10, v11);
}

{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *(*v1 + 56);
  v9 = *(*v1 + 48);
  v10 = *(*v1 + 40);
  v13 = *v1;
  *(*v1 + 176) = v0;

  outlined consume of Data?(v4, v3);
  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);
  if (v0)
  {
    v11 = PublishStatusInvocation.invoke(with:context:client:);
  }

  else
  {
    v11 = PublishStatusInvocation.invoke(with:context:client:);
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v11 = v0[10];
  v12 = v0[7];
  v10 = v0[2];
  (*(v3 + 32))(v1);
  outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v6, v4, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of (String, Sendable)(v4, v7, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  PublishStatusInvocation.Response.init(initialStatus:updates:)();
  outlined destroy of UUID?(v4, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  (*(v3 + 8))(v1, v5);

  v8 = v0[1];

  return v8();
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[7];

  v9 = v0[1];
  v10 = v0[22];

  return v9();
}

uint64_t protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance PublishStatusInvocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = *(MEMORY[0x277D54B00] + 4);
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type PublishStatusInvocation and conformance PublishStatusInvocation, MEMORY[0x277D24278]);
  *v18 = v15;
  v18[1] = protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance PublishStatusInvocation;

  return MEMORY[0x2821B6150](a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance PublishStatusInvocation(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 16);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t protocol witness for _SFXPCAsyncInvocableProtocol.invoke(with:context:client:) in conformance PublishStatusInvocation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return PublishStatusInvocation.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t LocalStatusInvocation.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMd, &_s14LocalStatusKit012LSKPublishedB0Vy10Foundation4DataVGMR);
  v3[8] = v6;
  v7 = *(v6 - 8);
  v3[9] = v7;
  v8 = *(v7 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](LocalStatusInvocation.invoke(with:context:client:), a3, 0);
}

uint64_t LocalStatusInvocation.invoke(with:context:client:)()
{
  v1 = v0[4];
  SKALocalStatusServer.status(for:)(v0[11], v0[6], v0[3]);
  v0[13] = 0;

  return MEMORY[0x2822009F8](LocalStatusInvocation.invoke(with:context:client:), 0, 0);
}

{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[6];
  (*(v3 + 32))(v1);
  outlined init with take of SFXPCAsyncSequence<LSKPublishedStatus<Data>>?(v7, v4, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  (*(v3 + 16))(v2, v1, v5);
  outlined init with copy of (String, Sendable)(v4, v6, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  LocalStatusInvocation.Response.init(initialStatus:updates:)();
  outlined destroy of UUID?(v4, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMd, &_s7Sharing18SFXPCAsyncSequenceVy14LocalStatusKit012LSKPublishedE0Vy10Foundation4DataVGGSgMR);
  (*(v3 + 8))(v1, v5);

  v8 = v0[1];

  return v8();
}

{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  v7 = v0[1];
  v8 = v0[13];

  return v7();
}

uint64_t protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance LocalStatusInvocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = *(MEMORY[0x277D54B00] + 4);
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LocalStatusInvocation and conformance LocalStatusInvocation, MEMORY[0x277D242E0]);
  *v18 = v15;
  v18[1] = protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance LocalStatusInvocation;

  return MEMORY[0x2821B6150](a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t protocol witness for _SFXPCAsyncInvocableProtocol.invoke(with:context:client:) in conformance LocalStatusInvocation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return LocalStatusInvocation.invoke(with:context:client:)(a1, a2, v6);
}

uint64_t protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance SubscribeStatusInvocation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v9;
  v16 = *v8;
  v17 = *(MEMORY[0x277D54B00] + 4);
  v18 = swift_task_alloc();
  *(v15 + 16) = v18;
  v19 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type SubscribeStatusInvocation and conformance SubscribeStatusInvocation, MEMORY[0x277D242D0]);
  *v18 = v15;
  v18[1] = protocol witness for _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:) in conformance LocalStatusInvocation;

  return MEMORY[0x2821B6150](a1, a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t protocol witness for _SFXPCAsyncInvocableProtocol.invoke(with:context:client:) in conformance SubscribeStatusInvocation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *a3;
  v3[4] = *a3;
  return MEMORY[0x2822009F8](protocol witness for _SFXPCAsyncInvocableProtocol.invoke(with:context:client:) in conformance SubscribeStatusInvocation, v4, 0);
}

uint64_t protocol witness for _SFXPCAsyncInvocableProtocol.invoke(with:context:client:) in conformance SubscribeStatusInvocation()
{
  v1 = v0[4];
  SKALocalStatusServer.subscribe(to:)(v0[3], v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ14LocalStatusKit08LSKLocalC11ObservationVy10Foundation4DataVG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    lazy protocol witness table accessor for type LSKLocalStatusObservation<Data> and conformance <> LSKLocalStatusObservation<A>();
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x223D76530]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x223D76530]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

char *specialized ContiguousArray.reserveCapacity(_:)(int64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(result, v5, 0);
  }

  return result;
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = specialized Clock.sleep(for:tolerance:);
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlF7Sharing15SFXPCInvocationCm_Ttg5()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Sharing15SFXPCInvocationCmMd, &_s7Sharing15SFXPCInvocationCmMR);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &_ss23_ContiguousArrayStorageCy7Sharing15SFXPCInvocationCmGMd;
    v3 = &_ss23_ContiguousArrayStorageCy7Sharing15SFXPCInvocationCmGMR;
  }

  else
  {
    v2 = &_ss23_ContiguousArrayStorageCyyXlGMd;
    v3 = &_ss23_ContiguousArrayStorageCyyXlGMR;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit08LSKLocalE11ObservationVy10Foundation4DataVGGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

size_t _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC14LocalStatusKit6LSKKeyVy10Foundation4DataVG_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGGMd, &_ss23_ContiguousArrayStorageCy14LocalStatusKit6LSKKeyVy10Foundation4DataVGGMR);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Date();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Date();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
    outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v12 + *(*(v13 - 8) + 72) * v8, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
    v22 = *(v15 - 8);
    outlined init with take of SKALocalStatusServer.FailedDelivery(v14 + *(v22 + 72) * v8, a2);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t specialized _NativeDictionary._delete(at:)(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Date() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - v8;
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

{
  v35 = type metadata accessor for SKALocalStatusServer.FailedDelivery.ID(0);
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v35);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v33 = a2 + 64;
    v34 = (v13 + 1) & v12;
    v14 = *(v4 + 72);
    v32 = v12;
    do
    {
      v15 = v14 * v11;
      outlined init with copy of SKALocalStatusServer.FailedDelivery(*(a2 + 48) + v14 * v11, v8, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      v16 = *(a2 + 40);
      Hasher.init(_seed:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type LSKKey<Data> and conformance LSKKey<A>, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
      dispatch thunk of Hashable.hash(into:)();
      v17 = &v8[*(v35 + 20)];
      v18 = *v17;
      v19 = *(v17 + 1);
      String.hash(into:)();
      v20 = Hasher._finalize()();
      result = outlined destroy of SKALocalStatusServer.FailedDelivery.ID(v8, type metadata accessor for SKALocalStatusServer.FailedDelivery.ID);
      v21 = v20 & v12;
      if (a1 >= v34)
      {
        if (v21 < v34)
        {
          v9 = v33;
          goto LABEL_4;
        }

        if (a1 >= v21)
        {
          goto LABEL_11;
        }
      }

      else if (v21 >= v34 || a1 >= v21)
      {
LABEL_11:
        if (v14 * a1 < v15 || *(a2 + 48) + v14 * a1 >= (*(a2 + 48) + v15 + v14))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v14 * a1 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v22 = *(a2 + 56);
        v23 = *(*(type metadata accessor for SKALocalStatusServer.FailedDelivery(0) - 8) + 72);
        v24 = v23 * a1;
        result = v22 + v23 * a1;
        v25 = v23 * v11;
        v26 = v22 + v23 * v11 + v23;
        v27 = v24 < v25 || result >= v26;
        v9 = v33;
        if (v27)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v11;
          v12 = v32;
        }

        else
        {
          a1 = v11;
          v12 = v32;
          if (v24 != v25)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v11;
          }
        }

        goto LABEL_4;
      }

      v9 = v33;
LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v11);
      result = Hasher._finalize()();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v9 = v18[1];
          *v17 = *v18;
          v17[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v12);
      result = Hasher._finalize()();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 48 * v3);
        v19 = (v17 + 48 * v6);
        if (v3 != v6 || v18 >= v19 + 3)
        {
          v9 = *v19;
          v10 = v19[2];
          v18[1] = v19[1];
          v18[2] = v10;
          *v18 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x223D772F0](a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  if (a3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_17:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_16;
    }

LABEL_7:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  if (!a3)
  {
    goto LABEL_7;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_16:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
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

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo15SKPresentDeviceC_Tt1g5(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      specialized _NativeSet.resize(capacity:)(v21 + 1);
    }

    v19 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v20;
  return v13;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
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

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR);
  v10 = *(type metadata accessor for Date() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Date() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo15SKPresentDeviceCGMd, &_ss11_SetStorageCySo15SKPresentDeviceCGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v17);
      result = Hasher._finalize()();
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
      *(*(v6 + 48) + 8 * v13) = v17;
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v19)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_31;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo15SKPresentDeviceCGMd, &_ss11_SetStorageCySo15SKPresentDeviceCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = NSObject._rawHashValue(seed:)(v17);
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

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13IDSDeviceTypeVGMd, &_ss11_SetStorageCySo13IDSDeviceTypeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      Hasher.init(_seed:)();
      MEMORY[0x223D772F0](v18);
      result = Hasher._finalize()();
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

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSSgGMd, &_ss11_SetStorageCySSSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v20)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo15SKPresentDeviceCGMd, &_ss11_SetStorageCySo15SKPresentDeviceCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = NSObject._rawHashValue(seed:)(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo15SKPresentDeviceC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo15SKPresentDeviceCGMd, &_ss11_SetStorageCySo15SKPresentDeviceCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x223D772F0](a1);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for IDSDeviceType(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_23;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_22:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_22;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_23:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet._unsafeUpdate(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  result = Hasher._finalize()();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(v5 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    v15 = *(v5 + 48);
    do
    {
      v16 = (v15 + 16 * v10);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          if (*v16 == a1 && v17 == a2)
          {
            goto LABEL_19;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            v19 = v16[1];
LABEL_19:
            *v16 = a1;
            v16[1] = a2;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_19;
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
    }

    while ((v12 & (1 << v10)) != 0);
  }

  if (*(v5 + 16) >= *(v5 + 24))
  {
    __break(1u);
  }

  else
  {
    *(v8 + 8 * v11) = v12 | v13;
    v20 = (*(v5 + 48) + 16 * v10);
    *v20 = a1;
    v20[1] = a2;
    v21 = *(v5 + 16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      *(v5 + 16) = v23;
      return result;
    }
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223D77050](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x223D76530]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #7 in SKALocalStatusServer.init(idsDeviceProvider:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #7 in SKALocalStatusServer.init(idsDeviceProvider:)();
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223D76DF0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
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

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSSSg_SayADGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v4 = lazy protocol witness table accessor for type String? and conformance <A> A?();
  result = MEMORY[0x223D76DF0](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      specialized Set._Variant.insert(_:)(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t specialized SKALocalStatusServer.handleIncomingLocalStatus(request:)(uint64_t a1, void *a2)
{
  v168 = a2;
  v154 = type metadata accessor for DispatchWorkItemFlags();
  v153 = *(v154 - 8);
  v3 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v151 = &v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for DispatchQoS();
  v150 = *(v152 - 8);
  v5 = *(v150 + 64);
  MEMORY[0x28223BE20](v152);
  v149 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = type metadata accessor for Date();
  v145 = *(v146 - 8);
  v7 = *(v145 + 64);
  v8 = MEMORY[0x28223BE20](v146);
  v156 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v155 = &v131 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMd, &_s14LocalStatusKit6LSKKeyVy10Foundation4DataVGMR);
  v148 = *(v11 - 8);
  v12 = *(v148 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v144 = &v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v14;
  MEMORY[0x28223BE20](v13);
  v158 = &v131 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v157 = &v131 - v18;
  v19 = type metadata accessor for LSKDomain();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v142 = &v131 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v131 - v24;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  v27 = __swift_project_value_buffer(v26, log);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v159 = v27;
    v31 = v19;
    v32 = v30;
    *v30 = 0;
    _os_log_impl(&dword_220099000, v28, v29, "Receive local status START", v30, 2u);
    v33 = v32;
    v19 = v31;
    v27 = v159;
    MEMORY[0x223D77FF0](v33, -1, -1);
  }

  v34 = v168;
  if (!v168)
  {
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_220099000, v60, v61, "Receive local status FAILED. Missing options", v62, 2u);
      MEMORY[0x223D77FF0](v62, -1, -1);
    }

    v57 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    v59 = v63;
    *v63 = 0x736E6F6974706FLL;
    v63[1] = 0xE700000000000000;
    goto LABEL_24;
  }

  v35 = *MEMORY[0x277D442D0];
  v166[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v166[1] = v36;
  AnyHashable.init<A>(_:)();
  if (!v34[2] || (v37 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v38 & 1) == 0))
  {
    outlined destroy of AnyHashable(aBlock);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_220099000, v54, v55, "Receive local status FAILED. Missing idsID", v56, 2u);
      MEMORY[0x223D77FF0](v56, -1, -1);
    }

    v57 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    v59 = v58;
    *v58 = 0xD000000000000022;
    v58[1] = 0x80000002201AC880;
LABEL_24:
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D24380], v57);
    return swift_willThrow();
  }

  outlined init with copy of Any(v34[7] + 32 * v37, &v167);
  outlined destroy of AnyHashable(aBlock);
  v165[0] = 0x656D614E79656BLL;
  v165[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v39 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v40 & 1) == 0))
  {
    outlined destroy of AnyHashable(aBlock);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_220099000, v65, v66, "Receive local status FAILED. Missing keyName", v67, 2u);
      MEMORY[0x223D77FF0](v67, -1, -1);
    }

    v68 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    *v69 = 0xD000000000000010;
    v69[1] = 0x80000002201AC8B0;
    (*(*(v68 - 8) + 104))(v69, *MEMORY[0x277D24380], v68);
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(&v167);
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v39, v166);
  outlined destroy of AnyHashable(aBlock);
  v163 = 0x69616D6F4479656BLL;
  v164 = 0xE90000000000006ELL;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v42 & 1) == 0))
  {
    outlined destroy of AnyHashable(aBlock);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_220099000, v70, v71, "Receive local status FAILED. Missing keyDomain", v72, 2u);
      MEMORY[0x223D77FF0](v72, -1, -1);
    }

    v73 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    *v74 = 0xD000000000000012;
    v74[1] = 0x80000002201AC8D0;
    (*(*(v73 - 8) + 104))(v74, *MEMORY[0x277D24380], v73);
    swift_willThrow();
    goto LABEL_41;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v41, v165);
  outlined destroy of AnyHashable(aBlock);
  outlined init with copy of Any(&v167, aBlock);
  if (!swift_dynamicCast())
  {
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_220099000, v75, v76, "Receive local status FAILEd. Could not cast anyIDSIdentifier", v77, 2u);
      MEMORY[0x223D77FF0](v77, -1, -1);
    }

    v78 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    v80 = v79;
    v81 = 0x80000002201AC8F0;
    v82 = 0xD000000000000015;
    goto LABEL_34;
  }

  v43 = v164;
  v168 = v163;
  outlined init with copy of Any(v166, aBlock);
  if (!swift_dynamicCast())
  {

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_220099000, v83, v84, "Receive local status FAILED. Could not cast anyKeyName", v85, 2u);
      MEMORY[0x223D77FF0](v85, -1, -1);
    }

    v78 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    v80 = v86;
    v87 = 0x796E612074736163;
    v88 = 0xEF656D614E79654BLL;
    goto LABEL_38;
  }

  v159 = v27;
  v44 = v164;
  v141 = v163;
  outlined init with copy of Any(v165, aBlock);
  if (!swift_dynamicCast())
  {

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_220099000, v89, v90, "Receive local status FAILED. Could not cast anyKeyDomain", v91, 2u);
      MEMORY[0x223D77FF0](v91, -1, -1);
    }

    v78 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    v80 = v79;
    v81 = 0x80000002201AC910;
    v82 = 0xD000000000000011;
LABEL_34:
    *v79 = v82;
    v79[1] = v81;
LABEL_39:
    (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277D24378], v78);
    swift_willThrow();
LABEL_40:
    __swift_destroy_boxed_opaque_existential_0(v165);
LABEL_41:
    __swift_destroy_boxed_opaque_existential_0(v166);
    return __swift_destroy_boxed_opaque_existential_0(&v167);
  }

  v139 = v44;
  v45 = v163;
  v46 = v164;

  v47 = v157;
  v138 = v45;
  v140 = v46;
  LSKDomain.init(rawValue:)();
  if ((*(v20 + 48))(v47, 1, v19) == 1)
  {

    outlined destroy of UUID?(v47, &_s14LocalStatusKit9LSKDomainOSgMd, &_s14LocalStatusKit9LSKDomainOSgMR);
    v48 = v140;

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136315138;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v48, aBlock);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_220099000, v49, v50, "Receive local status FAILED. Unknown domain %s.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x223D77FF0](v52, -1, -1);
      MEMORY[0x223D77FF0](v51, -1, -1);
    }

    else
    {
    }

    v78 = type metadata accessor for LSKError();
    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
    swift_allocError();
    v80 = v86;
    v87 = 0x206E776F6E6B6E75;
    v88 = 0xEE006E69616D6F64;
LABEL_38:
    *v86 = v87;
    v86[1] = v88;
    goto LABEL_39;
  }

  v137 = v43;
  (*(v20 + 32))(v25, v47, v19);
  v161 = 0x64616F6C796170;
  v162 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v92 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v93 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v92, &v163);
    outlined destroy of AnyHashable(aBlock);
    outlined init with copy of Any(&v163, aBlock);
    if (!swift_dynamicCast())
    {

      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = v20;
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_220099000, v124, v125, "Receive local status FAILED. Could not cast anyPayload", v127, 2u);
        v128 = v127;
        v20 = v126;
        MEMORY[0x223D77FF0](v128, -1, -1);
      }

      v129 = type metadata accessor for LSKError();
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type LSKError and conformance LSKError, MEMORY[0x277D24388]);
      swift_allocError();
      *v130 = 0x796E612074736163;
      v130[1] = 0xEF64616F6C796150;
      (*(*(v129 - 8) + 104))(v130, *MEMORY[0x277D24378], v129);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0(&v163);
      (*(v20 + 8))(v25, v19);
      goto LABEL_40;
    }

    __swift_destroy_boxed_opaque_existential_0(&v163);
    v94 = v162;
    v159 = v161;
  }

  else
  {
    outlined destroy of AnyHashable(aBlock);
    v159 = 0;
    v94 = 0xF000000000000000;
  }

  v95 = *(v20 + 16);
  v135 = v25;
  v157 = v19;
  v95(v142, v25, v19);
  lazy protocol witness table accessor for type Data and conformance Data();
  lazy protocol witness table accessor for type Data and conformance Data();
  v96 = v139;

  LSKKey.init(domain:name:)();
  v97 = LSKKey.id.getter();
  v99 = v98;
  static Date.now.getter();
  static Date.now.getter();
  outlined copy of Data?(v159, v94);
  v142 = MEMORY[0x223D76B00](v97, v99);

  isa = Date._bridgeToObjectiveC()().super.isa;
  v132 = Date._bridgeToObjectiveC()().super.isa;
  v100 = MEMORY[0x223D76B00](v141, v96);

  v101 = MEMORY[0x223D76B00](v138, v140);
  v102 = v159;
  v103 = v101;

  v136 = v20;
  v134 = v94;
  if (v94 >> 60 == 15)
  {
    v104 = 0;
  }

  else
  {
    v104 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v102, v94);
  }

  v105 = objc_allocWithZone(SKADatabaseSubscribedLocalStatus);
  v106 = MEMORY[0x223D76B00](v168, v137);
  v107 = v105;
  v108 = v142;
  v109 = isa;
  v110 = v132;
  v141 = [v107 initWithIdentifier:v142 creationDate:isa modificationDate:v132 keyName:v100 keyDomain:v103 payload:v104 idsIdentifier:v106];

  v111 = *(v145 + 8);
  v112 = v146;
  v111(v156, v146);
  v111(v155, v112);
  v113 = v147;
  v156 = *(v147 + 144);
  v114 = v148;
  v115 = v144;
  (*(v148 + 16))(v144, v158, v11);
  v116 = (*(v114 + 80) + 48) & ~*(v114 + 80);
  v117 = swift_allocObject();
  v118 = v141;
  *(v117 + 2) = v141;
  *(v117 + 3) = v113;
  v119 = v137;
  *(v117 + 4) = v168;
  *(v117 + 5) = v119;
  (*(v114 + 32))(&v117[v116], v115, v11);
  aBlock[4] = partial apply for closure #1 in SKALocalStatusServer.handleIncomingLocalStatus(request:);
  aBlock[5] = v117;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_157;
  v120 = _Block_copy(aBlock);
  v168 = v118;

  v121 = v149;
  static DispatchQoS.unspecified.getter();
  v163 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  v155 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v122 = v151;
  v123 = v154;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x223D76E80](0, v121, v122, v120);
  _Block_release(v120);

  outlined consume of Data?(v159, v134);
  (*(v153 + 8))(v122, v123);
  (*(v150 + 8))(v121, v152);
  (*(v114 + 8))(v158, v155);
  (*(v136 + 8))(v135, v157);
  __swift_destroy_boxed_opaque_existential_0(v165);
  __swift_destroy_boxed_opaque_existential_0(v166);
  __swift_destroy_boxed_opaque_existential_0(&v167);
}

void specialized static SKALocalStatusServer.replyToWakeEvent(event:)(void *a1)
{
  if (xpc_dictionary_get_string(a1, *MEMORY[0x277D86430]) && xpc_dictionary_get_BOOL(a1, "replyRequired"))
  {
    if (xpc_dictionary_create_reply(a1))
    {
      xpc_dictionary_send_reply();

      swift_unknownObjectRelease();
    }

    else
    {
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, log);
      oslog = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        v5 = swift_slowAlloc();
        v10 = v5;
        *v4 = 136315138;
        v6 = String.init(cString:)();
        v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v10);

        *(v4 + 4) = v8;
        _os_log_impl(&dword_220099000, oslog, v3, "Failed to reply to Rapport wake event: %s", v4, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v5);
        MEMORY[0x223D77FF0](v5, -1, -1);
        MEMORY[0x223D77FF0](v4, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo15SKPresentDeviceC_SayAEGTt0g5Tf4g_n(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v4 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for SKPresentDevice, 0x277D68118);
    v5 = lazy protocol witness table accessor for type SKPresentDevice and conformance NSObject();
    result = MEMORY[0x223D76DF0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x223D77050](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = __CocoaSet.count.getter();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void specialized SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v4 setDispatchQueue_];
  [v4 setControlFlags_];
  if (*(v1 + OBJC_IVAR___SKALocalStatusServer_recentPendingStatus) == 1)
  {
    [v4 setControlFlags_];
  }

  [v4 setBleScreenOffScanRate_];
  [v4 setBleScreenOffRescanInterval_];
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(v5, 0);
    v7 = specialized Sequence._copySequenceContents(initializing:)(&aBlock, v6 + 4, v5, a1);

    sub_2200A4D24();
    if (v7 != v5)
    {
      __break(1u);
      return;
    }

    v2 = v1;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setDeviceFilter_];

  v32 = partial apply for closure #1 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);
  v33 = v2;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = thunk for @escaping @callee_guaranteed (@guaranteed RPCompanionLinkDevice) -> ();
  v31 = &block_descriptor_104;
  v9 = _Block_copy(&aBlock);

  [v4 setDeviceFoundHandler_];
  _Block_release(v9);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, log);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v13 = 136315138;
    v15 = Set.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &aBlock);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_220099000, v11, v12, "Deliver Statuses START {idsIdentifier: %s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x223D77FF0](v14, -1, -1);
    MEMORY[0x223D77FF0](v13, -1, -1);
  }

  v18 = (v2 + OBJC_IVAR___SKALocalStatusServer_browseTask);
  v19 = *(v2 + OBJC_IVAR___SKALocalStatusServer_browseTask);
  v20 = *(v2 + OBJC_IVAR___SKALocalStatusServer_browseTask + 8);
  v21 = *(v2 + OBJC_IVAR___SKALocalStatusServer_browseTask + 16);
  v22 = *(v2 + OBJC_IVAR___SKALocalStatusServer_browseTask + 24);
  *v18 = v4;
  v18[1] = a1;
  v18[2] = 0;
  v18[3] = 0;

  v23 = v4;
  outlined consume of SKALocalStatusServer.BrowseTask?(v19, v20, v21, v22);
  if (*(a1 + 16))
  {
    v32 = partial apply for closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:);
    v33 = v2;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
    v31 = &block_descriptor_107;
    v24 = _Block_copy(&aBlock);

    [v23 activateWithCompletion_];

    _Block_release(v24);
  }

  else
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_220099000, v25, v26, "CompanionLink activate delivery SKIP - no IDS identifiers", v27, 2u);
      MEMORY[0x223D77FF0](v27, -1, -1);
    }
  }
}

void specialized SKALocalStatusServer.service(_:devicesChanged:)(uint64_t a1)
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, log);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    if (!a1)
    {
      __break(1u);
      return;
    }

    v6 = v5;

    v7 = MEMORY[0x223D76C00](a1, MEMORY[0x277D84F70] + 8);
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_220099000, oslog, v3, "IDS devices changes: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D77FF0](v6, -1, -1);
    MEMORY[0x223D77FF0](v4, -1, -1);
  }

  else
  {
  }
}

void outlined consume of SKALocalStatusServer.BrowseTask?(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata completion function for SKALocalStatusServer()
{
  type metadata accessor for UUID?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for UUID?()
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UUID?);
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SKALocalStatusServer.BrowseTask(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for SKALocalStatusServer.BrowseTask(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for SKALocalStatusServer.FailedDelivery()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for SKALocalStatusServer.FailedDelivery.ID()
{
  type metadata accessor for LSKKey<Data>();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for LSKKey<Data>()
{
  if (!lazy cache variable for type metadata for LSKKey<Data>)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    lazy protocol witness table accessor for type Data and conformance Data();
    v0 = type metadata accessor for LSKKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LSKKey<Data>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t closure #1 in SKALocalStatusServer.objcShutdown()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait<A>(_:_:);

  return closure #1 in SKALocalStatusServer.objcShutdown()(a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type [LSKLocalStatusObservation<Data>] and conformance <A> [A](unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMd, &_sSay14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](a2, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMd, &_s14LocalStatusKit08LSKLocalB11ObservationVy10Foundation4DataVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of SKALocalStatusServer.FailedDelivery(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SKALocalStatusServer.FailedDelivery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SKALocalStatusServer.FailedDelivery.ID(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t partial apply for closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t partial apply for closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #2 in closure #3 in SKALocalStatusServer.deliverAllPendingStatuses(in:reason:)(v9, a1, v7, v8, v1 + v5, v10);
}

uint64_t outlined copy of SKALocalStatusServer.BrowseTask?(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    v4 = result;
    v5 = a4;
    v6 = v4;
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void partial apply for closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(v2, v3, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in closure #1 in SKALocalStatusServer.send(_:to:)(a1, a2, a3);
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined init with copy of SKALocalStatusServer.FailedDelivery(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = dispatch thunk of SKAAsyncQueue.enqueueAndWait(_:_:);

  return closure #1 in closure #2 in SKALocalStatusServer.startNewBrowseTask(for:includeNonIDSDevices:)(a1, v4, v5, v6);
}