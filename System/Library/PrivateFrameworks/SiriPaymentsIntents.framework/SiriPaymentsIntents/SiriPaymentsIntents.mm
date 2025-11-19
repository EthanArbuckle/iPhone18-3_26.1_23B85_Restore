uint64_t one-time initialization function for payments()
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, static Logger.payments);
  __swift_project_value_buffer(v3, static Logger.payments);
  v0 = LogConst.subsystem.unsafeMutableAddressor();
  v4 = *v0;
  v5 = *(v0 + 1);

  v1 = LogConst.Category.siriPayments.unsafeMutableAddressor();
  v6 = *v1;
  v7 = *(v1 + 1);

  return Logger.init(subsystem:category:)();
}

uint64_t __swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

__int128 *LogConst.subsystem.unsafeMutableAddressor()
{
  if (one-time initialization token for subsystem != -1)
  {
    swift_once();
  }

  return &static LogConst.subsystem;
}

__int128 *LogConst.Category.siriPayments.unsafeMutableAddressor()
{
  if (one-time initialization token for siriPayments != -1)
  {
    swift_once();
  }

  return &static LogConst.Category.siriPayments;
}

uint64_t Logger.payments.unsafeMutableAddressor()
{
  if (one-time initialization token for payments != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return __swift_project_value_buffer(v0, static Logger.payments);
}

uint64_t static Logger.payments.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = Logger.payments.unsafeMutableAddressor();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static Logger.logForCrash(_:)(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v38 = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
  v42 = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  v44 = partial apply for closure #1 in OSLogArguments.append(_:);
  v46 = partial apply for closure #1 in OSLogArguments.append(_:);
  v49 = partial apply for closure #1 in OSLogArguments.append(_:);
  v60 = 0;
  v61 = 0;
  v29 = 0;
  v34 = type metadata accessor for Logger();
  v32 = *(v34 - 8);
  v33 = v34 - 8;
  v30 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v20 - v30;
  v31 = v20 - v30;
  v60 = MEMORY[0x28223BE20](v35);
  v61 = v3;
  v4 = Logger.payments.unsafeMutableAddressor();
  (*(v32 + 16))(v2, v4, v34);

  v39 = 32;
  v40 = 7;
  v5 = swift_allocObject();
  v6 = v36;
  v41 = v5;
  *(v5 + 16) = v35;
  *(v5 + 24) = v6;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  v37 = 17;
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v7 = swift_allocObject();
  v8 = v41;
  v43 = v7;
  *(v7 + 16) = v38;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v43;
  v50 = v9;
  *(v9 + 16) = v42;
  *(v9 + 24) = v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v48 = _allocateUninitializedArray<A>(_:)();
  v51 = v11;

  v12 = v45;
  v13 = v51;
  *v51 = v44;
  v13[1] = v12;

  v14 = v47;
  v15 = v51;
  v51[2] = v46;
  v15[3] = v14;

  v16 = v50;
  v17 = v51;
  v51[4] = v49;
  v17[5] = v16;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(v53, v54))
  {
    v18 = v29;
    v22 = static UnsafeMutablePointer.allocate(capacity:)();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v23 = createStorage<A>(capacity:type:)(0);
    v24 = createStorage<A>(capacity:type:)(1);
    v25 = &v59;
    v59 = v22;
    v26 = &v58;
    v58 = v23;
    v27 = &v57;
    v57 = v24;
    serialize(_:at:)(2, &v59);
    serialize(_:at:)(1, v25);
    v55 = v44;
    v56 = v45;
    closure #1 in osLogInternal(_:log:type:)(&v55, v25, v26, v27);
    v28 = v18;
    if (v18)
    {

      __break(1u);
    }

    else
    {
      v55 = v46;
      v56 = v47;
      closure #1 in osLogInternal(_:log:type:)(&v55, &v59, &v58, &v57);
      v20[1] = 0;
      v55 = v49;
      v56 = v50;
      closure #1 in osLogInternal(_:log:type:)(&v55, &v59, &v58, &v57);
      _os_log_impl(&dword_2686B1000, v53, v54, "Fatal error: %s", v22, 0xCu);
      destroyStorage<A>(_:count:)(v23, 0, v21);
      destroyStorage<A>(_:count:)(v24, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v22, MEMORY[0x277D84B78]);
    }
  }

  else
  {
  }

  MEMORY[0x277D82BD8](v53);
  (*(v32 + 8))(v31, v34);

  return v35;
}

uint64_t one-time initialization function for subsystem()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("com.apple.siri.payments", 0x17uLL, 1);
  result = v1._countAndFlagsBits;
  static LogConst.subsystem = v1;
  return result;
}

uint64_t static LogConst.subsystem.getter()
{
  v0 = LogConst.subsystem.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t one-time initialization function for siriPayments()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SiriPayments", 0xCuLL, 1);
  result = v1._countAndFlagsBits;
  static LogConst.Category.siriPayments = v1;
  return result;
}

uint64_t sub_2686B3D04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in static Logger.logForCrash(_:)()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  implicit closure #1 in static Logger.logForCrash(_:)();
  return result;
}

uint64_t static LogConst.Category.siriPayments.getter()
{
  v0 = LogConst.Category.siriPayments.unsafeMutableAddressor();
  v2 = *v0;
  v3 = *(v0 + 1);

  return v2;
}

uint64_t protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *(MEMORY[0x277D5BC58] + 4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return MEMORY[0x2821BADD0](a1, a2, a3);
}

uint64_t protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 24);
  *(v3 + 16) = *v2;
  v9 = v3 + 16;

  if (v1)
  {
    v6 = *(*v9 + 8);
  }

  else
  {
    v5 = a1;
    v6 = *(*v9 + 8);
  }

  return v6(v5);
}

uint64_t protocol witness for TCCResponseProviding.confirmationRejected(deviceState:catOverrides:) in conformance TCCResponses(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(MEMORY[0x277D5BC60] + 4);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return MEMORY[0x2821BADD8](a1, a2);
}

uint64_t protocol witness for TCCResponseProviding.confirmationCancelled(deviceState:catOverrides:) in conformance TCCResponses(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(MEMORY[0x277D5BC68] + 4);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = protocol witness for TCCResponseProviding.promptToEnableApp(appDisplayInfo:deviceState:catOverrides:) in conformance TCCResponses;

  return MEMORY[0x2821BADE0](a1, a2);
}

id @nonobjc INRequestPaymentIntentResponse.paymentRecord.getter()
{
  MEMORY[0x277D82BE0](v0);
  v2 = [v0 paymentRecord];
  MEMORY[0x277D82BD8](v0);
  return v2;
}

uint64_t variable initialization expression of PaymentsFlow.restrictionGuards()
{
  v3[1] = 0;
  v8 = type metadata accessor for UnlockDevicePolicy();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v7 = v3 - v4;
  v11 = type metadata accessor for CommonFlowGuard();
  v10 = _allocateUninitializedArray<A>(_:)();
  v9 = v0;
  static UnlockDevicePolicy.requiringDeviceUnlock.getter();
  static CommonFlowGuard.ensuringDeviceIsAuthenticated(using:)();
  (*(v5 + 8))(v7, v8);
  v1 = *(*(v11 - 8) + 72);
  static CommonFlowGuard.disallowInSharingMode.getter();
  result = v10;
  _finalizeUninitializedArray<A>(_:)();
  return result;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSJSONWritingOptions()
{
  lazy protocol witness table accessor for type NSJSONWritingOptions and conformance NSJSONWritingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSJSONWritingOptions()
{
  lazy protocol witness table accessor for type NSJSONWritingOptions and conformance NSJSONWritingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSJSONWritingOptions()
{
  lazy protocol witness table accessor for type NSJSONWritingOptions and conformance NSJSONWritingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSJSONWritingOptions()
{
  lazy protocol witness table accessor for type NSJSONWritingOptions and conformance NSJSONWritingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSJSONReadingOptions()
{
  lazy protocol witness table accessor for type NSJSONReadingOptions and conformance NSJSONReadingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSJSONReadingOptions()
{
  lazy protocol witness table accessor for type NSJSONReadingOptions and conformance NSJSONReadingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSJSONReadingOptions()
{
  lazy protocol witness table accessor for type NSJSONReadingOptions and conformance NSJSONReadingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSJSONReadingOptions()
{
  lazy protocol witness table accessor for type NSJSONReadingOptions and conformance NSJSONReadingOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance INBalanceType(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  INSiriAuthorizationStatus.init(rawValue:)();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance INBalanceType(void *a1@<X8>)
{
  v2 = *v1;
  INBalanceType.rawValue.getter();
  *a1 = v3;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSPropertyListMutabilityOptions()
{
  lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.init()();
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance NSPropertyListMutabilityOptions()
{
  lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formUnion(_:)();
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance NSPropertyListMutabilityOptions()
{
  lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formIntersection(_:)();
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance NSPropertyListMutabilityOptions()
{
  lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions();
  lazy protocol witness table accessor for type UInt and conformance UInt();
  return OptionSet<>.formSymmetricDifference(_:)();
}

NSJSONWritingOptions protocol witness for OptionSet.init(rawValue:) in conformance NSJSONWritingOptions@<X0>(Swift::UInt *a1@<X0>, NSJSONWritingOptions *a2@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

NSJSONWritingOptions protocol witness for RawRepresentable.init(rawValue:) in conformance NSJSONWritingOptions@<X0>(Swift::UInt *a1@<X0>, uint64_t a2@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

NSJSONWritingOptions protocol witness for RawRepresentable.rawValue.getter in conformance NSJSONWritingOptions@<X0>(NSJSONWritingOptions *a1@<X8>)
{
  result = NSJSONWritingOptions.init(rawValue:)(*v1);
  *a1 = result;
  return result;
}

uint64_t createStorage<A>(capacity:type:)(uint64_t a1)
{
  if (a1)
  {
    return static UnsafeMutablePointer.allocate(capacity:)();
  }

  else
  {
    return 0;
  }
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t destroyStorage<A>(_:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (result)
  {
    UnsafeMutablePointer.deinitialize(count:)();
    return MEMORY[0x26D620BD0](v3, a3);
  }

  return result;
}

void *closure #1 in OSLogArguments.append(_:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = a4();
  getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, a3);
  v8 = *a1;

  UnsafeMutableRawBufferPointer.copyMemory(from:)();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  v14 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x277D840A0];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      outlined init with copy of Any(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(uint64_t result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        _sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(v22, v17, v16);
        UnsafeMutableRawBufferPointer.subscript.setter();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = _StringGuts._allocateForDeconstruct()(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = _StringObject.sharedUTF8.getter();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

char *_sSv16initializeMemory2as4from5countSpyxGxm_SPyxGSitlFs5UInt8V_Ttgq5(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, uint64_t a2)
{
  v7 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  inited = swift_initStackObject();
  v3 = _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(inited, 1);
  *v4 = 0;
  specialized _finalizeUninitializedArray<A>(_:)();
  specialized Array.append<A>(contentsOf:)(v3);

  v8 = specialized Array.count.getter(v7);

  result = v8;
  if (!__OFSUB__(v8, 1))
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = String.UTF8View._foreignCount()();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v10 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
    return _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        specialized UnsafeMutablePointer.initialize(from:count:)(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = _StringObject.sharedUTF8.getter();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      specialized UnsafeMutablePointer.initialize(from:count:)(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = _StringGuts._foreignCopyUTF8(into:)();
  if (v2)
  {
LABEL_29:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  outlined destroy of String.UTF8View(v17);
  return v10;
}

uint64_t _sSa13_adoptStorage_5countSayxG_SpyxGts016_ContiguousArrayB0CyxGn_SitFZs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  v20 = specialized Array.count.getter(a1);
  v2 = specialized Array.count.getter(*v1);
  v21 = v2 + v20;
  if (__OFADD__(v2, v20))
  {
    goto LABEL_31;
  }

  v16 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v21 > *(*v19 + 24) >> 1)
  {
    if (*(*v19 + 16) < v21)
    {
      v15 = v21;
    }

    else
    {
      v15 = *(*v19 + 16);
    }

    v14 = *v19;

    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v14);
    v5 = *v19;
    *v19 = v4;
  }

  v6 = *(*v19 + 16);
  v12 = (*v19 + 32 + v6);
  v7 = *(*v19 + 24) >> 1;
  v13 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    goto LABEL_32;
  }

  if (v13 < 0)
  {
LABEL_30:
    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!specialized Array._getCount()(a1))
  {
LABEL_21:

    if (v20 <= 0)
    {
      goto LABEL_28;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_30;
  }

  if (v13 < v20)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  specialized UnsafeMutablePointer.initialize(from:count:)((a1 + 32), v20, v12);

  swift_unknownObjectRelease();
  if (v20 <= 0)
  {
    goto LABEL_28;
  }

  v9 = *(*v19 + 16);
  v11 = v9 + v20;
  if (!__OFADD__(v9, v20))
  {
    *(*v19 + 16) = v11;
LABEL_28:
    Array._endMutation()();
    return;
  }

LABEL_33:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];

    return v3;
  }
}

void *specialized UnsafeMutablePointer.initialize(from:count:)(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x26D6207A0](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = String.UTF16View.index(_:offsetBy:)();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t _ss15ContiguousArrayVAByxGycfCs5UInt8V_Ttgq5()
{
  v1 = MEMORY[0x277D84F90];

  return v1;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v4, v6);
  if (v7)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v4, v5 + 32);

    *(a4 + 16) = 0;
  }

  else
  {

    specialized UnsafeMutablePointer.initialize(from:count:)((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2686B6F88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)()
{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

{
  v1 = *(v0 + 24);
  return implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)(*(v0 + 16));
}

uint64_t sub_2686B6FD4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v6;
}

uint64_t type metadata accessor for INAccountType()
{
  v4 = lazy cache variable for type metadata for INAccountType;
  if (!lazy cache variable for type metadata for INAccountType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for INAccountType);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for INSiriAuthorizationStatus()
{
  v4 = lazy cache variable for type metadata for INSiriAuthorizationStatus;
  if (!lazy cache variable for type metadata for INSiriAuthorizationStatus)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for INSiriAuthorizationStatus);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for NSPropertyListMutabilityOptions()
{
  v4 = lazy cache variable for type metadata for NSPropertyListMutabilityOptions;
  if (!lazy cache variable for type metadata for NSPropertyListMutabilityOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSPropertyListMutabilityOptions);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for INPersonHandleType()
{
  v4 = lazy cache variable for type metadata for INPersonHandleType;
  if (!lazy cache variable for type metadata for INPersonHandleType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for INPersonHandleType);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for INBalanceType()
{
  v4 = lazy cache variable for type metadata for INBalanceType;
  if (!lazy cache variable for type metadata for INBalanceType)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for INBalanceType);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for NSJSONReadingOptions()
{
  v4 = lazy cache variable for type metadata for NSJSONReadingOptions;
  if (!lazy cache variable for type metadata for NSJSONReadingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSJSONReadingOptions);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for NSJSONWritingOptions()
{
  v4 = lazy cache variable for type metadata for NSJSONWritingOptions;
  if (!lazy cache variable for type metadata for NSJSONWritingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSJSONWritingOptions);
      return v1;
    }
  }

  return v4;
}

unint64_t lazy protocol witness table accessor for type NSJSONWritingOptions and conformance NSJSONWritingOptions()
{
  v2 = lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions)
  {
    type metadata accessor for NSJSONWritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions)
  {
    type metadata accessor for NSJSONWritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions)
  {
    type metadata accessor for NSJSONWritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions)
  {
    type metadata accessor for NSJSONWritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions)
  {
    type metadata accessor for NSJSONWritingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONWritingOptions and conformance NSJSONWritingOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NSJSONReadingOptions and conformance NSJSONReadingOptions()
{
  v2 = lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions)
  {
    type metadata accessor for NSJSONReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions)
  {
    type metadata accessor for NSJSONReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions)
  {
    type metadata accessor for NSJSONReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions)
  {
    type metadata accessor for NSJSONReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions;
  if (!lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions)
  {
    type metadata accessor for NSJSONReadingOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSJSONReadingOptions and conformance NSJSONReadingOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions()
{
  v2 = lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions;
  if (!lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions)
  {
    type metadata accessor for NSPropertyListMutabilityOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions;
  if (!lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions)
  {
    type metadata accessor for NSPropertyListMutabilityOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions;
  if (!lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions)
  {
    type metadata accessor for NSPropertyListMutabilityOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions;
  if (!lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions)
  {
    type metadata accessor for NSPropertyListMutabilityOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions;
  if (!lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions)
  {
    type metadata accessor for NSPropertyListMutabilityOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type NSPropertyListMutabilityOptions and conformance NSPropertyListMutabilityOptions);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus()
{
  v2 = lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus;
  if (!lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus)
  {
    type metadata accessor for INSiriAuthorizationStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus;
  if (!lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus)
  {
    type metadata accessor for INSiriAuthorizationStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus;
  if (!lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus)
  {
    type metadata accessor for INSiriAuthorizationStatus();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INSiriAuthorizationStatus and conformance INSiriAuthorizationStatus);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type UInt and conformance UInt()
{
  v2 = lazy protocol witness table cache variable for type UInt and conformance UInt;
  if (!lazy protocol witness table cache variable for type UInt and conformance UInt)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type UInt and conformance UInt);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type INBalanceType and conformance INBalanceType()
{
  v2 = lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType;
  if (!lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType)
  {
    type metadata accessor for INBalanceType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType;
  if (!lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType)
  {
    type metadata accessor for INBalanceType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INBalanceType and conformance INBalanceType);
    return WitnessTable;
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type INPersonHandleType and conformance INPersonHandleType()
{
  v2 = lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType;
  if (!lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType)
  {
    type metadata accessor for INPersonHandleType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType;
  if (!lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType)
  {
    type metadata accessor for INPersonHandleType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type INPersonHandleType and conformance INPersonHandleType);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v3 = a1[3];
  if ((*(*(v3 - 8) + 80) & 0x20000) == 0)
  {
    return (*(*(v3 - 8) + 8))(a1);
  }

  v2 = *a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t outlined destroy of String.UTF8View(uint64_t a1)
{
  v1 = *(a1 + 8);

  return a1;
}

uint64_t type metadata accessor for NSStringCompareOptions()
{
  v4 = lazy cache variable for type metadata for NSStringCompareOptions;
  if (!lazy cache variable for type metadata for NSStringCompareOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSStringCompareOptions);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for NSDataBase64EncodingOptions()
{
  v4 = lazy cache variable for type metadata for NSDataBase64EncodingOptions;
  if (!lazy cache variable for type metadata for NSDataBase64EncodingOptions)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for NSDataBase64EncodingOptions);
      return v1;
    }
  }

  return v4;
}

uint64_t SearchForAccountsContinueInAppStrategy.__allocating_init()()
{
  v31 = 0;
  v17 = 0;
  v7 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v16 = &v6 - v7;
  v12 = type metadata accessor for Globals();
  v8 = v36;
  default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v36);
  v9 = &v35;
  default argument 1 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v10 = &v34;
  default argument 2 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v11 = &v33;
  default argument 3 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)();
  v0 = Globals.__allocating_init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)(v8, v9, v10, v11);
  v25 = v37;
  v37[3] = v12;
  v37[4] = &protocol witness table for Globals;
  v37[0] = v0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
  v15 = v32;
  outlined init with copy of GlobalsProviding(v25, v32);
  type metadata accessor for PaymentsBaseCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v14 = CATWrapper.__allocating_init(options:globals:)();
  v13 = type metadata accessor for INSearchForAccountsIntent();
  v1 = type metadata accessor for INSearchForAccountsIntentResponse();
  v2 = default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(v13, v1);
  v24 = PaymentsErrorTemplateProvider.__allocating_init(globals:catFamily:searchForAccountsCATs:)(v15, v14, v2);
  v31 = v24;
  v23 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  type metadata accessor for SearchForAccountsCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  v18 = CATWrapper.__allocating_init(options:globals:)();
  NSJSONWritingOptions.init(rawValue:)(v18);
  v19 = v29;
  v29[3] = &type metadata for CommonLabelsProvider;
  v29[4] = &protocol witness table for CommonLabelsProvider;
  v3 = type metadata accessor for SiriKitContactResolver();
  v20 = v28;
  v28[3] = v3;
  v28[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(v28);
  SiriKitContactResolver.init()();

  v21 = &v27;
  v27 = v24;
  v4 = lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>();
  v26 = SearchForAccountsContinueInAppStrategy.__allocating_init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v23, v18, v19, v20, v21, v22, v4);

  v37[5] = v26;

  __swift_destroy_boxed_opaque_existential_0(v25);

  return v26;
}

uint64_t default argument 0 of Globals.init(contactResolver:deviceState:aceServiceInvoker:outputPublisher:)@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for SiriKitContactResolver();
  a1[4] = &protocol witness table for SiriKitContactResolver;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return SiriKitContactResolver.init()();
}

uint64_t outlined init with copy of GlobalsProviding(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t default argument 2 of PaymentsErrorTemplateProvider.init(globals:catFamily:searchForAccountsCATs:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  v6 = 0;
  v4 = (*(*(type metadata accessor for CATOption() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](0);
  v5 = &v3 - v4;
  type metadata accessor for SearchForAccountsCATs();
  default argument 0 of CATWrapper.init(options:globals:)();
  return CATWrapper.__allocating_init(options:globals:)();
}

unint64_t type metadata accessor for INSearchForAccountsIntent()
{
  v2 = lazy cache variable for type metadata for INSearchForAccountsIntent;
  if (!lazy cache variable for type metadata for INSearchForAccountsIntent)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INSearchForAccountsIntent);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for INSearchForAccountsIntentResponse()
{
  v2 = lazy cache variable for type metadata for INSearchForAccountsIntentResponse;
  if (!lazy cache variable for type metadata for INSearchForAccountsIntentResponse)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for INSearchForAccountsIntentResponse);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  v3 = result;
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
    v1 = swift_allocBox();
    result = v2;
    *v3 = v1;
  }

  return result;
}

uint64_t SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)(uint64_t a1, uint64_t a2)
{
  v3[26] = v2;
  v3[25] = a2;
  v3[24] = a1;
  v3[17] = v3;
  v3[18] = 0;
  v3[19] = 0;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v6 = type metadata accessor for TemplatingResult();
  v3[29] = v6;
  v12 = *(v6 - 8);
  v3[30] = v12;
  v7 = *(v12 + 64) + 15;
  v3[31] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[32] = v8;
  v13 = *(v8 - 8);
  v3[33] = v13;
  v9 = *(v13 + 64) + 15;
  v3[34] = swift_task_alloc();
  v3[18] = a2;
  v3[19] = v2;
  v10 = v3[17];

  return MEMORY[0x2822009F8](SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:), 0);
}

uint64_t SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)()
{
  v1 = v0[34];
  v23 = v0[33];
  v24 = v0[32];
  v0[17] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v23 + 16))(v1, v2, v24);
  v26 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v27 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v26, v25))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v19 = createStorage<A>(capacity:type:)(0);
    v20 = createStorage<A>(capacity:type:)(0);
    *(v22 + 160) = buf;
    *(v22 + 168) = v19;
    *(v22 + 176) = v20;
    serialize(_:at:)(0, (v22 + 160));
    serialize(_:at:)(0, (v22 + 160));
    *(v22 + 184) = v27;
    v21 = swift_task_alloc();
    v21[2] = v22 + 160;
    v21[3] = v22 + 168;
    v21[4] = v22 + 176;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v26, v25, "#SearchForAccountsContinueInAppStrategy makeContinueInAppResponse", buf, 2u);
    destroyStorage<A>(_:count:)(v19, 0, v17);
    destroyStorage<A>(_:count:)(v20, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v9 = *(v22 + 272);
  v10 = *(v22 + 256);
  v15 = *(v22 + 224);
  v11 = *(v22 + 208);
  v12 = *(v22 + 200);
  v8 = *(v22 + 264);
  MEMORY[0x277D82BD8](v26);
  (*(v8 + 8))(v9, v10);

  *(v22 + 280) = *(v11 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMd, &_s11SiriKitFlow22IntentResolutionRecordVySo019INSearchForAccountsD0CSo0ghiD8ResponseCGMR);
  v13 = IntentResolutionRecord.intentResponse.getter();
  v14 = [v13 code];
  MEMORY[0x277D82BD8](v13);
  INRequestPaymentIntentResponseCode.speakable.getter(v14);
  v3 = type metadata accessor for SpeakableString();
  (*(*(v3 - 8) + 56))(v15, 0, 1);
  IntentResolutionRecord.app.getter();
  v16 = App.sirikitApp.getter();
  *(v22 + 288) = v16;

  v4 = swift_task_alloc();
  *(v22 + 296) = v4;
  *v4 = *(v22 + 136);
  v4[1] = SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  v5 = *(v22 + 248);
  v6 = *(v22 + 224);

  return SearchForAccountsCATs.errorWithCode(errorCode:app:)(v5, v6, v16);
}

{
  v10 = *v1;
  v2 = *(*v1 + 296);
  v10[17] = *v1;
  v11 = v10 + 17;
  v10[38] = v0;

  if (v0)
  {
    v6 = *v11;
    v5 = SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  else
  {
    v3 = v10[36];
    v9 = v10[35];
    v8 = v10[28];

    outlined destroy of SpeakableString?(v8);

    v4 = *v11;
    v5 = SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:);
  }

  return MEMORY[0x2822009F8](v5, 0);
}

{
  v11 = v0[34];
  v12 = v0[31];
  v9 = v0[30];
  v10 = v0[29];
  v13 = v0[28];
  v14 = v0[27];
  v7 = v0[26];
  v8 = v0[24];
  v0[17] = v0;

  outlined init with copy of GlobalsProviding(v7 + 104, (v0 + 2));

  v6 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  (*(v5 + 16))(v6);

  BaseStrategy.ttsEnabled.getter();

  v1 = type metadata accessor for NLContextUpdate();
  (*(*(v1 - 8) + 56))(v14, 1);
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  default argument 3 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  _swift_stdlib_has_malloc_size();
  default argument 7 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v8[3] = type metadata accessor for AceOutput();
  v8[4] = MEMORY[0x277D5C1D8];
  __swift_allocate_boxed_opaque_existential_1(v8);
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();

  outlined destroy of FlowActivity?(v0 + 12);
  outlined destroy of NLContextUpdate?(v14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v9 + 8))(v12, v10);

  v2 = *(v0[17] + 8);
  v3 = v0[17];

  return v2();
}

{
  v1 = v0[36];
  v7 = v0[35];
  v8 = v0[34];
  v9 = v0[31];
  v10 = v0[28];
  v11 = v0[27];
  v0[17] = v0;

  outlined destroy of SpeakableString?(v10);

  v2 = v0;
  v3 = *(v0[17] + 8);
  v4 = v0[17];
  v5 = v2[38];

  return v3();
}

unint64_t lazy protocol witness table accessor for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>()
{
  v2 = lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>;
  if (!lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMd, &_s19SiriPaymentsIntents0B21ErrorTemplateProviderCySo25INSearchForAccountsIntentCSo0ghiJ8ResponseCGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type PaymentsErrorTemplateProvider<INSearchForAccountsIntent, INSearchForAccountsIntentResponse> and conformance PaymentsErrorTemplateProvider<A, B>);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v6 = *a1;
  if (!*a1)
  {
    v3 = *a2;
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v6;
}

uint64_t SearchForAccountsContinueInAppStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = a4;
  v20 = a5;
  v23 = a6;
  v18 = a7;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v38 = a6;
  v21 = *(a6 - 8);
  v22 = a6 - 8;
  v14 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v13 - v14;
  v36 = MEMORY[0x28223BE20](a1);
  v35 = v8;
  v34 = v9;
  v33 = v10;
  v32 = v11;
  v37 = v7;
  v19 = v31;
  outlined init with copy of GlobalsProviding(v36, v31);

  v15 = v30;
  outlined init with copy of GlobalsProviding(v25, v30);
  v16 = v29;
  outlined init with copy of GlobalsProviding(v24, v29);
  (*(v21 + 16))(v17, v20, v23);
  v28 = BaseStrategy.init<A>(globals:catFamily:commonLabelsProvider:contactResolver:errorProvider:)(v19, v26, v15, v16, v17, v23, v18);

  v37 = v28;
  (*(v21 + 8))(v20, v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v25);

  __swift_destroy_boxed_opaque_existential_0(v27);

  return v28;
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy;

  return SearchForAccountsContinueInAppStrategy.makeContinueInAppResponse(intentResolutionRecord:)(a1, a2);
}

uint64_t protocol witness for ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:) in conformance SearchForAccountsContinueInAppStrategy()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t outlined destroy of SpeakableString?(uint64_t a1)
{
  v3 = type metadata accessor for SpeakableString();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t *outlined destroy of FlowActivity?(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a1;
}

uint64_t outlined destroy of NLContextUpdate?(uint64_t a1)
{
  v3 = type metadata accessor for NLContextUpdate();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]()
{
  v2 = lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [(_:_:_:)] and conformance [A]);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for SearchForAccountsContinueInAppStrategy()
{
  v1 = type metadata singleton initialization cache for SearchForAccountsContinueInAppStrategy;
  if (!type metadata singleton initialization cache for SearchForAccountsContinueInAppStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t type metadata completion function for SearchForAccountsContinueInAppStrategy()
{
  inited = swift_initClassMetadata2();
  if (!inited)
  {
    return 0;
  }

  return inited;
}

unint64_t lazy protocol witness table accessor for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy()
{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy;
  if (!lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy)
  {
    type metadata accessor for SearchForAccountsContinueInAppStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy;
  if (!lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy)
  {
    type metadata accessor for SearchForAccountsContinueInAppStrategy();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type SearchForAccountsContinueInAppStrategy and conformance SearchForAccountsContinueInAppStrategy);
    return WitnessTable;
  }

  return v2;
}

uint64_t *ConfirmationViewBuilder.init(commonLabelsProvider:deviceState:slotDisplayValueProvider:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  memset(__b, 0, sizeof(__b));
  v14 = a1;
  v13 = a2;
  v12 = a3;
  outlined init with copy of GlobalsProviding(a1, v11);
  outlined init with take of CommonLabelsProviding(v11, __b);
  outlined init with copy of GlobalsProviding(a2, v10);
  outlined init with take of CommonLabelsProviding(v10, &__b[5]);
  outlined init with copy of GlobalsProviding(a3, v9);
  outlined init with take of CommonLabelsProviding(v9, &__b[10]);
  outlined init with copy of ConfirmationViewBuilder(__b, a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of ConfirmationViewBuilder(__b);
}

void *outlined init with copy of ConfirmationViewBuilder(void *a1, void *a2)
{
  v2 = a1[3];
  a2[3] = v2;
  a2[4] = a1[4];
  (**(v2 - 8))();
  v3 = a1[8];
  a2[8] = v3;
  a2[9] = a1[9];
  (**(v3 - 8))((a2 + 5), (a1 + 5));
  v4 = a1[13];
  a2[13] = v4;
  a2[14] = a1[14];
  (**(v4 - 8))((a2 + 10), (a1 + 10));
  return a2;
}

uint64_t *outlined destroy of ConfirmationViewBuilder(uint64_t *a1)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  __swift_destroy_boxed_opaque_existential_0(a1 + 5);
  __swift_destroy_boxed_opaque_existential_0(a1 + 10);
  return a1;
}

BOOL static ConfirmationViewBuilder.WalletAppLaunchAction.__derived_enum_equals(_:_:)(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t lazy protocol witness table accessor for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction()
{
  v2 = lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction;
  if (!lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction);
    return WitnessTable;
  }

  return v2;
}

{
  v2 = lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction;
  if (!lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type ConfirmationViewBuilder.WalletAppLaunchAction and conformance ConfirmationViewBuilder.WalletAppLaunchAction);
    return WitnessTable;
  }

  return v2;
}

id static ConfirmationViewBuilder.makeWalletAppLaunchButton(launchAction:buttonText:deviceState:)(unsigned int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v33 = 0;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v24 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x28223BE20](v28);
  v25 = &v14 - v24;
  v26 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v4);
  v27 = &v14 - v26;
  v33 = &v14 - v26;
  v32 = v6;
  v30 = v7;
  v31 = v8;
  v29 = v9;
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v27, 1);
  if (v28)
  {
    if (v28 == 1)
    {
      v12 = String.APPLE_CARD_INFO_LAUNCH_URL.unsafeMutableAddressor();
      v17 = *v12;
      v18 = *(v12 + 1);

      URL.init(string:)();

      outlined assign with take of URL?(v25, v27);
    }
  }

  else
  {
    v11 = String.APPLE_CARD_APPLY_LAUNCH_URL.unsafeMutableAddressor();
    v19 = *v11;
    v20 = *(v11 + 1);

    URL.init(string:)();

    outlined assign with take of URL?(v25, v27);
  }

  v15 = static AppUtil.walletApp.getter();
  outlined init with copy of URL?(v27, v25);
  v16 = static ConfirmationViewBuilder.makeAppLaunchButton(for:buttonText:punchoutURL:deviceState:)(v15, v21, v22, v25, v23);
  outlined destroy of URL?(v25);

  outlined destroy of URL?(v27);
  return v16;
}

void *outlined init with copy of URL?(const void *a1, void *a2)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

id static ConfirmationViewBuilder.makeAppLaunchButton(for:buttonText:punchoutURL:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, void *a5)
{
  v43 = a1;
  v37 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v50 = 0;
  v48 = 0;
  v49 = 0;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v32 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v5);
  v33 = v16 - v32;
  v38 = type metadata accessor for Locale();
  v39 = *(v38 - 8);
  v40 = v38 - 8;
  v41 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v43);
  v42 = v16 - v41;
  v50 = v6;
  v48 = v7;
  v49 = v8;
  v47 = v9;
  v46 = v10;

  if (v43)
  {
    v31 = v43;
    v28 = v43;
    v44 = v43;
    v27 = v36[3];
    v26 = v36[4];
    __swift_project_boxed_opaque_existential_1(v36, v27);
    dispatch thunk of DeviceState.siriLocale.getter();
    v29 = static AppUtil.buildPunchout(for:locale:)();
    (*(v39 + 8))(v42, v38);
    MEMORY[0x277D82BE0](v29);
    v45 = v29;

    v30 = v29;
  }

  else
  {
    type metadata accessor for SAUIAppPunchOut();
    v25 = SAUIAppPunchOut.__allocating_init()();
    MEMORY[0x277D82BE0](v25);
    v45 = v25;
    v30 = v25;
  }

  v21 = v30;
  outlined init with copy of URL?(v35, v33);
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v11 = (*(v23 + 48))(v33, 1);
  if (v11 == 1)
  {
    v20 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()((v11 - 1));
    v19 = v12;
    (*(v23 + 8))(v33, v22);
    v20 = v19;
  }

  [v21 setPunchOutUri_];
  MEMORY[0x277D82BD8](v16[0]);
  type metadata accessor for SAUIButton();
  v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v13 = _allocateUninitializedArray<A>(_:)();
  *v14 = v21;
  _finalizeUninitializedArray<A>(_:)();
  v17 = v13;

  v18 = SAUIButton.init(commands:text:)(v17, v37, v34);
  MEMORY[0x277D82BD8](v45);
  return v18;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *outlined assign with take of URL?(const void *a1, void *a2)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

unint64_t type metadata accessor for SAUIAppPunchOut()
{
  v2 = lazy cache variable for type metadata for SAUIAppPunchOut;
  if (!lazy cache variable for type metadata for SAUIAppPunchOut)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIAppPunchOut);
    return ObjCClassMetadata;
  }

  return v2;
}

id static ConfirmationViewBuilder.makeWebPunchoutButton(for:buttonText:deviceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = a1;
  v10[1] = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v10 - v12;
  v21 = MEMORY[0x28223BE20](v11);
  v22 = v5;
  v19 = v6;
  v20 = v7;
  v18 = v8;
  URL.init(string:)();
  v17 = static ConfirmationViewBuilder.makeAppLaunchButton(for:buttonText:punchoutURL:deviceState:)(0, v13, v14, v16, v15);
  outlined destroy of URL?(v16);
  return v17;
}

unint64_t type metadata accessor for SAUIButton()
{
  v2 = lazy cache variable for type metadata for SAUIButton;
  if (!lazy cache variable for type metadata for SAUIButton)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIButton);
    return ObjCClassMetadata;
  }

  return v2;
}

id static ConfirmationViewBuilder.makeWatchAppLaunchButton(for:buttonText:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for SASTButtonItem();
  v13 = SAUIAppPunchOut.__allocating_init()();
  v14 = App.appIdentifier.getter();
  v15 = v4;
  if (v4)
  {
    type metadata accessor for SASTCommandTemplateAction();
    swift_getObjectType();
    MEMORY[0x277D82BE0](a4);

    v16 = SASTCommandTemplateAction.init(intent:appId:)(a4, v14, v15);
    MEMORY[0x277D82BE0](v16);
    [v13 setAction_];
    swift_unknownObjectRelease();
    MEMORY[0x277D82BD8](v16);
  }

  type metadata accessor for SAUIDecoratedText();
  v18 = SAUIAppPunchOut.__allocating_init()();

  v7 = MEMORY[0x26D620690](a2, a3);

  [v18 setText_];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BE0](v18);
  [v13 setDecoratedLabel_];
  MEMORY[0x277D82BD8](v18);
  type metadata accessor for SASTItemGroup();
  v17 = SAUIAppPunchOut.__allocating_init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
  _allocateUninitializedArray<A>(_:)();
  v8 = v5;
  MEMORY[0x277D82BE0](v13);
  *v8 = v13;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setTemplateItems_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v13);
  return v17;
}

unint64_t type metadata accessor for SASTButtonItem()
{
  v2 = lazy cache variable for type metadata for SASTButtonItem;
  if (!lazy cache variable for type metadata for SASTButtonItem)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTButtonItem);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SAUIDecoratedText()
{
  v2 = lazy cache variable for type metadata for SAUIDecoratedText;
  if (!lazy cache variable for type metadata for SAUIDecoratedText)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SAUIDecoratedText);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SASTItemGroup()
{
  v2 = lazy cache variable for type metadata for SASTItemGroup;
  if (!lazy cache variable for type metadata for SASTItemGroup)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTItemGroup);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t type metadata accessor for SASTCommandTemplateAction()
{
  v2 = lazy cache variable for type metadata for SASTCommandTemplateAction;
  if (!lazy cache variable for type metadata for SASTCommandTemplateAction)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTCommandTemplateAction);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[21] = v8;
  v9[20] = a8;
  v9[19] = a7;
  v9[18] = a6;
  v9[17] = a5;
  v9[16] = a4;
  v9[15] = a3;
  v9[14] = a2;
  v9[13] = a1;
  v9[7] = v9;
  v9[8] = 0;
  v9[9] = 0;
  v9[10] = 0;
  v9[11] = 0;
  v9[12] = 0;
  v9[8] = a1;
  v9[9] = a2;
  v9[10] = a3;
  v9[11] = a4;
  v9[12] = v8;
  v10 = v9[7];
  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)()
{
  v1 = v0[21];
  v0[7] = v0;
  outlined init with copy of GlobalsProviding(v1 + 40, (v0 + 2));
  v24 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v25 = dispatch thunk of DeviceState.isWatch.getter();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (v25)
  {
    v2 = swift_task_alloc();
    v23[22] = v2;
    *v2 = v23[7];
    v2[1] = ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:);
    v3 = v23[21];
    v4 = v23[20];
    v5 = v23[19];
    v6 = v23[18];
    v7 = v23[17];
    v8 = v23[16];
    v9 = v23[15];
    v10 = v23[14];
    v11 = v23[13];

    return ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)(v11, v10, v9, v8, v7, v6, v5, v4);
  }

  else
  {
    v13 = swift_task_alloc();
    v23[23] = v13;
    *v13 = v23[7];
    v13[1] = ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:);
    v14 = v23[21];
    v15 = v23[20];
    v16 = v23[19];
    v17 = v23[18];
    v18 = v23[17];
    v19 = v23[16];
    v20 = v23[15];
    v21 = v23[14];
    v22 = v23[13];

    return ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:)(v22, v21, v20, v19, v18, v17, v16, v15);
  }
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1)
{
  v8 = *v2;
  v3 = *(*v2 + 176);
  *(v8 + 56) = *v2;
  v9 = v8 + 56;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v9 + 8);
  }

  return v5(v4);
}

{
  v8 = *v2;
  v3 = *(*v2 + 184);
  *(v8 + 56) = *v2;
  v9 = v8 + 56;

  if (v1)
  {
    v5 = *(*v9 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v9 + 8);
  }

  return v5(v4);
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[106] = v8;
  v9[105] = a8;
  v9[104] = a7;
  v9[103] = a6;
  v9[102] = a5;
  v9[101] = a4;
  v9[100] = a3;
  v9[99] = a2;
  v9[98] = a1;
  v9[58] = v9;
  v9[59] = 0;
  v9[60] = 0;
  v9[61] = 0;
  v9[62] = 0;
  v9[63] = 0;
  v9[64] = 0;
  v9[65] = 0;
  v9[66] = 0;
  v9[67] = 0;
  v9[68] = 0;
  v9[73] = 0;
  v9[74] = 0;
  v9[75] = 0;
  v9[76] = 0;
  v9[44] = 0;
  v9[45] = 0;
  v9[78] = 0;
  v9[79] = 0;
  v9[46] = 0;
  v9[47] = 0;
  v9[80] = 0;
  v9[81] = 0;
  v9[48] = 0;
  v9[49] = 0;
  v9[82] = 0;
  v9[83] = 0;
  v9[84] = 0;
  v9[85] = 0;
  v9[86] = 0;
  v9[50] = 0;
  v9[51] = 0;
  v9[87] = 0;
  v9[88] = 0;
  v9[52] = 0;
  v9[53] = 0;
  v9[89] = 0;
  v9[90] = 0;
  v9[54] = 0;
  v9[55] = 0;
  v9[91] = 0;
  v9[92] = 0;
  v9[56] = 0;
  v9[57] = 0;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v9[107] = swift_task_alloc();
  v9[108] = swift_task_alloc();
  v9[109] = swift_task_alloc();
  v9[110] = swift_task_alloc();
  v9[111] = swift_task_alloc();
  v9[112] = swift_task_alloc();
  v9[113] = swift_task_alloc();
  v9[114] = swift_task_alloc();
  v10 = type metadata accessor for TemplatingResult();
  v9[115] = v10;
  v15 = *(v10 - 8);
  v9[116] = v15;
  v16 = *(v15 + 64);
  v9[117] = swift_task_alloc();
  v9[118] = swift_task_alloc();
  v9[119] = swift_task_alloc();
  v9[120] = swift_task_alloc();
  v9[121] = swift_task_alloc();
  v9[122] = swift_task_alloc();
  v9[123] = swift_task_alloc();
  v9[124] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v9[125] = v11;
  v17 = *(v11 - 8);
  v9[126] = v17;
  v18 = *(v17 + 64);
  v9[127] = swift_task_alloc();
  v9[128] = swift_task_alloc();
  v9[129] = swift_task_alloc();
  v9[130] = swift_task_alloc();
  v9[131] = swift_task_alloc();
  v9[132] = swift_task_alloc();
  v9[133] = swift_task_alloc();
  v9[134] = swift_task_alloc();
  v9[135] = swift_task_alloc();
  v9[136] = swift_task_alloc();
  v9[137] = swift_task_alloc();
  v9[59] = a1;
  v9[60] = a2;
  v9[61] = a3;
  v9[62] = a4;
  v9[63] = v8;
  v12 = v9[58];

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)()
{
  v1 = v0[137];
  v148 = v0[126];
  v149 = v0[125];
  v0[58] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v150 = *(v148 + 16);
  v0[138] = v150;
  v0[139] = (v148 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v150(v1, v2, v149);
  oslog = Logger.logObject.getter();
  v151 = static os_log_type_t.debug.getter();
  v0[140] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v153 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v151))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v144 = createStorage<A>(capacity:type:)(0);
    v145 = createStorage<A>(capacity:type:)(0);
    *(v147 + 752) = buf;
    *(v147 + 760) = v144;
    *(v147 + 768) = v145;
    serialize(_:at:)(0, (v147 + 752));
    serialize(_:at:)(0, (v147 + 752));
    *(v147 + 776) = v153;
    v146 = swift_task_alloc();
    v146[2] = v147 + 752;
    v146[3] = v147 + 760;
    v146[4] = v147 + 768;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, oslog, v151, "#ConfirmationViewBuilder makePaymentConfirmationWatchViews", buf, 2u);
    destroyStorage<A>(_:count:)(v144, 0, v142);
    destroyStorage<A>(_:count:)(v145, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v139 = *(v147 + 1096);
  v140 = *(v147 + 1000);
  v3 = *(v147 + 784);
  v138 = *(v147 + 1008);
  MEMORY[0x277D82BD8](oslog);
  v141 = *(v138 + 8);
  *(v147 + 1128) = v141;
  *(v147 + 1136) = (v138 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v141(v139, v140);
  if (App.isFirstParty.getter())
  {
    v4 = swift_task_alloc();
    *(v147 + 1144) = v4;
    *v4 = *(v147 + 464);
    v4[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v5 = *(v147 + 848);
    v6 = *(v147 + 840);
    v7 = *(v147 + 832);
    v8 = *(v147 + 824);
    v9 = *(v147 + 816);
    v10 = *(v147 + 808);
    v11 = *(v147 + 800);
    v12 = *(v147 + 792);
    v13 = *(v147 + 784);

    return ConfirmationViewBuilder.makeWatchFirstPartyView<A, B>(app:intent:response:confirmLabelProvider:)(v13, v12, v11, v10, v9, v8, v7);
  }

  v133 = *(v147 + 784);
  type metadata accessor for SASTItemGroup();
  v134 = SAUIAppPunchOut.__allocating_init()();
  *(v147 + 1152) = v134;
  *(v147 + 512) = v134;
  *(v147 + 1160) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16SASTTemplateItem_pMd, &_sSo16SASTTemplateItem_pMR);
  _allocateUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v134 setTemplateItems_];
  MEMORY[0x277D82BD8](isa);
  v15 = App.appIdentifier.getter();
  v136 = v15;
  v137 = v16;
  if (v16)
  {
    v131 = *(v147 + 792);
    *(v147 + 448) = v15;
    *(v147 + 456) = v16;
    type metadata accessor for SASTApplicationBannerItem();
    MEMORY[0x277D82BE0](v131);

    *(v147 + 744) = SASTApplicationBannerItem.init(intent:appId:)(v131, v136, v137);
    v132 = [v134 templateItems];
    if (v132)
    {
      v129 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      MEMORY[0x277D82BD8](v132);
      v130 = v129;
    }

    else
    {
      v130 = 0;
    }

    if (!v130)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
    Array.append(_:)();
    v128 = Array._bridgeToObjectiveC()().super.isa;

    [v134 setTemplateItems_];
    MEMORY[0x277D82BD8](v128);
  }

  v126 = *(v147 + 792);
  type metadata accessor for SASTColumnDataListItem();
  v122 = SAUIAppPunchOut.__allocating_init()();
  *(v147 + 1168) = v122;
  *(v147 + 520) = v122;
  v123 = SAUIAppPunchOut.__allocating_init()();
  *(v147 + 1176) = v123;
  *(v147 + 528) = v123;
  v124 = SAUIAppPunchOut.__allocating_init()();
  *(v147 + 1184) = v124;
  *(v147 + 536) = v124;
  v125 = SAUIAppPunchOut.__allocating_init()();
  *(v147 + 1192) = v125;
  *(v147 + 544) = v125;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  v127 = v17;
  *(v147 + 1200) = v17;
  if (v17)
  {
    MEMORY[0x277D82BE0](v17);
    *(v147 + 672) = v127;
    *(v147 + 1208) = type metadata accessor for SAUIDecoratedText();
    v120 = SAUIAppPunchOut.__allocating_init()();
    *(v147 + 1216) = v120;
    *(v147 + 680) = v120;
    v18 = [v127 payer];
    v121 = v18;
    if (v18)
    {
      v115 = [v18 displayName];
      v116 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v117 = v19;
      MEMORY[0x277D82BD8](v121);
      MEMORY[0x277D82BD8](v115);
      v118 = v116;
      v119 = v117;
    }

    else
    {
      v118 = 0;
      v119 = 0;
    }

    if (v119)
    {
      v113 = MEMORY[0x26D620690](v118);

      v114 = v113;
    }

    else
    {
      v114 = 0;
    }

    v109 = *(v147 + 912);
    v108 = *(v147 + 848);
    [v120 setText_];
    MEMORY[0x277D82BD8](v114);
    v20 = SAUIAppPunchOut.__allocating_init()();
    *(v147 + 1224) = v20;
    *(v147 + 688) = v20;
    outlined init with copy of GlobalsProviding(v108 + 80, v147 + 176);
    v110 = *(v147 + 200);
    v111 = *(v147 + 208);
    __swift_project_boxed_opaque_existential_1((v147 + 176), v110);
    RequestPaymentSlots.rawValue.getter(0);
    String.toSpeakableString.getter();

    v21 = type metadata accessor for SpeakableString();
    *(v147 + 1232) = v21;
    v22 = *(v21 - 8);
    v23 = *(v22 + 56);
    *(v147 + 1240) = v23;
    *(v147 + 1248) = (v22 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v23(v109, 0, 1);
    v112 = (*(v111 + 16) + **(v111 + 16));
    v24 = *(*(v111 + 16) + 4);
    v25 = swift_task_alloc();
    v26 = v110;
    v27 = v111;
    v28 = v112;
    *(v147 + 1256) = v25;
    *v25 = *(v147 + 464);
    v25[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v29 = *(v147 + 992);
    v30 = *(v147 + 912);

    return v28(v29, v30, v26, v27);
  }

  v106 = *(v147 + 792);
  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  v107 = v31;
  *(v147 + 1408) = v31;
  if (v31)
  {
    MEMORY[0x277D82BE0](v31);
    *(v147 + 584) = v107;
    *(v147 + 1416) = type metadata accessor for SAUIDecoratedText();
    v104 = SAUIAppPunchOut.__allocating_init()();
    *(v147 + 1424) = v104;
    *(v147 + 592) = v104;
    v32 = [v107 payee];
    v105 = v32;
    if (v32)
    {
      v99 = [v32 displayName];
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v33;
      MEMORY[0x277D82BD8](v105);
      MEMORY[0x277D82BD8](v99);
      v102 = v100;
      v103 = v101;
    }

    else
    {
      v102 = 0;
      v103 = 0;
    }

    if (v103)
    {
      v97 = MEMORY[0x26D620690](v102);

      v98 = v97;
    }

    else
    {
      v98 = 0;
    }

    v93 = *(v147 + 880);
    v92 = *(v147 + 848);
    [v104 setText_];
    MEMORY[0x277D82BD8](v98);
    v34 = SAUIAppPunchOut.__allocating_init()();
    *(v147 + 1432) = v34;
    *(v147 + 600) = v34;
    outlined init with copy of GlobalsProviding(v92 + 80, v147 + 16);
    v94 = *(v147 + 40);
    v95 = *(v147 + 48);
    __swift_project_boxed_opaque_existential_1((v147 + 16), v94);
    SendPaymentSlots.rawValue.getter(0);
    String.toSpeakableString.getter();

    v35 = type metadata accessor for SpeakableString();
    *(v147 + 1440) = v35;
    v36 = *(v35 - 8);
    v37 = *(v36 + 56);
    *(v147 + 1448) = v37;
    *(v147 + 1456) = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v37(v93, 0, 1);
    v96 = (*(v95 + 16) + **(v95 + 16));
    v38 = *(*(v95 + 16) + 4);
    v39 = swift_task_alloc();
    v26 = v94;
    v27 = v95;
    v28 = v96;
    *(v147 + 1464) = v39;
    *v39 = *(v147 + 464);
    v39[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v29 = *(v147 + 960);
    v30 = *(v147 + 880);

    return v28(v29, v30, v26, v27);
  }

  v40 = *(v147 + 1024);
  v88 = *(v147 + 1000);
  v41 = Logger.payments.unsafeMutableAddressor();
  v150(v40, v41, v88);
  log = Logger.logObject.getter();
  v89 = static os_log_type_t.error.getter();
  v91 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(log, v89))
  {
    v84 = static UnsafeMutablePointer.allocate(capacity:)();
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v85 = createStorage<A>(capacity:type:)(0);
    v86 = createStorage<A>(capacity:type:)(0);
    *(v147 + 552) = v84;
    *(v147 + 560) = v85;
    *(v147 + 568) = v86;
    serialize(_:at:)(0, (v147 + 552));
    serialize(_:at:)(0, (v147 + 552));
    *(v147 + 576) = v91;
    v87 = swift_task_alloc();
    v87[2] = v147 + 552;
    v87[3] = v147 + 560;
    v87[4] = v147 + 568;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, log, v89, "#ConfirmationViewBuilder makePaymentConfirmationView (Watch) encountered unexpected intent type", v84, 2u);
    destroyStorage<A>(_:count:)(v85, 0, v83);
    destroyStorage<A>(_:count:)(v86, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v84, MEMORY[0x277D84B78]);
  }

  v50 = *(v147 + 1024);
  v51 = *(v147 + 1000);
  v52 = *(v147 + 792);
  MEMORY[0x277D82BD8](log);
  v141(v50, v51);
  *(v147 + 336) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  *(v147 + 344) = v42;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  swift_getObjectType();
  DefaultStringInterpolation.appendInterpolation(_:)();
  v44 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v44);

  v54 = *(v147 + 336);
  v53 = *(v147 + 344);

  outlined destroy of String.UTF8View(v147 + 336);
  v56 = MEMORY[0x26D620710](v54, v53);
  v55 = v45;
  lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
  swift_allocError();
  *v46 = v56;
  *(v46 + 8) = v55;
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  *(v46 + 32) = 0;
  *(v46 + 40) = 0;
  *(v46 + 48) = 4;
  swift_willThrow();
  MEMORY[0x277D82BD8](v125);
  MEMORY[0x277D82BD8](v124);
  MEMORY[0x277D82BD8](v123);
  MEMORY[0x277D82BD8](v122);
  MEMORY[0x277D82BD8](v134);
  v47 = *(v147 + 1096);
  v57 = *(v147 + 1088);
  v58 = *(v147 + 1080);
  v59 = *(v147 + 1072);
  v60 = *(v147 + 1064);
  v61 = *(v147 + 1056);
  v62 = *(v147 + 1048);
  v63 = *(v147 + 1040);
  v64 = *(v147 + 1032);
  v65 = *(v147 + 1024);
  v66 = *(v147 + 1016);
  v67 = *(v147 + 992);
  v68 = *(v147 + 984);
  v69 = *(v147 + 976);
  v70 = *(v147 + 968);
  v71 = *(v147 + 960);
  v72 = *(v147 + 952);
  v73 = *(v147 + 944);
  v74 = *(v147 + 936);
  v75 = *(v147 + 912);
  v76 = *(v147 + 904);
  v77 = *(v147 + 896);
  v78 = *(v147 + 888);
  v79 = *(v147 + 880);
  v80 = *(v147 + 872);
  v81 = *(v147 + 864);
  v82 = *(v147 + 856);

  v48 = *(*(v147 + 464) + 8);
  v49 = *(v147 + 464);

  return v48();
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 464);
  v2 = *(*v1 + 1256);
  *(v9 + 464) = *v1;
  *(v9 + 1264) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 896));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v238 = v0;
  v214 = v0[153];
  v216 = v0[152];
  v213 = v0[124];
  v211 = v0[116];
  v212 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v215 = MEMORY[0x26D620690](v1);
  v2 = *(v211 + 8);
  v0[159] = v2;
  v0[160] = (v211 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v213, v212);

  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  [v214 setText_];
  MEMORY[0x277D82BD8](v215);
  v217 = [v216 text];
  if (v217)
  {
    v206 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v207 = v3;
    MEMORY[0x277D82BD8](v217);
    v208 = v206;
    v209 = v207;
  }

  else
  {
    v208 = 0;
    v209 = 0;
  }

  v205 = Optional<A>.isNilOrEmpty.getter(v208, v209);

  if (v205)
  {
    v4 = *(v210 + 1208);
    v204 = _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    v201 = *(v210 + 1216);
    v202 = *(v210 + 1208);
    v203 = _allocateUninitializedArray<A>(_:)();
    v200 = v5;
    MEMORY[0x277D82BE0](v201);
    *v200 = v201;
    _finalizeUninitializedArray<A>(_:)();
    v204 = v203;
  }

  if (v204)
  {
    v6 = *(v210 + 1208);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v199 = isa;
  }

  else
  {
    v199 = 0;
  }

  v184 = *(v210 + 1224);
  v188 = *(v210 + 1216);
  v183 = *(v210 + 1168);
  v195 = *(v210 + 1120);
  v186 = *(v210 + 1112);
  v187 = *(v210 + 1104);
  v7 = *(v210 + 1088);
  v185 = *(v210 + 1000);
  [v183 setDecoratedRows_];
  MEMORY[0x277D82BD8](v199);
  MEMORY[0x277D82BE0](v184);
  [v183 setTitle_];
  MEMORY[0x277D82BD8](v184);
  v8 = Logger.payments.unsafeMutableAddressor();
  v187(v7, v8, v185);
  MEMORY[0x277D82BE0](v188);
  v189 = swift_allocObject();
  *(v189 + 16) = v188;
  oslog = Logger.logObject.getter();
  v197 = static os_log_type_t.debug.getter();
  v191 = swift_allocObject();
  *(v191 + 16) = 32;
  v192 = swift_allocObject();
  *(v192 + 16) = 8;
  v190 = swift_allocObject();
  *(v190 + 16) = partial apply for implicit closure #5 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  *(v190 + 24) = v189;
  v193 = swift_allocObject();
  *(v193 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v193 + 24) = v190;
  _allocateUninitializedArray<A>(_:)();
  v194 = v9;

  *v194 = partial apply for closure #1 in OSLogArguments.append(_:);
  v194[1] = v191;

  v194[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v194[3] = v192;

  v194[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v194[5] = v193;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v197))
  {
    v10 = *(v210 + 1264);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v181 = createStorage<A>(capacity:type:)(0);
    v182 = createStorage<A>(capacity:type:)(1);
    v233 = buf;
    v234 = v181;
    v235 = v182;
    serialize(_:at:)(2, &v233);
    serialize(_:at:)(1, &v233);
    v236 = partial apply for closure #1 in OSLogArguments.append(_:);
    v237 = v191;
    closure #1 in osLogInternal(_:log:type:)(&v236, &v233, &v234, &v235);
    if (v10)
    {
    }

    v236 = partial apply for closure #1 in OSLogArguments.append(_:);
    v237 = v192;
    closure #1 in osLogInternal(_:log:type:)(&v236, &v233, &v234, &v235);
    v236 = partial apply for closure #1 in OSLogArguments.append(_:);
    v237 = v193;
    closure #1 in osLogInternal(_:log:type:)(&v236, &v233, &v234, &v235);
    _os_log_impl(&dword_2686B1000, oslog, v197, "Placing payer into request person label %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v181, 0, v179);
    destroyStorage<A>(_:count:)(v182, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);

    v178 = 0;
  }

  else
  {

    v178 = *(v210 + 1264);
  }

  v176 = *(v210 + 1200);
  v174 = *(v210 + 1136);
  v175 = *(v210 + 1128);
  v172 = *(v210 + 1088);
  v173 = *(v210 + 1000);
  MEMORY[0x277D82BD8](oslog);
  v175(v172, v173);
  v177 = [v176 currencyAmount];
  if (v177)
  {
    v166 = INCurrencyAmount.formattedString.getter();
    v167 = v12;
    MEMORY[0x277D82BD8](v177);
    v168 = Optional<A>.emptyToNil.getter(v166, v167);
    v169 = v13;

    v170 = v168;
    v171 = v169;
  }

  else
  {
    v170 = 0;
    v171 = 0;
  }

  *(v210 + 1288) = v171;
  if (v171)
  {
    v163 = *(v210 + 1120);
    v155 = *(v210 + 1112);
    v156 = *(v210 + 1104);
    v14 = *(v210 + 1080);
    v154 = *(v210 + 1000);
    *(v210 + 432) = v170;
    *(v210 + 440) = v171;
    v15 = Logger.payments.unsafeMutableAddressor();
    v156(v14, v15, v154);

    v157 = swift_allocObject();
    *(v157 + 16) = v170;
    *(v157 + 24) = v171;
    log = Logger.logObject.getter();
    v165 = static os_log_type_t.debug.getter();
    v159 = swift_allocObject();
    *(v159 + 16) = 32;
    v160 = swift_allocObject();
    *(v160 + 16) = 8;
    v158 = swift_allocObject();
    *(v158 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v158 + 24) = v157;
    v161 = swift_allocObject();
    *(v161 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v161 + 24) = v158;
    _allocateUninitializedArray<A>(_:)();
    v162 = v16;

    *v162 = partial apply for closure #1 in OSLogArguments.append(_:);
    v162[1] = v159;

    v162[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v162[3] = v160;

    v162[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v162[5] = v161;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v165))
    {
      v150 = static UnsafeMutablePointer.allocate(capacity:)();
      v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v151 = createStorage<A>(capacity:type:)(0);
      v152 = createStorage<A>(capacity:type:)(1);
      v228 = v150;
      v229 = v151;
      v230 = v152;
      serialize(_:at:)(2, &v228);
      serialize(_:at:)(1, &v228);
      v231 = partial apply for closure #1 in OSLogArguments.append(_:);
      v232 = v159;
      closure #1 in osLogInternal(_:log:type:)(&v231, &v228, &v229, &v230);
      if (v178)
      {
      }

      v231 = partial apply for closure #1 in OSLogArguments.append(_:);
      v232 = v160;
      closure #1 in osLogInternal(_:log:type:)(&v231, &v228, &v229, &v230);
      v231 = partial apply for closure #1 in OSLogArguments.append(_:);
      v232 = v161;
      closure #1 in osLogInternal(_:log:type:)(&v231, &v228, &v229, &v230);
      _os_log_impl(&dword_2686B1000, log, v165, "Placing amount into request amount label %s", v150, 0xCu);
      destroyStorage<A>(_:count:)(v151, 0, v149);
      destroyStorage<A>(_:count:)(v152, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v150, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v144 = *(v210 + 1248);
    v145 = *(v210 + 1240);
    v143 = *(v210 + 1232);
    v138 = *(v210 + 1208);
    v136 = *(v210 + 1136);
    v137 = *(v210 + 1128);
    v134 = *(v210 + 1080);
    v135 = *(v210 + 1000);
    v142 = *(v210 + 904);
    v141 = *(v210 + 848);
    MEMORY[0x277D82BD8](log);
    v137(v134, v135);
    v139 = SAUIAppPunchOut.__allocating_init()();
    *(v210 + 1296) = v139;
    *(v210 + 728) = v139;

    v140 = MEMORY[0x26D620690](v170, v171);

    [v139 setText_];
    MEMORY[0x277D82BD8](v140);
    v19 = SAUIAppPunchOut.__allocating_init()();
    *(v210 + 1304) = v19;
    *(v210 + 736) = v19;
    outlined init with copy of GlobalsProviding(v141 + 80, v210 + 296);
    v146 = *(v210 + 320);
    v147 = *(v210 + 328);
    __swift_project_boxed_opaque_existential_1((v210 + 296), v146);
    RequestPaymentSlots.rawValue.getter(1);
    String.toSpeakableString.getter();

    v145(v142, 0, 1, v143);
    v148 = (*(v147 + 16) + **(v147 + 16));
    v20 = *(*(v147 + 16) + 4);
    v21 = swift_task_alloc();
    *(v210 + 1312) = v21;
    *v21 = *(v210 + 464);
    v21[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v22 = *(v210 + 984);
    v23 = *(v210 + 904);

    return v148(v22, v23, v146, v147);
  }

  else
  {
    v17 = *(v210 + 800);
    v18 = (*(*(v210 + 840) + 8))(*(v210 + 824));
    v153 = v18;
    if (v18 && (v133 = [v18 feeAmount], MEMORY[0x277D82BD8](v153), v133))
    {
      v127 = INCurrencyAmount.formattedString.getter();
      v128 = v24;
      MEMORY[0x277D82BD8](v133);
      v129 = Optional<A>.emptyToNil.getter(v127, v128);
      v130 = v25;

      v131 = v129;
      v132 = v130;
    }

    else
    {
      v131 = 0;
      v132 = 0;
    }

    *(v210 + 1328) = v132;
    if (v132)
    {
      v124 = *(v210 + 1120);
      v116 = *(v210 + 1112);
      v117 = *(v210 + 1104);
      v26 = *(v210 + 1072);
      v115 = *(v210 + 1000);
      *(v210 + 416) = v131;
      *(v210 + 424) = v132;
      v27 = Logger.payments.unsafeMutableAddressor();
      v117(v26, v27, v115);

      v118 = swift_allocObject();
      *(v118 + 16) = v131;
      *(v118 + 24) = v132;
      v125 = Logger.logObject.getter();
      v126 = static os_log_type_t.debug.getter();
      v120 = swift_allocObject();
      *(v120 + 16) = 32;
      v121 = swift_allocObject();
      *(v121 + 16) = 8;
      v119 = swift_allocObject();
      *(v119 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
      *(v119 + 24) = v118;
      v122 = swift_allocObject();
      *(v122 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v122 + 24) = v119;
      _allocateUninitializedArray<A>(_:)();
      v123 = v28;

      *v123 = partial apply for closure #1 in OSLogArguments.append(_:);
      v123[1] = v120;

      v123[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v123[3] = v121;

      v123[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v123[5] = v122;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v125, v126))
      {
        v111 = static UnsafeMutablePointer.allocate(capacity:)();
        v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v112 = createStorage<A>(capacity:type:)(0);
        v113 = createStorage<A>(capacity:type:)(1);
        v223 = v111;
        v224 = v112;
        v225 = v113;
        serialize(_:at:)(2, &v223);
        serialize(_:at:)(1, &v223);
        v226 = partial apply for closure #1 in OSLogArguments.append(_:);
        v227 = v120;
        closure #1 in osLogInternal(_:log:type:)(&v226, &v223, &v224, &v225);
        if (v178)
        {
        }

        v226 = partial apply for closure #1 in OSLogArguments.append(_:);
        v227 = v121;
        closure #1 in osLogInternal(_:log:type:)(&v226, &v223, &v224, &v225);
        v226 = partial apply for closure #1 in OSLogArguments.append(_:);
        v227 = v122;
        closure #1 in osLogInternal(_:log:type:)(&v226, &v223, &v224, &v225);
        _os_log_impl(&dword_2686B1000, v125, v126, "Placing fee into request fee label %s", v111, 0xCu);
        destroyStorage<A>(_:count:)(v112, 0, v110);
        destroyStorage<A>(_:count:)(v113, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v111, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v105 = *(v210 + 1248);
      v106 = *(v210 + 1240);
      v104 = *(v210 + 1232);
      v99 = *(v210 + 1208);
      v97 = *(v210 + 1136);
      v98 = *(v210 + 1128);
      v95 = *(v210 + 1072);
      v96 = *(v210 + 1000);
      v103 = *(v210 + 896);
      v102 = *(v210 + 848);
      MEMORY[0x277D82BD8](v125);
      v98(v95, v96);
      v100 = SAUIAppPunchOut.__allocating_init()();
      *(v210 + 1336) = v100;
      *(v210 + 712) = v100;

      v101 = MEMORY[0x26D620690](v131, v132);

      [v100 setText_];
      MEMORY[0x277D82BD8](v101);
      v29 = SAUIAppPunchOut.__allocating_init()();
      *(v210 + 1344) = v29;
      *(v210 + 720) = v29;
      outlined init with copy of GlobalsProviding(v102 + 80, v210 + 256);
      v107 = *(v210 + 280);
      v108 = *(v210 + 288);
      __swift_project_boxed_opaque_existential_1((v210 + 256), v107);
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
      String.toSpeakableString.getter();

      v106(v103, 0, 1, v104);
      v109 = (*(v108 + 16) + **(v108 + 16));
      v30 = *(*(v108 + 16) + 4);
      v31 = swift_task_alloc();
      *(v210 + 1352) = v31;
      *v31 = *(v210 + 464);
      v31[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v32 = *(v210 + 976);
      v33 = *(v210 + 896);

      return v109(v32, v33, v107, v108);
    }

    else
    {
      v114 = [*(v210 + 1200) note];
      if (v114)
      {
        v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v34;
        MEMORY[0x277D82BD8](v114);
        v93 = v91;
        v94 = v92;
      }

      else
      {
        v93 = 0;
        v94 = 0;
      }

      v89 = Optional<A>.emptyToNil.getter(v93, v94);
      v90 = v35;
      *(v210 + 1368) = v35;
      if (v35)
      {
        v86 = *(v210 + 1120);
        v78 = *(v210 + 1112);
        v79 = *(v210 + 1104);
        v36 = *(v210 + 1064);
        v77 = *(v210 + 1000);
        *(v210 + 400) = v89;
        *(v210 + 408) = v35;

        v37 = Logger.payments.unsafeMutableAddressor();
        v79(v36, v37, v77);

        v80 = swift_allocObject();
        *(v80 + 16) = v89;
        *(v80 + 24) = v90;
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.debug.getter();
        v82 = swift_allocObject();
        *(v82 + 16) = 32;
        v83 = swift_allocObject();
        *(v83 + 16) = 8;
        v81 = swift_allocObject();
        *(v81 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        *(v81 + 24) = v80;
        v84 = swift_allocObject();
        *(v84 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v84 + 24) = v81;
        _allocateUninitializedArray<A>(_:)();
        v85 = v38;

        *v85 = partial apply for closure #1 in OSLogArguments.append(_:);
        v85[1] = v82;

        v85[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v85[3] = v83;

        v85[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v85[5] = v84;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v87, v88))
        {
          v67 = static UnsafeMutablePointer.allocate(capacity:)();
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v68 = createStorage<A>(capacity:type:)(0);
          v69 = createStorage<A>(capacity:type:)(1);
          v218 = v67;
          v219 = v68;
          v220 = v69;
          serialize(_:at:)(2, &v218);
          serialize(_:at:)(1, &v218);
          v221 = partial apply for closure #1 in OSLogArguments.append(_:);
          v222 = v82;
          closure #1 in osLogInternal(_:log:type:)(&v221, &v218, &v219, &v220);
          if (v178)
          {
          }

          v221 = partial apply for closure #1 in OSLogArguments.append(_:);
          v222 = v83;
          closure #1 in osLogInternal(_:log:type:)(&v221, &v218, &v219, &v220);
          v221 = partial apply for closure #1 in OSLogArguments.append(_:);
          v222 = v84;
          closure #1 in osLogInternal(_:log:type:)(&v221, &v218, &v219, &v220);
          _os_log_impl(&dword_2686B1000, v87, v88, "Placing note into request note label %s", v67, 0xCu);
          destroyStorage<A>(_:count:)(v68, 0, v66);
          destroyStorage<A>(_:count:)(v69, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v67, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v61 = *(v210 + 1248);
        v62 = *(v210 + 1240);
        v60 = *(v210 + 1232);
        v55 = *(v210 + 1208);
        v53 = *(v210 + 1136);
        v54 = *(v210 + 1128);
        v51 = *(v210 + 1064);
        v52 = *(v210 + 1000);
        v59 = *(v210 + 888);
        v58 = *(v210 + 848);
        MEMORY[0x277D82BD8](v87);
        v54(v51, v52);
        v56 = SAUIAppPunchOut.__allocating_init()();
        *(v210 + 1376) = v56;
        *(v210 + 696) = v56;

        v57 = MEMORY[0x26D620690](v89, v90);

        [v56 setText_];
        MEMORY[0x277D82BD8](v57);
        v46 = SAUIAppPunchOut.__allocating_init()();
        *(v210 + 1384) = v46;
        *(v210 + 704) = v46;
        outlined init with copy of GlobalsProviding(v58 + 80, v210 + 216);
        v63 = *(v210 + 240);
        v64 = *(v210 + 248);
        __swift_project_boxed_opaque_existential_1((v210 + 216), v63);
        RequestPaymentSlots.rawValue.getter(2);
        String.toSpeakableString.getter();

        v62(v59, 0, 1, v60);
        v65 = (*(v64 + 16) + **(v64 + 16));
        v47 = *(*(v64 + 16) + 4);
        v48 = swift_task_alloc();
        *(v210 + 1392) = v48;
        *v48 = *(v210 + 464);
        v48[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        v49 = *(v210 + 968);
        v50 = *(v210 + 888);

        return v65(v49, v50, v63, v64);
      }

      else
      {

        v70 = *(v210 + 1216);
        v71 = *(v210 + 1200);
        MEMORY[0x277D82BD8](*(v210 + 1224));
        MEMORY[0x277D82BD8](v70);
        MEMORY[0x277D82BD8](v71);
        v76 = *(v210 + 1192);
        v75 = *(v210 + 1184);
        v73 = *(v210 + 1176);
        v72 = *(v210 + 1168);
        v74 = *(v210 + 1152);
        MEMORY[0x277D82BE0](v72);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v72, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v73);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v73, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v75);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v75, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v76);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v76, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        v39 = swift_task_alloc();
        *(v210 + 1616) = v39;
        *v39 = *(v210 + 464);
        v39[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        v40 = *(v210 + 848);
        v41 = *(v210 + 832);
        v42 = *(v210 + 816);
        v43 = *(v210 + 808);
        v44 = *(v210 + 792);
        v45 = *(v210 + 784);

        return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v45, v44, v43);
      }
    }
  }
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 464);
  v2 = *(*v1 + 1312);
  *(v9 + 464) = *v1;
  *(v9 + 1320) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 888));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v141 = v0;
  v125 = v0[163];
  v126 = v0[162];
  v127 = v0[161];
  v117 = v0[160];
  v118 = v0[159];
  v122 = v0[151];
  v124 = v0[147];
  v119 = v0[123];
  v116 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v120 = MEMORY[0x26D620690](v1);
  v118(v119, v116);

  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  [v125 setText_];
  MEMORY[0x277D82BD8](v120);
  _allocateUninitializedArray<A>(_:)();
  v121 = v2;
  MEMORY[0x277D82BE0](v126);
  *v121 = v126;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v124 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v125);
  [v124 setTitle_];
  MEMORY[0x277D82BD8](v125);
  MEMORY[0x277D82BD8](v125);
  MEMORY[0x277D82BD8](v126);

  v129 = *(v128 + 1320);
  v3 = *(v128 + 800);
  v4 = (*(*(v128 + 840) + 8))(*(v128 + 824));
  v130 = v4;
  if (v4 && (v115 = [v4 feeAmount], MEMORY[0x277D82BD8](v130), v115))
  {
    v109 = INCurrencyAmount.formattedString.getter();
    v110 = v5;
    MEMORY[0x277D82BD8](v115);
    v111 = Optional<A>.emptyToNil.getter(v109, v110);
    v112 = v6;

    v113 = v111;
    v114 = v112;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  *(v128 + 1328) = v114;
  if (v114)
  {
    v106 = *(v128 + 1120);
    v98 = *(v128 + 1112);
    v99 = *(v128 + 1104);
    v7 = *(v128 + 1072);
    v97 = *(v128 + 1000);
    *(v128 + 416) = v113;
    *(v128 + 424) = v114;
    v8 = Logger.payments.unsafeMutableAddressor();
    v99(v7, v8, v97);

    v100 = swift_allocObject();
    *(v100 + 16) = v113;
    *(v100 + 24) = v114;
    oslog = Logger.logObject.getter();
    v108 = static os_log_type_t.debug.getter();
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v103 = swift_allocObject();
    *(v103 + 16) = 8;
    v101 = swift_allocObject();
    *(v101 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v101 + 24) = v100;
    v104 = swift_allocObject();
    *(v104 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v104 + 24) = v101;
    _allocateUninitializedArray<A>(_:)();
    v105 = v9;

    *v105 = partial apply for closure #1 in OSLogArguments.append(_:);
    v105[1] = v102;

    v105[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v105[3] = v103;

    v105[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v105[5] = v104;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v108))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v94 = createStorage<A>(capacity:type:)(0);
      v95 = createStorage<A>(capacity:type:)(1);
      v136 = buf;
      v137 = v94;
      v138 = v95;
      serialize(_:at:)(2, &v136);
      serialize(_:at:)(1, &v136);
      v139 = partial apply for closure #1 in OSLogArguments.append(_:);
      v140 = v102;
      closure #1 in osLogInternal(_:log:type:)(&v139, &v136, &v137, &v138);
      if (v129)
      {
      }

      v139 = partial apply for closure #1 in OSLogArguments.append(_:);
      v140 = v103;
      closure #1 in osLogInternal(_:log:type:)(&v139, &v136, &v137, &v138);
      v139 = partial apply for closure #1 in OSLogArguments.append(_:);
      v140 = v104;
      closure #1 in osLogInternal(_:log:type:)(&v139, &v136, &v137, &v138);
      _os_log_impl(&dword_2686B1000, oslog, v108, "Placing fee into request fee label %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v94, 0, v92);
      destroyStorage<A>(_:count:)(v95, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v87 = *(v128 + 1248);
    v88 = *(v128 + 1240);
    v86 = *(v128 + 1232);
    v81 = *(v128 + 1208);
    v79 = *(v128 + 1136);
    v80 = *(v128 + 1128);
    v77 = *(v128 + 1072);
    v78 = *(v128 + 1000);
    v85 = *(v128 + 896);
    v84 = *(v128 + 848);
    MEMORY[0x277D82BD8](oslog);
    v80(v77, v78);
    v82 = SAUIAppPunchOut.__allocating_init()();
    *(v128 + 1336) = v82;
    *(v128 + 712) = v82;

    v83 = MEMORY[0x26D620690](v113, v114);

    [v82 setText_];
    MEMORY[0x277D82BD8](v83);
    v11 = SAUIAppPunchOut.__allocating_init()();
    *(v128 + 1344) = v11;
    *(v128 + 720) = v11;
    outlined init with copy of GlobalsProviding(v84 + 80, v128 + 256);
    v89 = *(v128 + 280);
    v90 = *(v128 + 288);
    __swift_project_boxed_opaque_existential_1((v128 + 256), v89);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
    String.toSpeakableString.getter();

    v88(v85, 0, 1, v86);
    v91 = (*(v90 + 16) + **(v90 + 16));
    v12 = *(*(v90 + 16) + 4);
    v13 = swift_task_alloc();
    *(v128 + 1352) = v13;
    *v13 = *(v128 + 464);
    v13[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v14 = *(v128 + 976);
    v15 = *(v128 + 896);

    return v91(v14, v15, v89, v90);
  }

  else
  {
    v96 = [*(v128 + 1200) note];
    if (v96)
    {
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v16;
      MEMORY[0x277D82BD8](v96);
      v75 = v73;
      v76 = v74;
    }

    else
    {
      v75 = 0;
      v76 = 0;
    }

    v71 = Optional<A>.emptyToNil.getter(v75, v76);
    v72 = v17;
    *(v128 + 1368) = v17;
    if (v17)
    {
      v68 = *(v128 + 1120);
      v60 = *(v128 + 1112);
      v61 = *(v128 + 1104);
      v18 = *(v128 + 1064);
      v59 = *(v128 + 1000);
      *(v128 + 400) = v71;
      *(v128 + 408) = v17;

      v19 = Logger.payments.unsafeMutableAddressor();
      v61(v18, v19, v59);

      v62 = swift_allocObject();
      *(v62 + 16) = v71;
      *(v62 + 24) = v72;
      log = Logger.logObject.getter();
      v70 = static os_log_type_t.debug.getter();
      v64 = swift_allocObject();
      *(v64 + 16) = 32;
      v65 = swift_allocObject();
      *(v65 + 16) = 8;
      v63 = swift_allocObject();
      *(v63 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      *(v63 + 24) = v62;
      v66 = swift_allocObject();
      *(v66 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v66 + 24) = v63;
      _allocateUninitializedArray<A>(_:)();
      v67 = v20;

      *v67 = partial apply for closure #1 in OSLogArguments.append(_:);
      v67[1] = v64;

      v67[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v67[3] = v65;

      v67[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v67[5] = v66;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v70))
      {
        v49 = static UnsafeMutablePointer.allocate(capacity:)();
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v50 = createStorage<A>(capacity:type:)(0);
        v51 = createStorage<A>(capacity:type:)(1);
        v131 = v49;
        v132 = v50;
        v133 = v51;
        serialize(_:at:)(2, &v131);
        serialize(_:at:)(1, &v131);
        v134 = partial apply for closure #1 in OSLogArguments.append(_:);
        v135 = v64;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v131, &v132, &v133);
        if (v129)
        {
        }

        v134 = partial apply for closure #1 in OSLogArguments.append(_:);
        v135 = v65;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v131, &v132, &v133);
        v134 = partial apply for closure #1 in OSLogArguments.append(_:);
        v135 = v66;
        closure #1 in osLogInternal(_:log:type:)(&v134, &v131, &v132, &v133);
        _os_log_impl(&dword_2686B1000, log, v70, "Placing note into request note label %s", v49, 0xCu);
        destroyStorage<A>(_:count:)(v50, 0, v48);
        destroyStorage<A>(_:count:)(v51, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v49, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v43 = *(v128 + 1248);
      v44 = *(v128 + 1240);
      v42 = *(v128 + 1232);
      v37 = *(v128 + 1208);
      v35 = *(v128 + 1136);
      v36 = *(v128 + 1128);
      v33 = *(v128 + 1064);
      v34 = *(v128 + 1000);
      v41 = *(v128 + 888);
      v40 = *(v128 + 848);
      MEMORY[0x277D82BD8](log);
      v36(v33, v34);
      v38 = SAUIAppPunchOut.__allocating_init()();
      *(v128 + 1376) = v38;
      *(v128 + 696) = v38;

      v39 = MEMORY[0x26D620690](v71, v72);

      [v38 setText_];
      MEMORY[0x277D82BD8](v39);
      v28 = SAUIAppPunchOut.__allocating_init()();
      *(v128 + 1384) = v28;
      *(v128 + 704) = v28;
      outlined init with copy of GlobalsProviding(v40 + 80, v128 + 216);
      v45 = *(v128 + 240);
      v46 = *(v128 + 248);
      __swift_project_boxed_opaque_existential_1((v128 + 216), v45);
      RequestPaymentSlots.rawValue.getter(2);
      String.toSpeakableString.getter();

      v44(v41, 0, 1, v42);
      v47 = (*(v46 + 16) + **(v46 + 16));
      v29 = *(*(v46 + 16) + 4);
      v30 = swift_task_alloc();
      *(v128 + 1392) = v30;
      *v30 = *(v128 + 464);
      v30[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v31 = *(v128 + 968);
      v32 = *(v128 + 888);

      return v47(v31, v32, v45, v46);
    }

    else
    {

      v52 = *(v128 + 1216);
      v53 = *(v128 + 1200);
      MEMORY[0x277D82BD8](*(v128 + 1224));
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v53);
      v58 = *(v128 + 1192);
      v57 = *(v128 + 1184);
      v55 = *(v128 + 1176);
      v54 = *(v128 + 1168);
      v56 = *(v128 + 1152);
      MEMORY[0x277D82BE0](v54);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v54, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v55);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v55, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v57);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v57, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v58);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v58, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      v21 = swift_task_alloc();
      *(v128 + 1616) = v21;
      *v21 = *(v128 + 464);
      v21[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v22 = *(v128 + 848);
      v23 = *(v128 + 832);
      v24 = *(v128 + 816);
      v25 = *(v128 + 808);
      v26 = *(v128 + 792);
      v27 = *(v128 + 784);

      return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v27, v26, v25);
    }
  }
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 464);
  v2 = *(*v1 + 1352);
  *(v9 + 464) = *v1;
  *(v9 + 1360) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 880));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v85 = v0;
  v74 = v0[168];
  v75 = v0[167];
  v76 = v0[166];
  v66 = v0[160];
  v67 = v0[159];
  v71 = v0[151];
  v73 = v0[148];
  v68 = v0[122];
  v65 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v69 = MEMORY[0x26D620690](v1);
  v67(v68, v65);

  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  [v74 setText_];
  MEMORY[0x277D82BD8](v69);
  _allocateUninitializedArray<A>(_:)();
  v70 = v2;
  MEMORY[0x277D82BE0](v75);
  *v70 = v75;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v73 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v74);
  [v73 setTitle_];
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);

  v78 = *(v77 + 1360);
  v79 = [*(v77 + 1200) note];
  if (v79)
  {
    v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v62 = v3;
    MEMORY[0x277D82BD8](v79);
    v63 = v61;
    v64 = v62;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v59 = Optional<A>.emptyToNil.getter(v63, v64);
  v60 = v4;
  *(v77 + 1368) = v4;
  if (v4)
  {
    v56 = *(v77 + 1120);
    v48 = *(v77 + 1112);
    v49 = *(v77 + 1104);
    v5 = *(v77 + 1064);
    v47 = *(v77 + 1000);
    *(v77 + 400) = v59;
    *(v77 + 408) = v4;

    v6 = Logger.payments.unsafeMutableAddressor();
    v49(v5, v6, v47);

    v50 = swift_allocObject();
    *(v50 + 16) = v59;
    *(v50 + 24) = v60;
    oslog = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    v52 = swift_allocObject();
    *(v52 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    *(v51 + 24) = v50;
    v54 = swift_allocObject();
    *(v54 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v54 + 24) = v51;
    _allocateUninitializedArray<A>(_:)();
    v55 = v7;

    *v55 = partial apply for closure #1 in OSLogArguments.append(_:);
    v55[1] = v52;

    v55[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v55[3] = v53;

    v55[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v55[5] = v54;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v58))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v38 = createStorage<A>(capacity:type:)(0);
      v39 = createStorage<A>(capacity:type:)(1);
      v80 = buf;
      v81 = v38;
      v82 = v39;
      serialize(_:at:)(2, &v80);
      serialize(_:at:)(1, &v80);
      v83 = partial apply for closure #1 in OSLogArguments.append(_:);
      v84 = v52;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      if (v78)
      {
      }

      v83 = partial apply for closure #1 in OSLogArguments.append(_:);
      v84 = v53;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      v83 = partial apply for closure #1 in OSLogArguments.append(_:);
      v84 = v54;
      closure #1 in osLogInternal(_:log:type:)(&v83, &v80, &v81, &v82);
      _os_log_impl(&dword_2686B1000, oslog, v58, "Placing note into request note label %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v38, 0, v36);
      destroyStorage<A>(_:count:)(v39, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v31 = *(v77 + 1248);
    v32 = *(v77 + 1240);
    v30 = *(v77 + 1232);
    v25 = *(v77 + 1208);
    v23 = *(v77 + 1136);
    v24 = *(v77 + 1128);
    v21 = *(v77 + 1064);
    v22 = *(v77 + 1000);
    v29 = *(v77 + 888);
    v28 = *(v77 + 848);
    MEMORY[0x277D82BD8](oslog);
    v24(v21, v22);
    v26 = SAUIAppPunchOut.__allocating_init()();
    *(v77 + 1376) = v26;
    *(v77 + 696) = v26;

    v27 = MEMORY[0x26D620690](v59, v60);

    [v26 setText_];
    MEMORY[0x277D82BD8](v27);
    v16 = SAUIAppPunchOut.__allocating_init()();
    *(v77 + 1384) = v16;
    *(v77 + 704) = v16;
    outlined init with copy of GlobalsProviding(v28 + 80, v77 + 216);
    v33 = *(v77 + 240);
    v34 = *(v77 + 248);
    __swift_project_boxed_opaque_existential_1((v77 + 216), v33);
    RequestPaymentSlots.rawValue.getter(2);
    String.toSpeakableString.getter();

    v32(v29, 0, 1, v30);
    v35 = (*(v34 + 16) + **(v34 + 16));
    v17 = *(*(v34 + 16) + 4);
    v18 = swift_task_alloc();
    *(v77 + 1392) = v18;
    *v18 = *(v77 + 464);
    v18[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v19 = *(v77 + 968);
    v20 = *(v77 + 888);

    return v35(v19, v20, v33, v34);
  }

  else
  {

    v40 = *(v77 + 1216);
    v41 = *(v77 + 1200);
    MEMORY[0x277D82BD8](*(v77 + 1224));
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    v46 = *(v77 + 1192);
    v45 = *(v77 + 1184);
    v43 = *(v77 + 1176);
    v42 = *(v77 + 1168);
    v44 = *(v77 + 1152);
    MEMORY[0x277D82BE0](v42);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v42, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v43);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v43, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v45);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v45, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v46);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v46, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    v8 = swift_task_alloc();
    *(v77 + 1616) = v8;
    *v8 = *(v77 + 464);
    v8[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v9 = *(v77 + 848);
    v10 = *(v77 + 832);
    v11 = *(v77 + 816);
    v12 = *(v77 + 808);
    v13 = *(v77 + 792);
    v14 = *(v77 + 784);

    return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v14, v13, v12);
  }
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 464);
  v2 = *(*v1 + 1392);
  *(v9 + 464) = *v1;
  *(v9 + 1400) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 872));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v20 = v0[173];
  v21 = v0[172];
  v22 = v0[171];
  v12 = v0[160];
  v13 = v0[159];
  v17 = v0[151];
  v19 = v0[149];
  v14 = v0[121];
  v11 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v15 = MEMORY[0x26D620690](v1);
  v13(v14, v11);

  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  [v20 setText_];
  MEMORY[0x277D82BD8](v15);
  _allocateUninitializedArray<A>(_:)();
  v16 = v2;
  MEMORY[0x277D82BE0](v21);
  *v16 = v21;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v20);
  [v19 setTitle_];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);

  v23 = v0[152];
  v24 = v0[150];
  MEMORY[0x277D82BD8](v0[153]);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v29 = v0[149];
  v28 = v0[148];
  v26 = v0[147];
  v25 = v0[146];
  v27 = v0[144];
  MEMORY[0x277D82BE0](v25);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v25, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v26);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v26, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v28);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v28, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v29);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v29, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  v30[202] = v3;
  *v3 = v30[58];
  v3[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  v4 = v30[106];
  v5 = v30[104];
  v6 = v30[102];
  v7 = v30[101];
  v8 = v30[99];
  v9 = v30[98];

  return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v9, v8, v7);
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 464);
  v2 = *(*v1 + 1464);
  *(v9 + 464) = *v1;
  *(v9 + 1472) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 864));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v256 = v0;
  v232 = v0[179];
  v234 = v0[178];
  v231 = v0[120];
  v229 = v0[116];
  v230 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v233 = MEMORY[0x26D620690](v1);
  v2 = *(v229 + 8);
  v0[185] = v2;
  v0[186] = (v229 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v231, v230);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  [v232 setText_];
  MEMORY[0x277D82BD8](v233);
  v235 = [v234 text];
  if (v235)
  {
    v224 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v225 = v3;
    MEMORY[0x277D82BD8](v235);
    v226 = v224;
    v227 = v225;
  }

  else
  {
    v226 = 0;
    v227 = 0;
  }

  v223 = Optional<A>.isNilOrEmpty.getter(v226, v227);

  if (v223)
  {
    v4 = *(v228 + 1416);
    v222 = _allocateUninitializedArray<A>(_:)();
  }

  else
  {
    v219 = *(v228 + 1424);
    v220 = *(v228 + 1416);
    v221 = _allocateUninitializedArray<A>(_:)();
    v218 = v5;
    MEMORY[0x277D82BE0](v219);
    *v218 = v219;
    _finalizeUninitializedArray<A>(_:)();
    v222 = v221;
  }

  if (v222)
  {
    v6 = *(v228 + 1416);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v217 = isa;
  }

  else
  {
    v217 = 0;
  }

  v202 = *(v228 + 1432);
  v206 = *(v228 + 1424);
  v201 = *(v228 + 1168);
  v213 = *(v228 + 1120);
  v204 = *(v228 + 1112);
  v205 = *(v228 + 1104);
  v7 = *(v228 + 1056);
  v203 = *(v228 + 1000);
  [v201 setDecoratedRows_];
  MEMORY[0x277D82BD8](v217);
  MEMORY[0x277D82BE0](v202);
  [v201 setTitle_];
  MEMORY[0x277D82BD8](v202);
  v8 = Logger.payments.unsafeMutableAddressor();
  v205(v7, v8, v203);
  MEMORY[0x277D82BE0](v206);
  v207 = swift_allocObject();
  *(v207 + 16) = v206;
  oslog = Logger.logObject.getter();
  v215 = static os_log_type_t.debug.getter();
  v209 = swift_allocObject();
  *(v209 + 16) = 32;
  v210 = swift_allocObject();
  *(v210 + 16) = 8;
  v208 = swift_allocObject();
  *(v208 + 16) = partial apply for implicit closure #5 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  *(v208 + 24) = v207;
  v211 = swift_allocObject();
  *(v211 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v211 + 24) = v208;
  _allocateUninitializedArray<A>(_:)();
  v212 = v9;

  *v212 = partial apply for closure #1 in OSLogArguments.append(_:);
  v212[1] = v209;

  v212[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v212[3] = v210;

  v212[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v212[5] = v211;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v215))
  {
    v10 = *(v228 + 1472);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v199 = createStorage<A>(capacity:type:)(0);
    v200 = createStorage<A>(capacity:type:)(1);
    v251 = buf;
    v252 = v199;
    v253 = v200;
    serialize(_:at:)(2, &v251);
    serialize(_:at:)(1, &v251);
    v254 = partial apply for closure #1 in OSLogArguments.append(_:);
    v255 = v209;
    closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
    if (v10)
    {
    }

    v254 = partial apply for closure #1 in OSLogArguments.append(_:);
    v255 = v210;
    closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
    v254 = partial apply for closure #1 in OSLogArguments.append(_:);
    v255 = v211;
    closure #1 in osLogInternal(_:log:type:)(&v254, &v251, &v252, &v253);
    _os_log_impl(&dword_2686B1000, oslog, v215, "Placing payee into send person label %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v199, 0, v197);
    destroyStorage<A>(_:count:)(v200, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);

    v196 = 0;
  }

  else
  {

    v196 = *(v228 + 1472);
  }

  v194 = *(v228 + 1408);
  v192 = *(v228 + 1136);
  v193 = *(v228 + 1128);
  v190 = *(v228 + 1056);
  v191 = *(v228 + 1000);
  MEMORY[0x277D82BD8](oslog);
  v193(v190, v191);
  v195 = [v194 currencyAmount];
  if (v195)
  {
    v184 = INCurrencyAmount.formattedString.getter();
    v185 = v12;
    MEMORY[0x277D82BD8](v195);
    v186 = Optional<A>.emptyToNil.getter(v184, v185);
    v187 = v13;

    v188 = v186;
    v189 = v187;
  }

  else
  {
    v188 = 0;
    v189 = 0;
  }

  *(v228 + 1496) = v189;
  if (v189)
  {
    v181 = *(v228 + 1120);
    v173 = *(v228 + 1112);
    v174 = *(v228 + 1104);
    v14 = *(v228 + 1048);
    v172 = *(v228 + 1000);
    *(v228 + 384) = v188;
    *(v228 + 392) = v189;
    v15 = Logger.payments.unsafeMutableAddressor();
    v174(v14, v15, v172);

    v175 = swift_allocObject();
    *(v175 + 16) = v188;
    *(v175 + 24) = v189;
    log = Logger.logObject.getter();
    v183 = static os_log_type_t.debug.getter();
    v177 = swift_allocObject();
    *(v177 + 16) = 32;
    v178 = swift_allocObject();
    *(v178 + 16) = 8;
    v176 = swift_allocObject();
    *(v176 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v176 + 24) = v175;
    v179 = swift_allocObject();
    *(v179 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v179 + 24) = v176;
    _allocateUninitializedArray<A>(_:)();
    v180 = v16;

    *v180 = partial apply for closure #1 in OSLogArguments.append(_:);
    v180[1] = v177;

    v180[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v180[3] = v178;

    v180[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v180[5] = v179;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(log, v183))
    {
      v168 = static UnsafeMutablePointer.allocate(capacity:)();
      v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v169 = createStorage<A>(capacity:type:)(0);
      v170 = createStorage<A>(capacity:type:)(1);
      v246 = v168;
      v247 = v169;
      v248 = v170;
      serialize(_:at:)(2, &v246);
      serialize(_:at:)(1, &v246);
      v249 = partial apply for closure #1 in OSLogArguments.append(_:);
      v250 = v177;
      closure #1 in osLogInternal(_:log:type:)(&v249, &v246, &v247, &v248);
      if (v196)
      {
      }

      v249 = partial apply for closure #1 in OSLogArguments.append(_:);
      v250 = v178;
      closure #1 in osLogInternal(_:log:type:)(&v249, &v246, &v247, &v248);
      v249 = partial apply for closure #1 in OSLogArguments.append(_:);
      v250 = v179;
      closure #1 in osLogInternal(_:log:type:)(&v249, &v246, &v247, &v248);
      _os_log_impl(&dword_2686B1000, log, v183, "Placing amount into send amount label %s", v168, 0xCu);
      destroyStorage<A>(_:count:)(v169, 0, v167);
      destroyStorage<A>(_:count:)(v170, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v168, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v162 = *(v228 + 1456);
    v163 = *(v228 + 1448);
    v161 = *(v228 + 1440);
    v154 = *(v228 + 1416);
    v151 = *(v228 + 1136);
    v152 = *(v228 + 1128);
    v149 = *(v228 + 1048);
    v150 = *(v228 + 1000);
    v160 = *(v228 + 872);
    v159 = *(v228 + 848);
    MEMORY[0x277D82BD8](log);
    v152(v149, v150);
    v157 = SAUIAppPunchOut.__allocating_init()();
    *(v228 + 1504) = v157;
    *(v228 + 656) = v157;

    v153 = MEMORY[0x26D620690](v188, v189);

    [v157 setText_];
    MEMORY[0x277D82BD8](v153);
    type metadata accessor for SATextDecorationRegion();
    _allocateUninitializedArray<A>(_:)();
    v156 = v19;
    v20 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
    v155 = static SATextDecorationRegion.from(_:property:)(v188, v189, v20, v21);

    *v156 = v155;
    _finalizeUninitializedArray<A>(_:)();
    v158 = Array._bridgeToObjectiveC()().super.isa;

    [v157 setRegions_];
    MEMORY[0x277D82BD8](v158);
    v22 = SAUIAppPunchOut.__allocating_init()();
    *(v228 + 1512) = v22;
    *(v228 + 664) = v22;
    outlined init with copy of GlobalsProviding(v159 + 80, v228 + 136);
    v164 = *(v228 + 160);
    v165 = *(v228 + 168);
    __swift_project_boxed_opaque_existential_1((v228 + 136), v164);
    SendPaymentSlots.rawValue.getter(1);
    String.toSpeakableString.getter();

    v163(v160, 0, 1, v161);
    v166 = (*(v165 + 16) + **(v165 + 16));
    v23 = *(*(v165 + 16) + 4);
    v24 = swift_task_alloc();
    *(v228 + 1520) = v24;
    *v24 = *(v228 + 464);
    v24[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v25 = *(v228 + 952);
    v26 = *(v228 + 872);

    return v166(v25, v26, v164, v165);
  }

  else
  {
    v17 = *(v228 + 800);
    v18 = (*(*(v228 + 840) + 8))(*(v228 + 824));
    v171 = v18;
    if (v18 && (v148 = [v18 feeAmount], MEMORY[0x277D82BD8](v171), v148))
    {
      v142 = INCurrencyAmount.formattedString.getter();
      v143 = v27;
      MEMORY[0x277D82BD8](v148);
      v144 = Optional<A>.emptyToNil.getter(v142, v143);
      v145 = v28;

      v146 = v144;
      v147 = v145;
    }

    else
    {
      v146 = 0;
      v147 = 0;
    }

    *(v228 + 1536) = v147;
    if (v147)
    {
      v139 = *(v228 + 1120);
      v131 = *(v228 + 1112);
      v132 = *(v228 + 1104);
      v29 = *(v228 + 1040);
      v130 = *(v228 + 1000);
      *(v228 + 368) = v146;
      *(v228 + 376) = v147;
      v30 = Logger.payments.unsafeMutableAddressor();
      v132(v29, v30, v130);

      v133 = swift_allocObject();
      *(v133 + 16) = v146;
      *(v133 + 24) = v147;
      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.debug.getter();
      v135 = swift_allocObject();
      *(v135 + 16) = 32;
      v136 = swift_allocObject();
      *(v136 + 16) = 8;
      v134 = swift_allocObject();
      *(v134 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
      *(v134 + 24) = v133;
      v137 = swift_allocObject();
      *(v137 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v137 + 24) = v134;
      _allocateUninitializedArray<A>(_:)();
      v138 = v31;

      *v138 = partial apply for closure #1 in OSLogArguments.append(_:);
      v138[1] = v135;

      v138[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v138[3] = v136;

      v138[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v138[5] = v137;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(v140, v141))
      {
        v126 = static UnsafeMutablePointer.allocate(capacity:)();
        v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v127 = createStorage<A>(capacity:type:)(0);
        v128 = createStorage<A>(capacity:type:)(1);
        v241 = v126;
        v242 = v127;
        v243 = v128;
        serialize(_:at:)(2, &v241);
        serialize(_:at:)(1, &v241);
        v244 = partial apply for closure #1 in OSLogArguments.append(_:);
        v245 = v135;
        closure #1 in osLogInternal(_:log:type:)(&v244, &v241, &v242, &v243);
        if (v196)
        {
        }

        v244 = partial apply for closure #1 in OSLogArguments.append(_:);
        v245 = v136;
        closure #1 in osLogInternal(_:log:type:)(&v244, &v241, &v242, &v243);
        v244 = partial apply for closure #1 in OSLogArguments.append(_:);
        v245 = v137;
        closure #1 in osLogInternal(_:log:type:)(&v244, &v241, &v242, &v243);
        _os_log_impl(&dword_2686B1000, v140, v141, "Placing fee into send fee label %s", v126, 0xCu);
        destroyStorage<A>(_:count:)(v127, 0, v125);
        destroyStorage<A>(_:count:)(v128, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v126, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v120 = *(v228 + 1456);
      v121 = *(v228 + 1448);
      v119 = *(v228 + 1440);
      v112 = *(v228 + 1416);
      v109 = *(v228 + 1136);
      v110 = *(v228 + 1128);
      v107 = *(v228 + 1040);
      v108 = *(v228 + 1000);
      v118 = *(v228 + 864);
      v117 = *(v228 + 848);
      MEMORY[0x277D82BD8](v140);
      v110(v107, v108);
      v115 = SAUIAppPunchOut.__allocating_init()();
      *(v228 + 1544) = v115;
      *(v228 + 640) = v115;

      v111 = MEMORY[0x26D620690](v146, v147);

      [v115 setText_];
      MEMORY[0x277D82BD8](v111);
      type metadata accessor for SATextDecorationRegion();
      _allocateUninitializedArray<A>(_:)();
      v114 = v32;
      v33 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
      v113 = static SATextDecorationRegion.from(_:property:)(v146, v147, v33, v34);

      *v114 = v113;
      _finalizeUninitializedArray<A>(_:)();
      v116 = Array._bridgeToObjectiveC()().super.isa;

      [v115 setRegions_];
      MEMORY[0x277D82BD8](v116);
      v35 = SAUIAppPunchOut.__allocating_init()();
      *(v228 + 1552) = v35;
      *(v228 + 648) = v35;
      outlined init with copy of GlobalsProviding(v117 + 80, v228 + 96);
      v122 = *(v228 + 120);
      v123 = *(v228 + 128);
      __swift_project_boxed_opaque_existential_1((v228 + 96), v122);
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
      String.toSpeakableString.getter();

      v121(v118, 0, 1, v119);
      v124 = (*(v123 + 16) + **(v123 + 16));
      v36 = *(*(v123 + 16) + 4);
      v37 = swift_task_alloc();
      *(v228 + 1560) = v37;
      *v37 = *(v228 + 464);
      v37[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v38 = *(v228 + 944);
      v39 = *(v228 + 864);

      return v124(v38, v39, v122, v123);
    }

    else
    {
      v129 = [*(v228 + 1408) note];
      if (v129)
      {
        v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v40;
        MEMORY[0x277D82BD8](v129);
        v105 = v103;
        v106 = v104;
      }

      else
      {
        v105 = 0;
        v106 = 0;
      }

      v101 = Optional<A>.emptyToNil.getter(v105, v106);
      v102 = v41;
      *(v228 + 1576) = v41;
      if (v41)
      {
        v98 = *(v228 + 1120);
        v90 = *(v228 + 1112);
        v91 = *(v228 + 1104);
        v42 = *(v228 + 1032);
        v89 = *(v228 + 1000);
        *(v228 + 352) = v101;
        *(v228 + 360) = v41;

        v43 = Logger.payments.unsafeMutableAddressor();
        v91(v42, v43, v89);

        v92 = swift_allocObject();
        *(v92 + 16) = v101;
        *(v92 + 24) = v102;
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.debug.getter();
        v94 = swift_allocObject();
        *(v94 + 16) = 32;
        v95 = swift_allocObject();
        *(v95 + 16) = 8;
        v93 = swift_allocObject();
        *(v93 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        *(v93 + 24) = v92;
        v96 = swift_allocObject();
        *(v96 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
        *(v96 + 24) = v93;
        _allocateUninitializedArray<A>(_:)();
        v97 = v44;

        *v97 = partial apply for closure #1 in OSLogArguments.append(_:);
        v97[1] = v94;

        v97[2] = partial apply for closure #1 in OSLogArguments.append(_:);
        v97[3] = v95;

        v97[4] = partial apply for closure #1 in OSLogArguments.append(_:);
        v97[5] = v96;
        _finalizeUninitializedArray<A>(_:)();

        if (os_log_type_enabled(v99, v100))
        {
          v79 = static UnsafeMutablePointer.allocate(capacity:)();
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          v80 = createStorage<A>(capacity:type:)(0);
          v81 = createStorage<A>(capacity:type:)(1);
          v236 = v79;
          v237 = v80;
          v238 = v81;
          serialize(_:at:)(2, &v236);
          serialize(_:at:)(1, &v236);
          v239 = partial apply for closure #1 in OSLogArguments.append(_:);
          v240 = v94;
          closure #1 in osLogInternal(_:log:type:)(&v239, &v236, &v237, &v238);
          if (v196)
          {
          }

          v239 = partial apply for closure #1 in OSLogArguments.append(_:);
          v240 = v95;
          closure #1 in osLogInternal(_:log:type:)(&v239, &v236, &v237, &v238);
          v239 = partial apply for closure #1 in OSLogArguments.append(_:);
          v240 = v96;
          closure #1 in osLogInternal(_:log:type:)(&v239, &v236, &v237, &v238);
          _os_log_impl(&dword_2686B1000, v99, v100, "Placing note into send note label %s", v79, 0xCu);
          destroyStorage<A>(_:count:)(v80, 0, v78);
          destroyStorage<A>(_:count:)(v81, 1, MEMORY[0x277D84F70] + 8);
          MEMORY[0x26D620BD0](v79, MEMORY[0x277D84B78]);
        }

        else
        {
        }

        v73 = *(v228 + 1456);
        v74 = *(v228 + 1448);
        v72 = *(v228 + 1440);
        v65 = *(v228 + 1416);
        v62 = *(v228 + 1136);
        v63 = *(v228 + 1128);
        v60 = *(v228 + 1032);
        v61 = *(v228 + 1000);
        v71 = *(v228 + 856);
        v70 = *(v228 + 848);
        MEMORY[0x277D82BD8](v99);
        v63(v60, v61);
        v68 = SAUIAppPunchOut.__allocating_init()();
        *(v228 + 1584) = v68;
        *(v228 + 624) = v68;

        v64 = MEMORY[0x26D620690](v101, v102);

        [v68 setText_];
        MEMORY[0x277D82BD8](v64);
        type metadata accessor for SATextDecorationRegion();
        _allocateUninitializedArray<A>(_:)();
        v67 = v52;
        v53 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
        v66 = static SATextDecorationRegion.from(_:property:)(v101, v102, v53, v54);

        *v67 = v66;
        _finalizeUninitializedArray<A>(_:)();
        v69 = Array._bridgeToObjectiveC()().super.isa;

        [v68 setRegions_];
        MEMORY[0x277D82BD8](v69);
        v55 = SAUIAppPunchOut.__allocating_init()();
        *(v228 + 1592) = v55;
        *(v228 + 632) = v55;
        outlined init with copy of GlobalsProviding(v70 + 80, v228 + 56);
        v75 = *(v228 + 80);
        v76 = *(v228 + 88);
        __swift_project_boxed_opaque_existential_1((v228 + 56), v75);
        SendPaymentSlots.rawValue.getter(2);
        String.toSpeakableString.getter();

        v74(v71, 0, 1, v72);
        v77 = (*(v76 + 16) + **(v76 + 16));
        v56 = *(*(v76 + 16) + 4);
        v57 = swift_task_alloc();
        *(v228 + 1600) = v57;
        *v57 = *(v228 + 464);
        v57[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        v58 = *(v228 + 936);
        v59 = *(v228 + 856);

        return v77(v58, v59, v75, v76);
      }

      else
      {

        v82 = *(v228 + 1424);
        v83 = *(v228 + 1408);
        MEMORY[0x277D82BD8](*(v228 + 1432));
        MEMORY[0x277D82BD8](v82);
        MEMORY[0x277D82BD8](v83);
        v88 = *(v228 + 1192);
        v87 = *(v228 + 1184);
        v85 = *(v228 + 1176);
        v84 = *(v228 + 1168);
        v86 = *(v228 + 1152);
        MEMORY[0x277D82BE0](v84);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v84, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v85);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v85, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v87);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v87, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        MEMORY[0x277D82BE0](v88);
        SASTItemGroup.addToTemplateIfApplicable(_:)(v88, &protocol witness table for SASTColumnDataListItem);
        swift_unknownObjectRelease();
        v45 = swift_task_alloc();
        *(v228 + 1616) = v45;
        *v45 = *(v228 + 464);
        v45[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
        v46 = *(v228 + 848);
        v47 = *(v228 + 832);
        v48 = *(v228 + 816);
        v49 = *(v228 + 808);
        v50 = *(v228 + 792);
        v51 = *(v228 + 784);

        return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v51, v50, v49);
      }
    }
  }
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 464);
  v2 = *(*v1 + 1520);
  *(v9 + 464) = *v1;
  *(v9 + 1528) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 856));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v153 = v0;
  v137 = v0[189];
  v138 = v0[188];
  v139 = v0[187];
  v129 = v0[186];
  v130 = v0[185];
  v134 = v0[177];
  v136 = v0[147];
  v131 = v0[119];
  v128 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v132 = MEMORY[0x26D620690](v1);
  v130(v131, v128);

  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  [v137 setText_];
  MEMORY[0x277D82BD8](v132);
  _allocateUninitializedArray<A>(_:)();
  v133 = v2;
  MEMORY[0x277D82BE0](v138);
  *v133 = v138;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v136 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v137);
  [v136 setTitle_];
  MEMORY[0x277D82BD8](v137);
  MEMORY[0x277D82BD8](v137);
  MEMORY[0x277D82BD8](v138);

  v141 = *(v140 + 1528);
  v3 = *(v140 + 800);
  v4 = (*(*(v140 + 840) + 8))(*(v140 + 824));
  v142 = v4;
  if (v4 && (v127 = [v4 feeAmount], MEMORY[0x277D82BD8](v142), v127))
  {
    v121 = INCurrencyAmount.formattedString.getter();
    v122 = v5;
    MEMORY[0x277D82BD8](v127);
    v123 = Optional<A>.emptyToNil.getter(v121, v122);
    v124 = v6;

    v125 = v123;
    v126 = v124;
  }

  else
  {
    v125 = 0;
    v126 = 0;
  }

  *(v140 + 1536) = v126;
  if (v126)
  {
    v118 = *(v140 + 1120);
    v110 = *(v140 + 1112);
    v111 = *(v140 + 1104);
    v7 = *(v140 + 1040);
    v109 = *(v140 + 1000);
    *(v140 + 368) = v125;
    *(v140 + 376) = v126;
    v8 = Logger.payments.unsafeMutableAddressor();
    v111(v7, v8, v109);

    v112 = swift_allocObject();
    *(v112 + 16) = v125;
    *(v112 + 24) = v126;
    oslog = Logger.logObject.getter();
    v120 = static os_log_type_t.debug.getter();
    v114 = swift_allocObject();
    *(v114 + 16) = 32;
    v115 = swift_allocObject();
    *(v115 + 16) = 8;
    v113 = swift_allocObject();
    *(v113 + 16) = partial apply for implicit closure #1 in static Logger.logForCrash(_:);
    *(v113 + 24) = v112;
    v116 = swift_allocObject();
    *(v116 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v116 + 24) = v113;
    _allocateUninitializedArray<A>(_:)();
    v117 = v9;

    *v117 = partial apply for closure #1 in OSLogArguments.append(_:);
    v117[1] = v114;

    v117[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v117[3] = v115;

    v117[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v117[5] = v116;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v120))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v106 = createStorage<A>(capacity:type:)(0);
      v107 = createStorage<A>(capacity:type:)(1);
      v148 = buf;
      v149 = v106;
      v150 = v107;
      serialize(_:at:)(2, &v148);
      serialize(_:at:)(1, &v148);
      v151 = partial apply for closure #1 in OSLogArguments.append(_:);
      v152 = v114;
      closure #1 in osLogInternal(_:log:type:)(&v151, &v148, &v149, &v150);
      if (v141)
      {
      }

      v151 = partial apply for closure #1 in OSLogArguments.append(_:);
      v152 = v115;
      closure #1 in osLogInternal(_:log:type:)(&v151, &v148, &v149, &v150);
      v151 = partial apply for closure #1 in OSLogArguments.append(_:);
      v152 = v116;
      closure #1 in osLogInternal(_:log:type:)(&v151, &v148, &v149, &v150);
      _os_log_impl(&dword_2686B1000, oslog, v120, "Placing fee into send fee label %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v106, 0, v104);
      destroyStorage<A>(_:count:)(v107, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v99 = *(v140 + 1456);
    v100 = *(v140 + 1448);
    v98 = *(v140 + 1440);
    v91 = *(v140 + 1416);
    v88 = *(v140 + 1136);
    v89 = *(v140 + 1128);
    v86 = *(v140 + 1040);
    v87 = *(v140 + 1000);
    v97 = *(v140 + 864);
    v96 = *(v140 + 848);
    MEMORY[0x277D82BD8](oslog);
    v89(v86, v87);
    v94 = SAUIAppPunchOut.__allocating_init()();
    *(v140 + 1544) = v94;
    *(v140 + 640) = v94;

    v90 = MEMORY[0x26D620690](v125, v126);

    [v94 setText_];
    MEMORY[0x277D82BD8](v90);
    type metadata accessor for SATextDecorationRegion();
    _allocateUninitializedArray<A>(_:)();
    v93 = v11;
    v12 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
    v92 = static SATextDecorationRegion.from(_:property:)(v125, v126, v12, v13);

    *v93 = v92;
    _finalizeUninitializedArray<A>(_:)();
    v95 = Array._bridgeToObjectiveC()().super.isa;

    [v94 setRegions_];
    MEMORY[0x277D82BD8](v95);
    v14 = SAUIAppPunchOut.__allocating_init()();
    *(v140 + 1552) = v14;
    *(v140 + 648) = v14;
    outlined init with copy of GlobalsProviding(v96 + 80, v140 + 96);
    v101 = *(v140 + 120);
    v102 = *(v140 + 128);
    __swift_project_boxed_opaque_existential_1((v140 + 96), v101);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
    String.toSpeakableString.getter();

    v100(v97, 0, 1, v98);
    v103 = (*(v102 + 16) + **(v102 + 16));
    v15 = *(*(v102 + 16) + 4);
    v16 = swift_task_alloc();
    *(v140 + 1560) = v16;
    *v16 = *(v140 + 464);
    v16[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v17 = *(v140 + 944);
    v18 = *(v140 + 864);

    return v103(v17, v18, v101, v102);
  }

  else
  {
    v108 = [*(v140 + 1408) note];
    if (v108)
    {
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v19;
      MEMORY[0x277D82BD8](v108);
      v84 = v82;
      v85 = v83;
    }

    else
    {
      v84 = 0;
      v85 = 0;
    }

    v80 = Optional<A>.emptyToNil.getter(v84, v85);
    v81 = v20;
    *(v140 + 1576) = v20;
    if (v20)
    {
      v77 = *(v140 + 1120);
      v69 = *(v140 + 1112);
      v70 = *(v140 + 1104);
      v21 = *(v140 + 1032);
      v68 = *(v140 + 1000);
      *(v140 + 352) = v80;
      *(v140 + 360) = v20;

      v22 = Logger.payments.unsafeMutableAddressor();
      v70(v21, v22, v68);

      v71 = swift_allocObject();
      *(v71 + 16) = v80;
      *(v71 + 24) = v81;
      log = Logger.logObject.getter();
      v79 = static os_log_type_t.debug.getter();
      v73 = swift_allocObject();
      *(v73 + 16) = 32;
      v74 = swift_allocObject();
      *(v74 + 16) = 8;
      v72 = swift_allocObject();
      *(v72 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      *(v72 + 24) = v71;
      v75 = swift_allocObject();
      *(v75 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
      *(v75 + 24) = v72;
      _allocateUninitializedArray<A>(_:)();
      v76 = v23;

      *v76 = partial apply for closure #1 in OSLogArguments.append(_:);
      v76[1] = v73;

      v76[2] = partial apply for closure #1 in OSLogArguments.append(_:);
      v76[3] = v74;

      v76[4] = partial apply for closure #1 in OSLogArguments.append(_:);
      v76[5] = v75;
      _finalizeUninitializedArray<A>(_:)();

      if (os_log_type_enabled(log, v79))
      {
        v58 = static UnsafeMutablePointer.allocate(capacity:)();
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v59 = createStorage<A>(capacity:type:)(0);
        v60 = createStorage<A>(capacity:type:)(1);
        v143 = v58;
        v144 = v59;
        v145 = v60;
        serialize(_:at:)(2, &v143);
        serialize(_:at:)(1, &v143);
        v146 = partial apply for closure #1 in OSLogArguments.append(_:);
        v147 = v73;
        closure #1 in osLogInternal(_:log:type:)(&v146, &v143, &v144, &v145);
        if (v141)
        {
        }

        v146 = partial apply for closure #1 in OSLogArguments.append(_:);
        v147 = v74;
        closure #1 in osLogInternal(_:log:type:)(&v146, &v143, &v144, &v145);
        v146 = partial apply for closure #1 in OSLogArguments.append(_:);
        v147 = v75;
        closure #1 in osLogInternal(_:log:type:)(&v146, &v143, &v144, &v145);
        _os_log_impl(&dword_2686B1000, log, v79, "Placing note into send note label %s", v58, 0xCu);
        destroyStorage<A>(_:count:)(v59, 0, v57);
        destroyStorage<A>(_:count:)(v60, 1, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](v58, MEMORY[0x277D84B78]);
      }

      else
      {
      }

      v52 = *(v140 + 1456);
      v53 = *(v140 + 1448);
      v51 = *(v140 + 1440);
      v44 = *(v140 + 1416);
      v41 = *(v140 + 1136);
      v42 = *(v140 + 1128);
      v39 = *(v140 + 1032);
      v40 = *(v140 + 1000);
      v50 = *(v140 + 856);
      v49 = *(v140 + 848);
      MEMORY[0x277D82BD8](log);
      v42(v39, v40);
      v47 = SAUIAppPunchOut.__allocating_init()();
      *(v140 + 1584) = v47;
      *(v140 + 624) = v47;

      v43 = MEMORY[0x26D620690](v80, v81);

      [v47 setText_];
      MEMORY[0x277D82BD8](v43);
      type metadata accessor for SATextDecorationRegion();
      _allocateUninitializedArray<A>(_:)();
      v46 = v31;
      v32 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
      v45 = static SATextDecorationRegion.from(_:property:)(v80, v81, v32, v33);

      *v46 = v45;
      _finalizeUninitializedArray<A>(_:)();
      v48 = Array._bridgeToObjectiveC()().super.isa;

      [v47 setRegions_];
      MEMORY[0x277D82BD8](v48);
      v34 = SAUIAppPunchOut.__allocating_init()();
      *(v140 + 1592) = v34;
      *(v140 + 632) = v34;
      outlined init with copy of GlobalsProviding(v49 + 80, v140 + 56);
      v54 = *(v140 + 80);
      v55 = *(v140 + 88);
      __swift_project_boxed_opaque_existential_1((v140 + 56), v54);
      SendPaymentSlots.rawValue.getter(2);
      String.toSpeakableString.getter();

      v53(v50, 0, 1, v51);
      v56 = (*(v55 + 16) + **(v55 + 16));
      v35 = *(*(v55 + 16) + 4);
      v36 = swift_task_alloc();
      *(v140 + 1600) = v36;
      *v36 = *(v140 + 464);
      v36[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v37 = *(v140 + 936);
      v38 = *(v140 + 856);

      return v56(v37, v38, v54, v55);
    }

    else
    {

      v61 = *(v140 + 1424);
      v62 = *(v140 + 1408);
      MEMORY[0x277D82BD8](*(v140 + 1432));
      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v62);
      v67 = *(v140 + 1192);
      v66 = *(v140 + 1184);
      v64 = *(v140 + 1176);
      v63 = *(v140 + 1168);
      v65 = *(v140 + 1152);
      MEMORY[0x277D82BE0](v63);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v63, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v64);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v64, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v66);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v66, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      MEMORY[0x277D82BE0](v67);
      SASTItemGroup.addToTemplateIfApplicable(_:)(v67, &protocol witness table for SASTColumnDataListItem);
      swift_unknownObjectRelease();
      v24 = swift_task_alloc();
      *(v140 + 1616) = v24;
      *v24 = *(v140 + 464);
      v24[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
      v25 = *(v140 + 848);
      v26 = *(v140 + 832);
      v27 = *(v140 + 816);
      v28 = *(v140 + 808);
      v29 = *(v140 + 792);
      v30 = *(v140 + 784);

      return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v30, v29, v28);
    }
  }
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 464);
  v2 = *(*v1 + 1560);
  *(v9 + 464) = *v1;
  *(v9 + 1568) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 848));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v91 = v0;
  v80 = v0[194];
  v81 = v0[193];
  v82 = v0[192];
  v72 = v0[186];
  v73 = v0[185];
  v77 = v0[177];
  v79 = v0[148];
  v74 = v0[118];
  v71 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v75 = MEMORY[0x26D620690](v1);
  v73(v74, v71);

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  [v80 setText_];
  MEMORY[0x277D82BD8](v75);
  _allocateUninitializedArray<A>(_:)();
  v76 = v2;
  MEMORY[0x277D82BE0](v81);
  *v76 = v81;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v79 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v80);
  [v79 setTitle_];
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v80);
  MEMORY[0x277D82BD8](v81);

  v84 = *(v83 + 1568);
  v85 = [*(v83 + 1408) note];
  if (v85)
  {
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v3;
    MEMORY[0x277D82BD8](v85);
    v69 = v67;
    v70 = v68;
  }

  else
  {
    v69 = 0;
    v70 = 0;
  }

  v65 = Optional<A>.emptyToNil.getter(v69, v70);
  v66 = v4;
  *(v83 + 1576) = v4;
  if (v4)
  {
    v62 = *(v83 + 1120);
    v54 = *(v83 + 1112);
    v55 = *(v83 + 1104);
    v5 = *(v83 + 1032);
    v53 = *(v83 + 1000);
    *(v83 + 352) = v65;
    *(v83 + 360) = v4;

    v6 = Logger.payments.unsafeMutableAddressor();
    v55(v5, v6, v53);

    v56 = swift_allocObject();
    *(v56 + 16) = v65;
    *(v56 + 24) = v66;
    oslog = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    v58 = swift_allocObject();
    *(v58 + 16) = 32;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v57 = swift_allocObject();
    *(v57 + 16) = partial apply for implicit closure #8 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    *(v57 + 24) = v56;
    v60 = swift_allocObject();
    *(v60 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
    *(v60 + 24) = v57;
    _allocateUninitializedArray<A>(_:)();
    v61 = v7;

    *v61 = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[1] = v58;

    v61[2] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[3] = v59;

    v61[4] = partial apply for closure #1 in OSLogArguments.append(_:);
    v61[5] = v60;
    _finalizeUninitializedArray<A>(_:)();

    if (os_log_type_enabled(oslog, v64))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v44 = createStorage<A>(capacity:type:)(0);
      v45 = createStorage<A>(capacity:type:)(1);
      v86 = buf;
      v87 = v44;
      v88 = v45;
      serialize(_:at:)(2, &v86);
      serialize(_:at:)(1, &v86);
      v89 = partial apply for closure #1 in OSLogArguments.append(_:);
      v90 = v58;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v86, &v87, &v88);
      if (v84)
      {
      }

      v89 = partial apply for closure #1 in OSLogArguments.append(_:);
      v90 = v59;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v86, &v87, &v88);
      v89 = partial apply for closure #1 in OSLogArguments.append(_:);
      v90 = v60;
      closure #1 in osLogInternal(_:log:type:)(&v89, &v86, &v87, &v88);
      _os_log_impl(&dword_2686B1000, oslog, v64, "Placing note into send note label %s", buf, 0xCu);
      destroyStorage<A>(_:count:)(v44, 0, v42);
      destroyStorage<A>(_:count:)(v45, 1, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
    }

    else
    {
    }

    v37 = *(v83 + 1456);
    v38 = *(v83 + 1448);
    v36 = *(v83 + 1440);
    v29 = *(v83 + 1416);
    v26 = *(v83 + 1136);
    v27 = *(v83 + 1128);
    v24 = *(v83 + 1032);
    v25 = *(v83 + 1000);
    v35 = *(v83 + 856);
    v34 = *(v83 + 848);
    MEMORY[0x277D82BD8](oslog);
    v27(v24, v25);
    v32 = SAUIAppPunchOut.__allocating_init()();
    *(v83 + 1584) = v32;
    *(v83 + 624) = v32;

    v28 = MEMORY[0x26D620690](v65, v66);

    [v32 setText_];
    MEMORY[0x277D82BD8](v28);
    type metadata accessor for SATextDecorationRegion();
    _allocateUninitializedArray<A>(_:)();
    v31 = v16;
    v17 = default argument 1 of static SATextDecorationRegion.from(_:property:)();
    v30 = static SATextDecorationRegion.from(_:property:)(v65, v66, v17, v18);

    *v31 = v30;
    _finalizeUninitializedArray<A>(_:)();
    v33 = Array._bridgeToObjectiveC()().super.isa;

    [v32 setRegions_];
    MEMORY[0x277D82BD8](v33);
    v19 = SAUIAppPunchOut.__allocating_init()();
    *(v83 + 1592) = v19;
    *(v83 + 632) = v19;
    outlined init with copy of GlobalsProviding(v34 + 80, v83 + 56);
    v39 = *(v83 + 80);
    v40 = *(v83 + 88);
    __swift_project_boxed_opaque_existential_1((v83 + 56), v39);
    SendPaymentSlots.rawValue.getter(2);
    String.toSpeakableString.getter();

    v38(v35, 0, 1, v36);
    v41 = (*(v40 + 16) + **(v40 + 16));
    v20 = *(*(v40 + 16) + 4);
    v21 = swift_task_alloc();
    *(v83 + 1600) = v21;
    *v21 = *(v83 + 464);
    v21[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v22 = *(v83 + 936);
    v23 = *(v83 + 856);

    return v41(v22, v23, v39, v40);
  }

  else
  {

    v46 = *(v83 + 1424);
    v47 = *(v83 + 1408);
    MEMORY[0x277D82BD8](*(v83 + 1432));
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    v52 = *(v83 + 1192);
    v51 = *(v83 + 1184);
    v49 = *(v83 + 1176);
    v48 = *(v83 + 1168);
    v50 = *(v83 + 1152);
    MEMORY[0x277D82BE0](v48);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v48, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v49);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v49, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v51);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v51, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    MEMORY[0x277D82BE0](v52);
    SASTItemGroup.addToTemplateIfApplicable(_:)(v52, &protocol witness table for SASTColumnDataListItem);
    swift_unknownObjectRelease();
    v8 = swift_task_alloc();
    *(v83 + 1616) = v8;
    *v8 = *(v83 + 464);
    v8[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
    v9 = *(v83 + 848);
    v10 = *(v83 + 832);
    v11 = *(v83 + 816);
    v12 = *(v83 + 808);
    v13 = *(v83 + 792);
    v14 = *(v83 + 784);

    return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v14, v13, v12);
  }
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 464);
  v2 = *(*v1 + 1600);
  *(v9 + 464) = *v1;
  *(v9 + 1608) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 840));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v20 = v0[199];
  v21 = v0[198];
  v22 = v0[197];
  v12 = v0[186];
  v13 = v0[185];
  v17 = v0[177];
  v19 = v0[149];
  v14 = v0[117];
  v11 = v0[115];
  v0[58] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v15 = MEMORY[0x26D620690](v1);
  v13(v14, v11);

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  [v20 setText_];
  MEMORY[0x277D82BD8](v15);
  _allocateUninitializedArray<A>(_:)();
  v16 = v2;
  MEMORY[0x277D82BE0](v21);
  *v16 = v21;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setDecoratedRows_];
  MEMORY[0x277D82BD8](isa);
  MEMORY[0x277D82BE0](v20);
  [v19 setTitle_];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);

  v23 = v0[178];
  v24 = v0[176];
  MEMORY[0x277D82BD8](v0[179]);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v29 = v0[149];
  v28 = v0[148];
  v26 = v0[147];
  v25 = v0[146];
  v27 = v0[144];
  MEMORY[0x277D82BE0](v25);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v25, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v26);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v26, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v28);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v28, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  MEMORY[0x277D82BE0](v29);
  SASTItemGroup.addToTemplateIfApplicable(_:)(v29, &protocol witness table for SASTColumnDataListItem);
  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  v30[202] = v3;
  *v3 = v30[58];
  v3[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  v4 = v30[106];
  v5 = v30[104];
  v6 = v30[102];
  v7 = v30[101];
  v8 = v30[99];
  v9 = v30[98];

  return ConfirmationViewBuilder.makeWatchConfirmationButtons<A>(app:intent:confirmLabelProvider:)(v9, v8, v7);
}

{
  v49 = v0;
  v1 = v0[203];
  v0[58] = v0;
  v0[76] = v1;
  v43 = [v1 templateItems];
  if (v43)
  {
    v2 = v42[145];
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v43);
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (!v41)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v3 = v42[144];
  v42[77] = v41;
  v39 = [v3 templateItems];
  if (v39)
  {
    v4 = v42[145];
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v39);
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  if (!v38)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16SASTTemplateItem_pGMd, &_sSaySo16SASTTemplateItem_pGMR);
  lazy protocol witness table accessor for type [SASTTemplateItem] and conformance [A]();
  Array.append<A>(contentsOf:)();
  v6 = v42[145];
  isa = Array._bridgeToObjectiveC()().super.isa;

  v26 = v42[144];
  v33 = v42[140];
  v24 = v42[139];
  v25 = v42[138];
  v7 = v42[127];
  v23 = v42[125];
  [v26 setTemplateItems_];
  MEMORY[0x277D82BD8](isa);
  v8 = Logger.payments.unsafeMutableAddressor();
  v25(v7, v8, v23);
  MEMORY[0x277D82BE0](v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  oslog = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = 32;
  v30 = swift_allocObject();
  *(v30 + 16) = 8;
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for implicit closure #9 in ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  *(v28 + 24) = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = partial apply for implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:);
  *(v31 + 24) = v28;
  _allocateUninitializedArray<A>(_:)();
  v32 = v9;

  *v32 = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[1] = v29;

  v32[2] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[3] = v30;

  v32[4] = partial apply for closure #1 in OSLogArguments.append(_:);
  v32[5] = v31;
  _finalizeUninitializedArray<A>(_:)();

  if (os_log_type_enabled(oslog, v35))
  {
    v10 = v42[204];
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v21 = createStorage<A>(capacity:type:)(0);
    v22 = createStorage<A>(capacity:type:)(1);
    v44 = buf;
    v45 = v21;
    v46 = v22;
    serialize(_:at:)(2, &v44);
    serialize(_:at:)(1, &v44);
    v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48 = v29;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    if (v10)
    {
    }

    v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48 = v30;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    v47 = partial apply for closure #1 in OSLogArguments.append(_:);
    v48 = v31;
    closure #1 in osLogInternal(_:log:type:)(&v47, &v44, &v45, &v46);
    _os_log_impl(&dword_2686B1000, oslog, v35, "#ConfirmationViewBuilder created SASTItemGroup %s", buf, 0xCu);
    destroyStorage<A>(_:count:)(v21, 0, v19);
    destroyStorage<A>(_:count:)(v22, 1, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v18 = v42[144];
  v16 = v42[142];
  v17 = v42[141];
  v14 = v42[127];
  v15 = v42[125];
  MEMORY[0x277D82BD8](oslog);
  v17(v14, v15);
  MEMORY[0x277D82BE0](v18);
  v11 = swift_task_alloc();
  v42[205] = v11;
  *v11 = v42[58];
  v11[1] = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  v12 = v42[106];
  v13 = v42[101];

  return ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(v13);
}

{
  v7 = v0[206];
  v10 = v0[203];
  v11 = v0[149];
  v12 = v0[148];
  v13 = v0[147];
  v14 = v0[146];
  v1 = v0[144];
  v15 = v1;
  v0[58] = v0;
  [v1 setConfirmationOptions_];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v15);
  type metadata accessor for SAAceView();
  v9 = _allocateUninitializedArray<A>(_:)();
  v8 = v2;
  MEMORY[0x277D82BE0](v15);
  *v8 = v15;
  _finalizeUninitializedArray<A>(_:)();
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v3 = v0[137];
  v16 = v0[136];
  v17 = v0[135];
  v18 = v0[134];
  v19 = v0[133];
  v20 = v0[132];
  v21 = v0[131];
  v22 = v0[130];
  v23 = v0[129];
  v24 = v0[128];
  v25 = v0[127];
  v26 = v0[124];
  v27 = v0[123];
  v28 = v0[122];
  v29 = v0[121];
  v30 = v0[120];
  v31 = v0[119];
  v32 = v0[118];
  v33 = v0[117];
  v34 = v0[114];
  v35 = v0[113];
  v36 = v0[112];
  v37 = v0[111];
  v38 = v0[110];
  v39 = v0[109];
  v40 = v0[108];
  v41 = v0[107];

  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4(v9);
}

{
  v7 = v0[153];
  v8 = v0[152];
  v9 = v0[150];
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[147];
  v13 = v0[146];
  v14 = v0[144];
  v1 = v0[114];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v2 = v0[158];
  v3 = v0[137];
  v15 = v0[136];
  v16 = v0[135];
  v17 = v0[134];
  v18 = v0[133];
  v19 = v0[132];
  v20 = v0[131];
  v21 = v0[130];
  v22 = v0[129];
  v23 = v0[128];
  v24 = v0[127];
  v25 = v0[124];
  v26 = v0[123];
  v27 = v0[122];
  v28 = v0[121];
  v29 = v0[120];
  v30 = v0[119];
  v31 = v0[118];
  v32 = v0[117];
  v33 = v0[114];
  v34 = v0[113];
  v35 = v0[112];
  v36 = v0[111];
  v37 = v0[110];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[107];

  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4();
}

{
  v7 = v0[163];
  v8 = v0[162];
  v9 = v0[161];
  v10 = v0[153];
  v11 = v0[152];
  v12 = v0[150];
  v13 = v0[149];
  v14 = v0[148];
  v15 = v0[147];
  v16 = v0[146];
  v17 = v0[144];
  v1 = v0[113];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 37);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v2 = v0[165];
  v3 = v0[137];
  v18 = v0[136];
  v19 = v0[135];
  v20 = v0[134];
  v21 = v0[133];
  v22 = v0[132];
  v23 = v0[131];
  v24 = v0[130];
  v25 = v0[129];
  v26 = v0[128];
  v27 = v0[127];
  v28 = v0[124];
  v29 = v0[123];
  v30 = v0[122];
  v31 = v0[121];
  v32 = v0[120];
  v33 = v0[119];
  v34 = v0[118];
  v35 = v0[117];
  v36 = v0[114];
  v37 = v0[113];
  v38 = v0[112];
  v39 = v0[111];
  v40 = v0[110];
  v41 = v0[109];
  v42 = v0[108];
  v43 = v0[107];

  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4();
}

{
  v7 = v0[168];
  v8 = v0[167];
  v9 = v0[166];
  v10 = v0[153];
  v11 = v0[152];
  v12 = v0[150];
  v13 = v0[149];
  v14 = v0[148];
  v15 = v0[147];
  v16 = v0[146];
  v17 = v0[144];
  v1 = v0[112];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v2 = v0[170];
  v3 = v0[137];
  v18 = v0[136];
  v19 = v0[135];
  v20 = v0[134];
  v21 = v0[133];
  v22 = v0[132];
  v23 = v0[131];
  v24 = v0[130];
  v25 = v0[129];
  v26 = v0[128];
  v27 = v0[127];
  v28 = v0[124];
  v29 = v0[123];
  v30 = v0[122];
  v31 = v0[121];
  v32 = v0[120];
  v33 = v0[119];
  v34 = v0[118];
  v35 = v0[117];
  v36 = v0[114];
  v37 = v0[113];
  v38 = v0[112];
  v39 = v0[111];
  v40 = v0[110];
  v41 = v0[109];
  v42 = v0[108];
  v43 = v0[107];

  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4();
}

{
  v7 = v0[173];
  v8 = v0[172];
  v9 = v0[171];
  v10 = v0[153];
  v11 = v0[152];
  v12 = v0[150];
  v13 = v0[149];
  v14 = v0[148];
  v15 = v0[147];
  v16 = v0[146];
  v17 = v0[144];
  v1 = v0[111];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v2 = v0[175];
  v3 = v0[137];
  v18 = v0[136];
  v19 = v0[135];
  v20 = v0[134];
  v21 = v0[133];
  v22 = v0[132];
  v23 = v0[131];
  v24 = v0[130];
  v25 = v0[129];
  v26 = v0[128];
  v27 = v0[127];
  v28 = v0[124];
  v29 = v0[123];
  v30 = v0[122];
  v31 = v0[121];
  v32 = v0[120];
  v33 = v0[119];
  v34 = v0[118];
  v35 = v0[117];
  v36 = v0[114];
  v37 = v0[113];
  v38 = v0[112];
  v39 = v0[111];
  v40 = v0[110];
  v41 = v0[109];
  v42 = v0[108];
  v43 = v0[107];

  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4();
}

{
  v7 = v0[179];
  v8 = v0[178];
  v9 = v0[176];
  v10 = v0[149];
  v11 = v0[148];
  v12 = v0[147];
  v13 = v0[146];
  v14 = v0[144];
  v1 = v0[110];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  v2 = v0[184];
  v3 = v0[137];
  v15 = v0[136];
  v16 = v0[135];
  v17 = v0[134];
  v18 = v0[133];
  v19 = v0[132];
  v20 = v0[131];
  v21 = v0[130];
  v22 = v0[129];
  v23 = v0[128];
  v24 = v0[127];
  v25 = v0[124];
  v26 = v0[123];
  v27 = v0[122];
  v28 = v0[121];
  v29 = v0[120];
  v30 = v0[119];
  v31 = v0[118];
  v32 = v0[117];
  v33 = v0[114];
  v34 = v0[113];
  v35 = v0[112];
  v36 = v0[111];
  v37 = v0[110];
  v38 = v0[109];
  v39 = v0[108];
  v40 = v0[107];

  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4();
}

{
  v7 = v0[189];
  v8 = v0[188];
  v9 = v0[187];
  v10 = v0[179];
  v11 = v0[178];
  v12 = v0[176];
  v13 = v0[149];
  v14 = v0[148];
  v15 = v0[147];
  v16 = v0[146];
  v17 = v0[144];
  v1 = v0[109];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 17);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v2 = v0[191];
  v3 = v0[137];
  v18 = v0[136];
  v19 = v0[135];
  v20 = v0[134];
  v21 = v0[133];
  v22 = v0[132];
  v23 = v0[131];
  v24 = v0[130];
  v25 = v0[129];
  v26 = v0[128];
  v27 = v0[127];
  v28 = v0[124];
  v29 = v0[123];
  v30 = v0[122];
  v31 = v0[121];
  v32 = v0[120];
  v33 = v0[119];
  v34 = v0[118];
  v35 = v0[117];
  v36 = v0[114];
  v37 = v0[113];
  v38 = v0[112];
  v39 = v0[111];
  v40 = v0[110];
  v41 = v0[109];
  v42 = v0[108];
  v43 = v0[107];

  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4();
}

{
  v7 = v0[194];
  v8 = v0[193];
  v9 = v0[192];
  v10 = v0[179];
  v11 = v0[178];
  v12 = v0[176];
  v13 = v0[149];
  v14 = v0[148];
  v15 = v0[147];
  v16 = v0[146];
  v17 = v0[144];
  v1 = v0[108];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v2 = v0[196];
  v3 = v0[137];
  v18 = v0[136];
  v19 = v0[135];
  v20 = v0[134];
  v21 = v0[133];
  v22 = v0[132];
  v23 = v0[131];
  v24 = v0[130];
  v25 = v0[129];
  v26 = v0[128];
  v27 = v0[127];
  v28 = v0[124];
  v29 = v0[123];
  v30 = v0[122];
  v31 = v0[121];
  v32 = v0[120];
  v33 = v0[119];
  v34 = v0[118];
  v35 = v0[117];
  v36 = v0[114];
  v37 = v0[113];
  v38 = v0[112];
  v39 = v0[111];
  v40 = v0[110];
  v41 = v0[109];
  v42 = v0[108];
  v43 = v0[107];

  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4();
}

{
  v7 = v0[199];
  v8 = v0[198];
  v9 = v0[197];
  v10 = v0[179];
  v11 = v0[178];
  v12 = v0[176];
  v13 = v0[149];
  v14 = v0[148];
  v15 = v0[147];
  v16 = v0[146];
  v17 = v0[144];
  v1 = v0[107];
  v0[58] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);

  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  v2 = v0[201];
  v3 = v0[137];
  v18 = v0[136];
  v19 = v0[135];
  v20 = v0[134];
  v21 = v0[133];
  v22 = v0[132];
  v23 = v0[131];
  v24 = v0[130];
  v25 = v0[129];
  v26 = v0[128];
  v27 = v0[127];
  v28 = v0[124];
  v29 = v0[123];
  v30 = v0[122];
  v31 = v0[121];
  v32 = v0[120];
  v33 = v0[119];
  v34 = v0[118];
  v35 = v0[117];
  v36 = v0[114];
  v37 = v0[113];
  v38 = v0[112];
  v39 = v0[111];
  v40 = v0[110];
  v41 = v0[109];
  v42 = v0[108];
  v43 = v0[107];

  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4();
}

{
  v1 = v0[149];
  v7 = v0[148];
  v8 = v0[147];
  v9 = v0[146];
  v10 = v0[144];
  v0[58] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  v2 = v0[204];
  v3 = v0[137];
  v11 = v0[136];
  v12 = v0[135];
  v13 = v0[134];
  v14 = v0[133];
  v15 = v0[132];
  v16 = v0[131];
  v17 = v0[130];
  v18 = v0[129];
  v19 = v0[128];
  v20 = v0[127];
  v21 = v0[124];
  v22 = v0[123];
  v23 = v0[122];
  v24 = v0[121];
  v25 = v0[120];
  v26 = v0[119];
  v27 = v0[118];
  v28 = v0[117];
  v29 = v0[114];
  v30 = v0[113];
  v31 = v0[112];
  v32 = v0[111];
  v33 = v0[110];
  v34 = v0[109];
  v35 = v0[108];
  v36 = v0[107];

  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4();
}

{
  v7 = v0[203];
  v8 = v0[149];
  v9 = v0[148];
  v10 = v0[147];
  v11 = v0[146];
  v1 = v0[144];
  v12 = v1;
  v0[58] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v2 = v0[207];
  v3 = v0[137];
  v13 = v0[136];
  v14 = v0[135];
  v15 = v0[134];
  v16 = v0[133];
  v17 = v0[132];
  v18 = v0[131];
  v19 = v0[130];
  v20 = v0[129];
  v21 = v0[128];
  v22 = v0[127];
  v23 = v0[124];
  v24 = v0[123];
  v25 = v0[122];
  v26 = v0[121];
  v27 = v0[120];
  v28 = v0[119];
  v29 = v0[118];
  v30 = v0[117];
  v31 = v0[114];
  v32 = v0[113];
  v33 = v0[112];
  v34 = v0[111];
  v35 = v0[110];
  v36 = v0[109];
  v37 = v0[108];
  v38 = v0[107];

  v4 = *(v0[58] + 8);
  v5 = v0[58];

  return v4();
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1)
{
  v62 = (*v2 + 16);
  v63 = *v2 + 464;
  v3 = *(*v2 + 1144);
  *v63 = *v2;

  if (v1)
  {
    v7 = v62[135];
    v9 = v62[134];
    v10 = v62[133];
    v11 = v62[132];
    v12 = v62[131];
    v13 = v62[130];
    v14 = v62[129];
    v15 = v62[128];
    v16 = v62[127];
    v17 = v62[126];
    v18 = v62[125];
    v19 = v62[122];
    v20 = v62[121];
    v21 = v62[120];
    v22 = v62[119];
    v23 = v62[118];
    v24 = v62[117];
    v25 = v62[116];
    v26 = v62[115];
    v27 = v62[112];
    v28 = v62[111];
    v29 = v62[110];
    v30 = v62[109];
    v31 = v62[108];
    v32 = v62[107];
    v33 = v62[106];
    v34 = v62[105];

    v6 = *(*v63 + 8);
  }

  else
  {
    v4 = v62[135];
    v35 = v62[134];
    v36 = v62[133];
    v37 = v62[132];
    v38 = v62[131];
    v39 = v62[130];
    v40 = v62[129];
    v41 = v62[128];
    v42 = v62[127];
    v43 = v62[126];
    v44 = v62[125];
    v45 = v62[122];
    v46 = v62[121];
    v47 = v62[120];
    v48 = v62[119];
    v49 = v62[118];
    v50 = v62[117];
    v51 = v62[116];
    v52 = v62[115];
    v53 = v62[112];
    v54 = v62[111];
    v55 = v62[110];
    v56 = v62[109];
    v57 = v62[108];
    v58 = v62[107];
    v59 = v62[106];
    v60 = v62[105];

    v5 = a1;
    v6 = *(*v63 + 8);
  }

  return v6(v5);
}

{
  v10 = *v2;
  v9 = v10 + 58;
  v4 = *(*v2 + 1616);
  v10[58] = *v2;
  v10[203] = a1;
  v10[204] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    v5 = *v9;
    v6 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

{
  v10 = *v2;
  v9 = v10 + 58;
  v4 = *(*v2 + 1640);
  v10[58] = *v2;
  v10[206] = a1;
  v10[207] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    v5 = *v9;
    v6 = ConfirmationViewBuilder.makePaymentConfirmationWatchViews<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[111] = v8;
  v9[110] = a8;
  v9[109] = a6;
  v9[108] = a4;
  v9[107] = a3;
  v9[106] = a2;
  v9[105] = a1;
  v9[68] = v9;
  v9[69] = 0;
  v9[70] = 0;
  v9[71] = 0;
  v9[72] = 0;
  v9[73] = 0;
  v9[74] = 0;
  v9[75] = 0;
  v9[76] = 0;
  v9[77] = 0;
  v9[78] = 0;
  v9[79] = 0;
  v9[86] = 0;
  v9[90] = 0;
  v9[24] = 0;
  v9[25] = 0;
  v9[30] = 0;
  v9[31] = 0;
  v9[95] = 0;
  v9[97] = 0;
  v9[48] = 0;
  v9[49] = 0;
  v9[54] = 0;
  v9[55] = 0;
  v9[99] = 0;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v9[112] = swift_task_alloc();
  v9[113] = swift_task_alloc();
  v10 = type metadata accessor for TemplatingResult();
  v9[114] = v10;
  v15 = *(v10 - 8);
  v9[115] = v15;
  v16 = *(v15 + 64);
  v9[116] = swift_task_alloc();
  v9[117] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v9[118] = v11;
  v17 = *(v11 - 8);
  v9[119] = v17;
  v18 = *(v17 + 64);
  v9[120] = swift_task_alloc();
  v9[121] = swift_task_alloc();
  v9[69] = a1;
  v9[70] = a2;
  v9[71] = a3;
  v9[72] = a4;
  v9[73] = v8;
  v12 = v9[68];

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:)()
{
  v1 = v0[121];
  v308 = v0[119];
  v309 = v0[118];
  v0[68] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  v310 = *(v308 + 16);
  v310(v1, v2, v309);
  v312 = Logger.logObject.getter();
  v311 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v313 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v312, v311))
  {
    v303 = static UnsafeMutablePointer.allocate(capacity:)();
    v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v304 = createStorage<A>(capacity:type:)(0);
    v305 = createStorage<A>(capacity:type:)(0);
    *(v307 + 808) = v303;
    *(v307 + 816) = v304;
    *(v307 + 824) = v305;
    serialize(_:at:)(0, (v307 + 808));
    serialize(_:at:)(0, (v307 + 808));
    *(v307 + 832) = v313;
    v306 = swift_task_alloc();
    v306[2] = v307 + 808;
    v306[3] = v307 + 816;
    v306[4] = v307 + 824;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v312, v311, "#ConfirmationViewBuilder makePaymentConfirmationPhoneView", v303, 2u);
    destroyStorage<A>(_:count:)(v304, 0, v302);
    destroyStorage<A>(_:count:)(v305, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](v303, MEMORY[0x277D84B78]);
  }

  v299 = *(v307 + 968);
  v300 = *(v307 + 944);
  v3 = *(v307 + 840);
  v298 = *(v307 + 952);
  MEMORY[0x277D82BD8](v312);
  v301 = *(v298 + 8);
  v301(v299, v300);
  if (App.isFirstParty.getter())
  {
    v4 = *(v307 + 840);
    MEMORY[0x277D82BE0](*(v307 + 848));
    v297 = App.systemUIExtensionBundleId.getter();
    if (v5)
    {
      v295 = MEMORY[0x26D620690](v297);

      v296 = v295;
    }

    else
    {
      v296 = 0;
    }

    v294 = *(v307 + 848);
    [v294 _setUiExtensionBundleId_];
    MEMORY[0x277D82BD8](v296);
    MEMORY[0x277D82BD8](v294);
  }

  v292 = *(v307 + 840);
  v291 = static CasinoFactory.makePlaceholderCardSection()();
  *(v307 + 976) = v291;
  *(v307 + 592) = v291;
  type metadata accessor for SAAppsLaunchApp();
  v293 = SAUIAppPunchOut.__allocating_init()();
  *(v307 + 984) = v293;
  *(v307 + 600) = v293;
  MEMORY[0x277D82BE0](v293);
  v6 = App.appIdentifier.getter();
  if (v7)
  {
    v289 = MEMORY[0x26D620690](v6);

    v290 = v289;
  }

  else
  {
    v290 = 0;
  }

  v287 = *(v307 + 848);
  [v293 setAppId_];
  MEMORY[0x277D82BD8](v290);
  MEMORY[0x277D82BD8](v293);
  type metadata accessor for SFAbstractCommand();
  _allocateUninitializedArray<A>(_:)();
  v282 = v8;
  MEMORY[0x277D82BE0](v293);
  v281 = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)();
  swift_unknownObjectRelease();
  *v282 = v281;
  _finalizeUninitializedArray<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v291 setCommands_];
  MEMORY[0x277D82BD8](isa);
  type metadata accessor for SFCardSection();
  *(v307 + 608) = Array.init()();
  type metadata accessor for SFRichTitleCardSection();
  v284 = SAUIAppPunchOut.__allocating_init()();
  *(v307 + 992) = v284;
  *(v307 + 616) = v284;
  type metadata accessor for SFRowCardSection();
  v285 = SAUIAppPunchOut.__allocating_init()();
  *(v307 + 1000) = v285;
  *(v307 + 624) = v285;
  v286 = SAUIAppPunchOut.__allocating_init()();
  *(v307 + 1008) = v286;
  *(v307 + 632) = v286;
  *(v307 + 96) = 0;
  *(v307 + 104) = 0;
  *(v307 + 640) = 0;
  *(v307 + 648) = 0;
  objc_opt_self();
  v288 = swift_dynamicCastObjCClass();
  if (v288)
  {
    MEMORY[0x277D82BE0](v288);
    *(v307 + 776) = v288;
    MEMORY[0x277D82BE0](v284);
    _allocateUninitializedArray<A>(_:)();
    v278 = v9;
    *(v307 + 352) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v307 + 360) = v10;
    countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](countAndFlagsBits);

    v275 = type metadata accessor for INRequestPaymentIntent();
    *(v307 + 368) = SiriKitPaymentsIntent.simpleClassName.getter(v275);
    *(v307 + 376) = v12;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String.UTF8View(v307 + 368);
    v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".payer", 6uLL, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v13);

    v277 = *(v307 + 352);
    v276 = *(v307 + 360);

    outlined destroy of String.UTF8View(v307 + 352);
    *v278 = MEMORY[0x26D620710](v277, v276);
    v278[1] = v14;
    _finalizeUninitializedArray<A>(_:)();
    v279 = Array._bridgeToObjectiveC()().super.isa;

    [v284 setParameterKeyPaths_];
    MEMORY[0x277D82BD8](v279);
    MEMORY[0x277D82BD8](v284);
    MEMORY[0x277D82BE0](v284);
    v15 = [v288 payer];
    v280 = v15;
    if (v15)
    {
      v270 = [v15 displayName];
      v271 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v272 = v16;
      MEMORY[0x277D82BD8](v280);
      MEMORY[0x277D82BD8](v270);
      v273 = v271;
      v274 = v272;
    }

    else
    {
      v273 = 0;
      v274 = 0;
    }

    if (v274)
    {
      v268 = MEMORY[0x26D620690](v273);

      v269 = v268;
    }

    else
    {
      v269 = 0;
    }

    [v284 setTitle_];
    MEMORY[0x277D82BD8](v269);
    MEMORY[0x277D82BD8](v284);
    v267 = [v288 currencyAmount];
    if (v267)
    {
      *(v307 + 792) = v267;
      MEMORY[0x277D82BE0](v284);
      v266 = [v284 parameterKeyPaths];
      if (v266)
      {
        v264 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v266);
        v265 = v264;
      }

      else
      {
        v265 = 0;
      }

      *(v307 + 800) = v265;
      if (*(v307 + 800))
      {
        *(v307 + 496) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v307 + 504) = v17;
        v18 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v18);

        *(v307 + 512) = SiriKitPaymentsIntent.simpleClassName.getter(v275);
        *(v307 + 520) = v19;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v307 + 512);
        v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".currencyAmount", 0xFuLL, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v20);

        v260 = *(v307 + 496);
        v259 = *(v307 + 504);

        outlined destroy of String.UTF8View(v307 + 496);
        *(v307 + 528) = MEMORY[0x26D620710](v260, v259);
        *(v307 + 536) = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();
        if (*(v307 + 800))
        {
          v257 = Array._bridgeToObjectiveC()().super.isa;

          v258 = v257;
        }

        else
        {
          v258 = 0;
        }

        [v284 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v258);
        MEMORY[0x277D82BD8](v284);
      }

      else
      {
        v263 = *(v307 + 800);

        if (v263)
        {
          v261 = Array._bridgeToObjectiveC()().super.isa;

          v262 = v261;
        }

        else
        {
          v262 = 0;
        }

        [v284 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v262);
        outlined destroy of [SFCardSection]((v307 + 800));
        MEMORY[0x277D82BD8](v284);
      }

      v22 = INCurrencyAmount.formattedString.getter();
      v23 = *(v307 + 104);
      *(v307 + 96) = v22;
      *(v307 + 104) = v24;

      MEMORY[0x277D82BD8](v267);
    }

    v25 = *(v307 + 856);
    v256 = (*(*(v307 + 880) + 8))(*(v307 + 872));
    if (v256 && (v255 = [v256 feeAmount], MEMORY[0x277D82BD8](v256), v255))
    {
      v249 = INCurrencyAmount.formattedString.getter();
      v250 = v26;
      MEMORY[0x277D82BD8](v255);
      v251 = Optional<A>.emptyToNil.getter(v249, v250);
      v252 = v27;

      v253 = v251;
      v254 = v252;
    }

    else
    {
      v253 = 0;
      v254 = 0;
    }

    if (v254)
    {
      *(v307 + 432) = v253;
      *(v307 + 440) = v254;
      MEMORY[0x277D82BE0](v285);
      v248 = [v285 parameterKeyPaths];
      if (v248)
      {
        v246 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v248);
        v247 = v246;
      }

      else
      {
        v247 = 0;
      }

      *(v307 + 784) = v247;
      if (*(v307 + 784))
      {
        *(v307 + 448) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v307 + 456) = v28;
        v29 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v29);

        *(v307 + 464) = SiriKitPaymentsIntent.simpleClassName.getter(v275);
        *(v307 + 472) = v30;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v307 + 464);
        v31 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".feeAmount", 0xAuLL, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v31);

        v242 = *(v307 + 448);
        v241 = *(v307 + 456);

        outlined destroy of String.UTF8View(v307 + 448);
        *(v307 + 480) = MEMORY[0x26D620710](v242, v241);
        *(v307 + 488) = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();
        if (*(v307 + 784))
        {
          v239 = Array._bridgeToObjectiveC()().super.isa;

          v240 = v239;
        }

        else
        {
          v240 = 0;
        }

        [v285 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v240);
        MEMORY[0x277D82BD8](v285);
      }

      else
      {
        v245 = *(v307 + 784);

        if (v245)
        {
          v243 = Array._bridgeToObjectiveC()().super.isa;

          v244 = v243;
        }

        else
        {
          v244 = 0;
        }

        [v285 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v244);
        outlined destroy of [SFCardSection]((v307 + 784));
        MEMORY[0x277D82BD8](v285);
      }

      type metadata accessor for SFRichText();

      v33 = @nonobjc SFRichText.__allocating_init(string:)(v253, v254);
      v34 = *(v307 + 640);
      *(v307 + 640) = v33;
      MEMORY[0x277D82BD8](v34);
    }

    v238 = [v288 note];
    if (v238)
    {
      v234 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v235 = v35;
      MEMORY[0x277D82BD8](v238);
      v236 = v234;
      v237 = v235;
    }

    else
    {
      v236 = 0;
      v237 = 0;
    }

    v232 = Optional<A>.emptyToNil.getter(v236, v237);
    v233 = v36;
    if (v36)
    {
      *(v307 + 384) = v232;
      *(v307 + 392) = v36;

      MEMORY[0x277D82BE0](v286);
      _allocateUninitializedArray<A>(_:)();
      v230 = v37;
      *(v307 + 400) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v307 + 408) = v38;
      v39 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v39);

      *(v307 + 416) = SiriKitPaymentsIntent.simpleClassName.getter(v275);
      *(v307 + 424) = v40;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String.UTF8View(v307 + 416);
      v41 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".note", 5uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v41);

      v229 = *(v307 + 400);
      v228 = *(v307 + 408);

      outlined destroy of String.UTF8View(v307 + 400);
      *v230 = MEMORY[0x26D620710](v229, v228);
      v230[1] = v42;
      _finalizeUninitializedArray<A>(_:)();
      v231 = Array._bridgeToObjectiveC()().super.isa;

      [v286 setParameterKeyPaths_];
      MEMORY[0x277D82BD8](v231);
      MEMORY[0x277D82BD8](v286);
      type metadata accessor for SFRichText();

      v43 = @nonobjc SFRichText.__allocating_init(string:)(v232, v233);
      v44 = *(v307 + 648);
      *(v307 + 648) = v43;
      MEMORY[0x277D82BD8](v44);
    }

    MEMORY[0x277D82BD8](v288);
  }

  else
  {
    v226 = *(v307 + 848);
    objc_opt_self();
    v227 = swift_dynamicCastObjCClass();
    if (!v227)
    {
      v81 = *(v307 + 960);
      v169 = *(v307 + 944);
      v82 = Logger.payments.unsafeMutableAddressor();
      v310(v81, v82, v169);
      oslog = Logger.logObject.getter();
      v170 = static os_log_type_t.error.getter();
      v172 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v170))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v166 = createStorage<A>(capacity:type:)(0);
        v167 = createStorage<A>(capacity:type:)(0);
        *(v307 + 656) = buf;
        *(v307 + 664) = v166;
        *(v307 + 672) = v167;
        serialize(_:at:)(0, (v307 + 656));
        serialize(_:at:)(0, (v307 + 656));
        *(v307 + 680) = v172;
        v168 = swift_task_alloc();
        v168[2] = v307 + 656;
        v168[3] = v307 + 664;
        v168[4] = v307 + 672;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
        Sequence.forEach(_:)();

        _os_log_impl(&dword_2686B1000, oslog, v170, "#ConfirmationViewBuilder makePaymentConfirmationView (Phone) encountered unexpected intent type", buf, 2u);
        destroyStorage<A>(_:count:)(v166, 0, v164);
        destroyStorage<A>(_:count:)(v167, 0, MEMORY[0x277D84F70] + 8);
        MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
      }

      v152 = *(v307 + 960);
      v153 = *(v307 + 944);
      v154 = *(v307 + 848);
      MEMORY[0x277D82BD8](oslog);
      v301(v152, v153);
      *(v307 + 112) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v307 + 120) = v83;
      v84 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v84);

      swift_getObjectType();
      DefaultStringInterpolation.appendInterpolation(_:)();
      v85 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v85);

      v156 = *(v307 + 112);
      v155 = *(v307 + 120);

      outlined destroy of String.UTF8View(v307 + 112);
      v158 = MEMORY[0x26D620710](v156, v155);
      v157 = v86;
      lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
      swift_allocError();
      *v87 = v158;
      *(v87 + 8) = v157;
      *(v87 + 16) = 0;
      *(v87 + 24) = 0;
      *(v87 + 32) = 0;
      *(v87 + 40) = 0;
      *(v87 + 48) = 4;
      swift_willThrow();
      outlined destroy of SFRichText?((v307 + 648));
      outlined destroy of SFRichText?((v307 + 640));
      outlined destroy of String.UTF8View(v307 + 96);
      MEMORY[0x277D82BD8](v286);
      MEMORY[0x277D82BD8](v285);
      MEMORY[0x277D82BD8](v284);
      outlined destroy of [SFCardSection]((v307 + 608));
      MEMORY[0x277D82BD8](v293);
      MEMORY[0x277D82BD8](v291);
      v88 = *(v307 + 968);
      v159 = *(v307 + 960);
      v160 = *(v307 + 936);
      v161 = *(v307 + 928);
      v162 = *(v307 + 904);
      v163 = *(v307 + 896);

      v89 = *(*(v307 + 544) + 8);
      v90 = *(v307 + 544);

      return v89();
    }

    MEMORY[0x277D82BE0](v227);
    *(v307 + 688) = v227;
    MEMORY[0x277D82BE0](v284);
    _allocateUninitializedArray<A>(_:)();
    v223 = v45;
    *(v307 + 128) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
    *(v307 + 136) = v46;
    v47 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v47);

    v220 = type metadata accessor for INSendPaymentIntent();
    *(v307 + 144) = SiriKitPaymentsIntent.simpleClassName.getter(v220);
    *(v307 + 152) = v48;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    outlined destroy of String.UTF8View(v307 + 144);
    v49 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".payee", 6uLL, 1)._countAndFlagsBits;
    MEMORY[0x26D620F90](v49);

    v222 = *(v307 + 128);
    v221 = *(v307 + 136);

    outlined destroy of String.UTF8View(v307 + 128);
    *v223 = MEMORY[0x26D620710](v222, v221);
    v223[1] = v50;
    _finalizeUninitializedArray<A>(_:)();
    v224 = Array._bridgeToObjectiveC()().super.isa;

    [v284 setParameterKeyPaths_];
    MEMORY[0x277D82BD8](v224);
    MEMORY[0x277D82BD8](v284);
    MEMORY[0x277D82BE0](v284);
    v51 = [v227 payee];
    v225 = v51;
    if (v51)
    {
      v215 = [v51 displayName];
      v216 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v217 = v52;
      MEMORY[0x277D82BD8](v225);
      MEMORY[0x277D82BD8](v215);
      v218 = v216;
      v219 = v217;
    }

    else
    {
      v218 = 0;
      v219 = 0;
    }

    if (v219)
    {
      v213 = MEMORY[0x26D620690](v218);

      v214 = v213;
    }

    else
    {
      v214 = 0;
    }

    [v284 setTitle_];
    MEMORY[0x277D82BD8](v214);
    MEMORY[0x277D82BD8](v284);
    v212 = [v227 currencyAmount];
    if (v212)
    {
      *(v307 + 760) = v212;
      MEMORY[0x277D82BE0](v284);
      v211 = [v284 parameterKeyPaths];
      if (v211)
      {
        v209 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v211);
        v210 = v209;
      }

      else
      {
        v210 = 0;
      }

      *(v307 + 768) = v210;
      if (*(v307 + 768))
      {
        *(v307 + 304) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v307 + 312) = v53;
        v54 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v54);

        *(v307 + 320) = SiriKitPaymentsIntent.simpleClassName.getter(v220);
        *(v307 + 328) = v55;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v307 + 320);
        v56 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".currencyAmount", 0xFuLL, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v56);

        v205 = *(v307 + 304);
        v204 = *(v307 + 312);

        outlined destroy of String.UTF8View(v307 + 304);
        *(v307 + 336) = MEMORY[0x26D620710](v205, v204);
        *(v307 + 344) = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();
        if (*(v307 + 768))
        {
          v202 = Array._bridgeToObjectiveC()().super.isa;

          v203 = v202;
        }

        else
        {
          v203 = 0;
        }

        [v284 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v203);
        MEMORY[0x277D82BD8](v284);
      }

      else
      {
        v208 = *(v307 + 768);

        if (v208)
        {
          v206 = Array._bridgeToObjectiveC()().super.isa;

          v207 = v206;
        }

        else
        {
          v207 = 0;
        }

        [v284 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v207);
        outlined destroy of [SFCardSection]((v307 + 768));
        MEMORY[0x277D82BD8](v284);
      }

      v58 = INCurrencyAmount.formattedString.getter();
      v59 = *(v307 + 104);
      *(v307 + 96) = v58;
      *(v307 + 104) = v60;

      MEMORY[0x277D82BD8](v212);
    }

    v61 = *(v307 + 856);
    v201 = (*(*(v307 + 880) + 8))(*(v307 + 872));
    if (v201 && (v200 = [v201 feeAmount], MEMORY[0x277D82BD8](v201), v200))
    {
      v194 = INCurrencyAmount.formattedString.getter();
      v195 = v62;
      MEMORY[0x277D82BD8](v200);
      v196 = Optional<A>.emptyToNil.getter(v194, v195);
      v197 = v63;

      v198 = v196;
      v199 = v197;
    }

    else
    {
      v198 = 0;
      v199 = 0;
    }

    if (v199)
    {
      *(v307 + 240) = v198;
      *(v307 + 248) = v199;
      MEMORY[0x277D82BE0](v285);
      v193 = [v285 parameterKeyPaths];
      if (v193)
      {
        v191 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        MEMORY[0x277D82BD8](v193);
        v192 = v191;
      }

      else
      {
        v192 = 0;
      }

      *(v307 + 752) = v192;
      if (*(v307 + 752))
      {
        *(v307 + 256) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
        *(v307 + 264) = v64;
        v65 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v65);

        *(v307 + 272) = SiriKitPaymentsIntent.simpleClassName.getter(v220);
        *(v307 + 280) = v66;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        outlined destroy of String.UTF8View(v307 + 272);
        v67 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".feeAmount", 0xAuLL, 1)._countAndFlagsBits;
        MEMORY[0x26D620F90](v67);

        v187 = *(v307 + 256);
        v186 = *(v307 + 264);

        outlined destroy of String.UTF8View(v307 + 256);
        *(v307 + 288) = MEMORY[0x26D620710](v187, v186);
        *(v307 + 296) = v68;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        Array.append(_:)();
        if (*(v307 + 752))
        {
          v184 = Array._bridgeToObjectiveC()().super.isa;

          v185 = v184;
        }

        else
        {
          v185 = 0;
        }

        [v285 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v185);
        MEMORY[0x277D82BD8](v285);
      }

      else
      {
        v190 = *(v307 + 752);

        if (v190)
        {
          v188 = Array._bridgeToObjectiveC()().super.isa;

          v189 = v188;
        }

        else
        {
          v189 = 0;
        }

        [v285 setParameterKeyPaths_];
        MEMORY[0x277D82BD8](v189);
        outlined destroy of [SFCardSection]((v307 + 752));
        MEMORY[0x277D82BD8](v285);
      }

      type metadata accessor for SFRichText();

      v69 = @nonobjc SFRichText.__allocating_init(string:)(v198, v199);
      v70 = *(v307 + 640);
      *(v307 + 640) = v69;
      MEMORY[0x277D82BD8](v70);
    }

    v183 = [v227 note];
    if (v183)
    {
      v179 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v180 = v71;
      MEMORY[0x277D82BD8](v183);
      v181 = v179;
      v182 = v180;
    }

    else
    {
      v181 = 0;
      v182 = 0;
    }

    v177 = Optional<A>.emptyToNil.getter(v181, v182);
    v178 = v72;
    if (v72)
    {
      *(v307 + 192) = v177;
      *(v307 + 200) = v72;

      MEMORY[0x277D82BE0](v286);
      _allocateUninitializedArray<A>(_:)();
      v175 = v73;
      *(v307 + 208) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
      *(v307 + 216) = v74;
      v75 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v75);

      *(v307 + 224) = SiriKitPaymentsIntent.simpleClassName.getter(v220);
      *(v307 + 232) = v76;
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      outlined destroy of String.UTF8View(v307 + 224);
      v77 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(".note", 5uLL, 1)._countAndFlagsBits;
      MEMORY[0x26D620F90](v77);

      v174 = *(v307 + 208);
      v173 = *(v307 + 216);

      outlined destroy of String.UTF8View(v307 + 208);
      *v175 = MEMORY[0x26D620710](v174, v173);
      v175[1] = v78;
      _finalizeUninitializedArray<A>(_:)();
      v176 = Array._bridgeToObjectiveC()().super.isa;

      [v286 setParameterKeyPaths_];
      MEMORY[0x277D82BD8](v176);
      MEMORY[0x277D82BD8](v286);
      type metadata accessor for SFRichText();

      v79 = @nonobjc SFRichText.__allocating_init(string:)(v177, v178);
      v80 = *(v307 + 648);
      *(v307 + 648) = v79;
      MEMORY[0x277D82BD8](v80);
    }

    MEMORY[0x277D82BD8](v227);
  }

  MEMORY[0x277D82BE0](v284);
  v150 = *(v307 + 96);
  v151 = *(v307 + 104);

  if (v151)
  {
    v148 = MEMORY[0x26D620690](v150);

    v149 = v148;
  }

  else
  {
    v149 = 0;
  }

  [v284 setSubtitle_];
  MEMORY[0x277D82BD8](v149);
  MEMORY[0x277D82BD8](v284);
  MEMORY[0x277D82BE0](v284);
  [v284 setIsCentered_];
  MEMORY[0x277D82BD8](v284);
  MEMORY[0x277D82BE0](v291);
  *(v307 + 696) = v291;
  *(v307 + 1016) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
  Array.append(_:)();
  MEMORY[0x277D82BE0](v284);
  v147 = [v284 title];
  if (v147)
  {
    v143 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v144 = v92;
    MEMORY[0x277D82BD8](v147);
    v145 = v143;
    v146 = v144;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  MEMORY[0x277D82BD8](v284);
  v141 = Optional<A>.emptyToNil.getter(v145, v146);
  v142 = v93;

  *(v307 + 160) = v141;
  *(v307 + 168) = v142;
  v140 = *(v307 + 168) != 0;
  outlined destroy of String.UTF8View(v307 + 160);
  MEMORY[0x277D82BE0](v284);
  if (v140)
  {
    v139 = 1;
  }

  else
  {
    MEMORY[0x277D82BE0](v284);
    v138 = [v284 subtitle];
    if (v138)
    {
      v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v135 = v94;
      MEMORY[0x277D82BD8](v138);
      v136 = v134;
      v137 = v135;
    }

    else
    {
      v136 = 0;
      v137 = 0;
    }

    MEMORY[0x277D82BD8](v284);
    v132 = Optional<A>.emptyToNil.getter(v136, v137);
    v133 = v95;

    *(v307 + 176) = v132;
    *(v307 + 184) = v133;
    v131 = *(v307 + 184) != 0;
    outlined destroy of String.UTF8View(v307 + 176);
    v139 = v131;
  }

  MEMORY[0x277D82BD8](v284);
  if (v139)
  {
    MEMORY[0x277D82BE0](v284);
    *(v307 + 744) = v284;
    Array.append(_:)();
  }

  v130 = *(v307 + 648);
  MEMORY[0x277D82BE0](v130);
  *(v307 + 704) = v130;
  v129 = *(v307 + 704) != 0;
  outlined destroy of SFRichText?((v307 + 704));
  if (v129)
  {
    v125 = *(v307 + 904);
    v124 = *(v307 + 888);
    *(v307 + 1024) = type metadata accessor for SFRichText();
    outlined init with copy of GlobalsProviding(v124 + 80, v307 + 56);
    v126 = *(v307 + 80);
    v127 = *(v307 + 88);
    __swift_project_boxed_opaque_existential_1((v307 + 56), v126);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Note", 4uLL, 1);
    String.toSpeakableString.getter();

    v96 = type metadata accessor for SpeakableString();
    (*(*(v96 - 8) + 56))(v125, 0, 1);
    v128 = (*(v127 + 8) + **(v127 + 8));
    v97 = *(*(v127 + 8) + 4);
    v98 = swift_task_alloc();
    v99 = v126;
    v100 = v127;
    v101 = v128;
    *(v307 + 1032) = v98;
    *v98 = *(v307 + 544);
    v98[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
    v102 = *(v307 + 936);
    v103 = *(v307 + 904);

    return v101(v102, v103, v99, v100);
  }

  v104 = *(v307 + 640);
  MEMORY[0x277D82BE0](v104);
  *(v307 + 712) = v104;
  v123 = *(v307 + 712) != 0;
  outlined destroy of SFRichText?((v307 + 712));
  if (v123)
  {
    v119 = *(v307 + 896);
    v118 = *(v307 + 888);
    *(v307 + 1048) = type metadata accessor for SFRichText();
    outlined init with copy of GlobalsProviding(v118 + 80, v307 + 16);
    v120 = *(v307 + 40);
    v121 = *(v307 + 48);
    __swift_project_boxed_opaque_existential_1((v307 + 16), v120);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
    String.toSpeakableString.getter();

    v105 = type metadata accessor for SpeakableString();
    (*(*(v105 - 8) + 56))(v119, 0, 1);
    v122 = (*(v121 + 16) + **(v121 + 16));
    v106 = *(*(v121 + 16) + 4);
    v107 = swift_task_alloc();
    v99 = v120;
    v100 = v121;
    v101 = v122;
    *(v307 + 1056) = v107;
    *v107 = *(v307 + 544);
    v107[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
    v102 = *(v307 + 928);
    v103 = *(v307 + 896);

    return v101(v102, v103, v99, v100);
  }

  v112 = *(v307 + 856);
  v113 = *(v307 + 848);
  v115 = *(v307 + 840);
  type metadata accessor for SACardSnippet();
  v114 = *(v307 + 608);

  MEMORY[0x277D82BE0](v113);
  MEMORY[0x277D82BE0](v112);
  v117 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();
  *(v307 + 1072) = v117;
  MEMORY[0x277D82BD8](v112);
  MEMORY[0x277D82BD8](v113);

  *(v307 + 720) = v117;
  MEMORY[0x277D82BE0](v117);
  v108 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v116 = static AceViewProviding.makeSash(app:isDisambiguation:)(v115, v108 & 1);
  [v117 setSash_];
  MEMORY[0x277D82BD8](v116);
  MEMORY[0x277D82BD8](v117);
  MEMORY[0x277D82BE0](v117);
  v109 = swift_task_alloc();
  *(v307 + 1080) = v109;
  *v109 = *(v307 + 544);
  v109[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  v110 = *(v307 + 888);
  v111 = *(v307 + 864);

  return ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(v111);
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 544);
  v2 = *(*v1 + 1032);
  *(v9 + 544) = *v1;
  *(v9 + 1040) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 888));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v26 = v0[128];
  v35 = v0[127];
  v34 = v0[126];
  v28 = v0[117];
  v27 = v0[115];
  v29 = v0[114];
  v0[68] = v0;
  v30 = TemplatingResult.resultSectionsAsString.getter();
  v31 = v1;
  (*(v27 + 8))(v28, v29);
  v32 = @nonobjc SFRichText.__allocating_init(string:)(v30, v31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  [v34 setLeadingText_];
  MEMORY[0x277D82BD8](v32);
  v33 = v0[81];
  MEMORY[0x277D82BE0](v33);
  [v34 setTrailingText_];
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BE0](v34);
  v0[92] = v34;
  Array.append(_:)();
  v2 = v0[80];
  MEMORY[0x277D82BE0](v2);
  v0[89] = v2;
  v24 = v0[89] != 0;
  outlined destroy of SFRichText?(v25 + 89);
  if (v24)
  {
    v20 = v25[112];
    v19 = v25[111];
    v25[131] = type metadata accessor for SFRichText();
    outlined init with copy of GlobalsProviding(v19 + 80, (v25 + 2));
    v21 = v25[5];
    v22 = v25[6];
    __swift_project_boxed_opaque_existential_1(v25 + 2, v21);
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
    String.toSpeakableString.getter();

    v3 = type metadata accessor for SpeakableString();
    (*(*(v3 - 8) + 56))(v20, 0, 1);
    v23 = (*(v22 + 16) + **(v22 + 16));
    v4 = *(*(v22 + 16) + 4);
    v5 = swift_task_alloc();
    v25[132] = v5;
    *v5 = v25[68];
    v5[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
    v6 = v25[116];
    v7 = v25[112];

    return v23(v6, v7, v21, v22);
  }

  else
  {
    v13 = v25[107];
    v14 = v25[106];
    v16 = v25[105];
    type metadata accessor for SACardSnippet();
    v15 = v25[76];

    MEMORY[0x277D82BE0](v14);
    MEMORY[0x277D82BE0](v13);
    v18 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();
    v25[134] = v18;
    MEMORY[0x277D82BD8](v13);
    MEMORY[0x277D82BD8](v14);

    v25[90] = v18;
    MEMORY[0x277D82BE0](v18);
    v9 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
    v17 = static AceViewProviding.makeSash(app:isDisambiguation:)(v16, v9 & 1);
    [v18 setSash_];
    MEMORY[0x277D82BD8](v17);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BE0](v18);
    v10 = swift_task_alloc();
    v25[135] = v10;
    *v10 = v25[68];
    v10[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
    v11 = v25[111];
    v12 = v25[108];

    return ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(v12);
  }
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 544);
  v2 = *(*v1 + 1056);
  *(v9 + 544) = *v1;
  *(v9 + 1064) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 880));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v7 = v0[131];
  v16 = v0[127];
  v15 = v0[125];
  v9 = v0[116];
  v8 = v0[115];
  v10 = v0[114];
  v0[68] = v0;
  v11 = TemplatingResult.resultSectionsAsString.getter();
  v12 = v1;
  (*(v8 + 8))(v9, v10);
  v13 = @nonobjc SFRichText.__allocating_init(string:)(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  [v15 setLeadingText_];
  MEMORY[0x277D82BD8](v13);
  v14 = v0[80];
  MEMORY[0x277D82BE0](v14);
  [v15 setTrailingText_];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BE0](v15);
  v0[91] = v15;
  Array.append(_:)();
  v17 = v0[107];
  v18 = v0[106];
  v20 = v0[105];
  type metadata accessor for SACardSnippet();
  v19 = v0[76];

  MEMORY[0x277D82BE0](v18);
  MEMORY[0x277D82BE0](v17);
  v22 = static SACardSnippet.makeFromCardSectionsWithIntentData(cardSections:intent:intentResponse:shouldGenerateAceId:)();
  v0[134] = v22;
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);

  v0[90] = v22;
  MEMORY[0x277D82BE0](v22);
  v2 = default argument 4 of static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  v21 = static AceViewProviding.makeSash(app:isDisambiguation:)(v20, v2 & 1);
  [v22 setSash_];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BE0](v22);
  v3 = swift_task_alloc();
  v23[135] = v3;
  *v3 = v23[68];
  v3[1] = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  v4 = v23[111];
  v5 = v23[108];

  return ConfirmationViewBuilder.makeConfirmationOptions(confirmLabelProvider:)(v5);
}

{
  v6 = v0[136];
  v1 = v0[134];
  v9 = v1;
  v10 = v0[126];
  v11 = v0[125];
  v12 = v0[124];
  v13 = v0[123];
  v14 = v0[122];
  v15 = v0[121];
  v16 = v0[120];
  v17 = v0[117];
  v18 = v0[116];
  v19 = v0[113];
  v20 = v0[112];
  v0[68] = v0;
  [v1 setConfirmationOptions_];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v9);
  type metadata accessor for SAAceView();
  v8 = _allocateUninitializedArray<A>(_:)();
  v7 = v2;
  MEMORY[0x277D82BE0](v9);
  *v7 = v9;
  _finalizeUninitializedArray<A>(_:)();
  MEMORY[0x277D82BD8](v9);
  outlined destroy of SFRichText?(v0 + 81);
  outlined destroy of SFRichText?(v0 + 80);
  outlined destroy of String.UTF8View((v0 + 12));
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  outlined destroy of [SFCardSection](v0 + 76);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);

  v3 = *(v0[68] + 8);
  v4 = v0[68];

  return v3(v8);
}

{
  v7 = v0[126];
  v8 = v0[125];
  v9 = v0[124];
  v10 = v0[123];
  v11 = v0[122];
  v1 = v0[113];
  v0[68] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  outlined destroy of SFRichText?(v0 + 81);
  outlined destroy of SFRichText?(v0 + 80);
  outlined destroy of String.UTF8View((v0 + 12));
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  outlined destroy of [SFCardSection](v0 + 76);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v2 = v0[130];
  v3 = v0[121];
  v12 = v0[120];
  v13 = v0[117];
  v14 = v0[116];
  v15 = v0[113];
  v16 = v0[112];

  v4 = *(v0[68] + 8);
  v5 = v0[68];

  return v4();
}

{
  v7 = v0[126];
  v8 = v0[125];
  v9 = v0[124];
  v10 = v0[123];
  v11 = v0[122];
  v1 = v0[112];
  v0[68] = v0;
  outlined destroy of SpeakableString?(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined destroy of SFRichText?(v0 + 81);
  outlined destroy of SFRichText?(v0 + 80);
  outlined destroy of String.UTF8View((v0 + 12));
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  outlined destroy of [SFCardSection](v0 + 76);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  v2 = v0[133];
  v3 = v0[121];
  v12 = v0[120];
  v13 = v0[117];
  v14 = v0[116];
  v15 = v0[113];
  v16 = v0[112];

  v4 = *(v0[68] + 8);
  v5 = v0[68];

  return v4();
}

{
  v1 = v0[134];
  v7 = v1;
  v8 = v0[126];
  v9 = v0[125];
  v10 = v0[124];
  v11 = v0[123];
  v12 = v0[122];
  v0[68] = v0;
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v7);
  outlined destroy of SFRichText?(v0 + 81);
  outlined destroy of SFRichText?(v0 + 80);
  outlined destroy of String.UTF8View((v0 + 12));
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  outlined destroy of [SFCardSection](v0 + 76);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v2 = v0[137];
  v3 = v0[121];
  v13 = v0[120];
  v14 = v0[117];
  v15 = v0[116];
  v16 = v0[113];
  v17 = v0[112];

  v4 = *(v0[68] + 8);
  v5 = v0[68];

  return v4();
}

uint64_t ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:)(uint64_t a1)
{
  v10 = *v2;
  v9 = v10 + 68;
  v4 = *(*v2 + 1080);
  v10[68] = *v2;
  v10[136] = a1;
  v10[137] = v1;

  if (v1)
  {
    v7 = *v9;
    v6 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  else
  {
    v5 = *v9;
    v6 = ConfirmationViewBuilder.makePaymentConfirmationPhoneView<A, B>(app:intent:response:confirmLabelProvider:);
  }

  return MEMORY[0x2822009F8](v6, 0);
}

uint64_t ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[106] = v8;
  v9[105] = v41;
  v9[104] = a8;
  v9[103] = a7;
  v9[102] = a6;
  v9[101] = a5;
  v9[100] = a4;
  v9[99] = a3;
  v9[98] = a2;
  v9[97] = a1;
  v9[74] = v9;
  v9[75] = 0;
  v9[76] = 0;
  v9[77] = 0;
  v9[78] = 0;
  v9[79] = 0;
  v9[80] = 0;
  v9[81] = 0;
  v9[54] = 0;
  v9[55] = 0;
  v9[56] = 0;
  v9[57] = 0;
  v9[82] = 0;
  v9[83] = 0;
  v9[85] = 0;
  v9[87] = 0;
  v9[58] = 0;
  v9[59] = 0;
  v9[60] = 0;
  v9[61] = 0;
  v9[92] = 0;
  v9[93] = 0;
  v9[94] = 0;
  v9[95] = 0;
  v9[96] = 0;
  v10 = type metadata accessor for Logger();
  v9[107] = v10;
  v26 = *(v10 - 8);
  v9[108] = v26;
  v11 = *(v26 + 64) + 15;
  v9[109] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo013INSendPaymentdE0CGMR) - 8) + 64) + 15;
  v9[110] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo013INSendPaymentD0CGMR) - 8) + 64) + 15;
  v9[111] = swift_task_alloc();
  v14 = *(*(type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel() - 8) + 64) + 15;
  v9[112] = swift_task_alloc();
  v15 = *(*(type metadata accessor for DialogPhase() - 8) + 64) + 15;
  v9[113] = swift_task_alloc();
  v16 = type metadata accessor for NLContextUpdate();
  v9[114] = v16;
  v27 = *(v16 - 8);
  v9[115] = v27;
  v17 = *(v27 + 64) + 15;
  v9[116] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMd, &_s10SnippetKit21CodableIntentResponseVySo016INRequestPaymentdE0CGMR) - 8) + 64) + 15;
  v9[117] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMd, &_s10SnippetKit13CodableIntentVySo016INRequestPaymentD0CGMR) - 8) + 64) + 15;
  v9[118] = swift_task_alloc();
  v20 = *(*(type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel() - 8) + 64) + 15;
  v9[119] = swift_task_alloc();
  v21 = type metadata accessor for OutputGenerationManifest();
  v9[120] = v21;
  v28 = *(v21 - 8);
  v9[121] = v28;
  v29 = *(v28 + 64);
  v9[122] = swift_task_alloc();
  v9[123] = swift_task_alloc();
  v22 = type metadata accessor for SiriPaymentsSnippetModel();
  v9[124] = v22;
  v30 = *(*(v22 - 8) + 64);
  v9[125] = swift_task_alloc();
  v9[126] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriDialogEngine15SpeakableStringVSgMd, &_s16SiriDialogEngine15SpeakableStringVSgMR) - 8) + 64);
  v9[127] = swift_task_alloc();
  v9[128] = swift_task_alloc();
  v23 = type metadata accessor for TemplatingResult();
  v9[129] = v23;
  v32 = *(v23 - 8);
  v9[130] = v32;
  v33 = *(v32 + 64);
  v9[131] = swift_task_alloc();
  v9[132] = swift_task_alloc();
  v9[133] = swift_task_alloc();
  v9[75] = a2;
  v9[76] = a3;
  v9[77] = a4;
  v9[78] = a5;
  v9[79] = a6;
  v9[80] = a7;
  v9[81] = v8;
  v24 = v9[74];

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:), 0);
}

uint64_t ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)()
{
  v1 = *(v0 + 816);
  *(v0 + 592) = v0;
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  v9 = (*(v8 + 8) + **(v8 + 8));
  v2 = *(*(v8 + 8) + 4);
  v3 = swift_task_alloc();
  v6[134] = v3;
  *v3 = v6[74];
  v3[1] = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  v4 = v6[133];

  return v9(v4, v7, v8);
}

{
  v8 = *v1;
  v7 = (v8 + 592);
  v2 = *(*v1 + 1072);
  *(v8 + 592) = *v1;
  *(v8 + 1080) = v0;

  if (v0)
  {
    v5 = *v7;
    v4 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  else
  {
    v3 = *v7;
    v4 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v8 = v0[133];
  v7 = v0[130];
  v9 = v0[129];
  v10 = v0[106];
  v0[74] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v0[136] = v1;
  v0[137] = v2;
  v0[54] = v1;
  v0[55] = v2;
  v3 = *(v7 + 8);
  v0[138] = v3;
  v0[139] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v3(v8, v9);
  outlined init with copy of GlobalsProviding(v10, (v0 + 44));
  v14 = v0[47];
  v12 = v0[48];
  __swift_project_boxed_opaque_existential_1(v0 + 44, v14);
  v13 = (*(v12 + 8) + **(v12 + 8));
  v4 = *(*(v12 + 8) + 4);
  v5 = swift_task_alloc();
  *(v11 + 1120) = v5;
  *v5 = *(v11 + 592);
  v5[1] = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);

  return v13(v14, v12);
}

{
  v28 = v0[143];
  v27 = v0[142];
  v26 = v0[137];
  v25 = v0[136];
  v1 = v0[106];
  v0[74] = v0;
  v0[56] = v27;
  v0[57] = v28;
  __swift_destroy_boxed_opaque_existential_0(v0 + 44);
  v2 = ConfirmationViewBuilder.makeYesNoOptions(yesLabel:noLabel:)(v25, v26, v27, v28);
  v29 = v3;
  v0[144] = v2;
  v0[145] = v3;
  v0[82] = v2;
  v0[83] = v3;
  v30 = [v2 commands];
  if (v30)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v30);
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (!v23)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  Array.subscript.getter();
  v4 = v24[84];
  v24[146] = v4;
  v24[85] = v4;

  v21 = [v29 commands];
  if (v21)
  {
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v21);
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v15 = v24[128];
  v14 = v24[103];
  Array.subscript.getter();
  v5 = v24[86];
  v24[147] = v5;
  v24[87] = v5;

  v16 = v14[3];
  v17 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v16);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("note", 4uLL, 1);
  SpeakableString.init(serializedValue:)();
  v6 = type metadata accessor for SpeakableString();
  v24[148] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v24[149] = v8;
  v24[150] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v15, 0, 1);
  v18 = (*(v17 + 16) + **(v17 + 16));
  v9 = *(*(v17 + 16) + 4);
  v10 = swift_task_alloc();
  v24[151] = v10;
  *v10 = v24[74];
  v10[1] = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  v11 = v24[132];
  v12 = v24[128];

  return v18(v11, v12, v16, v17);
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 592);
  v2 = *(*v1 + 1208);
  *(v9 + 592) = *v1;
  *(v9 + 1216) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 1008));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v15 = v0[150];
  v16 = v0[149];
  v14 = v0[148];
  v8 = v0[139];
  v9 = v0[138];
  v10 = v0[132];
  v11 = v0[129];
  v13 = v0[127];
  v12 = v0[103];
  v0[74] = v0;
  v1 = TemplatingResult.resultSectionsAsString.getter();
  v0[153] = v1;
  v0[154] = v2;
  v0[58] = v1;
  v0[59] = v2;
  v9(v10, v11);
  v18 = v12[3];
  v19 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v18);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("feeAmount", 9uLL, 1);
  SpeakableString.init(serializedValue:)();
  v16(v13, 0, 1, v14);
  v20 = (*(v19 + 16) + **(v19 + 16));
  v3 = *(*(v19 + 16) + 4);
  v4 = swift_task_alloc();
  v17[155] = v4;
  *v4 = v17[74];
  v4[1] = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  v5 = v17[131];
  v6 = v17[127];

  return v20(v5, v6, v18, v19);
}

{
  v9 = *v1;
  v7 = *v1 + 16;
  v8 = (v9 + 592);
  v2 = *(*v1 + 1240);
  *(v9 + 592) = *v1;
  *(v9 + 1248) = v0;

  if (v0)
  {
    v5 = *v8;
    v4 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  else
  {
    outlined destroy of SpeakableString?(*(v7 + 1000));
    v3 = *v8;
    v4 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  return MEMORY[0x2822009F8](v4, 0);
}

{
  v136 = v0[154];
  v142 = v0[147];
  v138 = v0[146];
  v135 = v0[143];
  v129 = v0[139];
  v130 = v0[138];
  v134 = v0[137];
  v131 = v0[131];
  v133 = v0[129];
  v141 = v0[98];
  v0[74] = v0;
  v132 = TemplatingResult.resultSectionsAsString.getter();
  v137 = v1;
  v0[157] = v1;
  v0[60] = v132;
  v0[61] = v1;
  v130(v131, v133);

  swift_getObjectType();
  swift_unknownObjectRetain();
  v139 = SAClientBoundCommand.data.getter();
  v140 = v2;
  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v143 = SAClientBoundCommand.data.getter();
  v144 = v3;
  swift_unknownObjectRelease();
  v0[62] = App.appIdentifier.getter();
  v0[63] = v4;
  if (v0[63])
  {
    v145 = *(v128 + 496);
  }

  else
  {
    v145 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    if (*(v128 + 504))
    {
      outlined destroy of String.UTF8View(v128 + 496);
    }
  }

  v5 = *(v128 + 784);
  SiriPaymentsSnippetModel.PaymentConfirmationModel.init(confirmLabel:cancelLabel:noteLabel:feeLabel:confirmDI:cancelDI:appId:)(*(v128 + 1088), *(v128 + 1096), *(v128 + 1136), *(v128 + 1144), *(v128 + 1224), *(v128 + 1232), v132, v137, (v128 + 16), v139, v140, v143, v144, v145._countAndFlagsBits, v145._object);
  if (App.isFirstParty.getter())
  {
    v6 = *(v128 + 784);
    MEMORY[0x277D82BE0](*(v128 + 792));
    v127 = App.systemUIExtensionBundleId.getter();
    if (v7)
    {
      v125 = MEMORY[0x26D620690](v127);

      v126 = v125;
    }

    else
    {
      v126 = 0;
    }

    v124 = *(v128 + 792);
    [v124 _setUiExtensionBundleId_];
    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](v124);
  }

  v123 = *(v128 + 840);
  v122 = *(v128 + 832);
  v121 = *(v128 + 800);
  v120 = *(v128 + 792);
  MEMORY[0x277D82BE0](v120);
  MEMORY[0x277D82BE0](v121);
  MEMORY[0x277D82BE0](v120);
  MEMORY[0x277D82BE0](v121);
  *(v128 + 512) = v120;
  *(v128 + 520) = v121;
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22INRequestPaymentIntentC_So0abC8ResponseCtMd, &_sSo22INRequestPaymentIntentC_So0abC8ResponseCtMR);
  if (swift_dynamicCast())
  {
    v106 = *(v128 + 1008);
    v105 = *(v128 + 1000);
    v104 = *(v128 + 992);
    v109 = *(v128 + 984);
    v110 = *(v128 + 976);
    v111 = *(v128 + 960);
    v115 = *(v128 + 952);
    v103 = *(v128 + 944);
    v102 = *(v128 + 936);
    v114 = *(v128 + 928);
    v113 = *(v128 + 912);
    v107 = *(v128 + 904);
    v119 = *(v128 + 800);
    v118 = *(v128 + 792);
    v108 = *(v128 + 968);
    v112 = *(v128 + 920);
    v117 = *(v128 + 528);
    v116 = *(v128 + 536);
    *(v128 + 760) = v117;
    *(v128 + 768) = v116;
    MEMORY[0x277D82BE0](v117);
    type metadata accessor for INRequestPaymentIntent();
    CodableIntent.init(wrappedValue:)();
    MEMORY[0x277D82BE0](v116);
    type metadata accessor for INRequestPaymentIntentResponse();
    CodableIntentResponse.init(wrappedValue:)();
    outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel((v128 + 16), (v128 + 240));
    SiriPaymentsSnippetModel.RequestPaymentConfirmationModel.init(intent:response:confirmation:)(v103, v102, (v128 + 16), v115);
    outlined init with copy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v115, v105);
    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriPaymentsSnippetModel(v105, v106);
    static PaymentsContextProvider.confirmationContextUpdate(isSend:)(0, v114);
    static DialogPhase.confirmation.getter();
    *(swift_task_alloc() + 16) = v114;
    OutputGenerationManifest.init(dialogPhase:_:)();

    (*(v108 + 32))(v109, v110, v111);
    (*(v112 + 8))(v114, v113);
    outlined destroy of SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(v115);
    MEMORY[0x277D82BD8](v116);
    MEMORY[0x277D82BD8](v117);
    outlined destroy of (A, B)((v128 + 512));
    MEMORY[0x277D82BD8](v118);
    MEMORY[0x277D82BD8](v119);
LABEL_24:
    v28 = *(v128 + 1008);
    v27 = *(v128 + 992);
    v33 = *(v128 + 984);
    v35 = *(v128 + 976);
    v34 = *(v128 + 960);
    v30 = *(v128 + 808);
    v32 = *(v128 + 968);
    type metadata accessor for ResponseFactory();
    *(v128 + 1264) = ResponseFactory.__allocating_init()();
    *(v128 + 416) = v27;
    *(v128 + 424) = lazy protocol witness table accessor for type SiriPaymentsSnippetModel and conformance SiriPaymentsSnippetModel();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v128 + 392));
    outlined init with copy of SiriPaymentsSnippetModel(v28, boxed_opaque_existential_1);
    type metadata accessor for DialogExecutionResult();
    v31 = _allocateUninitializedArray<A>(_:)();
    v29 = v22;
    MEMORY[0x277D82BE0](v30);
    *v29 = v30;
    _finalizeUninitializedArray<A>(_:)();
    *(v128 + 1272) = v31;
    (*(v32 + 16))(v35, v33, v34);
    v36 = (MEMORY[0x277D5BD38] + *MEMORY[0x277D5BD38]);
    v23 = *(MEMORY[0x277D5BD38] + 4);
    v24 = swift_task_alloc();
    *(v128 + 1280) = v24;
    *v24 = *(v128 + 592);
    v24[1] = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
    v25 = *(v128 + 976);
    v26 = *(v128 + 776);

    return v36(v26, v128 + 392, v31, v25);
  }

  v101 = *(v128 + 800);
  v100 = *(v128 + 792);
  outlined destroy of (A, B)((v128 + 512));
  MEMORY[0x277D82BE0](v100);
  MEMORY[0x277D82BE0](v101);
  *(v128 + 544) = v100;
  *(v128 + 552) = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19INSendPaymentIntentC_So0abC8ResponseCtMd, &_sSo19INSendPaymentIntentC_So0abC8ResponseCtMR);
  if (swift_dynamicCast())
  {
    v85 = *(v128 + 1008);
    v84 = *(v128 + 1000);
    v83 = *(v128 + 992);
    v86 = *(v128 + 928);
    v82 = *(v128 + 896);
    v81 = *(v128 + 888);
    v80 = *(v128 + 880);
    v97 = *(v128 + 560);
    v96 = *(v128 + 568);
    *(v128 + 736) = v97;
    *(v128 + 744) = v96;
    MEMORY[0x277D82BE0](v97);
    type metadata accessor for INSendPaymentIntent();
    CodableIntent.init(wrappedValue:)();
    MEMORY[0x277D82BE0](v96);
    type metadata accessor for INSendPaymentIntentResponse();
    CodableIntentResponse.init(wrappedValue:)();
    outlined init with copy of SiriPaymentsSnippetModel.PaymentConfirmationModel((v128 + 16), (v128 + 128));
    SiriPaymentsSnippetModel.SendPaymentConfirmationModel.init(intent:response:confirmation:)(v81, v80, (v128 + 16), v82);
    outlined init with copy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v82, v84);
    swift_storeEnumTagMultiPayload();
    outlined init with take of SiriPaymentsSnippetModel(v84, v85);
    *(v128 + 752) = v86;
    v89 = *(v128 + 984);
    v90 = *(v128 + 976);
    v91 = *(v128 + 960);
    v94 = *(v128 + 928);
    v93 = *(v128 + 912);
    v87 = *(v128 + 904);
    v95 = *(v128 + 896);
    v99 = *(v128 + 800);
    v98 = *(v128 + 792);
    v88 = *(v128 + 968);
    v92 = *(v128 + 920);
    has_malloc_size = _swift_stdlib_has_malloc_size();
    static PaymentsContextProvider.confirmationContextUpdate(isSend:)(has_malloc_size & 1, v94);
    static DialogPhase.confirmation.getter();
    *(swift_task_alloc() + 16) = v94;
    OutputGenerationManifest.init(dialogPhase:_:)();

    (*(v88 + 32))(v89, v90, v91);
    (*(v92 + 8))(v94, v93);
    outlined destroy of SiriPaymentsSnippetModel.SendPaymentConfirmationModel(v95);
    MEMORY[0x277D82BD8](v96);
    MEMORY[0x277D82BD8](v97);
    outlined destroy of (A, B)((v128 + 544));
    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v99);
    goto LABEL_24;
  }

  v9 = *(v128 + 872);
  v76 = *(v128 + 856);
  v75 = *(v128 + 864);
  outlined destroy of (A, B)((v128 + 544));
  v10 = Logger.payments.unsafeMutableAddressor();
  (*(v75 + 16))(v9, v10, v76);
  oslog = Logger.logObject.getter();
  v77 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v79 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v77))
  {
    v11 = *(v128 + 1248);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v72 = createStorage<A>(capacity:type:)(0);
    v73 = createStorage<A>(capacity:type:)(0);
    *(v128 + 704) = buf;
    *(v128 + 712) = v72;
    *(v128 + 720) = v73;
    serialize(_:at:)(0, (v128 + 704));
    serialize(_:at:)(0, (v128 + 704));
    *(v128 + 728) = v79;
    v74 = swift_task_alloc();
    v74[2] = v128 + 704;
    v74[3] = v128 + 712;
    v74[4] = v128 + 720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    if (v11)
    {
    }

    _os_log_impl(&dword_2686B1000, oslog, v77, "#ConfirmationViewBuilder makeModernizedPaymentConfirmation encountered unexpected intent type", buf, 2u);
    destroyStorage<A>(_:count:)(v72, 0, v70);
    destroyStorage<A>(_:count:)(v73, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  else
  {
  }

  v46 = *(v128 + 1232);
  v47 = *(v128 + 1176);
  v48 = *(v128 + 1168);
  v49 = *(v128 + 1160);
  v50 = *(v128 + 1152);
  v51 = *(v128 + 1144);
  v52 = *(v128 + 1096);
  v38 = *(v128 + 872);
  v39 = *(v128 + 856);
  v45 = *(v128 + 800);
  v44 = *(v128 + 792);
  v37 = *(v128 + 864);
  MEMORY[0x277D82BD8](oslog);
  (*(v37 + 8))(v38, v39);
  *(v128 + 576) = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  *(v128 + 584) = v13;
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](countAndFlagsBits);

  swift_getObjectType();
  DefaultStringInterpolation.appendInterpolation(_:)();
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1)._countAndFlagsBits;
  MEMORY[0x26D620F90](v15);

  v41 = *(v128 + 576);
  v40 = *(v128 + 584);

  outlined destroy of String.UTF8View(v128 + 576);
  v43 = MEMORY[0x26D620710](v41, v40);
  v42 = v16;
  lazy protocol witness table accessor for type PaymentsError and conformance PaymentsError();
  swift_allocError();
  *v17 = v43;
  *(v17 + 8) = v42;
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = 0;
  *(v17 + 40) = 0;
  *(v17 + 48) = 4;
  swift_willThrow();
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel((v128 + 16));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);

  v18 = *(v128 + 1064);
  v53 = *(v128 + 1056);
  v54 = *(v128 + 1048);
  v55 = *(v128 + 1024);
  v56 = *(v128 + 1016);
  v57 = *(v128 + 1008);
  v58 = *(v128 + 1000);
  v59 = *(v128 + 984);
  v60 = *(v128 + 976);
  v61 = *(v128 + 952);
  v62 = *(v128 + 944);
  v63 = *(v128 + 936);
  v64 = *(v128 + 928);
  v65 = *(v128 + 904);
  v66 = *(v128 + 896);
  v67 = *(v128 + 888);
  v68 = *(v128 + 880);
  v69 = *(v128 + 872);

  v19 = *(*(v128 + 592) + 8);
  v20 = *(v128 + 592);

  return v19();
}

{
  v11 = *v0;
  v9 = (*v0 + 392);
  v1 = *(*v0 + 1280);
  v8 = *(*v0 + 1272);
  v10 = *(*v0 + 1264);
  v6 = *(*v0 + 976);
  v5 = *(*v0 + 968);
  v7 = *(*v0 + 960);
  v11[74] = *v0;

  v2 = *(v5 + 8);
  v11[161] = v2;
  v11[162] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v2(v6, v7);

  __swift_destroy_boxed_opaque_existential_0(v9);

  v3 = v11[74];

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:), 0);
}

{
  v1 = v0[162];
  v2 = v0[161];
  v7 = v0[157];
  v8 = v0[154];
  v9 = v0[147];
  v10 = v0[146];
  v11 = v0[145];
  v12 = v0[144];
  v13 = v0[143];
  v14 = v0[137];
  v15 = v0[133];
  v16 = v0[132];
  v17 = v0[131];
  v18 = v0[128];
  v19 = v0[127];
  v20 = v0[126];
  v21 = v0[125];
  v22 = v0[123];
  v23 = v0[122];
  v3 = v0[120];
  v24 = v0[119];
  v25 = v0[118];
  v26 = v0[117];
  v27 = v0[116];
  v28 = v0[113];
  v29 = v0[112];
  v30 = v0[111];
  v31 = v0[110];
  v32 = v0[109];
  v0[74] = v0;
  v2();
  outlined destroy of SiriPaymentsSnippetModel(v20);
  outlined destroy of SiriPaymentsSnippetModel.PaymentConfirmationModel(v0 + 2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);

  v4 = *(v0[74] + 8);
  v5 = v0[74];

  return v4();
}

{
  v0[74] = v0;
  v1 = v0[135];
  v2 = v0[133];
  v6 = v0[132];
  v7 = v0[131];
  v8 = v0[128];
  v9 = v0[127];
  v10 = v0[126];
  v11 = v0[125];
  v12 = v0[123];
  v13 = v0[122];
  v14 = v0[119];
  v15 = v0[118];
  v16 = v0[117];
  v17 = v0[116];
  v18 = v0[113];
  v19 = v0[112];
  v20 = v0[111];
  v21 = v0[110];
  v22 = v0[109];

  v3 = *(v0[74] + 8);
  v4 = v0[74];

  return v3();
}

{
  v6 = v0[137];
  v0[74] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 44);

  v1 = v0[141];
  v2 = v0[133];
  v7 = v0[132];
  v8 = v0[131];
  v9 = v0[128];
  v10 = v0[127];
  v11 = v0[126];
  v12 = v0[125];
  v13 = v0[123];
  v14 = v0[122];
  v15 = v0[119];
  v16 = v0[118];
  v17 = v0[117];
  v18 = v0[116];
  v19 = v0[113];
  v20 = v0[112];
  v21 = v0[111];
  v22 = v0[110];
  v23 = v0[109];

  v3 = *(v0[74] + 8);
  v4 = v0[74];

  return v3();
}

{
  v7 = v0[147];
  v8 = v0[146];
  v9 = v0[145];
  v10 = v0[144];
  v11 = v0[143];
  v12 = v0[137];
  v1 = v0[128];
  v0[74] = v0;
  outlined destroy of SpeakableString?(v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);

  v2 = v0[152];
  v3 = v0[133];
  v13 = v0[132];
  v14 = v0[131];
  v15 = v0[128];
  v16 = v0[127];
  v17 = v0[126];
  v18 = v0[125];
  v19 = v0[123];
  v20 = v0[122];
  v21 = v0[119];
  v22 = v0[118];
  v23 = v0[117];
  v24 = v0[116];
  v25 = v0[113];
  v26 = v0[112];
  v27 = v0[111];
  v28 = v0[110];
  v29 = v0[109];

  v4 = *(v0[74] + 8);
  v5 = v0[74];

  return v4();
}

{
  v7 = v0[154];
  v8 = v0[147];
  v9 = v0[146];
  v10 = v0[145];
  v11 = v0[144];
  v12 = v0[143];
  v13 = v0[137];
  v1 = v0[127];
  v0[74] = v0;
  outlined destroy of SpeakableString?(v1);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);

  v2 = v0[156];
  v3 = v0[133];
  v14 = v0[132];
  v15 = v0[131];
  v16 = v0[128];
  v17 = v0[127];
  v18 = v0[126];
  v19 = v0[125];
  v20 = v0[123];
  v21 = v0[122];
  v22 = v0[119];
  v23 = v0[118];
  v24 = v0[117];
  v25 = v0[116];
  v26 = v0[113];
  v27 = v0[112];
  v28 = v0[111];
  v29 = v0[110];
  v30 = v0[109];

  v4 = *(v0[74] + 8);
  v5 = v0[74];

  return v4();
}

uint64_t ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(uint64_t a1, uint64_t a2)
{
  v11 = *v3;
  v10 = v11 + 74;
  v5 = *(*v3 + 1120);
  v11[74] = *v3;
  v11[141] = v2;
  v11[142] = a1;
  v11[143] = a2;

  if (v2)
  {
    v8 = *v10;
    v7 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  else
  {
    v6 = *v10;
    v7 = ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:);
  }

  return MEMORY[0x2822009F8](v7, 0);
}

id ConfirmationViewBuilder.makeYesNoOptions(yesLabel:noLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v113 = a4;
  v112 = a3;
  v116 = a2;
  v115 = a1;
  v126 = 0;
  v150 = 0;
  v149 = 0;
  v148 = 0;
  v147 = 0;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v138 = 0;
  v111 = 0;
  v123 = type metadata accessor for Logger();
  v117 = v123;
  v118 = *(v123 - 8);
  v122 = v118;
  v119 = v118;
  v120 = *(v118 + 64);
  v4 = &v34 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v4;
  v149 = MEMORY[0x28223BE20](v115);
  v150 = v5;
  v147 = v6;
  v148 = v7;
  v146 = v8;
  v9 = Logger.payments.unsafeMutableAddressor();
  (*(v122 + 16))(v4, v9, v123);
  v128 = Logger.logObject.getter();
  v124 = v128;
  v127 = static os_log_type_t.debug.getter();
  v125 = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v129 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v128, v127))
  {
    v10 = v111;
    v102 = static UnsafeMutablePointer.allocate(capacity:)();
    v98 = v102;
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v100 = 0;
    v103 = createStorage<A>(capacity:type:)(0);
    v101 = v103;
    v104 = createStorage<A>(capacity:type:)(v100);
    v133 = v102;
    v132 = v103;
    v131 = v104;
    v105 = 0;
    v106 = &v133;
    serialize(_:at:)(0, &v133);
    serialize(_:at:)(v105, v106);
    v130 = v129;
    v107 = &v34;
    MEMORY[0x28223BE20](&v34);
    v108 = &v34 - 6;
    *(&v34 - 4) = v11;
    *(&v34 - 3) = &v132;
    *(&v34 - 2) = &v131;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();
    v110 = v10;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_2686B1000, v124, v125, "#ConfirmationViewBuilder makeYesNoOptions", v98, 2u);
      v96 = 0;
      destroyStorage<A>(_:count:)(v101, 0, v99);
      destroyStorage<A>(_:count:)(v104, v96, MEMORY[0x277D84F70] + 8);
      MEMORY[0x26D620BD0](v98, MEMORY[0x277D84B78]);

      v97 = v110;
    }
  }

  else
  {

    v97 = v111;
  }

  (*(v119 + 8))(v121, v117);
  v38 = 0;
  v34 = type metadata accessor for SAUIConfirmationOption();
  v94 = SAUIAppPunchOut.__allocating_init()();
  v145 = v94;

  v35 = MEMORY[0x26D620690](v115, v116);

  v36 = 0x1FB677000uLL;
  [v94 0x1FB6776F8];

  v95 = SAUIAppPunchOut.__allocating_init()();
  v144 = v95;

  v37 = MEMORY[0x26D620690](v112, v113);

  [v95 (v36 + 1784)];

  v47 = type metadata accessor for SKIDirectInvocationPayload();
  v58 = 0;
  v93 = static SKIDirectInvocationPayload.from(_:)(0);
  v143 = v93;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  v60 = 1;
  v73 = 1;
  v40 = _allocateUninitializedArray<A>(_:)();
  v39 = v12;
  v142[0] = Constants.DirectInvocationPayloadKeys.rawValue.getter(v58);
  v142[1] = v13;
  v61 = MEMORY[0x277D837D0];
  v59 = MEMORY[0x277D837E0];
  v41 = v142;
  _convertToAnyHashable<A>(_:)();
  v14 = Constants.DirectInvocationButtonType.rawValue.getter(v58);
  v15 = v39;
  v16 = v14;
  v17 = v40;
  *(v39 + 64) = v61;
  *(v15 + 40) = v16;
  *(v15 + 48) = v18;
  _finalizeUninitializedArray<A>(_:)();
  v42 = v17;
  outlined destroy of String.UTF8View(v41);
  v68 = MEMORY[0x277D84F70] + 8;
  v67 = MEMORY[0x277D84030];
  v69 = MEMORY[0x277D84038];
  v43 = Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v71 = 0x1FAB7F000uLL;
  [v93 0x1FAB7FD8BLL];

  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  v55 = _allocateUninitializedArray<A>(_:)();
  v53 = v19;
  v74 = 0x277D5C000uLL;
  v51 = objc_opt_self();
  v20 = *(v74 + 528);
  v48 = objc_opt_self();
  v75 = v114 + 40;
  v50 = v139;
  outlined init with copy of GlobalsProviding(v114 + 40, v139);
  v46 = v140;
  v45 = v141;
  __swift_project_boxed_opaque_existential_1(v50, v140);
  v49 = DeviceState.asInvocationContext.getter();
  v78 = 0x1FC634000uLL;
  v52 = [v48 0x1FC6346A7];

  __swift_destroy_boxed_opaque_existential_0(v50);
  v82 = 0x1FC634000uLL;
  v54 = [v51 0x1FC634687];
  swift_unknownObjectRelease();
  v21 = v55;
  *v53 = v54;
  _finalizeUninitializedArray<A>(_:)();
  v56 = v21;
  v57 = Array._bridgeToObjectiveC()().super.isa;

  v90 = 0x1FAAC5000uLL;
  [v94 0x1FAAC564BLL];

  v92 = static SKIDirectInvocationPayload.from(_:)(v58);
  v138 = v92;
  v63 = _allocateUninitializedArray<A>(_:)();
  v62 = v22;
  v137[0] = Constants.DirectInvocationPayloadKeys.rawValue.getter(v58);
  v137[1] = v23;
  v65 = v137;
  _convertToAnyHashable<A>(_:)();
  v24 = Constants.DirectInvocationButtonType.rawValue.getter(v60);
  v25 = v62;
  v26 = v24;
  v27 = v63;
  *(v62 + 64) = v61;
  *(v25 + 40) = v26;
  *(v25 + 48) = v28;
  _finalizeUninitializedArray<A>(_:)();
  v66 = v27;
  outlined destroy of String.UTF8View(v65);
  v70 = Dictionary.init(dictionaryLiteral:)();
  v72 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v92 (v71 + 3467)];

  v87 = _allocateUninitializedArray<A>(_:)();
  v85 = v29;
  v30 = *(v74 + 528);
  v83 = objc_opt_self();
  v31 = *(v74 + 528);
  v79 = objc_opt_self();
  v81 = v134;
  outlined init with copy of GlobalsProviding(v75, v134);
  v77 = v135;
  v76 = v136;
  __swift_project_boxed_opaque_existential_1(v81, v135);
  v80 = DeviceState.asInvocationContext.getter();
  v84 = [v79 (v78 + 1703)];

  __swift_destroy_boxed_opaque_existential_0(v81);
  v86 = [v83 (v82 + 1671)];
  swift_unknownObjectRelease();
  v32 = v87;
  *v85 = v86;
  _finalizeUninitializedArray<A>(_:)();
  v89 = v32;
  v91 = Array._bridgeToObjectiveC()().super.isa;

  [v95 (v90 + 1611)];

  return v94;
}

unint64_t type metadata accessor for SASTColumnDataListItem()
{
  v2 = lazy cache variable for type metadata for SASTColumnDataListItem;
  if (!lazy cache variable for type metadata for SASTColumnDataListItem)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &lazy cache variable for type metadata for SASTColumnDataListItem);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t closure #1 in ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v8 = a2;
  v16 = 0;
  v15 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v12 = &v7 - v7;
  v16 = a1;
  v15 = v4;
  v11 = type metadata accessor for NLContextUpdate();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v12, v8);
  v5 = *(v9 + 56);
  v14 = 1;
  v5(v12, 0);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("RequestPayment#IntentConfirmationPrompt", 0x27uLL, v14 & 1);
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t closure #2 in ConfirmationViewBuilder.makeModernizedPaymentConfirmationView<A, B>(app:intent:response:dialog:confirmLabelProvider:slotFieldLabelProvider:)(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v8 = a2;
  v16 = 0;
  v15 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v7 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v12 = &v7 - v7;
  v16 = a1;
  v15 = v4;
  v11 = type metadata accessor for NLContextUpdate();
  v9 = *(v11 - 8);
  v10 = v11 - 8;
  (*(v9 + 16))(v12, v8);
  v5 = *(v9 + 56);
  v14 = 1;
  v5(v12, 0);
  OutputGenerationManifest.nlContextUpdate.setter();
  OutputGenerationManifest.listenAfterSpeaking.setter();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("SendPayment#IntentConfirmationPrompt", 0x24uLL, v14 & 1);
  return OutputGenerationManifest.responseViewId.setter();
}

uint64_t DefaultStringInterpolation.appendInterpolation(_:)()
{
  v0 = _typeName(_:qualified:)();
  MEMORY[0x26D620760](v0);
}

uint64_t ConfirmationViewBuilder.makeTCCAcceptanceView(app:)(uint64_t a1)
{
  v2[26] = v1;
  v2[16] = v2;
  v2[17] = 0;
  v2[18] = 0;
  v2[12] = 0;
  v2[13] = 0;
  v2[14] = 0;
  v2[15] = 0;
  v2[19] = 0;
  v2[20] = 0;
  v2[21] = 0;
  v3 = type metadata accessor for Logger();
  v2[27] = v3;
  v7 = *(v3 - 8);
  v2[28] = v7;
  v4 = *(v7 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[17] = a1;
  v2[18] = v1;
  v5 = v2[16];

  return MEMORY[0x2822009F8](ConfirmationViewBuilder.makeTCCAcceptanceView(app:), 0);
}

uint64_t ConfirmationViewBuilder.makeTCCAcceptanceView(app:)()
{
  v1 = v0[29];
  v19 = v0[28];
  v20 = v0[27];
  v0[16] = v0;
  v2 = Logger.payments.unsafeMutableAddressor();
  (*(v19 + 16))(v1, v2, v20);
  v22 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMd, &_sySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcMR);
  v23 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v22, v21))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v15 = createStorage<A>(capacity:type:)(0);
    v16 = createStorage<A>(capacity:type:)(0);
    *(v18 + 176) = buf;
    *(v18 + 184) = v15;
    *(v18 + 192) = v16;
    serialize(_:at:)(0, (v18 + 176));
    serialize(_:at:)(0, (v18 + 176));
    *(v18 + 200) = v23;
    v17 = swift_task_alloc();
    v17[2] = v18 + 176;
    v17[3] = v18 + 184;
    v17[4] = v18 + 192;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_sSayySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
    lazy protocol witness table accessor for type [(_:_:_:)] and conformance [A]();
    Sequence.forEach(_:)();

    _os_log_impl(&dword_2686B1000, v22, v21, "#ConfirmationViewBuilder makeTCCAcceptanceView", buf, 2u);
    destroyStorage<A>(_:count:)(v15, 0, v13);
    destroyStorage<A>(_:count:)(v16, 0, MEMORY[0x277D84F70] + 8);
    MEMORY[0x26D620BD0](buf, MEMORY[0x277D84B78]);
  }

  v7 = *(v18 + 232);
  v8 = *(v18 + 216);
  v9 = *(v18 + 208);
  v6 = *(v18 + 224);
  MEMORY[0x277D82BD8](v22);
  (*(v6 + 8))(v7, v8);
  outlined init with copy of GlobalsProviding(v9, v18 + 16);
  v12 = *(v18 + 40);
  v10 = *(v18 + 48);
  __swift_project_boxed_opaque_existential_1((v18 + 16), v12);
  v11 = (*(v10 + 24) + **(v10 + 24));
  v3 = *(*(v10 + 24) + 4);
  v4 = swift_task_alloc();
  *(v18 + 240) = v4;
  *v4 = *(v18 + 128);
  v4[1] = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);

  return v11(v12, v10);
}

{
  v1 = v0[33];
  v2 = v0[32];
  v6 = v0[26];
  v0[16] = v0;
  v0[12] = v2;
  v0[13] = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  outlined init with copy of GlobalsProviding(v6, (v0 + 7));
  v10 = v0[10];
  v8 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v10);
  v9 = (*(v8 + 16) + **(v8 + 16));
  v3 = *(*(v8 + 16) + 4);
  v4 = swift_task_alloc();
  *(v7 + 272) = v4;
  *v4 = *(v7 + 128);
  v4[1] = ConfirmationViewBuilder.makeTCCAcceptanceView(app:);

  return v9(v10, v8);
}

{
  v42 = v0[37];
  v41 = v0[36];
  v40 = v0[33];
  v39 = v0[32];
  v1 = v0[26];
  v0[16] = v0;
  v0[14] = v41;
  v0[15] = v42;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v44 = ConfirmationViewBuilder.makeYesNoOptions(yesLabel:noLabel:)(v39, v40, v41, v42);
  v43 = v2;
  v0[19] = v44;
  v0[20] = v2;
  type metadata accessor for SAUIConfirmationView();
  v45 = SAUIAppPunchOut.__allocating_init()();
  v0[21] = v45;
  v46 = [v44 commands];
  if (v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v46);
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v35 = isa;
  }

  else
  {
    v35 = 0;
  }

  [v45 setConfirmCommands_];
  MEMORY[0x277D82BD8](v35);
  v33 = [v44 label];
  if (v33)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v3;
    MEMORY[0x277D82BD8](v33);
    v31 = v29;
    v32 = v30;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  if (v32)
  {
    v27 = MEMORY[0x26D620690](v31);

    v28 = v27;
  }

  else
  {
    v28 = 0;
  }

  [v45 setConfirmText_];
  MEMORY[0x277D82BD8](v28);
  v26 = [v43 commands];
  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x277D82BD8](v26);
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
    v22 = Array._bridgeToObjectiveC()().super.isa;

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  [v45 setDenyCommands_];
  MEMORY[0x277D82BD8](v23);
  v21 = [v43 label];
  if (v21)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v4;
    MEMORY[0x277D82BD8](v21);
    v19 = v17;
    v20 = v18;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  if (v20)
  {
    v15 = MEMORY[0x26D620690](v19);

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v12 = v38[37];
  v13 = v38[33];
  v14 = v38[29];
  [v45 setDenyText_];
  MEMORY[0x277D82BD8](v9);
  type metadata accessor for SAUIConfirmationOption();
  _allocateUninitializedArray<A>(_:)();
  v10 = v5;
  MEMORY[0x277D82BE0](v44);
  *v10 = v44;
  MEMORY[0x277D82BE0](v43);
  v10[1] = v43;
  _finalizeUninitializedArray<A>(_:)();
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v45 setAllConfirmationOptions_];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);

  v6 = *(v38[16] + 8);
  v7 = v38[16];

  return v6(v45);
}

{
  v0[16] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[31];
  v2 = v0[29];

  v3 = *(v0[16] + 8);
  v4 = v0[16];

  return v3();
}

{
  v6 = v0[33];
  v0[16] = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  v1 = v0[35];
  v2 = v0[29];

  v3 = *(v0[16] + 8);
  v4 = v0[16];

  return v3();
}