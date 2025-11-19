void LocationManager.cleanupIfNecessary()()
{
  v1 = v0;
  v2 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v17 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_26:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v5, v3);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v7 = *(v3 + 8 * v5 + 32);

      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v5;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v10);
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v17;
      v5 = v8;
    }
  }

  if (v6 >> 62)
  {
    v12 = __CocoaSet.count.getter();
  }

  else
  {
    v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.location);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "[Location Manager] No remaining observers. Cleaning up...", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    LocationManager.configureLocationUpdates()();
  }
}

uint64_t LocationManager.completeLocationRequests(location:)(objc_class *a1)
{
  v15 = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR___WOCoreLocationManager_locationRequests;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_18:
    v8 = MEMORY[0x277D84F90];
LABEL_19:
    v14 = *(v1 + v3);
    *(v1 + v3) = v8;
  }

  if (v5 < 0)
  {
    v13 = *(v1 + v3);
  }

  result = __CocoaSet.count.getter();
  v6 = result;
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v6 >= 1)
  {

    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v7, v5);
      }

      else
      {
        v10 = *(v5 + 8 * v7 + 32);
      }

      v9.value.super.isa = a1;
      if (LocationRequest.received(_:)(v9))
      {
      }

      else
      {

        MEMORY[0x20F2E6F30](v11);
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v8 = v15;
      }

      ++v7;
    }

    while (v6 != v7);

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall LocationManager.locationManagerDidChangeAuthorization(_:)(CLLocationManager a1)
{
  v2 = v1;
  isa = a1.super.isa;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___WOCoreLocationManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v48 = [(objc_class *)isa authorizationStatus];
  if (one-time initialization token for location != -1)
  {
LABEL_35:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v47 = __swift_project_value_buffer(v11, static WOLog.location);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v48;
    _os_log_impl(&dword_20AEA4000, v12, v13, "[Location Manager] New authorization status: %d", v14, 8u);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  LocationManager.configureLocationUpdates()();
  v15 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v16 = *(v2 + v15);
  v51 = MEMORY[0x277D84F90];
  v44 = v2;
  if (v16 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v45 = MEMORY[0x277D84F90];
  while (v2 != v17)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v17, v16);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v18 = *(v16 + 8 * v17 + 32);

      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_31;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v17;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v21);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v45 = v51;
      v17 = v19;
    }
  }

  v24 = v44;
  v25 = v45;
  if (v45 >> 62)
  {
    v26 = __CocoaSet.count.getter();
    if (v26)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v26 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
LABEL_21:
      v2 = 0;
      v27 = v25 & 0xC000000000000001;
      v28 = v25 & 0xFFFFFFFFFFFFFF8;
      *&v23 = 136315138;
      v43 = v23;
      v29 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      do
      {
        if (v27)
        {
          v30 = MEMORY[0x20F2E7A20](v2, v25);
          v31 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v2 >= *(v28 + 16))
          {
            goto LABEL_33;
          }

          v30 = *(v25 + 8 * v2 + 32);
          swift_unknownObjectRetain();
          v31 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        v49 = v31;
        swift_unknownObjectRetain();
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v50 = v30;
          v51 = v46;
          *v34 = v43;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
          v35 = String.init<A>(describing:)();
          v37 = v28;
          v38 = v26;
          v39 = v27;
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v51);

          *(v34 + 4) = v40;
          v27 = v39;
          v26 = v38;
          v28 = v37;
          _os_log_impl(&dword_20AEA4000, v32, v33, "[Location Manager] Notifying %s about new authorization status", v34, 0xCu);
          v41 = v46;
          __swift_destroy_boxed_opaque_existential_0(v46);
          v25 = v45;
          MEMORY[0x20F2E9420](v41, -1, -1);
          v42 = v34;
          v29 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
          v24 = v44;
          MEMORY[0x20F2E9420](v42, -1, -1);
        }

        [v30 v29[299]];
        swift_unknownObjectRelease();
        ++v2;
      }

      while (v49 != v26);
    }
  }
}

uint64_t LocationManager.requestDidTimeout(request:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___WOCoreLocationManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for location == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.location);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20AEA4000, v12, v13, "[Location Manager] Location request timeout", v14, 2u);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  v15 = OBJC_IVAR___WOCoreLocationManager_locationRequests;
  swift_beginAccess();

  v16 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v2 + v15), a1);

  v18 = *(v2 + v15);
  if (v18 >> 62)
  {
    if (v18 < 0)
    {
      v20 = *(v2 + v15);
    }

    result = __CocoaSet.count.getter();
    v19 = result;
    if (result >= v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19 >= v16)
    {
LABEL_7:
      specialized Array.replaceSubrange<A>(_:with:)(v16, v19);
      return swift_endAccess();
    }
  }

  __break(1u);
  return result;
}

id LocationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized LocationManager.add(observer:)(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&a2[OBJC_IVAR___WOCoreLocationManager_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = _s11WorkoutCore15LocationManagerC3add8observeryAA0cD8Observer_p_tFyyYbcfU_TA_0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_71_1;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v15 = a2;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);
}

uint64_t specialized LocationManager.remove(observer:)(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR___WOCoreLocationManager_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = _s11WorkoutCore15LocationManagerC6remove8observeryAA0cD8Observer_p_tFyyXEfU_TA_1;
  *(v6 + 24) = v5;
  v17[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v17[5] = v6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed () -> ();
  v17[3] = &block_descriptor_65;
  v7 = _Block_copy(v17);
  swift_unknownObjectRetain();
  v8 = a2;

  v9 = v4;
  v10 = v7;
  v11 = v9;
  label = dispatch_queue_get_label(v11);
  v13 = dispatch_queue_get_label(0);

  if (label == v13)
  {
    v14 = objc_autoreleasePoolPush();
    v10[2](v10);
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    dispatch_sync(v11, v10);
  }

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == __CocoaSet.count.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x20F2E7A20](v11, v7);
    swift_unknownObjectRelease();
    if (v19 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x20F2E7A20](v10, v7);
        v16 = MEMORY[0x20F2E7A20](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return __CocoaSet.count.getter();
}

{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == __CocoaSet.count.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x20F2E7A20](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v15 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v15 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x20F2E7A20](v10, v7);
          v16 = MEMORY[0x20F2E7A20](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v17)
          {
            goto LABEL_47;
          }

          if (v11 >= v17)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v16 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v18 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v18) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v18)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_44;
      }
    }

    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_43;
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
  __break(1u);
LABEL_48:
  __break(1u);
  return __CocoaSet.count.getter();
}

unint64_t specialized LocationManager.State.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t objectdestroy_5Tm(uint64_t a1)
{
  v3 = *(v1 + 32);

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t specialized LocationManager.locationManager(_:didFailWithError:)(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = v1;
  v8 = *(v1 + OBJC_IVAR___WOCoreLocationManager_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (one-time initialization token for location != -1)
  {
LABEL_36:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static WOLog.location);
  v12 = a1;
  v61 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v65 = a1;
    v66 = v16;
    *v15 = 136315138;
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v66);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_20AEA4000, v13, v14, "[Location Manager] Failed updating location, error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  v62 = _convertErrorToNSError(_:)();
  v21 = OBJC_IVAR___WOCoreLocationManager__observers;
  v22 = v63;
  swift_beginAccess();
  v23 = *(v22 + v21);
  v65 = MEMORY[0x277D84F90];
  if (v23 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = (v23 & 0xC000000000000001);

  v25 = 0;
  v57 = MEMORY[0x277D84F90];
  while (v24 != v25)
  {
    if (a1)
    {
      MEMORY[0x20F2E7A20](v25, v23);
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v26 = *(v23 + 8 * v25 + 32);

      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_32;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v25;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v29);
      if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v57 = v65;
      v25 = v27;
    }
  }

  v32 = v57;
  if (v57 >> 62)
  {
    v33 = __CocoaSet.count.getter();
    if (v33)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v33 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
LABEL_21:
      v34 = 0;
      a1 = (v32 & 0xC000000000000001);
      v35 = v32 & 0xFFFFFFFFFFFFFF8;
      *&v31 = 136315138;
      v56 = v31;
      v36 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      do
      {
        if (a1)
        {
          v37 = MEMORY[0x20F2E7A20](v34, v32);
          v38 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v34 >= *(v35 + 16))
          {
            goto LABEL_34;
          }

          v37 = *(v32 + 8 * v34 + 32);
          swift_unknownObjectRetain();
          v38 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }
        }

        swift_unknownObjectRetain();
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v60 = v38;
          v42 = v41;
          v59 = swift_slowAlloc();
          v64 = v37;
          v65 = v59;
          *v42 = v56;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
          v43 = String.init<A>(describing:)();
          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v65);
          v58 = v39;
          v46 = v40;
          v47 = v36;
          v48 = v35;
          v49 = v33;
          v50 = a1;
          v51 = v45;
          v32 = v57;

          *(v42 + 4) = v51;
          a1 = v50;
          v33 = v49;
          v35 = v48;
          v36 = v47;
          v52 = v58;
          _os_log_impl(&dword_20AEA4000, v58, v46, "[Location Manager] Notifying %s about location error", v42, 0xCu);
          v53 = v59;
          __swift_destroy_boxed_opaque_existential_0(v59);
          MEMORY[0x20F2E9420](v53, -1, -1);
          v54 = v42;
          v38 = v60;
          MEMORY[0x20F2E9420](v54, -1, -1);
        }

        else
        {
        }

        [v37 v36[310]];
        swift_unknownObjectRelease();
        ++v34;
      }

      while (v38 != v33);
    }
  }

  return LocationManager.completeLocationRequests(location:)(0);
}

uint64_t type metadata accessor for LocationManager()
{
  result = type metadata singleton initialization cache for LocationManager;
  if (!type metadata singleton initialization cache for LocationManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationManager.State and conformance LocationManager.State()
{
  result = lazy protocol witness table cache variable for type LocationManager.State and conformance LocationManager.State;
  if (!lazy protocol witness table cache variable for type LocationManager.State and conformance LocationManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationManager.State and conformance LocationManager.State);
  }

  return result;
}

void type metadata completion function for LocationManager()
{
  type metadata accessor for Date?();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t _sSo10CLLocationCMaTm_1(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t objectdestroy_57Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id specialized static FitnessTrackingSettingsNavigator.openSettings()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v43 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v43 - v16;
  (*(v1 + 56))(v43 - v16, 1, 1, v0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v45 = static WorkoutDevicesProvider.shared;
  v18 = static WorkoutDevicesProvider.shared;
  WorkoutReadinessChecker.shouldUseWatchFitnessTracking()();
  URL.init(string:)();
  outlined destroy of URL?(v17);
  outlined init with take of URL?(v15, v17);
  outlined init with copy of URL?(v17, v12);
  if ((*(v1 + 48))(v12, 1, v0) == 1)
  {
    outlined destroy of URL?(v12);
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.activityPicker);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20AEA4000, v20, v21, "Failed to create URL for fitness tracking deeplink", v22, 2u);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    return outlined destroy of URL?(v17);
  }

  (*(v1 + 32))(v7, v12, v0);
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static WOLog.activityPicker);
  (*(v1 + 16))(v5, v7, v0);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v43[1] = v1;
  v44 = v18;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v45 = v28;
    *v27 = 136315138;
    v29 = URL.absoluteString.getter();
    v43[0] = v7;
    v31 = v30;
    v32 = *(v1 + 8);
    v32(v5, v0);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v45);
    v7 = v43[0];

    *(v27 + 4) = v33;
    _os_log_impl(&dword_20AEA4000, v24, v25, "Opening deeplink to fitness tracking. url=%s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x20F2E9420](v28, -1, -1);
    v34 = v27;
    v35 = v32;
    MEMORY[0x20F2E9420](v34, -1, -1);
  }

  else
  {

    v35 = *(v1 + 8);
    v35(v5, v0);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v38 = result;
    URL._bridgeToObjectiveC()(v37);
    v40 = v39;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v41 = v7;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v38 openSensitiveURL:v40 withOptions:isa];

    v35(v41, v0);
    return outlined destroy of URL?(v17);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TargetAlerts.defaultTargetAlerts(for:)(void *a1)
{
  v4 = 1;
  if ([a1 isIndoor])
  {
    if ([a1 effectiveTypeIdentifier] == 37)
    {
      v2 = type metadata accessor for WorkoutKitFeatures();
      v6[3] = v2;
      v6[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
      (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FC8], v2);
      LOBYTE(v2) = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v6);
      if (v2)
      {
        v4 = 0;
      }
    }
  }

  type metadata accessor for TargetAlerts();
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TargetAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TargetAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance TargetAlerts.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TargetAlerts.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TargetAlerts.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TargetAlerts.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TargetAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TargetAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TargetAlerts.intervalTargetAlertsEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t TargetAlerts.__allocating_init(intervalTargetAlertsEnabled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TargetAlerts.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  TargetAlerts.init(from:)(a1);
  return v2;
}

uint64_t TargetAlerts.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12TargetAlertsC10CodingKeys33_C2F5E9A35A1EAA6CE48B8FAF02929C8ALLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12TargetAlertsC10CodingKeys33_C2F5E9A35A1EAA6CE48B8FAF02929C8ALLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for TargetAlerts();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t TargetAlerts.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12TargetAlertsC10CodingKeys33_C2F5E9A35A1EAA6CE48B8FAF02929C8ALLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12TargetAlertsC10CodingKeys33_C2F5E9A35A1EAA6CE48B8FAF02929C8ALLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v10 = *(v2 + 16);
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TargetAlerts@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TargetAlerts();
  v5 = swift_allocObject();
  result = TargetAlerts.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t TargetAlerts.description.getter()
{
  _StringGuts.grow(_:)(47);

  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v1, v2);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD00000000000002CLL;
}

unint64_t lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures()
{
  result = lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures)
  {
    type metadata accessor for WorkoutKitFeatures();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetAlerts.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TargetAlerts.CodingKeys(_WORD *result, int a2, int a3)
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

double EnergyMetricsPublisher.activeEnergy.getter()
{
  return EnergyMetricsPublisher.activeEnergy.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t (*EnergyMetricsPublisher.activeEnergy.modify(uint64_t *a1))()
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
  return EnergyMetricsPublisher.activeEnergy.modify;
}

uint64_t (*EnergyMetricsPublisher.totalEnergy.modify(uint64_t *a1))()
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
  return EnergyMetricsPublisher.totalEnergy.modify;
}

void EnergyMetricsPublisher.activeEnergy.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t EnergyMetricsPublisher.activeEnergy.setter()
{
  return EnergyMetricsPublisher.activeEnergy.setter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double key path getter for EnergyMetricsPublisher.activeEnergy : EnergyMetricsPublisher@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  return key path getter for EnergyMetricsPublisher.activeEnergy : EnergyMetricsPublisher(a1, a2);
}

{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t key path setter for EnergyMetricsPublisher.activeEnergy : EnergyMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  return key path setter for EnergyMetricsPublisher.activeEnergy : EnergyMetricsPublisher(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*EnergyMetricsPublisher.$activeEnergy.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EnergyMetricsPublisher.$activeEnergy.modify;
}

uint64_t EnergyMetricsPublisher.$activeEnergy.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for EnergyMetricsPublisher.$activeEnergy : EnergyMetricsPublisher(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a4;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for EnergyMetricsPublisher.$activeEnergy : EnergyMetricsPublisher(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t EnergyMetricsPublisher.$activeEnergy.setter(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v10 - v7, a1, v4);
  v8 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*EnergyMetricsPublisher.$totalEnergy.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EnergyMetricsPublisher.$totalEnergy.modify;
}

void EnergyMetricsPublisher.$activeEnergy.modify(uint64_t a1, char a2)
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

uint64_t EnergyMetricsPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  return v3;
}

uint64_t EnergyMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  v11 = 0;
  Published.init(initialValue:)();
  v7 = *(v2 + 32);
  v7(v0 + v6, v5, v1);
  v8 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy;
  v11 = 0;
  Published.init(initialValue:)();
  v7(v0 + v8, v5, v1);
  return v0;
}

uint64_t EnergyMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy, v2);
  return v0;
}

uint64_t EnergyMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance EnergyMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double EnergyMetricsPublisher.protobuf.getter@<D0>(double *a1@<X8>)
{
  v2 = a1 + *(type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher() + 24);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v4;
  a1[1] = v4;
  return result;
}

uint64_t EnergyMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v4 + *(v2 + 24);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *v4 = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4[1] = v9;
  lazy protocol witness table accessor for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher();
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_EnergyMetricsPublisher(v4);
  return v6;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnergyMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized EnergyMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance EnergyMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static EnergyMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance EnergyMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized EnergyMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static EnergyMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v27 = a2;
  v26 = a1;
  v2 = type metadata accessor for BinaryDecodingOptions();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for EnergyMetricsPublisher();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  *&v29 = 0;
  Published.init(initialValue:)();
  v19 = *(v10 + 32);
  v19(v17 + v18, v13, v9);
  v20 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy;
  *&v29 = 0;
  Published.init(initialValue:)();
  v19(v17 + v20, v13, v9);
  v32 = v26;
  v33 = v27;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  outlined copy of Data._Representation(v26, v27);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher();
  v21 = v28;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v21)
  {
  }

  else
  {
    v22 = *v8;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v29 = v22;

    static Published.subscript.setter();
    v23 = v8[1];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v29 = v23;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_EnergyMetricsPublisher(v8);
  }

  return v17;
}

uint64_t specialized EnergyMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = type metadata accessor for BinaryDecodingOptions();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a1;
  v29 = a2;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher();
  v16 = v12;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    v17 = type metadata accessor for EnergyMetricsPublisher();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v16 = swift_allocObject();
    v20 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
    *&v26[0] = 0;
    Published.init(initialValue:)();
    v21 = *(v6 + 32);
    v21(v16 + v20, v9, v5);
    v22 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy;
    *&v26[0] = 0;
    Published.init(initialValue:)();
    v21(v16 + v22, v9, v5);
    v23 = *v15;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v26[0] = v23;
    swift_retain_n();
    static Published.subscript.setter();
    v24 = v15[1];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v26[0] = v24;
    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_EnergyMetricsPublisher(v15);
  }

  return v16;
}

uint64_t type metadata accessor for EnergyMetricsPublisher()
{
  result = type metadata singleton initialization cache for EnergyMetricsPublisher;
  if (!type metadata singleton initialization cache for EnergyMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for EnergyMetricsPublisher()
{
  type metadata accessor for Published<Double>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Double>()
{
  if (!lazy cache variable for type metadata for Published<Double>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Double>);
    }
  }
}

uint64_t PlatterPublisher.metricPlatters.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t PlatterPublisher.metricPlatters.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void (*PlatterPublisher.metricPlatters.modify(uint64_t *a1))(void *a1)
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
  return PlatterPublisher.metricPlatters.modify;
}

void PlatterPublisher.metricPlatters.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t PlatterPublisher.$metricPlatters.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for PlatterPublisher.$metricPlatters : PlatterPublisher(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for PlatterPublisher.$metricPlatters : PlatterPublisher(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t PlatterPublisher.$metricPlatters.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PlatterPublisher.$metricPlatters.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PlatterPublisher.$metricPlatters.modify;
}

void PlatterPublisher.$metricPlatters.modify(uint64_t a1, char a2)
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

uint64_t PlatterPublisher.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  Published.init(initialValue:)();
  return v3;
}

uint64_t PlatterPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  v8[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t PlatterPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PlatterPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance PlatterPublisher@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t PlatterPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  PlatterPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_PlatterPublisher(v3, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  return v4;
}

uint64_t PlatterPublisher.protobuf.getter@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  v10 = a1 + *(type metadata accessor for Apple_Workout_Core_PlatterPublisher(0) + 20);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v38;
  v37 = *(v38 + 16);
  if (!v37)
  {
  }

  v31 = a1;
  v32 = v2;
  v13 = v9;
  v14 = 0;
  v35 = v8;
  v36 = v38 + 32;
  v15 = v33;
  v34 = v38;
  while (v14 < *(v12 + 16))
  {
    v16 = (v36 + 16 * v14);
    v17 = v16[1];
    v18 = *(v16 + 1);
    v19 = *v16;
    *v6 = 0;
    v6[8] = 1;
    *(v6 + 2) = MEMORY[0x277D84F90];
    v20 = *(v2 + 28);

    result = UnknownStorage.init()();
    *v6 = qword_20B43A460[v19];
    v6[8] = 1;
    v6[9] = v17;
    if (v18)
    {
      v21 = *(v18 + 16);
      if (v21)
      {
        v22 = (v18 + 32);
        v23 = MEMORY[0x277D84F90];
        while (1)
        {
          v25 = *v22++;
          v24 = v25;
          if (HIDWORD(v25))
          {
            break;
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1, v23);
            v23 = result;
          }

          v27 = *(v23 + 16);
          v26 = *(v23 + 24);
          if (v27 >= v26 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v23);
            v23 = result;
          }

          *(v23 + 16) = v27 + 1;
          *(v23 + 4 * v27 + 32) = v24;
          if (!--v21)
          {
            *(v6 + 2) = v23;
            v2 = v32;
            v15 = v33;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_14:
    v28 = v35;
    outlined init with take of Apple_Workout_Core_MetricPlatter(v6, v35);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
    }

    v12 = v34;
    v30 = v13[2];
    v29 = v13[3];
    if (v30 >= v29 >> 1)
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1, v13);
    }

    ++v14;
    v13[2] = v30 + 1;
    result = outlined init with take of Apple_Workout_Core_MetricPlatter(v28, v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v30);
    if (v14 == v37)
    {

      *v31 = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher)
  {
    type metadata accessor for Apple_Workout_Core_PlatterPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher);
  }

  return result;
}

uint64_t outlined init with take of Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Workout_Core_PlatterPublisher.decodeInto(publisher:)(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v41[0] = MEMORY[0x277D84F90];

  v39 = a1;
  result = static Published.subscript.setter();
  v10 = *v1;
  v38 = *(*v1 + 16);
  if (v38)
  {
    v11 = 0;
    v36 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v35 = *(v4 + 72);
    *&v9 = 134217984;
    v34 = v9;
    v37 = v7;
    do
    {
      outlined init with copy of Apple_Workout_Core_MetricPlatter(v36 + v35 * v11, v7);
      v12 = *(v7 + 2);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = (v12 + 32);
        v15 = MEMORY[0x277D84F90];
        do
        {
          v17 = *v14++;
          v16 = v17;
          if (v15)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
            }

            v19 = *(v15 + 2);
            v18 = *(v15 + 3);
            if (v19 >= v18 >> 1)
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v15);
            }

            *(v15 + 2) = v19 + 1;
            *&v15[8 * v19 + 32] = v16;
          }

          --v13;
        }

        while (v13);
      }

      else
      {
        v15 = 0;
      }

      v20 = *v7;
      if (v7[8])
      {
        v40 = byte_20B43A4E0[v20];
      }

      else
      {
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static WOLog.core);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = v34;
          *(v24 + 4) = v20;
          MEMORY[0x20F2E9420](v24, -1, -1);
        }

        v40 = 0;
      }

      v25 = v7[9];
      outlined destroy of Apple_Workout_Core_PlatterPublisher(v7, type metadata accessor for Apple_Workout_Core_MetricPlatter);
      swift_getKeyPath();
      swift_getKeyPath();
      v26 = static Published.subscript.modify();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v28 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        *v28 = v29;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
        *v28 = v29;
      }

      *(v29 + 2) = v32 + 1;
      v33 = &v29[16 * v32];
      v33[32] = v40;
      ++v11;
      v33[33] = v25;
      *(v33 + 5) = v15;
      v26(v41, 0);

      v7 = v37;
    }

    while (v11 != v38);
  }

  return result;
}

uint64_t PlatterPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static PlatterPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance PlatterPublisher()
{
  v1 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v0;
  PlatterPublisher.protobuf.getter(v4);
  lazy protocol witness table accessor for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher();
  v6 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_PlatterPublisher(v4, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  return v6;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance PlatterPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = specialized static PlatterPublisher.decodeProto(serializedData:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance PlatterPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static PlatterPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static PlatterPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for BinaryDecodingOptions();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = type metadata accessor for PlatterPublisher();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  *&v23 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  Published.init(initialValue:)();
  (*(v10 + 32))(v17 + v18, v13, v9);
  v26 = a1;
  v27 = v22;
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  outlined copy of Data._Representation(a1, v22);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher();
  v19 = v28;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v19)
  {
  }

  else
  {
    Apple_Workout_Core_PlatterPublisher.decodeInto(publisher:)(v17);
    outlined destroy of Apple_Workout_Core_PlatterPublisher(v8, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  }

  return v17;
}

uint64_t type metadata accessor for PlatterPublisher()
{
  result = type metadata singleton initialization cache for PlatterPublisher;
  if (!type metadata singleton initialization cache for PlatterPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PlatterPublisher()
{
  type metadata accessor for Published<[MetricPlatter]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[MetricPlatter]>()
{
  if (!lazy cache variable for type metadata for Published<[MetricPlatter]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[MetricPlatter]>);
    }
  }
}

uint64_t outlined init with copy of Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_PlatterPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static WorkoutDemoSession.load(from:)()
{
  result = Data.init(contentsOf:options:)();
  if (!v0)
  {
    v3 = result;
    v4 = v2;
    v5 = type metadata accessor for JSONDecoder();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type WorkoutDemoSession and conformance WorkoutDemoSession();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data._Representation(v3, v4);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutDemoSession.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutDemoSession.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutDemoSession.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x800000020B45F370 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutDemoSession.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutDemoSession.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDemoSession.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D11DemoSessionV10CodingKeys33_822FB1DBE0CE31476EE8DEE74B19A2CELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D11DemoSessionV10CodingKeys33_822FB1DBE0CE31476EE8DEE74B19A2CELLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  _sSaySdGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys);
  }

  return result;
}

uint64_t WorkoutDemoSession.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D11DemoSessionV10CodingKeys33_822FB1DBE0CE31476EE8DEE74B19A2CELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D11DemoSessionV10CodingKeys33_822FB1DBE0CE31476EE8DEE74B19A2CELLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    _sSaySdGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _sSaySdGSayxGSEsSERzlWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id WorkoutDemoSessionBridge.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR___NLWorkoutDemoSession_bridgedValue] = *a1;
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v9 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = *(v9 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 8;
      --v3;
    }

    while (v3);

    v4 = v9;
  }

  *&v1[OBJC_IVAR___NLWorkoutDemoSession_mileDistanceAdvanceSteps] = v4;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for WorkoutDemoSessionBridge();
  return objc_msgSendSuper2(&v8, sel_init);
}

id WorkoutDemoSessionBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutDemoSessionBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDemoSessionBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for WorkoutDemoSession(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for WorkoutDemoSession(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutDemoSession.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WorkoutDemoSession.CodingKeys(_WORD *result, int a2, int a3)
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

void Apple_Workout_Core_ZoneType.decoded.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.core);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 7;
  }

  *a1 = v3;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo9HRCDeviceCG_11WorkoutCore0E6DeviceVs5NeverOTg504_s11e108Core0A15DevicesProviderC35setupBluetoothLEDevicesSubscription33_258C3F5670C29358A8CFAE69F4D622CBLLyyFyShySo9d11CGcfU_AA0A6G8VAGXEfU_Tf1cn_n(uint64_t a1)
{
  v5 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    v47 = MEMORY[0x277D84F90];
    v7 = &v47;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
    v35 = v47;
    if (v34)
    {
      v8 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v10 = -1 << *(v5 + 32);
      v8 = _HashTable.startBucket.getter();
      v9 = *(v5 + 36);
    }

    v44 = v8;
    v45 = v9;
    v46 = v34 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v33 = v5 + 56;
      v32 = v5 + 64;
      while (!__OFADD__(v11++, 1))
      {
        v4 = v44;
        isUniquelyReferenced_nonNull_native = v45;
        v3 = v46;
        v13 = v5;
        specialized Set.subscript.getter(v44, v45, v46, v5);
        v7 = v14;
        v42 = v14;
        closure #1 in closure #1 in WorkoutDevicesProvider.setupBluetoothLEDevicesSubscription()(&v42, v43);
        if (v1)
        {
          goto LABEL_46;
        }

        v40 = v43[3];
        v41 = v43[4];
        v38 = v43[1];
        v39 = v43[2];
        v37 = v43[0];
        v15 = v35;
        v47 = v35;
        v17 = *(v35 + 16);
        v16 = *(v35 + 24);
        if (v17 >= v16 >> 1)
        {
          v7 = &v47;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
          v15 = v47;
        }

        *(v15 + 16) = v17 + 1;
        v18 = (v15 + 80 * v17);
        v18[2] = v37;
        v19 = v38;
        v20 = v39;
        v21 = v41;
        v18[5] = v40;
        v18[6] = v21;
        v18[3] = v19;
        v18[4] = v20;
        v35 = v15;
        if (v34)
        {
          if (!v3)
          {
            goto LABEL_47;
          }

          v5 = v13;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            isUniquelyReferenced_nonNull_native = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo9HRCDeviceC_GMd, &_sSh5IndexVySo9HRCDeviceC_GMR);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          (v7)(v36, 0);
          v25 = v11 >= v6;
          if (v11 == v6)
          {
LABEL_38:
            outlined consume of Set<HRCDevice>.Index._Variant(v44, v45, v46);
            return;
          }
        }

        else
        {
          if (v3)
          {
            goto LABEL_48;
          }

          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_42;
          }

          v5 = v13;
          v7 = (1 << *(v13 + 32));
          if (v4 >= v7)
          {
            goto LABEL_42;
          }

          v22 = v4 >> 6;
          v23 = *(v33 + 8 * (v4 >> 6));
          if (((v23 >> v4) & 1) == 0)
          {
            goto LABEL_43;
          }

          if (*(v13 + 36) != isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_44;
          }

          v24 = v23 & (-2 << (v4 & 0x3F));
          if (v24)
          {
            v7 = (__clz(__rbit64(v24)) | v4 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v26 = v22 << 6;
            v27 = v22 + 1;
            v28 = (v32 + 8 * v22);
            while (v27 < (v7 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                outlined consume of Set<HRCDevice>.Index._Variant(v4, isUniquelyReferenced_nonNull_native, 0);
                v7 = (__clz(__rbit64(v29)) + v26);
                goto LABEL_33;
              }
            }

            outlined consume of Set<HRCDevice>.Index._Variant(v4, isUniquelyReferenced_nonNull_native, 0);
LABEL_33:
            v5 = v13;
          }

          v31 = *(v5 + 36);
          v44 = v7;
          v45 = v31;
          v46 = 0;
          v25 = v11 >= v6;
          if (v11 == v6)
          {
            goto LABEL_38;
          }
        }

        if (v25)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
LABEL_46:

    outlined consume of Set<HRCDevice>.Index._Variant(v4, isUniquelyReferenced_nonNull_native, v3);

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

id static WorkoutDevicesProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkoutDevicesProvider.shared;

  return v1;
}

void WorkoutDevicesProvider.devices.didset()
{
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.devices);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = v22;
    v7 = *(v22 + 16);
    if (v7)
    {
      v19 = v5;
      v20 = v3;
      v23 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      v8 = v23;
      v9 = (v6 + 56);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v13 = *(v23 + 16);
        v12 = *(v23 + 24);

        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v23 + 16) = v13 + 1;
        v14 = v23 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v10;
        v9 += 10;
        --v7;
      }

      while (v7);

      v3 = v20;
      v5 = v19;
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
    }

    v15 = MEMORY[0x20F2E6F70](v8, MEMORY[0x277D837D0]);
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v24);

    *(v4 + 4) = v18;
    _os_log_impl(&dword_20AEA4000, oslog, v3, "WorkoutDevicesProvider: devices changed to %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v5);
    MEMORY[0x20F2E9420](v5, -1, -1);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t WorkoutDevicesProvider.devices.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void WorkoutDevicesProvider.devices.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  static Published.subscript.setter();
  WorkoutDevicesProvider.devices.didset();
}

void (*WorkoutDevicesProvider.devices.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = a1[1];
  return WorkoutDevicesProvider.devices.modify;
}

void WorkoutDevicesProvider.devices.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  a1[2];
  if (a2)
  {

    static Published.subscript.setter();
    WorkoutDevicesProvider.devices.didset();
    v5 = *a1;
  }

  else
  {
    static Published.subscript.setter();
    WorkoutDevicesProvider.devices.didset();
  }
}

uint64_t key path getter for WorkoutDevicesProvider.$devices : WorkoutDevicesProvider(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutDevicesProvider.$devices : WorkoutDevicesProvider(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t WorkoutDevicesProvider.$devices.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WorkoutDevicesProvider.$devices.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WorkoutDevicesProvider.$devices.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider__devices;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutDevicesProvider.$devices.modify;
}

void WorkoutDevicesProvider.$devices.modify(uint64_t a1, char a2)
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

uint64_t key path setter for WorkoutDevicesProvider.tester : WorkoutDevicesProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_tester;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t WorkoutDevicesProvider.tester.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_tester;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

BOOL WorkoutDevicesProvider.pairedWatchNearby.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = WorkoutDeviceWatchScanner.pairedWatchNearby.getter();

  return v3;
}

id WorkoutDevicesProvider.pairedWatchUnlockedAndOnWrist.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController);
  if (result)
  {
    return [result isUnlockedAndOnWrist];
  }

  return result;
}

BOOL WorkoutDevicesProvider.isWorkoutAppInstalled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner);
  if (!v1)
  {
    return 0;
  }

  v2 = *&v1[OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_workoutAppInstallationUtility];
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;
  static Published.subscript.getter();

  return v5 != 2;
}

id WorkoutDevicesProvider.().init()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = &v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_state];
  v11[2] = 0;
  *v11 = 2;
  v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isAppInForeground] = 0;
  v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isStandaloneWorkoutRunning] = 0;
  v12 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider__devices;
  v13 = MEMORY[0x277D84F90];
  v38._countAndFlagsBits = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A6DeviceVGMd, &_sSay11WorkoutCore0A6DeviceVGMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v0[v12], v10, v6);
  v14 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesLifecycleCancellables] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesScanningCancellables] = v14;
  v15 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchCancellables;
  if (v13 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v34 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v34 = MEMORY[0x277D84FA0];
    }

    *&v0[v15] = v34;
    if (__CocoaSet.count.getter())
    {
      v35 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v35 = MEMORY[0x277D84FA0];
    }

    *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsCancellables] = v35;
    if (__CocoaSet.count.getter())
    {
      v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v14 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchCancellables] = v14;
    *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsCancellables] = v14;
  }

  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_bluetoothLEDevicesCancellables] = v14;
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsScanner] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_bluetoothLEDevicesScanner] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_tester] = 0;
  v16 = type metadata accessor for WorkoutDevicesProvider();
  v43.receiver = v0;
  v43.super_class = v16;
  v17 = objc_msgSendSuper2(&v43, sel_init);
  WorkoutDevicesProvider.observeDevicesSubscribers()();
  if ([objc_opt_self() isAppleInternalInstall])
  {
    type metadata accessor for WorkoutDevicesProviderTester();
    swift_allocObject();
    v18 = v17;
    v19 = specialized WorkoutDevicesProviderTester.init(devicesProvider:)(v18);

    v20 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_tester;
    swift_beginAccess();
    v21 = *&v18[v20];
    *&v18[v20] = v19;
  }

  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v24 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B45F5B0);
    v25 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
    v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    UUID.init()();
    v30 = UUID.uuidString.getter();
    v32 = v31;
    (*(v2 + 8))(v5, v1);
    v38._countAndFlagsBits = v30;
    v38._object = v32;
    v39._countAndFlagsBits = v27;
    v39._object = v29;
    LOBYTE(v40) = 0;
    *(&v40 + 1) = 0xD000000000000015;
    *&v41 = 0x800000020B45C750;
    BYTE8(v41) = 1;
    v42 = xmmword_20B43A700;
    *&v37.type = v40;
    *&v37.systemImage._object = v41;
    v37.productModel = xmmword_20B43A700;
    v37.name = v39;
    v37.id = v38;
    WorkoutDevicesProvider.addDevice(_:)(&v37);
    outlined destroy of WorkoutDevice(&v38);
  }

  return v17;
}

id WorkoutDevicesProvider.__allocating_init(forTesting:)()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t WorkoutDevicesProvider.observeDevicesSubscribers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GAM8previous_AM7currenttGMd, &_s7Combine10PublishersO4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GAM8previous_AM7currenttGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GAO8previous_AO7currenttGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GAO8previous_AO7currenttGSo17OS_dispatch_queueCGMR);
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GAQ8previous_AQ7currenttGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GAQ8previous_AQ7currenttGSo17OS_dispatch_queueCGGMR);
  v20 = *(v19 - 8);
  v34 = v19;
  v35 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v31 = &v31 - v22;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v36 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A6DeviceVG8previous_AD7currenttMd, &_sSay11WorkoutCore0A6DeviceVG8previous_AD7currenttMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  Publisher.scan<A>(_:_:)();
  (*(v5 + 8))(v8, v4);
  _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v23 = static OS_dispatch_queue.main.getter();
  v36 = v23;
  v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.Scan<Published<[WorkoutDevice]>.Publisher, (previous: [WorkoutDevice], current: [WorkoutDevice])> and conformance Publishers.Scan<A, B>, &_s7Combine10PublishersO4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GAM8previous_AM7currenttGMd, &_s7Combine10PublishersO4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GAM8previous_AM7currenttGMR);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v3);

  (*(v10 + 8))(v13, v9);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Scan<Published<[WorkoutDevice]>.Publisher, (previous: [WorkoutDevice], current: [WorkoutDevice])>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GAO8previous_AO7currenttGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GAO8previous_AO7currenttGSo17OS_dispatch_queueCGMR);

  v25 = v32;
  v26 = v31;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v33 + 8))(v18, v25);

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #5 in WorkoutDevicesProvider.observeDevicesSubscribers();
  *(v28 + 24) = v27;
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.ReceiveOn<Publishers.Scan<Published<[WorkoutDevice]>.Publisher, (previous: [WorkoutDevice], current: [WorkoutDevice])>, OS_dispatch_queue>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GAQ8previous_AQ7currenttGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GAQ8previous_AQ7currenttGSo17OS_dispatch_queueCGGMR);
  v29 = v34;
  Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v26, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #1 in WorkoutDevicesProvider.observeDevicesSubscribers()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *(a1 + 8);
  a3[1] = v3;
}

void closure #2 in WorkoutDevicesProvider.observeDevicesSubscribers()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions;
  v5 = *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions) = v7;
  if (one-time initialization token for devices != -1)
  {
LABEL_10:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.devices);
  outlined init with copy of Subscription(a1, v21);
  v9 = v3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    outlined init with copy of Subscription(v21, &v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pMd, &_s7Combine12Subscription_pMR);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0Tm_4(v21);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v20);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    v18 = *&v3[v4];

    *(v12 + 14) = v18;
    _os_log_impl(&dword_20AEA4000, v10, v11, "Received new devices subscription=%s. devicesSubscriptions=%ld", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm_4(v21);
  }

  WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:devicesSubscriptions:)(v9[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isAppInForeground], v9[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isStandaloneWorkoutRunning], *&v3[v4]);
}

void closure #3 in WorkoutDevicesProvider.observeDevicesSubscribers()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions;
  v3 = *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions) = v5;
  if (one-time initialization token for devices != -1)
  {
LABEL_10:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.devices);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *&v1[v2];

    _os_log_impl(&dword_20AEA4000, v8, v9, "Devices subscription completed. devicesSubscriptions=%ld", v10, 0xCu);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:devicesSubscriptions:)(*(&v7->isa + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isAppInForeground), *(&v7->isa + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isStandaloneWorkoutRunning), *&v1[v2]);
}

void closure #4 in WorkoutDevicesProvider.observeDevicesSubscribers()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions;
  v3 = *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions) = v5;
  if (one-time initialization token for devices != -1)
  {
LABEL_10:
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.devices);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = *&v1[v2];

    _os_log_impl(&dword_20AEA4000, v8, v9, "Devices subscription cancelled. devicesSubscriptions=%ld", v10, 0xCu);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:devicesSubscriptions:)(*(&v7->isa + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isAppInForeground), *(&v7->isa + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isStandaloneWorkoutRunning), *&v1[v2]);
}

void closure #5 in WorkoutDevicesProvider.observeDevicesSubscribers()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    specialized WorkoutDevicesProvider.handleDeviceListChange(previousDevices:updatedDevices:)(a1, a2);
  }
}

Swift::Void __swiftcall WorkoutDevicesProvider.configureScanningFor(watch:smartRoutingHeadphones:heartRateMonitor:)(Swift::Bool watch, Swift::Bool smartRoutingHeadphones, Swift::Bool heartRateMonitor)
{
  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.devices);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Running in store demo mode, not configuring device scanning";
      v11 = v8;
      v12 = oslog;
      v13 = v9;
      v14 = 2;
LABEL_20:
      _os_log_impl(&dword_20AEA4000, v12, v11, v10, v13, v14);
      MEMORY[0x20F2E9420](v9, -1, -1);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (watch)
  {
    WorkoutDevicesProvider.setupWatchSubscription()();
    if (!smartRoutingHeadphones)
    {
      goto LABEL_8;
    }

LABEL_11:
    WorkoutDevicesProvider.setupAirPodsSubscription()();
    if (!heartRateMonitor)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  WorkoutDevicesProvider.cancelWatchSubscription()();
  if (smartRoutingHeadphones)
  {
    goto LABEL_11;
  }

LABEL_8:
  WorkoutDevicesProvider.cancelAirPodsSubscription()();
  if (!heartRateMonitor)
  {
LABEL_9:
    WorkoutDevicesProvider.cancelBluetoothLEDevicesSubscription()();
    v15 = 0;
    goto LABEL_13;
  }

LABEL_12:
  WorkoutDevicesProvider.setupBluetoothLEDevicesSubscription()();
  v15 = 0x10000;
LABEL_13:
  if (smartRoutingHeadphones)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = v3 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_state;
  *(v17 + 2) = BYTE2(v15);
  *v17 = v16 & 0xFFFE | watch | v15;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.devices);
  oslog = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v19))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109632;
    *(v9 + 4) = watch;
    *(v9 + 8) = 1024;
    *(v9 + 10) = smartRoutingHeadphones;
    *(v9 + 14) = 1024;
    *(v9 + 16) = heartRateMonitor;
    v10 = "Configured scanning for workout devices. watch=%{BOOL}d smartRoutingHeadphones=%{BOOL}d heartRateMonitor=%{BOOL}d";
    v11 = v19;
    v12 = oslog;
    v13 = v9;
    v14 = 20;
    goto LABEL_20;
  }

LABEL_21:
}

Swift::Void __swiftcall WorkoutDevicesProvider.stopScanning()()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_state;
  if (*(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_state) == 2)
  {
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.devices);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "stopScanning called while already stopped.";
LABEL_10:
      _os_log_impl(&dword_20AEA4000, oslog, v3, v5, v4, 2u);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }
  }

  else
  {
    WorkoutDevicesProvider.cancelWatchSubscription()();
    WorkoutDevicesProvider.cancelAirPodsSubscription()();
    WorkoutDevicesProvider.cancelBluetoothLEDevicesSubscription()();
    v6 = v0 + v1;
    *(v6 + 2) = 0;
    *v6 = 2;
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.devices);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Stopped scanning for workout devices";
      goto LABEL_10;
    }
  }
}

uint64_t WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t a1, double a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:), 0, 0);
}

uint64_t WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A6DeviceVGMd, &_sSay11WorkoutCore0A6DeviceVGMR);
  *v6 = v0;
  v6[1] = WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:);

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000002FLL, 0x800000020B45F390, partial apply for closure #1 in WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:), v4, v7);
}

{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return MEMORY[0x2822009F8](WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

uint64_t closure #1 in WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v57 = a3;
  v72 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMd, &_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMR);
  v69 = *(v71 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v68 = &v53 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v53 - v9;
  v61 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v10 = *(v61 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v61);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GGMd, &_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GGMR);
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v53 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GGSo17OS_dispatch_queueCGMR);
  v24 = *(v23 - 8);
  v59 = v23;
  v60 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v54 = &v53 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GGSo17OS_dispatch_queueCGAUGMd, &_s7Combine10PublishersO7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GGSo17OS_dispatch_queueCGAUGMR);
  v28 = *(v27 - 8);
  v62 = v27;
  v63 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v55 = &v53 - v30;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10FirstWhereVy_AC7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GGSo17OS_dispatch_queueCGAWGGMd, &_s7Combine10PublishersO10FirstWhereVy_AC7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GGSo17OS_dispatch_queueCGAWGGMR);
  v67 = *(v65 - 8);
  v31 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v58 = &v53 - v32;
  v64 = a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  Publisher.dropFirst(_:)();
  (*(v15 + 8))(v18, v14);
  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v33 = static OS_dispatch_queue.main.getter();
  v73 = v33;
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.Drop<Published<[WorkoutDevice]>.Publisher> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GGMd, &_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GGMR);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.throttle<A>(for:scheduler:latest:)();

  v34 = *(v10 + 8);
  v35 = v61;
  v34(v13, v61);
  v36 = (*(v56 + 8))(v22, v19);
  MEMORY[0x20F2E7530](v36, a4);
  v37 = static OS_dispatch_queue.main.getter();
  v73 = v37;
  v38 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v39 = v66;
  (*(*(v38 - 8) + 56))(v66, 1, 1, v38);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.Throttle<Publishers.Drop<Published<[WorkoutDevice]>.Publisher>, OS_dispatch_queue> and conformance Publishers.Throttle<A, B>, &_s7Combine10PublishersO8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GGSo17OS_dispatch_queueCGMR);
  v40 = v55;
  v41 = v39;
  v42 = v59;
  v43 = v54;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v41);

  v34(v13, v35);
  (*(v60 + 8))(v43, v42);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.Timeout<Publishers.Throttle<Publishers.Drop<Published<[WorkoutDevice]>.Publisher>, OS_dispatch_queue>, OS_dispatch_queue> and conformance Publishers.Timeout<A, B>, &_s7Combine10PublishersO7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GGSo17OS_dispatch_queueCGAUGMd, &_s7Combine10PublishersO7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GGSo17OS_dispatch_queueCGAUGMR);
  v44 = v58;
  v45 = v62;
  Publisher.first(where:)();
  (*(v63 + 8))(v40, v45);
  v47 = v68;
  v46 = v69;
  v48 = v71;
  (*(v69 + 16))(v68, v72, v71);
  v49 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v50 = swift_allocObject();
  (*(v46 + 32))(v50 + v49, v47, v48);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.FirstWhere<Publishers.Timeout<Publishers.Throttle<Publishers.Drop<Published<[WorkoutDevice]>.Publisher>, OS_dispatch_queue>, OS_dispatch_queue>> and conformance Publishers.FirstWhere<A>, &_s7Combine10PublishersO10FirstWhereVy_AC7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GGSo17OS_dispatch_queueCGAWGGMd, &_s7Combine10PublishersO10FirstWhereVy_AC7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GGSo17OS_dispatch_queueCGAWGGMR);
  v51 = v65;
  Publisher<>.sink(receiveValue:)();

  (*(v67 + 8))(v44, v51);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #2 in closure #1 in WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t *a1)
{
  v2 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMd, &_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

void WorkoutDevicesProvider.setupWatchSubscription()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21RPCompanionLinkDeviceCSg_GMd, &_s7Combine9PublishedV9PublisherVySo21RPCompanionLinkDeviceCSg_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - v4;
  if (specialized static DataLinkBackwardCompatibilityUtility.activePairedWatch(supports:)())
  {
    v6 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner;
    if (*(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner))
    {
      return;
    }

    v7 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchCancellables;
    swift_beginAccess();
    v8 = *(v0 + v7);
    if ((v8 & 0xC000000000000001) == 0)
    {
      if (*(v8 + 16))
      {
        return;
      }

      goto LABEL_16;
    }

    if (v8 < 0)
    {
      v9 = *(v0 + v7);
    }

    v10 = *(v0 + v7);

    v11 = __CocoaSet.count.getter();

    if (!v11)
    {
LABEL_16:
      v16 = [objc_allocWithZone(type metadata accessor for WorkoutDeviceWatchScanner()) init];
      v17 = *(v0 + v6);
      *(v0 + v6) = v16;
      v18 = v16;

      if (v18)
      {
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21RPCompanionLinkDeviceCSgGMd, &_s7Combine9PublishedVySo21RPCompanionLinkDeviceCSgGMR);
        Published.projectedValue.getter();
        swift_endAccess();

        swift_allocObject();
        swift_unknownObjectWeakInit();
        _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Published<RPCompanionLinkDevice?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo21RPCompanionLinkDeviceCSg_GMd, &_s7Combine9PublishedV9PublisherVySo21RPCompanionLinkDeviceCSg_GMR);
        Publisher<>.sink(receiveValue:)();

        (*(v2 + 8))(v5, v1);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();
      }
    }
  }

  else
  {
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.devices);
    v20 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v20, v13, "Not scanning for watch because the current paired watch does not support NapiliAligned build.", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    v15 = v20;
  }
}

void closure #1 in WorkoutDevicesProvider.setupWatchSubscription()(void **a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v46.name._object = &type metadata for WorkoutFeatures;
    *&v46.type = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v46.id._countAndFlagsBits) = 13;
    v10 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm_4(&v46.id._countAndFlagsBits);
    if ((v10 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
    {
      if (v7)
      {
        v19 = v7;
        v20 = [v19 identifier];
        if (v20)
        {
          v21 = v20;
          v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
        }

        else
        {
          UUID.init()();
          v44 = UUID.uuidString.getter();
          v23 = v28;
          (*(v3 + 8))(v6, v2);
        }

        v29 = [v19 name];
        if (v29)
        {
          v30 = v29;
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;
        }

        else
        {
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v35 = [objc_opt_self() bundleForClass_];
          v36 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B45F5B0);
          v37 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
          v30 = [v35 localizedStringForKey:v36 value:0 table:v37];

          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v38;
        }

        v39 = [v19 model];
        if (v39)
        {
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;
        }

        else
        {
          v40 = 0;
          v42 = 0;
        }

        v46.id._countAndFlagsBits = v44;
        v46.id._object = v23;
        v46.name._countAndFlagsBits = v31;
        v46.name._object = v33;
        v46.type = WorkoutCore_WorkoutDeviceType_watch;
        v46.systemImage._countAndFlagsBits = 0xD000000000000015;
        v46.systemImage._object = 0x800000020B45C750;
        v46.isTestDevice = 0;
        v46.productModel.value._countAndFlagsBits = v40;
        v46.productModel.value._object = v42;
        v45 = v46;
        WorkoutDevicesProvider.addDevice(_:)(&v45);

        outlined destroy of WorkoutDevice(&v46);
      }

      else
      {
        if (one-time initialization token for devices != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        __swift_project_value_buffer(v24, static WOLog.devices);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_20AEA4000, v25, v26, "Watch device not available, the watch device scanner shows no available devices.", v27, 2u);
          MEMORY[0x20F2E9420](v27, -1, -1);
        }

        LOBYTE(v46.id._countAndFlagsBits) = 0;
        WorkoutDevicesProvider.removeDevices(deviceType:shouldRemoveTestDevices:)(&v46, 0);
      }
    }

    else
    {
      if (one-time initialization token for devices != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static WOLog.devices);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v46.id._countAndFlagsBits = v15;
        *v14 = 136315138;
        v16 = StaticString.description.getter();
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v46.id._countAndFlagsBits);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_20AEA4000, v12, v13, "Watch device found but not added, %s feature is not enabled.", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm_4(v15);
        MEMORY[0x20F2E9420](v15, -1, -1);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }
    }
  }
}

uint64_t WorkoutDevicesProvider.setupAirPodsSubscription()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo20AudioAccessoryDeviceCSg_GMd, &_s7Combine9PublishedV9PublisherVySo20AudioAccessoryDeviceCSg_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo20AudioAccessoryDeviceCSgGMd, &_s7Combine9PublishedVySo20AudioAccessoryDeviceCSgGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v11 = v23 - v10;
  v12 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsScanner;
  if (!*(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsScanner))
  {
    v13 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsCancellables;
    result = swift_beginAccess();
    v23[1] = v13;
    v14 = *(v0 + v13);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = __CocoaSet.count.getter();

      if (v15)
      {
        return result;
      }

      goto LABEL_4;
    }

    if (!*(v14 + 16))
    {
LABEL_4:
      v16 = type metadata accessor for WorkoutDeviceAirPodsScanner();
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      v19 = swift_allocObject();
      v20 = OBJC_IVAR____TtC11WorkoutCore27WorkoutDeviceAirPodsScanner__activeHRMDevice;
      v23[2] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20AudioAccessoryDeviceCSgMd, &_sSo20AudioAccessoryDeviceCSgMR);
      Published.init(initialValue:)();
      (*(v7 + 32))(v19 + v20, v11, v6);
      *(v19 + OBJC_IVAR____TtC11WorkoutCore27WorkoutDeviceAirPodsScanner_audioAccessoryToken) = -1;
      *(v19 + 16) = [objc_allocWithZone(MEMORY[0x277CEF820]) init];
      v21 = v0;
      WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()();
      WorkoutDeviceAirPodsScanner.registerForDaemonRestartNotification()();
      v22 = *(v0 + v12);
      *(v21 + v12) = v19;

      swift_beginAccess();
      Published.projectedValue.getter();
      swift_endAccess();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Published<AudioAccessoryDevice?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo20AudioAccessoryDeviceCSg_GMd, &_s7Combine9PublishedV9PublisherVySo20AudioAccessoryDeviceCSg_GMR);
      Publisher<>.sink(receiveValue:)();

      (*(v2 + 8))(v5, v1);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  return result;
}

uint64_t WorkoutDevicesProvider.cancelAirPodsSubscription()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsCancellables;
  swift_beginAccess();
  v22 = v2;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *(v1 + v2);
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
    result = Set.Iterator.init(_cocoa:)();
    v7 = v24;
    v6 = v25;
    v8 = v26;
    v9 = v27;
    v10 = v28;
  }

  else
  {
    v11 = -1 << *(v3 + 32);
    v6 = v3 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v3 + 56);
    result = swift_bridgeObjectRetain_n();
    v9 = 0;
    v7 = v3;
  }

  v14 = (v8 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_20:
      outlined consume of Set<String>.Iterator._Variant();

      v20 = *(v1 + v22);
      *(v1 + v22) = MEMORY[0x277D84FA0];

      v21 = *(v1 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsScanner);
      *(v1 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsScanner) = 0;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v9 = v17;
      v10 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v17 = v9;
        v18 = v10;
        if (v23)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_20;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void WorkoutDevicesProvider.setupBluetoothLEDevicesSubscription()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo9HRCDeviceCG_GMd, &_s7Combine9PublishedV9PublisherVyShySo9HRCDeviceCG_GMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15[-v4];
  v6 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_bluetoothLEDevicesScanner;
  if (!*(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_bluetoothLEDevicesScanner))
  {
    v7 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_bluetoothLEDevicesCancellables;
    swift_beginAccess();
    v8 = *(v0 + v7);
    if ((v8 & 0xC000000000000001) == 0)
    {
      if (*(v8 + 16))
      {
        return;
      }

      goto LABEL_8;
    }

    if (v8 < 0)
    {
      v9 = *(v0 + v7);
    }

    v10 = *(v0 + v7);

    v11 = __CocoaSet.count.getter();

    if (!v11)
    {
LABEL_8:
      v12 = [objc_allocWithZone(type metadata accessor for WorkoutDeviceBluetoothLEDeviceScanner()) init];
      v13 = *(v0 + v6);
      *(v0 + v6) = v12;
      v14 = v12;

      if (v14)
      {
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo9HRCDeviceCGGMd, &_s7Combine9PublishedVyShySo9HRCDeviceCGGMR);
        Published.projectedValue.getter();
        swift_endAccess();

        swift_allocObject();
        swift_unknownObjectWeakInit();
        _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Published<Set<HRCDevice>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShySo9HRCDeviceCG_GMd, &_s7Combine9PublishedV9PublisherVyShySo9HRCDeviceCG_GMR);
        Publisher<>.sink(receiveValue:)();

        (*(v2 + 8))(v5, v1);
        swift_beginAccess();
        AnyCancellable.store(in:)();
        swift_endAccess();
      }
    }
  }
}

uint64_t closure #1 in WorkoutDevicesProvider.setupBluetoothLEDevicesSubscription()(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo9HRCDeviceCG_11WorkoutCore0E6DeviceVs5NeverOTg504_s11e108Core0A15DevicesProviderC35setupBluetoothLEDevicesSubscription33_258C3F5670C29358A8CFAE69F4D622CBLLyyFyShySo9d11CGcfU_AA0A6G8VAGXEfU_Tf1cn_n(v1);
    v5 = v4;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v6 = 0;
    v7 = *&v52[0];
    v8 = *(*&v52[0] + 16);
    v9 = MEMORY[0x277D84F90];
LABEL_3:
    v10 = 80 * v6;
    while (v8 != v6)
    {
      if (v6 >= *(v7 + 16))
      {
LABEL_39:
        __break(1u);
        return result;
      }

      ++v6;
      v11 = v10 + 80;
      v12 = v7 + v10;
      v13 = *(v7 + v10 + 64);
      v10 += 80;
      if (v13 == 2)
      {
        v10 = v11;
        if ((*(v12 + 88) & 1) == 0)
        {
          v15 = *(v7 + v11 - 48);
          v14 = *(v7 + v11 - 40);

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
            v9 = result;
          }

          v17 = *(v9 + 16);
          v16 = *(v9 + 24);
          if (v17 >= v16 >> 1)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
            v9 = result;
          }

          *(v9 + 16) = v17 + 1;
          v18 = v9 + 16 * v17;
          *(v18 + 32) = v15;
          *(v18 + 40) = v14;
          goto LABEL_3;
        }
      }
    }

    v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v9);

    v20 = *(v5 + 16);
    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v49 = v19;
      *&v52[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v21 = *&v52[0];
      v22 = (v5 + 40);
      do
      {
        v24 = *(v22 - 1);
        v23 = *v22;
        *&v52[0] = v21;
        v26 = *(v21 + 16);
        v25 = *(v21 + 24);

        if (v26 >= v25 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          v21 = *&v52[0];
        }

        *(v21 + 16) = v26 + 1;
        v27 = v21 + 16 * v26;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        v22 += 10;
        --v20;
      }

      while (v20);
      v19 = v49;
    }

    v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v21);

    if (*(v28 + 16) <= *(v19 + 16) >> 3)
    {
      *&v52[0] = v19;
      specialized Set._subtract<A>(_:)(v28);

      v29 = v19;
    }

    else
    {
      v29 = specialized _NativeSet.subtracting<A>(_:)(v28, v19);
    }

    v30 = 0;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 56);
    v34 = (v31 + 63) >> 6;
    if (v33)
    {
      while (1)
      {
        v35 = v30;
LABEL_30:
        v36 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
        v37 = (*(v29 + 48) + ((v35 << 10) | (16 * v36)));
        v38 = *v37;
        v39 = v37[1];

        v40._countAndFlagsBits = v38;
        v40._object = v39;
        WorkoutDevicesProvider.removeDevice(_:)(v40);

        if (!v33)
        {
          goto LABEL_26;
        }
      }
    }

    while (1)
    {
LABEL_26:
      v35 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v35 >= v34)
      {
        break;
      }

      v33 = *(v29 + 56 + 8 * v35);
      ++v30;
      if (v33)
      {
        v30 = v35;
        goto LABEL_30;
      }
    }

    v41 = *(v5 + 16);
    if (v41)
    {
      v42 = v41 - 1;
      for (i = 32; ; i += 80)
      {
        v52[0] = *(v5 + i);
        v44 = *(v5 + i + 16);
        v45 = *(v5 + i + 32);
        v46 = *(v5 + i + 64);
        v52[3] = *(v5 + i + 48);
        v52[4] = v46;
        v52[1] = v44;
        v52[2] = v45;
        v47 = *(v5 + i + 48);
        *&v51.type = *(v5 + i + 32);
        *&v51.systemImage._object = v47;
        v51.productModel = *(v5 + i + 64);
        v48 = *(v5 + i + 16);
        v51.id = *(v5 + i);
        v51.name = v48;
        outlined init with copy of WorkoutDevice(v52, v50);
        WorkoutDevicesProvider.addDevice(_:)(&v51);
        outlined destroy of WorkoutDevice(v52);
        if (!v42)
        {
          break;
        }

        --v42;
      }
    }
  }

  return result;
}

void closure #1 in closure #1 in WorkoutDevicesProvider.setupBluetoothLEDevicesSubscription()(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [*a1 localIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    UUID.init()();
    v12 = UUID.uuidString.getter();
    v14 = v15;
    (*(v5 + 8))(v8, v4);
  }

  v16 = [v9 name];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v23 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B45F6A0);
    v24 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
    v17 = [v22 localizedStringForKey:v23 value:0 table:v24];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v25;
  }

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = 2;
  *(a2 + 40) = 0x69662E7472616568;
  *(a2 + 48) = 0xEA00000000006C6CLL;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xD000000000000010;
  *(a2 + 72) = 0x800000020B45A560;
}

void WorkoutDevicesProvider.cancelWatchSubscription()(uint64_t *a1, void *a2)
{
  v3 = v2;
  v4 = *a1;
  swift_beginAccess();
  v23 = v4;
  v5 = *(v3 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(v3 + v4);
    }

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8]);
    Set.Iterator.init(_cocoa:)();
    v8 = v26;
    v7 = v27;
    v9 = v28;
    v10 = v29;
    v11 = v30;
  }

  else
  {
    v12 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v5 + 56);
    swift_bridgeObjectRetain_n();
    v10 = 0;
    v8 = v5;
  }

  v15 = (v9 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_14:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

    if (!v20)
    {
LABEL_20:
      outlined consume of Set<String>.Iterator._Variant();

      v21 = *(v3 + v23);
      *(v3 + v23) = MEMORY[0x277D84FA0];

      v22 = *(v3 + *a2);
      *(v3 + *a2) = 0;

      return;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v10 = v18;
      v11 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v18 = v10;
        v19 = v11;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_20;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall WorkoutDevicesProvider.addDevice(_:)(WorkoutCore::WorkoutDevice *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1->systemImage._object;
  v40 = *&a1->type;
  v41 = v10;
  productModel = a1->productModel;
  name = a1->name;
  id = a1->id;
  v39 = name;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.devices);
  outlined init with copy of WorkoutDevice(&id, v37);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  outlined destroy of WorkoutDevice(&id);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136315138;
    v33 = v40;
    v34 = v41;
    v35 = productModel;
    v31 = id;
    v32 = v39;
    outlined init with copy of WorkoutDevice(&id, v37);
    v17 = WorkoutDevice.description.getter();
    v27 = v9;
    v19 = v18;
    v37[2] = v33;
    v37[3] = v34;
    v37[4] = v35;
    v37[0] = v31;
    v37[1] = v32;
    outlined destroy of WorkoutDevice(v37);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v36);
    v9 = v27;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_20AEA4000, v13, v14, "Adding connected device: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v24 = id;
  *(v23 + 40) = v39;
  v25 = v41;
  *(v23 + 56) = v40;
  *(v23 + 72) = v25;
  *(v23 + 88) = productModel;
  *(v23 + 16) = v22;
  *(v23 + 24) = v24;
  *&v33 = partial apply for closure #1 in WorkoutDevicesProvider.addDevice(_:);
  *(&v33 + 1) = v23;
  v31._countAndFlagsBits = MEMORY[0x277D85DD0];
  v31._object = 1107296256;
  v32._countAndFlagsBits = thunk for @escaping @callee_guaranteed () -> ();
  v32._object = &block_descriptor_35;
  v26 = _Block_copy(&v31);
  outlined init with copy of WorkoutDevice(&id, v37);

  static DispatchQoS.unspecified.getter();
  *&v37[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v26);
  _Block_release(v26);

  (*(v30 + 8))(v5, v2);
  (*(v28 + 8))(v9, v29);
}

void closure #1 in WorkoutDevicesProvider.addDevice(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  LODWORD(v5) = *(a2 + 32);
  if (v5 > 1)
  {
    goto LABEL_12;
  }

  if (*(a2 + 32))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v18 = *(v26[0] + 16);
    if (v18)
    {
      v7 = 0;
      for (i = 0; i != v18; ++i)
      {
        if (*(v26[0] + v7 + 64) == 1 && *(v26[0] + v7 + 88) == (*(a2 + 56) & 1))
        {

          swift_getKeyPath();
          swift_getKeyPath();
          outlined init with copy of WorkoutDevice(a2, v26);
          static Published.subscript.getter();

          v9 = v26[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_33;
        }

        v7 += 80;
      }
    }

LABEL_36:

    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutDevice(a2, v26);
    static Published.subscript.getter();

    v9 = v26[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v20 = *(v9 + 2);
    v19 = *(v9 + 3);
    if (v20 >= v19 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v9);
    }

    *(v9 + 2) = v20 + 1;
    v21 = &v9[80 * v20];
    *(v21 + 2) = *a2;
    v22 = *(a2 + 16);
    v23 = *(a2 + 32);
    v24 = *(a2 + 64);
    *(v21 + 5) = *(a2 + 48);
    *(v21 + 6) = v24;
    *(v21 + 3) = v22;
    *(v21 + 4) = v23;
LABEL_41:
    swift_getKeyPath();
    swift_getKeyPath();
    v26[0] = v9;
    v25 = v4;
    static Published.subscript.setter();
    WorkoutDevicesProvider.devices.didset();

    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = *(v26[0] + 16);
  if (!v6)
  {
    goto LABEL_36;
  }

  v7 = 0;
  i = 0;
  while (*(v26[0] + v7 + 64) || *(v26[0] + v7 + 88) != (*(a2 + 56) & 1))
  {
    ++i;
    v7 += 80;
    if (v6 == i)
    {
      goto LABEL_36;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutDevice(a2, v26);
  static Published.subscript.getter();

  v9 = v26[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v5 = *(v9 + 2);
    if (i < v5)
    {
LABEL_34:
      v17 = &v9[v7];
      goto LABEL_35;
    }

    __break(1u);
LABEL_12:
    if (v5 != 2)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v10 = v26[0];
    v11 = *(v26[0] + 16);
    if (!v11)
    {
      goto LABEL_36;
    }

    i = 0;
    v12 = 0;
    v13 = *a2;
    v7 = *(a2 + 8);
    while (1)
    {
      v14 = *(v10 + i + 64);
      v15 = *(v10 + i + 88);
      v16 = *(v10 + i + 32) == v13 && *(v10 + i + 40) == v7;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v14 == 2 && v15 == (*(a2 + 56) & 1))
      {
        break;
      }

      ++v12;
      i += 80;
      if (v11 == v12)
      {
        goto LABEL_36;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutDevice(a2, v26);
    static Published.subscript.getter();

    v9 = v26[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    if (v12 < *(v9 + 2))
    {
      v17 = &v9[i];
LABEL_35:
      outlined assign with take of WorkoutDevice(a2, (v17 + 32));
      goto LABEL_41;
    }

    __break(1u);
LABEL_44:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
LABEL_33:
    if (i < *(v9 + 2))
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_46:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(60);
  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45F620);
  MEMORY[0x20F2E6D80](0x6369766544646461, 0xED0000293A5F2865);
  MEMORY[0x20F2E6D80](0xD000000000000023, 0x800000020B45F640);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void closure #1 in WorkoutDevicesProvider.removeDevices(deviceType:shouldRemoveTestDevices:)(void *a1, unsigned __int8 a2, int a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v43;
  v7 = *(v43 + 16);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = 0;
  v9 = 0;
  v10 = a2;
  while (*(v43 + v8 + 64) != a2 || ((*(v43 + v8 + 88) ^ a3) & 1) != 0)
  {
    ++v9;
    v8 += 80;
    if (v7 == v9)
    {
      goto LABEL_12;
    }
  }

  v11 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    goto LABEL_41;
  }

  if (v11 != v7)
  {
    while (v11 < v7)
    {
      v21 = &v6[v8];
      if (v6[v8 + 144] != v10 || ((v21[168] ^ a3) & 1) != 0)
      {
        if (v11 != v9)
        {
          if (v9 >= v7)
          {
            goto LABEL_36;
          }

          v22 = &v6[80 * v9 + 32];
          v38 = *v22;
          v23 = *(v22 + 1);
          v24 = *(v22 + 2);
          v25 = *(v22 + 4);
          v41 = *(v22 + 3);
          v42 = v25;
          v39 = v23;
          v40 = v24;
          v26 = *(v21 + 11);
          v28 = *(v21 + 8);
          v27 = *(v21 + 9);
          v46 = *(v21 + 10);
          v47 = v26;
          v44 = v28;
          v45 = v27;
          v43 = *(v21 + 7);
          outlined init with copy of WorkoutDevice(&v38, v37);
          outlined init with copy of WorkoutDevice(&v43, v37);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
          }

          if (v9 >= *(v6 + 2))
          {
            goto LABEL_37;
          }

          v29 = &v6[80 * v9];
          v36[0] = *(v29 + 2);
          v30 = *(v29 + 3);
          v31 = *(v29 + 4);
          v32 = *(v29 + 6);
          v36[3] = *(v29 + 5);
          v36[4] = v32;
          v36[1] = v30;
          v36[2] = v31;
          v33 = v47;
          v35 = v44;
          v34 = v45;
          *(v29 + 5) = v46;
          *(v29 + 6) = v33;
          *(v29 + 3) = v35;
          *(v29 + 4) = v34;
          *(v29 + 2) = v43;
          outlined destroy of WorkoutDevice(v36);
          if (v11 >= *(v6 + 2))
          {
            goto LABEL_38;
          }

          v14 = &v6[v8];
          v37[0] = *&v6[v8 + 112];
          v15 = *&v6[v8 + 128];
          v16 = *&v6[v8 + 144];
          v17 = *&v6[v8 + 176];
          v37[3] = *&v6[v8 + 160];
          v37[4] = v17;
          v37[1] = v15;
          v37[2] = v16;
          v18 = v42;
          v20 = v39;
          v19 = v40;
          *(v14 + 10) = v41;
          *(v14 + 11) = v18;
          *(v14 + 8) = v20;
          *(v14 + 9) = v19;
          *(v14 + 7) = v38;
          outlined destroy of WorkoutDevice(v37);
        }

        ++v9;
      }

      ++v11;
      v7 = *(v6 + 2);
      v8 += 80;
      if (v11 == v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v11 = *(v43 + 16);
LABEL_9:
  if (v11 < v9)
  {
    goto LABEL_40;
  }

  if (v9 < 0)
  {
    __break(1u);
LABEL_12:
    v11 = v7;
    v9 = v7;
  }

  if (__OFADD__(v11, v9 - v11))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v43 = v6;
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v6 + 3) >> 1)
  {
    if (v11 <= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v11;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v13, 1, v6);
    *&v43 = v6;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, v11, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v38 = v6;
  a1;
  static Published.subscript.setter();
  WorkoutDevicesProvider.devices.didset();
}

Swift::Void __swiftcall WorkoutDevicesProvider.removeDevice(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.devices);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v6;
    v18 = v17;
    v19 = v2;
    v20 = countAndFlagsBits;
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, object, aBlock);
    _os_log_impl(&dword_20AEA4000, v15, v16, "Remove connected device=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v21);
    v22 = v21;
    countAndFlagsBits = v20;
    v2 = v19;
    MEMORY[0x20F2E9420](v22, -1, -1);
    v23 = v18;
    v6 = v29;
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  v25[2] = v2;
  v25[3] = countAndFlagsBits;
  v25[4] = object;
  aBlock[4] = partial apply for closure #1 in WorkoutDevicesProvider.removeDevice(_:);
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_72;
  v26 = _Block_copy(aBlock);

  v27 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v26);
  _Block_release(v26);

  (*(v6 + 8))(v9, v5);
  (*(v30 + 8))(v13, v31);
}

void closure #1 in WorkoutDevicesProvider.removeDevice(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v6 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v11, a2, a3);

  v7 = v11;
  v8 = *(v11 + 2);
  if (v6 > v8)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v6 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v8, v6 - v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v6 > *(v7 + 24) >> 1)
  {
    if (v8 <= v6)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v10, 1, v7);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v6, v8, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  a1;
  static Published.subscript.setter();
  WorkoutDevicesProvider.devices.didset();
}

Swift::Void __swiftcall WorkoutDevicesProvider.removeDevice(_:)(WorkoutCore::WorkoutDevice *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&a1->systemImage._object;
  v45 = *&a1->type;
  v46 = v12;
  productModel = a1->productModel;
  name = a1->name;
  id = a1->id;
  v44 = name;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.devices);
  outlined init with copy of WorkoutDevice(&id, v42);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  outlined destroy of WorkoutDevice(&id);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41 = v18;
    *v17 = 136315138;
    v38 = v45;
    v39 = v46;
    v40 = productModel;
    v36 = id;
    v37 = v44;
    outlined init with copy of WorkoutDevice(&id, v42);
    v19 = WorkoutDevice.description.getter();
    v32 = v11;
    v20 = v7;
    v21 = v4;
    v22 = v2;
    v24 = v23;
    v42[2] = v38;
    v42[3] = v39;
    v42[4] = v40;
    v42[0] = v36;
    v42[1] = v37;
    outlined destroy of WorkoutDevice(v42);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v24, &v41);
    v2 = v22;
    v4 = v21;
    v7 = v20;
    v11 = v32;

    *(v17 + 4) = v25;
    _os_log_impl(&dword_20AEA4000, v15, v16, "Remove connected device=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v18);
    MEMORY[0x20F2E9420](v18, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v26 = static OS_dispatch_queue.main.getter();
  v27 = swift_allocObject();
  v28 = id;
  *(v27 + 40) = v44;
  v29 = v46;
  *(v27 + 56) = v45;
  *(v27 + 72) = v29;
  *(v27 + 88) = productModel;
  *(v27 + 16) = v2;
  *(v27 + 24) = v28;
  *&v38 = partial apply for closure #1 in WorkoutDevicesProvider.removeDevice(_:);
  *(&v38 + 1) = v27;
  v36._countAndFlagsBits = MEMORY[0x277D85DD0];
  v36._object = 1107296256;
  v37._countAndFlagsBits = thunk for @escaping @callee_guaranteed () -> ();
  v37._object = &block_descriptor_91;
  v30 = _Block_copy(&v36);
  outlined init with copy of WorkoutDevice(&id, v42);
  v31 = v2;

  static DispatchQoS.unspecified.getter();
  *&v42[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v30);
  _Block_release(v30);

  (*(v35 + 8))(v7, v4);
  (*(v33 + 8))(v11, v34);
}

void closure #1 in WorkoutDevicesProvider.removeDevice(_:)(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutDevice(a2, v9);
  static Published.subscript.getter();

  v4 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v9, a2);
  outlined destroy of WorkoutDevice(a2);
  v5 = v9[0];
  v6 = *(v9[0] + 16);
  if (v4 > v6)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v6, v4 - v6))
  {
LABEL_13:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v4 > *(v5 + 24) >> 1)
  {
    if (v6 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    v9[0] = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v8, 1, v5);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v4, v6, 0);
  swift_getKeyPath();
  swift_getKeyPath();
  a1;
  static Published.subscript.setter();
  WorkoutDevicesProvider.devices.didset();
}

void WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:)(Swift::Bool a1, Swift::Bool a2)
{
  *(v2 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isAppInForeground) = a1;
  *(v2 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isStandaloneWorkoutRunning) = a2;
  WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:devicesSubscriptions:)(a1, a2, *(v2 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions));
}

Swift::Void __swiftcall WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:devicesSubscriptions:)(Swift::Bool isAppInForeground, Swift::Bool isStandaloneWorkoutRunning, Swift::Int devicesSubscriptions)
{
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.devices);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109632;
    *(v9 + 4) = isAppInForeground;
    *(v9 + 8) = 1024;
    *(v9 + 10) = isStandaloneWorkoutRunning;
    *(v9 + 14) = 2048;
    *(v9 + 16) = devicesSubscriptions;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[WorkoutDevicesProvider] evaluateScanningBasedOn(isAppInForeground:%{BOOL}d isStandaloneWorkoutRunning:%{BOOL}d devicesSubscriptions:%ld)", v9, 0x18u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  if (devicesSubscriptions >= 1 && (isStandaloneWorkoutRunning || isAppInForeground))
  {

    WorkoutDevicesProvider.configureScanningFor(watch:smartRoutingHeadphones:heartRateMonitor:)(!isStandaloneWorkoutRunning, 1, 1);
  }

  else
  {

    WorkoutDevicesProvider.stopScanning()();
  }
}

id WorkoutDevicesProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDevicesProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutDevicesProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutDevicesProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for WorkoutDevicesProviding.devices.getter in conformance WorkoutDevicesProvider()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for WorkoutAppInstallationUtility.installationState : WorkoutAppInstallationUtility@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for WorkoutAppInstallationUtility.installationState : WorkoutAppInstallationUtility(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t type metadata accessor for WorkoutDevicesProvider()
{
  result = type metadata singleton initialization cache for WorkoutDevicesProvider;
  if (!type metadata singleton initialization cache for WorkoutDevicesProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for WorkoutDevicesProvider(uint64_t a1)
{
  result = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type WorkoutDevicesProvider and conformance WorkoutDevicesProvider, type metadata accessor for WorkoutDevicesProvider);
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for WorkoutDevicesProvider()
{
  type metadata accessor for Published<[WorkoutDevice]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t a1, double a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x278);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:);
  v9.n128_f64[0] = a2;

  return v11(a1, v9);
}

uint64_t dispatch thunk of WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void type metadata accessor for Published<[WorkoutDevice]>()
{
  if (!lazy cache variable for type metadata for Published<[WorkoutDevice]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A6DeviceVGMd, &_sSay11WorkoutCore0A6DeviceVGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[WorkoutDevice]>);
    }
  }
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutDevicesProvider.State(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE)
  {
    v2 = (a2 + 16776962) >> 24 == 255 ? 2 : 1;
    v3 = (a2 + 16776962) >> 24 ? v2 : 0;
    if (v3)
    {
      if (v3 == 2)
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776962;
        }
      }

      else
      {
        v4 = *(a1 + 3);
        if (*(a1 + 3))
        {
          return (*a1 | (*(a1 + 2) << 16) | (v4 << 24)) - 16776962;
        }
      }
    }
  }

  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  if (v8 + 1 >= 2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutDevicesProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 16776962) >> 24 == 255)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if ((a3 + 16776962) >> 24)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 2) = (a2 - 254) >> 16;
    if (v4)
    {
      v5 = ((a2 - 254) >> 24) + 1;
      if (v4 == 2)
      {
        *(result + 3) = v5;
      }

      else
      {
        *(result + 3) = v5;
      }
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    if (v4 == 2)
    {
      *(result + 3) = 0;
LABEL_13:
      if (!a2)
      {
        return result;
      }

LABEL_19:
      *result = a2 + 2;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t getEnumTag for WorkoutDevicesProvider.State(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for WorkoutDevicesProvider.State(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void partial apply for closure #1 in WorkoutDevicesProvider.removeDevice(_:)()
{
  closure #1 in WorkoutDevicesProvider.removeDevice(_:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  closure #1 in WorkoutDevicesProvider.removeDevice(_:)(*(v0 + 16), v0 + 24);
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = specialized _NativeSet.extractSubset(using:count:)(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x20F2E9420](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    outlined consume of Set<String>.Iterator._Variant();
    goto LABEL_53;
  }

  result = MEMORY[0x20F2E9420](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return specialized _NativeSet.extractSubset(using:count:)(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t specialized Set.subscript.getter(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = __CocoaSet.Index.age.getter();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      __CocoaSet.Index.element.getter();
      type metadata accessor for WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder();
      swift_dynamicCast();
      v7 = *(a4 + 40);
      Hasher.init(_seed:)();
      v21 = v22[0];
      v8 = *(v22[0] + 16);
      v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      MEMORY[0x20F2E7FF0](*(v8 + v9) + 1);
      v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v11 = *(v8 + v10);
      NSObject.hash(into:)();

      v12 = Hasher._finalize()();
      v13 = -1 << *(a4 + 32);
      v5 = v12 & ~v13;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v14 = ~v13;
        v15 = type metadata accessor for WorkoutConfiguration();
        do
        {
          v16 = *(*(*(a4 + 48) + 8 * v5) + 16);
          v17 = *(v21 + 16);
          v22[3] = v15;
          v22[4] = &protocol witness table for WorkoutConfiguration;
          v22[0] = v17;
          v18 = *((*MEMORY[0x277D85000] & *v16) + 0x1D0);

          v19 = v17;
          LOBYTE(v16) = v18(v22);

          __swift_destroy_boxed_opaque_existential_0Tm_4(v22);
          if (v16)
          {
            goto LABEL_19;
          }

          v5 = (v5 + 1) & v14;
        }

        while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
      }

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:
          v20 = *(*(a4 + 48) + 8 * v5);
        }

        __break(1u);
LABEL_19:

        goto LABEL_20;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x20F2E78F0](result, a2, v6);
  type metadata accessor for WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder();
  swift_dynamicCast();
  return v22[0];
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x20F2E78F0](a1, a2, v7);
      _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for HRCDevice, 0x277D13068);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for HRCDevice, 0x277D13068);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 10)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t *a2)
{
  v14 = *(a1 + 16);
  if (!v14)
  {
    return 0;
  }

  v3 = 0;
  v18 = *a2;
  v17 = a2[1];
  v4 = (a1 + 56);
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v7 = *(v4 + 8);
    v8 = v4[2];
    v9 = v4[3];
    v16 = *(v4 + 32);
    v13 = v4[5];
    v15 = v4[6];
    v10 = *(v4 - 3) == v18 && *(v4 - 2) == v17;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (v5 == a2[2] && v6 == a2[3] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v7 == *(a2 + 32) && (v8 == a2[5] && v9 == a2[6] || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v16 == (a2[7] & 1))
    {
      v11 = a2[9];
      if (v15)
      {
        if (v11 && (v13 == a2[8] && v15 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          return v3;
        }
      }

      else if (!v11)
      {
        return v3;
      }
    }

    v4 += 10;
    ++v3;
  }

  while (v14 != v3);
  return 0;
}

id specialized WorkoutDevicesProvider.heartRateDeviceWasPreviouslyConnected.getter()
{
  v0 = *MEMORY[0x277D09540];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x20F2E6C00](v1, v3);

  v6 = [v4 initWithSuiteName_];

  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x20F2E6C00](0xD000000000000025, 0x800000020B45F580);
    v6 = [v7 BOOLForKey_];
  }

  return v6;
}

void specialized WorkoutDevicesProvider.heartRateDeviceWasPreviouslyConnected.setter(char a1)
{
  v2 = *MEMORY[0x277D09540];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = MEMORY[0x20F2E6C00](v3, v5);

  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    v10 = v8;
    v9 = MEMORY[0x20F2E6C00](0xD000000000000025, 0x800000020B45F580);
    [v10 setBool:a1 & 1 forKey:v9];
  }
}

void specialized WorkoutDevicesProvider.handleDeviceListChange(previousDevices:updatedDevices:)(uint64_t a1, uint64_t a2)
{
  if ((specialized WorkoutDevicesProvider.heartRateDeviceWasPreviouslyConnected.getter() & 1) == 0)
  {
    v4 = (a2 + 64);
    v5 = *(a2 + 16) + 1;
    while (--v5)
    {
      v6 = *v4;
      v4 += 80;
      if ((v6 - 1) <= 1)
      {
        specialized WorkoutDevicesProvider.heartRateDeviceWasPreviouslyConnected.setter(1);
        break;
      }
    }
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B6DeviceV_Tt1g5(a2, a1) & 1) == 0)
  {
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    v8 = *MEMORY[0x277CBECE8];
    v9 = kCFStringEncodingASCII.getter();
    v10 = String.utf8CString.getter();
    name = CFStringCreateWithCString(v8, (v10 + 32), v9);

    if (name)
    {
      CFNotificationCenterPostNotification(v7, name, 0, 0, 1u);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v6 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 80 * result;
    while (v10 < v11)
    {
      result = *(v6 + v12 + 112);
      if (result != a2 || *(v6 + v12 + 120) != a3)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v14 = (v6 + 32 + 80 * v9);
            v37 = *v14;
            v15 = v14[1];
            v16 = v14[2];
            v17 = v14[4];
            v40 = v14[3];
            v41 = v17;
            v38 = v15;
            v39 = v16;
            v18 = *(v6 + v12 + 176);
            v20 = *(v6 + v12 + 128);
            v19 = *(v6 + v12 + 144);
            v45 = *(v6 + v12 + 160);
            v46 = v18;
            v43 = v20;
            v44 = v19;
            v42 = *(v6 + v12 + 112);
            outlined init with copy of WorkoutDevice(&v37, v36);
            outlined init with copy of WorkoutDevice(&v42, v36);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
              v6 = result;
            }

            if (v9 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v21 = (v6 + 80 * v9);
            v35[0] = v21[2];
            v22 = v21[3];
            v23 = v21[4];
            v24 = v21[6];
            v35[3] = v21[5];
            v35[4] = v24;
            v35[1] = v22;
            v35[2] = v23;
            v25 = v46;
            v27 = v43;
            v26 = v44;
            v21[5] = v45;
            v21[6] = v25;
            v21[3] = v27;
            v21[4] = v26;
            v21[2] = v42;
            result = outlined destroy of WorkoutDevice(v35);
            if (v10 >= *(v6 + 16))
            {
              goto LABEL_26;
            }

            v28 = (v6 + v12);
            v36[0] = *(v6 + v12 + 112);
            v29 = *(v6 + v12 + 128);
            v30 = *(v6 + v12 + 144);
            v31 = *(v6 + v12 + 176);
            v36[3] = *(v6 + v12 + 160);
            v36[4] = v31;
            v36[1] = v29;
            v36[2] = v30;
            v32 = v41;
            v34 = v38;
            v33 = v39;
            v28[10] = v40;
            v28[11] = v32;
            v28[8] = v34;
            v28[9] = v33;
            v28[7] = v37;
            result = outlined destroy of WorkoutDevice(v36);
            *v47 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 80;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue)
  {
    _sSo17OS_dispatch_queueCMaTm_13(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [WorkoutDevice], @guaranteed [WorkoutDevice]) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t outlined init with copy of Subscription(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_44;
  }

  v9 = *(v4 + 16);
  if (v8 == v9)
  {
    return v7;
  }

  v10 = 80 * result + 112;
  while (v8 < v9)
  {
    v57 = v7;
    v11 = (v4 + v10);
    result = *(v4 + v10);
    v12 = *(v4 + v10 + 16);
    v13 = *(v4 + v10 + 24);
    v14 = *(v4 + v10 + 32);
    v43 = *(v4 + v10 + 48);
    v44 = *(v4 + v10 + 40);
    v42 = *(v4 + v10 + 56);
    v40 = *(v4 + v10 + 64);
    v41 = *(v4 + v10 + 72);
    v15 = result == *a2 && *(v4 + v10 + 8) == *(a2 + 8);
    if (v15 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      if (v12 == *(a2 + 16) && v13 == *(a2 + 24) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v14 == *(a2 + 32))
        {
          if (v44 == *(a2 + 40) && v43 == *(a2 + 48) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
            if (v42 == (*(a2 + 56) & 1))
            {
              v38 = *(a2 + 72);
              if (v41)
              {
                if (v38)
                {
                  if (result = v40, v40 == *(a2 + 64)) && v41 == v38 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result))
                  {
LABEL_39:
                    v7 = v57;
                    goto LABEL_30;
                  }
                }
              }

              else if (!v38)
              {
                goto LABEL_39;
              }
            }
          }
        }
      }
    }

    v16 = v57;
    if (v8 != v57)
    {
      if (v57 >= v9)
      {
        goto LABEL_41;
      }

      v17 = (v4 + 32 + 80 * v57);
      v47 = *v17;
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[4];
      v50 = v17[3];
      v51 = v20;
      v48 = v18;
      v49 = v19;
      v21 = v11[4];
      v23 = v11[1];
      v22 = v11[2];
      v55 = v11[3];
      v56 = v21;
      v53 = v23;
      v54 = v22;
      v52 = *v11;
      outlined init with copy of WorkoutDevice(&v47, v46);
      outlined init with copy of WorkoutDevice(&v52, v46);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
        v4 = result;
      }

      if (v16 >= *(v4 + 16))
      {
        goto LABEL_42;
      }

      v24 = (v4 + 80 * v16);
      v45[0] = v24[2];
      v25 = v24[3];
      v26 = v24[4];
      v27 = v24[6];
      v45[3] = v24[5];
      v45[4] = v27;
      v45[1] = v25;
      v45[2] = v26;
      v28 = v56;
      v30 = v53;
      v29 = v54;
      v24[5] = v55;
      v24[6] = v28;
      v24[3] = v30;
      v24[4] = v29;
      v24[2] = v52;
      result = outlined destroy of WorkoutDevice(v45);
      if (v8 >= *(v4 + 16))
      {
        goto LABEL_43;
      }

      v31 = (v4 + v10);
      v46[0] = *(v4 + v10);
      v32 = *(v4 + v10 + 16);
      v33 = *(v4 + v10 + 32);
      v34 = *(v4 + v10 + 64);
      v46[3] = *(v4 + v10 + 48);
      v46[4] = v34;
      v46[1] = v32;
      v46[2] = v33;
      v35 = v51;
      v37 = v48;
      v36 = v49;
      v31[3] = v50;
      v31[4] = v35;
      v31[1] = v37;
      v31[2] = v36;
      *v31 = v47;
      result = outlined destroy of WorkoutDevice(v46);
      *a1 = v4;
    }

    v7 = v16 + 1;
LABEL_30:
    ++v8;
    v9 = *(v4 + 16);
    v10 += 80;
    if (v8 == v9)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t partial apply for closure #2 in closure #1 in WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMd, &_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMR) - 8) + 80);

  return closure #2 in closure #1 in WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(a1);
}

uint64_t outlined consume of Set<HRCDevice>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void *PredictedActivityPickerItem.topSuggested.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_topSuggested);
  v2 = v1;
  return v1;
}

id PredictedActivityPickerItem.__allocating_init(type:activityType:goal:topSuggested:predictionSessionUUID:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v11[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type] = *a1;
  *&v11[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType] = a2;
  *&v11[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_goal] = a3;
  *&v11[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_topSuggested] = a4;
  v12 = OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_predictionSessionUUID;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a5, v13);
  v17.receiver = v11;
  v17.super_class = v5;
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a5, v13);
  return v15;
}

id PredictedActivityPickerItem.init(type:activityType:goal:topSuggested:predictionSessionUUID:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type] = *a1;
  *&v5[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType] = a2;
  *&v5[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_goal] = a3;
  *&v5[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_topSuggested] = a4;
  v7 = OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_predictionSessionUUID;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v5[v7], a5, v8);
  v12.receiver = v5;
  v12.super_class = type metadata accessor for PredictedActivityPickerItem();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a5, v8);
  return v10;
}

uint64_t type metadata accessor for PredictedActivityPickerItem()
{
  result = type metadata singleton initialization cache for PredictedActivityPickerItem;
  if (!type metadata singleton initialization cache for PredictedActivityPickerItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id PredictedActivityPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PredictedActivityPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PredictedActivityPickerItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PredictedActivityPickerItem.copy(with:)@<X0>(void *a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v19) = *(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type);
  v7 = *(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType);
  v8 = *(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_goal);
  v9 = *(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_topSuggested);
  v10 = *(v3 + 16);
  v10(v6, v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_predictionSessionUUID, v2);
  v11 = type metadata accessor for PredictedActivityPickerItem();
  v12 = objc_allocWithZone(v11);
  v12[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type] = BYTE4(v19);
  *&v12[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType] = v7;
  *&v12[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_goal] = v8;
  *&v12[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_topSuggested] = v9;
  v10(&v12[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_predictionSessionUUID], v6, v2);
  v21.receiver = v12;
  v21.super_class = v11;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = objc_msgSendSuper2(&v21, sel_init);
  result = (*(v3 + 8))(v6, v2);
  v18 = v20;
  v20[3] = v11;
  *v18 = v16;
  return result;
}

id protocol witness for Identifiable.id.getter in conformance PredictedActivityPickerItem@<X0>(void *a1@<X8>)
{
  result = [*v1 hash];
  *a1 = result;
  return result;
}

Swift::Int PredictedActivityPickerItem.hash.getter()
{
  v1 = v0;
  Hasher.init()();
  MEMORY[0x20F2E7FF0](*(v0 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type));
  v2 = *(v0 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType);
  NSObject.hash(into:)();
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_goal);
  NSObject.hash(into:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher.finalize()();
}

uint64_t PredictedActivityPickerItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v9);
  if (!v10)
  {
    outlined destroy of Any?(v9);
    goto LABEL_9;
  }

  type metadata accessor for PredictedActivityPickerItem();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v6 = 0;
    return v6 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type) != v8[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type] || (type metadata accessor for NSObject(), v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType), v3 = *&v8[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType], (static NSObject.== infix(_:_:)() & 1) == 0) || (v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_goal), v5 = *&v8[OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_goal], (static NSObject.== infix(_:_:)() & 1) == 0))
  {

    goto LABEL_9;
  }

  v6 = static UUID.== infix(_:_:)();

  return v6 & 1;
}

uint64_t PredictedActivityPickerItem.description.getter()
{
  _StringGuts.grow(_:)(38);

  v11[0] = 0xD000000000000022;
  v11[1] = 0x800000020B45F6F0;
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type);
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

  else if (*(v0 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_type))
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
  v4 = v11[0];
  _StringGuts.grow(_:)(19);

  strcpy(v11, "activityType: ");
  HIBYTE(v11[1]) = -18;
  v5 = [*(v0 + OBJC_IVAR____TtC11WorkoutCore27PredictedActivityPickerItem_activityType) description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x20F2E6D80](v6, v8);

  MEMORY[0x20F2E6D80](2108457, 0xE300000000000000);

  MEMORY[0x20F2E6D80](v11[0], v11[1]);

  _StringGuts.grow(_:)(26);

  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v9);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);

  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45F720);

  return v4;
}

uint64_t instantiation function for generic protocol witness table for PredictedActivityPickerItem(uint64_t a1)
{
  result = _s10Foundation4UUIDVACSHAAWlTm_4(&lazy protocol witness table cache variable for type PredictedActivityPickerItem and conformance PredictedActivityPickerItem, type metadata accessor for PredictedActivityPickerItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for PredictedActivityPickerItem()
{
  result = type metadata accessor for UUID();
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

uint64_t closure #1 in static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!a2 || !specialized _arrayConditionalCast<A, B>(_:)(a2))
  {
    return (a4)(MEMORY[0x277D84F90], a3);
  }

  if (a3)
  {

    return (a4)(MEMORY[0x277D84F90], a3);
  }

  a4();
}

id @objc static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:)(int a1, int a2, void *a3, void *a4, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = a3;
  v10 = specialized static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:)(v9, a4, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned NSError?) -> (), v8);

  return v10;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for HKWorkout(0, &lazy cache variable for type metadata for HKWorkout, 0x277CCDBE8);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (a2)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

id specialized static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v79 = a3;
  v80 = a4;
  v82 = a2;
  v77 = type metadata accessor for Date();
  v75 = *(v77 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v77);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Calendar.Component();
  v81 = *(v83 - 8);
  v8 = *(v81 + 64);
  MEMORY[0x28223BE20](v83);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Calendar();
  v72 = *(v73 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v71 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v84 = &v68 - v18;
  v86 = MEMORY[0x277D84F90];
  v19 = objc_opt_self();
  v20 = [v19 _predicateForObjectsFromAppleWatches];
  type metadata accessor for HKWorkout(0, &lazy cache variable for type metadata for HKSampleQuery, 0x277CCD8D0);
  v21 = [swift_getObjCClassFromMetadata() predicateForWorkoutsWithWorkoutActivityType_];
  if ([a1 isIndoor])
  {
    v22 = 4;
  }

  else
  {
    v22 = 5;
  }

  v23 = *MEMORY[0x277CCC4C0];
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v74 = v19;
  v25 = [v19 predicateForObjectsWithMetadataKey:v23 operatorType:v22 value:isa];

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B42C8E0;
  *(inited + 32) = v20;
  *(inited + 40) = v21;
  *(inited + 48) = v25;
  v27 = v20;
  v28 = v21;
  v78 = v25;
  specialized Array.append<A>(contentsOf:)(inited);
  v29 = specialized static HKQuery._swimmingLocationTypePredicate(activityType:)(a1);
  v30 = v29;
  if (v29)
  {
    v31 = v29;
    MEMORY[0x20F2E6F30]();
    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v67 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v32 = v13;
  static Calendar.current.getter();
  v33 = v81;
  v34 = v10;
  v35 = v10;
  v36 = v83;
  (*(v81 + 104))(v35, *MEMORY[0x277CC9968], v83);
  if (__OFSUB__(0, v82))
  {
    __break(1u);
LABEL_15:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_13;
  }

  v69 = v30;
  v82 = v27;
  v70 = v28;
  Date.init()();
  v37 = v84;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  v38 = v75;
  v39 = v7;
  v40 = *(v75 + 8);
  v41 = v39;
  v42 = v77;
  v40();
  (*(v33 + 8))(v34, v36);
  v43 = v42;
  (*(v72 + 8))(v32, v73);
  v44 = v71;
  outlined init with copy of Date?(v37, v71);
  if ((*(v38 + 48))(v44, 1, v43) == 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = Date._bridgeToObjectiveC()().super.isa;
    (v40)(v44, v43);
  }

  Date.init()();
  v46 = Date._bridgeToObjectiveC()().super.isa;
  (v40)(v41, v43);
  v47 = [v74 predicateForSamplesWithStartDate:v45 endDate:v46 options:0];

  v34 = v47;
  MEMORY[0x20F2E6F30]();
  if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  type metadata accessor for HKWorkout(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
  v48 = Array._bridgeToObjectiveC()().super.isa;

  v49 = [objc_opt_self() andPredicateWithSubpredicates_];

  v50 = *MEMORY[0x277CCCD50];
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;
  v54 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v55 = MEMORY[0x20F2E6C00](v51, v53);

  v56 = [v54 initWithKey:v55 ascending:0];

  v57 = [objc_opt_self() workoutType];
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_20B425990;
  *(v58 + 32) = v56;
  v59 = swift_allocObject();
  v60 = v80;
  *(v59 + 16) = v79;
  *(v59 + 24) = v60;
  v61 = objc_allocWithZone(MEMORY[0x277CCD8D0]);
  type metadata accessor for HKWorkout(0, &lazy cache variable for type metadata for NSSortDescriptor, 0x277CCAC98);
  v62 = v56;

  v63 = Array._bridgeToObjectiveC()().super.isa;

  aBlock[4] = partial apply for closure #1 in static HKQuery.recentWorkoutsQuery(activityType:daysAgo:completion:);
  aBlock[5] = v59;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKSampleQuery, @guaranteed [HKSample]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_36;
  v64 = _Block_copy(aBlock);
  v65 = [v61 initWithSampleType:v57 predicate:v49 limit:0 sortDescriptors:v63 resultsHandler:v64];

  _Block_release(v64);
  outlined destroy of Date?(v84);

  return v65;
}

uint64_t type metadata accessor for HKWorkout(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id NLSessionActivityGoal.compatible(with:)(uint64_t a1)
{
  if (a1 != 2)
  {
    if (a1 != 1)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    return v1;
  }

  if ([v1 goalTypeIdentifier] != 3)
  {

    return v1;
  }

  v2 = objc_allocWithZone(MEMORY[0x277D0A838]);

  return [v2 initWithGoalTypeIdentifier:0 value:0];
}

id @objc NLSessionActivityGoal.compatible(with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = NLSessionActivityGoal.compatible(with:)(a3);

  return v5;
}

id static UserDevicesBehaviors.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static UserDevicesBehaviors.shared;

  return v0;
}

void static UserDevicesBehaviors.shared.setter(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static UserDevicesBehaviors.shared;
  static UserDevicesBehaviors.shared = a1;
}

uint64_t (*static UserDevicesBehaviors.shared.modify())()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static UserDevicesBehaviors.shared.modify;
}

id key path getter for static UserDevicesBehaviors.shared : UserDevicesBehaviors.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static UserDevicesBehaviors.shared;
  *a1 = static UserDevicesBehaviors.shared;

  return v2;
}

void key path setter for static UserDevicesBehaviors.shared : UserDevicesBehaviors.Type(id *a1)
{
  v1 = one-time initialization token for shared;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static UserDevicesBehaviors.shared;
  static UserDevicesBehaviors.shared = v2;
}

char *UserDevicesBehaviors.().init()()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = OBJC_IVAR___WOUserDevicesBehaviors_queue;
  type metadata accessor for OS_dispatch_queue();
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v2);
  *&v1[v11] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[OBJC_IVAR___WOUserDevicesBehaviors__isFetchingWorkoutHealthDataAllowedWhenLocked] = 0;
  v1[OBJC_IVAR___WOUserDevicesBehaviors__cachedWorkoutHealthDataAllowedWhenLocked] = 2;
  v12 = one-time initialization token for shared;
  v13 = *MEMORY[0x277CCE5B0];
  if (v12 != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:3 domainName:v13 healthStore:static WorkoutCoreInjector.healthStore];

  *&v1[OBJC_IVAR___WOUserDevicesBehaviors_domain] = v14;
  v15 = type metadata accessor for UserDevicesBehaviors();
  v18.receiver = v1;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  [*&v16[OBJC_IVAR___WOUserDevicesBehaviors_domain] startObservation_];
  return v16;
}

id UserDevicesBehaviors.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR___WOUserDevicesBehaviors_domain] stopObservation_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserDevicesBehaviors();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL UserDevicesBehaviors.hasPairedWatch.getter()
{
  v0 = FIGetActivePairedDevice();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t UserDevicesBehaviors.cachedWorkoutHealthDataAllowedWhenLocked.getter()
{
  v10 = 2;
  v1 = *&v0[OBJC_IVAR___WOUserDevicesBehaviors_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in UserDevicesBehaviors.cachedWorkoutHealthDataAllowedWhenLocked.getter;
  *(v3 + 24) = v2;
  aBlock[4] = _sIg_Ieg_TRTA_2;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_37;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t partial apply for closure #1 in UserDevicesBehaviors.cachedWorkoutHealthDataAllowedWhenLocked.getter()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  v4 = OBJC_IVAR___WOUserDevicesBehaviors__cachedWorkoutHealthDataAllowedWhenLocked;
  v5 = *(v2 + OBJC_IVAR___WOUserDevicesBehaviors__cachedWorkoutHealthDataAllowedWhenLocked);
  if (v5 == 2)
  {
    result = UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()();
    LOBYTE(v5) = *(v2 + v4);
  }

  *v3 = v5;
  return result;
}

uint64_t UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v2[OBJC_IVAR___WOUserDevicesBehaviors_queue];
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = partial apply for closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_9_4;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  static DispatchQoS.unspecified.getter();
  v20[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v14, v9, v17);
  _Block_release(v17);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

uint64_t closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(unsigned __int8 *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = a1[OBJC_IVAR___WOUserDevicesBehaviors__cachedWorkoutHealthDataAllowedWhenLocked];
  if (v10 != 2)
  {
    return a2(v10 & 1);
  }

  static TaskPriority.userInitiated.getter();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v13 = a1;

  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:), v12);

  return _sSo8NSObjectCSgWOhTm_5(v9, &_sScPSgMd, &_sScPSgMR);
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for DispatchQoS();
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v9 = *(v8 + 64) + 15;
  v6[13] = swift_task_alloc();
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v6[14] = v10;
  v11 = *(v10 - 8);
  v6[15] = v11;
  v12 = *(v11 + 64) + 15;
  v6[16] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[17] = v13;
  *v13 = v6;
  v13[1] = closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:);

  return UserDevicesBehaviors.fetchWorkoutHealthDataAllowed()();
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(char a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:), 0, 0);
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)()
{
  v1 = *(v0 + 144);
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v6 = v0[11];
  v5 = v0[12];
  v17 = v0[10];
  v15 = v0[14];
  v16 = v0[9];
  v7 = v0[8];
  v8 = *&v7[OBJC_IVAR___WOUserDevicesBehaviors_queue];
  static DispatchWorkItemFlags.barrier.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v1;
  v0[6] = partial apply for closure #1 in closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:);
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v0[5] = &block_descriptor_50_0;
  v10 = _Block_copy(v0 + 2);
  v11 = v7;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v4, v2, v10);
  _Block_release(v10);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v15);
  v12 = v0[7];

  v16(v1);

  v13 = v0[1];

  return v13();
}

uint64_t UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()()
{
  v1 = type metadata accessor for DispatchQoS();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v0[OBJC_IVAR___WOUserDevicesBehaviors_queue];
  static DispatchWorkItemFlags.barrier.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_29;
  v13 = _Block_copy(aBlock);
  v14 = v0;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v5, v10, v13);
  _Block_release(v13);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

uint64_t closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v10 - v5;
  if ((a1[OBJC_IVAR___WOUserDevicesBehaviors__isFetchingWorkoutHealthDataAllowedWhenLocked] & 1) == 0)
  {
    a1[OBJC_IVAR___WOUserDevicesBehaviors__isFetchingWorkoutHealthDataAllowedWhenLocked] = 1;
    static TaskPriority.background.getter();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = a1;
    v9 = a1;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed(), v8);

    return _sSo8NSObjectCSgWOhTm_5(v6, &_sScPSgMd, &_sScPSgMR);
  }

  return result;
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for DispatchQoS();
  v4[9] = v5;
  v6 = *(v5 - 8);
  v4[10] = v6;
  v7 = *(v6 + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v4[12] = v8;
  v9 = *(v8 - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[15] = v11;
  *v11 = v4;
  v11[1] = closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed();

  return UserDevicesBehaviors.fetchWorkoutHealthDataAllowed()();
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()(char a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed(), 0, 0);
}

uint64_t closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()()
{
  v1 = *(v0 + 128);
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v15 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v8 = *&v7[OBJC_IVAR___WOUserDevicesBehaviors_queue];
  static DispatchWorkItemFlags.barrier.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v1;
  v0[6] = partial apply for closure #1 in closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed();
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v0[5] = &block_descriptor_39_0;
  v10 = _Block_copy(v0 + 2);
  v11 = v7;
  static DispatchQoS.unspecified.getter();
  MEMORY[0x20F2E7580](0, v4, v2, v10);
  _Block_release(v10);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v15);
  v12 = v0[7];

  v13 = v0[1];

  return v13();
}

uint64_t UserDevicesBehaviors.fetchWorkoutHealthDataAllowed()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](UserDevicesBehaviors.fetchWorkoutHealthDataAllowed(), 0, 0);
}

{
  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  v3 = [v1 supportsCoreOSDatabaseAssertion];

  if (v3)
  {
    v4 = *(v0[19] + OBJC_IVAR___WOUserDevicesBehaviors_domain);
    v5 = *MEMORY[0x277CCE540];
    v0[20] = *MEMORY[0x277CCE540];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = UserDevicesBehaviors.fetchWorkoutHealthDataAllowed();
    v6 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCSgs5Error_pGMd, &_sSccySo8NSNumberCSgs5Error_pGMR);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?;
    v0[13] = &block_descriptor_20_0;
    v0[14] = v6;
    [v4 numberForKey:v5 completion:v0 + 10];
    v1 = v0 + 2;

    return MEMORY[0x282200938](v1);
  }

  v7 = v0[1];

  return v7(1);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = UserDevicesBehaviors.fetchWorkoutHealthDataAllowed();
  }

  else
  {
    v3 = UserDevicesBehaviors.fetchWorkoutHealthDataAllowed();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 1;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.app);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Error reading allow workout health database access while locked. error=%@", v10, 0xCu);
    _sSo8NSObjectCSgWOhTm_5(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14(0);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSNumber?, @unowned NSError?) -> () with result type NSNumber?(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t partial apply for closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed();

  return closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void partial apply for closure #1 in closure #1 in closure #1 in UserDevicesBehaviors.backgroundFetchWorkoutHealthDataAllowed()()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR___WOUserDevicesBehaviors__cachedWorkoutHealthDataAllowedWhenLocked) = *(v0 + 24);
  *(v1 + OBJC_IVAR___WOUserDevicesBehaviors__isFetchingWorkoutHealthDataAllowedWhenLocked) = 0;
}

uint64_t partial apply for closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:);

  return closure #1 in closure #1 in UserDevicesBehaviors.workoutHealthDataAllowedWhenLocked(completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t static PacerAlerts.defaultPacerAlerts()()
{
  type metadata accessor for PacerAlerts();
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PacerAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PacerAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance PacerAlerts.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance PacerAlerts.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PacerAlerts.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance PacerAlerts.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PacerAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PacerAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PacerAlerts.aheadBehindAlertsEnabled.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t PacerAlerts.__allocating_init(aheadBehindAlertsEnabled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t PacerAlerts.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  PacerAlerts.init(from:)(a1);
  return v2;
}

uint64_t PacerAlerts.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore11PacerAlertsC10CodingKeys33_03F69CCD90B7BF31744E45FAB9193829LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore11PacerAlertsC10CodingKeys33_03F69CCD90B7BF31744E45FAB9193829LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for PacerAlerts();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t lazy protocol witness table accessor for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys);
  }

  return result;
}

uint64_t PacerAlerts.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore11PacerAlertsC10CodingKeys33_03F69CCD90B7BF31744E45FAB9193829LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore11PacerAlertsC10CodingKeys33_03F69CCD90B7BF31744E45FAB9193829LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PacerAlerts.CodingKeys and conformance PacerAlerts.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v10 = *(v2 + 16);
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

Swift::Int PacerAlerts.hashValue.getter()
{
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v0 + 16));
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance PacerAlerts@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for PacerAlerts();
  v5 = swift_allocObject();
  result = PacerAlerts.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PacerAlerts()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PacerAlerts()
{
  v1 = *v0;
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PacerAlerts()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + 16));
  return Hasher._finalize()();
}

BOOL static PacerAlerts.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  LODWORD(a1) = *(a1 + 16);
  swift_beginAccess();
  return ((a1 ^ *(a2 + 16)) & 1) == 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PacerAlerts(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  LODWORD(v2) = *(v2 + 16);
  swift_beginAccess();
  return ((v2 ^ *(v3 + 16)) & 1) == 0;
}

unint64_t PacerAlerts.description.getter()
{
  _StringGuts.grow(_:)(43);

  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v1, v2);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD000000000000028;
}

unint64_t lazy protocol witness table accessor for type PacerAlerts and conformance PacerAlerts()
{
  result = lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts;
  if (!lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts)
  {
    type metadata accessor for PacerAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PacerAlerts.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PacerAlerts.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for MediaPlaybackConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MediaPlaybackConstants(_WORD *result, int a2, int a3)
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

uint64_t WorkoutNotificationUnit.NotificationUnitType.rawValue.getter()
{
  result = 0x4365676172657661;
  switch(*v0)
  {
    case 1:
      result = 0x5065676172657661;
      break;
    case 2:
      result = 0x5065676172657661;
      break;
    case 3:
      result = 0x65636E65646163;
      break;
    case 4:
      result = 0x65636E6174736964;
      break;
    case 5:
      result = 0x796772656E65;
      break;
    case 6:
      result = 0x676E6964616568;
      break;
    case 7:
      result = 0x7461527472616568;
      break;
    case 8:
      result = 0x6567616D69;
      break;
    case 9:
      result = 1701011824;
      break;
    case 0xA:
      result = 0x6874695765636170;
      break;
    case 0xB:
      result = 0x7265776F70;
      break;
    case 0xC:
      result = 0x656D695465636172;
      break;
    case 0xD:
      result = 0x50676E696C6C6F72;
      break;
    case 0xE:
      result = 0x74696C7073;
      break;
    case 0xF:
      result = 0x676E69727473;
      break;
    case 0x10:
      result = 1701669236;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.decoded.getter()
{
  v1 = v0;
  v32 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v2 = *(v32 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = *(v0 + 8);
  v34 = *v0;
  v35 = v11;
  Apple_Workout_Core_NotificationUnitType.decoded.getter(&v33);
  v12 = v33;
  type metadata accessor for WorkoutNotificationUnit();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 24) = 0;
  *(v13 + 72) = 0;
  *(v13 + 48) = 1;
  *(v13 + 64) = 0;
  *(v13 + 56) = 0;
  *(v13 + 16) = v12;
  swift_beginAccess();
  *(v13 + 32) = 0;
  *(v13 + 24) = 0;
  swift_beginAccess();
  *(v13 + 40) = 0;
  *(v13 + 48) = 1;
  swift_beginAccess();
  *(v13 + 64) = 0;
  *(v13 + 56) = 0;
  swift_beginAccess();
  v29 = (v13 + 72);
  *(v13 + 72) = 0;
  v14 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v15 = (v0 + v14[6]);
  v16 = v15[1];
  if (v16)
  {
    *(v13 + 24) = *v15;
    *(v13 + 32) = v16;
  }

  v17 = v1 + v14[7];
  if ((*(v17 + 8) & 1) == 0)
  {
    *(v13 + 40) = *v17;
    *(v13 + 48) = 0;
  }

  v18 = (v1 + v14[9]);
  v19 = v18[1];
  if (v19)
  {
    *(v13 + 56) = *v18;
    *(v13 + 64) = v19;
  }

  v20 = v14[8];
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + v20, v10);
  v21 = *(v2 + 48);
  v22 = v32;
  v23 = v21(v10, 1, v32);

  outlined destroy of Apple_Workout_Core_Activity?(v10);
  if (v23 != 1)
  {
    v24 = v30;
    outlined init with copy of Apple_Workout_Core_Activity?(v1 + v20, v30);
    if (v21(v24, 1, v22) == 1)
    {
      v25 = v31;
      *(v31 + 8) = 0;
      *v25 = 0;
      v25[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v26 = v25 + *(v22 + 36);
      UnknownStorage.init()();
      if (v21(v24, 1, v22) != 1)
      {
        outlined destroy of Apple_Workout_Core_Activity?(v24);
      }
    }

    else
    {
      v25 = v31;
      outlined init with take of Apple_Workout_Core_Activity(v24, v31);
    }

    v27 = Apple_Workout_Core_Activity.decoded.getter();
    outlined destroy of Apple_Workout_Core_Activity(v25);
    *v29 = v27;
  }

  return v13;
}

WorkoutCore::WorkoutNotificationUnit::NotificationUnitType_optional __swiftcall WorkoutNotificationUnit.NotificationUnitType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutNotificationUnit.NotificationUnitType(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  v4 = v3;
  if (v2 == WorkoutNotificationUnit.NotificationUnitType.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutNotificationUnit.NotificationUnitType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutNotificationUnit.NotificationUnitType()
{
  v2 = *v0;
  WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutNotificationUnit.NotificationUnitType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutNotificationUnit.NotificationUnitType@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutNotificationUnit.NotificationUnitType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t WorkoutNotificationUnit.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t WorkoutNotificationUnit.type.setter(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t key path setter for WorkoutNotificationUnit.key : WorkoutNotificationUnit(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
}

uint64_t WorkoutNotificationUnit.key.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}