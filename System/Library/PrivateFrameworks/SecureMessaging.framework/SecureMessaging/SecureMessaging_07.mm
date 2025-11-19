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
  v7 = lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x277D85928]);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8]);
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

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t one-time initialization function for shared()
{
  type metadata accessor for XPCActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static XPCActor.shared = v0;
  return result;
}

{
  type metadata accessor for MLSActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static MLSActor.shared = v0;
  return result;
}

{
  type metadata accessor for RegistrationActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static RegistrationActor.shared = v0;
  return result;
}

uint64_t XPCActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static XPCActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t static XPCActor.sharedUnownedExecutor.getter()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  return OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
}

uint64_t one-time initialization function for queue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v10[1] = MEMORY[0x277D84F90];
  _s15SecureMessaging8XPCActorCACScAAAWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, 255, MEMORY[0x277D852D8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85268], v0);
  result = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static XPCActor.queue = result;
  return result;
}

uint64_t XPCActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance XPCActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance XPCActor()
{
  if (one-time initialization token for queue != -1)
  {
    swift_once();
  }

  return OS_dispatch_queue_serial_executor.asUnownedSerialExecutor()();
}

uint64_t _s15SecureMessaging8XPCActorCACScAAAWlTm_2(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.RegistrationCompletedContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.RegistrationCompletedContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.RegistrationCompletedContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextV10CodingKeys33_0AF3ABEBDD5161C191FCDD6BCC1E55E1LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextV10CodingKeys33_0AF3ABEBDD5161C191FCDD6BCC1E55E1LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance KDSRegistration.RegistrationCompletedContext(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextV10CodingKeys33_0AF3ABEBDD5161C191FCDD6BCC1E55E1LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextV10CodingKeys33_0AF3ABEBDD5161C191FCDD6BCC1E55E1LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.RegistrationCompletedContext.CodingKeys and conformance KDSRegistration.RegistrationCompletedContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t dispatch thunk of KDSRegistration.Listener.isRegisteredChanged(simUniqueID:isRegistered:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6);
}

Swift::Double __swiftcall IDSServerBag.double(key:defaultValue:)(Swift::String key, Swift::Double defaultValue)
{
  v4 = MEMORY[0x266754510](key._countAndFlagsBits, key._object);
  v5 = [v2 objectForKey_];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      [v8 doubleValue];
      defaultValue = v6;
    }
  }

  else
  {
    outlined destroy of Any?(v11);
  }

  return defaultValue;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IDSServerBag.duration(key:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = MEMORY[0x266754510]();
  v7 = [v4 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      [v9 doubleValue];
      a3 = static Duration.seconds(_:)();
    }
  }

  else
  {
    outlined destroy of Any?(v12);
  }

  return a3;
}

uint64_t one-time initialization function for kdsBag(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = [objc_opt_self() sharedInstanceForBagType_];
  result = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for IDSServerBag, 0x277D18A10);
  *a2 = result;
  *a4 = a3;
  *a5 = v9;
  return result;
}

uint64_t static ServerBag.kdsBag.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return outlined init with copy of ServerBag.MLS(a2, v4);
}

double IDSServerBag.refreshKeysInterval.getter()
{
  v0._object = 0x80000002651E9360;
  v0._countAndFlagsBits = 0xD000000000000019;
  return IDSServerBag.double(key:defaultValue:)(v0, 604800.0);
}

double IDSServerBag.issueCertInterval.getter()
{
  v0._object = 0x80000002651E9380;
  v0._countAndFlagsBits = 0xD000000000000017;
  return IDSServerBag.double(key:defaultValue:)(v0, 1209600.0);
}

Swift::Double protocol witness for ServerBag.KDS.refreshKeysInterval.getter in conformance IDSServerBag()
{
  v1 = *v0;
  v2._object = 0x80000002651E9360;
  v2._countAndFlagsBits = 0xD000000000000019;
  return IDSServerBag.double(key:defaultValue:)(v2, 604800.0);
}

Swift::Double protocol witness for ServerBag.KDS.issueCertInterval.getter in conformance IDSServerBag()
{
  v1 = *v0;
  v2._object = 0x80000002651E9380;
  v2._countAndFlagsBits = 0xD000000000000017;
  return IDSServerBag.double(key:defaultValue:)(v2, 1209600.0);
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v27;
  v8[12] = v28;
  v8[9] = v25;
  v8[10] = v26;
  v8[7] = a8;
  v8[8] = v24;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  v8[13] = *(v28 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[14] = AssociatedTypeWitness;
  v10 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v8[15] = swift_task_alloc();
  v11 = *(v24 - 8);
  v8[16] = v11;
  v12 = *(v11 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v13 = *(v25 - 8);
  v8[20] = v13;
  v14 = *(v13 + 64) + 15;
  v8[21] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v8[22] = v15;
  v16 = *(v15 - 8);
  v8[23] = v16;
  v17 = *(v16 + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v18 = type metadata accessor for Logger();
  v8[26] = v18;
  v19 = *(v18 - 8);
  v8[27] = v19;
  v20 = *(v19 + 64) + 15;
  v8[28] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v21 = static XPCActor.shared;
  v8[29] = static XPCActor.shared;

  return MEMORY[0x2822009F8](static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), v21, 0);
}

uint64_t static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)()
{
  v50 = v0;
  v1 = *(v0 + 224);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  Logger.init(subsystem:category:)();
  UUID.init()();
  (*(v5 + 16))(v3, v2, v4);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 176);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v49 = v46;
    *v12 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v49);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPC told to send { requestID: %s }", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v46);
    MEMORY[0x266755550](v46, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  *(v0 + 240) = v16;
  v47 = *(v0 + 168);
  v42 = *(v0 + 152);
  v44 = *(v0 + 144);
  v19 = *(v0 + 120);
  v18 = *(v0 + 128);
  v21 = *(v0 + 104);
  v20 = *(v0 + 112);
  v22 = *(v0 + 88);
  v23 = *(v0 + 96);
  v25 = *(v0 + 56);
  v24 = *(v0 + 64);
  v26 = swift_task_alloc();
  v40 = *(v0 + 72);
  v27 = *(v0 + 24);
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  *(v26 + 32) = v40;
  *(v26 + 48) = v22;
  *(v26 + 56) = v23;
  *(v26 + 64) = v27;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v20, AssociatedConformanceWitness);
  VersatileError.init(type:)(v19, v24, v21);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), v26, v42, 0, 0, v24, v40, v21);
  (*(v18 + 8))(v42, v24);
  v30 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 200);
  v32 = *(v0 + 168);
  v43 = *(v0 + 72);
  v45 = *(v0 + 56);
  v41 = *(v0 + 88);
  v48 = *(v0 + 40);

  v33 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
  v34 = swift_task_alloc();
  *(v0 + 248) = v34;
  *(v34 + 16) = v45;
  *(v34 + 32) = v43;
  *(v34 + 48) = v41;
  *(v34 + 64) = v30;
  *(v34 + 72) = v31;
  *(v34 + 80) = v48;
  *(v34 + 96) = v32;
  v35 = *(MEMORY[0x277D85A40] + 4);
  v36 = swift_task_alloc();
  *(v0 + 256) = v36;
  *v36 = v0;
  v36[1] = static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:);
  v37 = *(v0 + 56);
  v38 = *(v0 + 16);

  return MEMORY[0x2822008A0](v38, v29, v33, 0xD00000000000003CLL, 0x80000002651E93C0, partial apply for closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), v34, v37);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v9 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 232);
    v5 = static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:);
  }

  else
  {
    v6 = *(v2 + 248);
    v7 = *(v2 + 232);

    v5 = static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v1 = v0[30];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v8 = v0[22];
  v9 = v0[19];
  v12 = v0[18];
  v13 = v0[17];
  v14 = v0[15];
  (*(v0[20] + 8))(v0[21], v0[9]);
  v1(v5, v8);
  (*(v3 + 8))(v2, v4);

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 248);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v4 = *(v0 + 72);

  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 208);
  v8 = *(v0 + 192);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 136);
  v13 = *(v0 + 120);
  v17 = *(v0 + 264);
  v14 = (*(v0 + 184) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*(v0 + 240))(*(v0 + 200), *(v0 + 176));
  (*(v6 + 8))(v5, v7);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t (*)(uint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4), char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v75 = a8;
  v76 = a6;
  v70 = a5;
  v71 = a1;
  v72 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v74 = a7;
  v15 = type metadata accessor for CheckedContinuation();
  v73 = *(v15 - 8);
  v69 = *(v73 + 64);
  MEMORY[0x28223BE20](v15);
  v78 = &v55 - v16;
  v17 = type metadata accessor for Logger();
  v67 = *(v17 - 8);
  v68 = v17;
  v18 = *(v67 + 64);
  MEMORY[0x28223BE20](v17);
  v65 = v19;
  v66 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v77 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v55 - v25;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v62 = a11;
  v63 = a12;
  v60 = a9;
  v61 = a10;
  v58 = *(v21 + 16);
  v58(v26, a3, v20);
  v57 = a2;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v59 = v21;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v55 = v15;
    v31 = v21;
    v32 = v30;
    v33 = swift_slowAlloc();
    v79 = v33;
    *v32 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v20;
    v36 = a3;
    v38 = v37;
    v39 = v26;
    v40 = v35;
    (*(v31 + 8))(v39, v35);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v38, &v79);
    a3 = v36;

    *(v32 + 4) = v41;
    _os_log_impl(&dword_264F1F000, v27, v28, "XPC sending event { requestID: %s }", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266755550](v33, -1, -1);
    v15 = v55;
    MEMORY[0x266755550](v32, -1, -1);
  }

  else
  {

    (*(v21 + 8))(v26, v20);
    v40 = v20;
  }

  v56 = v40;
  v43 = v66;
  v42 = v67;
  v44 = v68;
  (*(v67 + 16))(v66, v57, v68);
  v58(v77, a3, v40);
  v45 = v73;
  (*(v73 + 16))(v78, v71, v15);
  v46 = (*(v42 + 80) + 64) & ~*(v42 + 80);
  v47 = v59;
  v48 = (v65 + *(v59 + 80) + v46) & ~*(v59 + 80);
  v49 = (v64 + v48 + *(v45 + 80)) & ~*(v45 + 80);
  v50 = swift_allocObject();
  v51 = v75;
  *(v50 + 2) = v74;
  *(v50 + 3) = v51;
  v52 = v61;
  *(v50 + 4) = v60;
  *(v50 + 5) = v52;
  v53 = v63;
  *(v50 + 6) = v62;
  *(v50 + 7) = v53;
  (*(v42 + 32))(&v50[v46], v43, v44);
  (*(v47 + 32))(&v50[v48], v77, v56);
  (*(v45 + 32))(&v50[v49], v78, v15);
  v72(v76, partial apply for closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), v50);
}

uint64_t closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(uint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v230 = a7;
  v217 = a13;
  v228 = a13[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(*(AssociatedTypeWitness - 8) + 64);
  v21 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v212 = &v190 - v22;
  v226 = a9;
  v23 = *(a9 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v21);
  v195 = &v190 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v202 = &v190 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v201 = &v190 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v193 = &v190 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v191 = &v190 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v194 = &v190 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v200 = (&v190 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v199 = &v190 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v203 = &v190 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v208 = (&v190 - v44);
  v45 = MEMORY[0x28223BE20](v43);
  v207 = &v190 - v46;
  v229 = a8;
  v198 = *(a8 - 8);
  v47 = *(v198 + 64);
  v48 = MEMORY[0x28223BE20](v45);
  v197 = &v190 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v209 = &v190 - v50;
  v51 = type metadata accessor for UUID();
  v52 = *(v51 - 8);
  v53 = v52[8];
  v54 = MEMORY[0x28223BE20](v51);
  v204 = &v190 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v214 = (&v190 - v57);
  v58 = MEMORY[0x28223BE20](v56);
  v192 = &v190 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v196 = &v190 - v61;
  MEMORY[0x28223BE20](v60);
  v63 = &v190 - v62;
  v64 = v52[2];
  v220 = a6;
  v215 = v64;
  v216 = v52 + 2;
  v64(&v190 - v62, a6, v51);
  outlined copy of Data?(a1, a2);
  outlined copy of Data?(a3, a4);
  v221 = a5;
  v65 = Logger.logObject.getter();
  LODWORD(a5) = static os_log_type_t.default.getter();
  outlined consume of Data?(a1, a2);
  v223 = a3;
  outlined consume of Data?(a3, a4);
  v205 = a5;
  v66 = os_log_type_enabled(v65, a5);
  v67 = a2 >> 60;
  v213 = a4 >> 60;
  v218 = a1;
  v219 = a2;
  v227 = v23;
  v224 = v52;
  v225 = v51;
  v210 = a4;
  if (v66)
  {
    v68 = v52;
    v69 = swift_slowAlloc();
    v190 = swift_slowAlloc();
    v231 = v190;
    *v69 = 136315650;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v206 = a2 >> 60;
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v71;
    v222 = v68[1];
    v222(v63, v51);
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v231);

    *(v69 + 4) = v73;
    *(v69 + 12) = 2080;
    if (v206 <= 0xE)
    {
      v74 = a1;
    }

    else
    {
      v74 = 0;
    }

    if (v206 <= 0xE)
    {
      v75 = a2;
    }

    else
    {
      v75 = 0xC000000000000000;
    }

    outlined copy of Data?(a1, a2);
    v76 = Data.description.getter();
    v78 = v77;
    outlined consume of Data._Representation(v74, v75);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v231);

    *(v69 + 14) = v79;
    *(v69 + 22) = 2080;
    v80 = v213;
    if (v213 <= 0xE)
    {
      v81 = v223;
    }

    else
    {
      v81 = 0;
    }

    if (v213 <= 0xE)
    {
      v82 = a4;
    }

    else
    {
      v82 = 0xC000000000000000;
    }

    outlined copy of Data?(v223, a4);
    v83 = Data.description.getter();
    v85 = v84;
    outlined consume of Data._Representation(v81, v82);
    v86 = v228;
    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v231);
    v88 = v229;

    *(v69 + 24) = v87;
    v67 = v206;
    _os_log_impl(&dword_264F1F000, v65, v205, "XPC received reply to sent event { requestID: %s, resultData: %s, errorData: %s }", v69, 0x20u);
    v89 = v190;
    swift_arrayDestroy();
    MEMORY[0x266755550](v89, -1, -1);
    MEMORY[0x266755550](v69, -1, -1);

    v91 = v80;
  }

  else
  {

    v222 = v52[1];
    v90 = (v222)(v63, v51);
    v88 = v229;
    v86 = v228;
    v91 = v213;
  }

  v92 = v226;
  v93 = v214;
  if (v67 < 0xF)
  {
    v214 = &v190;
    MEMORY[0x28223BE20](v90);
    *(&v190 - 8) = v88;
    *(&v190 - 7) = v92;
    *(&v190 - 6) = v106;
    *(&v190 - 5) = v105;
    v107 = v217;
    *(&v190 - 4) = v108;
    *(&v190 - 3) = v107;
    v109 = v86;
    v111 = v218;
    v110 = v219;
    v188 = v218;
    v189 = v219;
    v112 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v114 = *(AssociatedConformanceWitness + 16);
    v115 = v111;
    v116 = v109;
    outlined copy of Data._Representation(v115, v110);
    v117 = v212;
    v114(v112, AssociatedConformanceWitness);
    v118 = v207;
    VersatileError.init(type:)(v117, v92, v116);
    v188 = v208;
    v119 = v209;
    _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #6 in closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), (&v190 - 10), v118, 0, 0, v92, v88, v116);
    (*(v227 + 8))(v118, v92);
    v133 = v196;
    v134 = v225;
    v215(v196, v220, v225);
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v135, v136))
    {
      v138 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v231 = v139;
      *v138 = 136315138;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v140 = dispatch thunk of CustomStringConvertible.description.getter();
      v142 = v141;
      v222(v133, v134);
      v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v142, &v231);

      *(v138 + 4) = v143;
      _os_log_impl(&dword_264F1F000, v135, v136, "XPC stack returning reply to sent event { requestID: %s }", v138, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v139);
      MEMORY[0x266755550](v139, -1, -1);
      MEMORY[0x266755550](v138, -1, -1);
    }

    else
    {

      v222(v133, v134);
    }

    v171 = v218;
    v170 = v219;
    v172 = v229;
    v173 = v198;
    (*(v198 + 16))(v197, v119, v229);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(returning:)();
    outlined consume of Data?(v171, v170);
    return (*(v173 + 8))(v119, v172);
  }

  else if (v91 <= 0xE)
  {
    v214 = &v190;
    MEMORY[0x28223BE20](v90);
    *(&v190 - 8) = v88;
    *(&v190 - 7) = v92;
    *(&v190 - 6) = v121;
    *(&v190 - 5) = v120;
    v122 = v217;
    *(&v190 - 4) = v123;
    *(&v190 - 3) = v122;
    v124 = v223;
    v125 = v210;
    v188 = v223;
    v189 = v210;
    v126 = AssociatedTypeWitness;
    v127 = swift_getAssociatedConformanceWitness();
    v128 = *(v127 + 16);
    outlined copy of Data._Representation(v124, v125);
    v129 = v212;
    v128(v126, v127);
    v130 = v129;
    v131 = v199;
    VersatileError.init(type:)(v130, v92, v86);
    v188 = v200;
    v132 = v203;
    _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #8 in closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:), (&v190 - 10), v131, 0, 0, v92, v92, v86);
    v152 = v227;
    v153 = *(v227 + 8);
    v153(v131, v92);
    v154 = v192;
    v155 = v225;
    v215(v192, v220, v225);
    v156 = *(v152 + 16);
    v157 = v194;
    v156(v194, v132, v92);
    v158 = Logger.logObject.getter();
    LODWORD(v221) = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v158, v221))
    {
      v219 = v158;
      v220 = v153;
      v160 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      v231 = v218;
      *v160 = 136315394;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v161 = dispatch thunk of CustomStringConvertible.description.getter();
      v162 = v155;
      v163 = v92;
      v165 = v164;
      v222(v154, v162);
      v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v161, v165, &v231);

      *(v160 + 4) = v166;
      *(v160 + 12) = 2112;
      v167 = v191;
      v156(v191, v157, v163);
      v168 = *(*(v228 + 8) + 8);
      if (_getErrorEmbeddedNSError<A>(_:)())
      {
        v169 = v167;
        v153 = v220;
        v220(v169, v163);
        v92 = v163;
      }

      else
      {
        swift_allocError();
        (*(v227 + 32))(v176, v167, v163);
        v92 = v163;
        v153 = v220;
      }

      v177 = _swift_stdlib_bridgeErrorToNSError();
      v153(v194, v92);
      *(v160 + 14) = v177;
      v178 = v217;
      *v217 = v177;
      v179 = v219;
      _os_log_impl(&dword_264F1F000, v219, v221, "XPC stack returning error to sent event { requestID: %s, error: %@ }", v160, 0x16u);
      outlined destroy of NSObject?(v178);
      MEMORY[0x266755550](v178, -1, -1);
      v180 = v218;
      __swift_destroy_boxed_opaque_existential_1Tm(v218);
      MEMORY[0x266755550](v180, -1, -1);
      MEMORY[0x266755550](v160, -1, -1);

      v152 = v227;
    }

    else
    {

      v153(v157, v92);
      v222(v154, v155);
    }

    v181 = v193;
    v156(v193, v203, v92);
    v182 = *(*(v228 + 8) + 8);
    v183 = _getErrorEmbeddedNSError<A>(_:)();
    if (v183)
    {
      v184 = v183;
      v153(v181, v92);
    }

    else
    {
      v184 = swift_allocError();
      (*(v152 + 32))(v185, v181, v92);
    }

    v186 = v210;
    v187 = v223;
    v231 = v184;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(throwing:)();
    outlined consume of Data?(v187, v186);
    return (v153)(v203, v92);
  }

  else
  {
    v94 = v225;
    v215(v214, v220, v225);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      v231 = v223;
      *v97 = 136315138;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v99 = v94;
      v100 = v86;
      v102 = v101;
      v222(v93, v99);
      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v102, &v231);
      v86 = v100;

      *(v97 + 4) = v103;
      _os_log_impl(&dword_264F1F000, v95, v96, "XPC stack returning generic error to sent event { requestID: %s }", v97, 0xCu);
      v104 = v223;
      __swift_destroy_boxed_opaque_existential_1Tm(v223);
      MEMORY[0x266755550](v104, -1, -1);
      MEMORY[0x266755550](v97, -1, -1);
    }

    else
    {

      v222(v93, v94);
    }

    v144 = v227;
    lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
    v145 = swift_allocError();
    v147 = v146;
    *(v146 + 8) = 0;
    *(v146 + 16) = 0;

    *v147 = 1;
    v148 = v201;
    static XPCUtils.ClientXPCableError.xpcError(underlyingError:)(v145, v92, v217);

    v149 = *(*(v86 + 8) + 8);
    v150 = _getErrorEmbeddedNSError<A>(_:)();
    if (v150)
    {
      v151 = v150;
      (*(v144 + 8))(v148, v92);
    }

    else
    {
      v151 = swift_allocError();
      (*(v144 + 32))(v175, v148, v92);
    }

    v231 = v151;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t implicit closure #6 in closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)()
{
  v0 = type metadata accessor for JSONDecoder();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t implicit closure #8 in closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = type metadata accessor for JSONDecoder();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v12 = *(*(a8 + 8) + 16);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v30;
  v8[15] = v31;
  v8[12] = v28;
  v8[13] = v29;
  v8[10] = v26;
  v8[11] = v27;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = *(v29 - 8);
  v8[16] = v9;
  v10 = *(v9 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = *(v30 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[19] = AssociatedTypeWitness;
  v12 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v13 = *(v27 - 8);
  v8[21] = v13;
  v14 = *(v13 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v15 = *(v28 - 8);
  v8[35] = v15;
  v16 = *(v15 + 64) + 15;
  v8[36] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v8[37] = v17;
  v18 = *(v17 - 8);
  v8[38] = v18;
  v19 = *(v18 + 64) + 15;
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  v8[46] = v20;
  v21 = *(v20 - 8);
  v8[47] = v21;
  v22 = *(v21 + 64) + 15;
  v8[48] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = static XPCActor.shared;
  v8[49] = static XPCActor.shared;

  return MEMORY[0x2822009F8](closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v23, 0);
}

uint64_t closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)()
{
  v74 = v0;
  v1 = *(v0 + 384);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  Logger.init(subsystem:category:)();
  UUID.init()();
  v6 = *(v5 + 16);
  *(v0 + 400) = v6;
  *(v0 + 408) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v66 = v6;
  v6(v3, v2, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 352);
  v11 = *(v0 + 296);
  v12 = *(v0 + 304);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v73[0] = v69;
    *v13 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v73);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_264F1F000, v7, v8, "XPC received event { requestID: %s }", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    MEMORY[0x266755550](v69, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);

    v19 = v17;
  }

  else
  {

    v19 = *(v12 + 8);
    v19(v10, v11);
  }

  *(v0 + 416) = v19;
  v70 = *(v0 + 288);
  v21 = *(v0 + 264);
  v20 = *(v0 + 272);
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = *(v0 + 88);
  v26 = swift_task_alloc();
  v27 = *(v0 + 112);
  v67 = *(v0 + 96);
  v28 = *(v0 + 40);
  *(v26 + 16) = v25;
  *(v26 + 24) = v67;
  *(v26 + 40) = v27;
  *(v26 + 56) = v28;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 424) = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 16))(v22, AssociatedConformanceWitness);
  VersatileError.init(type:)(v23, v25, v24);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v26, v20, 0, 0, v25, v67, v24);
  v68 = AssociatedConformanceWitness;
  v71 = v19;
  v30 = *(v0 + 384);
  v31 = *(v0 + 360);
  v32 = *(v0 + 344);
  v33 = *(v0 + 296);
  v34 = *(v0 + 272);
  v35 = *(v0 + 168);
  v36 = *(v0 + 88);
  v37 = *(v35 + 8);
  *(v0 + 432) = v37;
  *(v0 + 440) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v34, v36);

  v66(v32, v31, v33);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 344);
  v43 = *(v0 + 296);
  v42 = *(v0 + 304);
  if (v40)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v73[0] = v45;
    *v44 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v71(v41, v43);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v73);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_264F1F000, v38, v39, "XPC decoded event { requestID: %s }", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x266755550](v45, -1, -1);
    MEMORY[0x266755550](v44, -1, -1);
  }

  else
  {

    v19(v41, v43);
  }

  v50 = *(v0 + 288);
  v51 = *(v0 + 256);
  v52 = *(v0 + 152);
  v53 = *(v0 + 160);
  v54 = *(v0 + 144);
  v55 = *(v0 + 120);
  v56 = swift_task_alloc();
  *(v0 + 448) = v56;
  v72 = *(v0 + 88);
  v57 = *(v0 + 104);
  v58 = *(v0 + 56);
  *(v56 + 16) = v72;
  *(v56 + 32) = v57;
  *(v56 + 48) = v55;
  *(v56 + 56) = v58;
  *(v56 + 72) = v50;
  (*(v68 + 24))(v52, v68);
  VersatileError.init(type:)(v53, v72, v54);
  v59 = swift_task_alloc();
  *(v0 + 456) = v59;
  *v59 = v0;
  v59[1] = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);
  v61 = *(v0 + 248);
  v60 = *(v0 + 256);
  v62 = *(v0 + 136);
  v63 = *(v0 + 104);
  v64 = *(v0 + 88);
  v76 = *(v0 + 144);
  v77 = v61;

  return _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v62, &async function pointer to partial apply for implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v56, v60, 0, 0, v64);
}

{
  v2 = *v1;
  v3 = *(*v1 + 456);
  v11 = *v1;
  *(*v1 + 464) = v0;

  v4 = *(v2 + 440);
  if (v0)
  {
    v5 = *(v2 + 392);
    (*(v2 + 432))(*(v2 + 256), *(v2 + 88));
    v6 = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);
    v7 = v5;
  }

  else
  {
    v8 = *(v2 + 448);
    v9 = *(v2 + 392);
    (*(v2 + 432))(*(v2 + 256), *(v2 + 88));

    v6 = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

{
  v219 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 384);
  (*(v0 + 400))(*(v0 + 336), *(v0 + 360), *(v0 + 296));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 416);
  v7 = *(v0 + 336);
  v8 = *(v0 + 296);
  v9 = *(v0 + 304);
  if (v5)
  {
    v213 = *(v0 + 416);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v218[0] = v11;
    *v10 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v213(v7, v8);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v218);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPC delivered event { requestID: %s }", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {

    v6(v7, v8);
  }

  v214 = *(v0 + 464);
  v16 = *(v0 + 424);
  v17 = *(v0 + 232);
  v18 = *(v0 + 240);
  v19 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 136);
  v21 = *(v0 + 144);
  v23 = *(v0 + 120);
  v24 = swift_task_alloc();
  v207 = *(v0 + 88);
  v25 = *(v0 + 104);
  *(v24 + 16) = v207;
  *(v24 + 32) = v25;
  *(v24 + 48) = v23;
  *(v24 + 56) = v22;
  (*(v16 + 40))(v19, v16);
  VersatileError.init(type:)(v20, v207, v21);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:), v24, v18, 0, 0, v207, MEMORY[0x277CC9318], v21);
  v27 = *(v0 + 432);
  v26 = *(v0 + 440);
  if (v214)
  {
    v28 = *(v0 + 232);
    v30 = *(v0 + 168);
    v29 = *(v0 + 176);
    v31 = *(v0 + 144);
    v32 = *(v0 + 88);
    v27(*(v0 + 240), v32);
    v33 = *(v30 + 32);
    v33(v29, v28, v32);
    v34 = *(*(v31 + 8) + 8);
    v35 = _getErrorEmbeddedNSError<A>(_:)();
    if (v35)
    {
      v36 = v35;
      v37 = *(v0 + 440);
      (*(v0 + 432))(*(v0 + 176), *(v0 + 88));
    }

    else
    {
      v62 = *(v0 + 176);
      v63 = *(v0 + 88);
      v36 = swift_allocError();
      v33(v64, v62, v63);
    }

    v66 = *(v0 + 280);
    v65 = *(v0 + 288);
    v68 = *(v0 + 128);
    v67 = *(v0 + 136);
    v70 = *(v0 + 96);
    v69 = *(v0 + 104);

    (*(v68 + 8))(v67, v69);
    (*(v66 + 8))(v65, v70);
    v71 = *(v0 + 432);
    v72 = *(v0 + 224);
    v73 = *(v0 + 88);
    *(v0 + 32) = v36;
    v74 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v215 = v71;
      v76 = *(v0 + 216);
      v75 = *(v0 + 224);
      v77 = *(v0 + 168);
      v78 = *(v0 + 144);
      v79 = *(v0 + 88);

      v33(v76, v75, v79);
      v80 = type metadata accessor for JSONEncoder();
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      v83 = *(v78 + 24);
      v116 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v118 = v117;
      v192 = v33;

      v119 = *(v0 + 408);
      v120 = *(v0 + 384);
      v122 = *(v0 + 208);
      v121 = *(v0 + 216);
      v123 = *(v0 + 168);
      v124 = *(v0 + 88);
      (*(v0 + 400))(*(v0 + 320), *(v0 + 360), *(v0 + 296));
      v196 = *(v123 + 16);
      v196(v122, v121, v124);
      outlined copy of Data?(v116, v118);
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.error.getter();
      v201 = v116;
      v211 = v118;
      outlined consume of Data?(v116, v118);
      v127 = os_log_type_enabled(v125, v126);
      v128 = *(v0 + 416);
      v129 = *(v0 + 320);
      v131 = *(v0 + 296);
      v130 = *(v0 + 304);
      v132 = *(v0 + 208);
      if (v127)
      {
        v184 = v126;
        v187 = v125;
        v176 = *(v0 + 200);
        v178 = *(v0 + 88);
        v133 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v218[0] = v182;
        *v133 = 136315650;
        lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v134 = dispatch thunk of CustomStringConvertible.description.getter();
        v135 = v132;
        v137 = v136;
        v128(v129, v131);
        v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v137, v218);

        *(v133 + 4) = v138;
        *(v133 + 12) = 2112;
        v196(v176, v135, v178);
        v139 = _getErrorEmbeddedNSError<A>(_:)();
        v140 = *(v0 + 200);
        if (v139)
        {
          v141 = *(v0 + 168) + 8;
          v215(*(v0 + 200), *(v0 + 88));
        }

        else
        {
          v145 = *(v0 + 88);
          swift_allocError();
          v192(v146, v140, v145);
        }

        v147 = *(v0 + 208);
        v148 = *(v0 + 168);
        v149 = *(v0 + 88);
        v150 = _swift_stdlib_bridgeErrorToNSError();
        v215(v147, v149);
        *(v133 + 14) = v150;
        *v180 = v150;
        *(v133 + 22) = 2080;
        if (v211 >> 60 == 15)
        {
          v151 = 0;
        }

        else
        {
          v151 = v201;
        }

        if (v211 >> 60 == 15)
        {
          v152 = 0xC000000000000000;
        }

        else
        {
          v152 = v211;
        }

        v144 = v201;
        outlined copy of Data?(v201, v211);
        v153 = Data.description.getter();
        v155 = v154;
        outlined consume of Data._Representation(v151, v152);
        v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v155, v218);

        *(v133 + 24) = v156;
        _os_log_impl(&dword_264F1F000, v187, v184, "XPC stack replying with an error { requestID: %s, error: %@, errorData: %s }", v133, 0x20u);
        outlined destroy of NSObject?(v180);
        MEMORY[0x266755550](v180, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266755550](v182, -1, -1);
        MEMORY[0x266755550](v133, -1, -1);
      }

      else
      {
        v142 = *(v0 + 168);
        v143 = *(v0 + 88);

        v215(v132, v143);
        v128(v129, v131);
        v144 = v201;
      }

      v157 = *(v0 + 376);
      v202 = *(v0 + 384);
      v158 = *(v0 + 360);
      v193 = *(v0 + 416);
      v197 = *(v0 + 368);
      v159 = *(v0 + 296);
      v160 = *(v0 + 216);
      v161 = *(v0 + 80);
      v162 = *(v0 + 88);
      (*(v0 + 72))(0, 0xF000000000000000, v144, v211);
      outlined consume of Data?(v144, v211);
      v215(v160, v162);
      v193(v158, v159);
      (*(v157 + 8))(v202, v197);
    }

    else
    {
      v85 = *(v0 + 400);
      v84 = *(v0 + 408);
      v86 = *(v0 + 384);
      v87 = *(v0 + 360);
      v88 = *(v0 + 312);
      v89 = *(v0 + 296);

      v85(v88, v87, v89);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.fault.getter();
      v92 = os_log_type_enabled(v90, v91);
      v93 = *(v0 + 416);
      v95 = *(v0 + 304);
      v94 = *(v0 + 312);
      v96 = *(v0 + 296);
      if (v92)
      {
        v209 = *(v0 + 416);
        v97 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        v218[0] = v216;
        *v97 = 136315138;
        lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v100 = v99;
        v209(v94, v96);
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v218);

        *(v97 + 4) = v101;
        _os_log_impl(&dword_264F1F000, v90, v91, "XPC stack did not properly convert error types to reply to event { requestID: %s }", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v216);
        MEMORY[0x266755550](v216, -1, -1);
        MEMORY[0x266755550](v97, -1, -1);
      }

      else
      {

        v93(v94, v96);
      }

      v109 = *(v0 + 416);
      v111 = *(v0 + 376);
      v110 = *(v0 + 384);
      v113 = *(v0 + 360);
      v112 = *(v0 + 368);
      v114 = *(v0 + 296);
      v115 = *(v0 + 80);
      (*(v0 + 72))(0, 0xF000000000000000, 0, 0xF000000000000000);

      v109(v113, v114);
      (*(v111 + 8))(v110, v112);
    }
  }

  else
  {
    v39 = *(v0 + 400);
    v38 = *(v0 + 408);
    v40 = *(v0 + 384);
    v41 = *(v0 + 360);
    v42 = *(v0 + 328);
    v43 = *(v0 + 296);
    v27(*(v0 + 240), *(v0 + 88));

    v44 = *(v0 + 16);
    v45 = *(v0 + 24);
    v39(v42, v41, v43);
    outlined copy of Data._Representation(v44, v45);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v44, v45);
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 416);
    v50 = *(v0 + 328);
    v52 = *(v0 + 296);
    v51 = *(v0 + 304);
    if (v48)
    {
      log = v46;
      v53 = swift_slowAlloc();
      v208 = swift_slowAlloc();
      v218[0] = v208;
      *v53 = 136315394;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v199 = v47;
      v56 = v55;
      v49(v50, v52);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v218);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      outlined copy of Data._Representation(v44, v45);
      v58 = Data.description.getter();
      v60 = v59;
      outlined consume of Data._Representation(v44, v45);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v218);

      *(v53 + 14) = v61;
      _os_log_impl(&dword_264F1F000, log, v199, "XPC encoded and sending reply { requestID: %s, encodedResult: %s }", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v208, -1, -1);
      MEMORY[0x266755550](v53, -1, -1);
    }

    else
    {

      v49(v50, v52);
    }

    v102 = *(v0 + 376);
    v103 = *(v0 + 360);
    v191 = *(v0 + 368);
    v104 = *(v0 + 296);
    v105 = *(v0 + 280);
    v106 = *(v0 + 128);
    v195 = *(v0 + 136);
    v200 = *(v0 + 384);
    v186 = *(v0 + 416);
    v189 = *(v0 + 104);
    loga = *(v0 + 96);
    v210 = *(v0 + 288);
    v108 = *(v0 + 72);
    v107 = *(v0 + 80);
    outlined copy of Data._Representation(v44, v45);
    v108(v44, v45, 0, 0xF000000000000000);
    outlined consume of Data._Representation(v44, v45);
    outlined consume of Data._Representation(v44, v45);
    (v186)(v103, v104);
    (*(v102 + 8))(v200, v191);
    (*(v106 + 8))(v195, v189);
    (*(v105 + 8))(v210, loga);
  }

  v163 = *(v0 + 384);
  v165 = *(v0 + 352);
  v164 = *(v0 + 360);
  v167 = *(v0 + 336);
  v166 = *(v0 + 344);
  v169 = *(v0 + 320);
  v168 = *(v0 + 328);
  v170 = *(v0 + 312);
  v171 = *(v0 + 288);
  v172 = *(v0 + 272);
  v175 = *(v0 + 264);
  v177 = *(v0 + 256);
  v179 = *(v0 + 248);
  v181 = *(v0 + 240);
  v183 = *(v0 + 232);
  v185 = *(v0 + 224);
  v188 = *(v0 + 216);
  v190 = *(v0 + 208);
  v194 = *(v0 + 200);
  v198 = *(v0 + 192);
  v203 = *(v0 + 184);
  logb = *(v0 + 176);
  v212 = *(v0 + 160);
  v217 = *(v0 + 136);

  v173 = *(v0 + 8);

  return v173();
}

{
  v142 = v0;
  v1 = *(v0 + 144);
  v2 = *(*(v0 + 168) + 32);
  v2(*(v0 + 184), *(v0 + 248), *(v0 + 88));
  v3 = *(*(v1 + 8) + 8);
  v4 = _getErrorEmbeddedNSError<A>(_:)();
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 440);
    (*(v0 + 432))(*(v0 + 184), *(v0 + 88));
  }

  else
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 88);
    v5 = swift_allocError();
    v2(v9, v7, v8);
  }

  v10 = *(v0 + 448);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);
  v13 = *(v0 + 96);

  (*(v12 + 8))(v11, v13);
  v14 = *(v0 + 432);
  v15 = *(v0 + 224);
  v16 = *(v0 + 88);
  *(v0 + 32) = v5;
  v17 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v138 = v14;
    v19 = *(v0 + 216);
    v18 = *(v0 + 224);
    v20 = *(v0 + 168);
    v21 = *(v0 + 144);
    v22 = *(v0 + 88);

    v2(v19, v18, v22);
    v23 = type metadata accessor for JSONEncoder();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v26 = *(v21 + 24);
    v125 = v2;
    v52 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v54 = v53;

    v55 = *(v0 + 408);
    v56 = *(v0 + 384);
    v58 = *(v0 + 208);
    v57 = *(v0 + 216);
    v59 = *(v0 + 168);
    v60 = *(v0 + 88);
    (*(v0 + 400))(*(v0 + 320), *(v0 + 360), *(v0 + 296));
    v128 = *(v59 + 16);
    v128(v58, v57, v60);
    outlined copy of Data?(v52, v54);
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.error.getter();
    v132 = v52;
    v136 = v54;
    outlined consume of Data?(v52, v54);
    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 416);
    v65 = *(v0 + 320);
    v67 = *(v0 + 296);
    v66 = *(v0 + 304);
    v68 = *(v0 + 208);
    if (v63)
    {
      v120 = v62;
      log = v61;
      v112 = *(v0 + 200);
      v114 = *(v0 + 88);
      v69 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v141[0] = v118;
      *v69 = 136315650;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v71 = v68;
      v73 = v72;
      v64(v65, v67);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v73, v141);

      *(v69 + 4) = v74;
      *(v69 + 12) = 2112;
      v128(v112, v71, v114);
      v75 = _getErrorEmbeddedNSError<A>(_:)();
      v76 = *(v0 + 200);
      if (v75)
      {
        v77 = *(v0 + 168) + 8;
        v138(*(v0 + 200), *(v0 + 88));
      }

      else
      {
        v81 = *(v0 + 88);
        swift_allocError();
        v125(v82, v76, v81);
      }

      v83 = *(v0 + 208);
      v84 = *(v0 + 168);
      v85 = *(v0 + 88);
      v86 = _swift_stdlib_bridgeErrorToNSError();
      v138(v83, v85);
      *(v69 + 14) = v86;
      *v116 = v86;
      *(v69 + 22) = 2080;
      if (v136 >> 60 == 15)
      {
        v87 = 0;
      }

      else
      {
        v87 = v132;
      }

      if (v136 >> 60 == 15)
      {
        v88 = 0xC000000000000000;
      }

      else
      {
        v88 = v136;
      }

      v80 = v132;
      outlined copy of Data?(v132, v136);
      v89 = Data.description.getter();
      v91 = v90;
      outlined consume of Data._Representation(v87, v88);
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, v141);

      *(v69 + 24) = v92;
      _os_log_impl(&dword_264F1F000, log, v120, "XPC stack replying with an error { requestID: %s, error: %@, errorData: %s }", v69, 0x20u);
      outlined destroy of NSObject?(v116);
      MEMORY[0x266755550](v116, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266755550](v118, -1, -1);
      MEMORY[0x266755550](v69, -1, -1);
    }

    else
    {
      v78 = *(v0 + 168);
      v79 = *(v0 + 88);

      v138(v68, v79);
      v64(v65, v67);
      v80 = v132;
    }

    v93 = *(v0 + 376);
    v133 = *(v0 + 384);
    v94 = *(v0 + 360);
    v126 = *(v0 + 416);
    v129 = *(v0 + 368);
    v95 = *(v0 + 296);
    v96 = *(v0 + 216);
    v97 = *(v0 + 80);
    v98 = *(v0 + 88);
    (*(v0 + 72))(0, 0xF000000000000000, v80, v136);
    outlined consume of Data?(v80, v136);
    v138(v96, v98);
    v126(v94, v95);
    (*(v93 + 8))(v133, v129);
  }

  else
  {
    v28 = *(v0 + 400);
    v27 = *(v0 + 408);
    v29 = *(v0 + 384);
    v30 = *(v0 + 360);
    v31 = *(v0 + 312);
    v32 = *(v0 + 296);

    v28(v31, v30, v32);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.fault.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 416);
    v38 = *(v0 + 304);
    v37 = *(v0 + 312);
    v39 = *(v0 + 296);
    if (v35)
    {
      v135 = *(v0 + 416);
      v40 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v141[0] = v139;
      *v40 = 136315138;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v43 = v42;
      v135(v37, v39);
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v141);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_264F1F000, v33, v34, "XPC stack did not properly convert error types to reply to event { requestID: %s }", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v139);
      MEMORY[0x266755550](v139, -1, -1);
      MEMORY[0x266755550](v40, -1, -1);
    }

    else
    {

      v36(v37, v39);
    }

    v45 = *(v0 + 416);
    v47 = *(v0 + 376);
    v46 = *(v0 + 384);
    v49 = *(v0 + 360);
    v48 = *(v0 + 368);
    v50 = *(v0 + 296);
    v51 = *(v0 + 80);
    (*(v0 + 72))(0, 0xF000000000000000, 0, 0xF000000000000000);

    v45(v49, v50);
    (*(v47 + 8))(v46, v48);
  }

  v99 = *(v0 + 384);
  v101 = *(v0 + 352);
  v100 = *(v0 + 360);
  v103 = *(v0 + 336);
  v102 = *(v0 + 344);
  v105 = *(v0 + 320);
  v104 = *(v0 + 328);
  v106 = *(v0 + 312);
  v107 = *(v0 + 288);
  v108 = *(v0 + 272);
  v111 = *(v0 + 264);
  v113 = *(v0 + 256);
  v115 = *(v0 + 248);
  v117 = *(v0 + 240);
  v119 = *(v0 + 232);
  v121 = *(v0 + 224);
  loga = *(v0 + 216);
  v124 = *(v0 + 208);
  v127 = *(v0 + 200);
  v130 = *(v0 + 192);
  v131 = *(v0 + 184);
  v134 = *(v0 + 176);
  v137 = *(v0 + 160);
  v140 = *(v0 + 136);

  v109 = *(v0 + 8);

  return v109();
}

uint64_t partial apply for closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1)
{
  v17 = v1[4];
  v3 = v1[6];
  v4 = v1[7];
  v16 = v1[2];
  v14 = v1[5];
  v15 = v1[3];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[13];
  v11 = v1[14];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v16, v15, v6, v7, v8, v9, v10);
}

uint64_t partial apply for implicit closure #2 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

uint64_t implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a4);
}

uint64_t static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v32 = a8;
  v33 = a4;
  v34 = a2;
  v35 = a6;
  v36 = a14;
  v31 = a12;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v31 - v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = one-time initialization token for shared;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static XPCActor.shared;
  v24 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor);
  v25 = swift_allocObject();
  v25[2] = v23;
  v25[3] = v24;
  v26 = v31;
  v25[4] = v32;
  v25[5] = a9;
  v25[6] = a10;
  v25[7] = a11;
  v27 = v33;
  v25[8] = v26;
  v25[9] = v27;
  v28 = v34;
  v29 = v35;
  v25[10] = a5;
  v25[11] = v29;
  v25[12] = a7;
  v25[13] = v28;
  v25[14] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v20, v36, v25);
}

uint64_t closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v30;
  v8[15] = v31;
  v8[12] = v28;
  v8[13] = v29;
  v8[10] = v26;
  v8[11] = v27;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = *(v29 - 8);
  v8[16] = v9;
  v10 = *(v9 + 64) + 15;
  v8[17] = swift_task_alloc();
  v8[18] = *(v30 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[19] = AssociatedTypeWitness;
  v12 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  v13 = *(v27 - 8);
  v8[21] = v13;
  v14 = *(v13 + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v15 = *(v28 - 8);
  v8[34] = v15;
  v16 = *(v15 + 64) + 15;
  v8[35] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v8[36] = v17;
  v18 = *(v17 - 8);
  v8[37] = v18;
  v19 = *(v18 + 64) + 15;
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  v20 = type metadata accessor for Logger();
  v8[45] = v20;
  v21 = *(v20 - 8);
  v8[46] = v21;
  v22 = *(v21 + 64) + 15;
  v8[47] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = static XPCActor.shared;
  v8[48] = static XPCActor.shared;

  return MEMORY[0x2822009F8](closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:), v23, 0);
}

uint64_t closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)()
{
  v77 = v0;
  v1 = *(v0 + 376);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  Logger.init(subsystem:category:)();
  UUID.init()();
  v6 = *(v5 + 16);
  *(v0 + 392) = v6;
  *(v0 + 400) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v69 = v6;
  v6(v3, v2, v4);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 344);
  v11 = *(v0 + 288);
  v12 = *(v0 + 296);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v76[0] = v72;
    *v13 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v76);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_264F1F000, v7, v8, "XPC received event { requestID: %s }", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x266755550](v72, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);

    v19 = v17;
  }

  else
  {

    v19 = *(v12 + 8);
    v19(v10, v11);
  }

  *(v0 + 408) = v19;
  v73 = *(v0 + 280);
  v21 = *(v0 + 256);
  v20 = *(v0 + 264);
  v22 = *(v0 + 152);
  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = *(v0 + 88);
  v26 = swift_task_alloc();
  v27 = *(v0 + 112);
  v70 = *(v0 + 96);
  v28 = *(v0 + 40);
  *(v26 + 16) = v25;
  *(v26 + 24) = v70;
  *(v26 + 40) = v27;
  *(v26 + 56) = v28;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 416) = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 16))(v22, AssociatedConformanceWitness);
  VersatileError.init(type:)(v23, v25, v24);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:), v26, v20, 0, 0, v25, v70, v24);
  v71 = AssociatedConformanceWitness;
  v74 = v19;
  v30 = *(v0 + 376);
  v31 = *(v0 + 352);
  v32 = *(v0 + 336);
  v33 = *(v0 + 288);
  v34 = *(v0 + 264);
  v35 = *(v0 + 168);
  v36 = *(v0 + 88);
  v37 = *(v35 + 8);
  *(v0 + 424) = v37;
  *(v0 + 432) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v34, v36);

  v69(v32, v31, v33);
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 336);
  v43 = *(v0 + 288);
  v42 = *(v0 + 296);
  if (v40)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v76[0] = v45;
    *v44 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    v74(v41, v43);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v76);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_264F1F000, v38, v39, "XPC decoded event { requestID: %s }", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x266755550](v45, -1, -1);
    MEMORY[0x266755550](v44, -1, -1);
  }

  else
  {

    v19(v41, v43);
  }

  v50 = v71;
  v51 = *(v0 + 280);
  v53 = *(v0 + 240);
  v52 = *(v0 + 248);
  v55 = *(v0 + 152);
  v54 = *(v0 + 160);
  v56 = *(v0 + 144);
  v57 = *(v0 + 120);
  v58 = swift_task_alloc();
  *(v0 + 440) = v58;
  v75 = *(v0 + 88);
  v59 = *(v0 + 104);
  v60 = *(v0 + 56);
  *(v58 + 16) = v75;
  *(v58 + 32) = v59;
  *(v58 + 48) = v57;
  *(v58 + 56) = v60;
  *(v58 + 72) = v51;
  (*(v50 + 24))(v55, v50);
  VersatileError.init(type:)(v54, v75, v56);
  (*(v50 + 32))(v55, v50);
  VersatileError.init(type:)(v54, v75, v56);
  v61 = swift_task_alloc();
  *(v0 + 448) = v61;
  v62 = lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
  *v61 = v0;
  v61[1] = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:);
  v64 = *(v0 + 240);
  v63 = *(v0 + 248);
  v65 = *(v0 + 136);
  v66 = *(v0 + 104);
  v67 = *(v0 + 88);
  v82 = *(v0 + 144);
  v83 = v62;
  v81 = v66;
  v79 = v67;
  v80 = &type metadata for XPCUtils.XPCError;

  return asyncRethrowIfWrongType<A, B, C>(_:catching:as:elseAs:log:)(v65, &async function pointer to partial apply for implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:), v58, &type metadata for XPCUtils.XPCError, v63, v64, 0, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v20 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v5 = v2[53];
    v4 = v2[54];
    v6 = v2[48];
    v7 = v2[30];
    v8 = v2[31];
    v9 = v2[11];
    v5(v7, v9);
    v5(v8, v9);
    v10 = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:);
    v11 = v6;
  }

  else
  {
    v13 = v2[54];
    v12 = v2[55];
    v14 = v2[53];
    v15 = v2[48];
    v16 = v2[30];
    v17 = v2[31];
    v18 = v2[11];
    v14(v16, v18);
    v14(v17, v18);

    v10 = closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:);
    v11 = v15;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

{
  v221 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  (*(v0 + 392))(*(v0 + 328), *(v0 + 352), *(v0 + 288));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 408);
  v7 = *(v0 + 328);
  v8 = *(v0 + 288);
  v9 = *(v0 + 296);
  if (v5)
  {
    v215 = *(v0 + 408);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v220[0] = v11;
    *v10 = 136315138;
    lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v215(v7, v8);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, v220);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPC delivered event { requestID: %s }", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x266755550](v11, -1, -1);
    MEMORY[0x266755550](v10, -1, -1);
  }

  else
  {

    v6(v7, v8);
  }

  v216 = *(v0 + 456);
  v16 = *(v0 + 416);
  v17 = *(v0 + 224);
  v18 = *(v0 + 232);
  v19 = *(v0 + 152);
  v20 = *(v0 + 160);
  v22 = *(v0 + 136);
  v21 = *(v0 + 144);
  v23 = *(v0 + 120);
  v24 = swift_task_alloc();
  v209 = *(v0 + 88);
  v25 = *(v0 + 104);
  *(v24 + 16) = v209;
  *(v24 + 32) = v25;
  *(v24 + 48) = v23;
  *(v24 + 56) = v22;
  (*(v16 + 40))(v19, v16);
  VersatileError.init(type:)(v20, v209, v21);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:), v24, v18, 0, 0, v209, MEMORY[0x277CC9318], v21);
  v27 = *(v0 + 424);
  v26 = *(v0 + 432);
  if (v216)
  {
    v28 = *(v0 + 224);
    v30 = *(v0 + 168);
    v29 = *(v0 + 176);
    v31 = *(v0 + 144);
    v32 = *(v0 + 88);
    v27(*(v0 + 232), v32);
    v33 = *(v30 + 32);
    v33(v29, v28, v32);
    v34 = *(*(v31 + 8) + 8);
    v35 = _getErrorEmbeddedNSError<A>(_:)();
    if (v35)
    {
      v36 = v35;
      v37 = *(v0 + 432);
      (*(v0 + 424))(*(v0 + 176), *(v0 + 88));
    }

    else
    {
      v62 = *(v0 + 176);
      v63 = *(v0 + 88);
      v36 = swift_allocError();
      v33(v64, v62, v63);
    }

    v66 = *(v0 + 272);
    v65 = *(v0 + 280);
    v68 = *(v0 + 128);
    v67 = *(v0 + 136);
    v70 = *(v0 + 96);
    v69 = *(v0 + 104);

    (*(v68 + 8))(v67, v69);
    (*(v66 + 8))(v65, v70);
    v71 = *(v0 + 424);
    v72 = *(v0 + 216);
    v73 = *(v0 + 88);
    *(v0 + 32) = v36;
    v74 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v76 = *(v0 + 208);
      v75 = *(v0 + 216);
      v77 = *(v0 + 168);
      v78 = *(v0 + 144);
      v79 = *(v0 + 88);

      v193 = *(v77 + 32);
      v193(v76, v75, v79);
      v80 = type metadata accessor for JSONEncoder();
      v81 = *(v80 + 48);
      v82 = *(v80 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      v83 = *(v78 + 24);
      v116 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v118 = v117;

      v119 = *(v0 + 400);
      v120 = *(v0 + 376);
      v122 = *(v0 + 200);
      v121 = *(v0 + 208);
      v123 = *(v0 + 168);
      v124 = *(v0 + 88);
      (*(v0 + 392))(*(v0 + 312), *(v0 + 352), *(v0 + 288));
      v125 = v122;
      v126 = *(v123 + 16);
      v126(v125, v121, v124);
      outlined copy of Data?(v116, v118);
      v127 = Logger.logObject.getter();
      v128 = static os_log_type_t.error.getter();
      log = v116;
      v218 = v118;
      outlined consume of Data?(v116, v118);
      v129 = os_log_type_enabled(v127, v128);
      v130 = *(v0 + 408);
      v131 = *(v0 + 312);
      v132 = *(v0 + 288);
      v133 = *(v0 + 296);
      v198 = *(v0 + 200);
      if (v129)
      {
        v188 = v128;
        v191 = v127;
        v213 = v71;
        v179 = *(v0 + 192);
        v181 = *(v0 + 144);
        v177 = *(v0 + 88);
        v134 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v185 = swift_slowAlloc();
        v220[0] = v185;
        *v134 = 136315650;
        lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v135 = dispatch thunk of CustomStringConvertible.description.getter();
        v137 = v136;
        v130(v131, v132);
        v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v137, v220);

        *(v134 + 4) = v138;
        *(v134 + 12) = 2112;
        v126(v179, v198, v177);
        v139 = *(*(v181 + 8) + 8);
        v140 = _getErrorEmbeddedNSError<A>(_:)();
        v141 = *(v0 + 192);
        if (v140)
        {
          v142 = *(v0 + 168) + 8;
          v143 = v213;
          v213(*(v0 + 192), *(v0 + 88));
        }

        else
        {
          v147 = *(v0 + 88);
          swift_allocError();
          v193(v148, v141, v147);
          v143 = v213;
        }

        v149 = *(v0 + 200);
        v150 = *(v0 + 168);
        v151 = *(v0 + 88);
        v152 = _swift_stdlib_bridgeErrorToNSError();
        v143(v149, v151);
        *(v134 + 14) = v152;
        *v183 = v152;
        *(v134 + 22) = 2080;
        if (v218 >> 60 == 15)
        {
          v153 = 0;
        }

        else
        {
          v153 = log;
        }

        if (v218 >> 60 == 15)
        {
          v154 = 0xC000000000000000;
        }

        else
        {
          v154 = v218;
        }

        v146 = log;
        outlined copy of Data?(log, v218);
        v155 = Data.description.getter();
        v157 = v156;
        outlined consume of Data._Representation(v153, v154);
        v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v157, v220);

        *(v134 + 24) = v158;
        _os_log_impl(&dword_264F1F000, v191, v188, "XPC stack replying with an error { requestID: %s, error: %@, errorData: %s }", v134, 0x20u);
        outlined destroy of NSObject?(v183);
        MEMORY[0x266755550](v183, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266755550](v185, -1, -1);
        MEMORY[0x266755550](v134, -1, -1);
      }

      else
      {
        v144 = *(v0 + 168);
        v145 = *(v0 + 88);

        v71(v198, v145);
        v130(v131, v132);
        v213 = v71;
        v146 = log;
      }

      v159 = *(v0 + 368);
      logc = *(v0 + 376);
      v160 = *(v0 + 352);
      v195 = *(v0 + 408);
      v199 = *(v0 + 360);
      v161 = *(v0 + 288);
      v162 = *(v0 + 208);
      v163 = *(v0 + 80);
      v164 = *(v0 + 88);
      (*(v0 + 72))(0, 0xF000000000000000, v146, v218);
      outlined consume of Data?(v146, v218);
      v213(v162, v164);
      v195(v160, v161);
      (*(v159 + 8))(logc, v199);
    }

    else
    {
      v85 = *(v0 + 392);
      v84 = *(v0 + 400);
      v86 = *(v0 + 376);
      v87 = *(v0 + 352);
      v88 = *(v0 + 304);
      v89 = *(v0 + 288);

      v85(v88, v87, v89);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.fault.getter();
      v92 = os_log_type_enabled(v90, v91);
      v93 = *(v0 + 408);
      v95 = *(v0 + 296);
      v94 = *(v0 + 304);
      v96 = *(v0 + 288);
      if (v92)
      {
        v211 = *(v0 + 408);
        v97 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        v220[0] = v217;
        *v97 = 136315138;
        lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v100 = v99;
        v211(v94, v96);
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v220);

        *(v97 + 4) = v101;
        _os_log_impl(&dword_264F1F000, v90, v91, "XPC stack did not properly convert error types to reply to event { requestID: %s }", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v217);
        MEMORY[0x266755550](v217, -1, -1);
        MEMORY[0x266755550](v97, -1, -1);
      }

      else
      {

        v93(v94, v96);
      }

      v109 = *(v0 + 408);
      v111 = *(v0 + 368);
      v110 = *(v0 + 376);
      v113 = *(v0 + 352);
      v112 = *(v0 + 360);
      v114 = *(v0 + 288);
      v115 = *(v0 + 80);
      (*(v0 + 72))(0, 0xF000000000000000, 0, 0xF000000000000000);

      v109(v113, v114);
      (*(v111 + 8))(v110, v112);
    }
  }

  else
  {
    v39 = *(v0 + 392);
    v38 = *(v0 + 400);
    v40 = *(v0 + 376);
    v41 = *(v0 + 352);
    v42 = *(v0 + 320);
    v43 = *(v0 + 288);
    v27(*(v0 + 232), *(v0 + 88));

    v44 = *(v0 + 16);
    v45 = *(v0 + 24);
    v39(v42, v41, v43);
    outlined copy of Data._Representation(v44, v45);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    outlined consume of Data._Representation(v44, v45);
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 408);
    v50 = *(v0 + 320);
    v52 = *(v0 + 288);
    v51 = *(v0 + 296);
    if (v48)
    {
      loga = v46;
      v53 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      v220[0] = v210;
      *v53 = 136315394;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v201 = v47;
      v56 = v55;
      v49(v50, v52);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v56, v220);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      outlined copy of Data._Representation(v44, v45);
      v58 = Data.description.getter();
      v60 = v59;
      outlined consume of Data._Representation(v44, v45);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, v220);

      *(v53 + 14) = v61;
      _os_log_impl(&dword_264F1F000, loga, v201, "XPC encoded and sending reply { requestID: %s, encodedResult: %s }", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v210, -1, -1);
      MEMORY[0x266755550](v53, -1, -1);
    }

    else
    {

      v49(v50, v52);
    }

    v102 = *(v0 + 368);
    v103 = *(v0 + 352);
    v194 = *(v0 + 360);
    v104 = *(v0 + 288);
    v105 = *(v0 + 272);
    v106 = *(v0 + 128);
    v197 = *(v0 + 136);
    v202 = *(v0 + 376);
    v187 = *(v0 + 408);
    v190 = *(v0 + 104);
    logb = *(v0 + 96);
    v212 = *(v0 + 280);
    v108 = *(v0 + 72);
    v107 = *(v0 + 80);
    outlined copy of Data._Representation(v44, v45);
    v108(v44, v45, 0, 0xF000000000000000);
    outlined consume of Data._Representation(v44, v45);
    outlined consume of Data._Representation(v44, v45);
    v187(v103, v104);
    (*(v102 + 8))(v202, v194);
    (*(v106 + 8))(v197, v190);
    (*(v105 + 8))(v212, logb);
  }

  v165 = *(v0 + 376);
  v167 = *(v0 + 344);
  v166 = *(v0 + 352);
  v169 = *(v0 + 328);
  v168 = *(v0 + 336);
  v171 = *(v0 + 312);
  v170 = *(v0 + 320);
  v172 = *(v0 + 304);
  v173 = *(v0 + 280);
  v174 = *(v0 + 264);
  v178 = *(v0 + 256);
  v180 = *(v0 + 248);
  v182 = *(v0 + 240);
  v184 = *(v0 + 232);
  v186 = *(v0 + 224);
  v189 = *(v0 + 216);
  v192 = *(v0 + 208);
  v196 = *(v0 + 200);
  v200 = *(v0 + 192);
  v203 = *(v0 + 184);
  logd = *(v0 + 176);
  v214 = *(v0 + 160);
  v219 = *(v0 + 136);

  v175 = *(v0 + 8);

  return v175();
}

{
  v136 = v0;
  v1 = *(v0 + 440);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 456);
  *(v0 + 32) = v5;
  v6 = *(v0 + 424);
  v7 = *(v0 + 216);
  v8 = *(v0 + 88);
  v9 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v12 = *(v0 + 168);
    v13 = *(v0 + 144);
    v14 = *(v0 + 88);

    v119 = *(v12 + 32);
    v119(v11, v10, v14);
    v15 = type metadata accessor for JSONEncoder();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    v18 = *(v13 + 24);
    v44 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v46 = v45;

    v47 = *(v0 + 400);
    v48 = *(v0 + 376);
    v50 = *(v0 + 200);
    v49 = *(v0 + 208);
    v51 = *(v0 + 168);
    v52 = *(v0 + 88);
    (*(v0 + 392))(*(v0 + 312), *(v0 + 352), *(v0 + 288));
    v53 = v50;
    v54 = *(v51 + 16);
    v54(v53, v49, v52);
    outlined copy of Data?(v44, v46);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    v126 = v44;
    v133 = v46;
    outlined consume of Data?(v44, v46);
    v57 = os_log_type_enabled(v55, v56);
    v58 = *(v0 + 408);
    v59 = *(v0 + 312);
    v60 = *(v0 + 288);
    v61 = *(v0 + 296);
    v122 = *(v0 + 200);
    v130 = v6;
    if (v57)
    {
      v115 = v56;
      log = v55;
      v107 = *(v0 + 192);
      v109 = *(v0 + 144);
      v105 = *(v0 + 88);
      v62 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v135[0] = v113;
      *v62 = 136315650;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v63 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v64;
      v58(v59, v60);
      v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, v135);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2112;
      v54(v107, v122, v105);
      v67 = *(*(v109 + 8) + 8);
      v68 = _getErrorEmbeddedNSError<A>(_:)();
      v69 = *(v0 + 192);
      if (v68)
      {
        v70 = *(v0 + 168) + 8;
        v71 = v130;
        v130(*(v0 + 192), *(v0 + 88));
      }

      else
      {
        v75 = *(v0 + 88);
        swift_allocError();
        v119(v76, v69, v75);
        v71 = v130;
      }

      v77 = *(v0 + 200);
      v78 = *(v0 + 168);
      v79 = *(v0 + 88);
      v80 = _swift_stdlib_bridgeErrorToNSError();
      v71(v77, v79);
      *(v62 + 14) = v80;
      *v111 = v80;
      *(v62 + 22) = 2080;
      if (v133 >> 60 == 15)
      {
        v81 = 0;
      }

      else
      {
        v81 = v126;
      }

      if (v133 >> 60 == 15)
      {
        v82 = 0xC000000000000000;
      }

      else
      {
        v82 = v133;
      }

      v74 = v126;
      outlined copy of Data?(v126, v133);
      v83 = Data.description.getter();
      v85 = v84;
      outlined consume of Data._Representation(v81, v82);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v135);

      *(v62 + 24) = v86;
      _os_log_impl(&dword_264F1F000, log, v115, "XPC stack replying with an error { requestID: %s, error: %@, errorData: %s }", v62, 0x20u);
      outlined destroy of NSObject?(v111);
      MEMORY[0x266755550](v111, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266755550](v113, -1, -1);
      MEMORY[0x266755550](v62, -1, -1);
    }

    else
    {
      v72 = *(v0 + 168);
      v73 = *(v0 + 88);

      v6(v122, v73);
      v58(v59, v60);
      v74 = v126;
    }

    v87 = *(v0 + 368);
    v127 = *(v0 + 376);
    v88 = *(v0 + 352);
    v120 = *(v0 + 408);
    v123 = *(v0 + 360);
    v89 = *(v0 + 288);
    v90 = *(v0 + 208);
    v91 = *(v0 + 80);
    v92 = *(v0 + 88);
    (*(v0 + 72))(0, 0xF000000000000000, v74, v133);
    outlined consume of Data?(v74, v133);
    v130(v90, v92);
    v120(v88, v89);
    (*(v87 + 8))(v127, v123);
  }

  else
  {
    v20 = *(v0 + 392);
    v19 = *(v0 + 400);
    v21 = *(v0 + 376);
    v22 = *(v0 + 352);
    v23 = *(v0 + 304);
    v24 = *(v0 + 288);

    v20(v23, v22, v24);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.fault.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 408);
    v30 = *(v0 + 296);
    v29 = *(v0 + 304);
    v31 = *(v0 + 288);
    if (v27)
    {
      v129 = *(v0 + 408);
      v32 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v135[0] = v132;
      *v32 = 136315138;
      lazy protocol witness table accessor for type XPCActor and conformance XPCActor(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      v35 = v34;
      v129(v29, v31);
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v135);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_264F1F000, v25, v26, "XPC stack did not properly convert error types to reply to event { requestID: %s }", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v132);
      MEMORY[0x266755550](v132, -1, -1);
      MEMORY[0x266755550](v32, -1, -1);
    }

    else
    {

      v28(v29, v31);
    }

    v37 = *(v0 + 408);
    v39 = *(v0 + 368);
    v38 = *(v0 + 376);
    v41 = *(v0 + 352);
    v40 = *(v0 + 360);
    v42 = *(v0 + 288);
    v43 = *(v0 + 80);
    (*(v0 + 72))(0, 0xF000000000000000, 0, 0xF000000000000000);

    v37(v41, v42);
    (*(v39 + 8))(v38, v40);
  }

  v93 = *(v0 + 376);
  v95 = *(v0 + 344);
  v94 = *(v0 + 352);
  v97 = *(v0 + 328);
  v96 = *(v0 + 336);
  v99 = *(v0 + 312);
  v98 = *(v0 + 320);
  v100 = *(v0 + 304);
  v101 = *(v0 + 280);
  v102 = *(v0 + 264);
  v106 = *(v0 + 256);
  v108 = *(v0 + 248);
  v110 = *(v0 + 240);
  v112 = *(v0 + 232);
  v114 = *(v0 + 224);
  v116 = *(v0 + 216);
  loga = *(v0 + 208);
  v121 = *(v0 + 200);
  v124 = *(v0 + 192);
  v125 = *(v0 + 184);
  v128 = *(v0 + 176);
  v131 = *(v0 + 160);
  v134 = *(v0 + 136);

  v103 = *(v0 + 8);

  return v103();
}

uint64_t implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a4);
}

uint64_t implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for JSONEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v1)
  {
    *a1 = v6;
    a1[1] = v8;
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[10];

  v3 = v0[12];

  v4 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t partial apply for closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(uint64_t a1)
{
  v17 = v1[4];
  v3 = v1[6];
  v4 = v1[7];
  v16 = v1[2];
  v14 = v1[5];
  v15 = v1[3];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = v1[12];
  v10 = v1[13];
  v11 = v1[14];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(a1, v16, v15, v6, v7, v8, v9, v10);
}

uint64_t partial apply for implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)(a1, v8, v11, v10);
}

uint64_t sub_264FCDA7C()
{
  v1 = *(v0 + 16);
  v18 = type metadata accessor for Logger();
  v2 = *(v18 - 8);
  v3 = *(v2 + 80);
  v16 = (v3 + 64) & ~v3;
  v4 = *(v2 + 64);
  v17 = type metadata accessor for UUID();
  v5 = *(v17 - 8);
  v6 = *(v5 + 80);
  v7 = (v16 + v4 + v6) & ~v6;
  v8 = v7 + *(v5 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v9 = type metadata accessor for CheckedContinuation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v3 | v6 | v11;
  (*(v2 + 8))(v0 + v16, v18);
  (*(v5 + 8))(v0 + v7, v17);
  (*(v10 + 8))(v0 + v12, v9);

  return MEMORY[0x2821FE8E8](v0, v12 + v13, v14 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(uint64_t *a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9 = *(v4 + 16);
  v19 = *(v4 + 40);
  v20 = *(v4 + 24);
  v10 = *(v4 + 56);
  v11 = *(type metadata accessor for Logger() - 8);
  v12 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(type metadata accessor for UUID() - 8);
  v15 = (v12 + v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = v15 + *(v14 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v17 = *(type metadata accessor for CheckedContinuation() - 8);
  return closure #1 in closure #1 in static XPCUtils.encodeAndSendXPC<A, B, C>(resultType:errorType:encodeBlock:xpcBlock:)(a1, a2, a3, a4, v4 + v12, (v4 + v15), v4 + ((v16 + *(v17 + 80)) & ~*(v17 + 80)), v9, v20, *(&v20 + 1), v19, *(&v19 + 1), v10);
}

uint64_t partial apply for implicit closure #2 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

uint64_t partial apply for implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #4 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1, v8, v11, v10);
}

uint64_t partial apply for implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  return implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1);
}

{
  return partial apply for implicit closure #6 in closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:)(a1);
}

uint64_t XPCUtils.XPCInterface.__allocating_init(remoteInterface:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  XPCUtils.XPCInterface.init(remoteInterface:)(a1);
  return v5;
}

uint64_t specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
    v20 = *(v13 - 8);
    outlined init with take of XPCUtils.XPCInterfaceRequest(v12 + *(v20 + 72) * v8, a2);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for XPCUtils.XPCInterfaceRequest();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double specialized Dictionary.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v13;
    }

    outlined init with take of XPCUtils.XPCRequest(*(v11 + 56) + 40 * v8, a2);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t key path getter for XPCUtils.XPCInterface.reconnectionBlock : <A>XPCUtils.XPCInterface<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 288))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error);
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v6();
}

uint64_t key path setter for XPCUtils.XPCInterface.reconnectionBlock : <A>XPCUtils.XPCInterface<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out (), @error @owned Error);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(**a2 + 296);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v3);
  return v7(v6, v5);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out (), @error @owned Error)(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v5();
}

uint64_t XPCUtils.XPCInterface.connectionBlock.getter(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t XPCUtils.XPCInterface.connectionBlock.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t XPCUtils.XPCInterface.remoteInterface.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for Optional();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t XPCUtils.XPCInterface.remoteInterface.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 160);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

char *XPCUtils.XPCInterface.init(remoteInterface:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  Logger.init(subsystem:category:)();
  v1[direct field offset for XPCUtils.XPCInterface.needsReconnection] = 0;
  v5 = direct field offset for XPCUtils.XPCInterface.jsonDecoder;
  v6 = type metadata accessor for JSONDecoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v1[v5] = JSONDecoder.init()();
  v9 = direct field offset for XPCUtils.XPCInterface.jsonEncoder;
  v10 = type metadata accessor for JSONEncoder();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v1[v9] = JSONEncoder.init()();
  *&v1[direct field offset for XPCUtils.XPCInterface._nextRequestID] = 0;
  *&v1[direct field offset for XPCUtils.XPCInterface._nextConnectionID] = 1;
  v13 = direct field offset for XPCUtils.XPCInterface.runningRequests;
  *&v2[v13] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO10XPCRequest_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v14 = &v2[direct field offset for XPCUtils.XPCInterface.connectionBlock];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v2[direct field offset for XPCUtils.XPCInterface.reconnectionBlock];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = *(*v2 + 160);
  (*(*(*(v4 + 80) - 8) + 56))(&v2[v16], 1, 1, *(v4 + 80));
  swift_beginAccess();
  v17 = type metadata accessor for Optional();
  (*(*(v17 - 8) + 40))(&v2[v16], a1, v17);
  swift_endAccess();
  return v2;
}

uint64_t XPCUtils.XPCInterface.addConnectionBlock(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.XPCInterface.addConnectionBlock(_:), v4, 0);
}

uint64_t XPCUtils.XPCInterface.addConnectionBlock(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(**(v0 + 32) + 272);

  v3(v2, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t XPCUtils.XPCInterface.addReconnectionBlock(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.XPCInterface.addReconnectionBlock(_:), v4, 0);
}

uint64_t XPCUtils.XPCInterface.addReconnectionBlock(_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = *(**(v0 + 32) + 296);

  v3(v2, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = v35;
  *(v9 + 136) = v8;
  *(v9 + 112) = v33;
  *(v9 + 120) = v34;
  *(v9 + 96) = v31;
  *(v9 + 104) = v32;
  *(v9 + 80) = v29;
  *(v9 + 88) = v30;
  *(v9 + 64) = a8;
  *(v9 + 72) = v28;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 480) = a4;
  *(v9 + 32) = a1;
  *(v9 + 40) = a5;
  v10 = *v8;
  v11 = *(v30 - 8);
  *(v9 + 144) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = *(v35 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v9 + 168) = AssociatedTypeWitness;
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  v15 = *(v31 - 8);
  *(v9 + 184) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 192) = swift_task_alloc();
  *(v9 + 200) = swift_task_alloc();
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 216) = swift_task_alloc();
  *(v9 + 224) = swift_task_alloc();
  *(v9 + 232) = swift_task_alloc();
  v17 = *(v32 - 8);
  *(v9 + 240) = v17;
  v18 = *(v17 + 64) + 15;
  *(v9 + 248) = swift_task_alloc();
  v19 = *(v10 + 80);
  *(v9 + 256) = v19;
  v20 = *(v19 - 8);
  *(v9 + 264) = v20;
  v21 = *(v20 + 64) + 15;
  *(v9 + 272) = swift_task_alloc();
  v22 = type metadata accessor for Optional();
  *(v9 + 280) = v22;
  v23 = *(v22 - 8);
  *(v9 + 288) = v23;
  v24 = *(v23 + 64) + 15;
  *(v9 + 296) = swift_task_alloc();
  *(v9 + 304) = swift_task_alloc();
  *(v9 + 312) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v25 = static XPCActor.shared;
  *(v9 + 320) = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v25, 0);
}

uint64_t XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 136);
  XPCUtils.XPCInterface.remoteInterface.getter(v1);
  v7 = *(v5 + 48);
  *(v0 + 328) = v7;
  *(v0 + 336) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v6) = v7(v1, 1, v4);
  v8 = *(v3 + 8);
  *(v0 + 344) = v8;
  v8(v1, v2);
  if (v6 == 1)
  {
    v9 = *(v0 + 136) + direct field offset for XPCUtils.XPCInterface.logger;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_264F1F000, v10, v11, "XPCInterface -- We have no remote interface, trying to connect to daemon.", v12, 2u);
      MEMORY[0x266755550](v12, -1, -1);
    }

    v13 = *(v0 + 136);

    v14 = (*(*v13 + 264))();
    *(v0 + 352) = v14;
    *(v0 + 360) = v15;
    if (v14)
    {
      v100 = (v14 + *v14);
      v16 = v14[1];
      v17 = swift_task_alloc();
      *(v0 + 368) = v17;
      *v17 = v0;
      v17[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
      v18 = *(v0 + 304);

      return v100(v18);
    }

    *(*(v0 + 136) + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 1;
  }

  v21 = *(v0 + 328);
  v20 = *(v0 + 336);
  v22 = *(v0 + 296);
  v23 = *(v0 + 256);
  v24 = *(v0 + 136);
  XPCUtils.XPCInterface.remoteInterface.getter(v22);
  if (v21(v22, 1, v23) == 1)
  {
    v25 = *(v0 + 136);
    v26 = *(v0 + 288) + 8;
    (*(v0 + 344))(*(v0 + 296), *(v0 + 280));
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_264F1F000, v27, v28, "XPCInterface -- We have no remote interface, after trying to connect to the daemon. Could not reconnect.", v29, 2u);
      MEMORY[0x266755550](v29, -1, -1);
    }

    lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
    swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    swift_willThrow();
    v77 = *(v0 + 304);
    v76 = *(v0 + 312);
    v78 = *(v0 + 296);
    v79 = *(v0 + 272);
    v80 = *(v0 + 248);
    v82 = *(v0 + 224);
    v81 = *(v0 + 232);
    v84 = *(v0 + 208);
    v83 = *(v0 + 216);
    v85 = *(v0 + 200);
    v93 = *(v0 + 192);
    v96 = *(v0 + 176);
    v99 = *(v0 + 152);

    v86 = *(v0 + 8);

    return v86();
  }

  v31 = *(v0 + 480);
  v32 = (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 296), *(v0 + 256));
  if (v31 == 1)
  {
    *(*(v0 + 136) + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 0;
  }

  v40 = *(v0 + 136);
  if (*(v40 + direct field offset for XPCUtils.XPCInterface.needsReconnection) == 1)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_264F1F000, v41, v42, "XPCInterface needs reconnect.", v43, 2u);
      MEMORY[0x266755550](v43, -1, -1);
    }

    v44 = *(v0 + 136);

    v32 = (*(*v44 + 288))();
    *(v0 + 384) = v32;
    *(v0 + 392) = v33;
    if (v32)
    {
      v101 = (v32 + *v32);
      v45 = v32[1];
      v46 = swift_task_alloc();
      *(v0 + 400) = v46;
      *v46 = v0;
      v46[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);

      return v101();
    }

    v40 = *(v0 + 136);
  }

  v47 = direct field offset for XPCUtils.XPCInterface._nextRequestID;
  v48 = *(v40 + direct field offset for XPCUtils.XPCInterface._nextRequestID);
  *(v0 + 416) = v48;
  if (__OFADD__(v48, 1))
  {
    __break(1u);
  }

  else
  {
    *(v40 + v47) = v48 + 1;
    *(v0 + 424) = direct field offset for XPCUtils.XPCInterface.logger;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = v48;
      _os_log_impl(&dword_264F1F000, v49, v50, "XPCInterface told to send { requestID: %ld }", v51, 0xCu);
      MEMORY[0x266755550](v51, -1, -1);
    }

    v87 = v48;
    v97 = *(v0 + 248);
    v91 = *(v0 + 232);
    v94 = *(v0 + 224);
    v53 = *(v0 + 168);
    v52 = *(v0 + 176);
    v89 = *(v0 + 160);
    v55 = *(v0 + 128);
    v54 = *(v0 + 136);
    v56 = *(v0 + 120);
    v57 = *(v0 + 88);
    v58 = *(v0 + 96);
    v102 = *(v0 + 104);
    v88 = *(v0 + 40);

    v59 = swift_task_alloc();
    *(v59 + 16) = v57;
    *(v59 + 24) = v58;
    *(v59 + 32) = v102;
    *(v59 + 48) = v56;
    *(v59 + 56) = v55;
    *(v59 + 64) = v88;
    *(v59 + 80) = v54;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 432) = AssociatedConformanceWitness;
    (*(AssociatedConformanceWitness + 40))(v53, AssociatedConformanceWitness);
    VersatileError.init(type:)(v52, v58, v89);
    _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v59, v91, 0, 0, v58, v102, v89);
    v61 = *(v0 + 232);
    v62 = *(v0 + 184);
    v63 = *(v0 + 96);
    v64 = *(v62 + 8);
    *(v0 + 440) = v64;
    *(v0 + 448) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v64(v61, v63);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 134217984;
      *(v67 + 4) = v87;
      _os_log_impl(&dword_264F1F000, v65, v66, "XPCInterface encoded request { requestID: %ld }", v67, 0xCu);
      MEMORY[0x266755550](v67, -1, -1);
    }

    v68 = *(v0 + 320);
    v69 = *(v0 + 272);
    v70 = *(v0 + 248);
    v71 = *(v0 + 136);
    v92 = *(v0 + 104);
    v95 = *(v0 + 88);
    v90 = *(v0 + 120);
    v103 = *(v0 + 56);
    v98 = *(v0 + 72);

    v72 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor();
    v73 = swift_task_alloc();
    *(v0 + 456) = v73;
    *(v73 + 16) = v95;
    *(v73 + 32) = v92;
    *(v73 + 48) = v90;
    *(v73 + 64) = v71;
    *(v73 + 72) = v87;
    *(v73 + 80) = v103;
    *(v73 + 96) = v98;
    *(v73 + 112) = v69;
    *(v73 + 120) = v70;
    v74 = *(MEMORY[0x277D85A40] + 4);
    v75 = swift_task_alloc();
    *(v0 + 464) = v75;
    *v75 = v0;
    v75[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
    v39 = MEMORY[0x277CC9318];
    v37 = partial apply for closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
    v32 = (v0 + 16);
    v36 = 0x80000002651E9430;
    v33 = v68;
    v34 = v72;
    v35 = 0xD000000000000065;
    v38 = v73;
  }

  return MEMORY[0x2822008A0](v32, v33, v34, v35, v36, v37, v38, v39);
}

{
  v2 = *v1;
  v3 = *(*v1 + 368);
  v4 = *v1;
  *(*v1 + 376) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
  }

  else
  {
    v6 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 304);
  v4 = *(v0 + 136);
  (*(*(v0 + 264) + 56))(v3, 0, 1, *(v0 + 256));
  XPCUtils.XPCInterface.remoteInterface.setter(v3);
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v2);
  v5 = *(v0 + 376);
  *(*(v0 + 136) + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 1;
  v7 = *(v0 + 328);
  v6 = *(v0 + 336);
  v8 = *(v0 + 296);
  v9 = *(v0 + 256);
  v10 = *(v0 + 136);
  XPCUtils.XPCInterface.remoteInterface.getter(v8);
  if (v7(v8, 1, v9) == 1)
  {
    v11 = *(v0 + 136);
    v12 = *(v0 + 288) + 8;
    (*(v0 + 344))(*(v0 + 296), *(v0 + 280));
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_264F1F000, v13, v14, "XPCInterface -- We have no remote interface, after trying to connect to the daemon. Could not reconnect.", v15, 2u);
      MEMORY[0x266755550](v15, -1, -1);
    }

    lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    swift_willThrow();
    goto LABEL_28;
  }

  v17 = *(v0 + 480);
  v18 = (*(*(v0 + 264) + 32))(*(v0 + 272), *(v0 + 296), *(v0 + 256));
  if (v17 == 1)
  {
    *(*(v0 + 136) + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 0;
  }

  v26 = *(v0 + 136);
  if (*(v26 + direct field offset for XPCUtils.XPCInterface.needsReconnection) != 1)
  {
LABEL_15:
    v34 = direct field offset for XPCUtils.XPCInterface._nextRequestID;
    v35 = *(v26 + direct field offset for XPCUtils.XPCInterface._nextRequestID);
    *(v0 + 416) = v35;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
    }

    else
    {
      v100 = v5;
      *(v26 + v34) = v35 + 1;
      *(v0 + 424) = direct field offset for XPCUtils.XPCInterface.logger;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v35;
        _os_log_impl(&dword_264F1F000, v36, v37, "XPCInterface told to send { requestID: %ld }", v38, 0xCu);
        MEMORY[0x266755550](v38, -1, -1);
      }

      v89 = v35;
      v97 = *(v0 + 248);
      v94 = *(v0 + 224);
      v40 = *(v0 + 168);
      v39 = *(v0 + 176);
      v91 = *(v0 + 160);
      v92 = *(v0 + 232);
      v42 = *(v0 + 128);
      v41 = *(v0 + 136);
      v43 = *(v0 + 120);
      v44 = *(v0 + 88);
      v45 = *(v0 + 96);
      v104 = *(v0 + 104);
      v90 = *(v0 + 40);

      v46 = swift_task_alloc();
      *(v46 + 16) = v44;
      *(v46 + 24) = v45;
      *(v46 + 32) = v104;
      *(v46 + 48) = v43;
      *(v46 + 56) = v42;
      *(v46 + 64) = v90;
      *(v46 + 80) = v41;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      *(v0 + 432) = AssociatedConformanceWitness;
      (*(AssociatedConformanceWitness + 40))(v40, AssociatedConformanceWitness);
      VersatileError.init(type:)(v39, v45, v91);
      _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v46, v92, 0, 0, v45, v104, v91);
      v48 = *(v0 + 232);
      if (v100)
      {
        v49 = *(v0 + 224);
        v50 = *(v0 + 200);
        v51 = *(v0 + 184);
        v52 = *(v0 + 160);
        v53 = *(v0 + 96);
        v54 = *(v51 + 8);
        v54(v48, v53);
        v55 = *(v51 + 32);
        v55(v50, v49, v53);
        v56 = *(*(v52 + 8) + 8);
        v57 = _getErrorEmbeddedNSError<A>(_:)();
        v58 = *(v0 + 200);
        if (v57)
        {
          v54(*(v0 + 200), *(v0 + 96));
        }

        else
        {
          v73 = *(v0 + 96);
          swift_allocError();
          v55(v74, v58, v73);
        }

        v75 = *(v0 + 264);
        v76 = *(v0 + 272);
        v77 = *(v0 + 256);

        (*(v75 + 8))(v76, v77);
LABEL_28:
        v79 = *(v0 + 304);
        v78 = *(v0 + 312);
        v80 = *(v0 + 296);
        v81 = *(v0 + 272);
        v82 = *(v0 + 248);
        v84 = *(v0 + 224);
        v83 = *(v0 + 232);
        v86 = *(v0 + 208);
        v85 = *(v0 + 216);
        v87 = *(v0 + 200);
        v96 = *(v0 + 192);
        v99 = *(v0 + 176);
        v102 = *(v0 + 152);

        v88 = *(v0 + 8);

        return v88();
      }

      v59 = *(v0 + 184);
      v60 = *(v0 + 96);
      v61 = *(v59 + 8);
      *(v0 + 440) = v61;
      *(v0 + 448) = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61(v48, v60);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 134217984;
        *(v64 + 4) = v89;
        _os_log_impl(&dword_264F1F000, v62, v63, "XPCInterface encoded request { requestID: %ld }", v64, 0xCu);
        MEMORY[0x266755550](v64, -1, -1);
      }

      v65 = *(v0 + 320);
      v66 = *(v0 + 272);
      v67 = *(v0 + 248);
      v68 = *(v0 + 136);
      v95 = *(v0 + 104);
      v98 = *(v0 + 88);
      v93 = *(v0 + 120);
      v105 = *(v0 + 56);
      v101 = *(v0 + 72);

      v69 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor();
      v70 = swift_task_alloc();
      *(v0 + 456) = v70;
      *(v70 + 16) = v98;
      *(v70 + 32) = v95;
      *(v70 + 48) = v93;
      *(v70 + 64) = v68;
      *(v70 + 72) = v89;
      *(v70 + 80) = v105;
      *(v70 + 96) = v101;
      *(v70 + 112) = v66;
      *(v70 + 120) = v67;
      v71 = *(MEMORY[0x277D85A40] + 4);
      v72 = swift_task_alloc();
      *(v0 + 464) = v72;
      *v72 = v0;
      v72[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
      v25 = MEMORY[0x277CC9318];
      v23 = partial apply for closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
      v18 = (v0 + 16);
      v22 = 0x80000002651E9430;
      v19 = v65;
      v20 = v69;
      v21 = 0xD000000000000065;
      v24 = v70;
    }

    return MEMORY[0x2822008A0](v18, v19, v20, v21, v22, v23, v24, v25);
  }

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_264F1F000, v27, v28, "XPCInterface needs reconnect.", v29, 2u);
    MEMORY[0x266755550](v29, -1, -1);
  }

  v30 = *(v0 + 136);

  v18 = (*(*v30 + 288))();
  *(v0 + 384) = v18;
  *(v0 + 392) = v19;
  if (!v18)
  {
    v26 = *(v0 + 136);
    goto LABEL_15;
  }

  v103 = (v18 + *v18);
  v31 = v18[1];
  v32 = swift_task_alloc();
  *(v0 + 400) = v32;
  *v32 = v0;
  v32[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);

  return v103();
}

{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v4 = *v1;
  *(*v1 + 408) = v0;

  v5 = *(v2 + 320);
  if (v0)
  {
    v6 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
  }

  else
  {
    v6 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 392);
  v2 = outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(*(v0 + 384));
  v10 = *(v0 + 408);
  v11 = *(v0 + 136);
  v12 = direct field offset for XPCUtils.XPCInterface._nextRequestID;
  v13 = *(v11 + direct field offset for XPCUtils.XPCInterface._nextRequestID);
  *(v0 + 416) = v13;
  if (__OFADD__(v13, 1))
  {
    __break(1u);
    return MEMORY[0x2822008A0](v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v79 = v10;
  *(v11 + v12) = v13 + 1;
  *(v0 + 424) = direct field offset for XPCUtils.XPCInterface.logger;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = v13;
    _os_log_impl(&dword_264F1F000, v14, v15, "XPCInterface told to send { requestID: %ld }", v16, 0xCu);
    MEMORY[0x266755550](v16, -1, -1);
  }

  v68 = v13;
  v76 = *(v0 + 248);
  v73 = *(v0 + 224);
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  v70 = *(v0 + 160);
  v71 = *(v0 + 232);
  v20 = *(v0 + 128);
  v19 = *(v0 + 136);
  v21 = *(v0 + 120);
  v22 = *(v0 + 88);
  v23 = *(v0 + 96);
  v82 = *(v0 + 104);
  v69 = *(v0 + 40);

  v24 = swift_task_alloc();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  *(v24 + 32) = v82;
  *(v24 + 48) = v21;
  *(v24 + 56) = v20;
  *(v24 + 64) = v69;
  *(v24 + 80) = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 432) = AssociatedConformanceWitness;
  (*(AssociatedConformanceWitness + 40))(v18, AssociatedConformanceWitness);
  VersatileError.init(type:)(v17, v23, v70);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #2 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v24, v71, 0, 0, v23, v82, v70);
  v26 = *(v0 + 232);
  if (!v79)
  {
    v37 = *(v0 + 184);
    v38 = *(v0 + 96);
    v39 = *(v37 + 8);
    *(v0 + 440) = v39;
    *(v0 + 448) = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v39(v26, v38);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v68;
      _os_log_impl(&dword_264F1F000, v40, v41, "XPCInterface encoded request { requestID: %ld }", v42, 0xCu);
      MEMORY[0x266755550](v42, -1, -1);
    }

    v43 = *(v0 + 320);
    v44 = *(v0 + 272);
    v45 = *(v0 + 248);
    v46 = *(v0 + 136);
    v74 = *(v0 + 104);
    v77 = *(v0 + 88);
    v72 = *(v0 + 120);
    v83 = *(v0 + 56);
    v80 = *(v0 + 72);

    v47 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor();
    v48 = swift_task_alloc();
    *(v0 + 456) = v48;
    *(v48 + 16) = v77;
    *(v48 + 32) = v74;
    *(v48 + 48) = v72;
    *(v48 + 64) = v46;
    *(v48 + 72) = v68;
    *(v48 + 80) = v83;
    *(v48 + 96) = v80;
    *(v48 + 112) = v44;
    *(v48 + 120) = v45;
    v49 = *(MEMORY[0x277D85A40] + 4);
    v50 = swift_task_alloc();
    *(v0 + 464) = v50;
    *v50 = v0;
    v50[1] = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
    v9 = MEMORY[0x277CC9318];
    v7 = partial apply for closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
    v2 = v0 + 16;
    v6 = 0x80000002651E9430;
    v3 = v43;
    v4 = v47;
    v5 = 0xD000000000000065;
    v8 = v48;

    return MEMORY[0x2822008A0](v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v27 = *(v0 + 224);
  v28 = *(v0 + 200);
  v29 = *(v0 + 184);
  v30 = *(v0 + 160);
  v31 = *(v0 + 96);
  v32 = *(v29 + 8);
  v32(v26, v31);
  v33 = *(v29 + 32);
  v33(v28, v27, v31);
  v34 = *(*(v30 + 8) + 8);
  v35 = _getErrorEmbeddedNSError<A>(_:)();
  v36 = *(v0 + 200);
  if (v35)
  {
    v32(v36, *(v0 + 96));
  }

  else
  {
    v51 = *(v0 + 96);
    swift_allocError();
    v33(v52, v36, v51);
  }

  v53 = *(v0 + 264);
  v54 = *(v0 + 272);
  v55 = *(v0 + 256);

  (*(v53 + 8))(v54, v55);
  v57 = *(v0 + 304);
  v56 = *(v0 + 312);
  v58 = *(v0 + 296);
  v59 = *(v0 + 272);
  v60 = *(v0 + 248);
  v62 = *(v0 + 224);
  v61 = *(v0 + 232);
  v64 = *(v0 + 208);
  v63 = *(v0 + 216);
  v65 = *(v0 + 200);
  v75 = *(v0 + 192);
  v78 = *(v0 + 176);
  v81 = *(v0 + 152);

  v66 = *(v0 + 8);

  return v66();
}

{
  v2 = *v1;
  v3 = *(*v1 + 464);
  v9 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v4 = *(v2 + 320);
    v5 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
  }

  else
  {
    v6 = *(v2 + 456);
    v7 = *(v2 + 320);

    v5 = XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

{
  v77 = *(v0 + 16);
  v79 = *(v0 + 24);
  v1 = *(v0 + 136) + *(v0 + 424);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 416);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCInterface decoding result { requestID: %ld }", v5, 0xCu);
    MEMORY[0x266755550](v5, -1, -1);
  }

  v6 = *(v0 + 432);
  v7 = *(v0 + 208);
  v8 = *(v0 + 216);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);
  v70 = *(v0 + 152);
  v72 = *(v0 + 472);
  v12 = *(v0 + 88);
  v75 = *(v0 + 96);
  v66 = *(v0 + 128);
  v68 = *(v0 + 112);

  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = v75;
  *(v13 + 40) = v68;
  *(v13 + 56) = v66;
  *(v13 + 72) = v77;
  *(v13 + 80) = v79;
  (*(v6 + 16))(v10, v6);
  VersatileError.init(type:)(v9, v75, v11);
  _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #5 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v13, v8, 0, 0, v75, v12, v11);
  v15 = *(v0 + 440);
  v14 = *(v0 + 448);
  if (v72)
  {
    v16 = *(v0 + 208);
    v18 = *(v0 + 184);
    v17 = *(v0 + 192);
    v19 = *(v0 + 160);
    v20 = *(v0 + 96);
    v15(*(v0 + 216), v20);
    v21 = *(v18 + 32);
    v21(v17, v16, v20);
    v22 = *(*(v19 + 8) + 8);
    if (_getErrorEmbeddedNSError<A>(_:)())
    {
      v23 = *(v0 + 448);
      (*(v0 + 440))(*(v0 + 192), *(v0 + 96));
    }

    else
    {
      v39 = *(v0 + 192);
      v40 = *(v0 + 96);
      swift_allocError();
      v21(v41, v39, v40);
    }

    v43 = *(v0 + 264);
    v42 = *(v0 + 272);
    v45 = *(v0 + 248);
    v44 = *(v0 + 256);
    v46 = *(v0 + 240);
    v47 = *(v0 + 104);
    outlined consume of Data._Representation(v77, v79);

    (*(v46 + 8))(v45, v47);
    (*(v43 + 8))(v42, v44);
    v49 = *(v0 + 304);
    v48 = *(v0 + 312);
    v50 = *(v0 + 296);
    v51 = *(v0 + 272);
    v52 = *(v0 + 248);
    v54 = *(v0 + 224);
    v53 = *(v0 + 232);
    v56 = *(v0 + 208);
    v55 = *(v0 + 216);
    v57 = *(v0 + 200);
    v74 = *(v0 + 192);
    v78 = *(v0 + 176);
    v80 = *(v0 + 152);

    v38 = *(v0 + 8);
  }

  else
  {
    v24 = *(v0 + 424);
    v25 = *(v0 + 136);
    v15(*(v0 + 216), *(v0 + 96));

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 416);
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v28;
      _os_log_impl(&dword_264F1F000, v26, v27, "XPCInterface fulfilling with successful result { requestID: %ld }", v29, 0xCu);
      MEMORY[0x266755550](v29, -1, -1);
    }

    v61 = *(v0 + 312);
    v62 = *(v0 + 304);
    v30 = *(v0 + 264);
    v31 = *(v0 + 272);
    v59 = *(v0 + 248);
    v60 = *(v0 + 256);
    v32 = *(v0 + 240);
    v63 = *(v0 + 296);
    v64 = *(v0 + 232);
    v65 = *(v0 + 224);
    v67 = *(v0 + 216);
    v69 = *(v0 + 208);
    v71 = *(v0 + 200);
    v73 = *(v0 + 192);
    v76 = *(v0 + 176);
    v33 = *(v0 + 144);
    v34 = *(v0 + 152);
    v35 = *(v0 + 104);
    v36 = *(v0 + 88);
    v37 = *(v0 + 32);
    outlined consume of Data._Representation(v77, v79);

    (*(v33 + 32))(v37, v34, v36);
    (*(v32 + 8))(v59, v35);
    (*(v30 + 8))(v31, v60);

    v38 = *(v0 + 8);
  }

  return v38();
}

{
  v1 = v0[45];
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v0[44]);
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];
  v14 = v0[24];
  v15 = v0[22];
  v16 = v0[19];
  v17 = v0[47];

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[49];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[32];
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v0[48]);
  (*(v3 + 8))(v2, v4);
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v8 = v0[34];
  v9 = v0[31];
  v11 = v0[28];
  v10 = v0[29];
  v13 = v0[26];
  v12 = v0[27];
  v14 = v0[25];
  v17 = v0[24];
  v18 = v0[22];
  v19 = v0[19];
  v20 = v0[51];

  v15 = v0[1];

  return v15();
}

{
  v1 = v0[57];
  v3 = v0[33];
  v2 = v0[34];
  v5 = v0[31];
  v4 = v0[32];
  v6 = v0[30];
  v7 = v0[13];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[37];
  v11 = v0[34];
  v12 = v0[31];
  v14 = v0[28];
  v13 = v0[29];
  v16 = v0[26];
  v15 = v0[27];
  v17 = v0[25];
  v20 = v0[24];
  v21 = v0[22];
  v22 = v0[19];
  v23 = v0[59];

  v18 = v0[1];

  return v18();
}

uint64_t closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4), void *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(v26, a1);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v26, a3);
  swift_endAccess();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = a3;
    _os_log_impl(&dword_264F1F000, v19, v20, "XPCInterface stored and sending request { requestID: %ld }", v21, 0xCu);
    MEMORY[0x266755550](v21, -1, -1);
  }

  v22 = swift_allocObject();
  v22[2] = a10;
  v22[3] = a11;
  v22[4] = a12;
  v22[5] = a13;
  v22[6] = a14;
  v22[7] = a15;
  v22[8] = a2;
  v22[9] = a3;

  a6(a8, a9, partial apply for closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v22);
}

uint64_t closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a7;
  v35 = a8;
  v36 = a6;
  v32 = a11;
  v33 = a12;
  v31 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v31 - v19;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

  outlined copy of Data?(a1, a2);
  outlined copy of Data?(a3, a4);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v22 = static XPCActor.shared;
  v23 = lazy protocol witness table accessor for type XPCActor and conformance XPCActor();
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = v23;
  v25 = v35;
  v24[4] = v34;
  v24[5] = v25;
  v26 = v31;
  v27 = v32;
  v24[6] = a9;
  v24[7] = v26;
  v28 = v33;
  v24[8] = v27;
  v24[9] = v28;
  v29 = v36;
  v24[10] = a5;
  v24[11] = v29;
  v24[12] = a1;
  v24[13] = a2;
  v24[14] = a3;
  v24[15] = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v24);
}

uint64_t closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v20;
  *(v8 + 104) = v21;
  *(v8 + 80) = v19;
  *(v8 + 64) = v17;
  *(v8 + 72) = v18;
  *(v8 + 48) = a8;
  *(v8 + 56) = v16;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  *(v8 + 112) = *(v21 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 120) = AssociatedTypeWitness;
  v10 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  *(v8 + 128) = swift_task_alloc();
  v11 = *(v18 - 8);
  *(v8 + 136) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static XPCActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v13, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)()
{
  v129 = v0;
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  outlined copy of Data?(v4, v3);
  outlined copy of Data?(v2, v1);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  outlined consume of Data?(v4, v3);
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);
    v12 = *(v0 + 24);
    v13 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v128[0] = v124;
    *v13 = 134218498;
    *(v13 + 4) = v12;
    *(v13 + 12) = 2080;
    if (v10 >> 60 == 15)
    {
      v14 = 0;
    }

    else
    {
      v14 = v11;
    }

    if (v10 >> 60 == 15)
    {
      v15 = 0xC000000000000000;
    }

    else
    {
      v15 = v10;
    }

    outlined copy of Data?(v11, v10);
    v16 = Data.description.getter();
    v18 = v17;
    outlined consume of Data._Representation(v14, v15);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v128);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2080;
    if (v8 >> 60 == 15)
    {
      v20 = 0;
    }

    else
    {
      v20 = v9;
    }

    if (v8 >> 60 == 15)
    {
      v21 = 0xC000000000000000;
    }

    else
    {
      v21 = v8;
    }

    outlined copy of Data?(v9, v8);
    v22 = Data.description.getter();
    v24 = v23;
    outlined consume of Data._Representation(v20, v21);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v128);

    *(v13 + 24) = v25;
    _os_log_impl(&dword_264F1F000, v6, v7, "XPCInterface received result { requestID: %ld, resultData: %s, errorData: %s }", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v124, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  v26 = *(v0 + 40);
  if (v26 >> 60 == 15)
  {
    v27 = *(v0 + 56);
    if (v27 >> 60 == 15)
    {
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = *(v0 + 24);
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        *(v31 + 4) = v30;
        _os_log_impl(&dword_264F1F000, v28, v29, "XPCInterface failing with empty result { requestID: %ld }", v31, 0xCu);
        MEMORY[0x266755550](v31, -1, -1);
      }

      v32 = *(v0 + 152);
      v33 = *(v0 + 104);
      v34 = *(v0 + 112);
      v35 = *(v0 + 72);

      lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
      v36 = swift_allocError();
      v38 = v37;
      *(v37 + 8) = 0;
      *(v37 + 16) = 0;

      *v38 = 1;
      static XPCUtils.XPCableError.xpcError(underlyingError:)(v36, v35, v33);

      v39 = *(*(v34 + 8) + 8);
      v40 = _getErrorEmbeddedNSError<A>(_:)();
      v41 = *(v0 + 152);
      v42 = *(v0 + 136);
      if (v40)
      {
        v43 = v40;
        (*(v42 + 8))(*(v0 + 152), *(v0 + 72));
      }

      else
      {
        v67 = *(v0 + 72);
        v43 = swift_allocError();
        (*(v42 + 32))(v68, v41, v67);
      }

      v69 = *(v0 + 16);
      XPCUtils.XPCInterface.fail(requestID:with:)(*(v0 + 24), v43);
    }

    else
    {
      outlined copy of Data._Representation(*(v0 + 48), v27);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = *(v0 + 24);
        v55 = swift_slowAlloc();
        *v55 = 134217984;
        *(v55 + 4) = v54;
        _os_log_impl(&dword_264F1F000, v52, v53, "XPCInterface decoding error data { requestID: %ld }", v55, 0xCu);
        MEMORY[0x266755550](v55, -1, -1);
      }

      v120 = *(v0 + 184);
      v122 = *(v0 + 200);
      v56 = *(v0 + 128);
      v125 = *(v0 + 136);
      v57 = *(v0 + 120);
      v118 = *(v0 + 112);
      v119 = *(v0 + 192);
      v58 = *(v0 + 104);
      v59 = *(v0 + 56);
      v60 = *(v0 + 64);
      v61 = *(v0 + 48);
      v62 = *(v0 + 16);
      v116 = *(v0 + 72);
      v117 = *(v0 + 88);

      v63 = swift_task_alloc();
      *(v63 + 16) = v60;
      *(v63 + 24) = v116;
      *(v63 + 40) = v117;
      *(v63 + 56) = v58;
      *(v63 + 64) = v62;
      *(v63 + 72) = v61;
      *(v63 + 80) = v59;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(v57, AssociatedConformanceWitness);
      VersatileError.init(type:)(v56, v116, v118);
      _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #8 in closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:), v63, v119, 0, 0, v116, v116, v118);
      v65 = *(v125 + 8);
      v65(v119, v116);
      v66 = *(v0 + 136);
      v70 = *(v0 + 200);
      v71 = *(v0 + 176);
      v72 = *(v0 + 72);

      v73 = *(v66 + 16);
      v73(v71, v70, v72);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      v76 = os_log_type_enabled(v74, v75);
      v77 = *(v0 + 176);
      if (v76)
      {
        v126 = v75;
        v78 = *(v0 + 168);
        v121 = *(v0 + 112);
        v79 = *(v0 + 72);
        v80 = *(v0 + 24);
        v81 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        *v81 = 134218242;
        *(v81 + 4) = v80;
        *(v81 + 12) = 2112;
        v127 = v73;
        v73(v78, v77, v79);
        v82 = *(*(v121 + 8) + 8);
        v83 = _getErrorEmbeddedNSError<A>(_:)();
        v84 = *(v0 + 168);
        if (v83)
        {
          v65(*(v0 + 168), *(v0 + 72));
        }

        else
        {
          v97 = *(v0 + 136);
          v98 = *(v0 + 72);
          swift_allocError();
          (*(v97 + 32))(v99, v84, v98);
        }

        v100 = *(v0 + 176);
        v101 = *(v0 + 72);
        v102 = _swift_stdlib_bridgeErrorToNSError();
        v65(v100, v101);
        *(v81 + 14) = v102;
        *v123 = v102;
        _os_log_impl(&dword_264F1F000, v74, v126, "XPCInterface failing with error { requestID: %ld, error: %@ }", v81, 0x16u);
        outlined destroy of NSObject?(v123, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v123, -1, -1);
        MEMORY[0x266755550](v81, -1, -1);

        v73 = v127;
      }

      else
      {
        v96 = *(v0 + 72);

        v65(v77, v96);
      }

      v103 = *(v0 + 112);
      v73(*(v0 + 160), *(v0 + 200), *(v0 + 72));
      v104 = *(*(v103 + 8) + 8);
      v105 = _getErrorEmbeddedNSError<A>(_:)();
      v106 = *(v0 + 160);
      if (v105)
      {
        v107 = v105;
        v65(*(v0 + 160), *(v0 + 72));
      }

      else
      {
        v108 = *(v0 + 136);
        v109 = *(v0 + 72);
        v107 = swift_allocError();
        (*(v108 + 32))(v110, v106, v109);
      }

      v111 = *(v0 + 200);
      v112 = *(v0 + 72);
      v114 = *(v0 + 48);
      v113 = *(v0 + 56);
      v115 = *(v0 + 16);
      XPCUtils.XPCInterface.fail(requestID:with:)(*(v0 + 24), v107);
      outlined consume of Data?(v114, v113);

      v65(v111, v112);
    }
  }

  else
  {
    outlined copy of Data._Representation(*(v0 + 32), v26);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 24);
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v46;
      _os_log_impl(&dword_264F1F000, v44, v45, "XPCInterface fullfilling with result { requestID: %ld }", v47, 0xCu);
      MEMORY[0x266755550](v47, -1, -1);
    }

    v49 = *(v0 + 32);
    v48 = *(v0 + 40);
    v50 = *(v0 + 16);
    v51 = *(v0 + 24);

    XPCUtils.XPCInterface.finish(requestID:with:)(v51, v49, v48);
    outlined consume of Data?(v49, v48);
  }

  v86 = *(v0 + 192);
  v85 = *(v0 + 200);
  v88 = *(v0 + 176);
  v87 = *(v0 + 184);
  v90 = *(v0 + 160);
  v89 = *(v0 + 168);
  v92 = *(v0 + 144);
  v91 = *(v0 + 152);
  v93 = *(v0 + 128);

  v94 = *(v0 + 8);

  return v94();
}

void XPCUtils.XPCInterface.finish(requestID:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v11);
  swift_endAccess();
  if (v12)
  {
    outlined init with take of XPCUtils.XPCRequest(v11, v13);
    v6 = v14;
    v7 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v7 + 8))(a2, a3, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    outlined destroy of NSObject?(v11, &_s15SecureMessaging8XPCUtilsO10XPCRequest_pSgMd, &_s15SecureMessaging8XPCUtilsO10XPCRequest_pSgMR);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v8, v9, "XPCInterface not tracking requestID. Failing finish operation { requestID: %ld }", v10, 0xCu);
      MEMORY[0x266755550](v10, -1, -1);
    }
  }
}

void XPCUtils.XPCInterface.fail(requestID:with:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v9);
  swift_endAccess();
  if (v10)
  {
    outlined init with take of XPCUtils.XPCRequest(v9, v11);
    v4 = v12;
    v5 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v5 + 16))(a2, v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    outlined destroy of NSObject?(v9, &_s15SecureMessaging8XPCUtilsO10XPCRequest_pSgMd, &_s15SecureMessaging8XPCUtilsO10XPCRequest_pSgMR);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v6, v7, "XPCInterface not tracking requestID. Failing fail operation { requestID: %ld }", v8, 0xCu);
      MEMORY[0x266755550](v8, -1, -1);
    }
  }
}

uint64_t XPCUtils.XPCInterface.nextRequestID()()
{
  result = *(v0 + direct field offset for XPCUtils.XPCInterface._nextRequestID);
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + direct field offset for XPCUtils.XPCInterface._nextRequestID) = result + 1;
  }

  return result;
}

Swift::Void __swiftcall XPCUtils.XPCInterface.invalidateInterface()()
{
  v1 = *(*v0 + 80);
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v6 - v4;
  (*(*(v1 - 8) + 56))(&v6 - v4, 1, 1, v1);
  XPCUtils.XPCInterface.remoteInterface.setter(v5);
  *(v0 + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 1;
}

uint64_t *XPCUtils.XPCInterface.deinit()
{
  v1 = *v0;
  v2 = direct field offset for XPCUtils.XPCInterface.logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + direct field offset for XPCUtils.XPCInterface.jsonDecoder);

  v5 = *(v0 + direct field offset for XPCUtils.XPCInterface.jsonEncoder);

  v6 = *(v0 + direct field offset for XPCUtils.XPCInterface.runningRequests);

  v7 = *(v0 + direct field offset for XPCUtils.XPCInterface.connectionBlock + 8);
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(*(v0 + direct field offset for XPCUtils.XPCInterface.connectionBlock));
  v8 = *(v0 + direct field offset for XPCUtils.XPCInterface.reconnectionBlock + 8);
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(*(v0 + direct field offset for XPCUtils.XPCInterface.reconnectionBlock));
  v9 = *(*v0 + 160);
  v10 = *(v1 + 80);
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 8))(v0 + v9, v11);
  return v0;
}

uint64_t XPCUtils.XPCInterface.__deallocating_deinit()
{
  XPCUtils.XPCInterface.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type XPCActor and conformance XPCActor()
{
  result = lazy protocol witness table cache variable for type XPCActor and conformance XPCActor;
  if (!lazy protocol witness table cache variable for type XPCActor and conformance XPCActor)
  {
    type metadata accessor for XPCActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCActor and conformance XPCActor);
  }

  return result;
}

uint64_t partial apply for implicit closure #5 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)()
{
  v1 = v0[2];
  v2 = v0[5];
  v3 = v0[9];
  v4 = v0[10];
  v5 = *(v0[8] + direct field offset for XPCUtils.XPCInterface.jsonDecoder);
  return dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t sub_264FD2D18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_264FD2D6C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 272);
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(*a1);
  return v4(v2, v3);
}

uint64_t type metadata completion function for XPCUtils.XPCInterface(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = type metadata accessor for Optional();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of XPCUtils.XPCInterface.addConnectionBlock(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 344);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCUtils.XPCInterface.addReconnectionBlock(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 352);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2);
}

uint64_t dispatch thunk of XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = *(*v16 + 360);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v17 + 16) = v20;
  *v20 = v17;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return (v22)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_264FD347C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out (), @error @owned Error)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out (), @error @owned Error)(v2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(a1, v5);
}

uint64_t sub_264FD3618()
{
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_264FD3688()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[10];

  v3 = v0[13];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[12], v3);
  }

  v4 = v0[15];
  if (v4 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[14], v4);
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(uint64_t a1)
{
  v17 = v1[5];
  v18 = v1[4];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v15 = v1[3];
  v16 = v1[2];
  v7 = v1[11];
  v14 = v1[10];
  v8 = v1[12];
  v9 = v1[13];
  v11 = v1[14];
  v10 = v1[15];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)(a1, v16, v15, v14, v7, v8, v9, v11);
}

uint64_t partial apply for implicit closure #8 in closure #1 in closure #1 in closure #1 in XPCUtils.XPCInterface.encodeAndSendXPC<A, B, C>(resultType:errorType:isReconnectionEvent:encodeBlock:requestCreationBlock:xpcBlock:)()
{
  v1 = v0[3];
  v2 = v0[7];
  v3 = v0[9];
  v4 = v0[10];
  v5 = *(v0[8] + direct field offset for XPCUtils.XPCInterface.jsonDecoder);
  v6 = *(*(v2 + 8) + 16);
  return dispatch thunk of JSONDecoder.decode<A>(_:from:)();
}

uint64_t MLS.SendResult.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 24))
  {
    _StringGuts.grow(_:)(19);

    v14 = 0xD000000000000010;
    v6 = MLS.ClientSendAcknowledgement.description.getter();
    goto LABEL_5;
  }

  v3 = v0[2];
  if (*(v0 + 24) == 1)
  {
    v14 = 0;
    _StringGuts.grow(_:)(32);
    MEMORY[0x2667545A0](0xD00000000000001DLL, 0x80000002651E9590);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v4;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v5);

    v6 = v12;
    v7 = v13;
LABEL_5:
    MEMORY[0x2667545A0](v6, v7);

    MEMORY[0x2667545A0](41, 0xE100000000000000);
    return v14;
  }

  v9 = v3 | v1;
  if (!(v3 | v1 | v2))
  {
    return 0x73736563637553;
  }

  if (v2 == 1 && v9 == 0)
  {
    return 0x7466417972746552;
  }

  if (v2 == 2 && !v9)
  {
    return 0xD00000000000001CLL;
  }

  if (v9)
  {
    v11 = 0x746552746F4E6F44;
  }

  else
  {
    v11 = 0xD00000000000001ALL;
  }

  if (v2 == 3)
  {
    return v11;
  }

  else
  {
    return 0x746552746F4E6F44;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.SendResult.CodingKeys()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x4173736563637573;
    if (v1 != 1)
    {
      v4 = 0x7466417972746572;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x73736563637573;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 != 5)
    {
      v2 = 0x746552746F4E6F64;
    }

    if (*v0 <= 4u)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.SendResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized MLS.SendResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.DoNotRetryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000002651E9670 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.SendResult.SuccessAndStoreCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000002651E9690 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.SuccessAndStoreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.SuccessAndStoreCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendResult.SuccessCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SendResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO20DoNotRetryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO20DoNotRetryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x28223BE20](v3);
  v49 = &v46 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO36RetryAfterNegativeDeliveryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO36RetryAfterNegativeDeliveryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v47 = *(v48 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v48);
  v46 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterGroupVersionUpdateCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterGroupVersionUpdateCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterLatestGroupVersionCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterLatestGroupVersionCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v52 = &v46 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO25RetryAfterDelayCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO25RetryAfterDelayCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v14);
  v55 = &v46 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO25SuccessAndStoreCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO25SuccessAndStoreCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = *(v60 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v46 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO17SuccessCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO17SuccessCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v58 = *(v21 - 8);
  v59 = v21;
  v22 = *(v58 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO10SendResultO10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v66 = *(v25 - 8);
  v67 = v25;
  v26 = *(v66 + 64);
  MEMORY[0x28223BE20](v25);
  v27 = *v1;
  v65 = v1[1];
  v28 = v1[2];
  v29 = *(v1 + 24);
  v31 = a1[3];
  v30 = a1[4];
  v32 = a1;
  v34 = &v46 - v33;
  __swift_project_boxed_opaque_existential_1(v32, v31);
  lazy protocol witness table accessor for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v29)
  {
    LOBYTE(v68) = 1;
    lazy protocol witness table accessor for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys();
    v36 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v68 = v27;
    v69 = v65;
    lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement();
    v38 = v61;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v60 + 8))(v20, v38);
    return (*(v66 + 8))(v34, v36);
  }

  if (v29 == 1)
  {
    LOBYTE(v68) = 4;
    lazy protocol witness table accessor for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys();
    v35 = v62;
    v36 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v68 = v27;
    LODWORD(v69) = v65;
    v70 = v28;
    lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
    v37 = v64;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v63 + 8))(v35, v37);
    return (*(v66 + 8))(v34, v36);
  }

  v40 = v28 | v65;
  if (v28 | v65 | v27)
  {
    if (v27 == 1 && !v40)
    {
      LOBYTE(v68) = 2;
      lazy protocol witness table accessor for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys();
      v41 = v55;
      v42 = v67;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = v56;
      v43 = v57;
LABEL_18:
      (*(v44 + 8))(v41, v43);
      return (*(v66 + 8))(v34, v42);
    }

    if (v27 == 2 && !v40)
    {
      LOBYTE(v68) = 3;
      lazy protocol witness table accessor for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys();
      v41 = v52;
      v42 = v67;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = v53;
      v43 = v54;
      goto LABEL_18;
    }

    if (v27 != 3 || v40)
    {
      LOBYTE(v68) = 6;
      lazy protocol witness table accessor for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys();
      v41 = v49;
      v42 = v67;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v44 = v50;
      v43 = v51;
      goto LABEL_18;
    }

    LOBYTE(v68) = 5;
    lazy protocol witness table accessor for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys();
    v45 = v46;
    v42 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v47 + 8))(v45, v48);
  }

  else
  {
    LOBYTE(v68) = 0;
    lazy protocol witness table accessor for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys();
    v42 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v58 + 8))(v24, v59);
  }

  return (*(v66 + 8))(v34, v42);
}

uint64_t MLS.SendResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO20DoNotRetryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO20DoNotRetryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v62 = *(v69 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v69);
  v75 = &v55 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO36RetryAfterNegativeDeliveryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO36RetryAfterNegativeDeliveryCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v65 = *(v67 - 8);
  v5 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v71 = &v55 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterGroupVersionUpdateCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterGroupVersionUpdateCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v66 = *(v68 - 8);
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v74 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterLatestGroupVersionCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO38RetryAfterLatestGroupVersionCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x28223BE20](v9);
  v70 = &v55 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO25RetryAfterDelayCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO25RetryAfterDelayCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v60 = *(v61 - 8);
  v12 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v73 = &v55 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO25SuccessAndStoreCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO25SuccessAndStoreCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v58 = *(v59 - 8);
  v14 = *(v58 + 64);
  MEMORY[0x28223BE20](v59);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO17SuccessCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO17SuccessCodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v57 = *(v17 - 8);
  v18 = *(v57 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO10SendResultO10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v55 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  lazy protocol witness table accessor for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys();
  v28 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    goto LABEL_9;
  }

  v29 = v20;
  v55 = v17;
  v56 = v16;
  v30 = v73;
  v31 = v74;
  v32 = v75;
  v84 = v22;
  v33 = KeyedDecodingContainer.allKeys.getter();
  v34 = (2 * *(v33 + 16)) | 1;
  v80 = v33;
  v81 = v33 + 32;
  v82 = 0;
  v83 = v34;
  v35 = specialized Collection<>.popFirst()();
  if (v35 == 7 || v82 != v83 >> 1)
  {
    v43 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v25;
    v46 = v45;
    v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v46 = &type metadata for MLS.SendResult;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v43 - 8) + 104))(v46, *MEMORY[0x277D84160], v43);
    swift_willThrow();
    (*(v84 + 8))(v44, v21);
    swift_unknownObjectRelease();
LABEL_9:
    v48 = v76;
    return __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }

  if (v35 <= 2u)
  {
    if (v35)
    {
      if (v35 == 1)
      {
        LOBYTE(v77) = 1;
        lazy protocol witness table accessor for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys();
        v50 = v56;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement();
        v51 = v59;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v58 + 8))(v50, v51);
        (*(v84 + 8))(v25, v21);
        swift_unknownObjectRelease();
        v40 = 0;
        v42 = 0;
        v41 = v77;
        v39 = v78;
      }

      else
      {
        LOBYTE(v77) = 2;
        lazy protocol witness table accessor for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v60 + 8))(v30, v61);
        (*(v84 + 8))(v25, v21);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0;
        v42 = 2;
        v41 = 1;
      }
    }

    else
    {
      LOBYTE(v77) = 0;
      lazy protocol witness table accessor for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v57 + 8))(v29, v55);
      (*(v84 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v41 = 0;
      v39 = 0;
      v40 = 0;
      v42 = 2;
    }

    v48 = v76;
    v36 = v72;
  }

  else
  {
    if (v35 > 4u)
    {
      v36 = v72;
      v52 = v84;
      if (v35 == 5)
      {
        LOBYTE(v77) = 5;
        lazy protocol witness table accessor for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys();
        v53 = v71;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v65 + 8))(v53, v67);
        (*(v52 + 8))(v25, v21);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0;
        v42 = 2;
        v41 = 3;
      }

      else
      {
        LOBYTE(v77) = 6;
        lazy protocol witness table accessor for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v62 + 8))(v32, v69);
        (*(v52 + 8))(v25, v21);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0;
        v42 = 2;
        v41 = 4;
      }
    }

    else
    {
      v36 = v72;
      v37 = v84;
      if (v35 == 3)
      {
        LOBYTE(v77) = 3;
        lazy protocol witness table accessor for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys();
        v38 = v70;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v63 + 8))(v38, v64);
        (*(v37 + 8))(v25, v21);
        swift_unknownObjectRelease();
        v39 = 0;
        v40 = 0;
        v41 = 2;
        v42 = 2;
      }

      else
      {
        LOBYTE(v77) = 4;
        lazy protocol witness table accessor for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
        v54 = v68;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v66 + 8))(v31, v54);
        (*(v37 + 8))(v25, v21);
        swift_unknownObjectRelease();
        v41 = v77;
        v39 = v78;
        v42 = 1;
        v40 = v79;
      }
    }

    v48 = v76;
  }

  *v36 = v41;
  *(v36 + 8) = v39;
  *(v36 + 16) = v40;
  *(v36 + 24) = v42;
  return __swift_destroy_boxed_opaque_existential_1Tm(v48);
}

uint64_t MLS.ClientSendAcknowledgement.groupClientContextBlob.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.ClientSendAcknowledgement.init(groupClientContextBlob:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t MLS.ClientSendAcknowledgement.description.getter()
{
  v1 = 0xD000000000000019;
  v2 = v0[1];
  if (v2 >> 60 != 15)
  {
    v3 = *v0;
    outlined copy of Data._Representation(*v0, v2);
    _StringGuts.grow(_:)(29);

    v4 = Data.description.getter();
    MEMORY[0x2667545A0](v4);

    MEMORY[0x2667545A0](41, 0xE100000000000000);
    outlined consume of Data?(v3, v2);
    return 0xD00000000000001ALL;
  }

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.ClientSendAcknowledgement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002651E96B0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ClientSendAcknowledgement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ClientSendAcknowledgement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ClientSendAcknowledgement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ClientSendAcknowledgementV10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO25ClientSendAcknowledgementV10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data?(v8, v9);
  lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  v13 = v9;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.ClientSendAcknowledgement.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ClientSendAcknowledgementV10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO25ClientSendAcknowledgementV10CodingKeys33_DC6772F65CE64E9368338C938E7889C5LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.CodingKeys and conformance MLS.SendResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.DoNotRetryCodingKeys and conformance MLS.SendResult.DoNotRetryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys and conformance MLS.SendResult.RetryAfterNegativeDeliveryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys and conformance MLS.SendResult.RetryAfterGroupVersionUpdateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion()
{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion;
  if (!lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupVersion and conformance MLS.GroupVersion);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys and conformance MLS.SendResult.RetryAfterLatestGroupVersionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.RetryAfterDelayCodingKeys and conformance MLS.SendResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessAndStoreCodingKeys and conformance MLS.SendResult.SuccessAndStoreCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement()
{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement and conformance MLS.ClientSendAcknowledgement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendResult.SuccessCodingKeys and conformance MLS.SendResult.SuccessCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ClientSendAcknowledgement.CodingKeys and conformance MLS.ClientSendAcknowledgement.CodingKeys);
  }

  return result;
}

uint64_t dispatch thunk of MLS.Communicator.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 40);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v15(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO10SendResultO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t getEnumTagSinglePayload for MLS.SendResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.SendResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MLS.SendResult(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.ClientSendAcknowledgement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.ClientSendAcknowledgement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.SendResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MLS.SendResult.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized MLS.SendResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xEF65726F7453646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEF79616C65447265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002651E9610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000002651E9630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002651E9650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x746552746F4E6F64 && a2 == 0xEA00000000007972)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

Swift::Void __swiftcall MLS.PersistenceQueue.QueueItem.resume()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - v5;
  v7 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MLS.PersistenceQueue.QueueItem(v1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v10 + 1);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR);
    (*(v3 + 32))(v6, &v10[*(v12 + 48)], v2);
    CheckedContinuation.resume(returning:)();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    outlined destroy of MLS.PersistenceQueue.QueueItem(v10);
  }
}

uint64_t outlined init with copy of MLS.PersistenceQueue.QueueItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MLS.PersistenceQueue.QueueItem(uint64_t a1)
{
  v2 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MLS.PersistenceQueue.QueueItem.transactionID.getter()
{
  v1 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of MLS.PersistenceQueue.QueueItem(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  v7 = *(v4 + 1);
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR) + 48);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    (*(*(v9 - 8) + 8))(&v4[v8], v9);
  }

  return v6;
}

uint64_t MLS.PersistenceQueue.queue.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t MLS.PersistenceQueue.queue.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t MLS.PersistenceQueue.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.PersistenceQueue.beginTransactionBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock);
  v2 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock + 8);

  return v1;
}

uint64_t MLS.PersistenceQueue.endTransactionBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock);
  v2 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock + 8);

  return v1;
}

uint64_t MLS.PersistenceQueue.rollbackTransactionBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock);
  v2 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock + 8);

  return v1;
}

uint64_t outlined init with copy of AsyncStream<String>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLS.PersistenceQueue.__allocating_init(queueingPublisher:beginTransactionBlock:endTransactionBlock:rollbackTransactionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v17 + 16) = MEMORY[0x277D84F90];
  outlined init with take of AsyncStream<String>.Continuation?(a1, v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher);
  v18 = (v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock);
  *v18 = a2;
  v18[1] = a3;
  v19 = (v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock);
  *v19 = a4;
  v19[1] = a5;
  v20 = (v17 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock);
  *v20 = a6;
  v20[1] = a7;
  return v17;
}

uint64_t MLS.PersistenceQueue.init(queueingPublisher:beginTransactionBlock:endTransactionBlock:rollbackTransactionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Logger.init(subsystem:category:)();
  *(v7 + 16) = MEMORY[0x277D84F90];
  outlined init with take of AsyncStream<String>.Continuation?(a1, v7 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher);
  v15 = (v7 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock);
  *v15 = a2;
  v15[1] = a3;
  v16 = (v7 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock);
  *v16 = a4;
  v16[1] = a5;
  v17 = (v7 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock);
  *v17 = a6;
  v17[1] = a7;
  return v7;
}

uint64_t outlined init with take of AsyncStream<String>.Continuation?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = *(a8 - 8);
  v9[11] = v10;
  v11 = *(v10 + 64) + 15;
  v9[12] = swift_task_alloc();
  v9[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  v9[14] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:), v12, 0);
}

uint64_t MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)()
{
  v1 = v0[14];
  v2 = v0[10];
  v4 = v0[3];
  v3 = v0[4];
  lazy protocol witness table accessor for type MLSActor and conformance MLSActor();
  v5 = swift_task_alloc();
  v0[15] = v5;
  v5[2] = v2;
  v5[3] = v4;
  v5[4] = v3;
  v6 = *(MEMORY[0x277D859E0] + 4);
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return MEMORY[0x2822007B8]();
}

{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v5 = *v0;

  return MEMORY[0x2822009F8](MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:), v3, 0);
}

{
  v16 = v0;
  v1 = v0[10];
  v2 = v0[4];
  v0[17] = OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_logger;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    _os_log_impl(&dword_264F1F000, v3, v4, "PersistenceQueue beginning transaction { transactionID: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  v9 = (v0[10] + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock);
  v10 = v9[1];
  v14 = (*v9 + **v9);
  v11 = (*v9)[1];
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  v12[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return v14();
}

{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  else
  {
    v6 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v17 = v0;
  v1 = v0[17];
  v2 = v0[10];
  v3 = v0[4];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[3];
    v6 = v0[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v16);
    _os_log_impl(&dword_264F1F000, v4, v5, "PersistenceQueue running work { transactionID: %s }", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v15 = (v0[5] + *v0[5]);
  v10 = *(v0[5] + 4);
  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  v12 = v0[12];
  v13 = v0[6];

  return v15(v12);
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  else
  {
    v6 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v22 = v0;
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[4];
  v8 = *(v4 + 32);
  v0[22] = v8;
  v0[23] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v2, v3, v6);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v0[3];
    v11 = v0[4];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v21);
    _os_log_impl(&dword_264F1F000, v9, v10, "PersistenceQueue ending transaction { transactionID: %s }", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266755550](v14, -1, -1);
    MEMORY[0x266755550](v13, -1, -1);
  }

  v15 = (v0[10] + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock);
  v16 = v15[1];
  v20 = (*v15 + **v15);
  v17 = (*v15)[1];
  v18 = swift_task_alloc();
  v0[24] = v18;
  *v18 = v0;
  v18[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return v20();
}

{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  else
  {
    v6 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 176))(*(v0 + 16), *(v0 + 104), *(v0 + 72));
  $defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(v3, v5, v4);

  v6 = *(v0 + 8);

  return v6();
}

{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  else
  {
    v6 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 64);
    v3 = *(v0 + 56);
    v13 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    *(v0 + 232) = v5;
    *v5 = v0;
    v5[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

    return v13();
  }

  else
  {
    v7 = *(v0 + 248);
    v8 = *(v0 + 208);
    swift_willThrow();
    v9 = *(v0 + 208);
    if (v7 == 1)
    {
      (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 72));
    }

    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    $defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(*(v0 + 80), *(v0 + 24), *(v0 + 32));

    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  *(*v1 + 240) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  else
  {
    v6 = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v1 = *(v0 + 248);
  v2 = *(v0 + 208);
  swift_willThrow();
  v3 = *(v0 + 208);
  if (v1 == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 72));
  }

  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  $defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(*(v0 + 80), *(v0 + 24), *(v0 + 32));

  v6 = *(v0 + 8);

  return v6();
}

{
  v18 = v0;
  v1 = *(v0 + 152);
  *(v0 + 248) = 0;
  *(v0 + 208) = v1;
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v17);
    _os_log_impl(&dword_264F1F000, v5, v6, "PersistenceQueue rolling back transaction { transactionID: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v11 = (*(v0 + 80) + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock);
  v12 = v11[1];
  v16 = (*v11 + **v11);
  v13 = (*v11)[1];
  v14 = swift_task_alloc();
  *(v0 + 216) = v14;
  *v14 = v0;
  v14[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return v16();
}

{
  v18 = v0;
  v1 = *(v0 + 168);
  *(v0 + 248) = 0;
  *(v0 + 208) = v1;
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v17);
    _os_log_impl(&dword_264F1F000, v5, v6, "PersistenceQueue rolling back transaction { transactionID: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v11 = (*(v0 + 80) + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock);
  v12 = v11[1];
  v16 = (*v11 + **v11);
  v13 = (*v11)[1];
  v14 = swift_task_alloc();
  *(v0 + 216) = v14;
  *v14 = v0;
  v14[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return v16();
}

{
  v18 = v0;
  v1 = *(v0 + 200);
  *(v0 + 248) = 1;
  *(v0 + 208) = v1;
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v17);
    _os_log_impl(&dword_264F1F000, v5, v6, "PersistenceQueue rolling back transaction { transactionID: %s }", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  v11 = (*(v0 + 80) + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock);
  v12 = v11[1];
  v16 = (*v11 + **v11);
  v13 = (*v11)[1];
  v14 = swift_task_alloc();
  *(v0 + 216) = v14;
  *v14 = v0;
  v14[1] = MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:);

  return v16();
}

{
  v1 = *(v0 + 248);

  v2 = *(v0 + 224);
  if (v1 == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 72));
  }

  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  $defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(*(v0 + 80), *(v0 + 24), *(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 248);

  v2 = *(v0 + 240);
  if (v1 == 1)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 104), *(v0 + 72));
  }

  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  $defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(*(v0 + 80), *(v0 + 24), *(v0 + 32));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t closure #1 in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v77 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v74 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySS__GSgMd, &_sScS12ContinuationV11YieldResultOySS__GSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = &v74 - v13;
  v14 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v74 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v74 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = (&v74 - v26);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v81 = a3;
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v29 = *(*a2 + 128);
  v30 = *(v29(isCurrentExecutor) + 16);

  if (v30)
  {
    v76 = v10;
    v75 = *(v29(v31) + 16);

    v33 = v29(v32);
    if (*(v33 + 16))
    {
      outlined init with copy of MLS.PersistenceQueue.QueueItem(v33 + ((*(v80 + 80) + 32) & ~*(v80 + 80)), v25);

      outlined init with take of MLS.PersistenceQueue.QueueItem(v25, v22);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v35 = *v22;
      v36 = v22[1];
      if (EnumCaseMultiPayload == 1)
      {
        v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR) + 48);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
        (*(*(v38 - 8) + 8))(v22 + v37, v38);
      }
    }

    else
    {

      v35 = 0;
      v36 = 0xE000000000000000;
    }

    v44 = v81;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v82[0] = v48;
      *v47 = 136315650;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, a4, v82);
      *(v47 + 12) = 2048;
      *(v47 + 14) = v75;
      *(v47 + 22) = 2080;
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v82);

      *(v47 + 24) = v49;
      v44 = v81;
      _os_log_impl(&dword_264F1F000, v45, v46, "PersistenceQueue queue is not empty, holding { transactionID: %s, queue.count: %ld, runningTransaction: %s }", v47, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v48, -1, -1);
      MEMORY[0x266755550](v47, -1, -1);
    }

    else
    {
    }

    v10 = v76;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR) + 48);
    *v19 = v44;
    v19[1] = a4;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    (*(*(v51 - 8) + 16))(v19 + v50, v77, v51);
    swift_storeEnumTagMultiPayload();
    v52 = *(*a2 + 144);

    v53 = v52(v82);
    v55 = v54;
    v56 = *v54;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v55 = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
      *v55 = v56;
    }

    v59 = v56[2];
    v58 = v56[3];
    if (v59 >= v58 >> 1)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1, v56);
      *v55 = v56;
    }

    v56[2] = v59 + 1;
    outlined init with take of MLS.PersistenceQueue.QueueItem(v19, v56 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v59);
    v53(v82, 0);
  }

  else
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v82[0] = v42;
      *v41 = 136315138;
      v43 = v81;
      *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, a4, v82);
      _os_log_impl(&dword_264F1F000, v39, v40, "PersistenceQueue queue is empty, running immediately { transactionID: %s }", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266755550](v42, -1, -1);
      MEMORY[0x266755550](v41, -1, -1);
    }

    else
    {

      v43 = v81;
    }

    *v27 = v43;
    v27[1] = a4;
    swift_storeEnumTagMultiPayload();
    v60 = *(*a2 + 144);

    v61 = v60(v82);
    v63 = v62;
    v64 = *v62;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    *v63 = v64;
    if ((v65 & 1) == 0)
    {
      v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64[2] + 1, 1, v64);
      *v63 = v64;
    }

    v67 = v64[2];
    v66 = v64[3];
    if (v67 >= v66 >> 1)
    {
      v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v66 > 1, v67 + 1, 1, v64);
      *v63 = v64;
    }

    v64[2] = v67 + 1;
    outlined init with take of MLS.PersistenceQueue.QueueItem(v27, v64 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v67);
    v61(v82, 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    CheckedContinuation.resume(returning:)();
    v44 = v81;
  }

  outlined init with copy of AsyncStream<String>.Continuation?(a2 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher, v10);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v10, 1, v68) == 1)
  {
    outlined destroy of NSObject?(v10, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
    v70 = 1;
    v71 = v78;
  }

  else
  {
    v82[0] = v44;
    v82[1] = a4;

    v71 = v78;
    AsyncStream.Continuation.yield(_:)();
    (*(v69 + 8))(v10, v68);
    v70 = 0;
  }

  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOySS__GMd, &_sScS12ContinuationV11YieldResultOySS__GMR);
  (*(*(v72 - 8) + 56))(v71, v70, 1, v72);
  return outlined destroy of NSObject?(v71, &_sScS12ContinuationV11YieldResultOySS__GSgMd, &_sScS12ContinuationV11YieldResultOySS__GSgMR);
}

uint64_t $defer #1 <A>() in MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v62 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  MEMORY[0x28223BE20](v5);
  v59 = v58 - v7;
  v63 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  v8 = *(v63 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v63);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (v58 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v58 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v58 - v19;
  v21 = OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_logger;

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v64 = v12;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v58[1] = v21;
    v26 = v18;
    v27 = v15;
    v28 = v20;
    v29 = v8;
    v30 = v25;
    v31 = swift_slowAlloc();
    v65[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, a3, v65);
    _os_log_impl(&dword_264F1F000, v22, v23, "PersistenceQueue completing transaction { transactionID: %s }", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266755550](v31, -1, -1);
    v32 = v30;
    v8 = v29;
    v20 = v28;
    v15 = v27;
    v18 = v26;
    MEMORY[0x266755550](v32, -1, -1);
  }

  result = (*(*a1 + 144))(v65);
  if (*(*v34 + 16))
  {
    v35 = result;
    specialized Array.replaceSubrange<A>(_:with:)(0, 1);
    v36 = v35(v65, 0);
    v37 = *(*a1 + 128);
    v38 = v37(v36);
    if (*(v38 + 16))
    {
      outlined init with copy of MLS.PersistenceQueue.QueueItem(v38 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v20);

      v40 = *(v37(v39) + 16);

      outlined init with copy of MLS.PersistenceQueue.QueueItem(v20, v18);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v65[0] = v44;
        *v43 = 136315394;
        outlined init with take of MLS.PersistenceQueue.QueueItem(v18, v15);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v47 = *v15;
        v46 = v15[1];
        if (EnumCaseMultiPayload == 1)
        {
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR);
          (*(v60 + 8))(v15 + *(v48 + 48), v61);
        }

        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, v65);

        *(v43 + 4) = v49;
        *(v43 + 12) = 2048;
        *(v43 + 14) = v40;
        _os_log_impl(&dword_264F1F000, v41, v42, "PersistenceQueue running next transaction { nextTransactionID: %s, queueCount: %ld }", v43, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        MEMORY[0x266755550](v44, -1, -1);
        MEMORY[0x266755550](v43, -1, -1);
      }

      else
      {

        outlined destroy of MLS.PersistenceQueue.QueueItem(v18);
      }

      v50 = v64;
      outlined init with copy of MLS.PersistenceQueue.QueueItem(v20, v64);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v51 = *(v50 + 8);

        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS13transactionID_ScCyyts5NeverOG12continuationtMd, &_sSS13transactionID_ScCyyts5NeverOG12continuationtMR);
        v53 = v59;
        v54 = v60;
        v55 = v50 + *(v52 + 48);
        v56 = v61;
        (*(v60 + 32))(v59, v55, v61);
        CheckedContinuation.resume(returning:)();
        (*(v54 + 8))(v53, v56);
        v57 = v20;
      }

      else
      {
        outlined destroy of MLS.PersistenceQueue.QueueItem(v20);
        v57 = v50;
      }

      return outlined destroy of MLS.PersistenceQueue.QueueItem(v57);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLS.PersistenceQueue.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock + 8);

  v5 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock + 8);

  v6 = *(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock + 8);

  outlined destroy of NSObject?(v0 + OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher, &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  return v0;
}

uint64_t MLS.PersistenceQueue.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_beginTransactionBlock + 8];

  v5 = *&v0[OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_endTransactionBlock + 8];

  v6 = *&v0[OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_rollbackTransactionBlock + 8];

  outlined destroy of NSObject?(&v0[OBJC_IVAR____TtCO15SecureMessaging3MLS16PersistenceQueue_queueingPublisher], &_sScS12ContinuationVySS_GSgMd, &_sScS12ContinuationVySS_GSgMR);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_264FD9DE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t sub_264FD9E2C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 136);

  return v3(v4);
}

void type metadata completion function for MLS.PersistenceQueue()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for AsyncStream<String>.Continuation?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of MLS.PersistenceQueue.enqueue<A>(transactionID:_:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *(*v8 + 160);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v9 + 16) = v20;
  *v20 = v9;
  v20[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v22(a1, a2, a3, a4, a5, a6, a7, a8);
}

void type metadata accessor for AsyncStream<String>.Continuation?()
{
  if (!lazy cache variable for type metadata for AsyncStream<String>.Continuation?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScS12ContinuationVySS_GMd, &_sScS12ContinuationVySS_GMR);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AsyncStream<String>.Continuation?);
    }
  }
}

void type metadata completion function for MLS.PersistenceQueue.QueueItem()
{
  type metadata accessor for (transactionID: String)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (transactionID: String, continuation: CheckedContinuation<(), Never>)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for (transactionID: String)()
{
  result = lazy cache variable for type metadata for (transactionID: String);
  if (!lazy cache variable for type metadata for (transactionID: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (transactionID: String));
  }

  return result;
}

void type metadata accessor for (transactionID: String, continuation: CheckedContinuation<(), Never>)()
{
  if (!lazy cache variable for type metadata for (transactionID: String, continuation: CheckedContinuation<(), Never>))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (transactionID: String, continuation: CheckedContinuation<(), Never>));
    }
  }
}

uint64_t outlined init with take of MLS.PersistenceQueue.QueueItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.PersistenceQueue.QueueItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MLS.KeyPackageRetrievalResult.uriToSwiftMLSKeyPackage.getter(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for MLS.Client.KeyPackage();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v111 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v79 - v11;
  v104 = a1;
  v13 = *(a1 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v10);
  v107 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = &v79 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  v108 = v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v90 = type metadata accessor for Optional();
  v20 = *(v90 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v90);
  v89 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v88 = &v79 - v24;
  v25 = *v1;

  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_8SwiftMLS0D0O6ClientO10KeyPackageVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v27 = v26;
  v28 = 0;
  v30 = v25 + 64;
  v29 = *(v25 + 64);
  v91 = v25;
  v31 = 1 << *(v25 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v29;
  v80 = (v31 + 63) >> 6;
  v92 = TupleTypeMetadata2;
  v87 = TupleTypeMetadata2 - 8;
  v82 = v14 + 16;
  v95 = (v14 + 32);
  v86 = (v20 + 32);
  v103 = (v6 + 16);
  v98 = v6 + 32;
  v99 = v6 + 8;
  v101 = v6;
  v97 = v6 + 40;
  v84 = v14;
  v85 = (v14 + 8);
  v96 = v26;
  v81 = v25 + 64;
  v102 = v5;
  v100 = v12;
  if ((v32 & v29) == 0)
  {
LABEL_5:
    if (v80 <= v28 + 1)
    {
      v35 = v28 + 1;
    }

    else
    {
      v35 = v80;
    }

    v36 = v35 - 1;
    v37 = v92;
    while (1)
    {
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_40;
      }

      if (v34 >= v80)
      {
        v48 = *(v92 - 8);
        v46 = v89;
        (*(v48 + 56))(v89, 1, 1, v92);
        v93 = 0;
        v94 = v36;
        goto LABEL_14;
      }

      v33 = *(v30 + 8 * v34);
      ++v28;
      if (v33)
      {
        v94 = v34;
        goto LABEL_13;
      }
    }
  }

  while (1)
  {
    v94 = v28;
    v34 = v28;
LABEL_13:
    v93 = (v33 - 1) & v33;
    v38 = __clz(__rbit64(v33)) | (v34 << 6);
    v39 = v91;
    v40 = v84;
    v41 = v83;
    v42 = v108;
    (*(v84 + 16))(v83, *(v91 + 48) + *(v84 + 72) * v38, v108);
    v43 = *(*(v39 + 56) + 8 * v38);
    v44 = *(v92 + 48);
    v45 = *(v40 + 32);
    v46 = v89;
    v47 = v42;
    v37 = v92;
    v45(v89, v41, v47);
    *&v46[v44] = v43;
    v48 = *(v37 - 8);
    (*(v48 + 56))(v46, 0, 1, v37);

LABEL_14:
    v49 = v88;
    (*v86)(v88, v46, v90);
    if ((*(v48 + 48))(v49, 1, v37) == 1)
    {
LABEL_37:

      return v96;
    }

    v50 = *&v49[*(v37 + 48)];
    (*v95)(v107, v49, v108);
    v106 = *(v50 + 16);
    if (v106)
    {
      break;
    }

    v53 = v27;
    v56 = v96;
LABEL_33:
    (*v85)(v107, v108);

    v27 = v53;
    v96 = v56;
    v30 = v81;
    v33 = v93;
    v28 = v94;
    if (!v93)
    {
      goto LABEL_5;
    }
  }

  v51 = 0;
  v52 = (v50 + 40);
  v105 = v50;
  while (v51 < *(v50 + 16))
  {
    v110 = v51;
    v57 = *(v52 - 1);
    v58 = *v52;
    outlined copy of Data._Representation(v57, *v52);
    outlined copy of Data._Representation(v57, v58);
    MLS.Client.KeyPackage.init(fromRaw:)();
    if (v3)
    {
      (*v85)(v107, v108);
      outlined consume of Data._Representation(v57, v58);

      goto LABEL_37;
    }

    v109 = 0;
    (*(*(v104 + 24) + 32))(v112, v108);
    v59 = v12;
    v60 = v112[0];
    v61 = v112[1];
    (*v103)(v111, v59, v5);
    v62 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v113 = v27;
    v65 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
    v66 = v27[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_39;
    }

    v69 = v64;
    if (v62[3] >= v68)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v64)
        {
          goto LABEL_17;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v69)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, isUniquelyReferenced_nonNull_native);
      v70 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_42;
      }

      v65 = v70;
      if (v69)
      {
LABEL_17:

        v53 = v113;
        v54 = v101;
        v55 = v113[7] + *(v101 + 72) * v65;
        v5 = v102;
        (*(v101 + 40))(v55, v111, v102);
        outlined consume of Data._Representation(v57, v58);
        v12 = v100;
        (*(v54 + 8))(v100, v5);
        goto LABEL_18;
      }
    }

    v53 = v113;
    v113[(v65 >> 6) + 8] |= 1 << v65;
    v72 = (v53[6] + 16 * v65);
    *v72 = v60;
    v72[1] = v61;
    v73 = v101;
    v74 = v53[7] + *(v101 + 72) * v65;
    v5 = v102;
    (*(v101 + 32))(v74, v111, v102);
    outlined consume of Data._Representation(v57, v58);
    v12 = v100;
    (*(v73 + 8))(v100, v5);
    v75 = v53[2];
    v76 = __OFADD__(v75, 1);
    v77 = v75 + 1;
    if (v76)
    {
      goto LABEL_41;
    }

    v53[2] = v77;
LABEL_18:
    v3 = v109;
    v51 = v110 + 1;
    v52 += 2;
    v27 = v53;
    v56 = v53;
    v50 = v105;
    if (v106 == v110 + 1)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t MLS.KeyPackageInfo.rawKeyPackage.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.KeyPackageInfo.init(keyPackage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.KeyPackageInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = [(objc_class *)isa description];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.KeyPackageInfo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x615079654B776172 && a2 == 0xED00006567616B63)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.KeyPackageInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO14KeyPackageInfoV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO14KeyPackageInfoV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v8, v9);
  lazy protocol witness table accessor for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v8;
  v13 = v9;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v12, v13);
  return (*(v4 + 8))(v7, v3);
}

uint64_t MLS.KeyPackageInfo.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO14KeyPackageInfoV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO14KeyPackageInfoV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageInfo.CodingKeys and conformance MLS.KeyPackageInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageInfo()
{
  v1 = *v0;
  v2 = v0[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = [(objc_class *)isa description];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageRetrievalContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageRetrievalContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.KeyPackageRetrievalContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26KeyPackageRetrievalContextV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26KeyPackageRetrievalContextV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MLS.KeyPackageRetrievalContext(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26KeyPackageRetrievalContextV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO26KeyPackageRetrievalContextV10CodingKeys33_EC616C31DBECBCAD97387E30C98096B5LLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext.CodingKeys and conformance MLS.KeyPackageRetrievalContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t MLS.KeyPackageRetrievalResult.description.getter(uint64_t a1)
{
  v3 = *v1;

  _StringGuts.grow(_:)(29);
  MEMORY[0x2667545A0](0xD00000000000001ALL, 0x80000002651E9810);
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  v5 = *(*(a1 + 24) + 24);
  type metadata accessor for Dictionary();
  swift_getWitnessTable();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

uint64_t static MLS.KeyPackageRetrievalResult.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  v9 = *(a4 + 24);
  v10 = lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.KeyPackageInfo] and conformance <A> [A], lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo);

  return MEMORY[0x2821FB928](v6, v7, a3, v8, v9, v10);
}

uint64_t MLS.KeyPackageRetrievalResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000002651E9830 == a2)
  {

    v2 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v2 = v3 ^ 1;
  }

  return v2 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.KeyPackageRetrievalResult<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = MLS.KeyPackageRetrievalResult.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.KeyPackageRetrievalResult<A>.CodingKeys@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = protocol witness for static Equatable.== infix(_:_:) in conformance MLS.IncomingEventType<A, B>.ApplicationMessageCodingKeys();
  *a2 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageRetrievalResult<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageRetrievalResult<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.KeyPackageRetrievalResult.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v16[0] = *(a2 + 24);
  v16[1] = v4;
  type metadata accessor for MLS.KeyPackageRetrievalResult.CodingKeys();
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v17 = *(v5 - 8);
  v6 = *(v17 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = *v2;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  v11 = v16[0];
  v12 = *(v16[0] + 24);
  type metadata accessor for Dictionary();
  v13 = *(v11 + 16);
  v14 = lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.KeyPackageInfo] and conformance <A> [A], lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo);
  v18 = v13;
  v19 = v14;
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v17 + 8))(v8, v5);
}

uint64_t MLS.KeyPackageRetrievalResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v19 = a4;
  v20 = a2;
  type metadata accessor for MLS.KeyPackageRetrievalResult.CodingKeys();
  swift_getWitnessTable();
  v21 = type metadata accessor for KeyedDecodingContainer();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v12 = v19;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    v13 = *(a3 + 24);
    type metadata accessor for Dictionary();
    v14 = *(a3 + 8);
    v15 = lazy protocol witness table accessor for type [MLS.KeyPackageInfo] and conformance <A> [A](&lazy protocol witness table cache variable for type [MLS.KeyPackageInfo] and conformance <A> [A], lazy protocol witness table accessor for type MLS.KeyPackageInfo and conformance MLS.KeyPackageInfo);
    v22 = v14;
    v23 = v15;
    swift_getWitnessTable();
    v16 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v10, v16);
    *v12 = v24;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMd, _ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v31 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = MEMORY[0x266754DC0](*(v8 + 40), v21);
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v31;
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
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO10EventQueueCGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO9AllMemberOSayAE14KeyPackageInfoVGGMR);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v2;
    v41 = v5;
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
    while (1)
    {
      if (!v13)
      {
        v20 = v9;
        while (1)
        {
          v9 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (v9 >= v14)
          {
            break;
          }

          v21 = v10[v9];
          ++v20;
          if (v21)
          {
            v19 = __clz(__rbit64(v21));
            v13 = (v21 - 1) & v21;
            goto LABEL_17;
          }
        }

        if ((v42 & 1) == 0)
        {

          v3 = v40;
          goto LABEL_41;
        }

        v39 = 1 << *(v5 + 32);
        v3 = v40;
        if (v39 >= 64)
        {
          bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v39;
        }

        *(v5 + 16) = 0;
        break;
      }

      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 32 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v43 = *(v24 + 16);
      v27 = *(v24 + 24);
      v28 = *(v23 + 8 * v22);
      if ((v42 & 1) == 0)
      {
        v29 = *(v24 + 24);
        outlined copy of MLS.AllMember();
      }

      v30 = *(v8 + 40);
      Hasher.init(_seed:)();
      if (v27 < 0)
      {
        MEMORY[0x266754DE0](1);
        String.hash(into:)();
        MEMORY[0x266754DE0](0);
        if (v27)
        {
          Hasher._combine(_:)(0);
          goto LABEL_25;
        }

        Hasher._combine(_:)(1u);
        v31 = v43;
      }

      else
      {
        MEMORY[0x266754DE0](0);
        String.hash(into:)();
        v31 = 0;
      }

      MEMORY[0x266754DE0](v31);
LABEL_25:
      result = Hasher._finalize()();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v17 = v28;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v17 = v28;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v18 = *(v8 + 48) + 32 * v16;
      *v18 = v25;
      *(v18 + 8) = v26;
      *(v18 + 16) = v43;
      *(v18 + 24) = v27;
      *(*(v8 + 56) + 8 * v16) = v17;
      ++*(v8 + 16);
      v5 = v41;
    }
  }

LABEL_41:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMd, &_ss18_DictionaryStorageCy10Foundation4DataV15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 16 * v22);
      v24 = (*(v5 + 56) + 32 * v22);
      v25 = v24[1];
      v26 = v24[2];
      v27 = v24[3];
      v39 = v26;
      v40 = *v24;
      v41 = v23;
      if ((v38 & 1) == 0)
      {
        outlined copy of Data._Representation(v23, *(&v23 + 1));
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      Data.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        v17 = v41;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
      v17 = v41;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v40;
      v18[1] = v25;
      v18[2] = v39;
      v18[3] = v27;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDV10Foundation4DataVGMR);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v40 = v23[2];
      v39 = *(v22 + 16 * v21);
      if ((v38 & 1) == 0)
      {

        outlined copy of Data._Representation(v39, *(&v39 + 1));
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v40;
      v17[3] = v26;
      *(*(v8 + 56) + 16 * v16) = v39;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        outlined init with take of MLS.KeyUpdatePolicy(v25, v37);
      }

      else
      {
        outlined init with copy of ServerBag.MLS(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of MLS.KeyUpdatePolicy(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVSayAE15PersistedMemberVGGMR);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = v23[1];
      v39 = *v23;
      v25 = v23[3];
      v38 = v23[2];
      v26 = *(v22 + 8 * v21);
      if ((v37 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v39;
      v17[1] = v24;
      v17[2] = v38;
      v17[3] = v25;
      *(*(v8 + 56) + 8 * v16) = v26;
      ++*(v8 + 16);
      v5 = v36;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v22 = (*(v5 + 56) + 40 * v20);
      if (a2)
      {
        outlined init with take of MLS.KeyUpdatePolicy(v22, v32);
      }

      else
      {
        outlined init with copy of ServerBag.MLS(v22, v32);
      }

      result = MEMORY[0x266754DC0](*(v8 + 40), v21);
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = outlined init with take of MLS.KeyUpdatePolicy(v32, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSEpochStoreIDV10Foundation4DataVGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 48 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      v42 = v23[5];
      v43 = v23[4];
      v41 = *(v22 + 16 * v21);
      if ((v39 & 1) == 0)
      {

        outlined copy of Data._Representation(v26, v27);
        outlined copy of Data._Representation(v41, *(&v41 + 1));
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      Data.hash(into:)();
      MEMORY[0x266754E10](v43);
      MEMORY[0x266754E10](v42);
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 48 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v26;
      v17[3] = v27;
      v17[4] = v43;
      v17[5] = v42;
      *(*(v8 + 56) + 16 * v16) = v41;
      ++*(v8 + 16);
      v5 = v38;
      v13 = v40;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC20SwiftMLSGroupStoreIDV10Foundation4DataVGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      v41 = *(v22 + 16 * v21);
      if ((v39 & 1) == 0)
      {

        outlined copy of Data._Representation(v26, v27);
        outlined copy of Data._Representation(v41, *(&v41 + 1));
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v26;
      v17[3] = v27;
      *(*(v8 + 56) + 16 * v16) = v41;
      ++*(v8 + 16);
      v5 = v38;
      v13 = v40;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC12GroupStoreIDVAE21EventsSinceLastUpdateVGMR);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v40 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 32 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[3];
      v28 = (v23 + 24 * v22);
      v43 = *v28;
      v44 = v24[2];
      v29 = v28[1];
      v42 = *(v28 + 16);
      if ((v41 & 1) == 0)
      {
      }

      v30 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v25;
      v17[1] = v26;
      v17[2] = v44;
      v17[3] = v27;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v43;
      *(v18 + 8) = v29;
      *(v18 + 16) = v42;
      ++*(v8 + 16);
      v5 = v40;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17OutgoingEventTypeOy_AE9AllMemberO10Foundation4DataVG_AE0fG5StateVSgAE12GroupVersionVtGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18OutgoingEventEntryVGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17IncomingEventTypeOy_AE9AllMemberO10Foundation4DataVGGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO17InMemoryPersisterC18IncomingEventEntryVGGMR);
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMd, &_ss18_DictionaryStorageCySSSay15SecureMessaging3MLSO18OutgoingEventStateVGGMR);
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO17InMemoryPersisterC19GroupMessageStoreIDVSiGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v40 = (v13 - 1) & v13;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 48 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[3];
      v43 = v23[2];
      v27 = v23[5];
      v41 = *(v22 + 8 * v21);
      v42 = v23[4];
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      String.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 48 * v16);
      *v17 = v24;
      v17[1] = v25;
      v17[2] = v43;
      v17[3] = v26;
      v17[4] = v42;
      v17[5] = v27;
      *(*(v8 + 56) + 8 * v16) = v41;
      ++*(v8 + 16);
      v5 = v38;
      v13 = v40;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMd, &_ss18_DictionaryStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVAE25SwiftMLSPersisterProtocol_pGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        outlined init with take of MLS.KeyUpdatePolicy(v25, v37);
      }

      else
      {
        outlined init with copy of ServerBag.MLS(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of MLS.KeyUpdatePolicy(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO16KeyUpdateTrackerCGMd, &_ss18_DictionaryStorageCySS15SecureMessaging3MLSO16KeyUpdateTrackerCGMR);
}