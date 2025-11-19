uint64_t SiriEnvironmentStorage.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void specialized RangeReplaceableCollection<>.removeLast()()
{
  if (*(*v0 + 16))
  {
    specialized Array._customRemoveLast()();
    if (!v1)
    {
      specialized Array.remove(at:)(*(*v0 + 16) - 1);
    }
  }

  else
  {
    __break(1u);
  }
}

void specialized Array._customRemoveLast()()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = v8;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = (v1 + 24 * v2);
    v5 = v4[1];
    v6 = v4[2];
    v7 = v4[3];
    *(v1 + 16) = v3;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t storeEnumTagSinglePayload for Transformer(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for Transformer(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return OUTLINED_FUNCTION_10_3();
}

uint64_t partial apply for closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  OUTLINED_FUNCTION_5_4();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = closure #1 in withTimeout<A>(seconds:operation:);

  return closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(a1, v5, v7, v6);
}

uint64_t static ResponseMode.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

id CurrentProcess.init(storage:)()
{
  *&v0[OBJC_IVAR___SUCurrentProcess_mock] = 0;
  v1 = OBJC_IVAR___SUCurrentProcess__idleTracker;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA11IdleTrackerCSgGMd, &_s13SiriUtilities17MockablePublishedCyAA11IdleTrackerCSgGMR);
  swift_allocObject();
  *&v0[v1] = specialized MockablePublished.init(wrappedValue:)(0);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CurrentProcess();
  v2 = objc_msgSendSuper2(&v4, sel_init);

  return v2;
}

_OWORD *specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    outlined destroy of Any?(a1, &_sypSgMd, &_sypSgMR);
    v8 = *v2;
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v14 = *(*v3 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySOypGMd, &_ss17_NativeDictionaryVySOypGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v13, v14);
      outlined init with take of Any((*(v16 + 56) + 32 * v11), v17);
      _NativeDictionary._delete(at:)();
      *v3 = v16;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return outlined destroy of Any?(v17, &_sypSgMd, &_sypSgMR);
  }

  return result;
}

uint64_t static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return OUTLINED_FUNCTION_10_3();
}

uint64_t closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:), 0, 0);
}

uint64_t ExecutionLocation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_5_1();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_5_1();
    v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ObjectAssociation.subscript.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 80);
  v6 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_1();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v25 - v13;
  OUTLINED_FUNCTION_0_1();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v25 - v21;
  (*(v8 + 16))(v14, a1, v6);
  if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
  {
    v23 = *(v8 + 8);
    v23(v14, v6);
    ObjectAssociation.clear(for:)(a2);
    swift_unknownObjectRelease();
    return (v23)(a1, v6);
  }

  else
  {
    (*(v16 + 32))(v22, v14, v5);
    ObjectAssociation.store(value:for:)();
    swift_unknownObjectRelease();
    (*(v8 + 8))(a1, v6);
    return (*(v16 + 8))(v22, v5);
  }
}

uint64_t SiriEnvironmentLocating<>.siriEnvironment.setter(uint64_t a1)
{
  if (one-time initialization token for cache != -1)
  {
    OUTLINED_FUNCTION_0_31();
  }

  v5 = a1;
  v3 = *(*static ProcessWideEnvironment.cache + 152);

  swift_unknownObjectRetain();
  v3(&v5, v1);
}

uint64_t ObjectAssociation.store(value:for:)()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_2_7();
  return v3();
}

uint64_t MockablePublished.init(wrappedValue:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  OUTLINED_FUNCTION_11_13();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - v10;
  v13 = *(v5 + 16);
  v13((v1 + *(v12 + 88)), a1, v3);
  v13(v11, a1, v3);
  MockablePublished.Publisher.init(_:)(v11, v3, &v18);
  (*(v5 + 8))(a1, v3);
  OUTLINED_FUNCTION_7();
  *(v1 + *(v14 + 96)) = v15;
  return v1;
}

uint64_t MockablePublished.Publisher.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CurrentValueSubject();
  (*(v6 + 16))(v9, a1, a2);
  v10 = CurrentValueSubject.__allocating_init(_:)();
  result = (*(v6 + 8))(a1, a2);
  *a3 = v10;
  return result;
}

uint64_t SiriEnvironment.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  [v7 lock];
  v13[3] = a3;
  v13[0] = a1;
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 160);
  swift_unknownObjectRetain();
  v10 = v9(v12);
  specialized Dictionary.subscript.setter(v13, a2);
  v10(v12, 0);
  [v7 unlock];
  return swift_unknownObjectRelease();
}

uint64_t SiriEnvironment.networkAvailability.getter()
{
  v0 = type metadata accessor for NetworkAvailability();
  OUTLINED_FUNCTION_7();
  v7 = *(v1 + 208);
  OUTLINED_FUNCTION_1_4();
  v5 = lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(v2, v3, v4);

  return v7(v0, v0, v5);
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InteractionType@<X0>(uint64_t *a1@<X8>)
{
  result = InteractionType.aceInteractionType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL CurrentDevice.isHomePod.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 1;
}

BOOL CurrentDevice.isWatch.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 6;
}

BOOL CurrentDevice.isMac.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 2;
}

BOOL CurrentDevice.isAppleTV.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 7;
}

uint64_t static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for $environment != -1)
  {
    OUTLINED_FUNCTION_0_29();
    a1 = swift_once();
  }

  MEMORY[0x1EEE9AC00](a1, a2);

  TaskLocal.withValue<A>(_:operation:file:line:)();
}

void closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(uint64_t a1, void (*a2)(void))
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.logger);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = v10;
    *v6 = 136315138;
    v7 = ObjectIdentifier.debugDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v11);

    *(v6 + 4) = v9;
    _os_log_impl(&dword_1DD1FF000, v4, v5, "SiriEnvironment.forCurrentTask <- %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12AA0F0](v10, -1, -1);
    MEMORY[0x1E12AA0F0](v6, -1, -1);
  }

  a2();
  $defer #1 <A>() in closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)();
}

BOOL CurrentDevice.isPhone.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 5;
}

void partial apply for closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  closure #1 in static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(*(v0 + 24), *(v0 + 32));
}

BOOL CurrentDevice.isPad.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 3;
}

uint64_t PluginCapabilityCatalog.getPackages(capability:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  v3 = v2 + 176;
  v4 = (*(v2 + 176))();
  v7 = v3 - 32;
  v5 = *(v3 - 32);
  v6 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_40_1();
  v9 = type metadata accessor for Array();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  MEMORY[0x1E12A8B50](&v12, a1, v4, AssociatedTypeWitness, v9, AssociatedConformanceWitness);

  result = v12;
  if (!v12)
  {
    return static Array._allocateUninitialized(_:)();
  }

  return result;
}

BOOL CurrentDevice.isReality.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 256))(&var1);
  return var1 == 8;
}

uint64_t PluginCapabilityCatalog.capabilityCache.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t ExecutionLocation.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t CurrentDevice.isCarDNDMode.getter()
{
  OUTLINED_FUNCTION_7();
  (*(v0 + 896))(&v2);
  return (v2 >> 1) & 1;
}

uint64_t Transformer.init(transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = a4;
  a5[2] = partial apply for closure #1 in Transformer.init(transform:);
  a5[3] = result;
  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void CurrentDevice.isTextToSpeechEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_32();
  a22 = v24;
  a23 = v25;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17();
  v27 = *(v23 + 40);
  OUTLINED_FUNCTION_7();
  v29 = *(v28 + 184);

  v31 = v29(v30);
  if (v31 && (OUTLINED_FUNCTION_3(v31), (*(v32 + 144))(&a15, KeyPath), , a15 != 2))
  {
  }

  else
  {
    OUTLINED_FUNCTION_40();
    (*(v33 + 104))(&a15);
  }

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1DD2142F4(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = (*(v3 + 304))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_1DD214340(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_7();
  return (*(v4 + 312))();
}

void CurrentDevice.isLockedWithPasscode.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_32();
  a22 = v24;
  a23 = v25;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17();
  v27 = *(v23 + 48);
  OUTLINED_FUNCTION_7();
  v29 = *(v28 + 184);

  v31 = v29(v30);
  if (v31 && (OUTLINED_FUNCTION_3(v31), (*(v32 + 144))(&a15, KeyPath), , a15 != 2))
  {
  }

  else
  {
    OUTLINED_FUNCTION_40();
    (*(v33 + 104))(&a15);
  }

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1DD2144C0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = (*(v3 + 352))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_1DD21450C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_7();
  return (*(v4 + 360))();
}

void CurrentDevice.isVoiceTriggerEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_32();
  a22 = v24;
  a23 = v25;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17();
  v27 = *(v23 + 80);
  OUTLINED_FUNCTION_7();
  v29 = *(v28 + 184);

  v31 = v29(v30);
  if (v31 && (OUTLINED_FUNCTION_3(v31), (*(v32 + 144))(&a15, KeyPath), , a15 != 2))
  {
  }

  else
  {
    OUTLINED_FUNCTION_40();
    (*(v33 + 104))(&a15);
  }

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1DD21468C(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = (*(v3 + 544))(v2);
  *v1 = result & 1;
  return result;
}

uint64_t sub_1DD2146D8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_7();
  return (*(v4 + 552))();
}

uint64_t CurrentDevice.deviceRegionCode.getter()
{
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_9_0();
  v2 = *(v0 + 104);
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 184);

  v6 = v4(v5);
  if (v6 && (OUTLINED_FUNCTION_3(v6), (*(v7 + 144))(v11, KeyPath), , v11[1] != 1))
  {
    v9 = v11[0];
  }

  else
  {
    OUTLINED_FUNCTION_40();
    (*(v8 + 104))(v11);

    return v11[0];
  }

  return v9;
}

uint64_t sub_1DD214890(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = (*(v3 + 688))(v2);
  *v1 = result;
  v1[1] = v5;
  return result;
}

_BYTE *storeEnumTagSinglePayload for InputOrigin(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
        JUMPOUT(0x1DD214A5CLL);
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance InputOrigin(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return specialized == infix<A>(_:_:)();
}

uint64_t initializeWithCopy for Transformer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

uint64_t closure #1 in ObjectAssociation.flush()(uint64_t a1)
{
  v2 = *(*a1 + 80);
  type metadata accessor for ObjectEntry();
  v3 = type metadata accessor for Optional();
  v16 = *(v3 - 8);
  v4 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v15 - v6;
  SiriEnvironmentStorage.storage.getter();

  v17 = v8;
  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  v9 = Sequence.filter(_:)();
  v10 = *(v9 + 16);
  if (v10)
  {
    v15[1] = v1;
    v11 = (v9 + 32);
    swift_beginAccess();
    type metadata accessor for Dictionary();
    v12 = (v16 + 8);
    do
    {
      v13 = *v11++;
      v18 = v13;
      Dictionary.removeValue(forKey:)();
      (*v12)(v7, v3);
      --v10;
    }

    while (v10);
    swift_endAccess();
  }
}

uint64_t static SiriEnvironment.withTaskLocalEnvironment<A, B>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (*(a6 + 8))(a4, a6);
  static SiriEnvironment.withTaskLocalEnvironment<A>(_:_:)(v7, a2);
}

uint64_t ObjectAssociation.clearAll()()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_2_7();
  return v3();
}

Swift::Void __swiftcall flushProcessWideSiriEnvironmentCache()()
{
  if (one-time initialization token for cache != -1)
  {
    OUTLINED_FUNCTION_0_31();
  }

  (*(*static ProcessWideEnvironment.cache + 176))();
}

uint64_t closure #1 in closure #1 in ObjectAssociation.flush()(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = type metadata accessor for ObjectEntry();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  v11 = *a1;
  v12 = SiriEnvironmentStorage.storage.getter();
  v16 = v11;
  MEMORY[0x1E12A8B50](&v16, v12, MEMORY[0x1E69E5FE0], v4, MEMORY[0x1E69E5FE8]);

  if (__swift_getEnumTagSinglePayload(v10, 1, v4))
  {
    (*(v6 + 8))(v10, v5);
    return 1;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  (*(v6 + 8))(v10, v5);
  if (!Strong)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t TypeIdentifier.init(for:)@<X0>(void *a1@<X8>)
{
  TypeInformation.init(for:)(v5);
  v3 = v6;
  v2 = v7;

  result = outlined destroy of TypeInformation(v5);
  *a1 = v3;
  a1[1] = v2;
  return result;
}

uint64_t TypeInformation.init(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = _mangledTypeName(_:)();
  if (v3)
  {
    result = _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5(v2, v3, v17);
    v5 = v17[1];
    *a1 = v17[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v17[2];
    *(a1 + 48) = v18;
  }

  else
  {
    _StringGuts.grow(_:)(39);

    *&v17[0] = 0xD000000000000025;
    *(&v17[0] + 1) = 0x80000001DD26B710;
    v6 = _typeName(_:qualified:)();
    MEMORY[0x1E12A8C40](v6);

    v7 = v17[0];
    v8 = one-time initialization token for logger;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315650;
      v14 = StaticString.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v19);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2048;
      *(v12 + 14) = 38;
      *(v12 + 22) = 2080;
      *(v12 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, *(&v7 + 1), &v19);
      _os_log_impl(&dword_1DD1FF000, v10, v11, "FatalError at %s:%lu - %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12AA0F0](v13, -1, -1);
      MEMORY[0x1E12AA0F0](v12, -1, -1);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = OUTLINED_FUNCTION_26_0();
  v8 = v7;

  v9 = OUTLINED_FUNCTION_26_0();
  v11 = v10;
  v12._countAndFlagsBits = 26451;
  v12._object = 0xE200000000000000;
  if (String.hasSuffix(_:)(v12))
  {
    specialized BidirectionalCollection.dropLast(_:)(2);
    lazy protocol witness table accessor for type Substring and conformance Substring();
    result = String.init<A>(_:)();
    v15 = 0;
    v16 = 1;
  }

  else
  {
    v17._countAndFlagsBits = 7954771;
    v17._object = 0xE300000000000000;
    if (String.hasPrefix(_:)(v17) && (v18._countAndFlagsBits = 71, v18._object = 0xE100000000000000, String.hasSuffix(_:)(v18)))
    {
      v19 = specialized Collection.dropFirst(_:)(3uLL, a1, a2);
      v15 = 1;
      specialized Collection.dropLast(_:)(1, v19, v20);
      lazy protocol witness table accessor for type Substring and conformance Substring();
      result = String.init<A>(_:)();
      v16 = 0;
    }

    else
    {

      v16 = 0;
      v15 = 0;
      result = v9;
      v14 = v11;
    }
  }

  *a3 = v16;
  *(a3 + 1) = v15;
  *(a3 + 8) = result;
  *(a3 + 16) = v14;
  *(a3 + 24) = v9;
  *(a3 + 32) = v11;
  *(a3 + 40) = v6;
  *(a3 + 48) = v8;
  return result;
}

uint64_t destroy for TypeInformation(void *a1)
{
  v2 = a1[2];

  v3 = a1[4];

  v4 = a1[6];
}

uint64_t TypeIdentifier.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t assignWithTake for ObjectEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_unknownObjectWeakTakeAssign();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 40))((*(v7 + 80) + 8 + v6) & ~*(v7 + 80), (*(v7 + 80) + 8 + a2) & ~*(v7 + 80));
  return a1;
}

SiriUtilities::AudioSource_optional __swiftcall AudioSource.init(aceValue:)(SiriUtilities::AudioSource_optional aceValue)
{
  v2 = v1;
  if (aceValue.value.aceValue._object)
  {
    object = aceValue.value.aceValue._object;
    countAndFlagsBits = aceValue.value.aceValue._countAndFlagsBits;
    if (one-time initialization token for knownValues != -1)
    {
      swift_once();
    }

    aceValue.value.aceValue._countAndFlagsBits = specialized Set.contains(_:)(countAndFlagsBits, object, static AudioSource.knownValues);
    if (aceValue.value.aceValue._countAndFlagsBits)
    {
      *v2 = countAndFlagsBits;
      v2[1] = object;
      return aceValue;
    }
  }

  *v2 = 0;
  v2[1] = 0;
  return aceValue;
}

SiriUtilities::AudioDestination_optional __swiftcall AudioDestination.init(aceValue:)(SiriUtilities::AudioDestination_optional aceValue)
{
  v2 = v1;
  if (aceValue.value.aceValue._object)
  {
    object = aceValue.value.aceValue._object;
    countAndFlagsBits = aceValue.value.aceValue._countAndFlagsBits;
    if (one-time initialization token for knownValues != -1)
    {
      swift_once();
    }

    aceValue.value.aceValue._countAndFlagsBits = specialized Set.contains(_:)(countAndFlagsBits, object, static AudioDestination.knownValues);
    if (aceValue.value.aceValue._countAndFlagsBits)
    {
      *v2 = countAndFlagsBits;
      v2[1] = object;
      return aceValue;
    }
  }

  *v2 = 0;
  v2[1] = 0;
  return aceValue;
}

uint64_t sub_1DD215C2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1DD215C7C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1DD215CF0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t _s13SiriUtilities19NetworkAvailabilityC25AirplaneModeUpdateHandler33_9ADE7AA6468DA8D373BFE081D638276FLLCAFycfC_0()
{
  OUTLINED_FUNCTION_35();
  v0 = swift_allocObject();
  swift_weakInit();
  return v0;
}

uint64_t _s13SiriUtilities19NetworkAvailabilityC25AirplaneModeUpdateHandler33_9ADE7AA6468DA8D373BFE081D638276FLLCfD_0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_35();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DD215DAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SiriEnvironment.networkAvailability.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DD215DDC(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = (*(v3 + 176))(v2);
  *v1 = result;
  return result;
}

uint64_t sub_1DD2160A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _s13SiriUtilities24TransformationCapabilityV0cD4TypeO15TypedCodingKeys33_A05F0227F7A7562072BFE465F348A638LLOs0G3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>)
{
  result = _s13SiriUtilities24TransformationCapabilityV0cD4TypeO15TypedCodingKeys33_A05F0227F7A7562072BFE465F348A638LLO11stringValueAHSgSS_tcfC_0();
  *a1 = result & 1;
  return result;
}

BOOL _ss9OptionSetPs7ElementQzRszrlE6insertySb8inserted_x17memberAfterInserttxF13SiriUtilities18DeviceRestrictionsV_TB5_0(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1DD21633C(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_7();
  return (*(v2 + 128))();
}

__n128 sub_1DD216384(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1DD216398(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_7();
  return (*(v2 + 176))();
}

void *_s13SiriUtilities18MergedPluginFinderVwcp_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *_s13SiriUtilities20FallbackPluginFinderVwca_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *_s13SiriUtilities20FallbackPluginFinderVwta_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1DD2164DC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_13_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DD216510()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_12_4();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t sub_1DD216554()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DD2165B0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SiriEnvironment.currentDevice.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DD2165E0(uint64_t **a1)
{
  v2 = OUTLINED_FUNCTION_4_2(a1);
  result = (*(v3 + 184))(v2);
  *v1 = result;
  return result;
}

void _ss9OptionSetPs7ElementQzRszrlE6removeyxSgxF13SiriUtilities18DeviceRestrictionsV_TB5_0(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  if ((*v2 & a2) != 0)
  {
    *v2 &= ~a2;
  }

  OUTLINED_FUNCTION_1_11(a1);
}

uint64_t sub_1DD21672C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_7();
  result = (*(v4 + 144))();
  *a2 = result;
  return result;
}

uint64_t _s13SiriUtilities0A11EnvironmentC20InitializingProvider33_20CF7F1B525A92BC26D56D0E773ECAB3LLVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t sub_1DD216864@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SiriEnvironment.currentProcess.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DD2168A4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v1 = v0[8];

  v2 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1DD2168EC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1DD216A00(void *a1@<X8>, void *a2@<X0>)
{
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_2(a1);
  }
}

double sub_1DD216A10@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

float sub_1DD216A20@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  result = *a1;
  *a2 = result;
  return result;
}

_DWORD *sub_1DD216A38@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if ((*result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_1DD216A84(unsigned int *a1)
{
  OUTLINED_FUNCTION_63(a1);
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DD216AB0(uint64_t a1)
{
  OUTLINED_FUNCTION_62(a1);
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DD216ADC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD216B0C@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD216B3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD216B70(uint64_t a1)
{
  OUTLINED_FUNCTION_62(a1);
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DD216B9C(unsigned int *a1)
{
  OUTLINED_FUNCTION_63(a1);
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *v1 = result;
  }

  return result;
}

uint64_t sub_1DD216BC8@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD216BF8@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = *a1;
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD216C28@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD216C5C(unsigned int *a1)
{
  OUTLINED_FUNCTION_63(a1);
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DD216C88(uint64_t a1)
{
  OUTLINED_FUNCTION_62(a1);
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DD216CB4(unsigned int *a1)
{
  OUTLINED_FUNCTION_63(a1);
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DD216CE0(uint64_t a1)
{
  OUTLINED_FUNCTION_62(a1);
  result = specialized closure #1 in Transformer.init(transform:)();
  if (!v2)
  {
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1DD216D0C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD216D44()
{
  v1 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_5_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DD216DFC()
{
  MEMORY[0x1E12AA1D0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DD216E34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD216EBC()
{
  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1DD216EF4()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DD216F2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_7();
  result = (*(v4 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_1DD216F78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_7();
  result = (*(v4 + 176))();
  *a2 = result;
  return result;
}

__n128 sub_1DD216FD0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1DD21703C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1DD217094(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_7();
  return (*(v2 + 104))();
}

uint64_t sub_1DD2170E8(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_7();
  return (*(v2 + 128))();
}

__n128 sub_1DD217144(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1DD2171BC()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DD2171F4()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

void *_s13SiriUtilities7ReducerVwcp_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_1DD2172B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 96))();
  *a2 = result;
  return result;
}

uint64_t sub_1DD217340@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD21737C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1DD2173C8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1DD2173D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = SiriEnvironment.coreTelephonyService.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1DD217404@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  OUTLINED_FUNCTION_7();
  result = (*(v4 + 136))();
  *a2 = result;
  return result;
}

uint64_t outlined init with take of Transforming(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

SiriUtilities::InputOrigin_optional __swiftcall InputOrigin.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 18;
  if (v3 < 0x12)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t default argument 1 of TransformationRegistry.transform<A>(_:to:lengthLimit:tryAllPaths:)@<X0>(void *a1@<X8>)
{
  TypeInformation.init(for:)(v5);
  v3 = v6;
  v2 = v7;

  result = outlined destroy of TypeInformation(v5);
  *a1 = v3;
  a1[1] = v2;
  return result;
}

uint64_t default argument 3 of IdleTracker.init(lock:name:queue:timeout:timeoutAction:)@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultTimeout != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = __swift_project_value_buffer(v2, static IdleTracker.defaultTimeout);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t lazy protocol witness table accessor for type InputOrigin and conformance InputOrigin()
{
  result = lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin;
  if (!lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InputOrigin and conformance InputOrigin);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _opaque_pthread_t(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 0x2000))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _opaque_pthread_t(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8184) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 536) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 8168) = 0u;
    *(result + 8152) = 0u;
    *(result + 8136) = 0u;
    *(result + 8120) = 0u;
    *(result + 8104) = 0u;
    *(result + 8088) = 0u;
    *(result + 8072) = 0u;
    *(result + 8056) = 0u;
    *(result + 8040) = 0u;
    *(result + 8024) = 0u;
    *(result + 8008) = 0u;
    *(result + 7992) = 0u;
    *(result + 7976) = 0u;
    *(result + 7960) = 0u;
    *(result + 7944) = 0u;
    *(result + 7928) = 0u;
    *(result + 7912) = 0u;
    *(result + 7896) = 0u;
    *(result + 7880) = 0u;
    *(result + 7864) = 0u;
    *(result + 7848) = 0u;
    *(result + 7832) = 0u;
    *(result + 7816) = 0u;
    *(result + 7800) = 0u;
    *(result + 7784) = 0u;
    *(result + 7768) = 0u;
    *(result + 7752) = 0u;
    *(result + 7736) = 0u;
    *(result + 7720) = 0u;
    *(result + 7704) = 0u;
    *(result + 7688) = 0u;
    *(result + 7672) = 0u;
    *(result + 7656) = 0u;
    *(result + 7640) = 0u;
    *(result + 7624) = 0u;
    *(result + 7608) = 0u;
    *(result + 7592) = 0u;
    *(result + 7576) = 0u;
    *(result + 7560) = 0u;
    *(result + 7544) = 0u;
    *(result + 7528) = 0u;
    *(result + 7512) = 0u;
    *(result + 7496) = 0u;
    *(result + 7480) = 0u;
    *(result + 7464) = 0u;
    *(result + 7448) = 0u;
    *(result + 7432) = 0u;
    *(result + 7416) = 0u;
    *(result + 7400) = 0u;
    *(result + 7384) = 0u;
    *(result + 7368) = 0u;
    *(result + 7352) = 0u;
    *(result + 7336) = 0u;
    *(result + 7320) = 0u;
    *(result + 7304) = 0u;
    *(result + 7288) = 0u;
    *(result + 7272) = 0u;
    *(result + 7256) = 0u;
    *(result + 7240) = 0u;
    *(result + 7224) = 0u;
    *(result + 7208) = 0u;
    *(result + 7192) = 0u;
    *(result + 7176) = 0u;
    *(result + 7160) = 0u;
    *(result + 7144) = 0u;
    *(result + 7128) = 0u;
    *(result + 7112) = 0u;
    *(result + 7096) = 0u;
    *(result + 7080) = 0u;
    *(result + 7064) = 0u;
    *(result + 7048) = 0u;
    *(result + 7032) = 0u;
    *(result + 7016) = 0u;
    *(result + 7000) = 0u;
    *(result + 6984) = 0u;
    *(result + 6968) = 0u;
    *(result + 6952) = 0u;
    *(result + 6936) = 0u;
    *(result + 6920) = 0u;
    *(result + 6904) = 0u;
    *(result + 6888) = 0u;
    *(result + 6872) = 0u;
    *(result + 6856) = 0u;
    *(result + 6840) = 0u;
    *(result + 6824) = 0u;
    *(result + 6808) = 0u;
    *(result + 6792) = 0u;
    *(result + 6776) = 0u;
    *(result + 6760) = 0u;
    *(result + 6744) = 0u;
    *(result + 6728) = 0u;
    *(result + 6712) = 0u;
    *(result + 6696) = 0u;
    *(result + 6680) = 0u;
    *(result + 6664) = 0u;
    *(result + 6648) = 0u;
    *(result + 6632) = 0u;
    *(result + 6616) = 0u;
    *(result + 6600) = 0u;
    *(result + 6584) = 0u;
    *(result + 6568) = 0u;
    *(result + 6552) = 0u;
    *(result + 6536) = 0u;
    *(result + 6520) = 0u;
    *(result + 6504) = 0u;
    *(result + 6488) = 0u;
    *(result + 6472) = 0u;
    *(result + 6456) = 0u;
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
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

  *(result + 0x2000) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for _opaque_pthread_mutex_t(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _opaque_pthread_mutex_t(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CTError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CTError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSDataWritingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance NSDataWritingOptions@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for __darwin_pthread_handler_rec(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for __darwin_pthread_handler_rec(uint64_t result, unsigned int a2, unsigned int a3)
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

void type metadata accessor for _opaque_pthread_t(uint64_t a1, unint64_t *a2)
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

uint64_t NSBundle.packageId.getter()
{
  result = outlined bridged method (pb) of @objc NSBundle.bundleIdentifier.getter(v0);
  if (!v2)
  {
    return 0x3E6C696E3CLL;
  }

  return result;
}

uint64_t NSBundle.configData.getter()
{
  v1 = [v0 bundlePath];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

unint64_t static NSBundle.packageFrom(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unint64_t *a3@<X8>)
{
  v6 = type metadata accessor for NSBundle();

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  result = NSBundle.__allocating_init(path:)(v7);
  if (result)
  {
    v9 = &protocol witness table for NSBundle;
  }

  else
  {
    v6 = 0;
    v9 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  *a3 = result;
  a3[3] = v6;
  a3[4] = v9;
  return result;
}

NSBundle_optional __swiftcall NSBundle.__allocating_init(path:)(Swift::String path)
{
  object = path._object;
  countAndFlagsBits = path._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x1E12A8BC0](countAndFlagsBits, object);

  v5 = [v3 initWithPath_];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

uint64_t NSBundle.loadPlugin()()
{
  v2 = v0;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pluginLoaderLog != -1)
  {
    swift_once();
  }

  v9 = static Logger.pluginLoaderLog;
  if (OS_os_log.signpostsEnabled.getter())
  {
    v10 = v9;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_0_4();
    closure #1 in NSBundle.loadPlugin()(v2, &v12);
    if (v1)
    {
      static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_0_4();
      return (*(v4 + 8))(v8, v3);
    }

    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_0_4();
    (*(v4 + 8))(v8, v3);
    return v12;
  }

  result = closure #1 in NSBundle.loadPlugin()(v2, &v12);
  if (!v1)
  {
    return v12;
  }

  return result;
}

uint64_t closure #1 in NSBundle.loadPlugin()@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 isLoaded] & 1) != 0 || (objc_msgSend(a1, sel_load))
  {
    if ([a1 principalClass])
    {
      ObjCClassMetadata = swift_getObjCClassMetadata();
      if (dynamic_cast_existential_1_conditional(ObjCClassMetadata))
      {
        v6 = v5;
        result = (*(v5 + 8))();
        *a2 = result;
        a2[1] = v6;
        return result;
      }

      if (one-time initialization token for loader != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      __swift_project_value_buffer(v27, static Logger.loader);
      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v37 = v32;
        *v31 = 136315138;
        v33 = NSBundle.packageId.getter();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v37);

        *(v31 + 4) = v35;
        _os_log_impl(&dword_1DD1FF000, v29, v30, "Bundle %s has unexpected principal class; cannot be loaded as a plugin", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v32);
        MEMORY[0x1E12AA0F0](v32, -1, -1);
        MEMORY[0x1E12AA0F0](v31, -1, -1);
      }

      v17 = 2;
    }

    else
    {
      if (one-time initialization token for loader != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static Logger.loader);
      v9 = a1;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v37 = v13;
        *v12 = 136315138;
        v14 = NSBundle.packageId.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v37);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_1DD1FF000, v10, v11, "Bundle %s has no principalClass; cannot be loaded as a plugin", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x1E12AA0F0](v13, -1, -1);
        MEMORY[0x1E12AA0F0](v12, -1, -1);
      }

      v17 = 1;
    }
  }

  else
  {
    if (one-time initialization token for loader != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.loader);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v37 = v23;
      *v22 = 136315138;
      v24 = NSBundle.packageId.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v37);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1DD1FF000, v20, v21, "Bundle %s failed to load as a plugin", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1E12AA0F0](v23, -1, -1);
      MEMORY[0x1E12AA0F0](v22, -1, -1);
    }

    v17 = 0;
  }

  lazy protocol witness table accessor for type PluginBundleError and conformance PluginBundleError();
  swift_allocError();
  *v36 = v17;
  return swift_willThrow();
}

Swift::Int PluginBundleError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](v1);
  return Hasher._finalize()();
}

uint64_t outlined bridged method (pb) of @objc NSBundle.bundleIdentifier.getter(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t type metadata accessor for NSBundle()
{
  result = lazy cache variable for type metadata for NSBundle;
  if (!lazy cache variable for type metadata for NSBundle)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSBundle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PluginBundleError and conformance PluginBundleError()
{
  result = lazy protocol witness table cache variable for type PluginBundleError and conformance PluginBundleError;
  if (!lazy protocol witness table cache variable for type PluginBundleError and conformance PluginBundleError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginBundleError and conformance PluginBundleError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PluginBundleError and conformance PluginBundleError;
  if (!lazy protocol witness table cache variable for type PluginBundleError and conformance PluginBundleError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PluginBundleError and conformance PluginBundleError);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PluginBundleError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x656974696C697455;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6F4C6E6967756C50;
    }

    else
    {
      v5 = 0x6D6E6F7269766E45;
    }

    if (v4 == 1)
    {
      v6 = 0xEC00000072656461;
    }

    else
    {
      v6 = 0xEB00000000746E65;
    }
  }

  else
  {
    v5 = 0x656974696C697455;
    v6 = 0xE900000000000073;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6F4C6E6967756C50;
    }

    else
    {
      v3 = 0x6D6E6F7269766E45;
    }

    if (a2 == 1)
    {
      v2 = 0xEC00000072656461;
    }

    else
    {
      v2 = 0xEB00000000746E65;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

{
  v2 = 0x737961776C61;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x726576656ELL;
    }

    else
    {
      v4 = 0x6552657275636573;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xEE00737473657571;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x737961776C61;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x726576656ELL;
    }

    else
    {
      v2 = 0x6552657275636573;
    }

    if (a2 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEE00737473657571;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4();
  }

  return v8 & 1;
}

{
  v2 = 1701667150;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701667150;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x6E6F6973726556;
      break;
    case 2:
      v5 = 0x7079547475706E49;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v5 = 0x795474757074754FLL;
      v3 = 0xEA00000000006570;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x6E6F6973726556;
      break;
    case 2:
      v2 = 0x7079547475706E49;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v2 = 0x795474757074754FLL;
      v6 = 0xEA00000000006570;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4();
  }

  return v8 & 1;
}

{
  v2 = 1701601613;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x656C616D6546;
    }

    else
    {
      v4 = 0x6E776F6E6B6E55;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701601613;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656C616D6546;
    }

    else
    {
      v2 = 0x6E776F6E6B6E55;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0x80000001DD26A2A0;
  }

  if (a2)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v5 = 0x6E776F6E6B6E75;
  }

  if (a2)
  {
    v6 = 0x80000001DD26A2A0;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4();
  }

  return v8 & 1;
}

{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7244676F6C616944;
  }

  else
  {
    v3 = 0x4479616C70736944;
  }

  if (v2)
  {
    v4 = 0xED00006E65766972;
  }

  else
  {
    v4 = 0xEC0000006E657669;
  }

  if (a2)
  {
    v5 = 0x7244676F6C616944;
  }

  else
  {
    v5 = 0x4479616C70736944;
  }

  if (a2)
  {
    v6 = 0xEC0000006E657669;
  }

  else
  {
    v6 = 0xED00006E65766972;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_4();
  }

  return v8 & 1;
}

SiriUtilities::DeviceRestrictions __swiftcall DeviceRestrictions.init(aceValue:)(SiriUtilities::DeviceRestrictions aceValue)
{
  rawValue = aceValue.rawValue;
  v3 = v1;
  v4 = 0;
  v5 = 0;
  v6 = *(aceValue.rawValue + 16);
  for (i = (aceValue.rawValue + 40); ; i += 2)
  {
    if (v6 == v4)
    {

      *v3 = v5;
      return aceValue;
    }

    if (v4 >= *(rawValue + 16))
    {
      break;
    }

    ++v4;
    v9 = *(i - 1);
    v8 = *i;

    v10._countAndFlagsBits = v9;
    v10._object = v8;
    aceValue.rawValue = DeviceRestrictions.init(aceValue:)(v10).rawValue;
    v5 |= v11;
  }

  __break(1u);
  return aceValue;
}

SiriUtilities::DeviceRestrictions static DeviceRestrictions.from(aceRestrictions:)()
{

  return DeviceRestrictions.init(aceValue:)(v0);
}

void protocol witness for SetAlgebra.union(_:) in conformance DeviceRestrictions(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  _ss9OptionSetPsE5unionyxxF13SiriUtilities18DeviceRestrictionsV_TB5_0(a1);
}

void protocol witness for SetAlgebra.intersection(_:) in conformance DeviceRestrictions(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  _ss9OptionSetPsE12intersectionyxxF13SiriUtilities18DeviceRestrictionsV_TB5_0(a1);
}

SiriUtilities::DeviceRestrictions protocol witness for RawRepresentable.init(rawValue:) in conformance DeviceRestrictions@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = DeviceRestrictions.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DeviceRestrictions@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceRestrictions.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceRestrictions and conformance DeviceRestrictions()
{
  result = lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions;
  if (!lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions;
  if (!lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions;
  if (!lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions;
  if (!lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceRestrictions and conformance DeviceRestrictions);
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(__int128 *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[6];
  v42 = a2;
  v13 = a2[7];
  MEMORY[0x1E12A9750](v6);
  v49 = v8;
  v50 = v7;
  String.hash(into:)();
  v48 = v9;
  MEMORY[0x1E12A9750](v9);
  v46 = v11;
  v47 = v10;
  String.hash(into:)();
  v44 = v13;
  v45 = v12;
  String.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = v4 + 56;
  v16 = -1 << *(v4 + 32);
  v17 = v14 & ~v16;
  if ((*(v4 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v40 = v4;
    v19 = *(v4 + 48);
    while (1)
    {
      v20 = (v19 + (v17 << 6));
      if (v6 == *v20)
      {
        v22 = v20[3];
        v21 = v20[4];
        v24 = v20[5];
        v23 = v20[6];
        v25 = v20[7];
        v26 = v20[1] == v50 && v20[2] == v49;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v22 == v48)
        {
          v27 = v21 == v47 && v24 == v46;
          if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v28 = v23 == v45 && v25 == v44;
            if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }
        }
      }

      v17 = (v17 + 1) & v18;
      if (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    outlined destroy of TransformationCapability(v42);
    v34 = (*(v40 + 48) + (v17 << 6));
    v35 = *v34;
    v36 = v34[1];
    v37 = v34[3];
    v52[2] = v34[2];
    v52[3] = v37;
    v52[0] = v35;
    v52[1] = v36;
    v38 = v34[1];
    *a1 = *v34;
    a1[1] = v38;
    v39 = v34[3];
    a1[2] = v34[2];
    a1[3] = v39;
    outlined init with copy of TransformationCapability(v52, v51);
    return 0;
  }

  else
  {
LABEL_21:
    v29 = *v41;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = *v41;
    outlined init with copy of TransformationCapability(v42, v52);
    specialized _NativeSet.insertNew(_:at:isUnique:)(v42, v17, isUniquelyReferenced_nonNull_native);
    *v41 = v51[0];
    v31 = *(v42 + 16);
    *a1 = *v42;
    a1[1] = v31;
    v32 = *(v42 + 48);
    a1[2] = *(v42 + 32);
    a1[3] = v32;
    return 1;
  }
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(unsigned __int8 *a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
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
      goto LABEL_28;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  v14 = *(a1 + 4);
  v15 = *(a1 + 5);
  v16 = *(a1 + 6);
  v17 = *(a1 + 7);
  MEMORY[0x1E12A9750](v10);
  v46 = v12;
  v47 = v11;
  String.hash(into:)();
  v45 = v13;
  MEMORY[0x1E12A9750](v13);
  v43 = v15;
  v44 = v14;
  String.hash(into:)();
  v41 = v17;
  v42 = v16;
  String.hash(into:)();
  v18 = Hasher._finalize()();
  v19 = v8 + 56;
  v20 = -1 << *(v8 + 32);
  a2 = v18 & ~v20;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v8 + 48);
    do
    {
      v23 = (v22 + (a2 << 6));
      if (v10 == *v23)
      {
        v24 = v23[3];
        v25 = v23[4];
        v27 = v23[5];
        v26 = v23[6];
        v28 = v23[7];
        v29 = v23[1] == v47 && v23[2] == v46;
        if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v24 == v45)
        {
          v30 = v25 == v44 && v27 == v43;
          if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v31 = v26 == v42 && v28 == v41;
            if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_31;
            }
          }
        }
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v19 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v32 = *v39;
  *(*v39 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v33 = (*(v32 + 48) + (a2 << 6));
  v34 = *(a1 + 1);
  *v33 = *a1;
  v33[1] = v34;
  v35 = *(a1 + 3);
  v33[2] = *(a1 + 2);
  v33[3] = v35;
  v36 = *(v32 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (!v37)
  {
    *(v32 + 16) = v38;
    return;
  }

  __break(1u);
LABEL_31:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
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

BOOL static ExecutionLocation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  result = 1;
  if (!v2)
  {
    v3 = *a1;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && ((ExecutionLocation.isUnknown.getter() & 1) == 0 || (ExecutionLocation.isUnknown.getter() & 1) == 0))
    {
      return 0;
    }
  }

  return result;
}

uint64_t ExecutionLocation.isNone.getter()
{
  if (*v0 == 1701736302 && v0[1] == 0xE400000000000000)
  {
    return specialized == infix<A>(_:_:)();
  }

  else
  {
    return OUTLINED_FUNCTION_0_6();
  }
}

uint64_t ExecutionLocation.isServer.getter()
{
  if (*v0 == 0x726576726573 && v0[1] == 0xE600000000000000)
  {
    return specialized == infix<A>(_:_:)();
  }

  else
  {
    return OUTLINED_FUNCTION_0_6();
  }
}

uint64_t ExecutionLocation.isDevice.getter()
{
  if (*v0 == 0x656369766564 && v0[1] == 0xE600000000000000)
  {
    return specialized == infix<A>(_:_:)();
  }

  else
  {
    return OUTLINED_FUNCTION_0_6();
  }
}

uint64_t ExecutionLocation.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t ExecutionLocation.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (ExecutionLocation.isUnknown.getter() & 1) == 0 || ((OUTLINED_FUNCTION_6_2(), v1 == v3) ? (v4 = v2 == 0xE700000000000000) : (v4 = 0), v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
  }

  else
  {
    MEMORY[0x1E12A8C40](v1, v2);
    MEMORY[0x1E12A8C40](41, 0xE100000000000000);
    return 0x286E776F6E6B6E75;
  }

  return v1;
}

uint64_t ExecutionLocation.hash(into:)()
{
  v2 = *v0;
  v3 = v0[1];
  if ((ExecutionLocation.isUnknown.getter() & 1) == 0)
  {
  }

  String.hash(into:)();
}

Swift::Int ExecutionLocation.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  if (ExecutionLocation.isUnknown.getter())
  {
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExecutionLocation()
{
  v2 = *v0;
  v3 = v0[1];
  Hasher.init(_seed:)();
  ExecutionLocation.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ExecutionLocation and conformance ExecutionLocation()
{
  result = lazy protocol witness table cache variable for type ExecutionLocation and conformance ExecutionLocation;
  if (!lazy protocol witness table cache variable for type ExecutionLocation and conformance ExecutionLocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExecutionLocation and conformance ExecutionLocation);
  }

  return result;
}

void *assignWithCopy for ExecutionLocation(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

uint64_t TransformationChain.init(transformation:)(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DD265D10;
  outlined init with take of Transforming(a1, v2 + 32);
  return v2;
}

uint64_t TransformationChain.withAddedStep(_:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 8))(&v21, v4, v5);
  v7 = v21;
  v6 = v22;
  TransformationChain.outputType.getter(a2);
  if (v7 == v19 && v6 == v20)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      TransformationChain.outputType.getter(a2);
      v10 = v21;
      v11 = v22;
      v12 = a1[3];
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v12);
      (*(v13 + 8))(&v19, v12, v13);
      v14 = v19;
      v15 = v20;
      lazy protocol witness table accessor for type TransformationChainError and conformance TransformationChainError();
      swift_allocError();
      *v16 = v10;
      v16[1] = v11;
      v16[2] = v14;
      v16[3] = v15;
      return swift_willThrow();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12Transforming_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD265D10;
  outlined init with copy of Transforming(a1, inited + 32);
  v21 = a2;

  specialized Array.append<A>(contentsOf:)(inited);
  return v21;
}

uint64_t TransformationChain.outputType.getter(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result + 40 * v1;
    v3 = *(v2 + 24);
    __swift_project_boxed_opaque_existential_1((v2 - 8), *(v2 + 16));
    v4 = *(v3 + 16);
    v5 = OUTLINED_FUNCTION_2_2();
    return v6(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransformationChainError and conformance TransformationChainError()
{
  result = lazy protocol witness table cache variable for type TransformationChainError and conformance TransformationChainError;
  if (!lazy protocol witness table cache variable for type TransformationChainError and conformance TransformationChainError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationChainError and conformance TransformationChainError);
  }

  return result;
}

uint64_t outlined init with copy of Transforming(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *TransformationChain.inputType.getter(void *result)
{
  if (result[2])
  {
    v1 = result[8];
    __swift_project_boxed_opaque_existential_1(result + 4, result[7]);
    v2 = *(v1 + 8);
    v3 = OUTLINED_FUNCTION_2_2();
    return v4(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TransformationChain.typeErasedTransform(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = outlined init with copy of Any(a1, a3);
  v7 = *(a2 + 16);
  for (i = a2 + 32; v7; --v7)
  {
    outlined init with copy of Transforming(i, v12);
    v9 = v13;
    v10 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    (*(v10 + 24))(v11, a3, v9, v10);
    __swift_destroy_boxed_opaque_existential_0(a3);
    result = __swift_destroy_boxed_opaque_existential_0(v12);
    if (v3)
    {
      break;
    }

    result = outlined init with take of Any(v11, a3);
    i += 40;
  }

  return result;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_0_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_1();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

{
  v4 = OUTLINED_FUNCTION_0_7(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_1();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t destroy for TransformationChainError(uint64_t a1)
{
  v2 = *(a1 + 8);

  v3 = *(a1 + 24);
}

void *initializeWithCopy for TransformationChainError(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for TransformationChainError(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];

  a1[2] = a2[2];
  v5 = a2[3];
  v6 = a1[3];
  a1[3] = v5;

  return a1;
}

void *assignWithTake for TransformationChainError(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for TransformationChainError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformationChainError(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t key path setter for SiriEnvironmentStorage.storage : SiriEnvironmentStorage(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

uint64_t SiriEnvironmentStorage.storage.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void SiriEnvironmentStorage.subscript.getter(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a4;
  v98 = type metadata accessor for DecodingError();
  v95 = *(v98 - 8);
  v9 = *(v95 + 64);
  v11 = MEMORY[0x1EEE9AC00](v98, v10);
  v94 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v97 = &v88 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v88 - v18;
  v20 = *(a3 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v17, v22);
  v25 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = (*(*v4 + 88))(v23);
  if (*(v26 + 16) && (OUTLINED_FUNCTION_2_3(), v28 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, v27), (v29 & 1) != 0))
  {
    v92 = a1;
    v93 = a2;
    v30 = (*(v26 + 56) + 16 * v28);
    v31 = *v30;
    v32 = v30[1];
    v33 = OUTLINED_FUNCTION_7_1();
    outlined copy of Data._Representation(v33, v34);

    v35 = type metadata accessor for JSONDecoder();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (v5)
    {
      v96 = v31;
      v91 = v32;

      v100 = v5;
      v38 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v39 = v98;
      if (swift_dynamicCast())
      {

        v40 = v95;
        v41 = v97;
        (*(v95 + 32))(v97, v19, v39);
        v42 = v93;
        if (one-time initialization token for environment != -1)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.environment);
        v44 = v94;
        v90 = *(v40 + 16);
        v90(v94, v41, v39);

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v45, v46))
        {
          OUTLINED_FUNCTION_8_2();
          v47 = swift_slowAlloc();
          v88 = v45;
          v48 = v39;
          v49 = v40;
          v50 = v47;
          v89 = swift_slowAlloc();
          v99 = v89;
          *v50 = 136315650;
          *(v50 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v42, &v99);
          *(v50 + 12) = 2080;
          v51 = _typeName(_:qualified:)();
          LODWORD(v93) = v46;
          v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v99);

          *(v50 + 14) = v53;
          *(v50 + 22) = 2080;
          v54 = v44;
          v55 = LocalizedError.errorDescription.getter();
          if (v56)
          {
            v57 = v55;
          }

          else
          {
            v57 = 0;
          }

          if (v56)
          {
            v58 = v56;
          }

          else
          {
            v58 = 0xE000000000000000;
          }

          v59 = *(v49 + 8);
          v59(v54, v48);
          v39 = v48;
          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v99);

          *(v50 + 24) = v60;
          v61 = v88;
          _os_log_impl(&dword_1DD1FF000, v88, v93, "Unable to decode Data for key %s to type %s with error %s", v50, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1E12AA0F0]();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1E12AA0F0]();
        }

        else
        {

          v83 = v44;
          v59 = *(v40 + 8);
          v59(v83, v39);
        }

        type metadata accessor for SiriEnvironmentStorage.StorageError();
        OUTLINED_FUNCTION_1_2();
        lazy protocol witness table accessor for type SiriEnvironmentStorage.StorageError and conformance SiriEnvironmentStorage.StorageError(v84, v85);
        OUTLINED_FUNCTION_5_3();
        v90(v86, v97, v39);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        outlined consume of Data._Representation(v96, v91);
        v87 = OUTLINED_FUNCTION_7_1();
        (v59)(v87);
      }

      else
      {

        v72 = v93;
        if (one-time initialization token for environment != -1)
        {
          OUTLINED_FUNCTION_0_8();
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        __swift_project_value_buffer(v73, static Logger.environment);

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v74, v75))
        {
          v76 = swift_slowAlloc();
          OUTLINED_FUNCTION_8_2();
          v77 = swift_slowAlloc();
          v100 = v77;
          *v76 = 136315138;
          *(v76 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v72, &v100);
          _os_log_impl(&dword_1DD1FF000, v74, v75, "An unknown error occured while trying to retreive and decode the data for key %s from Environment Storage", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1E12AA0F0]();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1E12AA0F0]();
        }

        type metadata accessor for SiriEnvironmentStorage.StorageError();
        OUTLINED_FUNCTION_1_2();
        lazy protocol witness table accessor for type SiriEnvironmentStorage.StorageError and conformance SiriEnvironmentStorage.StorageError(v78, v79);
        OUTLINED_FUNCTION_5_3();
        *v80 = v5;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v81 = OUTLINED_FUNCTION_7_1();
        outlined consume of Data._Representation(v81, v82);
      }
    }

    else
    {
      v69 = OUTLINED_FUNCTION_7_1();
      outlined consume of Data._Representation(v69, v70);

      v71 = v96;
      (*(v20 + 32))(v96, v25, a3);
      __swift_storeEnumTagSinglePayload(v71, 0, 1, a3);
    }
  }

  else
  {

    if (one-time initialization token for environment != -1)
    {
      OUTLINED_FUNCTION_0_8();
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.environment);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v66 = swift_slowAlloc();
      v100 = v66;
      *v65 = 136315138;
      *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v100);
      _os_log_impl(&dword_1DD1FF000, v63, v64, "Data for key %s does not exist in Environment Storage", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1E12AA0F0]();
    }

    type metadata accessor for SiriEnvironmentStorage.StorageError();
    OUTLINED_FUNCTION_1_2();
    lazy protocol witness table accessor for type SiriEnvironmentStorage.StorageError and conformance SiriEnvironmentStorage.StorageError(v67, v68);
    OUTLINED_FUNCTION_5_3();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

void SiriEnvironmentStorage.updateStorage(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  if (one-time initialization token for environment == -1)
  {
    goto LABEL_2;
  }

LABEL_19:
  OUTLINED_FUNCTION_0_8();
  swift_once();
LABEL_2:
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.environment);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  v54 = v2;
  v56 = v4;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v8 = 136315394;
    v9 = Dictionary.Keys.description.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v58);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2080;
    v12 = Set.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v58);
    v2 = v54;

    *(v8 + 14) = v14;
    _os_log_impl(&dword_1DD1FF000, v6, v7, "Environment Storage updating. Adding keys %s and removing keys %s. ", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1E12AA0F0]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1E12AA0F0]();
  }

  v53 = *(*v2 + 88);
  v15 = v53();

  v17 = specialized Dictionary.merging(_:uniquingKeysWith:)(v16, v15);
  (*(*v2 + 96))(v17);
  v18 = v4 + 56;
  v19 = 1 << *(v4 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v4 + 56);
  v22 = (v19 + 63) >> 6;

  for (i = 0; v21; v4 = v56)
  {
LABEL_11:
    v25 = (*(v4 + 48) + ((i << 10) | (16 * __clz(__rbit64(v21)))));
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*v2 + 104);

    v29 = v28(v58);
    v31 = v30;
    v32 = *v30;
    OUTLINED_FUNCTION_2_3();
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27, v33);
    if (v35)
    {
      v36 = v34;
      v37 = *v31;
      v55 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *v31;
      v39 = *v31;
      *v31 = 0x8000000000000000;
      v40 = *(v39 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
      v41 = isUniquelyReferenced_nonNull_native;
      v42 = v40;
      v2 = v54;
      v29 = v55;
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v41, v42);
      v43 = *(*(v57 + 48) + 16 * v36 + 8);

      outlined consume of Data._Representation(*(*(v57 + 56) + 16 * v36), *(*(v57 + 56) + 16 * v36 + 8));
      _NativeDictionary._delete(at:)();
      v44 = *v31;
      *v31 = v57;
    }

    v21 &= v21 - 1;
    v29(v58, 0);
  }

  while (1)
  {
    v24 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v24);
    ++i;
    if (v21)
    {
      i = v24;
      goto LABEL_11;
    }
  }

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v48 = swift_slowAlloc();
    v58[0] = v48;
    *v47 = 136315138;
    v53();
    v49 = Dictionary.Keys.description.getter();
    v51 = v50;

    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v58);

    *(v47 + 4) = v52;
    _os_log_impl(&dword_1DD1FF000, v45, v46, "Enviroment Storage finished updating. Current keys in storage are %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1E12AA0F0]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1E12AA0F0]();
  }
}

uint64_t specialized Dictionary.merging(_:uniquingKeysWith:)(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t SiriEnvironmentStorage.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(void (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

uint64_t type metadata accessor for SiriEnvironmentStorage.StorageError()
{
  result = type metadata singleton initialization cache for SiriEnvironmentStorage.StorageError;
  if (!type metadata singleton initialization cache for SiriEnvironmentStorage.StorageError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
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

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  return a3(a1, a2, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1E12A9750](a3);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  OUTLINED_FUNCTION_6_3();
  type metadata accessor for CodingUserInfoKey();
  v1 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v1);
}

{
  OUTLINED_FUNCTION_10_0();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  MEMORY[0x1E12A9750](*v0);
  String.hash(into:)();
  MEMORY[0x1E12A9750](v3);
  String.hash(into:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v8);
}

{
  OUTLINED_FUNCTION_6_3();
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_3_1();
  lazy protocol witness table accessor for type SiriEnvironmentStorage.StorageError and conformance SiriEnvironmentStorage.StorageError(v1, v2);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v3);
}

{
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1E12A9750](*(v0 + 16));
  v1 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0, v1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = (v12 + 24 * v7);
      v14 = v13[2];
      v15 = *v13 == a1 && v13[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v24 = a1[2];
    v25 = a1[1];
    v22 = a1[4];
    v23 = a1[3];
    v20 = a1[6];
    v21 = a1[5];
    v19 = a1[7];
    v8 = *(v2 + 48);
    do
    {
      v9 = (v8 + (v5 << 6));
      if (v7 == *v9)
      {
        v10 = v9[3];
        v11 = v9[4];
        v12 = v9[5];
        v13 = v9[6];
        v14 = v9[7];
        v15 = v9[1] == v25 && v9[2] == v24;
        if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v10 == v23)
        {
          v16 = v11 == v22 && v12 == v21;
          if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v17 = v13 == v20 && v14 == v19;
            if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v53 = a5;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v52);
  v6 = v52[1];
  v7 = v52[3];
  v8 = v52[4];
  v41 = v52[5];
  v42 = v52[0];
  v9 = (v52[2] + 64) >> 6;

  for (i = v6; ; v6 = i)
  {
    v10 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
    v13 = *(v42 + 56);
    v14 = (*(v42 + 48) + v12);
    v15 = v14[1];
    v46[0] = *v14;
    v46[1] = v15;
    v47 = *(v13 + v12);
    v44 = v47;

    outlined copy of Data._Representation(v44, *(&v44 + 1));
    v41(&v48, v46);
    v16 = v47;

    outlined consume of Data._Representation(v16, *(&v16 + 1));
    v17 = v49;
    if (!v49)
    {
LABEL_19:
      outlined consume of [String : Data].Iterator._Variant();
    }

    v18 = v48;
    v43 = v50;
    v45 = v51;
    v19 = *v53;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v49, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    v22 = *(v19 + 16);
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_21;
    }

    v25 = v20;
    if (*(v19 + 24) >= v24)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      v26 = v53;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24);
      v27 = *v26;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17, specialized __RawDictionaryStorage.find<A>(_:hashValue:));
      if ((v25 & 1) != (v29 & 1))
      {
        goto LABEL_23;
      }

      v21 = v28;
    }

    v8 &= v8 - 1;
    v30 = *v53;
    if (v25)
    {

      v31 = (*(v30 + 56) + 16 * v21);
      v32 = *v31;
      v33 = v31[1];
      *v31 = v43;
      v31[1] = v45;
      outlined consume of Data._Representation(v32, v33);
    }

    else
    {
      *(v16 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v34 = (*(v16 + 48) + 16 * v21);
      *v34 = v18;
      v34[1] = v17;
      v35 = (*(v16 + 56) + 16 * v21);
      *v35 = v43;
      v35[1] = v45;
      v36 = *(v16 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_22;
      }

      *(v30 + 16) = v38;
    }

    a4 = 1;
    v7 = v10;
  }

  v11 = v7;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      goto LABEL_19;
    }

    v8 = *(v6 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v54 = a5;
  specialized LazyMapSequence.makeIterator()(a1, a2, a3, v53);
  v6 = v53[1];
  v7 = v53[3];
  v8 = v53[4];
  v43 = v53[5];
  v44 = v53[0];
  v9 = (v53[2] + 64) >> 6;

  v41 = v9;
  for (i = v6; ; v6 = i)
  {
    v10 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
    v13 = *(v44 + 56);
    v14 = (*(v44 + 48) + v12);
    v15 = v14[1];
    v47[0] = *v14;
    v47[1] = v15;
    v48 = *(v13 + v12);
    v45 = v48;

    outlined copy of Data._Representation(v45, *(&v45 + 1));
    v43(&v49, v47);
    v16 = v48;

    outlined consume of Data._Representation(v16, *(&v16 + 1));
    v17 = v50;
    if (!v50)
    {
LABEL_19:
      outlined consume of [String : Data].Iterator._Variant();
    }

    v18 = v49;
    v19 = v51;
    v46 = v52;
    v20 = *v54;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v50);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_21;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      v27 = v54;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25);
      v28 = *v27;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v17);
      if ((v26 & 1) != (v30 & 1))
      {
        goto LABEL_23;
      }

      v22 = v29;
    }

    v8 &= v8 - 1;
    v31 = *v54;
    if (v26)
    {

      v32 = (*(v31 + 56) + 16 * v22);
      v33 = *v32;
      v34 = v32[1];
      *v32 = v19;
      v32[1] = v46;
      outlined consume of Data._Representation(v33, v34);
    }

    else
    {
      *(v16 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v35 = (*(v16 + 48) + 16 * v22);
      *v35 = v18;
      v35[1] = v17;
      v36 = (*(v16 + 56) + 16 * v22);
      *v36 = v19;
      v36[1] = v46;
      v37 = *(v16 + 16);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_22;
      }

      *(v31 + 16) = v39;
    }

    a4 = 1;
    v7 = v10;
    v9 = v41;
  }

  v11 = v7;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      goto LABEL_19;
    }

    v8 = *(v6 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  OUTLINED_FUNCTION_2_3();
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
  if (v9)
  {
    v10 = v8;
    v11 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_9_2();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation4DataVGMd, &_ss17_NativeDictionaryVySS10Foundation4DataVGMR);
    OUTLINED_FUNCTION_11_0(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23);
    v20 = *(*(v24 + 48) + 16 * v10 + 8);

    *a1 = *(*(v24 + 56) + 16 * v10);
    _NativeDictionary._delete(at:)();
    *v2 = v24;
  }

  else
  {
    result = 0.0;
    *a1 = xmmword_1DD265DF0;
  }

  return result;
}

{
  v2 = v1;
  v4 = *v1;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_9_2();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss17_NativeDictionaryVys17CodingUserInfoKeyVs8Sendable_pGMR);
    OUTLINED_FUNCTION_11_0(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21);
    v17 = *(v22 + 48);
    v18 = type metadata accessor for CodingUserInfoKey();
    (*(*(v18 - 8) + 8))(v17 + *(*(v18 - 8) + 72) * v7, v18);
    outlined init with take of Any((*(v22 + 56) + 32 * v7), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd, &_ss8Sendable_pMR);
    _NativeDictionary._delete(at:)();
    *v2 = v22;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  v6 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v1;
  v8 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVSSGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVSSGMR);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
  v9 = *(v17 + 48);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v5, v10);
  v11 = (*(v17 + 56) + 16 * v5);
  v12 = *v11;
  v13 = v11[1];
  OUTLINED_FUNCTION_3_1();
  lazy protocol witness table accessor for type SiriEnvironmentStorage.StorageError and conformance SiriEnvironmentStorage.StorageError(v14, v15);
  _NativeDictionary._delete(at:)();
  *v1 = v17;
  return v12;
}

char *initializeBufferWithCopyOfBuffer for SiriEnvironmentStorage.StorageError(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v10 = *a2;
    v11 = v10;
    *a1 = v10;
    goto LABEL_7;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for DecodingError();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

void destroy for SiriEnvironmentStorage.StorageError(void **a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *a1;
  }

  else if (!EnumCaseMultiPayload)
  {
    v3 = type metadata accessor for DecodingError();
    v4 = *(*(v3 - 8) + 8);

    v4(a1, v3);
  }
}

void *initializeWithCopy for SiriEnvironmentStorage.StorageError(void *a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *a2;
    v9 = v8;
    *a1 = v8;
    goto LABEL_5;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for DecodingError();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void **assignWithCopy for SiriEnvironmentStorage.StorageError(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of SiriEnvironmentStorage.StorageError(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = *a2;
    v9 = v8;
    *a1 = v8;
    goto LABEL_6;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = type metadata accessor for DecodingError();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t outlined destroy of SiriEnvironmentStorage.StorageError(uint64_t a1)
{
  v2 = type metadata accessor for SiriEnvironmentStorage.StorageError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *initializeWithTake for SiriEnvironmentStorage.StorageError(void *a1, const void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for DecodingError();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *assignWithTake for SiriEnvironmentStorage.StorageError(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  outlined destroy of SiriEnvironmentStorage.StorageError(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for DecodingError();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t type metadata completion function for SiriEnvironmentStorage.StorageError()
{
  result = type metadata accessor for DecodingError();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SiriEnvironmentStorage.StorageError and conformance SiriEnvironmentStorage.StorageError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t key path getter for Builder.subscript<A>(dynamicMember:) : <A><A1>Builder<A>AA1(uint64_t *a1, uint64_t **a2)
{
  v2 = *a1;
  return Builder.subscript.getter(*a2);
}

{
  v2 = *a1;
  return Builder.subscript.getter(*a2);
}

void (*Builder.subscript.modify(void *a1, void *a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v7 = type metadata accessor for Optional();
  v5[2] = v7;
  v8 = *(v7 - 8);
  v5[3] = v8;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_10_1(v10);
  Builder.subscript.getter(v11);
  return Builder.subscript.modify;
}

{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v5[2] = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  OUTLINED_FUNCTION_0_1();
  *(v6 + 24) = v7;
  v9 = *(v8 + 64);
  v5[4] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_10_1(v10);
  Builder.subscript.getter(v11);
  return Builder.subscript.modify;
}

void Builder.subscript.modify(uint64_t **a1, char a2)
{
  Builder.subscript.modify(a1, a2, Builder.subscript.setter);
}

{
  Builder.subscript.modify(a1, a2, Builder.subscript.setter);
}

uint64_t key path setter for Builder.subscript<A>(dynamicMember:) : <A><A1>Builder<A>AA1(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t))
{
  v9 = *(a3 + a4 - 16);
  type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_1();
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v20 - v14;
  v16 = *a3;
  (*(v17 + 16))(&v20 - v14, a1);
  v18 = *a2;

  return a5(v15, v16);
}

void Builder.subscript.modify(uint64_t **a1, char a2, void (*a3)(void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = v4[2];
    v8 = v4[3];
    v10 = *v4;
    v9 = v4[1];
    v11 = *(v8 + 16);
    v12 = OUTLINED_FUNCTION_3_2();
    v13(v12);

    a3(v5, v10);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    v15 = *v4;
    v14 = v4[1];

    a3(v6, v15);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t (*Builder.subscript.getter(uint64_t a1))(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  return partial apply for closure #1 in Builder.subscript.getter;
}

uint64_t closure #1 in Builder.subscript.getter(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *a2;
  v10 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v5 = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, a1, v5);
  swift_beginAccess();
  v7 = *(v4 + 80);
  type metadata accessor for PartialKeyPath();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  swift_endAccess();
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t CurrentDevice.setIdentifiedUserMeCard(_:)(void *a1)
{
  v5 = *(*v1 + 216);
  v3 = a1;

  return v5(a1);
}

Swift::Void __swiftcall CurrentDevice.setRestrictions(_:)(SiriUtilities::DeviceRestrictions a1)
{
  v2 = *a1.rawValue;
  v3[0] = DeviceRestrictions.aceSet.getter();
  v3[1] = v2;
  (*(*v1 + 648))(v3);
}

uint64_t key path setter for SiriEnvironment.networkAvailability : SiriEnvironment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return SiriEnvironment.networkAvailability.setter(v4);
}

uint64_t SiriEnvironment.networkAvailability.setter(uint64_t a1)
{
  v2 = type metadata accessor for NetworkAvailability();
  OUTLINED_FUNCTION_7();
  v9 = *(v3 + 216);
  OUTLINED_FUNCTION_1_4();
  v7 = lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(v4, v5, v6);

  return v9(a1, v2, v2, v7);
}

uint64_t SiriEnvironment.networkAvailability.modify(void *a1)
{
  a1[1] = v1;
  v3 = type metadata accessor for NetworkAvailability();
  a1[2] = v3;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 208);
  OUTLINED_FUNCTION_1_4();
  v9 = lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(v6, v7, v8);
  a1[3] = v9;
  *a1 = v5(v3, v3, v9);
  return OUTLINED_FUNCTION_18();
}

uint64_t SiriEnvironment.networkAvailability.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 216);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  if ((v8 & 1) == 0)
  {
    return v4(v1, v7, v7, v6);
  }

  v4(v9, v7, v7, v6);
}

uint64_t NetworkAvailability.Status.init(reachabilityState:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 1;
  if (result == 2)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t NetworkAvailability.Status.description.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  v4 = 0x616C696176616E75;
  if (!v5)
  {
    v4 = 0x6C62616C69617661;
  }

  if (v2)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

Swift::Int NetworkAvailability.Status.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](v1);
  return Hasher._finalize()();
}

uint64_t key path setter for NetworkAvailability.mock : NetworkAvailability(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

uint64_t NetworkAvailability.mock.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void *key path getter for NetworkAvailability.status : NetworkAvailability@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for NetworkAvailability.status : NetworkAvailability(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 208))(&v4);
}

void NetworkAvailability.status.modify()
{
  OUTLINED_FUNCTION_49();
  v3 = OUTLINED_FUNCTION_26();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_12_1(v4);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v6 = *(v0 + 24);
  OUTLINED_FUNCTION_7();
  v8 = *(v7 + 176);

  v10 = v8(v9);
  if (v10 && (OUTLINED_FUNCTION_3(v10), (*(v11 + 144))(v2), , *(v1 + 49) != 3))
  {

    *(v1 + 48) = *(v1 + 49);
  }

  else
  {
    OUTLINED_FUNCTION_20();
    (*(v12 + 104))();
  }

  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void NetworkAvailability.status.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_29(a1);
  v2 = OUTLINED_FUNCTION_44();
  _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSb_AA19NetworkAvailabilityCTt3g5(v2, v3);

  free(v1);
}

void *key path getter for NetworkAvailability.$status : NetworkAvailability@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 224))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for NetworkAvailability.$status : NetworkAvailability(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 232);

  return v3(&v5);
}

uint64_t NetworkAvailability.$status.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t NetworkAvailability.$status.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 24);
  v7[0] = v2;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 160);

  v5(v7);
}

uint64_t NetworkAvailability.$status.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  NetworkAvailability.$status.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t key path getter for NetworkAvailability.isAvailable : NetworkAvailability@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result & 1;
  return result;
}

void NetworkAvailability.isAvailable.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_26();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_12_1(v3);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v5 = *(v0 + 32);
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 176);

  v9 = v7(v8);
  if (!v9 || (OUTLINED_FUNCTION_3(v9), v11 = *(v10 + 144), v12 = OUTLINED_FUNCTION_38(), v13(v12), , OUTLINED_FUNCTION_37(), v14))
  {
    OUTLINED_FUNCTION_20();
    v16 = *(v15 + 104);
    OUTLINED_FUNCTION_46();
    v17();

    v18 = *(v1 + 49);
  }

  else
  {
  }

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void *key path getter for NetworkAvailability.$isAvailable : NetworkAvailability@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 272))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for NetworkAvailability.$isAvailable : NetworkAvailability(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 280);

  return v3(&v5);
}

uint64_t NetworkAvailability.$isAvailable.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t NetworkAvailability.$isAvailable.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 32);
  v7[0] = v2;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 160);

  v5(v7);
}

uint64_t NetworkAvailability.$isAvailable.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  NetworkAvailability.$isAvailable.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t key path getter for NetworkAvailability.isExpensive : NetworkAvailability@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 296))();
  *a2 = result & 1;
  return result;
}

void NetworkAvailability.isExpensive.getter()
{
  OUTLINED_FUNCTION_32();
  swift_getKeyPath();
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 176);

  v5 = v3(v4);
  if (!v5 || (OUTLINED_FUNCTION_3(v5), v7 = *(v6 + 144), v8 = OUTLINED_FUNCTION_42(), v9(v8), , OUTLINED_FUNCTION_41(), v10))
  {
    OUTLINED_FUNCTION_40();
    v12 = *(v11 + 104);
    OUTLINED_FUNCTION_43();
    v13();
  }

  else
  {
  }

  OUTLINED_FUNCTION_45();
}

void NetworkAvailability.isExpensive.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_26();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_12_1(v3);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v5 = *(v0 + 40);
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 176);

  v9 = v7(v8);
  if (!v9 || (OUTLINED_FUNCTION_3(v9), v11 = *(v10 + 144), v12 = OUTLINED_FUNCTION_38(), v13(v12), , OUTLINED_FUNCTION_37(), v14))
  {
    OUTLINED_FUNCTION_20();
    v16 = *(v15 + 104);
    OUTLINED_FUNCTION_46();
    v17();

    v18 = *(v1 + 49);
  }

  else
  {
  }

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void *key path getter for NetworkAvailability.$isExpensive : NetworkAvailability@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 320))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for NetworkAvailability.$isExpensive : NetworkAvailability(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 328);

  return v3(&v5);
}

uint64_t NetworkAvailability.$isExpensive.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t NetworkAvailability.$isExpensive.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 40);
  v7[0] = v2;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 160);

  v5(v7);
}

uint64_t NetworkAvailability.$isExpensive.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  NetworkAvailability.$isExpensive.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t key path getter for NetworkAvailability.isConstrained : NetworkAvailability@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 344))();
  *a2 = result & 1;
  return result;
}

void NetworkAvailability.isConstrained.getter()
{
  OUTLINED_FUNCTION_32();
  swift_getKeyPath();
  OUTLINED_FUNCTION_17();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 176);

  v5 = v3(v4);
  if (!v5 || (OUTLINED_FUNCTION_3(v5), v7 = *(v6 + 144), v8 = OUTLINED_FUNCTION_42(), v9(v8), , OUTLINED_FUNCTION_41(), v10))
  {
    OUTLINED_FUNCTION_40();
    v12 = *(v11 + 104);
    OUTLINED_FUNCTION_43();
    v13();
  }

  else
  {
  }

  OUTLINED_FUNCTION_45();
}

void NetworkAvailability.isConstrained.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_26();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_12_1(v3);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v5 = *(v0 + 48);
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 176);

  v9 = v7(v8);
  if (!v9 || (OUTLINED_FUNCTION_3(v9), v11 = *(v10 + 144), v12 = OUTLINED_FUNCTION_38(), v13(v12), , OUTLINED_FUNCTION_37(), v14))
  {
    OUTLINED_FUNCTION_20();
    v16 = *(v15 + 104);
    OUTLINED_FUNCTION_46();
    v17();

    v18 = *(v1 + 49);
  }

  else
  {
  }

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void *key path getter for NetworkAvailability.$isConstrained : NetworkAvailability@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 368))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for NetworkAvailability.$isConstrained : NetworkAvailability(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 376);

  return v3(&v5);
}

uint64_t NetworkAvailability.$isConstrained.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t NetworkAvailability.$isConstrained.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 48);
  v7[0] = v2;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 160);

  v5(v7);
}

uint64_t NetworkAvailability.$isConstrained.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  NetworkAvailability.$isConstrained.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t key path getter for NetworkAvailability.isInAirplaneMode : NetworkAvailability@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 392))();
  *a2 = result & 1;
  return result;
}

void NetworkAvailability.isInAirplaneMode.modify()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_26();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_12_1(v3);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_25(KeyPath);
  *(v1 + 40) = swift_getKeyPath();
  OUTLINED_FUNCTION_16_0();
  v5 = *(v0 + 56);
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 176);

  v9 = v7(v8);
  if (!v9 || (OUTLINED_FUNCTION_3(v9), v11 = *(v10 + 144), v12 = OUTLINED_FUNCTION_38(), v13(v12), , OUTLINED_FUNCTION_37(), v14))
  {
    OUTLINED_FUNCTION_20();
    v16 = *(v15 + 104);
    OUTLINED_FUNCTION_46();
    v17();

    v18 = *(v1 + 49);
  }

  else
  {
  }

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_50();
}

void *key path getter for NetworkAvailability.$isInAirplaneMode : NetworkAvailability@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 416))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for NetworkAvailability.$isInAirplaneMode : NetworkAvailability(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 424);

  return v3(&v5);
}

uint64_t NetworkAvailability.$isInAirplaneMode.getter()
{
  OUTLINED_FUNCTION_9_0();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_7();
  v3 = *(v2 + 152);

  v3(v4);
}

uint64_t NetworkAvailability.$isInAirplaneMode.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_0();
  v3 = *(v1 + 56);
  v7[0] = v2;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 160);

  v5(v7);
}

uint64_t NetworkAvailability.$isInAirplaneMode.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_14_2(a1);
  NetworkAvailability.$isInAirplaneMode.getter();
  return OUTLINED_FUNCTION_18();
}

uint64_t NetworkAvailability.$status.modify(uint64_t *a1, char a2, void (*a3)(uint64_t *))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v7 = *a1;

    a3(&v7);
  }

  else
  {
    v7 = *a1;
    return (a3)(&v7);
  }
}

uint64_t NetworkAvailability.__allocating_init(storage:)()
{
  v0 = swift_allocObject();
  NetworkAvailability.init(storage:)();
  return v0;
}

id NetworkAvailability.init(storage:)()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = OUTLINED_FUNCTION_5_0(v2);
  v31 = v4;
  v32 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  OUTLINED_FUNCTION_8_0();
  v30 = v9 - v8;
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v12);
  OUTLINED_FUNCTION_8_0();
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8, v15);
  OUTLINED_FUNCTION_8_0();
  v0[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCyAA19NetworkAvailabilityC6StatusOGMd, &_s13SiriUtilities17MockablePublishedCyAA19NetworkAvailabilityC6StatusOGMR);
  swift_allocObject();
  v0[3] = specialized MockablePublished.init(wrappedValue:)(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17MockablePublishedCySbGMd, &_s13SiriUtilities17MockablePublishedCySbGMR);
  swift_allocObject();
  v0[4] = specialized MockablePublished.init(wrappedValue:)(1);
  OUTLINED_FUNCTION_30();
  v0[5] = specialized MockablePublished.init(wrappedValue:)(0);
  OUTLINED_FUNCTION_30();
  v0[6] = specialized MockablePublished.init(wrappedValue:)(0);
  OUTLINED_FUNCTION_30();
  v0[7] = specialized MockablePublished.init(wrappedValue:)(0);
  v0[8] = [objc_allocWithZone(SUNetworkReachability) init];
  v0[13] = dispatch_semaphore_create(1);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v31 + 104))(v30, *MEMORY[0x1E69E8090], v32);
  v16 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = type metadata accessor for NWPathMonitor();
  OUTLINED_FUNCTION_22(v17);
  v0[9] = NWPathMonitor.init()();
  type metadata accessor for NetworkAvailability.PathUpdateHandler(0);
  OUTLINED_FUNCTION_35();
  v18 = swift_allocObject();
  swift_weakInit();
  *(v1 + 80) = v18;
  result = [objc_allocWithZone(MEMORY[0x1E698B6B0]) initWithQueue_];
  if (result)
  {
    *(v1 + 88) = result;
    type metadata accessor for NetworkAvailability.AirplaneModeUpdateHandler(0);
    OUTLINED_FUNCTION_35();
    v20 = swift_allocObject();
    swift_weakInit();
    *(v1 + 96) = v20;
    [*(v1 + 88) refresh];
    LOBYTE(v20) = [*(v1 + 88) airplaneMode];
    swift_getKeyPath();
    swift_getKeyPath();

    _s13SiriUtilities17MockablePublishedC18_enclosingInstance7wrapped7storagexqd___s24ReferenceWritableKeyPathCy8ProviderQyd__xGAHyqd__ACyxGGtcAA0c11EnvironmentM0Rd__luisZSb_AA19NetworkAvailabilityCTt3g5(v20, v1);
    v21 = *(v1 + 80);
    OUTLINED_FUNCTION_7();
    v23 = *(v22 + 104);
    swift_retain_n();

    v23(v1);

    v24 = *(v1 + 72);
    v25 = *(v1 + 80);

    outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWPath) -> ())?(partial apply for implicit closure #2 in implicit closure #1 in NetworkAvailability.init(storage:));
    NWPathMonitor.pathUpdateHandler.setter();

    v26 = *(v1 + 72);

    NWPathMonitor.start(queue:)();

    v27 = *(v1 + 96);
    OUTLINED_FUNCTION_7();
    v29 = *(v28 + 104);

    v29(v1);

    [*(v1 + 88) setDelegate_];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NetworkAvailability.deinit()
{
  v1 = v0;
  v2 = *(v0 + 104);
  OS_dispatch_semaphore.wait()();

  v3 = *(v1 + 72);

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWPath) -> ())?(0);
  NWPathMonitor.pathUpdateHandler.setter();

  v4 = *(v1 + 72);

  NWPathMonitor.cancel()();

  [*(v1 + 88) setDelegate_];
  v5 = *(v1 + 104);
  OS_dispatch_semaphore.signal()();

  v6 = *(v1 + 16);

  v7 = *(v1 + 24);

  v8 = *(v1 + 32);

  v9 = *(v1 + 40);

  v10 = *(v1 + 48);

  v11 = *(v1 + 56);

  v12 = *(v1 + 72);

  v13 = *(v1 + 80);

  v14 = *(v1 + 96);

  return v1;
}

uint64_t NetworkAvailability.__deallocating_deinit()
{
  NetworkAvailability.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t NetworkAvailability.AirplaneModeUpdateHandler.airplaneModeChanged()()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    NetworkAvailability.airplaneModeChanged()();
  }

  return result;
}

uint64_t @objc NetworkAvailability.AirplaneModeUpdateHandler.airplaneModeChanged()()
{

  NetworkAvailability.AirplaneModeUpdateHandler.airplaneModeChanged()();
}

void NetworkAvailability.airplaneModeChanged()()
{
  v1 = v0;
  v2 = *(v0 + 104);
  OS_dispatch_semaphore.wait()();

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_6_0();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DD1FF000, v4, v5, "Received airplaneModeChanged callback", v6, 2u);
    OUTLINED_FUNCTION_27();
  }

  NetworkAvailability.recheckAirplaneModeUnderLock()();
  v7 = *(v1 + 104);
  OS_dispatch_semaphore.signal()();
}

void (*protocol witness for MockableEnvironmentProvider.mock.modify in conformance NetworkAvailability(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 192))();
  return protocol witness for MockableEnvironmentProvider.mock.modify in conformance NetworkAvailability;
}

void protocol witness for MockableEnvironmentProvider.mock.modify in conformance NetworkAvailability(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t specialized MockablePublished.init(wrappedValue:)(uint64_t a1)
{
  return specialized MockablePublished.init(wrappedValue:)(a1);
}

{
  OUTLINED_FUNCTION_21(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  OUTLINED_FUNCTION_22(v1);
  v2 = CurrentValueSubject.init(_:)();
  return OUTLINED_FUNCTION_39(v2);
}

{
  return specialized MockablePublished.init(wrappedValue:)(a1);
}

{
  return specialized MockablePublished.init(wrappedValue:)(a1);
}

{
  return specialized MockablePublished.init(wrappedValue:)(a1);
}

{
  v1 = OUTLINED_FUNCTION_21(a1);
  v3 = OUTLINED_FUNCTION_34(v1, v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_22(v5);
  v6 = CurrentValueSubject.init(_:)();
  return OUTLINED_FUNCTION_39(v6);
}

void *specialized MockablePublished.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySSSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySSSgs5NeverOGMR);
  OUTLINED_FUNCTION_22(v3);

  v2[4] = CurrentValueSubject.init(_:)();
  return v2;
}

{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy13SiriUtilities12RestrictionsVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy13SiriUtilities12RestrictionsVs5NeverOGMR);
  OUTLINED_FUNCTION_22(v3);

  v2[4] = CurrentValueSubject.init(_:)();
  return v2;
}

void specialized MockablePublished.init(wrappedValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_49();
  a17 = v19;
  a18 = v20;
  v21 = v18;
  v23 = v22;
  v24 = type metadata accessor for Locale();
  v25 = OUTLINED_FUNCTION_5_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  v31 = MEMORY[0x1EEE9AC00](v25, v30);
  v33 = &a9 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &a9 - v35;
  OUTLINED_FUNCTION_15_1();
  v38 = *(v27 + 16);
  v38(v21 + *(v37 + 88), v23, v24);
  v38(v36, v23, v24);
  v38(v33, v36, v24);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy10Foundation6LocaleVs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy10Foundation6LocaleVs5NeverOGMR);
  OUTLINED_FUNCTION_22(v39);
  v40 = CurrentValueSubject.init(_:)();
  v41 = *(v27 + 8);
  v41(v23, v24);
  v41(v36, v24);
  OUTLINED_FUNCTION_15_1();
  *(v21 + *(v42 + 96)) = v40;
  OUTLINED_FUNCTION_50();
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
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

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWPath) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NetworkAvailability.Status and conformance NetworkAvailability.Status()
{
  result = lazy protocol witness table cache variable for type NetworkAvailability.Status and conformance NetworkAvailability.Status;
  if (!lazy protocol witness table cache variable for type NetworkAvailability.Status and conformance NetworkAvailability.Status)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NetworkAvailability.Status and conformance NetworkAvailability.Status);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for NetworkAvailability(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(&lazy protocol witness table cache variable for type NetworkAvailability and conformance NetworkAvailability, a2, type metadata accessor for NetworkAvailability);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type NetworkAvailability and conformance NetworkAvailability(&lazy protocol witness table cache variable for type NetworkAvailability and conformance NetworkAvailability, a2, type metadata accessor for NetworkAvailability);
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for NetworkAvailability.Status(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t OUTLINED_FUNCTION_28()
{

  return type metadata accessor for CurrentDevice();
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{
  v3 = *(*a1 + 32);
  v2 = *(*a1 + 40);
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 48);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v26[-1] - v12;
  v27[0] = a4;
  v27[1] = a5;
  outlined init with copy of TaskPriority?(a3, &v26[-1] - v12);
  v14 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of CheckedContinuation<(), Error>?(v13, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter();
      v22 = *(v21 + 16);
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_(v21 + 32, v27, v26);

      v23 = v26[0];
      outlined destroy of CheckedContinuation<(), Error>?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of CheckedContinuation<(), Error>?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = v27 - v12;
  outlined init with copy of TaskPriority?(a3, v27 - v12);
  v14 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of CheckedContinuation<(), Error>?(v13, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      outlined destroy of CheckedContinuation<(), Error>?(a3, &_sScPSgMd, &_sScPSgMR);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of CheckedContinuation<(), Error>?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

unint64_t lazy protocol witness table accessor for type TimeoutError and conformance TimeoutError()
{
  result = lazy protocol witness table cache variable for type TimeoutError and conformance TimeoutError;
  if (!lazy protocol witness table cache variable for type TimeoutError and conformance TimeoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeoutError and conformance TimeoutError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeoutError and conformance TimeoutError;
  if (!lazy protocol witness table cache variable for type TimeoutError and conformance TimeoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeoutError and conformance TimeoutError);
  }

  return result;
}

Swift::Int TimeoutError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](0);
  return Hasher._finalize()();
}

uint64_t type metadata completion function for CooperativeTimeoutResult(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
  result = type metadata accessor for Result();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for CooperativeTimeoutResult(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 2) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = &v8[((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8];
  }

  else
  {
    v9 = v5 + 1;
    v10 = a2[v5 + 1];
    v11 = v10 - 2;
    if (v10 >= 2)
    {
      if (v9 <= 3)
      {
        v12 = v9;
      }

      else
      {
        v12 = 4;
      }

      switch(v12)
      {
        case 1:
          v13 = *a2;
          goto LABEL_19;
        case 2:
          v13 = *a2;
          goto LABEL_19;
        case 3:
          v13 = *a2 | (a2[2] << 16);
          goto LABEL_19;
        case 4:
          v13 = *a2;
LABEL_19:
          v14 = (v13 | (v11 << (8 * v9))) + 2;
          v10 = v13 + 2;
          if (v9 < 4)
          {
            v10 = v14;
          }

          break;
        default:
          break;
      }
    }

    v15 = a2[v5];
    if (v10 == 1)
    {
      v16 = v15 - 2;
      if (v15 >= 2)
      {
        if (v5 <= 3)
        {
          v17 = v5;
        }

        else
        {
          v17 = 4;
        }

        switch(v17)
        {
          case 1:
            v18 = *a2;
            goto LABEL_39;
          case 2:
            v18 = *a2;
            goto LABEL_39;
          case 3:
            v18 = *a2 | (a2[2] << 16);
            goto LABEL_39;
          case 4:
            v18 = *a2;
LABEL_39:
            v22 = (v18 | (v16 << (8 * v5))) + 2;
            v15 = v18 + 2;
            if (v5 < 4)
            {
              v15 = v22;
            }

            break;
          default:
            break;
        }
      }

      if (v15 == 1)
      {
        v23 = *a2;
        v24 = *a2;
        *v3 = v23;
        v25 = 1;
      }

      else
      {
        (*(v4 + 16))(a1);
        v25 = 0;
      }

      v3[v5] = v25;
      v3[v9] = 1;
    }

    else
    {
      v19 = v15 - 2;
      if (v15 >= 2)
      {
        if (v5 <= 3)
        {
          v20 = v5;
        }

        else
        {
          v20 = 4;
        }

        switch(v20)
        {
          case 1:
            v21 = *a2;
            goto LABEL_46;
          case 2:
            v21 = *a2;
            goto LABEL_46;
          case 3:
            v21 = *a2 | (a2[2] << 16);
            goto LABEL_46;
          case 4:
            v21 = *a2;
LABEL_46:
            v26 = (v21 | (v19 << (8 * v5))) + 2;
            v15 = v21 + 2;
            if (v5 < 4)
            {
              v15 = v26;
            }

            break;
          default:
            break;
        }
      }

      if (v15 == 1)
      {
        v27 = *a2;
        v28 = *a2;
        *v3 = v27;
        v29 = 1;
      }

      else
      {
        (*(v4 + 16))(a1);
        v29 = 0;
      }

      v3[v5] = v29;
      v3[v9] = 0;
    }
  }

  return v3;
}

unsigned __int8 *assignWithCopy for CooperativeTimeoutResult(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 8uLL)
    {
      v7 = 8;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = v7 + 1;
    v9 = a1[v7 + 1];
    v10 = v9 - 2;
    if (v9 >= 2)
    {
      if (v8 <= 3)
      {
        v11 = v8;
      }

      else
      {
        v11 = 4;
      }

      switch(v11)
      {
        case 1:
          v12 = *a1;
          goto LABEL_14;
        case 2:
          v12 = *a1;
          goto LABEL_14;
        case 3:
          v12 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v12 = *a1;
LABEL_14:
          if (v8 < 4)
          {
            v9 = (v12 | (v10 << (8 * v8))) + 2;
          }

          else
          {
            v9 = v12 + 2;
          }

          break;
        default:
          break;
      }
    }

    v13 = a1[v7];
    if (v9 == 1)
    {
      v14 = v13 - 2;
      if (v13 >= 2)
      {
        if (v7 <= 3)
        {
          v15 = v7;
        }

        else
        {
          v15 = 4;
        }

        switch(v15)
        {
          case 1:
            goto LABEL_28;
          case 2:
            goto LABEL_30;
          case 3:
            goto LABEL_31;
          case 4:
            goto LABEL_29;
          default:
            break;
        }
      }
    }

    else
    {
      v14 = v13 - 2;
      if (v13 >= 2)
      {
        if (v7 <= 3)
        {
          v16 = v7;
        }

        else
        {
          v16 = 4;
        }

        switch(v16)
        {
          case 1:
LABEL_28:
            v17 = *a1;
            goto LABEL_32;
          case 2:
LABEL_30:
            v17 = *a1;
            goto LABEL_32;
          case 3:
LABEL_31:
            v17 = *a1 | (a1[2] << 16);
            goto LABEL_32;
          case 4:
LABEL_29:
            v17 = *a1;
LABEL_32:
            if (v7 < 4)
            {
              v17 |= v14 << (8 * v7);
            }

            v13 = v17 + 2;
            break;
          default:
            break;
        }
      }
    }

    if (v13 == 1)
    {
    }

    else
    {
      (*(v6 + 8))(a1, v5);
    }

    v18 = a2[v8];
    v19 = v18 - 2;
    if (v18 >= 2)
    {
      if (v8 <= 3)
      {
        v20 = v8;
      }

      else
      {
        v20 = 4;
      }

      switch(v20)
      {
        case 1:
          v21 = *a2;
          goto LABEL_47;
        case 2:
          v21 = *a2;
          goto LABEL_47;
        case 3:
          v21 = *a2 | (a2[2] << 16);
          goto LABEL_47;
        case 4:
          v21 = *a2;
LABEL_47:
          if (v8 < 4)
          {
            v18 = (v21 | (v19 << (8 * v8))) + 2;
          }

          else
          {
            v18 = v21 + 2;
          }

          break;
        default:
          break;
      }
    }

    v22 = a2[v7];
    if (v18 == 1)
    {
      v23 = v22 - 2;
      if (v22 >= 2)
      {
        if (v7 <= 3)
        {
          v24 = v7;
        }

        else
        {
          v24 = 4;
        }

        switch(v24)
        {
          case 1:
            v25 = *a2;
            goto LABEL_68;
          case 2:
            v25 = *a2;
            goto LABEL_68;
          case 3:
            v25 = *a2 | (a2[2] << 16);
            goto LABEL_68;
          case 4:
            v25 = *a2;
LABEL_68:
            if (v7 < 4)
            {
              v25 |= v23 << (8 * v7);
            }

            v22 = v25 + 2;
            break;
          default:
            break;
        }
      }

      if (v22 == 1)
      {
        v29 = *a2;
        v30 = v29;
        *a1 = v29;
        v31 = 1;
      }

      else
      {
        (*(v6 + 16))(a1, a2, v5);
        v31 = 0;
      }

      v32 = 1;
    }

    else
    {
      v26 = v22 - 2;
      if (v22 >= 2)
      {
        if (v7 <= 3)
        {
          v27 = v7;
        }

        else
        {
          v27 = 4;
        }

        switch(v27)
        {
          case 1:
            v28 = *a2;
            goto LABEL_76;
          case 2:
            v28 = *a2;
            goto LABEL_76;
          case 3:
            v28 = *a2 | (a2[2] << 16);
            goto LABEL_76;
          case 4:
            v28 = *a2;
LABEL_76:
            if (v7 < 4)
            {
              v28 |= v26 << (8 * v7);
            }

            v22 = v28 + 2;
            break;
          default:
            break;
        }
      }

      if (v22 == 1)
      {
        v33 = *a2;
        v34 = v33;
        v32 = 0;
        *a1 = v33;
        v31 = 1;
      }

      else
      {
        (*(v6 + 16))(a1, a2, v5);
        v31 = 0;
        v32 = 0;
      }
    }

    a1[v7] = v31;
    a1[v8] = v32;
  }

  return a1;
}

void *initializeWithTake for CooperativeTimeoutResult(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = a2[v5 + 1];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a2;
        goto LABEL_13;
      case 2:
        v10 = *a2;
        goto LABEL_13;
      case 3:
        v10 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v10 = *a2;
LABEL_13:
        v11 = (v10 | (v8 << (8 * v6))) + 2;
        v7 = v10 + 2;
        if (v6 < 4)
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  v12 = a2[v5];
  if (v7 == 1)
  {
    v13 = v12 - 2;
    if (v12 >= 2)
    {
      if (v5 <= 3)
      {
        v14 = v5;
      }

      else
      {
        v14 = 4;
      }

      switch(v14)
      {
        case 1:
          v15 = *a2;
          goto LABEL_33;
        case 2:
          v15 = *a2;
          goto LABEL_33;
        case 3:
          v15 = *a2 | (a2[2] << 16);
          goto LABEL_33;
        case 4:
          v15 = *a2;
LABEL_33:
          v19 = (v15 | (v13 << (8 * v5))) + 2;
          v12 = v15 + 2;
          if (v5 < 4)
          {
            v12 = v19;
          }

          break;
        default:
          break;
      }
    }

    if (v12 == 1)
    {
      *a1 = *a2;
      v20 = 1;
    }

    else
    {
      (*(v4 + 32))(a1);
      v20 = 0;
    }

    v21 = 1;
  }

  else
  {
    v16 = v12 - 2;
    if (v12 >= 2)
    {
      if (v5 <= 3)
      {
        v17 = v5;
      }

      else
      {
        v17 = 4;
      }

      switch(v17)
      {
        case 1:
          v18 = *a2;
          goto LABEL_40;
        case 2:
          v18 = *a2;
          goto LABEL_40;
        case 3:
          v18 = *a2 | (a2[2] << 16);
          goto LABEL_40;
        case 4:
          v18 = *a2;
LABEL_40:
          v22 = (v18 | (v16 << (8 * v5))) + 2;
          v12 = v18 + 2;
          if (v5 < 4)
          {
            v12 = v22;
          }

          break;
        default:
          break;
      }
    }

    if (v12 == 1)
    {
      v21 = 0;
      *a1 = *a2;
      v20 = 1;
    }

    else
    {
      (*(v4 + 32))(a1);
      v20 = 0;
      v21 = 0;
    }
  }

  *(a1 + v5) = v20;
  *(a1 + v6) = v21;
  return a1;
}

unsigned __int8 *assignWithTake for CooperativeTimeoutResult(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 8uLL)
    {
      v7 = 8;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = v7 + 1;
    v9 = a1[v7 + 1];
    v10 = v9 - 2;
    if (v9 >= 2)
    {
      if (v8 <= 3)
      {
        v11 = v8;
      }

      else
      {
        v11 = 4;
      }

      switch(v11)
      {
        case 1:
          v12 = *a1;
          goto LABEL_14;
        case 2:
          v12 = *a1;
          goto LABEL_14;
        case 3:
          v12 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v12 = *a1;
LABEL_14:
          if (v8 < 4)
          {
            v9 = (v12 | (v10 << (8 * v8))) + 2;
          }

          else
          {
            v9 = v12 + 2;
          }

          break;
        default:
          break;
      }
    }

    v13 = a1[v7];
    if (v9 == 1)
    {
      v14 = v13 - 2;
      if (v13 >= 2)
      {
        if (v7 <= 3)
        {
          v15 = v7;
        }

        else
        {
          v15 = 4;
        }

        switch(v15)
        {
          case 1:
            goto LABEL_28;
          case 2:
            goto LABEL_30;
          case 3:
            goto LABEL_31;
          case 4:
            goto LABEL_29;
          default:
            break;
        }
      }
    }

    else
    {
      v14 = v13 - 2;
      if (v13 >= 2)
      {
        if (v7 <= 3)
        {
          v16 = v7;
        }

        else
        {
          v16 = 4;
        }

        switch(v16)
        {
          case 1:
LABEL_28:
            v17 = *a1;
            goto LABEL_32;
          case 2:
LABEL_30:
            v17 = *a1;
            goto LABEL_32;
          case 3:
LABEL_31:
            v17 = *a1 | (a1[2] << 16);
            goto LABEL_32;
          case 4:
LABEL_29:
            v17 = *a1;
LABEL_32:
            if (v7 < 4)
            {
              v17 |= v14 << (8 * v7);
            }

            v13 = v17 + 2;
            break;
          default:
            break;
        }
      }
    }

    if (v13 == 1)
    {
    }

    else
    {
      (*(v6 + 8))(a1, v5);
    }

    v18 = a2[v8];
    v19 = v18 - 2;
    if (v18 >= 2)
    {
      if (v8 <= 3)
      {
        v20 = v8;
      }

      else
      {
        v20 = 4;
      }

      switch(v20)
      {
        case 1:
          v21 = *a2;
          goto LABEL_47;
        case 2:
          v21 = *a2;
          goto LABEL_47;
        case 3:
          v21 = *a2 | (a2[2] << 16);
          goto LABEL_47;
        case 4:
          v21 = *a2;
LABEL_47:
          if (v8 < 4)
          {
            v18 = (v21 | (v19 << (8 * v8))) + 2;
          }

          else
          {
            v18 = v21 + 2;
          }

          break;
        default:
          break;
      }
    }

    v22 = a2[v7];
    if (v18 == 1)
    {
      v23 = v22 - 2;
      if (v22 >= 2)
      {
        if (v7 <= 3)
        {
          v24 = v7;
        }

        else
        {
          v24 = 4;
        }

        switch(v24)
        {
          case 1:
            v25 = *a2;
            goto LABEL_68;
          case 2:
            v25 = *a2;
            goto LABEL_68;
          case 3:
            v25 = *a2 | (a2[2] << 16);
            goto LABEL_68;
          case 4:
            v25 = *a2;
LABEL_68:
            if (v7 < 4)
            {
              v25 |= v23 << (8 * v7);
            }

            v22 = v25 + 2;
            break;
          default:
            break;
        }
      }

      if (v22 == 1)
      {
        *a1 = *a2;
        v29 = 1;
      }

      else
      {
        (*(v6 + 32))(a1, a2, v5);
        v29 = 0;
      }

      v30 = 1;
    }

    else
    {
      v26 = v22 - 2;
      if (v22 >= 2)
      {
        if (v7 <= 3)
        {
          v27 = v7;
        }

        else
        {
          v27 = 4;
        }

        switch(v27)
        {
          case 1:
            v28 = *a2;
            goto LABEL_76;
          case 2:
            v28 = *a2;
            goto LABEL_76;
          case 3:
            v28 = *a2 | (a2[2] << 16);
            goto LABEL_76;
          case 4:
            v28 = *a2;
LABEL_76:
            if (v7 < 4)
            {
              v28 |= v26 << (8 * v7);
            }

            v22 = v28 + 2;
            break;
          default:
            break;
        }
      }

      if (v22 == 1)
      {
        v30 = 0;
        *a1 = *a2;
        v29 = 1;
      }

      else
      {
        (*(v6 + 32))(a1, a2, v5);
        v29 = 0;
        v30 = 0;
      }
    }

    a1[v7] = v29;
    a1[v8] = v30;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for CooperativeTimeoutResult(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v5 = v4 + 2;
  v6 = 8 * (v4 + 2);
  if ((v4 + 2) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_22:
      v11 = *(a1 + v4 + 1);
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
    goto LABEL_22;
  }

LABEL_14:
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

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void storeEnumTagSinglePayload for CooperativeTimeoutResult(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 2;
  v7 = 8 * (v5 + 2);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
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
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -2)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 2);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5 + 1] = -a2;
        }

        break;
    }
  }
}

uint64_t getEnumTag for CooperativeTimeoutResult(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = v2 + 1;
  v4 = a1[v2 + 1];
  v5 = v4 - 2;
  if (v4 >= 2)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        v8 = (v7 | (v5 << (8 * v3))) + 2;
        LODWORD(v4) = v7 + 2;
        if (v3 >= 4)
        {
          v4 = v4;
        }

        else
        {
          v4 = v8;
        }

        break;
      default:
        return v4;
    }
  }

  return v4;
}

void destructiveInjectEnumTag for CooperativeTimeoutResult(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (a2 > 1)
  {
    v5 = v4 + 1;
    v6 = a2 - 2;
    if ((v4 + 1) < 4)
    {
      a1[v5] = (v6 >> (8 * v5)) + 2;
      if (v4 != -1)
      {
        v7 = v6 & ~(-1 << (8 * v5));
        bzero(a1, v5);
        if (v5 == 3)
        {
          *a1 = v7;
          a1[2] = BYTE2(v7);
        }

        else if (v5 == 2)
        {
          *a1 = v7;
        }

        else
        {
          *a1 = v6;
        }
      }
    }

    else
    {
      a1[v5] = 2;
      bzero(a1, v5);
      *a1 = v6;
    }
  }

  else
  {
    a1[v4 + 1] = a2;
  }
}

Swift::Int CoopTimeoutError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeoutError()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](0);
  return Hasher._finalize()();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfcBoSRys4Int8VGXEfU_@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TimeoutError(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for TimeoutError(_BYTE *result, int a2, int a3)
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

uint64_t ObjectAssociation.count.getter()
{
  v1 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_2_7();
  v3();
  return v5;
}

uint64_t closure #1 in ObjectAssociation.count.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = SiriEnvironmentStorage.storage.getter();
  v5 = *(v3 + 80);
  v6 = type metadata accessor for ObjectEntry();
  v7 = MEMORY[0x1E12A8B00](v4, MEMORY[0x1E69E5FE0], v6, MEMORY[0x1E69E5FE8]);

  *a2 = v7;
  return result;
}

uint64_t ObjectAssociation.__allocating_init()()
{
  v0 = swift_allocObject();
  ObjectAssociation.init()();
  return v0;
}

void *ObjectAssociation.init()()
{
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 80);
  type metadata accessor for ObjectEntry();
  swift_getTupleTypeMetadata2();
  static Array._allocateUninitialized(_:)();
  v0[2] = Dictionary.init(dictionaryLiteral:)();
  v3 = type metadata accessor for DispatchSemaphoreLock();
  v4 = swift_allocObject();
  *(v4 + 16) = dispatch_semaphore_create(1);
  v0[6] = v3;
  v0[7] = &protocol witness table for DispatchSemaphoreLock;
  v0[3] = v4;
  return v0;
}

uint64_t key path setter for ObjectAssociation.subscript(_:) : <A>ObjectAssociation<A>A(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 8);
  v8 = type metadata accessor for Optional();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v17 - v11;
  v13 = *a3;
  (*(v14 + 16))(&v17 - v11, a1);
  v15 = *(**a2 + 152);
  swift_unknownObjectRetain();
  return v15(v12, v13);
}

void (*ObjectAssociation.subscript.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 80);
  v8 = type metadata accessor for Optional();
  v5[2] = v8;
  v9 = *(v8 - 8);
  v5[3] = v9;
  v10 = *(v9 + 64);
  v5[4] = __swift_coroFrameAllocStub(v10);
  v5[5] = __swift_coroFrameAllocStub(v10);
  ObjectAssociation.value(for:)(a2);
  return ObjectAssociation.subscript.modify;
}

void ObjectAssociation.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    swift_unknownObjectRetain();
    ObjectAssociation.subscript.setter(v3, v8);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v10 = *v2;
    v9 = v2[1];
    swift_unknownObjectRetain();
    ObjectAssociation.subscript.setter(v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t closure #1 in ObjectAssociation.clearAll()(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 80);
  type metadata accessor for ObjectEntry();
  type metadata accessor for Dictionary();
  Dictionary.removeAll(keepingCapacity:)(0);
  return swift_endAccess();
}

uint64_t ObjectAssociation.clear(for:)(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 80);
  type metadata accessor for ObjectEntry();
  v5 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_0_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v18[-v12];
  v14 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v19 = v1;
  v20 = a1;
  v15 = *(v14 + 24);
  OUTLINED_FUNCTION_2_7();
  v16();
  return (*(v7 + 8))(v13, v5);
}

uint64_t closure #1 in ObjectAssociation.clear(for:)(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = *(v1 + 80);
  type metadata accessor for ObjectEntry();
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  return swift_endAccess();
}

uint64_t ObjectAssociation.deinit()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  return v0;
}

uint64_t ObjectAssociation.__deallocating_deinit()
{
  ObjectAssociation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t type metadata completion function for ObjectEntry(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ObjectEntry(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  v5 = ((v3 & 0xF8) + 23) & ~(v3 & 0xF8) & 0x1F8;

  return v4 + v5;
}

uint64_t assignWithCopy for ObjectEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_unknownObjectWeakCopyAssign();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((*(v7 + 80) + 8 + v6) & ~*(v7 + 80), (*(v7 + 80) + 8 + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t key path getter for CoreTelephonyAPIBridge.createAndLaunchConnection : CoreTelephonyAPIBridge@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned OpaquePointer);
  a2[1] = v5;
}

uint64_t key path setter for CoreTelephonyAPIBridge.createAndLaunchConnection : CoreTelephonyAPIBridge(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = a2[1];

  *a2 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out OpaquePointer);
  a2[1] = v5;
  return result;
}

uint64_t CoreTelephonyAPIBridge.createAndLaunchConnection.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_2_1();
}

uint64_t CoreTelephonyAPIBridge.createAndLaunchConnection.setter()
{
  OUTLINED_FUNCTION_4_4();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t key path getter for CoreTelephonyAPIBridge.createOnTargetQueue : CoreTelephonyAPIBridge@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_queue) -> (@unowned OpaquePointer);
  a2[1] = v5;
}

uint64_t key path setter for CoreTelephonyAPIBridge.createOnTargetQueue : CoreTelephonyAPIBridge(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 24);

  *(a2 + 16) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out CTError);
  *(a2 + 24) = v5;
  return result;
}

uint64_t CoreTelephonyAPIBridge.createOnTargetQueue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t CoreTelephonyAPIBridge.createOnTargetQueue.setter()
{
  OUTLINED_FUNCTION_4_4();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t key path getter for CoreTelephonyAPIBridge.registerBlockForNotification : CoreTelephonyAPIBridge@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)@<X8>)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = _ss13OpaquePointerVSo11CFStringRefaSo012CFDictionaryD0aSgIegg_So7CTErroraIegyggd_AbDxq_Ri_zRi0_zRi__Ri0__r0_lyAGytIsegnr_AIIegnnnr_TRTA;
  a2[1] = v5;
}

uint64_t _ss13OpaquePointerVSo11CFStringRefaSo012CFDictionaryD0aSgIegg_So7CTErroraIegyggd_AbDxq_Ri_zRi0_zRi__Ri0__r0_lyAGytIsegnr_AIIegnnnr_TR@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t (*)(uint64_t a1), uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v7 = *a1;
  v8 = *a2;
  v10 = *a3;
  v9 = a3[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;

  v12 = a4(v7, v8, partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CFDictionaryRef?) -> (@out ()), v11);

  *a5 = v12;
  return result;
}

uint64_t key path setter for CoreTelephonyAPIBridge.registerBlockForNotification : CoreTelephonyAPIBridge(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 40);

  *(a2 + 32) = _ss13OpaquePointerVSo11CFStringRefaxq_Ri_zRi0_zRi__Ri0__r0_lySo012CFDictionaryD0aSgytIsegnr_So7CTErroraIegnnnr_AbdGIegg_AIIegyggd_TRTA;
  *(a2 + 40) = v5;
  return result;
}

uint64_t _ss13OpaquePointerVSo11CFStringRefaxq_Ri_zRi0_zRi__Ri0__r0_lySo012CFDictionaryD0aSgytIsegnr_So7CTErroraIegnnnr_AbdGIegg_AIIegyggd_TR(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, uint64_t *, void *))
{
  v12 = a2;
  v13 = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v11[0] = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CFDictionaryRef?) -> ();
  v11[1] = v8;

  a5(&v10, &v13, &v12, v11);

  return v10;
}

uint64_t CoreTelephonyAPIBridge.registerBlockForNotification.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t CoreTelephonyAPIBridge.registerBlockForNotification.setter()
{
  OUTLINED_FUNCTION_4_4();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t key path getter for CoreTelephonyAPIBridge.unregisterForAllNotifications : CoreTelephonyAPIBridge@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned CTError);
  a2[1] = v5;
}

uint64_t key path setter for CoreTelephonyAPIBridge.unregisterForAllNotifications : CoreTelephonyAPIBridge(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(a2 + 56);

  *(a2 + 48) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out CTError);
  *(a2 + 56) = v5;
  return result;
}

uint64_t CoreTelephonyAPIBridge.unregisterForAllNotifications.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t CoreTelephonyAPIBridge.unregisterForAllNotifications.setter()
{
  OUTLINED_FUNCTION_4_4();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

const char *one-time initialization function for clientIdentifier()
{
  result = closure #1 in variable initialization expression of static CoreTelephonyAPIBridge.clientIdentifier();
  static CoreTelephonyAPIBridge.clientIdentifier = result;
  return result;
}

const char *closure #1 in variable initialization expression of static CoreTelephonyAPIBridge.clientIdentifier()
{
  result = getprogname();
  if (result)
  {
    v3 = String.init(cString:)();
    v4 = v1;
    MEMORY[0x1E12A8C40](0x614D20544152692DLL, 0xED0000726567616ELL);
    v2 = MEMORY[0x1E12A8BC0](v3, v4);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *CoreTelephonyAPIBridge.clientIdentifier.unsafeMutableAddressor()
{
  if (one-time initialization token for clientIdentifier != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  return &static CoreTelephonyAPIBridge.clientIdentifier;
}

id static CoreTelephonyAPIBridge.clientIdentifier.getter()
{
  if (one-time initialization token for clientIdentifier != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  v1 = static CoreTelephonyAPIBridge.clientIdentifier;

  return v1;
}

void CoreTelephonyAPIBridge.init()(uint64_t (**a1)()@<X8>)
{
  *a1 = closure #1 in CoreTelephonyAPIBridge.init();
  a1[1] = 0;
  a1[2] = closure #2 in CoreTelephonyAPIBridge.init();
  a1[3] = 0;
  a1[4] = closure #3 in CoreTelephonyAPIBridge.init();
  a1[5] = 0;
  a1[6] = closure #4 in CoreTelephonyAPIBridge.init();
  a1[7] = 0;
}

uint64_t closure #1 in CoreTelephonyAPIBridge.init()()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  if (one-time initialization token for clientIdentifier != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  result = _CTServerConnectionCreateAndLaunchWithIdentifier();
  if (!result)
  {
    __break(1u);
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void closure #2 in CoreTelephonyAPIBridge.init()()
{
  v0 = *MEMORY[0x1E695E480];
  if (one-time initialization token for clientIdentifier != -1)
  {
    OUTLINED_FUNCTION_0_11();
  }

  v3[4] = destructiveProjectEnumData for InputOrigin;
  v3[5] = 0;
  OUTLINED_FUNCTION_1_6();
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFDictionaryRef?) -> ();
  v3[3] = &block_descriptor_36;
  v1 = _Block_copy(v3);
  v2 = _CTServerConnectionCreateOnTargetQueue();
  _Block_release(v1);
  if (!v2)
  {
    __break(1u);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed CFStringRef?, @guaranteed CFDictionaryRef?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t closure #3 in CoreTelephonyAPIBridge.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[4] = a3;
  v7[5] = a4;
  OUTLINED_FUNCTION_1_6();
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@guaranteed CFDictionaryRef?) -> ();
  v7[3] = &block_descriptor;
  v4 = _Block_copy(v7);

  v5 = _CTServerConnectionRegisterBlockForNotification();
  _Block_release(v4);
  return v5;
}

void thunk for @escaping @callee_guaranteed (@guaranteed CFDictionaryRef?) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t destroy for CoreTelephonyAPIBridge(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[5];

  v5 = a1[7];
}

uint64_t initializeWithCopy for CoreTelephonyAPIBridge(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v3;

  return a1;
}

void *assignWithCopy for CoreTelephonyAPIBridge(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  v6 = a2[3];
  v7 = a1[3];
  a1[2] = a2[2];
  a1[3] = v6;

  v8 = a2[5];
  v9 = a1[5];
  a1[4] = a2[4];
  a1[5] = v8;

  v11 = a2[6];
  v10 = a2[7];
  v12 = a1[7];
  a1[6] = v11;
  a1[7] = v10;

  return a1;
}

uint64_t assignWithTake for CoreTelephonyAPIBridge(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 24);
  *(a1 + 16) = a2[1];

  v6 = *(a1 + 40);
  *(a1 + 32) = a2[2];

  v7 = *(a1 + 56);
  *(a1 + 48) = a2[3];

  return a1;
}

uint64_t getEnumTagSinglePayload for CoreTelephonyAPIBridge(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreTelephonyAPIBridge(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out CTError)()
{
  OUTLINED_FUNCTION_3_4();
  v0();
  return v2;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@unowned CTError)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed CFDictionaryRef?) -> ()(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CFDictionaryRef?) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed OS_dispatch_queue) -> (@unowned OpaquePointer)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out OpaquePointer)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned OpaquePointer)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t TransformationCapability.descriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 40);
  v3 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
  *(a1 + 48) = v5;
}

uint64_t TransformationCapability.TransformationCapabilityType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656D616ELL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465707974 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t TransformationCapability.TransformationCapabilityType.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6465707974;
  }

  else
  {
    return 0x64656D616ELL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransformationCapability.TransformationCapabilityType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TransformationCapability.TransformationCapabilityType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TransformationCapability.TransformationCapabilityType.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = TransformationCapability.TransformationCapabilityType.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransformationCapability.TransformationCapabilityType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransformationCapability.TransformationCapabilityType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized == infix<A>(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TransformationCapability.TransformationCapabilityType.encode(to:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy13SiriUtilities24TransformationCapabilityV0fG4TypeO15TypedCodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMd, "xk");
  v4 = OUTLINED_FUNCTION_5_0(v3);
  v36 = v5;
  v37 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v8, v9);
  v35 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy13SiriUtilities24TransformationCapabilityV0fG4TypeO15NamedCodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMd, &_ss22KeyedEncodingContainerVy13SiriUtilities24TransformationCapabilityV0fG4TypeO15NamedCodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMR);
  v12 = OUTLINED_FUNCTION_5_0(v11);
  v33 = v13;
  v34 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy13SiriUtilities24TransformationCapabilityV0fG4TypeO10CodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMd, &_ss22KeyedEncodingContainerVy13SiriUtilities24TransformationCapabilityV0fG4TypeO10CodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMR);
  OUTLINED_FUNCTION_5_0(v20);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v33 - v27;
  v29 = *v0;
  v30 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v31 = (v22 + 8);
  if (v29)
  {
    OUTLINED_FUNCTION_12_3();
    lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys();
    v32 = v35;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v36 + 8))(v32, v37);
  }

  else
  {
    lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v33 + 8))(v19, v34);
  }

  (*v31)(v28, v20);
  OUTLINED_FUNCTION_14_4();
}

unint64_t lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys()
{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys()
{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys;
  if (!lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys);
  }

  return result;
}

Swift::Int TransformationCapability.TransformationCapabilityType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](v1);
  return Hasher._finalize()();
}

void TransformationCapability.TransformationCapabilityType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_15();
  a22 = v24;
  a23 = v25;
  v82 = v23;
  v27 = v26;
  v79 = v28;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationCapabilityV0fG4TypeO15TypedCodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMd, &_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationCapabilityV0fG4TypeO15TypedCodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMR);
  OUTLINED_FUNCTION_5_0(v81);
  v78 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v74 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationCapabilityV0fG4TypeO15NamedCodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMd, &_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationCapabilityV0fG4TypeO15NamedCodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMR);
  OUTLINED_FUNCTION_5_0(v36);
  v77 = v37;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = v74 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationCapabilityV0fG4TypeO10CodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMd, &_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationCapabilityV0fG4TypeO10CodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMR);
  OUTLINED_FUNCTION_5_0(v44);
  v80 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = v74 - v50;
  v52 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.CodingKeys and conformance TransformationCapability.TransformationCapabilityType.CodingKeys();
  v53 = v82;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v53)
  {
    goto LABEL_10;
  }

  v75 = v36;
  v76 = v43;
  v82 = v27;
  v54 = v81;
  v55 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC13SiriUtilities24TransformationCapabilityV0lM4TypeO10CodingKeys33_A05F0227F7A7562072BFE465F348A638LLO_Tt1g5(v55, 0);
  if (v58 == v59 >> 1)
  {
    v81 = started;
LABEL_9:
    v69 = type metadata accessor for DecodingError();
    swift_allocError();
    v71 = v70;
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v71 = &type metadata for TransformationCapability.TransformationCapabilityType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x1E69E6AF8], v69);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v80 + 8))(v51, v44);
    v27 = v82;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v27);
LABEL_11:
    OUTLINED_FUNCTION_14_4();
    return;
  }

  v74[1] = 0;
  if (v58 < (v59 >> 1))
  {
    v60 = *(v57 + v58);
    v61 = specialized ArraySlice.subscript.getter(v58 + 1, v59 >> 1, started, v57, v58, v59);
    v63 = v62;
    v65 = v64;
    swift_unknownObjectRelease();
    if (v63 == v65 >> 1)
    {
      if (v60)
      {
        OUTLINED_FUNCTION_12_3();
        lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.TypedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.TypedCodingKeys();
        v66 = v35;
        OUTLINED_FUNCTION_9_4(&unk_1F5893740, &a13);
        v67 = v79;
        v68 = v80;
        swift_unknownObjectRelease();
        (*(v78 + 8))(v66, v54);
      }

      else
      {
        a12 = 0;
        lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType.NamedCodingKeys and conformance TransformationCapability.TransformationCapabilityType.NamedCodingKeys();
        v73 = v76;
        OUTLINED_FUNCTION_9_4(&unk_1F5893720, &a12);
        v67 = v79;
        v68 = v80;
        swift_unknownObjectRelease();
        (*(v77 + 8))(v73, v75);
      }

      (*(v68 + 8))(v51, v63);
      *v67 = v60;
      __swift_destroy_boxed_opaque_existential_0(v82);
      goto LABEL_11;
    }

    v81 = v61;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t static TransformationCapability.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a2 + 6);
    v4 = *(a2 + 7);
    v5 = *(a2 + 5);
    v6 = *(a2 + 1);
    v7 = *(a2 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 7);
    v10 = *(a1 + 5);
    v11 = *(a1 + 2);
    v18[0] = *(a1 + 1);
    v18[1] = v11;
    v19 = *(a1 + 24);
    v20 = v10;
    v21 = v8;
    v22 = v9;
    v13[0] = v6;
    v13[1] = v7;
    v14 = *(a2 + 24);
    v15 = v5;
    v16 = v3;
    v17 = v4;
    v2 = static TransformationDescriptor.== infix(_:_:)(v18, v13);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t TransformationCapability.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int TransformationCapability.TransformationCapabilityType.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](a1 & 1);
  return Hasher._finalize()();
}

uint64_t TransformationCapability.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x7470697263736564;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TransformationCapability.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TransformationCapability.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TransformationCapability.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TransformationCapability.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void TransformationCapability.encode(to:)()
{
  OUTLINED_FUNCTION_15();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy13SiriUtilities24TransformationCapabilityV10CodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMd, &_ss22KeyedEncodingContainerVy13SiriUtilities24TransformationCapabilityV10CodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMR);
  OUTLINED_FUNCTION_5_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v19 - v11;
  v13 = *v0;
  v14 = *(v0 + 2);
  v22 = *(v0 + 1);
  v23 = v14;
  v15 = *(v0 + 3);
  v20 = *(v0 + 4);
  v21 = v15;
  v16 = *(v0 + 5);
  v19 = *(v0 + 6);
  v17 = *(v0 + 7);
  v24 = v16;
  v25 = v17;
  v18 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26) = v13;
  lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v26 = v22;
    v27 = v23;
    v28 = v21;
    v29 = v20;
    v30 = v24;
    v31 = v19;
    v32 = v25;
    OUTLINED_FUNCTION_12_3();
    lazy protocol witness table accessor for type TransformationDescriptor and conformance TransformationDescriptor();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v6 + 8))(v12, v4);
  OUTLINED_FUNCTION_14_4();
}

uint64_t TransformationCapability.hash(into:)()
{
  v2 = *v0;
  OUTLINED_FUNCTION_11_4();
  MEMORY[0x1E12A9750]();
  String.hash(into:)();
  MEMORY[0x1E12A9750](v1);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int TransformationCapability.hashValue.getter()
{
  v2 = *v0;
  OUTLINED_FUNCTION_11_4();
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](v2);
  String.hash(into:)();
  MEMORY[0x1E12A9750](v1);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void TransformationCapability.init(from:)()
{
  OUTLINED_FUNCTION_15();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationCapabilityV10CodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMd, &_ss22KeyedDecodingContainerVy13SiriUtilities24TransformationCapabilityV10CodingKeys33_A05F0227F7A7562072BFE465F348A638LLOGMR);
  OUTLINED_FUNCTION_5_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - v12;
  v14 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type TransformationCapability.CodingKeys and conformance TransformationCapability.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    lazy protocol witness table accessor for type TransformationCapability.TransformationCapabilityType and conformance TransformationCapability.TransformationCapabilityType();
    OUTLINED_FUNCTION_7_4();
    v15 = v21;
    OUTLINED_FUNCTION_12_3();
    lazy protocol witness table accessor for type TransformationDescriptor and conformance TransformationDescriptor();
    OUTLINED_FUNCTION_7_4();
    (*(v7 + 8))(v13, v5);
    v16 = v21;
    v17 = v22;
    v18 = v25;
    *v4 = v15;
    *(v4 + 8) = v16;
    *(v4 + 16) = v17;
    v19 = v24;
    *(v4 + 24) = v23;
    *(v4 + 40) = v19;
    *(v4 + 56) = v18;
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_14_4();
}