void closure #1 in closure #1 in INStopShareETAIntentHandler.handleStopShareETA(intent:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a1)
  {
    v20 = _convertErrorToNSError(_:)();
    INStopShareETAIntentHandler.stopShareETAErrorHandling(_:completion:)(v20, a3);
  }

  else
  {
    v20 = [objc_allocWithZone(MEMORY[0x277CD41F8]) initWithCode:3 userActivity:0];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, 0x277CD3E90);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v20 setRecipients_];

    v9 = [a5 recipients];
    [v20 setRecipients_];

    v10 = *(a2 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject);
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315138;
      v14 = v20;
      v15 = [v14 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v21);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_266E03000, v10, v11, "INStopShareETAIntentHandler Sending response : %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x26D5F3640](v13, -1, -1);
      MEMORY[0x26D5F3640](v12, -1, -1);
    }

    (a3)(v20);
  }
}

void INStopShareETAIntentHandler.stopShareETAErrorHandling(_:completion:)(void *a1, void (*a2)(void))
{
  v5 = [a1 code];
  static os_log_type_t.error.getter();
  v6 = *(v2 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_266E21E90;
  v8 = [a1 localizedDescription];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  os_log(_:dso:log:_:_:)();

  v12 = objc_allocWithZone(MEMORY[0x277CD41F8]);
  if ((v5 - 5) > 9)
  {
    v13 = 4;
  }

  else
  {
    v13 = qword_266E224D8[(v5 - 5)];
  }

  v14 = [v12 initWithCode:v13 userActivity:0];
  a2();
}

id INStopShareETAIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INStopShareETAIntentHandler.init()()
{
  v1 = OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *&v0[v1] = OS_os_log.init(subsystem:category:)();
  v2 = OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_contactService;
  type metadata accessor for ContactService();
  swift_allocObject();
  *&v0[v2] = ContactService.init()();
  *&v0[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for INStopShareETAIntentHandler();
  return objc_msgSendSuper2(&v4, sel_init);
}

id INStopShareETAIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INStopShareETAIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void partial apply for closure #1 in INStopShareETAIntentHandler.resolveRecipients(for:with:)(void *a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  INStopShareETAIntentHandler.resolveRecipientsInsideBlock(for:sharedTrip:with:)(v3, a1, v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void specialized INStopShareETAIntentHandler.resolveRecipients(for:with:)(void *a1, char *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = objc_opt_self();
  _Block_copy(a3);
  v8 = [v7 sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    v10[2] = a2;
    v10[3] = a1;
    v10[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ();
    v10[5] = v6;
    aBlock[4] = closure #1 in INStopShareETAIntentHandler.resolveRecipients(for:with:)partial apply;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    aBlock[3] = &block_descriptor_59;
    v11 = _Block_copy(aBlock);
    v12 = a2;
    v13 = a1;

    [v9 performBlockAfterInitialSync_];
    _Block_release(v11);
  }

  else
  {
    v14 = *&a2[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject];
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_266E03000, v14, v15, "could not get msp shared instance to check if the there is a match with receivers", v16, 2u);
      MEMORY[0x26D5F3640](v16, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_266E21F00;
    *(v17 + 32) = [objc_opt_self() unsupportedForReason_];
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INStopShareETARecipientResolutionResult, 0x277CD4200);
    isa = Array._bridgeToObjectiveC()().super.isa;
    (a3)[2](a3, isa);
  }
}

void specialized INStopShareETAIntentHandler.confirm(intent:completion:)(char *a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *&a1[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject];
  _Block_copy(a2);
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266E03000, v5, v6, "stop sharing ETA - confirm", v7, 2u);
    MEMORY[0x26D5F3640](v7, -1, -1);
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CD41F8]) initWithCode:1 userActivity:0];
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = v16;
    v10[4] = thunk for @escaping @callee_unowned @convention(block) (@unowned INShareETAIntentResponse) -> ()partial apply;
    v10[5] = v4;
    aBlock[4] = closure #1 in INStopShareETAIntentHandler.confirm(intent:completion:)partial apply;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    aBlock[3] = &block_descriptor_49_0;
    v11 = _Block_copy(aBlock);
    v12 = a1;
    v13 = v16;

    [v9 performBlockAfterInitialSync_];
    _Block_release(v11);
  }

  else
  {
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_266E03000, v5, v14, "failed to retrieve shared instance", v15, 2u);
      MEMORY[0x26D5F3640](v15, -1, -1);
    }

    (a2)[2](a2, v16);
  }
}

uint64_t specialized INStopShareETAIntentHandler.convertSharedTripToRecipients(_:)(uint64_t result)
{
  v1 = result;
  v15 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    if (result >= 0)
    {
      result &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x26D5F3000](result);
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x26D5F2F90](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = [v4 displayName];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if ([v5 isPhoneNumber])
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      v11 = objc_allocWithZone(MEMORY[0x277CD3E98]);
      v12 = MEMORY[0x26D5F2D60](v7, v9);

      v13 = [v11 initWithValue:v12 type:v10];

      [objc_allocWithZone(MEMORY[0x277CD3E90]) initWithPersonHandle:v13 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
      MEMORY[0x26D5F2E10]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v3;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v2 != v3);
    return v15;
  }

  return result;
}

void specialized INStopShareETAIntentHandler.handle(intent:completion:)(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned INDeleteParkingLocationIntentResponse) -> ();
  v7[4] = v6;
  v8 = objc_opt_self();
  _Block_copy(a3);

  v9 = a2;
  v10 = [v8 sharedInstance];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    v12[2] = v9;
    v12[3] = closure #1 in INStopShareETAIntentHandler.handle(intent:completion:)partial apply;
    v12[4] = v7;
    v12[5] = a1;
    v19[4] = closure #1 in INStopShareETAIntentHandler.handleStopShareETA(intent:completion:)partial apply;
    v19[5] = v12;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed (@guaranteed MSPSharedTripService) -> ();
    v19[3] = &block_descriptor_38;
    v13 = _Block_copy(v19);
    v14 = v9;

    v15 = a1;

    [v11 performBlockAfterInitialSync_];

    _Block_release(v13);
  }

  else
  {
    static os_log_type_t.error.getter();
    v16 = *&v9[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_logObject];
    os_log(_:dso:log:_:_:)();
    v17 = [objc_allocWithZone(MEMORY[0x277CD41F8]) initWithCode:4 userActivity:0];
    v18 = *&v9[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact];
    *&v9[OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact] = 0;

    (a3)[2](a3, v17);
  }
}

uint64_t sub_266E18958()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for closure #1 in INStopShareETAIntentHandler.handle(intent:completion:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(v3 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact);
  *(v3 + OBJC_IVAR____TtC7SiriGeo27INStopShareETAIntentHandler_sharedTripContact) = 0;

  return v4(a1);
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void closure #1 in INRetrieveParkingLocationIntentHandler.handle(intent:completion:)(uint64_t a1, void *a2, char *a3, void (*a4)(void), uint64_t a5)
{
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = a2;
    v16 = static os_log_type_t.error.getter();
    v17 = *&a3[OBJC_IVAR____TtC7SiriGeo38INRetrieveParkingLocationIntentHandler_logObject];
    if (os_log_type_enabled(v17, v16))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v72 = a2;
      aBlock[0] = v19;
      *v18 = 136315138;
      v20 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v21 = String.init<A>(describing:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, aBlock);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_266E03000, v17, v16, "error fetching vehicle events: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x26D5F3640](v19, -1, -1);
      MEMORY[0x26D5F3640](v18, -1, -1);
    }

    v24 = [objc_allocWithZone(MEMORY[0x277CD3FB8]) initWithCode:4 userActivity:0];
    a4();

    return;
  }

  static os_signpost_type_t.end.getter();
  v25 = *&a3[OBJC_IVAR____TtC7SiriGeo38INRetrieveParkingLocationIntentHandler_logObject];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v26 = *(v11 + 8);
  v26(v14, v10);
  if (!a1)
  {
    v53 = [objc_allocWithZone(MEMORY[0x277CD3FB8]) initWithCode:4 userActivity:0];
    v54 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_266E03000, v25, v54, "uh oh, no cars", v55, 2u);
      MEMORY[0x26D5F3640](v55, -1, -1);
    }

    [v53 setParkingLocation_];
    v56 = v53;
    goto LABEL_24;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_22:

LABEL_23:
    static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_266E21E90;
    v59 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for RTVehicleEvent, 0x277D01420);
    v60 = MEMORY[0x26D5F2E60](a1, v59);
    v62 = v61;

    *(v58 + 56) = MEMORY[0x277D837D0];
    *(v58 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v58 + 32) = v60;
    *(v58 + 40) = v62;
    os_log(_:dso:log:_:_:)();

    v56 = [objc_allocWithZone(MEMORY[0x277CD3FB8]) initWithCode:4 userActivity:0];
    v53 = v56;
LABEL_24:
    (a4)(v56);

    return;
  }

  if (a1 >= 0)
  {
    v57 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v57 = a1;
  }

  if (!MEMORY[0x26D5F3000](v57))
  {
    goto LABEL_22;
  }

LABEL_8:
  v70 = v26;
  if ((a1 & 0xC000000000000001) != 0)
  {

    v28 = MEMORY[0x26D5F2F90](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v27 = *(a1 + 32);

    v28 = v27;
  }

  v29 = v28;
  v30 = [v28 location];

  v71 = v30;
  if (!v30)
  {
    goto LABEL_23;
  }

  v31 = v71;
  [v71 latitude];
  v33 = v32;
  [v31 longitude];
  v69 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v33 longitude:v34];
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v35))
  {
    v36 = swift_slowAlloc();
    v65 = v36;
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v36 = 136315138;
    v37 = v69;
    v66 = v35;
    v38 = v37;
    v39 = [v37 description];
    v68 = a5;
    v40 = v39;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    a5 = v68;
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v42, aBlock);

    v44 = v65;
    *(v65 + 1) = v43;
    v45 = v44;
    _os_log_impl(&dword_266E03000, v25, v66, "with vehicle location: %s", v44, 0xCu);
    v46 = v67;
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x26D5F3640](v46, -1, -1);
    MEMORY[0x26D5F3640](v45, -1, -1);
  }

  static os_signpost_type_t.begin.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  v70(v14, v10);
  v47 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
  v48 = swift_allocObject();
  v49 = v69;
  v48[2] = a3;
  v48[3] = v49;
  v48[4] = a1;
  v48[5] = a4;
  v48[6] = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in INRetrieveParkingLocationIntentHandler.handle(intent:completion:);
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [CLPlacemark]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_11;
  v50 = _Block_copy(aBlock);
  v51 = v49;
  v52 = a3;

  [v47 reverseGeocodeLocation:v51 completionHandler:v50];
  _Block_release(v50);
}

void closure #1 in closure #1 in INRetrieveParkingLocationIntentHandler.handle(intent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  v28[1] = a7;
  v29 = a6;
  v30 = a3;
  v10 = type metadata accessor for OSSignpostID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277CD3FB8]) initWithCode:3 userActivity:0];
  v16 = 0x2800E6000uLL;
  if (a1)
  {
    if (a1 >> 62)
    {
      if (a1 >= 0)
      {
        v19 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v19 = a1;
      }

      if (MEMORY[0x26D5F3000](v19))
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        goto LABEL_27;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = 0x2800E6000uLL;
        i = *(a1 + 32);
        goto LABEL_12;
      }

      __break(1u);
      return;
    }
  }

  a1 = static os_log_type_t.info.getter();
  v17 = 0x2800E6000uLL;
  v16 = *(v30 + OBJC_IVAR____TtC7SiriGeo38INRetrieveParkingLocationIntentHandler_logObject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_266E21E90;
  *(v20 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
  *(v20 + 64) = lazy protocol witness table accessor for type CLLocation and conformance NSObject();
  *(v20 + 32) = a4;
  v21 = a4;
  os_log(_:dso:log:_:_:)();

  for (i = [objc_opt_self() placemarkWithLocation:v21 name:0 postalAddress:0]; ; i = MEMORY[0x26D5F2F90](0, a1))
  {
LABEL_12:
    v22 = i;
    [v15 setParkingLocation_];

    if (a5 >> 62)
    {
      if (a5 < 0)
      {
        v27 = a5;
      }

      else
      {
        v27 = a5 & 0xFFFFFFFFFFFFFF8;
      }

      if (!MEMORY[0x26D5F3000](v27))
      {
        goto LABEL_18;
      }
    }

    else if (!*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    if ((a5 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(a5 + 32);
      goto LABEL_17;
    }

    __break(1u);
LABEL_27:
    v17 = v16;
  }

  v23 = MEMORY[0x26D5F2F90](0, a5);
LABEL_17:
  v24 = v23;
  v25 = [v23 notes];

  if (v25)
  {
    goto LABEL_19;
  }

LABEL_18:
  v25 = 0;
LABEL_19:
  [v15 setParkingNote_];

  static os_signpost_type_t.end.getter();
  v26 = *(v30 + *(v17 + 3328));
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v11 + 8))(v14, v10);
  v29(v15);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [CLPlacemark]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CLPlacemark, 0x277CBFC40);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

id INRetrieveParkingLocationIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INRetrieveParkingLocationIntentHandler.init()()
{
  v1 = OBJC_IVAR____TtC7SiriGeo38INRetrieveParkingLocationIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *&v0[v1] = OS_os_log.init(subsystem:category:)();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for INRetrieveParkingLocationIntentHandler();
  return objc_msgSendSuper2(&v3, sel_init);
}

id INRetrieveParkingLocationIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INRetrieveParkingLocationIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized INRetrieveParkingLocationIntentHandler.handle(intent:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v10 = *&v2[OBJC_IVAR____TtC7SiriGeo38INRetrieveParkingLocationIntentHandler_logObject];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v6 + 8))(v9, v5);
  if (one-time initialization token for routineManager != -1)
  {
    swift_once();
  }

  v11 = static ParkingLocationService.routineManager;
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = partial apply for closure #1 in INRetrieveParkingLocationIntentHandler.handle(intent:completion:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [RTVehicleEvent]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_2;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  [v11 fetchLastVehicleEventsWithHandler_];
  _Block_release(v13);
}

uint64_t sub_266E19B3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266E19B74()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266E19BD8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t lazy protocol witness table accessor for type CLLocation and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type CLLocation and conformance NSObject;
  if (!lazy protocol witness table cache variable for type CLLocation and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CLLocation and conformance NSObject);
  }

  return result;
}

unint64_t Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D38D38])
  {
    v8 = 0xD000000000000016;
  }

  else if (v7 == *MEMORY[0x277D38D18])
  {
    v8 = 0x5070614D776F6853;
  }

  else if (v7 == *MEMORY[0x277D38D28])
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    if (v7 == *MEMORY[0x277D38D30])
    {
      v8 = 0xD000000000000010;
    }

    else
    {
      v8 = 0x6568744F656D6F73;
    }

    *MEMORY[0x277D38D30];
  }

  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D39A98])
  {
    v8 = 0x6E536F6E69736163;
  }

  else if (v7 == *MEMORY[0x277D39A90])
  {
    v8 = 0x696E736863746177;
  }

  else if (v7 == *MEMORY[0x277D39AA8])
  {
    v8 = 0x736D65746970616DLL;
  }

  else
  {
    if (v7 == *MEMORY[0x277D39AA0])
    {
      v8 = 0x6E5379636167656CLL;
    }

    else
    {
      v8 = 0x206E776F6E6B6E75;
    }

    *MEMORY[0x277D39AA0];
  }

  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == *MEMORY[0x277D39A98])
  {
    v7 = 0x6E536F6E69736163;
  }

  else if (v6 == *MEMORY[0x277D39A90])
  {
    v7 = 0x696E736863746177;
  }

  else if (v6 == *MEMORY[0x277D39AA8])
  {
    v7 = 0x736D65746970616DLL;
  }

  else
  {
    if (v6 == *MEMORY[0x277D39AA0])
    {
      v7 = 0x6E5379636167656CLL;
    }

    else
    {
      v7 = 0x206E776F6E6B6E75;
    }

    *MEMORY[0x277D39AA0];
  }

  (*(v2 + 8))(v5, a1);
  return v7;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

uint64_t logger.unsafeMutableAddressor()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, logger);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL static SiriGeoCommandConverter.isCommandTypeSupported(commandType:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v45 = &v38 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = *(v3 + 16);
  v16(v14, a1, v2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v46 = v16;
  if (!v19)
  {

    v25 = *(v3 + 8);
    v25(v14, v2);
    v26 = *MEMORY[0x277D38D38];
    goto LABEL_11;
  }

  v42 = v18;
  v20 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v47 = v39;
  v41 = v20;
  *v20 = 136315138;
  v16(v12, v14, v2);
  v21 = v45;
  v16(v45, v12, v2);
  v22 = (*(v3 + 88))(v21, v2);
  v40 = *MEMORY[0x277D38D38];
  v43 = v7;
  v44 = a1;
  if (v22 == v40)
  {
    v23 = 0x8000000266E232E0;
    v24 = 0xD000000000000016;
  }

  else
  {
    if (v22 != *MEMORY[0x277D38D18])
    {
      if (v22 == *MEMORY[0x277D38D28])
      {
        v38 = 0xD000000000000010;
        v23 = 0x8000000266E23320;
      }

      else
      {
        v36 = v22 == *MEMORY[0x277D38D30];
        if (v22 == *MEMORY[0x277D38D30])
        {
          v37 = 0xD000000000000010;
        }

        else
        {
          v37 = 0x6568744F656D6F73;
        }

        v38 = v37;
        if (v36)
        {
          v23 = 0x8000000266E23300;
        }

        else
        {
          v23 = 0xE900000000000072;
        }
      }

      goto LABEL_10;
    }

    v23 = 0xED000073746E696FLL;
    v24 = 0x5070614D776F6853;
  }

  v38 = v24;
LABEL_10:
  v25 = *(v3 + 8);
  v25(v12, v2);
  v25(v14, v2);
  v25(v45, v2);
  v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v23, &v47);

  v28 = v41;
  *(v41 + 1) = v27;
  _os_log_impl(&dword_266E03000, v17, v42, "commandtype %s", v28, 0xCu);
  v29 = v39;
  __swift_destroy_boxed_opaque_existential_0(v39);
  MEMORY[0x26D5F3640](v29, -1, -1);
  MEMORY[0x26D5F3640](v28, -1, -1);

  v7 = v43;
  a1 = v44;
  v26 = v40;
LABEL_11:
  v46(v7, a1, v2);
  v30 = (*(v3 + 88))(v7, v2);
  v34 = v30 == v26 || v30 == *MEMORY[0x277D38D18] || v30 == *MEMORY[0x277D38D28] || v30 == *MEMORY[0x277D38D30];
  v25(v7, v2);
  return v34;
}

BOOL static SiriGeoCommandConverter.isSnippetTypeSupported(snippetType:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = *(v3 + 16);
  v16(v14, a1, v2);
  v17 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v17, v39);
  v40 = v16;
  if (v18)
  {
    v35 = v17;
    v19 = 0xED00007465707069;
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    v37 = v20;
    *v20 = 136315138;
    v16(v12, v14, v2);
    v16(v9, v12, v2);
    v21 = (*(v3 + 88))(v9, v2);
    v22 = *MEMORY[0x277D39A98];
    v38 = a1;
    if (v21 == v22)
    {
      v34 = 0x6E536F6E69736163;
    }

    else if (v21 == *MEMORY[0x277D39A90])
    {
      v19 = 0xEC00000074657070;
      v34 = 0x696E736863746177;
    }

    else if (v21 == *MEMORY[0x277D39AA8])
    {
      v19 = 0xEE0074657070696ELL;
      v34 = 0x736D65746970616DLL;
    }

    else
    {
      v24 = v21 == *MEMORY[0x277D39AA0];
      v25 = 0x206E776F6E6B6E75;
      if (v21 == *MEMORY[0x277D39AA0])
      {
        v25 = 0x6E5379636167656CLL;
      }

      v34 = v25;
      if (!v24)
      {
        v19 = 0xEC00000065707974;
      }
    }

    v23 = *(v3 + 8);
    v23(v12, v2);
    v23(v14, v2);
    v23(v9, v2);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v19, &v42);

    v27 = v37;
    *(v37 + 1) = v26;
    v28 = v35;
    _os_log_impl(&dword_266E03000, v35, v39, "snippettype %s", v27, 0xCu);
    v29 = v36;
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x26D5F3640](v29, -1, -1);
    MEMORY[0x26D5F3640](v27, -1, -1);

    a1 = v38;
  }

  else
  {

    v23 = *(v3 + 8);
    v23(v14, v2);
  }

  v30 = v41;
  v40(v41, a1, v2);
  v31 = (*(v3 + 88))(v30, v2) == *MEMORY[0x277D39AA8];
  v23(v30, v2);
  return v31;
}

uint64_t static SiriGeoCommandConverter.convertToSiriCommand(command:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowPlaceDetailsBuilderParams();
  v55 = *(v5 - 8);
  v56 = v5;
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams();
  v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_2;
  }

  outlined init with copy of Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams?(v18, v16);
  v22 = (*(v20 + 88))(v16, v19);
  if (v22 == *MEMORY[0x277D38D38])
  {
    (*(v20 + 96))(v16, v19);
    (*(v1 + 32))(v4, v16, v0);
    v23 = specialized static SiriGeoCommandConverter.convertRecordLocationActivity(_:)();
    v21 = v24;
    (*(v1 + 8))(v4, v0, v23);
  }

  else if (v22 == *MEMORY[0x277D38D18])
  {
    (*(v20 + 96))(v16, v19);
    v25 = v57;
    (*(v57 + 32))(v11, v16, v8);
    v26 = specialized static SiriGeoCommandConverter.convertShowMapPoints(_:)();
    v21 = v27;
    (*(v25 + 8))(v11, v8, v26);
  }

  else if (v22 == *MEMORY[0x277D38D28])
  {
    (*(v20 + 8))(v16, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_266E21F00;
    *(v21 + 32) = [objc_allocWithZone(MEMORY[0x277D47A70]) init];
  }

  else
  {
    if (v22 != *MEMORY[0x277D38D30])
    {
      (*(v20 + 8))(v16, v19);
LABEL_2:
      v21 = MEMORY[0x277D84F90];
      goto LABEL_11;
    }

    (*(v20 + 96))(v16, v19);
    v28 = v54;
    v29 = v55;
    v30 = v56;
    (*(v55 + 32))(v54, v16, v56);
    v31 = [objc_allocWithZone(MEMORY[0x277D474E8]) init];
    [v31 setItemIndex_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_266E21F00;
    *(v21 + 32) = v31;
    (*(v29 + 8))(v28, v30);
  }

LABEL_11:
  outlined destroy of ContactHandle.HandleType?(v18, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v32 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
  v34 = v33;

  v36 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v36 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
    goto LABEL_27;
  }

  if (v21 >> 62)
  {
    if (v21 < 0)
    {
      v43 = v21;
    }

    else
    {
      v43 = v21 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x26D5F3000](v43);
    v37 = result;
    if (!result)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v37 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v37)
    {
      goto LABEL_27;
    }
  }

  if (v37 < 1)
  {
    __break(1u);
    return result;
  }

  v38 = 0;
  do
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v39 = MEMORY[0x26D5F2F90](v38, v21);
    }

    else
    {
      v39 = *(v21 + 8 * v38 + 32);
    }

    v40 = v39;
    ++v38;
    v41 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.uniqueID.getter();
    v42 = MEMORY[0x26D5F2D60](v41);

    [v40 setAceId_];
  }

  while (v37 != v38);
LABEL_27:
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, logger);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v58 = v48;
    *v47 = 136315138;
    v49 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SABaseClientBoundCommand, 0x277D471A8);
    v50 = MEMORY[0x26D5F2E40](v21, v49);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v58);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_266E03000, v45, v46, "Converted Commands %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x26D5F3640](v48, -1, -1);
    MEMORY[0x26D5F3640](v47, -1, -1);
  }

  return v21;
}

id static SiriGeoCommandConverter.convertToSiriSnippet(snippet:)(uint64_t a1)
{
  v63 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams();
  v61 = *(v63 - 8);
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v63);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v58 = *(v5 - 8);
  v6 = *(v58 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v9);
  if ((*(v10 + 88))(v13, v9) == *MEMORY[0x277D39AA8])
  {
    v62 = v5;
    (*(v10 + 96))(v13, v9);
    (*(v15 + 32))(v18, v13, v14);
    v19 = [objc_allocWithZone(MEMORY[0x277D474C8]) init];
    v20 = Apple_Parsec_Siri_V2alpha_MapItemSnippet.objects.getter();
    v21 = *(v20 + 16);
    if (v21)
    {
      v54 = v19;
      v55 = v18;
      v56 = v15;
      v57 = v14;
      v64 = MEMORY[0x277D84F90];
      v22 = v20;
      specialized ContiguousArray.reserveCapacity(_:)();
      v23 = v8;
      v25 = v61 + 16;
      v24 = *(v61 + 16);
      v26 = *(v61 + 80);
      v53 = v22;
      v27 = v22 + ((v26 + 32) & ~v26);
      v60 = (v58 + 8);
      v61 = v24;
      v59 = *(v25 + 56);
      v28 = v63;
      do
      {
        (v61)(v4, v27, v28);
        v29 = objc_allocWithZone(MEMORY[0x277D474B8]);
        v30 = [v29 init];
        v31 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.label.getter();
        v32 = MEMORY[0x26D5F2D60](v31);

        [v30 setLabel_];

        v33 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.spokenName.getter();
        v34 = MEMORY[0x26D5F2D60](v33);

        [v30 setSpokenName_];

        Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
        v35 = specialized static SiriGeoCommandConverter.makeLocation(_:)();
        (*v60)(v23, v62);
        [v30 setLocation_];

        v36 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.placeData.getter();
        v38 = v37;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v40 = v38;
        v28 = v63;
        outlined consume of Data._Representation(v36, v40);
        [v30 setPlaceData2_];

        (*(v25 - 8))(v4, v28);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v41 = *(v64 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v27 += v59;
        --v21;
      }

      while (v21);

      v15 = v56;
      v14 = v57;
      v19 = v54;
      v18 = v55;
      v8 = v23;
    }

    else
    {
    }

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SALocalSearchMapItem, 0x277D474B8);
    v43 = Array._bridgeToObjectiveC()().super.isa;

    [v19 setItems_];

    Apple_Parsec_Siri_V2alpha_MapItemSnippet.searchRegionCenter.getter();
    v44 = specialized static SiriGeoCommandConverter.makeLocation(_:)();
    (*(v58 + 8))(v8, v62);
    [v19 setSearchRegionCenter_];

    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v45 = NSNumber.init(BOOLeanLiteral:)(0).super.super.isa;
    [v19 setUserCurrentLocation_];

    [v19 setSearchAlongRoute_];
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    __swift_project_value_buffer(v46, logger);
    v42 = v19;
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      *(v49 + 4) = v42;
      *v50 = v42;
      v51 = v42;
      _os_log_impl(&dword_266E03000, v47, v48, "Converted Snippet %@", v49, 0xCu);
      outlined destroy of ContactHandle.HandleType?(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x26D5F3640](v50, -1, -1);
      MEMORY[0x26D5F3640](v49, -1, -1);
    }

    (*(v15 + 8))(v18, v14);
  }

  else
  {
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  return v42;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static SiriGeoCommandConverter.makeMapItemType(detailType:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D399A0] || v7 == *MEMORY[0x277D399B8])
  {
    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x277D399A8])
  {
    v9 = MEMORY[0x277D48540];
    goto LABEL_9;
  }

  if (v7 == *MEMORY[0x277D39998])
  {
LABEL_6:
    v9 = MEMORY[0x277D48538];
  }

  else if (v7 == *MEMORY[0x277D39988])
  {
    v9 = MEMORY[0x277D48558];
  }

  else if (v7 == *MEMORY[0x277D39990])
  {
    v9 = MEMORY[0x277D48530];
  }

  else if (v7 == *MEMORY[0x277D39980])
  {
    v9 = MEMORY[0x277D48548];
  }

  else
  {
    if (v7 != *MEMORY[0x277D399B0])
    {
      v12 = *MEMORY[0x277D48538];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      (*(v3 + 8))(v6, v2);
      return v13;
    }

    v9 = MEMORY[0x277D48550];
  }

LABEL_9:
  v10 = *v9;
  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

id specialized static SiriGeoCommandConverter.makeLocation(_:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D47508]) init];
  v1 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v2 = MEMORY[0x26D5F2D60](v1);

  [v0 setLabel_];

  v3 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.street.getter();
  v4 = MEMORY[0x26D5F2D60](v3);

  [v0 setStreet_];

  v5 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.thoroughfare.getter();
  v6 = MEMORY[0x26D5F2D60](v5);

  [v0 setThoroughfare_];

  v7 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.subThoroughfare.getter();
  v8 = MEMORY[0x26D5F2D60](v7);

  [v0 setSubThoroughfare_];

  v9 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.city.getter();
  v10 = MEMORY[0x26D5F2D60](v9);

  [v0 setCity_];

  v11 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.stateCode.getter();
  v12 = MEMORY[0x26D5F2D60](v11);

  [v0 setStateCode_];

  v13 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.countryCode.getter();
  v14 = MEMORY[0x26D5F2D60](v13);

  [v0 setCountryCode_];

  v15 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.postalCode.getter();
  v16 = MEMORY[0x26D5F2D60](v15);

  [v0 setPostalCode_];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.latitude.getter();
  v18 = v17;
  v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v20) = v18;
  v21 = [v19 initWithFloat_];
  [v0 setLatitude_];

  Apple_Parsec_Siri_V2alpha_LocationBuilderParams.longitude.getter();
  v23 = v22;
  v24 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v25) = v23;
  v26 = [v24 initWithFloat_];
  [v0 setLongitude_];

  [v0 setRegionType_];
  v27 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.timezoneID.getter();
  v28 = MEMORY[0x26D5F2D60](v27);

  [v0 setTimezoneId_];

  return v0;
}

uint64_t specialized static SiriGeoCommandConverter.makeDirectionRole(role:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D399C0] || v7 == *MEMORY[0x277D399D8])
  {
    v9 = MEMORY[0x277D48528];
LABEL_9:
    v10 = *v9;
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v7 == *MEMORY[0x277D399D0])
  {
    v9 = MEMORY[0x277D48520];
    goto LABEL_9;
  }

  v12 = *MEMORY[0x277D399C8];
  v13 = *MEMORY[0x277D48528];
  v14 = v7;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v14 != v12)
  {
    v15 = result;
    (*(v3 + 8))(v6, v2);
    return v15;
  }

  return result;
}

id specialized static SiriGeoCommandConverter.makeActionableMapItem(_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.Role();
  v40 = *(v0 - 8);
  v41 = v0;
  v1 = *(v40 + 64);
  MEMORY[0x28223BE20](v0);
  v39 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.DetailType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D47478]) init];
  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.detailType.getter();
  v14 = specialized static SiriGeoCommandConverter.makeMapItemType(detailType:)(v12);
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  v17 = MEMORY[0x26D5F2D60](v14, v16);

  [v13 setDetailType_];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  v18 = specialized static SiriGeoCommandConverter.makeLocation(_:)();
  v19 = *(v4 + 8);
  v19(v7, v3);
  [v13 setLocation_];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  v20 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v22 = v21;
  v19(v7, v3);
  v23 = MEMORY[0x26D5F2D60](v20, v22);

  [v13 setLabel_];

  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.location.getter();
  v24 = Apple_Parsec_Siri_V2alpha_LocationBuilderParams.label.getter();
  v26 = v25;
  v19(v7, v3);
  v27 = MEMORY[0x26D5F2D60](v24, v26);

  [v13 setSpokenName_];

  v28 = Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.placeData.getter();
  v30 = v29;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v28, v30);
  [v13 setPlaceData2_];

  v32 = v39;
  Apple_Parsec_Siri_V2alpha_MapItemBuilderParams.directionRole.getter();
  v33 = specialized static SiriGeoCommandConverter.makeDirectionRole(role:)(v32);
  v35 = v34;
  (*(v40 + 8))(v32, v41);
  v36 = MEMORY[0x26D5F2D60](v33, v35);

  [v13 setDirectionRole_];

  return v13;
}

double specialized static SiriGeoCommandConverter.convertShowMapPoints(_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemBuilderParams();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277D474E0]) init];
  v6 = Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.language.getter();
  v7 = MEMORY[0x26D5F2D60](v6);

  [v5 setLanguage_];

  [v5 setShowDirections_];
  [v5 setShowTraffic_];
  if (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasItemSource.getter() & 1) != 0 && (Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.hasItemDestination.getter())
  {
    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.itemSource.getter();
    v8 = specialized static SiriGeoCommandConverter.makeActionableMapItem(_:)();
    v9 = *(v1 + 8);
    v9(v4, v0);
    [v5 setItemSource_];

    Apple_Parsec_Siri_V2alpha_ShowMapPointsBuilderParams.itemDestination.getter();
    v10 = specialized static SiriGeoCommandConverter.makeActionableMapItem(_:)();
    v9(v4, v0);
    [v5 setItemDestination_];

    v11 = [objc_allocWithZone(MEMORY[0x277D47490]) init];
    [v11 setAvoidTolls_];
    [v11 setAvoidHighways_];
    [v5 setCarRouteOptions_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *&result = 1;
  *(v12 + 16) = xmmword_266E21F00;
  *(v12 + 32) = v5;
  return result;
}

double specialized static SiriGeoCommandConverter.convertRecordLocationActivity(_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationBuilderParams();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D476B8]) init];
  Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.location.getter();
  v14 = specialized static SiriGeoCommandConverter.makeLocation(_:)();
  (*(v9 + 8))(v12, v8);
  [v13 setLocation_];

  Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.sourceType.getter();
  (*(v1 + 104))(v5, *MEMORY[0x277D39D68], v0);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v1 + 8);
  v15(v5, v0);
  v15(v7, v0);
  if (v20[1] == v20[0])
  {
    v16 = 0x746C7561666544;
  }

  else
  {
    v16 = 0x646F50656D6F48;
  }

  v17 = MEMORY[0x26D5F2D60](v16, 0xE700000000000000);

  [v13 setSourceType_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *&result = 1;
  *(v18 + 16) = xmmword_266E21F00;
  *(v18 + 32) = v13;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType and conformance Apple_Parsec_Siri_V2alpha_RecordLocationActivityBuilderParams.SourceType);
  }

  return result;
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

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [RTVehicleEvent]?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for RTVehicleEvent, 0x277D01420);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t key path getter for INSaveParkingLocationIntentHandler.completion : INSaveParkingLocationIntentHandler@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed INPlacemarkResolutionResult) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for INSaveParkingLocationIntentHandler.completion : INSaveParkingLocationIntentHandler(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [EnhancedMSPSharedTripContact]) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  _sxq_Ri_zRi0_zRi__Ri0__r0_lySay7SiriGeo28EnhancedMSPSharedTripContactVGytIsegnr_SgWOy_0(v3);
  return v7(v6, v5);
}

uint64_t INSaveParkingLocationIntentHandler.completion.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_completion);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  _sxq_Ri_zRi0_zRi__Ri0__r0_lySay7SiriGeo28EnhancedMSPSharedTripContactVGytIsegnr_SgWOy_0(v3);
  return v3;
}

uint64_t INSaveParkingLocationIntentHandler.completion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_completion);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed [EnhancedMSPSharedTripContact]) -> ())?(v6);
}

uint64_t INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)(uint64_t a1)
{
  *(v2 + 320) = a1;
  *(v2 + 328) = v1;
  return MEMORY[0x2822009F8](INSaveParkingLocationIntentHandler.resolveParkingLocation(for:), 0, 0);
}

uint64_t INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)()
{
  v28 = v0;
  v1 = *(*(v0 + 328) + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_logObject);
  *(v0 + 336) = v1;
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_266E03000, v1, v2, "IntentHandler resolve parking location", v3, 2u);
    MEMORY[0x26D5F3640](v3, -1, -1);
  }

  v4 = [*(v0 + 320) parkingLocation];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 location];
    if (v6)
    {

      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v1, v7))
      {
        v8 = *(v0 + 320);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v27 = v10;
        *v9 = 136315138;
        v11 = v8;
        v12 = [v11 description];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v27);

        *(v9 + 4) = v16;
        _os_log_impl(&dword_266E03000, v1, v7, "Intent with parking location from server: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x26D5F3640](v10, -1, -1);
        MEMORY[0x26D5F3640](v9, -1, -1);
      }

      v17 = [objc_opt_self() successWithResolvedPlacemark_];

      v18 = *(v0 + 8);

      return v18(v17);
    }
  }

  v20 = v0 + 296;
  v21 = [objc_allocWithZone(MEMORY[0x277CEF2E8]) init];
  *(v0 + 344) = v21;
  if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
  {
    v22 = *(v0 + 344);
    v23 = *MEMORY[0x277CE4228];
    *(v0 + 80) = v0;
    *(v0 + 120) = v20;
    *(v0 + 88) = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
    v24 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
    *(v0 + 232) = &block_descriptor_3;
    *(v0 + 240) = v24;
    [v22 currentLocationWithAccuracy:v0 + 208 timeout:v23 completion:5.0];
    v25 = v0 + 80;
  }

  else
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v20;
    *(v0 + 24) = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
    v26 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMd, &_sSccySo28AFLocationAuthorizationStyleV_So010CLAccuracyB0Vts5Error_pGMR);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization, @unowned NSError?) -> () with result type (AFLocationAuthorizationStyle, CLAccuracyAuthorization);
    *(v0 + 232) = &block_descriptor_3;
    *(v0 + 240) = v26;
    [v21 currentAuthorizationStyle_];
    v25 = v0 + 16;
  }

  return MEMORY[0x282200938](v25);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 352) = v2;
  if (v2)
  {
    v3 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  else
  {
    v3 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  if ((v0[37] - 3) >= 2)
  {
    v1 = v0[43];
    goto LABEL_5;
  }

  if (v0[38])
  {
    v2 = v0[42];
    v1 = v0[43];
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
LABEL_5:
    v3 = [objc_opt_self() resolutionResultUnsupportedWithReason_];

    v4 = v0[1];

    return v4(v3);
  }

  v6 = v0[43];
  v7 = *MEMORY[0x277CE4228];
  v0[10] = v0;
  v0[15] = v0 + 37;
  v0[11] = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  v8 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo10CLLocationCs5Error_pGMd, &_sSccySo10CLLocationCs5Error_pGMR);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation;
  v0[29] = &block_descriptor_3;
  v0[30] = v8;
  [v6 currentLocationWithAccuracy:v0 + 26 timeout:v7 completion:5.0];

  return MEMORY[0x282200938](v0 + 10);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 360) = v2;
  if (v2)
  {
    v3 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  else
  {
    v3 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[37];
  v0[46] = v1;
  [v1 horizontalAccuracy];
  if (v2 >= *MEMORY[0x277CE4258])
  {
    v11 = v0[42];
    v12 = v0[43];
    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v13 = [objc_opt_self() resolutionResultUnsupportedWithReason_];

    v14 = v0[1];

    return v14(v13);
  }

  else
  {
    v3 = v0[42];
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = v0[42];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v1;
      *v7 = v1;
      v8 = v1;
      _os_log_impl(&dword_266E03000, v5, v4, "resolved location %@", v6, 0xCu);
      outlined destroy of ContactHandle.HandleType?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x26D5F3640](v7, -1, -1);
      MEMORY[0x26D5F3640](v6, -1, -1);
    }

    v9 = [objc_allocWithZone(MEMORY[0x277CBFBE8]) init];
    v0[47] = v9;
    v0[18] = v0;
    v0[23] = v0 + 37;
    v0[19] = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
    v10 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySaySo11CLPlacemarkCGs5Error_pGMd, &_sSccySaySo11CLPlacemarkCGs5Error_pGMR);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [CLPlacemark];
    v0[29] = &block_descriptor_6_1;
    v0[30] = v10;
    [v9 reverseGeocodeLocation:v1 completionHandler:v0 + 26];

    return MEMORY[0x282200938](v0 + 18);
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 384) = v2;
  if (v2)
  {
    v3 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  else
  {
    v3 = INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[37];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = v0[37];
    }

    else
    {
      v9 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x26D5F3000](v9);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    v5 = v0[46];
    v6 = v0[47];
    v7 = v0[43];
    v10 = objc_opt_self();
    v4 = [objc_opt_self() placemarkWithLocation:v5 name:0 postalAddress:0];
    v8 = [v10 successWithResolvedPlacemark_];
    goto LABEL_12;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D5F2F90](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v1 + 32);
  }

  v4 = v3;
  v5 = v0[46];
  v6 = v0[47];
  v7 = v0[43];

  v8 = [objc_opt_self() successWithResolvedPlacemark_];
LABEL_12:
  v11 = v8;

  v12 = v0[1];

  return v12(v11);
}

{
  v1 = v0[45];
  v2 = v0[42];
  swift_willThrow();

  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[42];
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266E03000, v4, v3, "failed to resolve location", v5, 2u);
    MEMORY[0x26D5F3640](v5, -1, -1);
  }

  v6 = v0[43];
  v7 = [objc_opt_self() resolutionResultUnsupportedWithReason_];

  v8 = v0[1];

  return v8(v7);
}

{
  v23 = v0;
  v1 = *(v0 + 352);
  swift_willThrow();
  *(v0 + 208) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  type metadata accessor for related decl 'e' for AFLocationServiceErrorCode(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 336);

    static os_log_type_t.error.getter();
    os_log(_:dso:log:_:_:)();
    v5 = [objc_opt_self() resolutionResultUnsupportedWithReason_];
  }

  else
  {
    v6 = *(v0 + 336);

    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 352);
      v9 = *(v0 + 336);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v13 = *(v0 + 272);
      v12 = *(v0 + 280);
      v14 = *(v0 + 288);
      v15 = Error.localizedDescription.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v22);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_266E03000, v9, v7, "Unexpected error %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x26D5F3640](v11, -1, -1);
      MEMORY[0x26D5F3640](v10, -1, -1);
    }

    v19 = *(v0 + 344);
    v18 = *(v0 + 352);
    v5 = [objc_opt_self() resolutionResultUnsupportedWithReason_];
  }

  v20 = *(v0 + 8);

  return v20(v5);
}

{
  v1 = v0[48];
  swift_willThrow();

  v2 = v0[46];
  v3 = v0[47];
  v4 = v0[43];
  v5 = objc_opt_self();
  v6 = [objc_opt_self() placemarkWithLocation:v2 name:0 postalAddress:0];
  v7 = [v5 successWithResolvedPlacemark_];

  v8 = v0[1];

  return v8(v7);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned AFLocationAuthorizationStyle, @unowned CLAccuracyAuthorization, @unowned NSError?) -> () with result type (AFLocationAuthorizationStyle, CLAccuracyAuthorization)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned CLLocation?, @unowned NSError?) -> () with result type CLLocation(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSArray?, @unowned NSError?) -> () with result type [CLPlacemark](uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for CLPlacemark, 0x277CBFC40);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:);

  return INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)(v6);
}

uint64_t @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

void INSaveParkingLocationIntentHandler.handle(intent:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v12 = *&v3[OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_logObject];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v8 + 8))(v11, v7);
  if (one-time initialization token for routineManager != -1)
  {
    swift_once();
  }

  v13 = static ParkingLocationService.routineManager;
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a1;
  aBlock[4] = partial apply for closure #1 in INSaveParkingLocationIntentHandler.handle(intent:completion:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [RTVehicleEvent]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_9;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  v17 = a1;

  [v13 fetchLastVehicleEventsWithHandler_];
  _Block_release(v15);
}

void closure #1 in INSaveParkingLocationIntentHandler.handle(intent:completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  v11 = type metadata accessor for OSSignpostID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a2;
    v17 = static os_log_type_t.error.getter();
    v18 = *(a3 + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_logObject);
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v66 = a2;
      v67 = v20;
      *v19 = 136315138;
      v21 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v22 = String.init<A>(describing:)();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v67);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_266E03000, v18, v17, "error fetching vehicle event before saving new location: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x26D5F3640](v20, -1, -1);
      MEMORY[0x26D5F3640](v19, -1, -1);
    }

    v25 = [objc_allocWithZone(MEMORY[0x277CD3FF8]) initWithCode:4 userActivity:0];
    a4();
  }

  else
  {
    v65 = a5;
    static os_signpost_type_t.end.getter();
    v26 = *(a3 + OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_logObject);
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v27 = *(v12 + 8);
    v27(v15, v11);
    v28 = [a6 parkingLocation];
    if (v28 && (v29 = v28, v30 = [v28 location], v29, v30))
    {
      v63 = [objc_allocWithZone(MEMORY[0x277CD3FF8]) initWithCode:3 userActivity:0];
      if (one-time initialization token for routineManager != -1)
      {
        swift_once();
      }

      v64 = a4;
      v31 = static ParkingLocationService.routineManager;
      [static ParkingLocationService.routineManager clearAllVehicleEvents];
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_266E03000, v26, v32, "Deleted all saved parking locations", v33, 2u);
        MEMORY[0x26D5F3640](v33, -1, -1);
      }

      static os_signpost_type_t.begin.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v27(v15, v11);
      v34 = v30;
      v35 = [a6 parkingNote];
      [v31 vehicleEventAtLocation:v34 notes:v35];

      static os_signpost_type_t.end.getter();
      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:_:_:)();
      v27(v15, v11);
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v67 = v38;
        *v37 = 136315138;
        v39 = v34;
        v40 = [v39 description];
        v41 = v34;
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v67);

        *(v37 + 4) = v45;
        v34 = v41;
        _os_log_impl(&dword_266E03000, v26, v36, "Setting parking location to: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x26D5F3640](v38, -1, -1);
        MEMORY[0x26D5F3640](v37, -1, -1);
      }

      v46 = [a6 parkingLocation];
      v47 = v63;
      [v63 setParkingLocation_];

      v48 = [a6 parkingNote];
      [v47 setParkingNote_];

      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v67 = v51;
        *v50 = 136315138;
        v52 = v47;
        v53 = v34;
        v54 = [v52 description];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v34 = v53;
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v67);

        *(v50 + 4) = v58;
        _os_log_impl(&dword_266E03000, v26, v49, "Sending response : %s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x26D5F3640](v51, -1, -1);
        MEMORY[0x26D5F3640](v50, -1, -1);
      }

      (v64)(v47);
    }

    else
    {
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_266E03000, v26, v59, "No location resolved", v60, 2u);
        MEMORY[0x26D5F3640](v60, -1, -1);
      }

      v61 = [objc_allocWithZone(MEMORY[0x277CD3FF8]) initWithCode:4 userActivity:0];
      a4();
    }
  }
}

id INSaveParkingLocationIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INSaveParkingLocationIntentHandler.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_logObject;
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  *&v0[v2] = OS_os_log.init(subsystem:category:)();
  v3 = &v0[OBJC_IVAR____TtC7SiriGeo34INSaveParkingLocationIntentHandler_completion];
  v4 = type metadata accessor for INSaveParkingLocationIntentHandler();
  *v3 = 0;
  *(v3 + 1) = 0;
  v6.receiver = v1;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

id INSaveParkingLocationIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INSaveParkingLocationIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = _sIeghH_IeAgH_TRTQ0_;

  return v7();
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return v8();
}

uint64_t _sIeAgH_ytIeAgHr_TRTQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  outlined init with copy of TaskPriority?(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of ContactHandle.HandleType?(v12, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    outlined destroy of ContactHandle.HandleType?(a3, &_sScPSgMd, &_sScPSgMR);

    return v23;
  }

LABEL_8:
  outlined destroy of ContactHandle.HandleType?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TQ0_()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_266E1FC04()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266E1FC9C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_266E1FCD4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return @objc closure #1 in INSaveParkingLocationIntentHandler.resolveParkingLocation(for:)(v2, v3, v4);
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266E20010()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeghH_IeAgH_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_34(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sIeAgH_ytIeAgHr_TRTQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5(a1, v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed INPlacemarkResolutionResult) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

NSPersonNameComponents __swiftcall PersonNameComponents._bridgeToObjectiveC()()
{
  v0 = MEMORY[0x28211C760]();
  result._private = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}