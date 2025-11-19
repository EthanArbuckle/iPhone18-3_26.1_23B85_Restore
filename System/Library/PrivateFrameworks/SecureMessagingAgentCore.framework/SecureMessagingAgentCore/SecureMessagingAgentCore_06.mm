id specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, void *a2)
{
  v5 = *v2;

  v6 = __CocoaSet.count.getter();
  v7 = swift_unknownObjectRetain();
  v8 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC24SecureMessagingAgentCore9XPCDaemonC_Tt1g5(v7, v6);
  v19 = v8;
  v9 = *(v8 + 40);
  Hasher.init(_seed:)();
  v10 = *(*a2 + 144);
  v11 = (*a2 + 144);

  v10(&v18);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v8 + 32);
  v14 = v12 & ~v13;
  if ((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v3 = &unk_279B93000;
    while (1)
    {
      v11 = a2[7];
      if ([*(*(*(v8 + 48) + 8 * v14) + 56) isEqual_])
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v16 = *(*(v8 + 48) + 8 * v14);
  specialized _NativeSet._delete(at:)(v14);
  result = [v11 v3[84]];
  if (result)
  {
    *v2 = v19;
    return v16;
  }

  else
  {
    __break(1u);
  }

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
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();
        v13 = *(*v12 + 144);

        v13(v22);
        v14 = Hasher._finalize()();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t specialized XPCDaemon.init(interfaceProvider:clientConnection:featureFlagStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for LogCategory();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a5;
  v24 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  (*(v13 + 104))(v16, *MEMORY[0x277D4C928], v12);
  secureMessagingLogger(category:)();
  (*(v13 + 8))(v16, v12);
  outlined init with take of MLS.SwiftMLSPersisterProtocol(&v22, a4 + 16);
  *(a4 + 56) = a2;
  v18 = OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_featureFlagStore;
  v19 = type metadata accessor for SMAFeatureFlagsStore();
  (*(*(v19 - 8) + 32))(a4 + v18, a3, v19);
  return a4;
}

uint64_t specialized XPCServer.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogCategory();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SMAFeatureFlagsStore();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26524C000, v13, v14, "XPCServer -- New Incoming Connection", v15, 2u);
    MEMORY[0x2667577B0](v15, -1, -1);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v16;
  v37[1] = v16;
  v44 = partial apply for closure #1 in XPCServer.listener(_:shouldAcceptNewConnection:);
  v45 = v19;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v42 = thunk for @escaping @callee_guaranteed () -> ();
  v43 = &block_descriptor_7;
  v20 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v20);
  default argument 0 of SMAFeatureFlagsStore.init(overrides:)();
  SMAFeatureFlagsStore.init(overrides:)();
  v21 = type metadata accessor for XPCDaemon(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v43 = type metadata accessor for XPCServer(0);
  v44 = &protocol witness table for XPCServer;
  *&aBlock = v2;
  v25 = v2;
  v26 = v12;
  v27 = a1;
  (*(v5 + 104))(v8, *MEMORY[0x277D4C928], v4);
  v28 = v25;
  secureMessagingLogger(category:)();
  (*(v5 + 8))(v8, v4);
  outlined init with take of MLS.SwiftMLSPersisterProtocol(&aBlock, (v24 + 2));
  v24[7] = a1;
  (*(v38 + 32))(v24 + OBJC_IVAR____TtC24SecureMessagingAgentCore9XPCDaemon_featureFlagStore, v26, v39);
  swift_beginAccess();
  v29 = *v17;
  *v17 = v24;
  v30 = v27;

  v31 = v24[7];

  v33 = MEMORY[0x266756730](v32);
  [v31 setExportedInterface_];

  [v31 setExportedObject_];
  [v31 resume];
  v34 = *((*MEMORY[0x277D85000] & *v28) + 0x88);

  v35 = v34(&aBlock);
  specialized Set._Variant.insert(_:)(&v40, v24);

  v35(&aBlock, 0);

  return 1;
}

uint64_t specialized XPCDaemon.__allocating_init(interfaceProvider:clientConnection:featureFlagStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for XPCDaemon(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v11 + 16))(v14, a1, a5);
  return specialized XPCDaemon.init(interfaceProvider:clientConnection:featureFlagStore:)(v14, a2, a3, v18, a5, a6);
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for XPCServer(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2652CC760@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_2652CC7BC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);

  return v3(v4);
}

uint64_t type metadata completion function for XPCServer()
{
  result = type metadata accessor for Logger();
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

uint64_t type metadata completion function for XPCDaemon()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for SMAFeatureFlagsStore();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t specialized XPCDaemon.deliveryInterface(completion:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCUtils.XPCClientCreationError.ErrorType();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCUtils.XPCClientCreationError();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SMAFeatureFlagsKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D4CC38], v12);
  v17 = SMAFeatureFlagsStore.isEnabled(feature:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_4;
  }

  v18 = a1[7];
  v19 = static XPCUtils.SecureMessagingAgentDeliveryEntitlement.getter();
  v20 = MEMORY[0x266756A10](v19);

  v21 = [v18 valueForEntitlement_];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v43);
LABEL_4:
    v22 = a1[5];
    v23 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v22);
    v24 = (*(v23 + 8))(v22, v23);
    (*(a2 + 16))(a2, v24, 0);
    return swift_unknownObjectRelease();
  }

  memset(v43, 0, sizeof(v43));
  outlined destroy of Any?(v43);
  v26 = type metadata accessor for JSONEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  (*(v41 + 104))(v7, *MEMORY[0x277D4D298], v4);
  XPCUtils.XPCClientCreationError.init(type:underlyingErrorDescription:)();
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError(&lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError, MEMORY[0x277D4D2A0]);
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v31 = v30;
  (*(v42 + 8))(v11, v8);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v43[0] = v35;
    *v34 = 136315138;
    v36 = static XPCUtils.SecureMessagingAgentDeliveryEntitlement.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v43);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_26524C000, v32, v33, "Client missing required entitlement { %s }", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x2667577B0](v35, -1, -1);
    MEMORY[0x2667577B0](v34, -1, -1);
  }

  if (v31 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  (*(a2 + 16))(a2, 0, isa);

  return outlined consume of Data?(v29, v31);
}

uint64_t specialized XPCDaemon.registrationInterface(completion:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCUtils.XPCClientCreationError.ErrorType();
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for XPCUtils.XPCClientCreationError();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SMAFeatureFlagsKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D4CC38], v12);
  v17 = SMAFeatureFlagsStore.isEnabled(feature:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    goto LABEL_4;
  }

  v18 = a1[7];
  v19 = static XPCUtils.SecureMessagingAgentRegistrationEntitlement.getter();
  v20 = MEMORY[0x266756A10](v19);

  v21 = [v18 valueForEntitlement_];

  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v43);
LABEL_4:
    v22 = a1[5];
    v23 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v22);
    v24 = (*(v23 + 16))(v22, v23);
    (*(a2 + 16))(a2, v24, 0);
    return swift_unknownObjectRelease();
  }

  memset(v43, 0, sizeof(v43));
  outlined destroy of Any?(v43);
  v26 = type metadata accessor for JSONEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  (*(v41 + 104))(v7, *MEMORY[0x277D4D298], v4);
  XPCUtils.XPCClientCreationError.init(type:underlyingErrorDescription:)();
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError(&lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError, MEMORY[0x277D4D2A0]);
  v29 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v31 = v30;
  (*(v42 + 8))(v11, v8);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v43[0] = v35;
    *v34 = 136315138;
    v36 = static XPCUtils.SecureMessagingAgentRegistrationEntitlement.getter();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v43);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_26524C000, v32, v33, "Client missing required entitlement { %s }", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x2667577B0](v35, -1, -1);
    MEMORY[0x2667577B0](v34, -1, -1);
  }

  if (v31 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  (*(a2 + 16))(a2, 0, isa);

  return outlined consume of Data?(v29, v31);
}

uint64_t sub_2652CD65C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2652CD694()
{
  MEMORY[0x266757840](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2652CD6CC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t static SqliteError.failed(_:)()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v0);

  return 0;
}

uint64_t SqliteStore.__allocating_init()()
{
  v1 = type metadata accessor for LogCategory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 48);
  v7 = *(v0 + 52);
  v8 = swift_allocObject();
  swift_defaultActor_initialize();
  (*(v2 + 104))(v5, *MEMORY[0x277D4C920], v1);
  secureMessagingLogger(category:)();
  (*(v2 + 8))(v5, v1);
  *(v8 + OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db) = 0;
  return v8;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SqliteError.ErrorType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SqliteError.ErrorType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance SqliteError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type SqliteError.ErrorType and conformance SqliteError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance SqliteError.CodingKeys()
{
  if (*v0)
  {
    result = 0xD00000000000001ALL;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SqliteError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000026534B580 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SqliteError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SqliteError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SqliteError.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore11SqliteErrorV10CodingKeys33_062584879AC908161C18F54013E1E93ALLOGMd, &_ss22KeyedEncodingContainerVy24SecureMessagingAgentCore11SqliteErrorV10CodingKeys33_062584879AC908161C18F54013E1E93ALLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  lazy protocol witness table accessor for type SqliteError.ErrorType and conformance SqliteError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for VersatileError.underlyingErrorDescription.getter in conformance SqliteError()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

_BYTE *protocol witness for VersatileError.init(type:underlyingErrorDescription:) in conformance SqliteError@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance SqliteError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError and conformance SqliteError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance SqliteError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError and conformance SqliteError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SqliteError@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SqliteError.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t protocol witness for CustomNSError.errorCode.getter in conformance SqliteError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError and conformance SqliteError();

  return MEMORY[0x2821AC530](a1, v2);
}

uint64_t protocol witness for CustomNSError.errorUserInfo.getter in conformance SqliteError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SqliteError and conformance SqliteError();

  return MEMORY[0x2821AC528](a1, v2);
}

uint64_t SQLITE_TRANSIENT.getter()
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  return SQLITE_TRANSIENT;
}

uint64_t SqliteStore.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SqliteStore.db.getter()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SqliteStore.db.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SqliteStore.init()()
{
  v1 = type metadata accessor for LogCategory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  (*(v2 + 104))(v5, *MEMORY[0x277D4C920], v1);
  secureMessagingLogger(category:)();
  (*(v2 + 8))(v5, v1);
  *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db) = 0;
  return v0;
}

uint64_t SqliteStore.prepare(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](SqliteStore.prepare(_:), v2, 0);
}

uint64_t SqliteStore.prepare(_:)()
{
  v32 = v0;
  v31 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v23 = 1;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    goto LABEL_9;
  }

  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  *(v0 + 40) = 0;
  v6 = String.utf8CString.getter();
  v7 = strdup((v6 + 32));

  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = sqlite3_prepare_v2(v3, v7, -1, (v0 + 40), 0);
  if (v9)
  {
    v10 = v9;
    v11 = *(v0 + 64) + OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_logger;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
LABEL_7:

      v29 = 0x726F7272456C7173;
      v30 = 0xE90000000000003ALL;
      *(v0 + 72) = v10;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266756A70](v19);

      v20 = v29;
      v21 = v30;
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v22 = 0;
      *(v22 + 8) = v20;
      *(v22 + 16) = v21;
LABEL_9:
      swift_willThrow();
      v24 = *(v0 + 8);
      v25 = *MEMORY[0x277D85DE8];

      return v24();
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v29 = v15;
    *v14 = 67109378;
    *(v14 + 4) = v10;
    *(v14 + 8) = 2080;
    result = sqlite3_errmsg(v3);
    if (result)
    {
      v16 = String.init(cString:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

      *(v14 + 10) = v18;
      _os_log_impl(&dword_26524C000, v12, v13, "prepare: SQLite error %d: %s", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x2667577B0](v15, -1, -1);
      MEMORY[0x2667577B0](v14, -1, -1);
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  v26 = *(v0 + 40);
  v27 = *(v0 + 8);
  v28 = *MEMORY[0x277D85DE8];

  return v27(v26);
}

uint64_t SqliteStore.execute(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](SqliteStore.execute(_:), v1, 0);
}

uint64_t SqliteStore.execute(_:)()
{
  v36 = v0;
  if (sqlite3_sql(*(v0 + 40)))
  {
    v1 = *(v0 + 48);
    v2 = String.init(cString:)();
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34 = v8;
      *v7 = 136315138;
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v34);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_26524C000, v5, v6, "%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x2667577B0](v8, -1, -1);
      MEMORY[0x2667577B0](v7, -1, -1);
    }

    else
    {
    }
  }

  v10 = sqlite3_step(*(v0 + 40));
  if (v10 != 101)
  {
    v13 = v10;
    v14 = *(v0 + 48);
    v15 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
    swift_beginAccess();
    if (*(v14 + v15))
    {
      v16 = *(v0 + 48);

      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      v19 = os_log_type_enabled(v17, v18);
      v20 = *(v0 + 48);
      if (!v19)
      {

        goto LABEL_16;
      }

      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 67109378;
      *(v21 + 4) = v13;
      *(v21 + 8) = 2080;
      v23 = sqlite3_errmsg(*(v14 + v15));

      if (!v23)
      {
        __break(1u);
        return result;
      }

      v25 = String.init(cString:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v34);

      *(v21 + 10) = v27;
      _os_log_impl(&dword_26524C000, v17, v18, "execute: SQLite error %d: %s", v21, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x2667577B0](v22, -1, -1);
    }

    else
    {
      v17 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v17, v28))
      {
LABEL_14:

LABEL_16:
        v29 = *(v0 + 40);
        v34 = 0x726F7272456C7173;
        v35 = 0xE90000000000003ALL;
        *(v0 + 56) = v13;
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v30);

        v31 = v34;
        v32 = v35;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v33 = 0;
        *(v33 + 8) = v31;
        *(v33 + 16) = v32;
        swift_willThrow();
        sqlite3_finalize(v29);
        v11 = *(v0 + 8);
        v12 = 0;
        goto LABEL_17;
      }

      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = v13;
      _os_log_impl(&dword_26524C000, v17, v28, "execute: SQLite error %d: no db", v21, 8u);
    }

    MEMORY[0x2667577B0](v21, -1, -1);
    goto LABEL_14;
  }

  sqlite3_finalize(*(v0 + 40));
  v11 = *(v0 + 8);
  v12 = 1;
LABEL_17:

  return v11(v12);
}

uint64_t SqliteStore.createTable(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](SqliteStore.createTable(_:), v2, 0);
}

uint64_t SqliteStore.createTable(_:)()
{
  v25 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  v0[8] = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[9] = v3;
  if (v3)
  {
    v4 = v0[5];
    v5 = (*(v0[6] + 8))();
    if (v5)
    {
      v6 = v5;
      v7 = swift_task_alloc();
      v0[10] = v7;
      *v7 = v0;
      v7[1] = SqliteStore.createTable(_:);
      v8 = v0[7];

      return SqliteStore.execute(_:)(v6);
    }

    v13 = v0[7];

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[7];
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = sqlite3_errmsg(*(v1 + v2));

      if (!v20)
      {
        __break(1u);
        return result;
      }

      v21 = String.init(cString:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v24);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_26524C000, v14, v15, "createTable: SQLite error %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x2667577B0](v19, -1, -1);
      MEMORY[0x2667577B0](v18, -1, -1);
    }

    else
    {
    }

    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v11 = v10;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  swift_willThrow();
  v12 = v0[1];

  return v12(0);
}

{
  v24 = v0;
  if (*(v0 + 128) != 1)
  {
    v5 = 0;
LABEL_5:
    v4 = *(v0 + 8);
    goto LABEL_6;
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  result = (*(*(v0 + 48) + 16))(*(v0 + 72));
  *(v0 + 96) = result;
  if (v1)
  {
LABEL_3:
    v4 = *(v0 + 8);
    v5 = 0;
LABEL_6:

    return v4(v5);
  }

  v6 = *(result + 16);
  *(v0 + 104) = v6;
  *(v0 + 112) = 0;
  if (!v6)
  {

    v5 = *(v0 + 112) == *(v0 + 104);
    goto LABEL_5;
  }

  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_22;
  }

  v7 = *(result + 32);
  if (!v7)
  {
    v10 = *(v0 + 56);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      v21 = *(v0 + 56);

      goto LABEL_20;
    }

    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = sqlite3_errmsg(*(v13 + v14));

    if (v17)
    {
      v18 = String.init(cString:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_26524C000, v11, v12, "createTable: SQLite error %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x2667577B0](v16, -1, -1);
      MEMORY[0x2667577B0](v15, -1, -1);

LABEL_20:
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v22 = 2;
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      swift_willThrow();
      goto LABEL_3;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = SqliteStore.createTable(_:);
  v9 = *(v0 + 56);

  return SqliteStore.execute(_:)(v7);
}

{
  v24 = v0;
  if ((*(v0 + 129) & 1) == 0 || (v1 = *(v0 + 104), v2 = *(v0 + 112) + 1, *(v0 + 112) = v2, v2 == v1))
  {
    v3 = *(v0 + 96);

    v4 = *(v0 + 112) == *(v0 + 104);
    v5 = *(v0 + 8);
LABEL_4:

    return v5(v4);
  }

  result = *(v0 + 96);
  if (v2 >= *(result + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *(result + 8 * v2 + 32);
  if (!v7)
  {
    v10 = *(v0 + 56);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      v21 = *(v0 + 56);

      goto LABEL_16;
    }

    v13 = *(v0 + 56);
    v14 = *(v0 + 64);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = sqlite3_errmsg(*(v13 + v14));

    if (v17)
    {
      v18 = String.init(cString:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v23);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_26524C000, v11, v12, "createTable: SQLite error %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x2667577B0](v16, -1, -1);
      MEMORY[0x2667577B0](v15, -1, -1);

LABEL_16:
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v22 = 2;
      *(v22 + 8) = 0;
      *(v22 + 16) = 0;
      swift_willThrow();
      v5 = *(v0 + 8);
      v4 = 0;
      goto LABEL_4;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  v8 = swift_task_alloc();
  *(v0 + 120) = v8;
  *v8 = v0;
  v8[1] = SqliteStore.createTable(_:);
  v9 = *(v0 + 56);

  return SqliteStore.execute(_:)(v7);
}

uint64_t SqliteStore.createTable(_:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    v9 = *(v4 + 56);
    *(v4 + 128) = a1 & 1;

    return MEMORY[0x2822009F8](SqliteStore.createTable(_:), v9, 0);
  }
}

{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 96);

    v8 = *(v6 + 8);

    return v8(0);
  }

  else
  {
    v10 = *(v4 + 56);
    *(v4 + 129) = a1 & 1;

    return MEMORY[0x2822009F8](SqliteStore.createTable(_:), v10, 0);
  }
}

uint64_t SqliteStore.dropTable(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](SqliteStore.dropTable(_:), v2, 0);
}

uint64_t SqliteStore.dropTable(_:)()
{
  v24 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    v3 = v0[5];
    v4 = (*(v0[6] + 24))();
    if (v4)
    {
      v5 = v4;
      v6 = swift_task_alloc();
      v0[8] = v6;
      *v6 = v0;
      v6[1] = SqliteStore.dropTable(_:);
      v7 = v0[7];

      return SqliteStore.execute(_:)(v5);
    }

    v12 = v0[7];

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[7];
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      v19 = sqlite3_errmsg(*(v1 + v2));

      if (!v19)
      {
        __break(1u);
        return result;
      }

      v20 = String.init(cString:)();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v23);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_26524C000, v13, v14, "dropTable: SQLite error %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x2667577B0](v18, -1, -1);
      MEMORY[0x2667577B0](v17, -1, -1);
    }

    else
    {
    }

    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v10 = v9;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  swift_willThrow();
  v11 = v0[1];

  return v11(0);
}

uint64_t SqliteStore.dropTable(_:)(char a1)
{
  v4 = *(*v2 + 64);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t SqliteStore.insert(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](SqliteStore.insert(_:), v1, 0);
}

uint64_t SqliteStore.insert(_:)()
{
  v27 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v0[5];
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v7 = (*(v6 + 32))(v3, v5, v6);
    if (v7)
    {
      v8 = v7;
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = SqliteStore.update(_:);
      v10 = v0[6];

      return SqliteStore.execute(_:)(v8);
    }

    v15 = v0[6];

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[6];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      v22 = sqlite3_errmsg(*(v1 + v2));

      if (!v22)
      {
        __break(1u);
        return result;
      }

      v23 = String.init(cString:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v26);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_26524C000, v16, v17, "insert: SQLite error %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x2667577B0](v21, -1, -1);
      MEMORY[0x2667577B0](v20, -1, -1);
    }

    else
    {
    }

    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  swift_willThrow();
  v14 = v0[1];

  return v14(0);
}

uint64_t SqliteStore.update(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](SqliteStore.update(_:), v1, 0);
}

uint64_t SqliteStore.update(_:)()
{
  v27 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v0[5];
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v7 = (*(v6 + 40))(v3, v5, v6);
    if (v7)
    {
      v8 = v7;
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = SqliteStore.update(_:);
      v10 = v0[6];

      return SqliteStore.execute(_:)(v8);
    }

    v15 = v0[6];

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[6];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      v22 = sqlite3_errmsg(*(v1 + v2));

      if (!v22)
      {
        __break(1u);
        return result;
      }

      v23 = String.init(cString:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v26);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_26524C000, v16, v17, "update: SQLite error %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x2667577B0](v21, -1, -1);
      MEMORY[0x2667577B0](v20, -1, -1);
    }

    else
    {
    }

    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  swift_willThrow();
  v14 = v0[1];

  return v14(0);
}

uint64_t SqliteStore.delete(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](SqliteStore.delete(_:), v1, 0);
}

uint64_t SqliteStore.delete(_:)()
{
  v27 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v0[5];
    v5 = v4[3];
    v6 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v7 = (*(v6 + 48))(v3, v5, v6);
    if (v7)
    {
      v8 = v7;
      v9 = swift_task_alloc();
      v0[7] = v9;
      *v9 = v0;
      v9[1] = SqliteStore.delete(_:);
      v10 = v0[6];

      return SqliteStore.execute(_:)(v8);
    }

    v15 = v0[6];

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[6];
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      v22 = sqlite3_errmsg(*(v1 + v2));

      if (!v22)
      {
        __break(1u);
        return result;
      }

      v23 = String.init(cString:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v26);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_26524C000, v16, v17, "delete: SQLite error %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x2667577B0](v21, -1, -1);
      MEMORY[0x2667577B0](v20, -1, -1);
    }

    else
    {
    }

    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  swift_willThrow();
  v14 = v0[1];

  return v14(0);
}

uint64_t SqliteStore.delete(_:)(char a1)
{
  v4 = *(*v2 + 56);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t SqliteStore.query<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[9] = AssociatedTypeWitness;
  v6 = type metadata accessor for Optional();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = *(AssociatedTypeWitness - 8);
  v4[13] = v9;
  v10 = *(v9 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](SqliteStore.query<A>(_:), v3, 0);
}

uint64_t SqliteStore.query<A>(_:)()
{
  v65 = v0;
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = (*(*(v0 + 56) + 24))(v3, *(v0 + 48));
    v6 = v5;
    if (v5)
    {
      v7 = sqlite3_step(v5);
      if ((v7 & 0xFFFFFFFE) == 0x64)
      {
        v8 = *(v0 + 72);
        v9 = Array.init()();
        v63 = v9;
        if (v7 == 100)
        {
          v10 = *(v0 + 104);
          v11 = *(*(v0 + 56) + 16);
          v12 = (v10 + 48);
          v61 = (v10 + 16);
          v62 = (v10 + 32);
          v60 = (v10 + 8);
          v13 = (*(v0 + 88) + 8);
          do
          {
            v24 = *(v0 + 96);
            v25 = *(v0 + 48);
            v26 = *(v0 + 56);
            v27 = v11();
            v27(v6);
            v28 = *(v0 + 96);
            v29 = *(v0 + 72);

            if ((*v12)(v28, 1, v29) == 1)
            {
              (*v13)(*(v0 + 96), *(v0 + 80));
            }

            else
            {
              v22 = *(v0 + 112);
              v21 = *(v0 + 120);
              v23 = *(v0 + 72);
              (*v62)(v21, *(v0 + 96), v23);
              (*v61)(v22, v21, v23);
              type metadata accessor for Array();
              Array.append(_:)();
              (*v60)(v21, v23);
            }
          }

          while (sqlite3_step(v6) == 100);
          v9 = v63;
        }

        v57 = *(v0 + 112);
        v56 = *(v0 + 120);
        v58 = *(v0 + 96);
        sqlite3_finalize(v6);

        v59 = *(v0 + 8);

        return v59(v9);
      }

      v41 = *(v0 + 64);

      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = *(v0 + 64);
      if (!v44)
      {

        goto LABEL_24;
      }

      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v63 = v47;
      *v46 = 136315138;
      v48 = sqlite3_errmsg(*(v1 + v2));

      if (v48)
      {
        v49 = String.init(cString:)();
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v63);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_26524C000, v42, v43, "query-sqlite3_step: SQLite error %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x2667577B0](v47, -1, -1);
        MEMORY[0x2667577B0](v46, -1, -1);

LABEL_24:
        v63 = 0x726F7272456C7173;
        v64 = 0xE90000000000003ALL;
        *(v0 + 128) = v7;
        v52 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v52);

        v53 = v63;
        v54 = v64;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v55 = 0;
        *(v55 + 8) = v53;
        *(v55 + 16) = v54;
        swift_willThrow();
        sqlite3_finalize(v6);
        goto LABEL_8;
      }

LABEL_30:
      __break(1u);
      return result;
    }

    v30 = *(v0 + 64);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 64);
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v63 = v36;
      *v35 = 136315138;
      v37 = sqlite3_errmsg(*(v1 + v2));

      if (!v37)
      {
        __break(1u);
        goto LABEL_30;
      }

      v38 = String.init(cString:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v63);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_26524C000, v31, v32, "query-queryStatement: SQLite error %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x2667577B0](v36, -1, -1);
      MEMORY[0x2667577B0](v35, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v15 = 2;
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    v15 = 1;
  }

  *v14 = v15;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  swift_willThrow();
LABEL_8:
  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 96);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t SqliteStore.beginTransaction()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = SqliteStore.beginTransaction();

  return SqliteStore.prepare(_:)(0xD000000000000012, 0x800000026534A630);
}

{
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = SqliteStore.beginTransaction();
    v3 = v0[2];

    return SqliteStore.execute(_:)(v1);
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v5 = 2;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    swift_willThrow();
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t SqliteStore.beginTransaction()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(*v2 + 32) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v3 + 16);

    return MEMORY[0x2822009F8](SqliteStore.beginTransaction(), v8, 0);
  }
}

uint64_t SqliteStore.endTransaction()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = SqliteStore.endTransaction();

  return SqliteStore.prepare(_:)(0x3B54494D4D4F43, 0xE700000000000000);
}

{
  v1 = v0[4];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = SqliteStore.endTransaction();
    v3 = v0[2];

    return SqliteStore.execute(_:)(v1);
  }

  else
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v5 = 2;
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    swift_willThrow();
    v6 = v0[1];

    return v6(0);
  }
}

uint64_t SqliteStore.endTransaction()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(*v2 + 32) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v3 + 16);

    return MEMORY[0x2822009F8](SqliteStore.endTransaction(), v8, 0);
  }
}

uint64_t SqliteStore.endTransaction()(char a1)
{
  v4 = *(*v2 + 40);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t SqliteStore.rollbackTransaction()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = SqliteStore.beginTransaction();

  return SqliteStore.prepare(_:)(0x4B4341424C4C4F52, 0xE90000000000003BLL);
}

uint64_t SqliteStore.open(filePath:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](SqliteStore.open(filePath:), v2, 0);
}

uint64_t SqliteStore.open(filePath:)()
{
  v33 = v0;
  v1 = *(v0 + 56);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "Opening DB.", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v6 = *(v0 + 40);
  v5 = *(v0 + 48);

  v7 = String.utf8CString.getter();
  v8 = strdup((v7 + 32));

  if (!v8)
  {
    __break(1u);
    goto LABEL_20;
  }

  v10 = *(v0 + 56);
  v11 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v12 = sqlite3_open(v8, (v10 + v11));
  swift_endAccess();
  if (v12)
  {
    if (!*(v10 + v11))
    {
      v14 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v14, v26))
      {
LABEL_13:

LABEL_15:
        v31 = 0x726F7272456C7173;
        v32 = 0xE90000000000003ALL;
        *(v0 + 16) = v12;
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v27);

        v28 = v31;
        v29 = v32;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v30 = 0;
        *(v30 + 8) = v28;
        *(v30 + 16) = v29;
        swift_willThrow();
        v24 = *(v0 + 8);
        v25 = 0;
        goto LABEL_16;
      }

      v18 = swift_slowAlloc();
      *v18 = 67109120;
      *(v18 + 4) = v12;
      _os_log_impl(&dword_26524C000, v14, v26, "open: SQLite error %d: no db", v18, 8u);
LABEL_12:
      MEMORY[0x2667577B0](v18, -1, -1);
      goto LABEL_13;
    }

    v13 = *(v0 + 56);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 56);
    if (!v16)
    {

      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31 = v19;
    *v18 = 67109378;
    *(v18 + 4) = v12;
    *(v18 + 8) = 2080;
    v20 = sqlite3_errmsg(*(v10 + v11));

    if (v20)
    {
      v21 = String.init(cString:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v31);

      *(v18 + 10) = v23;
      _os_log_impl(&dword_26524C000, v14, v15, "open: SQLite error %d: %s", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x2667577B0](v19, -1, -1);
      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  v24 = *(v0 + 8);
  v25 = 1;
LABEL_16:

  return v24(v25);
}

uint64_t SqliteStore.close()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x2822009F8](SqliteStore.close(), v0, 0);
}

{
  v27 = v0;
  v1 = *(v0 + 40);
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v18 = 1;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
LABEL_10:
    swift_willThrow();
    v19 = *(v0 + 8);
    v20 = 0;
    goto LABEL_11;
  }

  v4 = sqlite3_close_v2(v3);
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 40);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 40);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25 = v12;
      *v11 = 67109378;
      *(v11 + 4) = v5;
      *(v11 + 8) = 2080;
      v13 = sqlite3_errmsg(*(v1 + v2));

      if (!v13)
      {
        __break(1u);
        return result;
      }

      v15 = String.init(cString:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v25);

      *(v11 + 10) = v17;
      _os_log_impl(&dword_26524C000, v7, v8, "close: SQLite error %d: %s", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x2667577B0](v12, -1, -1);
      MEMORY[0x2667577B0](v11, -1, -1);
    }

    else
    {
    }

    v25 = 0x726F7272456C7173;
    v26 = 0xE90000000000003ALL;
    *(v0 + 48) = v5;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v21);

    v22 = v25;
    v23 = v26;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = v22;
    *(v24 + 16) = v23;
    goto LABEL_10;
  }

  v19 = *(v0 + 8);
  v20 = 1;
LABEL_11:

  return v19(v20);
}

uint64_t SqliteStore.deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SqliteStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t String.toUnsafePointer()()
{
  v0 = String.utf8CString.getter();
  v1 = strdup((v0 + 32));

  if (v1)
  {
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t specialized static SqliteError.== infix(_:_:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        if (a2 == a5 && a3 == a6)
        {
          return 1;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t specialized SqliteError.ErrorType.init(rawValue:)(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys;
  if (!lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SqliteError.ErrorType and conformance SqliteError.ErrorType()
{
  result = lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType;
  if (!lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType;
  if (!lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType;
  if (!lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType;
  if (!lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType;
  if (!lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SqliteError.ErrorType and conformance SqliteError.ErrorType);
  }

  return result;
}

uint64_t specialized SqliteError.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore11SqliteErrorV10CodingKeys33_062584879AC908161C18F54013E1E93ALLOGMd, &_ss22KeyedDecodingContainerVy24SecureMessagingAgentCore11SqliteErrorV10CodingKeys33_062584879AC908161C18F54013E1E93ALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type SqliteError.CodingKeys and conformance SqliteError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[14] = 0;
    lazy protocol witness table accessor for type SqliteError.ErrorType and conformance SqliteError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[15];
    v10[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_2652D1E10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2652D1E68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC24SecureMessagingAgentCore11SqliteStore_db;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SqliteError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SqliteError(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SqliteError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SqliteError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for SqliteStore()
{
  result = type metadata singleton initialization cache for SqliteStore;
  if (!type metadata singleton initialization cache for SqliteStore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SqliteStore()
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of SqliteStore.prepare(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v10(a1, a2);
}

uint64_t dispatch thunk of SqliteStore.execute(_:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v8(a1);
}

uint64_t dispatch thunk of SqliteStore.createTable(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of SqliteStore.dropTable(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 160);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v10(a1, a2);
}

uint64_t dispatch thunk of SqliteStore.insert(_:)(uint64_t a1)
{
  v4 = *(*v1 + 168);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v8(a1);
}

uint64_t dispatch thunk of SqliteStore.update(_:)(uint64_t a1)
{
  v4 = *(*v1 + 176);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v8(a1);
}

uint64_t dispatch thunk of SqliteStore.delete(_:)(uint64_t a1)
{
  v4 = *(*v1 + 184);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v8(a1);
}

uint64_t dispatch thunk of SqliteStore.query<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 192);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of SqliteStore.beginTransaction()()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v6();
}

uint64_t dispatch thunk of SqliteStore.endTransaction()()
{
  v2 = *(*v0 + 208);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v6();
}

uint64_t dispatch thunk of SqliteStore.rollbackTransaction()()
{
  v2 = *(*v0 + 216);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v6();
}

uint64_t dispatch thunk of SqliteStore.open(filePath:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 224);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v10(a1, a2);
}

uint64_t dispatch thunk of SqliteStore.close()()
{
  v2 = *(*v0 + 232);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v6();
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t GroupStateModel.init(clientIdentifier:groupID:groupStateData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t GroupStateModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t GroupStateModel.groupID.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t GroupStateModel.groupStateData.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

sqlite3_stmt *GroupStateModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("INSERT OR REPLACE INTO Group_State_Table (client_id, group_id, group_state_data) VALUES (?, ?, ?);");
  if (!v4)
  {
LABEL_143:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
    goto LABEL_115;
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v67 = *v1;
      DWORD2(v67) = v7;
      WORD6(v67) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v67;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_119:
      v58 = v5;
      swift_once();
      v5 = v58;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v67 + 6) = 0;
    *&v67 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v67;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_121:
    v59 = v5;
    swift_once();
    v5 = v59;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_125;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_123;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_121;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_119;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v56 = ppStmt[0];
    v57 = v12;
    swift_once();
    v5 = v56;
    LODWORD(v12) = v57;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_115;
  }

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    LODWORD(v1) = *(v1 + 24);
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      LODWORD(v1) = v21;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v21;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_131;
      }
    }

    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (!v22)
  {
    *&v67 = *(v1 + 16);
    DWORD2(v67) = v21;
    WORD6(v67) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v67;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_126:
    v62 = v5;
    swift_once();
    v5 = v62;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_128;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    LODWORD(v1) = v21;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v67 + 6) = 0;
      *&v67 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v67;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_128:
      v63 = v5;
      swift_once();
      v5 = v63;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_123:
    v60 = v5;
    v61 = v12;
    swift_once();
    v5 = v60;
    LODWORD(v12) = v61;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_115;
  }

  v36 = *(v1 + 32);
  v37 = *(v1 + 40);
  v38 = v37 >> 62;
  if ((v37 >> 62) <= 1)
  {
    if (!v38)
    {
      *&v67 = *(v1 + 32);
      DWORD2(v67) = v37;
      WORD6(v67) = WORD2(v37);
      v27 = ppStmt[0];
      LODWORD(v1) = BYTE6(v37);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v65 = ppStmt[0];
        swift_once();
        v27 = v65;
      }

      v39 = &v67;
      goto LABEL_113;
    }

    goto LABEL_97;
  }

  if (v38 != 2)
  {
    goto LABEL_107;
  }

  v40 = *(v36 + 16);
  v41 = *(v36 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v42 = __DataStorage._offset.getter();
    if (__OFSUB__(v40, v42))
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v9 += v40 - v42;
  }

  v28 = __OFSUB__(v41, v40);
  v43 = v41 - v40;
  if (v28)
  {
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v27 = MEMORY[0x2667557A0]();
  if (v27 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v27;
  }

  if (v9)
  {
    v1 = v44;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_138;
  }

  v36 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_111;
  }

  __break(1u);
LABEL_97:
  v45 = v36;
  v46 = v36 >> 32;
  v47 = v46 - v45;
  if (v46 < v45)
  {
    __break(1u);
    goto LABEL_136;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v48 = __DataStorage._offset.getter();
    if (!__OFSUB__(v45, v48))
    {
      v9 += v45 - v48;
      goto LABEL_101;
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_101:
  v49 = MEMORY[0x2667557A0]();
  if (v49 >= v47)
  {
    v1 = v47;
  }

  else
  {
    v1 = v49;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_111;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_107:
    *(&v67 + 6) = 0;
    *&v67 = 0;
    v27 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_108:
      v39 = &v67;
      v50 = 0;
      goto LABEL_114;
    }

LABEL_136:
    v66 = v27;
    swift_once();
    v27 = v66;
    goto LABEL_108;
  }

  if (v1 > 0x7FFFFFFF)
  {
    goto LABEL_142;
  }

LABEL_111:
  v27 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_134:
    v64 = v27;
    swift_once();
    v27 = v64;
  }

  v39 = v9;
LABEL_113:
  v50 = v1;
LABEL_114:
  if (!sqlite3_bind_blob(v27, 3, v39, v50, v10))
  {
    result = ppStmt[0];
    goto LABEL_116;
  }

LABEL_115:
  *&v67 = 0x726F7272456C7173;
  *(&v67 + 1) = 0xE90000000000003ALL;
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v51);

  v52 = v67;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v53 = 0;
  *(v53 + 8) = v52;
  result = swift_willThrow();
LABEL_116:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *GroupStateModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("UPDATE Group_State_Table SET\n    group_state_data = ?\nWHERE\n    client_id = ? AND group_id = ?;");
  if (!v4)
  {
LABEL_143:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
    goto LABEL_115;
  }

  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v67 = *(v1 + 32);
      DWORD2(v67) = v7;
      WORD6(v67) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v67;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_119:
      v58 = v5;
      swift_once();
      v5 = v58;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v67 + 6) = 0;
    *&v67 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v67;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_121:
    v59 = v5;
    swift_once();
    v5 = v59;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_125;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_123;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_121;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_119;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v56 = ppStmt[0];
    v57 = v12;
    swift_once();
    v5 = v56;
    LODWORD(v12) = v57;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_115;
  }

  v20 = *v1;
  v21 = *(v1 + 8);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    LODWORD(v1) = *(v1 + 8);
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      LODWORD(v1) = v21;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v21;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_131;
      }
    }

    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  if (!v22)
  {
    *&v67 = *v1;
    DWORD2(v67) = v21;
    WORD6(v67) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v67;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_126:
    v62 = v5;
    swift_once();
    v5 = v62;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_128;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    LODWORD(v1) = v21;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v67 + 6) = 0;
      *&v67 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v67;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_128:
      v63 = v5;
      swift_once();
      v5 = v63;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_123:
    v60 = v5;
    v61 = v12;
    swift_once();
    v5 = v60;
    LODWORD(v12) = v61;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_115;
  }

  v36 = *(v1 + 16);
  v37 = *(v1 + 24);
  v38 = v37 >> 62;
  if ((v37 >> 62) <= 1)
  {
    if (!v38)
    {
      *&v67 = *(v1 + 16);
      DWORD2(v67) = v37;
      WORD6(v67) = WORD2(v37);
      v27 = ppStmt[0];
      LODWORD(v1) = BYTE6(v37);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v65 = ppStmt[0];
        swift_once();
        v27 = v65;
      }

      v39 = &v67;
      goto LABEL_113;
    }

    goto LABEL_97;
  }

  if (v38 != 2)
  {
    goto LABEL_107;
  }

  v40 = *(v36 + 16);
  v41 = *(v36 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v42 = __DataStorage._offset.getter();
    if (__OFSUB__(v40, v42))
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v9 += v40 - v42;
  }

  v28 = __OFSUB__(v41, v40);
  v43 = v41 - v40;
  if (v28)
  {
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v27 = MEMORY[0x2667557A0]();
  if (v27 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v27;
  }

  if (v9)
  {
    v1 = v44;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_138;
  }

  v36 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_111;
  }

  __break(1u);
LABEL_97:
  v45 = v36;
  v46 = v36 >> 32;
  v47 = v46 - v45;
  if (v46 < v45)
  {
    __break(1u);
    goto LABEL_136;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v48 = __DataStorage._offset.getter();
    if (!__OFSUB__(v45, v48))
    {
      v9 += v45 - v48;
      goto LABEL_101;
    }

LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

LABEL_101:
  v49 = MEMORY[0x2667557A0]();
  if (v49 >= v47)
  {
    v1 = v47;
  }

  else
  {
    v1 = v49;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_111;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_107:
    *(&v67 + 6) = 0;
    *&v67 = 0;
    v27 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_108:
      v39 = &v67;
      v50 = 0;
      goto LABEL_114;
    }

LABEL_136:
    v66 = v27;
    swift_once();
    v27 = v66;
    goto LABEL_108;
  }

  if (v1 > 0x7FFFFFFF)
  {
    goto LABEL_142;
  }

LABEL_111:
  v27 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_134:
    v64 = v27;
    swift_once();
    v27 = v64;
  }

  v39 = v9;
LABEL_113:
  v50 = v1;
LABEL_114:
  if (!sqlite3_bind_blob(v27, 3, v39, v50, v10))
  {
    result = ppStmt[0];
    goto LABEL_116;
  }

LABEL_115:
  *&v67 = 0x726F7272456C7173;
  *(&v67 + 1) = 0xE90000000000003ALL;
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v51);

  v52 = v67;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v53 = 0;
  *(v53 + 8) = v52;
  result = swift_willThrow();
LABEL_116:
  v55 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *GroupStateModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("DELETE FROM Group_State_Table WHERE client_id = ? AND group_id = ?;");
  if (!v3)
  {
LABEL_98:
    __break(1u);
  }

  v4 = sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0);
  if (v4)
  {
    goto LABEL_79;
  }

  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v48 = *v1;
      DWORD2(v48) = v6;
      WORD6(v48) = WORD2(v6);
      v4 = ppStmt[0];
      LODWORD(v8) = BYTE6(v6);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v9 = SQLITE_TRANSIENT;
        v10 = &v48;
        LODWORD(v11) = v8;
        goto LABEL_42;
      }

LABEL_83:
      v43 = v4;
      swift_once();
      v4 = v43;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 != 2)
  {
    *(&v48 + 6) = 0;
    *&v48 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v9 = SQLITE_TRANSIENT;
      v10 = &v48;
      LODWORD(v11) = 0;
      goto LABEL_42;
    }

LABEL_85:
    v44 = v4;
    swift_once();
    v4 = v44;
    goto LABEL_25;
  }

  v12 = v1;
  v13 = *(v5 + 16);
  v14 = *(v5 + 24);
  v15 = __DataStorage._bytes.getter();
  if (v15)
  {
    v9 = v15;
    LODWORD(v1) = v6;
    v4 = __DataStorage._offset.getter();
    if (__OFSUB__(v13, v4))
    {
      __break(1u);
      goto LABEL_89;
    }

    v8 = v9 + v13 - v4;
    v9 = (v14 - v13);
    if (!__OFSUB__(v14, v13))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = 0;
  v9 = (v14 - v13);
  if (__OFSUB__(v14, v13))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v4;
  }

  if (v8)
  {
    v11 = v16;
  }

  else
  {
    v11 = 0;
  }

  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_87;
  }

  v5 = 0x7FFFFFFFLL;
  if (v11 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v17 = v5;
  v18 = v5 >> 32;
  v13 = v18 - v17;
  if (v18 < v17)
  {
    __break(1u);
    goto LABEL_85;
  }

  v12 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v8 = 0;
    goto LABEL_30;
  }

  v9 = v19;
  LODWORD(v1) = v6;
  v4 = __DataStorage._offset.getter();
  if (__OFSUB__(v17, v4))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v8 = v9 + v17 - v4;
LABEL_30:
  v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_83;
    }

    v1 = v12;
    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_38:
  v1 = v12;
LABEL_39:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v41 = ppStmt[0];
    v42 = v11;
    swift_once();
    v4 = v41;
    LODWORD(v11) = v42;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_42:
  v4 = sqlite3_bind_blob(v4, 1, v10, v11, v9);
  if (v4)
  {
    goto LABEL_79;
  }

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = *(v20 + 16);
    v25 = *(v20 + 24);
    v8 = __DataStorage._bytes.getter();
    if (v8)
    {
      v26 = __DataStorage._offset.getter();
      if (__OFSUB__(v24, v26))
      {
        goto LABEL_95;
      }

      v8 += v24 - v26;
    }

    v27 = __OFSUB__(v25, v24);
    v28 = v25 - v24;
    if (v27)
    {
      __break(1u);
    }

    else
    {
      v4 = MEMORY[0x2667557A0]();
      if (v4 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v4;
      }

      if (v8)
      {
        v1 = v29;
      }

      else
      {
        v1 = 0;
      }

      if (v1 >= 0xFFFFFFFF80000000)
      {
        v20 = 0x7FFFFFFFLL;
        if (v1 <= 0x7FFFFFFF)
        {
          goto LABEL_75;
        }

        __break(1u);
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  if (v22)
  {
LABEL_61:
    v30 = v20;
    v31 = v20 >> 32;
    v32 = v31 - v30;
    if (v31 < v30)
    {
      __break(1u);
      goto LABEL_92;
    }

    v8 = __DataStorage._bytes.getter();
    if (!v8)
    {
      goto LABEL_65;
    }

    v33 = __DataStorage._offset.getter();
    if (!__OFSUB__(v30, v33))
    {
      v8 += v30 - v33;
LABEL_65:
      v34 = MEMORY[0x2667557A0]();
      if (v34 >= v32)
      {
        v1 = v32;
      }

      else
      {
        v1 = v34;
      }

      if (!v8)
      {
        LODWORD(v1) = 0;
        goto LABEL_75;
      }

      if (v1 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_71:
        *(&v48 + 6) = 0;
        *&v48 = 0;
        v4 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_72:
          v23 = &v48;
          v35 = 0;
          goto LABEL_78;
        }

LABEL_92:
        v47 = v4;
        swift_once();
        v4 = v47;
        goto LABEL_72;
      }

      if (v1 <= 0x7FFFFFFF)
      {
LABEL_75:
        v4 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_76:
          v23 = v8;
          goto LABEL_77;
        }

LABEL_87:
        v45 = v4;
        swift_once();
        v4 = v45;
        goto LABEL_76;
      }

      goto LABEL_97;
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  *&v48 = *(v1 + 16);
  DWORD2(v48) = v21;
  WORD6(v48) = WORD2(v21);
  v4 = ppStmt[0];
  LODWORD(v1) = BYTE6(v21);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_90:
    v46 = v4;
    swift_once();
    v4 = v46;
  }

  v23 = &v48;
LABEL_77:
  v35 = v1;
LABEL_78:
  if (!sqlite3_bind_blob(v4, 2, v23, v35, v9))
  {
    result = ppStmt[0];
    goto LABEL_80;
  }

LABEL_79:
  *&v48 = 0x726F7272456C7173;
  *(&v48 + 1) = 0xE90000000000003ALL;
  v36 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v36);

  v37 = v48;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v38 = 0;
  *(v38 + 8) = v37;
  result = swift_willThrow();
LABEL_80:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t closure #1 in variable initialization expression of static GroupStateModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t *a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) != 5)
  {
    v4 = sqlite3_column_blob(a1, 0);
    if (v4)
    {
      v5 = v4;
      v6 = sqlite3_column_bytes(a1, 0);
      v7 = specialized Data.init(bytes:count:)(v5, v6);
      v9 = v8;
      if (sqlite3_column_type(a1, 1) == 5 || (v10 = sqlite3_column_blob(a1, 1)) == 0)
      {
        v21 = v7;
        v22 = v9;
      }

      else
      {
        v11 = v10;
        v12 = sqlite3_column_bytes(a1, 1);
        v13 = specialized Data.init(bytes:count:)(v11, v12);
        v15 = v14;
        if (sqlite3_column_type(a1, 2) != 5)
        {
          v16 = sqlite3_column_blob(a1, 2);
          if (v16)
          {
            v17 = v16;
            v18 = sqlite3_column_bytes(a1, 2);
            result = specialized Data.init(bytes:count:)(v17, v18);
            *a2 = v7;
            a2[1] = v9;
            a2[2] = v13;
            a2[3] = v15;
            a2[4] = result;
            a2[5] = v20;
            return result;
          }
        }

        outlined consume of Data._Representation(v7, v9);
        v21 = v13;
        v22 = v15;
      }

      outlined consume of Data._Representation(v21, v22);
    }
  }

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v23 = 3;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  return swift_willThrow();
}

uint64_t (*static GroupStateModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static GroupStateModel.converter;

  return v0;
}

uint64_t static GroupStateModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static GroupStateModel.converter = a1;
  qword_281EF8580 = a2;
}

uint64_t key path getter for static GroupStateModel.converter : GroupStateModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static GroupStateModel.converter;
  v2 = qword_281EF8580;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static GroupStateModel.converter : GroupStateModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static GroupStateModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupStateModel?, @error @owned Error)partial apply;
  qword_281EF8580 = v3;
}

double thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupStateModel?, @error @owned Error)@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  v9 = a1;
  a2(v8, &v9);
  if (!v3)
  {
    result = *v8;
    v6 = v8[1];
    v7 = v8[2];
    *a3 = v8[0];
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance GroupStateModel())@<D0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v1 = static GroupStateModel.converter;
  v0 = qword_281EF8580;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)partial apply;
}

uint64_t *GroupStateQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static GroupStateQuery.converter;
}

uint64_t static GroupStateQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static GroupStateQuery.converter;

  return v0;
}

uint64_t static GroupStateQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static GroupStateQuery.converter = a1;
  qword_2800168D8 = a2;
}

uint64_t (*static GroupStateQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static GroupStateQuery.converter : GroupStateQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static GroupStateQuery.converter;
  v2 = qword_2800168D8;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static GroupStateQuery.converter : GroupStateQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static GroupStateQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out GroupStateModel?, @error @owned Error);
  qword_2800168D8 = v3;
}

sqlite3_stmt *GroupStateQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v10 = strdup("SELECT * FROM Group_State_Table WHERE client_id = ? AND group_id = ? LIMIT 1;");
  if (!v10)
  {
LABEL_96:
    __break(1u);
  }

  v11 = sqlite3_prepare_v2(a1, v10, -1, ppStmt, 0);
  if (v11)
  {
    goto LABEL_76;
  }

  v12 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_32;
    }

    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    LODWORD(a2) = a3;
    v11 = __DataStorage._bytes.getter();
    v16 = v11;
    if (v11)
    {
      LODWORD(a2) = a3;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v14, v11))
      {
        __break(1u);
        goto LABEL_87;
      }

      v16 += v14 - v11;
    }

    v17 = __OFSUB__(v15, v14);
    v18 = v15 - v14;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v11;
      }

      if (v16)
      {
        a2 = v19;
      }

      else
      {
        a2 = 0;
      }

      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          goto LABEL_35;
        }

        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  if (v12)
  {
LABEL_21:
    v20 = a2;
    v21 = (a2 >> 32) - a2;
    if (a2 >> 32 < a2)
    {
      __break(1u);
      goto LABEL_82;
    }

    v16 = __DataStorage._bytes.getter();
    if (!v16)
    {
LABEL_25:
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v21)
      {
        a2 = v21;
      }

      else
      {
        a2 = v11;
      }

      if (v16)
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_80;
        }

        if (a2 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v46 + 6) = 0;
          *&v46 = 0;
          v11 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_33:
            a3 = SQLITE_TRANSIENT;
            v13 = &v46;
            v22 = 0;
            goto LABEL_39;
          }

LABEL_82:
          v42 = v11;
          swift_once();
          v11 = v42;
          goto LABEL_33;
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }

LABEL_35:
      v11 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v40 = ppStmt[0];
        swift_once();
        v11 = v40;
      }

      a3 = SQLITE_TRANSIENT;
      v13 = v16;
      goto LABEL_38;
    }

    LODWORD(a2) = a3;
    v11 = __DataStorage._offset.getter();
    if (!__OFSUB__(v20, v11))
    {
      v16 += v20 - v11;
      goto LABEL_25;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  *&v46 = a2;
  WORD4(v46) = a3;
  BYTE10(v46) = BYTE2(a3);
  BYTE11(v46) = BYTE3(a3);
  BYTE12(v46) = BYTE4(a3);
  BYTE13(v46) = BYTE5(a3);
  v11 = ppStmt[0];
  LODWORD(a2) = BYTE6(a3);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_80:
    v41 = v11;
    swift_once();
    v11 = v41;
  }

  a3 = SQLITE_TRANSIENT;
  v13 = &v46;
LABEL_38:
  v22 = a2;
LABEL_39:
  v11 = sqlite3_bind_blob(v11, 1, v13, v22, a3);
  if (v11)
  {
    goto LABEL_76;
  }

  v23 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_68;
    }

    v25 = *(a4 + 16);
    v26 = *(a4 + 24);
    a4 = __DataStorage._bytes.getter();
    if (a4)
    {
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
        goto LABEL_93;
      }

      a4 += v25 - v27;
    }

    v17 = __OFSUB__(v26, v25);
    v28 = v26 - v25;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v11 = MEMORY[0x2667557A0]();
      if (v11 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v11;
      }

      if (a4)
      {
        a2 = v29;
      }

      else
      {
        a2 = 0;
      }

      if (a2 >= 0xFFFFFFFF80000000)
      {
        if (a2 <= 0x7FFFFFFF)
        {
          goto LABEL_72;
        }

        __break(1u);
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  if (v23)
  {
LABEL_58:
    v30 = a4;
    v31 = (a4 >> 32) - a4;
    if (a4 >> 32 < a4)
    {
      __break(1u);
      goto LABEL_90;
    }

    a4 = __DataStorage._bytes.getter();
    if (!a4)
    {
      goto LABEL_62;
    }

    v32 = __DataStorage._offset.getter();
    if (!__OFSUB__(v30, v32))
    {
      a4 += v30 - v32;
LABEL_62:
      v33 = MEMORY[0x2667557A0]();
      if (v33 >= v31)
      {
        a2 = v31;
      }

      else
      {
        a2 = v33;
      }

      if (!a4)
      {
        LODWORD(a2) = 0;
        goto LABEL_72;
      }

      if (a2 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_68:
        *(&v46 + 6) = 0;
        *&v46 = 0;
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_69:
          v24 = &v46;
          v34 = 0;
          goto LABEL_75;
        }

LABEL_90:
        v45 = v11;
        swift_once();
        v11 = v45;
        goto LABEL_69;
      }

      if (a2 <= 0x7FFFFFFF)
      {
LABEL_72:
        v11 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT == -1)
        {
LABEL_73:
          v24 = a4;
          goto LABEL_74;
        }

LABEL_85:
        v43 = v11;
        swift_once();
        v11 = v43;
        goto LABEL_73;
      }

      goto LABEL_95;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  *&v46 = a4;
  WORD4(v46) = a5;
  BYTE10(v46) = BYTE2(a5);
  BYTE11(v46) = BYTE3(a5);
  BYTE12(v46) = BYTE4(a5);
  BYTE13(v46) = BYTE5(a5);
  v11 = ppStmt[0];
  LODWORD(a2) = BYTE6(a5);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_88:
    v44 = v11;
    swift_once();
    v11 = v44;
  }

  v24 = &v46;
LABEL_74:
  v34 = a2;
LABEL_75:
  if (!sqlite3_bind_blob(v11, 2, v24, v34, a3))
  {
    result = ppStmt[0];
    goto LABEL_77;
  }

LABEL_76:
  *&v46 = 0x726F7272456C7173;
  *(&v46 + 1) = 0xE90000000000003ALL;
  v35 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v35);

  v36 = v46;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v37 = 0;
  *(v37 + 8) = v36;
  result = swift_willThrow();
LABEL_77:
  v39 = *MEMORY[0x277D85DE8];
  return result;
}

double (*protocol witness for static SqlQuery.converter.getter in conformance GroupStateQuery())@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static GroupStateQuery.converter;
  v0 = qword_2800168D8;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error);
}

sqlite3_stmt *specialized static GroupStateModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Group_State_Table (\n    client_id BLOB NOT NULL,\n    group_id BLOB NOT NULL,\n    group_state_data BLOB NOT NULL,\n    PRIMARY KEY (group_id, client_id)\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized static GroupStateModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Group_State_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getEnumTagSinglePayload for GroupStateModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GroupStateModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2652D5D18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)(a1, a2);
}

{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(v9, *a1);
  if (!v3)
  {
    v8 = v9[1];
    *a2 = v9[0];
    a2[1] = v8;
    result = *&v10;
    a2[2] = v10;
  }

  return result;
}

double partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)@<D0>(_OWORD *a1@<X8>)
{
  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned GroupStateModel?, @error @owned Error)(a1);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
    result = *&v9;
    a1[2] = v9;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (a3)
    {
LABEL_3:
      v10 = a3;
      a3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      goto LABEL_6;
    }
  }

  else
  {

    v9 = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v12 = 0xF000000000000000;
LABEL_6:
  v6(v4, v9, a3, v12);
  outlined consume of Data?(a3, v12);
  outlined consume of Data?(v4, v9);
}

uint64_t KDSRegistrationXPCBroadcaster.__allocating_init(clientIdentifier:clientConnection:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier;
  v9 = type metadata accessor for KDSRegistration.ClientIdentifier();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection) = a2;
  return v7;
}

uint64_t KDSRegistrationXPCBroadcaster.clientIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier;
  v4 = type metadata accessor for KDSRegistration.ClientIdentifier();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t KDSRegistrationXPCBroadcaster.init(clientIdentifier:clientConnection:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier;
  v6 = type metadata accessor for KDSRegistration.ClientIdentifier();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection) = a2;
  return v2;
}

uint64_t KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for RegistrationActor();
  v5[7] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:), v7, v6);
}

uint64_t KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  IsRegisteredChangedError = type metadata accessor for KDSRegistration.IsRegisteredChangedError();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v5;
  *(v4 + 40) = v1;
  v6 = *(MEMORY[0x277D4D290] + 4);
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_10Foundation4DataVACtMd, &_sSS_10Foundation4DataVACtMR);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError, MEMORY[0x277D4CB68]);
  *v7 = v0;
  v7[1] = KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);
  v8 = *(v0 + 48);
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D839B0];

  return MEMORY[0x2821ACBF8](v0 + 104, v9, IsRegisteredChangedError, partial apply for closure #1 in KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:), v4, partial apply for closure #2 in KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:), v8, v10);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = v2[8];
    v5 = v2[9];
    v6 = KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);
  }

  else
  {
    v7 = v2[10];

    v4 = v2[8];
    v5 = v2[9];
    v6 = DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t closure #1 in KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for KDSRegistration.IsRegisteredResult();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult, MEMORY[0x277D4CA70]);
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v12 = v11;

  if (!v3)
  {
    v14 = *(v7 + 48);
    v15 = *(v7 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMd, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMR);
    lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?();
    v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v18 = v17;

    *a3 = a1;
    a3[1] = a2;
    a3[2] = v10;
    a3[3] = v12;
    a3[4] = v16;
    a3[5] = v18;
  }

  return result;
}

uint64_t partial apply for closure #1 in KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  return closure #1 in KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(v1[2], v1[3], a1);
}

uint64_t closure #2 in KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v17 = *(a4 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection);

  outlined copy of Data._Representation(v8, v9);
  outlined copy of Data._Representation(v10, v11);
  v12 = MEMORY[0x266756A10](v6, v7);

  isa = Data._bridgeToObjectiveC()().super.isa;
  v14 = Data._bridgeToObjectiveC()().super.isa;
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  aBlock[3] = &block_descriptor_11;
  v15 = _Block_copy(aBlock);

  [v17 isRegisteredChangedWithSimUniqueID:v12 isRegistered:isa context:v14 completion:v15];
  _Block_release(v15);

  outlined consume of Data._Representation(v10, v11);
  return outlined consume of Data._Representation(v8, v9);
}

uint64_t KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = type metadata accessor for KDSRegistration.ClientIdentifier();
  v3[12] = v7;
  v8 = *(v7 - 8);
  v3[13] = v8;
  v9 = *(v8 + 64) + 15;
  v3[14] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v3[15] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20]);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v11;
  v3[17] = v10;

  return MEMORY[0x2822009F8](KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:), v11, v10);
}

uint64_t KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:)()
{
  v1 = v0[8];
  (*(v0[13] + 104))(v0[14], *MEMORY[0x277D4C988], v0[12]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.ClientIdentifier and conformance KDSRegistration.ClientIdentifier, MEMORY[0x277D4C990]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  if (v0[2] == v0[4] && v0[3] == v0[5])
  {
    (*(v3 + 8))(v0[14], v0[12]);

LABEL_5:
    v8 = v0[7];
    v9 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
    v10 = type metadata accessor for KDSRegistration.ObtainPhoneAuthenticationInfoError();
    v11 = swift_task_alloc();
    v0[18] = v11;
    *(v11 + 16) = v8;
    v12 = *(MEMORY[0x277D4D290] + 4);
    v13 = swift_task_alloc();
    v0[19] = v13;
    v14 = MEMORY[0x277D4C938];
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo, MEMORY[0x277D4C938]);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo, v14);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError, MEMORY[0x277D4CC00]);
    *v13 = v0;
    v13[1] = KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:);
    v15 = v0[8];
    v16 = v0[6];

    return MEMORY[0x2821ACBF8](v16, v9, v10, partial apply for closure #1 in KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:), v11, partial apply for closure #2 in KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:), v15, v9);
  }

  v5 = v0[3];
  v6 = v0[5];
  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  (*(v3 + 8))(v2, v4);

  if (v7)
  {
    goto LABEL_5;
  }

  v17 = v0[15];
  v19 = v0[10];
  v18 = v0[11];
  v20 = v0[9];

  (*(v19 + 104))(v18, *MEMORY[0x277D4CBF0], v20);
  type metadata accessor for KDSRegistration.ObtainPhoneAuthenticationInfoError();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError, MEMORY[0x277D4CC00]);
  swift_allocError();
  KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
  swift_willThrow();
  v21 = v0[14];
  v22 = v0[11];

  v23 = v0[1];

  return v23();
}

{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:);
  }

  else
  {
    v7 = v2[18];

    v4 = v2[16];
    v5 = v2[17];
    v6 = KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:);
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[18];
  v2 = v0[15];

  v3 = v0[20];
  v4 = v0[14];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t closure #1 in KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest, MEMORY[0x277D4C950]);
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v1)
  {
    *a1 = v6;
    a1[1] = v8;
  }

  return result;
}

void closure #2 in KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *(a4 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  v11[3] = &block_descriptor_8;
  v10 = _Block_copy(v11);

  [v8 obtainPhoneAuthenticationInfoWithRequest:isa completion:v10];
  _Block_release(v10);
}

uint64_t KDSRegistrationXPCBroadcaster.deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier;
  v2 = type metadata accessor for KDSRegistration.ClientIdentifier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t KDSRegistrationXPCBroadcaster.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier;
  v2 = type metadata accessor for KDSRegistration.ClientIdentifier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection);
  swift_unknownObjectRelease();
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for KDSRegistrationXPCBroadcaster()
{
  result = type metadata singleton initialization cache for KDSRegistrationXPCBroadcaster;
  if (!type metadata singleton initialization cache for KDSRegistrationXPCBroadcaster)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for KDSRegistrationXPCBroadcaster()
{
  result = type metadata accessor for KDSRegistration.ClientIdentifier();
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

uint64_t dispatch thunk of KDSRegistrationXPCBroadcaster.isRegisteredChanged(simUniqueID:isRegistered:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 104);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of KDSRegistrationXPCBroadcaster.obtainPhoneAuthenticationInfo(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 112);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMd, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMR);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext and conformance KDSRegistration.RegistrationCompletedContext, MEMORY[0x277D4CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext? and conformance <A> A?);
  }

  return result;
}

uint64_t _s15SecureMessaging17RegistrationActorCACScAAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t EpochModel.init(clientIdentifier:epochID:eraID:groupID:epochRecordData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

uint64_t EpochQuery.init(clientIdentifier:epochID:eraID:groupID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t EpochModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t EpochModel.epochID.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t EpochModel.eraID.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t EpochModel.groupID.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data._Representation(v1, *(v0 + 56));
  return v1;
}

uint64_t EpochModel.epochRecordData.getter()
{
  v1 = *(v0 + 64);
  outlined copy of Data?(v1, *(v0 + 72));
  return v1;
}

uint64_t EpochModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  if ((*(v1 + 24) & 1) != 0 || (*(v1 + 40) & 1) != 0 || (v2 = *(v1 + 72), v2 >> 60 == 15))
  {
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v3 = 5;
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    result = swift_willThrow();
LABEL_5:
    v5 = *MEMORY[0x277D85DE8];
    return result;
  }

  v7 = *(v1 + 16);
  v8 = *(v1 + 32);
  v9 = *(v1 + 64);
  ppStmt[0] = 0;
  outlined copy of Data._Representation(v9, v2);
  result = strdup("INSERT OR REPLACE INTO Epoch_Table (client_id, epoch_id, era_id, group_id, epoch_record_data) VALUES (?, ?, ?, ?, ?);");
  if (!result)
  {
    __break(1u);
    goto LABEL_140;
  }

  v10 = sqlite3_prepare_v2(a1, result, -1, ppStmt, 0);
  if (v10)
  {
LABEL_86:
    *&v70 = 0x726F7272456C7173;
    *(&v70 + 1) = 0xE90000000000003ALL;
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v43);

    v44 = v70;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v45 = 0;
    *(v45 + 8) = v44;
    swift_willThrow();
    result = outlined consume of Data?(v9, v2);
    goto LABEL_5;
  }

  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      *(&v70 + 6) = 0;
      *&v70 = 0;
      v10 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_21:
        a1 = SQLITE_TRANSIENT;
        v15 = &v70;
        LODWORD(v16) = 0;
        goto LABEL_45;
      }

LABEL_127:
      v59 = v7;
      v60 = v10;
      swift_once();
      v10 = v60;
      v7 = v59;
      goto LABEL_21;
    }

    v68 = v1;
    v69 = v7;
    v67 = v9;
    v17 = *(v11 + 16);
    v18 = *(v11 + 24);
    v19 = __DataStorage._bytes.getter();
    if (v19)
    {
      v20 = v19;
      v21 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v21))
      {
        goto LABEL_130;
      }

      v14 = (v17 - v21 + v20);
    }

    else
    {
      v14 = 0;
    }

    v26 = __OFSUB__(v18, v17);
    v27 = v18 - v17;
    if (v26)
    {
      __break(1u);
    }

    else
    {
      v28 = MEMORY[0x2667557A0]();
      if (v28 >= v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = v28;
      }

      if (v14)
      {
        v16 = v29;
      }

      else
      {
        v16 = 0;
      }

      v9 = v67;
      if (v16 >= 0xFFFFFFFF80000000)
      {
        v7 = v69;
        if (v16 <= 0x7FFFFFFF)
        {
          goto LABEL_42;
        }

        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
  }

  if (!v13)
  {
    *&v70 = *v1;
    DWORD2(v70) = v12;
    WORD6(v70) = WORD2(v12);
    v10 = ppStmt[0];
    LODWORD(v14) = BYTE6(v12);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_11:
      a1 = SQLITE_TRANSIENT;
      v15 = &v70;
      LODWORD(v16) = v14;
      goto LABEL_45;
    }

LABEL_125:
    v57 = v7;
    v58 = v10;
    swift_once();
    v10 = v58;
    v7 = v57;
    goto LABEL_11;
  }

  v68 = v1;
  v69 = v7;
  v67 = v8;
  v8 = v9;
  v9 = v11;
  v22 = v11 >> 32;
  v7 = v22 - v9;
  if (v22 < v9)
  {
    __break(1u);
    goto LABEL_127;
  }

  v23 = __DataStorage._bytes.getter();
  if (!v23)
  {
LABEL_33:
    v14 = 0;
    goto LABEL_34;
  }

  v24 = v23;
  v25 = __DataStorage._offset.getter();
  if (__OFSUB__(v9, v25))
  {
    goto LABEL_131;
  }

  v14 = (v9 - v25 + v24);
LABEL_34:
  v9 = v8;
  v10 = MEMORY[0x2667557A0]();
  if (v10 >= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v10;
  }

  v8 = v67;
  if (!v14)
  {
    goto LABEL_41;
  }

  v1 = v68;
  v7 = v69;
  if (v16 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_125;
  }

  if (v16 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_41:
    LODWORD(v16) = 0;
    v1 = v68;
    v7 = v69;
  }

LABEL_42:
  v10 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v55 = ppStmt[0];
    v56 = v16;
    swift_once();
    v10 = v55;
    v7 = v69;
    LODWORD(v16) = v56;
  }

  a1 = SQLITE_TRANSIENT;
  v15 = v14;
LABEL_45:
  if (sqlite3_bind_blob(v10, 1, v15, v16, a1))
  {
    goto LABEL_86;
  }

  if (sqlite3_bind_int64(ppStmt[0], 2, v7))
  {
    goto LABEL_86;
  }

  v30 = sqlite3_bind_int64(ppStmt[0], 3, v8);
  if (v30)
  {
    goto LABEL_86;
  }

  v31 = *(v1 + 48);
  v32 = *(v1 + 56);
  v33 = v32 >> 62;
  if ((v32 >> 62) <= 1)
  {
    if (!v33)
    {
      *&v70 = *(v1 + 48);
      DWORD2(v70) = v32;
      WORD6(v70) = WORD2(v32);
      v30 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v62 = ppStmt[0];
        swift_once();
        v30 = v62;
      }

      v34 = BYTE6(v32);
      goto LABEL_79;
    }

    goto LABEL_67;
  }

  if (v33 != 2)
  {
    goto LABEL_77;
  }

  v35 = v9;
  v36 = *(v31 + 16);
  v37 = *(v31 + 24);
  LODWORD(v1) = *(v1 + 56);
  v30 = __DataStorage._bytes.getter();
  v9 = v30;
  if (v30)
  {
    LODWORD(v1) = v32;
    v30 = __DataStorage._offset.getter();
    if (__OFSUB__(v36, v30))
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v9 += v36 - v30;
  }

  v26 = __OFSUB__(v37, v36);
  v38 = v37 - v36;
  if (v26)
  {
    __break(1u);
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  v30 = MEMORY[0x2667557A0]();
  if (v30 >= v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = v30;
  }

  if (v9)
  {
    v1 = v39;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_135;
  }

  v31 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_82;
  }

  __break(1u);
LABEL_67:
  v37 = v31;
  v40 = v31 >> 32;
  v41 = v40 - v37;
  if (v40 < v37)
  {
    __break(1u);
    goto LABEL_133;
  }

  v35 = v9;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    LODWORD(v1) = v32;
    v30 = __DataStorage._offset.getter();
    if (!__OFSUB__(v37, v30))
    {
      v9 += v37 - v30;
      goto LABEL_71;
    }

LABEL_137:
    __break(1u);
LABEL_138:
    v64 = v30;
    swift_once();
    v30 = v64;
LABEL_122:
    v54 = sqlite3_bind_blob(v30, 5, v9, v1, a1);
    v9 = v37;
    if (v54)
    {
      goto LABEL_86;
    }

    goto LABEL_123;
  }

LABEL_71:
  result = MEMORY[0x2667557A0]();
  if (result >= v41)
  {
    v1 = v41;
  }

  else
  {
    v1 = result;
  }

  if (v9)
  {
    if (v1 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_77:
      *(&v70 + 6) = 0;
      *&v70 = 0;
      v30 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_78:
        v34 = 0;
LABEL_79:
        result = sqlite3_bind_blob(v30, 4, &v70, v34, a1);
        goto LABEL_85;
      }

LABEL_133:
      v63 = v30;
      swift_once();
      v30 = v63;
      goto LABEL_78;
    }

    if (v1 > 0x7FFFFFFF)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }
  }

  else
  {
    LODWORD(v1) = 0;
  }

LABEL_82:
  v42 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v61 = ppStmt[0];
    swift_once();
    v42 = v61;
  }

  result = sqlite3_bind_blob(v42, 4, v9, v1, a1);
  v9 = v35;
LABEL_85:
  if (result)
  {
    goto LABEL_86;
  }

  v46 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v46)
    {
      *&v70 = v9;
      WORD4(v70) = v2;
      BYTE10(v70) = BYTE2(v2);
      BYTE11(v70) = BYTE3(v2);
      BYTE12(v70) = BYTE4(v2);
      BYTE13(v70) = BYTE5(v2);
      result = ppStmt[0];
      LODWORD(v1) = BYTE6(v2);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_90:
        v47 = v1;
        goto LABEL_117;
      }

LABEL_140:
      v65 = result;
      swift_once();
      result = v65;
      goto LABEL_90;
    }

    goto LABEL_105;
  }

  if (v46 != 2)
  {
    goto LABEL_115;
  }

  v48 = *(v9 + 16);
  v49 = *(v9 + 24);
  v37 = v9;
  result = __DataStorage._bytes.getter();
  v9 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(v48, result))
    {
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v9 += v48 - result;
  }

  v26 = __OFSUB__(v49, v48);
  v50 = v49 - v48;
  if (v26)
  {
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  result = MEMORY[0x2667557A0]();
  if (result >= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = result;
  }

  if (v9)
  {
    v1 = v51;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_144;
  }

  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_121;
  }

  __break(1u);
LABEL_105:
  v52 = v9;
  v53 = (v9 >> 32) - v9;
  if (v9 >> 32 < v9)
  {
    __break(1u);
    goto LABEL_142;
  }

  v37 = v9;
  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
    goto LABEL_109;
  }

  result = __DataStorage._offset.getter();
  if (__OFSUB__(v52, result))
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  v9 += v52 - result;
LABEL_109:
  result = MEMORY[0x2667557A0]();
  if (result >= v53)
  {
    v1 = v53;
  }

  else
  {
    v1 = result;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_121;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_115:
    *(&v70 + 6) = 0;
    *&v70 = 0;
    result = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_116:
      v47 = 0;
LABEL_117:
      if (sqlite3_bind_blob(result, 5, &v70, v47, a1))
      {
        goto LABEL_86;
      }

LABEL_123:
      outlined consume of Data?(v9, v2);
      result = ppStmt[0];
      goto LABEL_5;
    }

LABEL_142:
    v66 = result;
    swift_once();
    result = v66;
    goto LABEL_116;
  }

  if (v1 <= 0x7FFFFFFF)
  {
LABEL_121:
    v30 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
      goto LABEL_122;
    }

    goto LABEL_138;
  }

LABEL_148:
  __break(1u);
  return result;
}

uint64_t EpochModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  if (*(v1 + 24) & 1) != 0 || (*(v1 + 40))
  {
    result = strdup("DELETE FROM Epoch_Table WHERE client_id = ? AND group_id = ?;");
    if (!result)
    {
      __break(1u);
      goto LABEL_188;
    }

    v5 = sqlite3_prepare_v2(a1, result, -1, ppStmt, 0);
    if (v5)
    {
      goto LABEL_90;
    }

    v6 = *v1;
    v7 = *(v1 + 8);
    v8 = v7 >> 62;
    if ((v7 >> 62) <= 1)
    {
      if (!v8)
      {
        *&v77 = *v1;
        DWORD2(v77) = v7;
        WORD6(v77) = WORD2(v7);
        v5 = ppStmt[0];
        if (one-time initialization token for SQLITE_TRANSIENT != -1)
        {
          v65 = ppStmt[0];
          swift_once();
          v5 = v65;
        }

        a1 = SQLITE_TRANSIENT;
        v9 = &v77;
        LODWORD(v10) = BYTE6(v7);
        goto LABEL_51;
      }

      v2 = v6;
      v20 = v6 >> 32;
      v21 = v20 - v2;
      if (v20 >= v2)
      {
        v22 = v1;
        v23 = __DataStorage._bytes.getter();
        if (!v23)
        {
          v2 = 0;
          goto LABEL_40;
        }

        a1 = v23;
        LODWORD(v1) = v7;
        result = __DataStorage._offset.getter();
        if (!__OFSUB__(v2, result))
        {
          v2 = a1 + v2 - result;
LABEL_40:
          result = MEMORY[0x2667557A0]();
          if (result >= v21)
          {
            v10 = v21;
          }

          else
          {
            v10 = result;
          }

          if (v2)
          {
            if (v10 >= 0xFFFFFFFF80000000)
            {
              v1 = v22;
              if (v10 > 0x7FFFFFFF)
              {
                goto LABEL_173;
              }

              goto LABEL_48;
            }

            __break(1u);
          }

          LODWORD(v10) = 0;
          v1 = v22;
LABEL_48:
          v5 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT != -1)
          {
            v63 = ppStmt[0];
            v64 = v10;
            swift_once();
            v5 = v63;
            LODWORD(v10) = v64;
          }

          a1 = SQLITE_TRANSIENT;
          v9 = v2;
          goto LABEL_51;
        }

LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      __break(1u);
      goto LABEL_162;
    }

    if (v8 != 2)
    {
      *(&v77 + 6) = 0;
      *&v77 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_27:
        a1 = SQLITE_TRANSIENT;
        v9 = &v77;
        LODWORD(v10) = 0;
LABEL_51:
        result = sqlite3_bind_blob(v5, 1, v9, v10, a1);
        if (result)
        {
          goto LABEL_90;
        }

        v25 = *(v1 + 48);
        v26 = *(v1 + 56);
        v27 = v26 >> 62;
        if ((v26 >> 62) <= 1)
        {
          if (!v27)
          {
            *&v77 = *(v1 + 48);
            DWORD2(v77) = v26;
            WORD6(v77) = WORD2(v26);
            result = ppStmt[0];
            LODWORD(v1) = BYTE6(v26);
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              v68 = ppStmt[0];
              swift_once();
              result = v68;
            }

            v28 = &v77;
            v29 = 2;
            goto LABEL_88;
          }

LABEL_71:
          v35 = v25;
          v36 = v25 >> 32;
          v37 = v36 - v35;
          if (v36 < v35)
          {
            __break(1u);
            goto LABEL_170;
          }

          v2 = __DataStorage._bytes.getter();
          if (!v2)
          {
            goto LABEL_75;
          }

          v1 = v26 & 0x3FFFFFFFFFFFFFFFLL;
          result = __DataStorage._offset.getter();
          if (!__OFSUB__(v35, result))
          {
            v2 += v35 - result;
LABEL_75:
            result = MEMORY[0x2667557A0]();
            if (result >= v37)
            {
              v1 = v37;
            }

            else
            {
              v1 = result;
            }

            if (!v2)
            {
              LODWORD(v1) = 0;
              goto LABEL_85;
            }

            if (v1 < 0xFFFFFFFF80000000)
            {
              __break(1u);
LABEL_81:
              *(&v77 + 6) = 0;
              *&v77 = 0;
              result = ppStmt[0];
              if (one-time initialization token for SQLITE_TRANSIENT == -1)
              {
LABEL_82:
                v28 = &v77;
                v29 = 2;
                v38 = 0;
                goto LABEL_89;
              }

LABEL_170:
              v69 = result;
              swift_once();
              result = v69;
              goto LABEL_82;
            }

            if (v1 <= 0x7FFFFFFF)
            {
LABEL_85:
              result = ppStmt[0];
              if (one-time initialization token for SQLITE_TRANSIENT == -1)
              {
LABEL_86:
                v29 = 2;
LABEL_87:
                v28 = v2;
LABEL_88:
                v38 = v1;
                goto LABEL_89;
              }

LABEL_168:
              v67 = result;
              swift_once();
              result = v67;
              goto LABEL_86;
            }

            goto LABEL_176;
          }

LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        if (v27 != 2)
        {
          goto LABEL_81;
        }

        v30 = *(v25 + 16);
        v31 = *(v25 + 24);
        v1 = v26 & 0x3FFFFFFFFFFFFFFFLL;
        result = __DataStorage._bytes.getter();
        v2 = result;
        if (result)
        {
          v1 = v26 & 0x3FFFFFFFFFFFFFFFLL;
          result = __DataStorage._offset.getter();
          if (__OFSUB__(v30, result))
          {
LABEL_174:
            __break(1u);
            goto LABEL_175;
          }

          v2 += v30 - result;
        }

        v32 = __OFSUB__(v31, v30);
        v33 = v31 - v30;
        if (v32)
        {
          __break(1u);
        }

        else
        {
          result = MEMORY[0x2667557A0]();
          if (result >= v33)
          {
            v34 = v33;
          }

          else
          {
            v34 = result;
          }

          if (v2)
          {
            v1 = v34;
          }

          else
          {
            v1 = 0;
          }

          if (v1 >= 0xFFFFFFFF80000000)
          {
            v25 = 0x7FFFFFFFLL;
            if (v1 <= 0x7FFFFFFF)
            {
              goto LABEL_85;
            }

            __break(1u);
            goto LABEL_71;
          }
        }

        __break(1u);
LABEL_173:
        __break(1u);
        goto LABEL_174;
      }

LABEL_162:
      v66 = v5;
      swift_once();
      v5 = v66;
      goto LABEL_27;
    }

    v17 = v1;
    v18 = *(v6 + 16);
    v19 = *(v6 + 24);
    LODWORD(v1) = *(v1 + 8);
    result = __DataStorage._bytes.getter();
    if (result)
    {
      a1 = result;
      LODWORD(v1) = v7;
      result = __DataStorage._offset.getter();
      if (__OFSUB__(v18, result))
      {
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      v2 = a1 + v18 - result;
    }

    else
    {
      v2 = 0;
    }

    a1 = (v19 - v18);
    if (__OFSUB__(v19, v18))
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v7;
      result = MEMORY[0x2667557A0]();
      if (result >= a1)
      {
        v24 = v19 - v18;
      }

      else
      {
        v24 = result;
      }

      if (v2)
      {
        v10 = v24;
      }

      else
      {
        v10 = 0;
      }

      if (v10 >= 0xFFFFFFFF80000000)
      {
        if (v10 <= 0x7FFFFFFF)
        {
          v1 = v17;
          goto LABEL_48;
        }

        goto LABEL_165;
      }
    }

    __break(1u);
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  v11 = *(v1 + 16);
  v12 = *(v1 + 32);
  result = strdup("DELETE FROM Epoch_Table WHERE epoch_id = ? AND era_id = ? AND client_id = ? AND group_id = ?;");
  if (!result)
  {
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  if (sqlite3_prepare_v2(a1, result, -1, ppStmt, 0))
  {
    goto LABEL_90;
  }

  if (sqlite3_bind_int64(ppStmt[0], 1, v11))
  {
    goto LABEL_90;
  }

  result = sqlite3_bind_int64(ppStmt[0], 2, v12);
  if (result)
  {
    goto LABEL_90;
  }

  v13 = *v1;
  v14 = *(v1 + 8);
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v43 = v1;
      v44 = *(v13 + 16);
      v45 = *(v13 + 24);
      LODWORD(v1) = *(v1 + 8);
      result = __DataStorage._bytes.getter();
      if (result)
      {
        v46 = result;
        LODWORD(v1) = v14;
        result = __DataStorage._offset.getter();
        if (__OFSUB__(v44, result))
        {
          __break(1u);
          goto LABEL_186;
        }

        v2 = v44 - result + v46;
      }

      else
      {
        v2 = 0;
      }

      a1 = (v45 - v44);
      if (__OFSUB__(v45, v44))
      {
        __break(1u);
      }

      else
      {
        LODWORD(v1) = v14;
        result = MEMORY[0x2667557A0]();
        if (result >= a1)
        {
          v52 = v45 - v44;
        }

        else
        {
          v52 = result;
        }

        if (v2)
        {
          v10 = v52;
        }

        else
        {
          v10 = 0;
        }

        if (v10 >= 0xFFFFFFFF80000000)
        {
          if (v10 <= 0x7FFFFFFF)
          {
LABEL_123:
            v1 = v43;
            goto LABEL_124;
          }

          __break(1u);
          goto LABEL_114;
        }
      }

      __break(1u);
      goto LABEL_184;
    }

    *(&v77 + 6) = 0;
    *&v77 = 0;
    result = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_102:
      a1 = SQLITE_TRANSIENT;
      v16 = &v77;
      LODWORD(v10) = 0;
      goto LABEL_126;
    }

LABEL_181:
    v73 = result;
    swift_once();
    result = v73;
    goto LABEL_102;
  }

  if (!v15)
  {
    *&v77 = *v1;
    DWORD2(v77) = v14;
    WORD6(v77) = WORD2(v14);
    result = ppStmt[0];
    LODWORD(v2) = BYTE6(v14);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_17:
      a1 = SQLITE_TRANSIENT;
      v16 = &v77;
      LODWORD(v10) = v2;
      goto LABEL_126;
    }

LABEL_179:
    v72 = result;
    swift_once();
    result = v72;
    goto LABEL_17;
  }

  v47 = v13;
  v48 = v13 >> 32;
  v44 = v48 - v47;
  if (v48 < v47)
  {
    __break(1u);
    goto LABEL_181;
  }

  v43 = v1;
  v49 = __DataStorage._bytes.getter();
  if (v49)
  {
    v50 = v49;
    v51 = __DataStorage._offset.getter();
    if (!__OFSUB__(v47, v51))
    {
      v2 = v47 - v51 + v50;
      goto LABEL_115;
    }

LABEL_186:
    __break(1u);
  }

LABEL_114:
  v2 = 0;
LABEL_115:
  v1 = v14 & 0x3FFFFFFFFFFFFFFFLL;
  result = MEMORY[0x2667557A0]();
  if (result >= v44)
  {
    v10 = v44;
  }

  else
  {
    v10 = result;
  }

  if (!v2)
  {
    goto LABEL_122;
  }

  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_179;
  }

  v1 = v43;
  if (v10 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_122:
    LODWORD(v10) = 0;
    goto LABEL_123;
  }

LABEL_124:
  result = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_177:
    v70 = result;
    v71 = v10;
    swift_once();
    result = v70;
    LODWORD(v10) = v71;
  }

  a1 = SQLITE_TRANSIENT;
  v16 = v2;
LABEL_126:
  result = sqlite3_bind_blob(result, 3, v16, v10, a1);
  if (result)
  {
    goto LABEL_90;
  }

  v53 = *(v1 + 48);
  v54 = *(v1 + 56);
  v55 = v54 >> 62;
  if ((v54 >> 62) <= 1)
  {
    if (!v55)
    {
      *&v77 = *(v1 + 48);
      DWORD2(v77) = v54;
      WORD6(v77) = WORD2(v54);
      result = ppStmt[0];
      LODWORD(v1) = BYTE6(v54);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_130:
        v28 = &v77;
        v29 = 4;
        goto LABEL_88;
      }

LABEL_188:
      v75 = result;
      swift_once();
      result = v75;
      goto LABEL_130;
    }

    goto LABEL_145;
  }

  if (v55 != 2)
  {
    goto LABEL_155;
  }

  v56 = *(v53 + 16);
  v57 = *(v53 + 24);
  result = __DataStorage._bytes.getter();
  v2 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(v56, result))
    {
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    v2 += v56 - result;
  }

  v32 = __OFSUB__(v57, v56);
  v58 = v57 - v56;
  if (v32)
  {
    __break(1u);
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  result = MEMORY[0x2667557A0]();
  if (result >= v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = result;
  }

  if (v2)
  {
    v1 = v59;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_192;
  }

  v53 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_159;
  }

  __break(1u);
LABEL_145:
  v60 = v53;
  v61 = v53 >> 32;
  v62 = v61 - v60;
  if (v61 < v60)
  {
    __break(1u);
    goto LABEL_190;
  }

  v2 = __DataStorage._bytes.getter();
  if (!v2)
  {
    goto LABEL_149;
  }

  result = __DataStorage._offset.getter();
  if (__OFSUB__(v60, result))
  {
    goto LABEL_194;
  }

  v2 += v60 - result;
LABEL_149:
  result = MEMORY[0x2667557A0]();
  if (result >= v62)
  {
    v1 = v62;
  }

  else
  {
    v1 = result;
  }

  if (!v2)
  {
    LODWORD(v1) = 0;
    goto LABEL_159;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_155:
    *(&v77 + 6) = 0;
    *&v77 = 0;
    result = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_156:
      v28 = &v77;
      v29 = 4;
      v38 = 0;
LABEL_89:
      if (!sqlite3_bind_blob(result, v29, v28, v38, a1))
      {
        result = ppStmt[0];
        goto LABEL_91;
      }

LABEL_90:
      *&v77 = 0x726F7272456C7173;
      *(&v77 + 1) = 0xE90000000000003ALL;
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266756A70](v39);

      v40 = v77;
      lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
      swift_allocError();
      *v41 = 0;
      *(v41 + 8) = v40;
      result = swift_willThrow();
LABEL_91:
      v42 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_190:
    v76 = result;
    swift_once();
    result = v76;
    goto LABEL_156;
  }

  if (v1 <= 0x7FFFFFFF)
  {
LABEL_159:
    result = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_160:
      v29 = 4;
      goto LABEL_87;
    }

LABEL_184:
    v74 = result;
    swift_once();
    result = v74;
    goto LABEL_160;
  }

LABEL_196:
  __break(1u);
  return result;
}

uint64_t closure #1 in variable initialization expression of static EpochModel.converter@<X0>(sqlite3_stmt *a1@<X0>, uint64_t a2@<X8>)
{
  if (sqlite3_column_type(a1, 0) == 5)
  {
    goto LABEL_11;
  }

  v4 = sqlite3_column_blob(a1, 0);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 0);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 1) == 5 || (v10 = sqlite3_column_int64(a1, 1), sqlite3_column_type(a1, 2) == 5) || (v11 = sqlite3_column_int64(a1, 2), sqlite3_column_type(a1, 3) == 5) || (v12 = sqlite3_column_blob(a1, 3)) == 0)
  {
    v18 = v7;
    v19 = v9;
    goto LABEL_10;
  }

  v13 = v12;
  v14 = sqlite3_column_bytes(a1, 3);
  v15 = specialized Data.init(bytes:count:)(v13, v14);
  v17 = v16;
  if (sqlite3_column_type(a1, 4) == 5 || (v26 = v17, (v22 = sqlite3_column_blob(a1, 4)) == 0))
  {
    outlined consume of Data._Representation(v7, v9);
    v18 = v15;
    v19 = v17;
LABEL_10:
    outlined consume of Data._Representation(v18, v19);
LABEL_11:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v20 = 3;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    return swift_willThrow();
  }

  v23 = v22;
  v24 = sqlite3_column_bytes(a1, 4);
  result = specialized Data.init(bytes:count:)(v23, v24);
  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = 0;
  *(a2 + 32) = v11;
  *(a2 + 40) = 0;
  *(a2 + 48) = v15;
  *(a2 + 56) = v26;
  *(a2 + 64) = result;
  *(a2 + 72) = v25;
  return result;
}

uint64_t (*static EpochModel.converter.getter())()
{
  swift_beginAccess();
  v0 = static EpochModel.converter;

  return v0;
}

uint64_t static EpochModel.converter.setter(uint64_t (*a1)(), uint64_t a2)
{
  swift_beginAccess();
  static EpochModel.converter = a1;
  qword_281EF8668 = a2;
}

uint64_t key path getter for static EpochModel.converter : EpochModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = static EpochModel.converter;
  v2 = qword_281EF8668;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error)partial apply;
  a1[1] = v4;
}

uint64_t key path setter for static EpochModel.converter : EpochModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  swift_beginAccess();
  static EpochModel.converter = thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out EpochModel?, @error @owned Error)partial apply;
  qword_281EF8668 = v3;
}

double (*protocol witness for static SqlSchema.converter.getter in conformance EpochModel())@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v1 = static EpochModel.converter;
  v0 = qword_281EF8668;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error)partial apply;
}

uint64_t *EpochQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static EpochQuery.converter;
}

uint64_t static EpochQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static EpochQuery.converter;

  return v0;
}

uint64_t static EpochQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static EpochQuery.converter = a1;
  qword_2800168F8 = a2;
}

uint64_t (*static EpochQuery.converter.modify())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static EpochQuery.converter : EpochQuery.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static EpochQuery.converter;
  v2 = qword_2800168F8;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static EpochQuery.converter : EpochQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static EpochQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out EpochModel?, @error @owned Error);
  qword_2800168F8 = v3;
}

uint64_t EpochQuery.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t EpochQuery.groupID.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

sqlite3_stmt *EpochQuery.queryStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v3 = strdup("SELECT * FROM Epoch_Table WHERE epoch_id = ? AND era_id = ? AND client_id = ? AND group_id = ? LIMIT 1;");
  if (!v3)
  {
LABEL_99:
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v3, -1, ppStmt, 0))
  {
    goto LABEL_80;
  }

  if (sqlite3_bind_int64(ppStmt[0], 1, *(v1 + 16)))
  {
    goto LABEL_80;
  }

  v4 = sqlite3_bind_int64(ppStmt[0], 2, *(v1 + 24));
  if (v4)
  {
    goto LABEL_80;
  }

  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v12 = v1;
      v13 = *(v5 + 16);
      v14 = *(v5 + 24);
      LODWORD(v1) = *(v1 + 8);
      v15 = __DataStorage._bytes.getter();
      if (v15)
      {
        v9 = v15;
        LODWORD(v1) = v6;
        v15 = __DataStorage._offset.getter();
        if (__OFSUB__(v13, v15))
        {
          __break(1u);
          goto LABEL_91;
        }

        v8 = v9 + v13 - v15;
      }

      else
      {
        v8 = 0;
      }

      v9 = (v14 - v13);
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
      }

      else
      {
        LODWORD(v1) = v6;
        v15 = MEMORY[0x2667557A0]();
        if (v15 >= v9)
        {
          v19 = v14 - v13;
        }

        else
        {
          v19 = v15;
        }

        if (v8)
        {
          v11 = v19;
        }

        else
        {
          v11 = 0;
        }

        if (v11 >= 0xFFFFFFFF80000000)
        {
          if (v11 <= 0x7FFFFFFF)
          {
            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_89;
    }

    *(&v47 + 6) = 0;
    *&v47 = 0;
    v4 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_18:
      v9 = SQLITE_TRANSIENT;
      v10 = &v47;
      LODWORD(v11) = 0;
      goto LABEL_43;
    }

LABEL_86:
    v43 = v4;
    swift_once();
    v4 = v43;
    goto LABEL_18;
  }

  if (!v7)
  {
    *&v47 = *v1;
    DWORD2(v47) = v6;
    WORD6(v47) = WORD2(v6);
    v4 = ppStmt[0];
    LODWORD(v8) = BYTE6(v6);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_8:
      v9 = SQLITE_TRANSIENT;
      v10 = &v47;
      LODWORD(v11) = v8;
      goto LABEL_43;
    }

LABEL_84:
    v42 = v4;
    swift_once();
    v4 = v42;
    goto LABEL_8;
  }

  v16 = v5;
  v17 = v5 >> 32;
  v13 = v17 - v16;
  if (v17 < v16)
  {
    __break(1u);
    goto LABEL_86;
  }

  v12 = v1;
  v18 = __DataStorage._bytes.getter();
  if (!v18)
  {
LABEL_30:
    v8 = 0;
    goto LABEL_31;
  }

  v9 = v18;
  LODWORD(v1) = v6;
  v15 = __DataStorage._offset.getter();
  if (__OFSUB__(v16, v15))
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v8 = v9 + v16 - v15;
LABEL_31:
  v1 = v6 & 0x3FFFFFFFFFFFFFFFLL;
  v4 = MEMORY[0x2667557A0]();
  if (v4 >= v13)
  {
    v11 = v13;
  }

  else
  {
    v11 = v4;
  }

  if (v8)
  {
    if (v11 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_84;
    }

    v1 = v12;
    if (v11 <= 0x7FFFFFFF)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  LODWORD(v11) = 0;
LABEL_39:
  v1 = v12;
LABEL_40:
  v4 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v40 = ppStmt[0];
    v41 = v11;
    swift_once();
    v4 = v40;
    LODWORD(v11) = v41;
  }

  v9 = SQLITE_TRANSIENT;
  v10 = v8;
LABEL_43:
  v15 = sqlite3_bind_blob(v4, 3, v10, v11, v9);
  if (v15)
  {
    goto LABEL_80;
  }

  v20 = *(v1 + 32);
  v21 = *(v1 + 40);
  v22 = v21 >> 62;
  if ((v21 >> 62) <= 1)
  {
    if (!v22)
    {
      *&v47 = *(v1 + 32);
      DWORD2(v47) = v21;
      WORD6(v47) = WORD2(v21);
      v15 = ppStmt[0];
      LODWORD(v1) = BYTE6(v21);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_47:
        v23 = &v47;
LABEL_78:
        v35 = v1;
LABEL_79:
        if (!sqlite3_bind_blob(v15, 4, v23, v35, v9))
        {
          result = ppStmt[0];
          goto LABEL_81;
        }

LABEL_80:
        *&v47 = 0x726F7272456C7173;
        *(&v47 + 1) = 0xE90000000000003ALL;
        v36 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x266756A70](v36);

        v37 = v47;
        lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
        swift_allocError();
        *v38 = 0;
        *(v38 + 8) = v37;
        result = swift_willThrow();
LABEL_81:
        v39 = *MEMORY[0x277D85DE8];
        return result;
      }

LABEL_92:
      v45 = v15;
      swift_once();
      v15 = v45;
      goto LABEL_47;
    }

    goto LABEL_62;
  }

  if (v22 != 2)
  {
    goto LABEL_72;
  }

  v24 = *(v20 + 16);
  v25 = *(v20 + 24);
  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v26 = __DataStorage._offset.getter();
    if (__OFSUB__(v24, v26))
    {
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v8 += v24 - v26;
  }

  v27 = __OFSUB__(v25, v24);
  v28 = v25 - v24;
  if (v27)
  {
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v15 = MEMORY[0x2667557A0]();
  if (v15 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v15;
  }

  if (v8)
  {
    v1 = v29;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_96;
  }

  v20 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_76;
  }

  __break(1u);
LABEL_62:
  v30 = v20;
  v31 = v20 >> 32;
  v32 = v31 - v30;
  if (v31 < v30)
  {
    __break(1u);
    goto LABEL_94;
  }

  v8 = __DataStorage._bytes.getter();
  if (v8)
  {
    v33 = __DataStorage._offset.getter();
    if (!__OFSUB__(v30, v33))
    {
      v8 += v30 - v33;
      goto LABEL_66;
    }

    goto LABEL_98;
  }

LABEL_66:
  result = MEMORY[0x2667557A0]();
  if (result >= v32)
  {
    v1 = v32;
  }

  else
  {
    v1 = result;
  }

  if (!v8)
  {
    LODWORD(v1) = 0;
    goto LABEL_76;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_72:
    *(&v47 + 6) = 0;
    *&v47 = 0;
    v15 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_73:
      v23 = &v47;
      v35 = 0;
      goto LABEL_79;
    }

LABEL_94:
    v46 = v15;
    swift_once();
    v15 = v46;
    goto LABEL_73;
  }

  if (v1 <= 0x7FFFFFFF)
  {
LABEL_76:
    v15 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_77:
      v23 = v8;
      goto LABEL_78;
    }

LABEL_89:
    v44 = v15;
    swift_once();
    v15 = v44;
    goto LABEL_77;
  }

  __break(1u);
  return result;
}

double (*protocol witness for static SqlQuery.converter.getter in conformance EpochQuery())@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static EpochQuery.converter;
  v0 = qword_2800168F8;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error);
}

sqlite3_stmt *specialized static EpochModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Epoch_Table (\n    client_id BLOB NOT NULL,\n    epoch_id BIGINT NOT NULL,\n    era_id BIGINT NOT NULL,\n    group_id BLOB NOT NULL,\n    epoch_record_data BLOB NOT NULL,\n    PRIMARY KEY (epoch_id, era_id, group_id, client_id)\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

sqlite3_stmt *specialized static EpochModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Epoch_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    result = swift_willThrow();
  }

  else
  {
    result = ppStmt[0];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getEnumTagSinglePayload for EpochModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 80))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for EpochModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2652D9F00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out EpochModel?, @error @owned Error)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v10 = a1;
  v5(v9, &v10);
  if (!v3)
  {
    v8 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v8;
    *(a2 + 64) = v9[4];
    result = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(v9, *a1);
  if (!v3)
  {
    v8 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v8;
    *(a2 + 64) = v9[4];
    result = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = result;
  }

  return result;
}

__n128 partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned EpochModel?, @error @owned Error)@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v8);
  if (!v2)
  {
    v7 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v7;
    *(a1 + 64) = v8[4];
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, v8);
  ObjectType = swift_getObjectType();

  return specialized MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(v10, a2, a4, v4, v8, ObjectType, v9, a3);
}

void thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?, @unowned NSData?) -> ()(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  if (a4 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = Data._bridgeToObjectiveC()().super.isa;
  }

  v9 = v8;
  (*(a5 + 16))(a5, isa);
}

uint64_t MLSDaemon.publicSigningKey(for:with:)(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  v4 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v3[25] = v4;
  v5 = *(v4 - 8);
  v3[26] = v5;
  v6 = *(v5 + 64) + 15;
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v3[28] = v7;
  v8 = *(v7 - 8);
  v3[29] = v8;
  v9 = *(v8 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v10 = type metadata accessor for URI();
  v3[32] = v10;
  v11 = *(v10 - 8);
  v3[33] = v11;
  v12 = *(v11 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v13 = type metadata accessor for MLS.ClientIdentifier();
  v3[37] = v13;
  v14 = *(v13 - 8);
  v3[38] = v14;
  v15 = *(v14 + 64) + 15;
  v3[39] = swift_task_alloc();
  v16 = type metadata accessor for MLS.UniqueClientIdentifier();
  v3[40] = v16;
  v17 = *(v16 - 8);
  v3[41] = v17;
  v18 = *(v17 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.publicSigningKey(for:with:), 0, 0);
}

uint64_t MLSDaemon.publicSigningKey(for:with:)()
{
  v43 = v0;
  v1 = v0[44];
  v2 = v0[41];
  v38 = v0[40];
  v40 = v0[43];
  v3 = v0[36];
  v4 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  log = v0[24];
  v7 = v0[22];
  (*(v0[38] + 16))(v0[39], v0[23], v0[37]);
  v8 = *(v5 + 16);
  v0[45] = v8;
  v0[46] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[47] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v4, v7, v6);
  v9 = *(v2 + 16);
  v0[48] = v9;
  v0[49] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v40, v1, v38);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[43];
  v15 = v0[40];
  v14 = v0[41];
  v16 = v0[35];
  v18 = v0[32];
  v17 = v0[33];
  if (v12)
  {
    v39 = v11;
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v19 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v15;
    loga = v10;
    v21 = v13;
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v42);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v21, v35);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v42);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_26524C000, loga, v39, "MLSDaemon publicSigningKey called { uri: %s, clientIdentifier: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v41, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v0[50] = v24;
  v0[51] = v29;
  v31 = swift_task_alloc();
  v0[52] = v31;
  *v31 = v0;
  v31[1] = MLSDaemon.publicSigningKey(for:with:);
  v32 = v0[44];
  v33 = v0[24];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v32);
}

{
  v2 = *(*v1 + 416);
  v5 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = MLSDaemon.publicSigningKey(for:with:);
  }

  else
  {
    v3 = MLSDaemon.publicSigningKey(for:with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[24];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[54] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[55] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[56] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.publicSigningKey(for:with:), v4, v3);
}

{
  v2 = v0[55];
  v1 = v0[56];
  v3 = v0[54];
  v4 = v0[24];

  v0[57] = v3(v5);

  return MEMORY[0x2822009F8](MLSDaemon.publicSigningKey(for:with:), 0, 0);
}

{
  v100 = v0;
  if (*(v0[57] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[44]), (v2 & 1) != 0))
  {
    v3 = v0[47];
    v5 = v0[30];
    v4 = v0[31];
    v6 = v0[28];
    v7 = v0[29];
    v8 = v0[24];
    v9 = *(v7 + 16);
    v9(v4, *(v0[57] + 56) + *(v7 + 72) * v1, v6);

    v9(v5, v4, v6);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[29];
    v13 = v0[30];
    v15 = v0[28];
    if (v12)
    {
      v95 = v0[28];
      v16 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v99[0] = v90;
      *v16 = 136315138;
      log = v11;
      MLS.SwiftMLSClientPicker.client.getter();
      v17 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      dispatch thunk of MLS.SwiftMLSClientProtocol.signaturePublicKey.getter();
      v18 = v0[21];
      __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
      v19 = *(v18 + 8);
      v20 = dispatch thunk of MLS.Cryptography.SerializablePublicKey.data.getter();
      v22 = v21;
      v23 = Data.base64EncodedString(options:)(0);
      outlined consume of Data._Representation(v20, v22);
      v24 = v95;
      v96 = *(v14 + 8);
      v96(v13, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23._countAndFlagsBits, v23._object, v99);

      *(v16 + 4) = v25;
      _os_log_impl(&dword_26524C000, v10, log, "MLSDaemon publicSigningKey data: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      MEMORY[0x2667577B0](v90, -1, -1);
      MEMORY[0x2667577B0](v16, -1, -1);
    }

    else
    {

      v96 = *(v14 + 8);
      v96(v13, v15);
    }

    v64 = v0[44];
    v76 = v0[51];
    v77 = v0[43];
    v65 = v0[41];
    v66 = v0[40];
    v78 = v0[42];
    v79 = v0[39];
    v80 = v0[36];
    v82 = v0[35];
    v67 = v0[31];
    v85 = v0[34];
    logc = v0[30];
    v68 = v0[28];
    v94 = v0[27];
    MLS.SwiftMLSClientPicker.client.getter();
    v69 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    dispatch thunk of MLS.SwiftMLSClientProtocol.signaturePublicKey.getter();
    v70 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
    v71 = *(v70 + 8);
    v72 = dispatch thunk of MLS.Cryptography.SerializablePublicKey.data.getter();
    v74 = v73;
    v96(v67, v68);
    v76(v64, v66);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

    v75 = v0[1];

    return v75(v72, v74);
  }

  else
  {
    loga = v0[48];
    v91 = v0[49];
    v26 = v0[46];
    v97 = v0[47];
    v27 = v0[44];
    v28 = v0[45];
    v29 = v0[42];
    v30 = v0[40];
    v31 = v0[34];
    v32 = v0[32];
    v83 = v0[24];
    v33 = v0[22];

    v28(v31, v33, v32);
    (loga)(v29, v27, v30);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[50];
    v38 = v0[51];
    v39 = v0[42];
    v98 = v0[41];
    v40 = v0[40];
    v41 = v0[33];
    v42 = v0[34];
    v43 = v0[32];
    if (v36)
    {
      logb = v34;
      v44 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v99[0] = v92;
      *v44 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v81 = v38;
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v35;
      v47 = v46;
      v37(v42, v43);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v99);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v49 = dispatch thunk of CustomStringConvertible.description.getter();
      v51 = v50;
      v81(v39, v40);
      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v99);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_26524C000, logb, v84, "MLSDaemon publicSigningKey has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v92, -1, -1);
      MEMORY[0x2667577B0](v44, -1, -1);
    }

    else
    {

      v38(v39, v40);
      v37(v42, v43);
    }

    (*(v0[26] + 104))(v0[27], *MEMORY[0x277D4D2B0], v0[25]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v53 = v0[43];
    v54 = v0[42];
    v55 = v0[39];
    v57 = v0[35];
    v56 = v0[36];
    v58 = v0[34];
    v59 = v0[30];
    v60 = v0[31];
    v93 = v0[27];
    v61 = (v0[41] + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v0[51])(v0[44], v0[40]);

    v62 = v0[1];

    return v62();
  }
}

{
  v1 = *(v0 + 344);
  v2 = *(v0 + 336);
  v3 = *(v0 + 312);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 240);
  v8 = *(v0 + 248);
  v9 = *(v0 + 216);
  v13 = *(v0 + 424);
  v10 = (*(v0 + 328) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 408))(*(v0 + 352), *(v0 + 320));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t MLSDaemon.getKeyPackage(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for MLS.Client.KeyPackage();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v14 = type metadata accessor for URI();
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v17 = type metadata accessor for MLS.ClientIdentifier();
  v4[21] = v17;
  v18 = *(v17 - 8);
  v4[22] = v18;
  v19 = *(v18 + 64) + 15;
  v4[23] = swift_task_alloc();
  v20 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[24] = v20;
  v21 = *(v20 - 8);
  v4[25] = v21;
  v22 = *(v21 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.getKeyPackage(for:with:), 0, 0);
}

uint64_t MLSDaemon.getKeyPackage(for:with:)()
{
  v43 = v0;
  v1 = v0[28];
  v2 = v0[25];
  v38 = v0[24];
  v40 = v0[27];
  v3 = v0[20];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  log = v0[5];
  v7 = v0[3];
  (*(v0[22] + 16))(v0[23], v0[4], v0[21]);
  v8 = *(v5 + 16);
  v0[29] = v8;
  v0[30] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[31] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v4, v7, v6);
  v9 = *(v2 + 16);
  v0[32] = v9;
  v0[33] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v40, v1, v38);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[27];
  v15 = v0[24];
  v14 = v0[25];
  v16 = v0[19];
  v18 = v0[16];
  v17 = v0[17];
  if (v12)
  {
    v39 = v11;
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v19 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v15;
    loga = v10;
    v21 = v13;
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v42);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v21, v35);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v42);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_26524C000, loga, v39, "MLSDaemon getKeyPackage called { uri: %s, clientIdentifier: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v41, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v0[34] = v24;
  v0[35] = v29;
  v31 = swift_task_alloc();
  v0[36] = v31;
  *v31 = v0;
  v31[1] = MLSDaemon.getKeyPackage(for:with:);
  v32 = v0[28];
  v33 = v0[5];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v32);
}

{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = MLSDaemon.getKeyPackage(for:with:);
  }

  else
  {
    v3 = MLSDaemon.getKeyPackage(for:with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[5];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[38] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[39] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[40] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.getKeyPackage(for:with:), v4, v3);
}

{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[38];
  v4 = v0[5];

  v0[41] = v3(v5);

  return MEMORY[0x2822009F8](MLSDaemon.getKeyPackage(for:with:), 0, 0);
}

{
  v70 = v0;
  if (*(v0[41] + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[28]), (v2 & 1) != 0))
  {
    v3 = v0[28];
    v4 = v0[24];
    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[12];
    v8 = v0[13];
    v9 = v0[5];
    (*(v8 + 16))(v5, *(v0[41] + 56) + *(v8 + 72) * v1, v7);

    (*(v8 + 32))(v6, v5, v7);
    v10 = *(v9 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister);
    _StringGuts.grow(_:)(16);

    strcpy(v69, "getKeyPackage-");
    HIBYTE(v69[1]) = -18;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v11);

    v12 = v69[0];
    v13 = v69[1];
    v0[42] = v69[1];
    v14 = swift_task_alloc();
    v0[43] = v14;
    *(v14 + 16) = v6;
    v15 = *(MEMORY[0x277D4D240] + 4);
    v16 = swift_task_alloc();
    v0[44] = v16;
    v17 = type metadata accessor for DaemonPersister();
    v18 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister);
    *v16 = v0;
    v16[1] = MLSDaemon.getKeyPackage(for:with:);
    v19 = v0[11];
    v20 = v0[9];

    return MEMORY[0x2821ACB80](v19, v12, v13, &async function pointer to partial apply for closure #1 in MLSDaemon.getKeyPackage(for:with:), v14, v17, v20, v18);
  }

  else
  {
    log = v0[32];
    v65 = v0[33];
    v21 = v0[30];
    v67 = v0[31];
    v22 = v0[28];
    v23 = v0[29];
    v24 = v0[26];
    v25 = v0[24];
    v26 = v0[18];
    v27 = v0[16];
    v60 = v0[5];
    v28 = v0[3];

    v23(v26, v28, v27);
    (log)(v24, v22, v25);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[34];
    v33 = v0[35];
    v34 = v0[26];
    v68 = v0[25];
    v35 = v0[24];
    v36 = v0[17];
    v37 = v0[18];
    v38 = v0[16];
    if (v31)
    {
      loga = v29;
      v39 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v69[0] = v66;
      *v39 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v59 = v33;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v30;
      v42 = v41;
      v32(v37, v38);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v69);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v59(v34, v35);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v69);

      *(v39 + 14) = v47;
      _os_log_impl(&dword_26524C000, loga, v61, "MLSDaemon getKeyPackage has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v66, -1, -1);
      MEMORY[0x2667577B0](v39, -1, -1);
    }

    else
    {

      v33(v34, v35);
      v32(v37, v38);
    }

    (*(v0[7] + 104))(v0[8], *MEMORY[0x277D4D2B0], v0[6]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v48 = v0[27];
    v49 = v0[26];
    v50 = v0[23];
    v52 = v0[19];
    v51 = v0[20];
    v53 = v0[18];
    v54 = v0[14];
    v55 = v0[15];
    v56 = v0[11];
    logb = v0[8];
    (v0[35])(v0[28], v0[24]);

    v57 = v0[1];

    return v57();
  }
}

{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 344);
  v4 = *(*v1 + 336);
  v7 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v5 = MLSDaemon.getKeyPackage(for:with:);
  }

  else
  {
    v5 = MLSDaemon.getKeyPackage(for:with:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = v0[28];
  v13 = v0[35];
  v14 = v0[27];
  v2 = v0[25];
  v3 = v0[24];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[20];
  v18 = v0[19];
  v12 = v0[15];
  v19 = v0[18];
  v20 = v0[14];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  v21 = v0[8];
  v9 = v0[2];
  MLS.Client.KeyPackage.rawRepresentation.getter();
  MLS.KeyPackageInfo.init(keyPackage:)();
  (*(v7 + 8))(v6, v8);
  v13(v1, v3);
  (*(v4 + 8))(v12, v5);

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200) + 8;
  v3 = *(v0 + 216);
  v4 = *(v0 + 184);
  v6 = *(v0 + 152);
  v5 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v13 = *(v0 + 88);
  v10 = *(v0 + 64);
  v14 = *(v0 + 296);
  (*(v0 + 280))(*(v0 + 224), *(v0 + 192));

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 200) + 8;
  (*(v0 + 280))(*(v0 + 224), *(v0 + 192));
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);
  v14 = *(v0 + 88);
  v11 = *(v0 + 64);
  v15 = *(v0 + 360);
  (*(v1 + 8))(*(v0 + 120), *(v0 + 96));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t MLSDaemon.credentialSigningRequest(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  Identity = type metadata accessor for KDSRegistration.GetIdentityError.ErrorType();
  v4[14] = Identity;
  v9 = *(Identity - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v14 = type metadata accessor for URI();
  v4[21] = v14;
  v15 = *(v14 - 8);
  v4[22] = v15;
  v16 = *(v15 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v17 = type metadata accessor for MLS.ClientIdentifier();
  v4[27] = v17;
  v18 = *(v17 - 8);
  v4[28] = v18;
  v19 = *(v18 + 64) + 15;
  v4[29] = swift_task_alloc();
  v20 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[30] = v20;
  v21 = *(v20 - 8);
  v4[31] = v21;
  v22 = *(v21 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.credentialSigningRequest(for:with:), 0, 0);
}

uint64_t MLSDaemon.credentialSigningRequest(for:with:)()
{
  v43 = v0;
  v1 = v0[35];
  v2 = v0[31];
  v38 = v0[30];
  v40 = v0[34];
  v3 = v0[26];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  log = v0[10];
  v7 = v0[8];
  (*(v0[28] + 16))(v0[29], v0[9], v0[27]);
  v8 = *(v5 + 16);
  v0[36] = v8;
  v0[37] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[38] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v4, v7, v6);
  v9 = *(v2 + 16);
  v0[39] = v9;
  v0[40] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v40, v1, v38);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[34];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[25];
  v18 = v0[21];
  v17 = v0[22];
  if (v12)
  {
    v39 = v11;
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v19 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v15;
    loga = v10;
    v21 = v13;
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v42);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v21, v35);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v42);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_26524C000, loga, v39, "MLSDaemon credentialSigningRequest called { uri: %s, clientIdentifier: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v41, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v0[41] = v24;
  v0[42] = v29;
  v31 = swift_task_alloc();
  v0[43] = v31;
  *v31 = v0;
  v31[1] = MLSDaemon.credentialSigningRequest(for:with:);
  v32 = v0[35];
  v33 = v0[10];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v32);
}

{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = MLSDaemon.credentialSigningRequest(for:with:);
  }

  else
  {
    v3 = MLSDaemon.credentialSigningRequest(for:with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[10];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[45] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[46] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[47] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.credentialSigningRequest(for:with:), v4, v3);
}

{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v4 = v0[10];

  v0[48] = v3(v5);

  return MEMORY[0x2822009F8](MLSDaemon.credentialSigningRequest(for:with:), 0, 0);
}

{
  v113 = v0;
  if (!*(v0[48] + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(v0[35]), (v2 & 1) == 0))
  {
    log = v0[39];
    v104 = v0[40];
    v19 = v0[37];
    v109 = v0[38];
    v20 = v0[35];
    v21 = v0[36];
    v22 = v0[32];
    v23 = v0[30];
    v24 = v0[23];
    v25 = v0[21];
    v96 = v0[10];
    v26 = v0[8];

    v21(v24, v26, v25);
    (log)(v22, v20, v23);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[41];
    v110 = v0[42];
    v32 = v0[31];
    v31 = v0[32];
    v33 = v0[30];
    v34 = v0[22];
    v35 = v0[23];
    v36 = v0[21];
    if (v29)
    {
      loga = v27;
      v37 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v112[0] = v105;
      *v37 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v38 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v28;
      v40 = v39;
      v30(v35, v36);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, v112);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v43;
      v110(v31, v33);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v112);

      *(v37 + 14) = v45;
      _os_log_impl(&dword_26524C000, loga, v97, "MLSDaemon getKeyPackage has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v105, -1, -1);
      MEMORY[0x2667577B0](v37, -1, -1);
    }

    else
    {

      v110(v31, v33);
      v30(v35, v36);
    }

    v46 = v0[42];
    v47 = v0[35];
    v48 = v0[30];
    (*(v0[12] + 104))(v0[13], *MEMORY[0x277D4D2B0], v0[11]);
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v46(v47, v48);
    goto LABEL_11;
  }

  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v6 = v0[18];
  v7 = *(v6 + 16);
  v7(v3, *(v0[48] + 56) + *(v6 + 72) * v1, v5);

  v7(v4, v3, v5);
  v8 = (*(v6 + 88))(v4, v5);
  if (v8 == *MEMORY[0x277D4CFC0])
  {
    v9 = v0[19];
    v10 = v0[8];
    (*(v0[18] + 96))(v9, v0[17]);
    outlined init with take of MLS.SwiftMLSPersisterProtocol(v9, (v0 + 2));
    v11 = v0[5];
    v12 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v11);
    v13 = MEMORY[0x266756630]();
    v15 = v14;
    v0[49] = v14;
    v16 = *(MEMORY[0x277D4D120] + 4);
    v17 = swift_task_alloc();
    v0[50] = v17;
    *v17 = v0;
    v17[1] = MLSDaemon.credentialSigningRequest(for:with:);
    v18 = v0[7];

    return MEMORY[0x2821ACAA8](v18, v13, v15, v11, v12);
  }

  if (v8 == *MEMORY[0x277D4CFC8])
  {
    v61 = v0[39];
    v60 = v0[40];
    v62 = v0[37];
    v63 = v0[38];
    v64 = v0[35];
    v65 = v0[33];
    v66 = v0[30];
    v67 = v0[10];
    (v0[36])(v0[24], v0[8], v0[21]);
    v61(v65, v64, v66);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v0[41];
    v111 = v0[42];
    v72 = v0[33];
    v73 = v0[30];
    v74 = v0[31];
    v75 = v0[24];
    v77 = v0[21];
    v76 = v0[22];
    if (v70)
    {
      logc = v68;
      v78 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v112[0] = v107;
      *v78 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v69;
      v81 = v80;
      v71(v75, v77);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v112);

      *(v78 + 4) = v82;
      *(v78 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      v111(v72, v73);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v112);

      *(v78 + 14) = v86;
      _os_log_impl(&dword_26524C000, logc, v99, "MLSDaemon credentialSigningRequest called on invalid swiftMLSClient { uri: %s, uniqueClientIdentifier: %s }", v78, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v107, -1, -1);
      MEMORY[0x2667577B0](v78, -1, -1);
    }

    else
    {

      v111(v72, v73);
      v71(v75, v77);
    }

    v108 = v0[42];
    v88 = v0[35];
    v89 = v0[30];
    v90 = v0[19];
    v91 = v0[20];
    v92 = v0[17];
    v93 = v0[18];
    (*(v0[15] + 104))(v0[16], *MEMORY[0x277D4C9D0], v0[14]);
    type metadata accessor for KDSRegistration.GetIdentityError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v94 = *(v93 + 8);
    v94(v91, v92);
    v108(v88, v89);
    v94(v90, v92);
LABEL_11:
    v50 = v0[34];
    v49 = v0[35];
    v52 = v0[32];
    v51 = v0[33];
    v53 = v0[29];
    v55 = v0[25];
    v54 = v0[26];
    v57 = v0[23];
    v56 = v0[24];
    v58 = v0[20];
    v98 = v0[19];
    logb = v0[16];
    v106 = v0[13];

    v59 = v0[1];

    return v59();
  }

  v87 = v0[17];

  return MEMORY[0x2821FDEB8](v87, v87);
}

{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 392);

  if (v0)
  {
    v6 = MLSDaemon.credentialSigningRequest(for:with:);
  }

  else
  {
    v6 = MLSDaemon.credentialSigningRequest(for:with:);
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[30];
  v4 = v0[31];
  (*(v0[18] + 8))(v0[20], v0[17]);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[29];
  v11 = v0[25];
  v10 = v0[26];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[20];
  v17 = v0[19];
  v18 = v0[16];
  v19 = v0[13];
  v20 = v0[51];

  v15 = v0[1];

  return v15();
}

uint64_t MLSDaemon.loadCredential(credential:uri:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for XPCUtils.XPCError.ErrorType();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();
  Identity = type metadata accessor for KDSRegistration.GetIdentityError.ErrorType();
  v4[14] = Identity;
  v9 = *(Identity - 8);
  v4[15] = v9;
  v10 = *(v9 + 64) + 15;
  v4[16] = swift_task_alloc();
  v11 = type metadata accessor for MLS.SwiftMLSClientPicker();
  v4[17] = v11;
  v12 = *(v11 - 8);
  v4[18] = v12;
  v13 = *(v12 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v14 = type metadata accessor for URI();
  v4[21] = v14;
  v15 = *(v14 - 8);
  v4[22] = v15;
  v16 = *(v15 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v17 = type metadata accessor for MLS.ClientIdentifier();
  v4[27] = v17;
  v18 = *(v17 - 8);
  v4[28] = v18;
  v19 = *(v18 + 64) + 15;
  v4[29] = swift_task_alloc();
  v20 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4[30] = v20;
  v21 = *(v20 - 8);
  v4[31] = v21;
  v22 = *(v21 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](MLSDaemon.loadCredential(credential:uri:with:), 0, 0);
}

uint64_t MLSDaemon.loadCredential(credential:uri:with:)()
{
  v43 = v0;
  v1 = v0[35];
  v2 = v0[31];
  v38 = v0[30];
  v40 = v0[34];
  v3 = v0[26];
  v4 = v0[25];
  v6 = v0[21];
  v5 = v0[22];
  log = v0[10];
  v7 = v0[8];
  (*(v0[28] + 16))(v0[29], v0[9], v0[27]);
  v8 = *(v5 + 16);
  v0[36] = v8;
  v0[37] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v3, v7, v6);
  MLS.UniqueClientIdentifier.init(clientIdentifier:clientURI:)();
  v0[38] = OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_logger;
  v8(v4, v7, v6);
  v9 = *(v2 + 16);
  v0[39] = v9;
  v0[40] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v40, v1, v38);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[34];
  v15 = v0[30];
  v14 = v0[31];
  v16 = v0[25];
  v18 = v0[21];
  v17 = v0[22];
  if (v12)
  {
    v39 = v11;
    v19 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    *v19 = 136315394;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v15;
    loga = v10;
    v21 = v13;
    v23 = v22;
    v24 = *(v17 + 8);
    v24(v16, v18);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v23, &v42);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v21, v35);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v42);

    *(v19 + 14) = v30;
    _os_log_impl(&dword_26524C000, loga, v39, "MLSDaemon loadCredential called { uri: %s, clientIdentifier: %s }", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v41, -1, -1);
    MEMORY[0x2667577B0](v19, -1, -1);
  }

  else
  {

    v29 = *(v14 + 8);
    v29(v13, v15);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v0[41] = v24;
  v0[42] = v29;
  v31 = swift_task_alloc();
  v0[43] = v31;
  *v31 = v0;
  v31[1] = MLSDaemon.loadCredential(credential:uri:with:);
  v32 = v0[35];
  v33 = v0[10];

  return MLSDaemon.updateSwiftMLSClientMapIfNeeded(with:)(v32);
}

{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = MLSDaemon.loadCredential(credential:uri:with:);
  }

  else
  {
    v3 = MLSDaemon.loadCredential(credential:uri:with:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = v0[10];
  v2 = (*MEMORY[0x277D85000] & *v1) + 136;
  v0[45] = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  v0[46] = v2 & 0xFFFFFFFFFFFFLL | 0x2693000000000000;
  type metadata accessor for MLSActor();
  v0[47] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280]);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MLSDaemon.loadCredential(credential:uri:with:), v4, v3);
}

{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[45];
  v4 = v0[10];

  v0[48] = v3(v5);

  return MEMORY[0x2822009F8](MLSDaemon.loadCredential(credential:uri:with:), 0, 0);
}

{
  v116 = v0;
  if (!*(*(v0 + 384) + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 280)), (v2 & 1) == 0))
  {
    log = *(v0 + 312);
    v106 = *(v0 + 320);
    v21 = *(v0 + 296);
    v112 = *(v0 + 304);
    v22 = *(v0 + 280);
    v23 = *(v0 + 288);
    v24 = *(v0 + 256);
    v25 = *(v0 + 240);
    v26 = *(v0 + 184);
    v27 = *(v0 + 168);
    v98 = *(v0 + 80);
    v28 = *(v0 + 64);

    v23(v26, v28, v27);
    (log)(v24, v22, v25);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = *(v0 + 328);
    v113 = *(v0 + 336);
    v34 = *(v0 + 248);
    v33 = *(v0 + 256);
    v35 = *(v0 + 240);
    v36 = *(v0 + 176);
    v37 = *(v0 + 184);
    v38 = *(v0 + 168);
    if (v31)
    {
      loga = v29;
      v39 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v115[0] = v107;
      *v39 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v30;
      v42 = v41;
      v32(v37, v38);
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v115);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v113(v33, v35);
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v115);

      *(v39 + 14) = v47;
      _os_log_impl(&dword_26524C000, loga, v99, "MLSDaemon loadCredential has no clientXPCProxy { uri: %s, uniqueClientIdentifier: %s }", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v107, -1, -1);
      MEMORY[0x2667577B0](v39, -1, -1);
    }

    else
    {

      v113(v33, v35);
      v32(v37, v38);
    }

    v48 = *(v0 + 336);
    v49 = *(v0 + 280);
    v50 = *(v0 + 240);
    (*(*(v0 + 96) + 104))(*(v0 + 104), *MEMORY[0x277D4D2B0], *(v0 + 88));
    type metadata accessor for XPCUtils.XPCError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError, MEMORY[0x277D4D2C0]);
    swift_allocError();
    XPCUtils.XPCError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v48(v49, v50);
    goto LABEL_11;
  }

  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  v7 = *(v6 + 16);
  v7(v3, *(*(v0 + 384) + 56) + *(v6 + 72) * v1, v5);

  v7(v4, v3, v5);
  v8 = (*(v6 + 88))(v4, v5);
  if (v8 == *MEMORY[0x277D4CFC0])
  {
    v9 = *(v0 + 280);
    v10 = *(v0 + 240);
    v11 = *(v0 + 152);
    v12 = *(v0 + 80);
    v111 = *(v0 + 56);
    (*(*(v0 + 144) + 96))(v11, *(v0 + 136));
    outlined init with take of MLS.SwiftMLSPersisterProtocol(v11, v0 + 16);
    v13 = *(v12 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_persister);
    _StringGuts.grow(_:)(17);

    v115[0] = 0x6465724364616F6CLL;
    v115[1] = 0xEF2D6C6169746E65;
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v14);

    *(v0 + 392) = 0xEF2D6C6169746E65;
    v15 = swift_task_alloc();
    *(v0 + 400) = v15;
    *(v15 + 16) = v0 + 16;
    *(v15 + 24) = v111;
    v16 = *(MEMORY[0x277D4D240] + 4);
    v17 = swift_task_alloc();
    *(v0 + 408) = v17;
    v18 = type metadata accessor for DaemonPersister();
    v19 = _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type DaemonPersister and conformance DaemonPersister, type metadata accessor for DaemonPersister);
    *v17 = v0;
    v17[1] = MLSDaemon.loadCredential(credential:uri:with:);
    v20 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2821ACB80](v19, 0x6465724364616F6CLL, 0xEF2D6C6169746E65, &async function pointer to partial apply for closure #1 in MLSDaemon.loadCredential(credential:uri:with:), v15, v18, v20, v19);
  }

  if (v8 == *MEMORY[0x277D4CFC8])
  {
    v63 = *(v0 + 312);
    v62 = *(v0 + 320);
    v64 = *(v0 + 296);
    v65 = *(v0 + 304);
    v66 = *(v0 + 280);
    v67 = *(v0 + 264);
    v68 = *(v0 + 240);
    v69 = *(v0 + 80);
    (*(v0 + 288))(*(v0 + 192), *(v0 + 64), *(v0 + 168));
    v63(v67, v66, v68);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    v72 = os_log_type_enabled(v70, v71);
    v73 = *(v0 + 328);
    v114 = *(v0 + 336);
    v74 = *(v0 + 264);
    v75 = *(v0 + 240);
    v76 = *(v0 + 248);
    v77 = *(v0 + 192);
    v79 = *(v0 + 168);
    v78 = *(v0 + 176);
    if (v72)
    {
      logc = v70;
      v80 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v115[0] = v109;
      *v80 = 136315394;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type URI and conformance URI, MEMORY[0x277D4D258]);
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v101 = v71;
      v83 = v82;
      v73(v77, v79);
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v115);

      *(v80 + 4) = v84;
      *(v80 + 12) = 2080;
      _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000]);
      v85 = dispatch thunk of CustomStringConvertible.description.getter();
      v87 = v86;
      v114(v74, v75);
      v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v87, v115);

      *(v80 + 14) = v88;
      _os_log_impl(&dword_26524C000, logc, v101, "MLSDaemon loadCredential called on invalid swiftMLSClient { uri: %s, uniqueClientIdentifier: %s }", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667577B0](v109, -1, -1);
      MEMORY[0x2667577B0](v80, -1, -1);
    }

    else
    {

      v114(v74, v75);
      v73(v77, v79);
    }

    v110 = *(v0 + 336);
    v90 = *(v0 + 280);
    v91 = *(v0 + 240);
    v92 = *(v0 + 152);
    v93 = *(v0 + 160);
    v94 = *(v0 + 136);
    v95 = *(v0 + 144);
    (*(*(v0 + 120) + 104))(*(v0 + 128), *MEMORY[0x277D4C9D0], *(v0 + 112));
    type metadata accessor for KDSRegistration.GetIdentityError();
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type KDSRegistration.GetIdentityError and conformance KDSRegistration.GetIdentityError, MEMORY[0x277D4C9F0]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    v96 = *(v95 + 8);
    v96(v93, v94);
    v110(v90, v91);
    v96(v92, v94);
LABEL_11:
    v52 = *(v0 + 272);
    v51 = *(v0 + 280);
    v54 = *(v0 + 256);
    v53 = *(v0 + 264);
    v55 = *(v0 + 232);
    v57 = *(v0 + 200);
    v56 = *(v0 + 208);
    v59 = *(v0 + 184);
    v58 = *(v0 + 192);
    v60 = *(v0 + 160);
    v100 = *(v0 + 152);
    logb = *(v0 + 128);
    v108 = *(v0 + 104);

    v61 = *(v0 + 8);

    return v61();
  }

  v89 = *(v0 + 136);

  return MEMORY[0x2821FDEB8](v89, v89);
}

{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 400);
  v6 = *(v2 + 392);

  if (v0)
  {
    v7 = MLSDaemon.loadCredential(credential:uri:with:);
  }

  else
  {
    v7 = MLSDaemon.loadCredential(credential:uri:with:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v1 = v0[42];
  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];
  v8 = v0[29];
  v12 = v0[26];
  v13 = v0[25];
  v14 = v0[24];
  v15 = v0[23];
  v9 = v0[19];
  v16 = v0[16];
  v17 = v0[13];
  (*(v0[18] + 8))(v0[20], v0[17]);
  v1(v2, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 248) + 8;
  (*(v0 + 336))(*(v0 + 280), *(v0 + 240));
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v6 = *(v0 + 232);
  v8 = *(v0 + 200);
  v7 = *(v0 + 208);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 160);
  v14 = *(v0 + 152);
  v15 = *(v0 + 128);
  v16 = *(v0 + 104);
  v17 = *(v0 + 352);

  v12 = *(v0 + 8);

  return v12();
}

{
  v1 = v0[42];
  v2 = v0[35];
  v3 = v0[30];
  v4 = v0[31];
  (*(v0[18] + 8))(v0[20], v0[17]);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[29];
  v11 = v0[25];
  v10 = v0[26];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[20];
  v17 = v0[19];
  v18 = v0[16];
  v19 = v0[13];
  v20 = v0[52];

  v15 = v0[1];

  return v15();
}