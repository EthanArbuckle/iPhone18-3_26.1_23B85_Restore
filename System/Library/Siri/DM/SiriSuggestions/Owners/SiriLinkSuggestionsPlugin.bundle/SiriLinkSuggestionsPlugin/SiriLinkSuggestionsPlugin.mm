uint64_t LinkSuggestionsOwnerDefinition.init(linkClient:dialogIdProvider:)(__int128 *a1, __int128 *a2)
{
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v2 + 16);
  outlined init with take of SiriSuggestions.DisplayRepresentable(a2, v2 + 56);
  return v2;
}

uint64_t outlined init with take of SiriSuggestions.DisplayRepresentable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t LinkSuggestionsOwnerDefinition.getSourceGenerator()@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of LinkClient(v1 + 16, v6);
  v3 = type metadata accessor for LinkSuggestionsGenerator();
  v4 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(v6, v4 + 16);
  a1[3] = v3;
  result = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator, 255, type metadata accessor for LinkSuggestionsGenerator);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t LinkSuggestionsOwnerDefinition.getTargetOwnerDefinition()@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of LinkClient(v1 + 16, v8);
  outlined init with copy of LinkClient(v1 + 56, v7);
  v3 = type metadata accessor for LinkSuggestionsTargetOwnerDefinition();
  v4 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(v8, v4 + 16);
  outlined init with take of SiriSuggestions.DisplayRepresentable(v7, v4 + 56);
  a1[3] = v3;
  result = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LinkSuggestionsTargetOwnerDefinition and conformance LinkSuggestionsTargetOwnerDefinition, v5, type metadata accessor for LinkSuggestionsTargetOwnerDefinition);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t LinkSuggestionsOwnerDefinition.__allocating_init(linkClient:dialogIdProvider:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(a1, v4 + 16);
  outlined init with take of SiriSuggestions.DisplayRepresentable(a2, v4 + 56);
  return v4;
}

uint64_t LinkSuggestionsOwnerDefinition.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t LinkSuggestionsTargetOwnerDefinition.getSuggestionsRepo()@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of LinkClient(v1 + 56, v6);
  v3 = type metadata accessor for LinkSuggestionsRepository();
  v4 = swift_allocObject();
  outlined init with take of SiriSuggestions.DisplayRepresentable(v6, v4 + 16);
  a1[3] = v3;
  result = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LinkSuggestionsRepository and conformance LinkSuggestionsRepository, 255, type metadata accessor for LinkSuggestionsRepository);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t LinkSuggestionsTargetOwnerDefinition.getSuggestionsResolvers()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit8Resolver_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit8Resolver_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_3EFC0;
  outlined init with copy of LinkClient(v0 + 16, v5);
  v2 = type metadata accessor for LinkActionResolver();
  v3 = swift_allocObject();
  strcpy((v3 + 16), "linkActionType");
  *(v3 + 31) = -18;
  outlined init with take of SiriSuggestions.DisplayRepresentable(v5, v3 + 32);
  *(v1 + 56) = v2;
  *(v1 + 64) = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LinkActionResolver and conformance LinkActionResolver, 255, type metadata accessor for LinkActionResolver);
  *(v1 + 32) = v3;
  return v1;
}

uint64_t LinkSuggestionsTargetOwnerDefinition.getSuggestionsFilter()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NoOpSuggestionFilter();
  result = static NoOpSuggestionFilter.Instance.getter();
  a1[3] = v2;
  a1[4] = &protocol witness table for NoOpSuggestionFilter;
  *a1 = result;
  return result;
}

uint64_t LinkSuggestionsOwnerDefinition.getOwner()@<X0>(uint64_t *a1@<X8>)
{
  if (one-time initialization token for linkOwner != -1)
  {
    swift_once();
  }

  v2 = static LinkSuggestionsOwners.linkOwner;
  a1[3] = type metadata accessor for DefaultOwner();
  a1[4] = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type DefaultOwner and conformance DefaultOwner, 255, &type metadata accessor for DefaultOwner);
  *a1 = v2;
}

uint64_t LinkSuggestionsOwnerDefinition.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return _swift_deallocClassInstance(v0, 96, 7);
}

uint64_t outlined init with copy of LinkClient(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t variable initialization expression of DefaultToolClient.toolSessionSetupTask()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v6 - v1;
  v3 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  return _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC7ToolKit0E16ExecutionSession_p_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask, v4);
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC7ToolKit0E16ExecutionSession_p_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v22 - v9;
  outlined init with copy of TaskPriority?(a3, v22 - v9);
  v11 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TaskPriority?(v10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  v13 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A16ExecutionSession_pMd, &_s7ToolKit0A16ExecutionSession_pMR);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A16ExecutionSession_pMd, &_s7ToolKit0A16ExecutionSession_pMR);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t default argument 3 of LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay22IntelligenceFlowShared16RetrievedContextVGMd, &_sSay22IntelligenceFlowShared16RetrievedContextVGMR);

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t default argument 1 of MetaDataSourcedAppIntentResolver.init(linkClient:toolClient:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DefaultToolClient();
  swift_allocObject();
  result = DefaultToolClient.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for DefaultToolClient;
  *a1 = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 1802398060;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6E65746E49707061;
    }

    else
    {
      v4 = 0x726F68736F747561;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000007374;
    }

    else
    {
      v5 = 0xED00007374756374;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1802398060;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6E65746E49707061;
    }

    else
    {
      v2 = 0x726F68736F747561;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000007374;
    }

    else
    {
      v6 = 0xED00007374756374;
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
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
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

uint64_t variable initialization expression of LinkViewProvider.invocationActionProvider()
{
  type metadata accessor for LinkInvocationActionProvider();

  return swift_allocObject();
}

uint64_t sub_26FC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask;

  return closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask();
}

{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id variable initialization expression of AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.lock()
{
  v0 = objc_allocWithZone(NSLock);

  return [v0 init];
}

id variable initialization expression of LinkRegistryObserver.notificationCenter()
{
  v0 = [objc_opt_self() defaultCenter];

  return v0;
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSMatchingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of AutoShortcutsSuggestionsOwnerDefinitionFactory.OnRequestAutoShortcuts.configuratorPerBundleIdentifier();
  *a1 = result;
  return result;
}

NSString _sSo35LNSuggestedActionDialogParameterKeyas21_ObjectiveCBridgeableSCsACP026_unconditionallyBridgeFromF1Cyx01_F5CTypeQzSgFZTW_0@<X0>(void *a1@<X8>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo35LNSuggestedActionDialogParameterKeya_Tt1gq5Tm();
  *a1 = result;
  return result;
}

uint64_t _sSo35LNSuggestedActionDialogParameterKeyaSQSCSQ2eeoiySbx_xtFZTW_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)() & 1;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LNSuggestedActionDialogParameterKey@<X0>(uint64_t *a1@<X8>)
{
  result = LNSuggestedActionDialogParameterKey.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LNSuggestedActionDialogParameterKey@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LNSuggestedActionDialogParameterKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey, 255, type metadata accessor for LNSuggestedActionDialogParameterKey);
  v3 = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LNSuggestedActionDialogParameterKey and conformance LNSuggestedActionDialogParameterKey, 255, type metadata accessor for LNSuggestedActionDialogParameterKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LNSystemProtocolIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, 255, type metadata accessor for LNSystemProtocolIdentifier);
  v3 = lazy protocol witness table accessor for type LinkSuggestionsGenerator and conformance LinkSuggestionsGenerator(&lazy protocol witness table cache variable for type LNSystemProtocolIdentifier and conformance LNSystemProtocolIdentifier, 255, type metadata accessor for LNSystemProtocolIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = v3[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (v3[6] + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (v3[6] + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    v3[2] = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void type metadata accessor for LNSystemProtocolIdentifier(uint64_t a1, unint64_t *a2)
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

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int specialized _SwiftNewtypeWrapper<>._rawHashValue(seed:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t specialized == infix<A>(_:_:)()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hashValue.getter()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo35LNSuggestedActionDialogParameterKeya_Tt1gq5Tm(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo35LNSuggestedActionDialogParameterKeya_Tt1gq5Tm(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo35LNSuggestedActionDialogParameterKeya_Tt1gq5Tm()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OnRequestAppIntents.__allocating_init(linkClient:)(uint64_t a1)
{
  v2 = swift_allocObject();
  outlined init with take of LinkClient(a1, v2 + 16);
  return v2;
}

uint64_t LinkSuggestionsGenerator.getSubscriptions()()
{
  v1 = v0;
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v3 = *(v2 + 8);
  v4 = OUTLINED_FUNCTION_14();
  v6 = v5(v4, v2);
  v7 = &_swiftEmptyArrayStorage;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  v9 = v8[2];
  if (v9)
  {
    v58 = v0;
    v65 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    type metadata accessor for Signal();
    v10 = &_swiftEmptyArrayStorage;
    v11 = type metadata accessor for CoreSignalTypes();
    OUTLINED_FUNCTION_5();
    v60 = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(v12, 255, v13);
    v59 = enum case for CoreSignalTypes.app(_:);
    v14 = v8 + 5;
    do
    {
      v16 = *(v14 - 1);
      v15 = *v14;
      v63 = v11;
      v64 = v60;
      v17 = __swift_allocate_boxed_opaque_existential_1(&v61);
      (*(*(v11 - 8) + 104))(v17, v59, v11);
      swift_bridgeObjectRetain_n();
      v18 = v7;
      v19 = Signal.__allocating_init(signalType:signalValue:fallbackSignals:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_3EFC0;
      v21 = type metadata accessor for LinkSuggestionConfigurator();
      v22 = swift_allocObject();
      OUTLINED_FUNCTION_4();
      v25 = OUTLINED_FUNCTION_9(v23, v24);
      *(v25 + 24) = v26;
      *(v20 + 56) = v21;
      *(v20 + 64) = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(&lazy protocol witness table cache variable for type LinkSuggestionConfigurator and conformance LinkSuggestionConfigurator, v27, type metadata accessor for LinkSuggestionConfigurator);
      *(v20 + 32) = v22;

      v65 = v10;
      v29 = v10[2];
      v28 = v10[3];
      if (v29 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
        v10 = v65;
      }

      v10[2] = v29 + 1;
      v30 = &v10[2 * v29];
      v30[4] = v19;
      v30[5] = v20;
      v14 += 2;
      --v9;
      v7 = v18;
    }

    while (v9);

    v1 = v58;
  }

  else
  {

    v10 = &_swiftEmptyArrayStorage;
  }

  v31 = _sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufC18SiriSuggestionsKit6SignalC_SayAE31CandidateSuggestionConfigurator_pGSayAG_AItGTt1g504_s25e4Linkf49Plugin0bC9GeneratorC16getSubscriptionsSDy0aC3Kit6h8CSayAE31ijK19_pGGyFA2I_AItXEfU0_Tf1nc_n(v10);
  v32 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v33 = *(v32 + 8);
  v34 = OUTLINED_FUNCTION_14();
  v36 = v35(v34, v32);
  if (one-time initialization token for linkSuggestions != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.linkSuggestions);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = v7;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v65 = v42;
    *v41 = 136315138;
    if (v36)
    {
      v43 = *(v36 + 16);
    }

    else
    {
      v43 = 0;
    }

    v61 = v43;
    v62 = v36 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v44 = String.init<A>(describing:)();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v65);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_0, v38, v39, "Found %s link apps", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();

    v7 = v40;
  }

  else
  {
  }

  type metadata accessor for Signal();
  v47 = static Signal.HomeScreen.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMR);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_3EFC0;
  if (v36)
  {
    v7 = v36;
  }

  v49 = type metadata accessor for LinkHomeScreenSuggestionConfigurator();
  v50 = swift_allocObject();
  OUTLINED_FUNCTION_4();
  v53 = OUTLINED_FUNCTION_9(v51, v52);
  *(v53 + 24) = v54;
  *(v53 + 32) = v7;
  *(v48 + 56) = v49;
  *(v48 + 64) = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(&lazy protocol witness table cache variable for type LinkHomeScreenSuggestionConfigurator and conformance LinkHomeScreenSuggestionConfigurator, v55, type metadata accessor for LinkHomeScreenSuggestionConfigurator);
  *(v48 + 32) = v50;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v31;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v48, v47, isUniquelyReferenced_nonNull_native);

  return v61;
}

void LinkSuggestionConfigurator.__allocating_init()()
{
  swift_allocObject();
  OUTLINED_FUNCTION_2();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
}

void *_sSD_16uniquingKeysWithSDyxq_Gqd__n_q_q__q_tKXEtKcSTRd__x_q_t7ElementRtd__lufC18SiriSuggestionsKit6SignalC_SayAE31CandidateSuggestionConfigurator_pGSayAG_AItGTt1g504_s25e4Linkf49Plugin0bC9GeneratorC16getSubscriptionsSDy0aC3Kit6h8CSayAE31ijK19_pGGyFA2I_AItXEfU0_Tf1nc_n(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMd, &_ss18_DictionaryStorageCy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void LinkHomeScreenSuggestionConfigurator.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  OUTLINED_FUNCTION_2();
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = a1;
}

uint64_t OnRequestAppIntents.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t protocol witness for SignalSubscriber.getAsyncSubscriptions() in conformance LinkSuggestionsGenerator(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to SignalSubscriber.getAsyncSubscriptions()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for SignalSubscriber.getAsyncLookupSubscriptions() in conformance LinkSuggestionsGenerator;

  return SignalSubscriber.getAsyncSubscriptions()(a1, a2);
}

uint64_t protocol witness for SignalSubscriber.getAsyncLookupSubscriptions() in conformance LinkSuggestionsGenerator(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to SignalSubscriber.getAsyncLookupSubscriptions()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for SignalSubscriber.getAsyncLookupSubscriptions() in conformance LinkSuggestionsGenerator;

  return SignalSubscriber.getAsyncLookupSubscriptions()(a1, a2);
}

uint64_t protocol witness for InternalGenerator.generateCandidateSuggestions(interaction:environment:factory:) in conformance LinkSuggestionsGenerator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for InternalGenerator.generateCandidateSuggestions(interaction:environment:factory:) in conformance LinkSuggestionsGenerator;

  return LinkSuggestionsGenerator.generateCandidateSuggestions(interaction:environment:factory:)();
}

{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_7();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t AppIntentCandidateSuggestionConfigurator.appBundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LinkSuggestionConfigurator.updateContext(context:signal:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_6();
}

uint64_t LinkSuggestionConfigurator.updateContext(context:signal:)()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 24);
  v2 = EnvironmentAwareSignal.activeSignal.getter();
  v3 = LinkSuggestedActionsRequest.init(signal:)(v2);
  *(v0 + 32) = v5;
  if (v5)
  {
    v6 = *(v0 + 16);
    *(v0 + 72) = v4;
    *(v0 + 40) = v3;
    *(v0 + 48) = *v6;
    v7 = v6[1];
    *(v0 + 56) = v7;
    *(v0 + 64) = swift_getObjectType();
    v8 = *(*(v7 + 8) + 8);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(LinkSuggestionConfigurator.updateContext(context:signal:), v10, v9);
  }

  else
  {
    OUTLINED_FUNCTION_10();

    return v11();
  }
}

{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v7.bundleIdentifier._countAndFlagsBits = *(v0 + 40);
  v3 = *(v0 + 48);
  *&v7.onScreen = *(v0 + 72) & 0x101;
  v7.bundleIdentifier._object = *(v0 + 32);
  Context.addSuggestedActionsRequest(_:)(v7);

  OUTLINED_FUNCTION_10();

  return v4();
}

uint64_t LinkSuggestedActionsRequest.init(signal:)(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit13SignalContextVSgMd, &_s18SiriSuggestionsKit13SignalContextVSgMR) - 8) + 64);
  v3 = (__chkstk_darwin)();
  v41 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v6 = &v39[-v5];
  v7 = type metadata accessor for CoreSignalTypes();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
  v13 = v12 - 8;
  v14 = (*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v12);
  v16 = &v39[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v21 = &v39[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v19);
  v24 = &v39[-v23];
  __chkstk_darwin(v22);
  v26 = &v39[-v25];
  v42 = a1;
  Signal.signalType.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit10SignalType_pMd, ".$");
  v27 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v26, v27 ^ 1u, 1, v7);
  (*(v8 + 104))(v24, enum case for CoreSignalTypes.app(_:), v7);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v7);
  v28 = *(v13 + 56);
  outlined init with copy of CoreSignalTypes?(v26, v16);
  outlined init with copy of CoreSignalTypes?(v24, &v16[v28]);
  OUTLINED_FUNCTION_20(v16);
  if (v29)
  {
    outlined destroy of CoreSignalTypes?(v24, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    OUTLINED_FUNCTION_20(&v16[v28]);
    if (v29)
    {
      outlined destroy of CoreSignalTypes?(v16, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      outlined destroy of CoreSignalTypes?(v26, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  outlined init with copy of CoreSignalTypes?(v16, v21);
  OUTLINED_FUNCTION_20(&v16[v28]);
  if (v29)
  {
    outlined destroy of CoreSignalTypes?(v24, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
    (*(v8 + 8))(v21, v7);
LABEL_9:
    outlined destroy of CoreSignalTypes?(v16, &_s18SiriSuggestionsKit15CoreSignalTypesOSg_ADtMd, "*$");
    outlined destroy of CoreSignalTypes?(v26, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
LABEL_10:

    return 0;
  }

  (*(v8 + 32))(v11, &v16[v28], v7);
  OUTLINED_FUNCTION_5();
  lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(v31, 255, v32);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v8 + 8);
  v33(v11, v7);
  outlined destroy of CoreSignalTypes?(v24, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  v33(v21, v7);
  outlined destroy of CoreSignalTypes?(v16, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  outlined destroy of CoreSignalTypes?(v26, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  if ((v40 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v30 = Signal.signalValue.getter();
  Signal.context.getter();
  v34 = type metadata accessor for SignalContext();
  if (__swift_getEnumTagSinglePayload(v6, 1, v34) == 1)
  {
    outlined destroy of CoreSignalTypes?(v6, &_s18SiriSuggestionsKit13SignalContextVSgMd, &_s18SiriSuggestionsKit13SignalContextVSgMR);
  }

  else
  {
    SignalContext.onScreen.getter();
    OUTLINED_FUNCTION_15(v34);
    (*(v35 + 8))(v6, v34);
  }

  v36 = v41;
  Signal.context.getter();
  if (__swift_getEnumTagSinglePayload(v36, 1, v34) == 1)
  {

    outlined destroy of CoreSignalTypes?(v36, &_s18SiriSuggestionsKit13SignalContextVSgMd, &_s18SiriSuggestionsKit13SignalContextVSgMR);
  }

  else
  {
    SignalContext.explicitRequest.getter();

    OUTLINED_FUNCTION_15(v34);
    (*(v37 + 8))(v36, v34);
  }

  return v30;
}

uint64_t LinkSuggestionConfigurator.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t LinkSuggestionConfigurator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

void LinkSuggestionConfigurator.init()()
{
  OUTLINED_FUNCTION_2();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
}

uint64_t protocol witness for InternalResolver.resolverTypeOperand.getter in conformance LinkActionResolver()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator;

  return LinkSuggestionConfigurator.updateContext(context:signal:)(a1, a2);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_10();

  return v5();
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance LinkSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValid(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for InternalGenerator.generateCandidateSuggestions(interaction:environment:factory:) in conformance LinkSuggestionsGenerator;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance LinkSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValidWithDebug(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance LinkSuggestionConfigurator;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

{
  OUTLINED_FUNCTION_13();
  v8 = *(v7 + 16);
  v9 = *v3;
  OUTLINED_FUNCTION_7();
  *v10 = v9;

  v11 = *(v9 + 8);

  return v11(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfiguratorFactory.create(actionIdentifier:) in conformance LinkSuggestionConfigurator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(&lazy protocol witness table cache variable for type LinkSuggestionConfigurator and conformance LinkSuggestionConfigurator, a2, type metadata accessor for LinkSuggestionConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

void *LinkHomeScreenSuggestionConfigurator.init(_:)()
{
  OUTLINED_FUNCTION_2();
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = v3;
  return v0;
}

uint64_t LinkHomeScreenSuggestionConfigurator.updateContext(context:signal:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_6();
}

uint64_t LinkHomeScreenSuggestionConfigurator.updateContext(context:signal:)()
{
  v1 = *(v0[3] + 32);
  v0[4] = v1;
  v2 = v1[2];
  v0[5] = v2;
  if (!v2)
  {
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X1, X16 }
  }

  v3 = v0[2];
  v0[6] = *v3;
  v0[7] = v3[1];
  v0[8] = swift_getObjectType();
  v0[9] = 0;
  v0[10] = v1[4];
  v0[11] = v1[5];
  v4 = one-time initialization token for linkSuggestions;
  swift_bridgeObjectRetain_n();
  if (v4 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.linkSuggestions);
  OUTLINED_FUNCTION_14();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = objc_allocWithZone(LNSuggestionsRequest);
    v11 = String._bridgeToObjectiveC()();

    v13 = OUTLINED_FUNCTION_16(v12, "initWithBundleIdentifier:onScreen:explicitRequest:");

    *(v8 + 4) = v13;
    *v9 = v13;
    OUTLINED_FUNCTION_19(&dword_0, v14, v15, "Adding homescreen request %@");
    outlined destroy of CoreSignalTypes?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  else
  {
  }

  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_18();

  return _swift_task_switch(v18, v19, v20);
}

{
  OUTLINED_FUNCTION_8();
  v6.bundleIdentifier._countAndFlagsBits = *(v0 + 80);
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v6.bundleIdentifier._object = *(v0 + 88);
  *&v6.onScreen = 0;
  Context.addSuggestedActionsRequest(_:)(v6);

  return _swift_task_switch(LinkHomeScreenSuggestionConfigurator.updateContext(context:signal:), 0, 0);
}

{
  v1 = v0[9] + 1;
  if (v1 == v0[5])
  {
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_18();

    __asm { BRAA            X1, X16 }
  }

  v0[9] = v1;
  v4 = v0[4] + 16 * v1;
  v0[10] = *(v4 + 32);
  v0[11] = *(v4 + 40);
  v5 = one-time initialization token for linkSuggestions;
  swift_bridgeObjectRetain_n();
  if (v5 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.linkSuggestions);
  OUTLINED_FUNCTION_14();

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = objc_allocWithZone(LNSuggestionsRequest);
    v12 = String._bridgeToObjectiveC()();

    v14 = OUTLINED_FUNCTION_16(v13, "initWithBundleIdentifier:onScreen:explicitRequest:");

    *(v9 + 4) = v14;
    *v10 = v14;
    OUTLINED_FUNCTION_19(&dword_0, v15, v16, "Adding homescreen request %@");
    outlined destroy of CoreSignalTypes?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  else
  {
  }

  v17 = OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_3(v17);
  OUTLINED_FUNCTION_18();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t LinkHomeScreenSuggestionConfigurator.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t LinkHomeScreenSuggestionConfigurator.__deallocating_deinit()
{
  LinkHomeScreenSuggestionConfigurator.deinit();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkHomeScreenSuggestionConfigurator(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkHomeScreenSuggestionConfigurator;

  return LinkHomeScreenSuggestionConfigurator.updateContext(context:signal:)(a1);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValid(signal:) in conformance LinkHomeScreenSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValid(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for SignalSubscriber.getAsyncLookupSubscriptions() in conformance LinkSuggestionsGenerator;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance LinkHomeScreenSuggestionConfigurator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValidWithDebug(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for CandidateSuggestionConfigurator.isValidWithDebug(signal:) in conformance LinkHomeScreenSuggestionConfigurator;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t protocol witness for CandidateSuggestionConfiguratorFactory.create(actionIdentifier:) in conformance LinkHomeScreenSuggestionConfigurator(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(&lazy protocol witness table cache variable for type LinkHomeScreenSuggestionConfigurator and conformance LinkHomeScreenSuggestionConfigurator, a2, type metadata accessor for LinkHomeScreenSuggestionConfigurator);

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

void *Context.getSuggestedActionsRequests()()
{
  v1[3] = &type metadata for LinkSuggestionsOwners;
  v1[4] = lazy protocol witness table accessor for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners();
  LOBYTE(v1[0]) = 0;
  Context.getParam(for:key:)();
  __swift_destroy_boxed_opaque_existential_1(v1);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy25SiriLinkSuggestionsPlugin0B23SuggestedActionsRequestVGMd, &_sShy25SiriLinkSuggestionsPlugin0B23SuggestedActionsRequestVGMR);
    if (swift_dynamicCast())
    {
      return v1[0];
    }
  }

  else
  {
    outlined destroy of CoreSignalTypes?(v2, &_sypSgMd, &_sypSgMR);
  }

  return &_swiftEmptySetSingleton;
}

id LNSuggestionsRequest.__allocating_init(bundleIdentifier:onScreen:explicitRequest:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithBundleIdentifier:v7 onScreen:a3 & 1 explicitRequest:a4 & 1];

  return v8;
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_0(a3, result);
  }

  return result;
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for RetrievedContext);
}

{
  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, a2, a3, &type metadata accessor for VersionedInvocation);
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), OUTLINED_FUNCTION_15(v8), a1 + *(v9 + 72) * a2 <= a3))
  {
    a4(0);
    v11 = OUTLINED_FUNCTION_12();

    _swift_arrayInitWithTakeFrontToBack(v11);
  }

  else if (a3 != a1)
  {
    v10 = OUTLINED_FUNCTION_12();

    _swift_arrayInitWithTakeBackToFront(v10);
  }
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
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
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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
    v10 = &_swiftEmptyArrayStorage;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
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

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMd, &_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14);
      v16 = *a3;
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if ((v15 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v11 = v17;
    }

    v19 = *a3;
    if (v15)
    {

      v20 = v19[7];
      v21 = *(v20 + 8 * v11);
      *(v20 + 8 * v11) = v7;
    }

    else
    {
      v19[(v11 >> 6) + 8] |= 1 << v11;
      *(v19[6] + 8 * v11) = v8;
      *(v19[7] + 8 * v11) = v7;
      v22 = v19[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_18;
      }

      v19[2] = v24;
    }

    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  type metadata accessor for Signal();
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = 0;
  v26 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v26 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      type metadata accessor for Signal();
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(i - 1);
    v7 = *i;
    v9 = *a3;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMd, &_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMR);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v19[6] + 8 * v11) = v8;
    *(v19[7] + 8 * v11) = v7;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v19[2] = v22;
    ++v5;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14);
  v16 = *a3;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v24._object = 0x8000000000042600;
  v24._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v24);
  type metadata accessor for Signal();
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 39;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v31 = *(a1 + 16);
  if (!v31)
  {
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 64)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(i, &v38, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtMd, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtMR);
    v8 = v38;
    v7 = v39;
    v36 = v38;
    v37 = v39;
    v33 = v40;
    v34 = v41;
    v35 = v42;
    v9 = *a3;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v39);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin15ActionParameterVGMd, &_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin15ActionParameterVGMR);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    v21 = (v19[7] + 48 * v11);
    v22 = v33;
    v23 = v35;
    v21[1] = v34;
    v21[2] = v23;
    *v21 = v22;
    v24 = v19[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    ++v5;
    v19[2] = v26;
    a2 = 1;
    if (v31 == v5)
    {
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
  v16 = *a3;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v27 = swift_allocError();
  swift_willThrow();
  v43 = v27;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    outlined destroy of ActionParameter(&v33);
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v29._object = 0x8000000000042600;
  v29._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v29);
  _print_unlocked<A, B>(_:_:)();
  v30._countAndFlagsBits = 39;
  v30._object = 0xE100000000000000;
  String.append(_:)(v30);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = 0;
  v30 = *(a1 + 16);
  for (i = (a1 + 65); ; i += 40)
  {
    if (v30 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v32 = v4;
    v6 = *(i - 33);
    v7 = *(i - 25);
    v8 = *(i - 17);
    v9 = *(i - 9);
    v33 = *i;
    v10 = *(i - 1);
    v11 = *a3;

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_19;
    }

    v17 = v12;
    if (v11[3] < v16)
    {
      break;
    }

    if (a2)
    {
      if (v12)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMd, &_ss17_NativeDictionaryVySS25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMR);
      _NativeDictionary.copy()();
      if (v17)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v21 = *a3;
    *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v22 = (v21[6] + 16 * v13);
    *v22 = v6;
    v22[1] = v7;
    v23 = v21[7] + 24 * v13;
    *v23 = v8;
    *(v23 + 8) = v9;
    *(v23 + 16) = v10;
    *(v23 + 17) = v33;
    v24 = v21[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_20;
    }

    v21[2] = v26;
    v4 = v32 + 1;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a2 & 1);
  v18 = *a3;
  v19 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  if ((v17 & 1) != (v20 & 1))
  {
    goto LABEL_21;
  }

  v13 = v19;
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v28._object = 0x8000000000042600;
  v28._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v28);
  _print_unlocked<A, B>(_:_:)();
  v29._countAndFlagsBits = 39;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = 0;
  v29 = *(a1 + 16);
  for (i = (a1 + 56); ; i += 4)
  {
    if (v29 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v31 = v4;
    v7 = *(i - 3);
    v6 = *(i - 2);
    v9 = *(i - 1);
    v8 = *i;
    v10 = *a3;

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v21 = (v20[6] + 16 * v12);
    *v21 = v7;
    v21[1] = v6;
    v22 = (v20[7] + 16 * v12);
    *v22 = v9;
    v22[1] = v8;
    v23 = v20[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_20;
    }

    v20[2] = v25;
    v4 = v31 + 1;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15);
  v17 = *a3;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v12 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v27._object = 0x8000000000042600;
  v27._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v27);
  _print_unlocked<A, B>(_:_:)();
  v28._countAndFlagsBits = 39;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      type metadata accessor for LNSuggestedActionDialogParameterKey(0);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v6 = *(i - 1);
    v7 = *i;
    v8 = *a3;
    v9 = *(i - 2);

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    v12 = v8[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v8[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySo35LNSuggestedActionDialogParameterKeyaSSGMd, &_ss17_NativeDictionaryVySo35LNSuggestedActionDialogParameterKeyaSSGMR);
      _NativeDictionary.copy()();
      if (v15)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    *(v19[6] + 8 * v11) = v9;
    v20 = (v19[7] + 16 * v11);
    *v20 = v6;
    v20[1] = v7;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v19[2] = v23;
    ++v4;
    a2 = 1;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
  v16 = *a3;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  if ((v15 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v11 = v17;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v25._object = 0x8000000000042600;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  type metadata accessor for LNSuggestedActionDialogParameterKey(0);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v5 = 0;
  v46 = *(a1 + 16);
  v6 = (a1 + 48);
  while (1)
  {
    if (v46 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(v6 - 2);
    v8 = *(v6 - 1);
    v48 = v6;
    v9 = *v6;
    v10 = *a3;

    v12 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_30;
    }

    v16 = v11;
    if (v10[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay22IntelligenceFlowShared16RetrievedContextVGGMd, &_ss17_NativeDictionaryVySSSay22IntelligenceFlowShared16RetrievedContextVGGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15);
      v17 = *a3;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if ((v16 & 1) != (v19 & 1))
      {
        goto LABEL_36;
      }

      v12 = v18;
    }

    v20 = *a3;
    if (v16)
    {
      v45 = v5;
      v21 = a3;
      v22 = v20[7];
      v23 = *(v22 + 8 * v12);
      v24 = *(v9 + 16);
      v25 = *(v23 + 16);
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        goto LABEL_32;
      }

      v27 = *(v22 + 8 * v12);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v29 = *(v23 + 24) >> 1, v29 < v26))
      {
        if (v25 <= v26)
        {
          v30 = v25 + v24;
        }

        else
        {
          v30 = v25;
        }

        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v30, 1, v23);
        v23 = v31;
        v29 = *(v31 + 24) >> 1;
      }

      a3 = v21;
      if (*(v9 + 16))
      {
        v32 = v29 - *(v23 + 16);
        v33 = *(type metadata accessor for RetrievedContext() - 8);
        if (v32 < v24)
        {
          goto LABEL_34;
        }

        v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
        v35 = *(v33 + 72);
        swift_arrayInitWithCopy();

        a3 = v21;
        v5 = v45;
        if (v24)
        {
          v36 = *(v23 + 16);
          v37 = __OFADD__(v36, v24);
          v38 = v36 + v24;
          if (v37)
          {
            goto LABEL_35;
          }

          *(v23 + 16) = v38;
        }
      }

      else
      {

        v5 = v45;
        if (v24)
        {
          goto LABEL_33;
        }
      }

      v42 = v20[7];
      v43 = *(v42 + 8 * v12);
      *(v42 + 8 * v12) = v23;
    }

    else
    {
      v20[(v12 >> 6) + 8] |= 1 << v12;
      v39 = (v20[6] + 16 * v12);
      *v39 = v7;
      v39[1] = v8;
      *(v20[7] + 8 * v12) = v9;
      v40 = v20[2];
      v37 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v37)
      {
        goto LABEL_31;
      }

      v20[2] = v41;
    }

    v6 = v48 + 3;
    ++v5;
    a2 = 1;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = a1;
  v5 = 0;
  v47 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v47 == v5)
    {
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v48 = v5;
    v7 = *(i - 2);
    v8 = *(i - 1);
    v9 = *i;
    v10 = *a3;

    v11 = v9;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
    v14 = v10[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_22;
    }

    v17 = v12;
    if (v10[3] >= v16)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo16LNActionMetadataCGMd, &_ss17_NativeDictionaryVySSSo16LNActionMetadataCGMR);
        _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16);
      v18 = *a3;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if ((v17 & 1) != (v20 & 1))
      {
        goto LABEL_24;
      }

      v13 = v19;
    }

    v21 = *a3;
    if (v17)
    {
      v22 = one-time initialization token for appIntentsSuggestions;
      v23 = *(v21[7] + 8 * v13);
      if (v22 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static Logger.appIntentsSuggestions);
      v25 = v23;
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v43 = v27;
        v28 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v50 = v44;
        *v28 = 136315138;
        v45 = v25;
        v29 = [v25 identifier];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        log = v26;
        v32 = v31;

        v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v50);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_0, log, v43, "Unexpected duplicate app intent identifier in map: %s. Returning first instance encountered", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v44);

        v34 = v21[7];
        v35 = *(v34 + 8 * v13);
        *(v34 + 8 * v13) = v45;
      }

      else
      {

        v40 = v21[7];
        v35 = *(v40 + 8 * v13);
        *(v40 + 8 * v13) = v25;
      }

      v4 = a1;
    }

    else
    {
      v21[(v13 >> 6) + 8] |= 1 << v13;
      v36 = (v21[6] + 16 * v13);
      *v36 = v7;
      v36[1] = v8;
      *(v21[7] + 8 * v13) = v11;
      v37 = v21[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_23;
      }

      v21[2] = v39;
    }

    v5 = v48 + 1;
    a2 = 1;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v3 = a3;
  v5 = a1;
  v6 = 0;
  v67 = a1 + 32;
  v68 = *(a1 + 16);
  while (1)
  {
    if (v6 == v68)
    {
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v7 = (v67 + 24 * v6);
    v9 = *v7;
    v8 = v7[1];
    v10 = v7[2];
    v11 = *v3;

    v70 = v10;

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
    v14 = v11[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_47;
    }

    v17 = v12;
    if (v11[3] >= v16)
    {
      if ((a2 & 1) == 0)
      {
        v55 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSaySo14LNAutoShortcutCGGMd, &_ss17_NativeDictionaryVySSSaySo14LNAutoShortcutCGGMR);
        _NativeDictionary.copy()();
        v13 = v55;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16);
      v18 = *v3;
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v8);
      if ((v17 & 1) != (v20 & 1))
      {
        goto LABEL_54;
      }

      v13 = v19;
    }

    v21 = v70;
    ++v6;
    v22 = *v3;
    if (v17)
    {
      v23 = *(v22[7] + 8 * v13);
      v62 = v13;
      v65 = *v3;
      if (v70 >> 62)
      {
        v24 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v24 = *(&dword_10 + (v70 & 0xFFFFFFFFFFFFFF8));
      }

      v25 = v23 >> 62;
      v66 = v6;
      if (v23 >> 62)
      {
        v56 = v24;
        v26 = _CocoaArrayWrapper.endIndex.getter();
        v24 = v56;
      }

      else
      {
        v26 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
      }

      v27 = v26 + v24;
      if (__OFADD__(v26, v24))
      {
        goto LABEL_48;
      }

      v63 = v24;

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v25)
        {
          goto LABEL_25;
        }

        v28 = v23 & 0xFFFFFFFFFFFFFF8;
        if (v27 <= *(&dword_18 + (v23 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v25)
        {
LABEL_25:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_26;
        }

        v28 = v23 & 0xFFFFFFFFFFFFFF8;
      }

      v33 = *(v28 + 16);
LABEL_26:
      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v28 = v23 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
      v64 = v23;
      v34 = *(v28 + 16);
      v35 = (*(v28 + 24) >> 1) - v34;
      v36 = v28 + 8 * v34;
      v61 = v28;
      if (v21 >> 62)
      {
        v41 = _CocoaArrayWrapper.endIndex.getter();
        if (v41)
        {
          v42 = _CocoaArrayWrapper.endIndex.getter();
          if (v35 < v42)
          {
            goto LABEL_51;
          }

          v60 = v42;
          if (v41 < 1)
          {
            goto LABEL_53;
          }

          v43 = v36 + 32;
          lazy protocol witness table accessor for type [LNAutoShortcut] and conformance [A]();
          v44 = 0;
          v45 = v70;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14LNAutoShortcutCGMd, &_sSaySo14LNAutoShortcutCGMR);
            v46 = specialized protocol witness for Collection.subscript.read in conformance [A](v69, v44, v45);
            v48 = *v47;
            (v46)(v69, 0);
            *(v43 + 8 * v44++) = v48;
          }

          while (v41 != v44);
          v3 = a3;
          v5 = a1;
          v40 = v60;
          goto LABEL_37;
        }
      }

      else
      {
        v37 = v21 & 0xFFFFFFFFFFFFFF8;
        v38 = *(v37 + 16);
        if (v38)
        {
          if (v35 < v38)
          {
            goto LABEL_51;
          }

          v39 = *(v37 + 16);
          type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcut, LNAutoShortcut_ptr);
          swift_arrayInitWithCopy();
          v40 = v39;
LABEL_37:

          v49 = v64;
          v50 = v65;
          v6 = v66;
          if (v40 < v63)
          {
            goto LABEL_50;
          }

          if (v40 > 0)
          {
            v51 = *(v61 + 16);
            v31 = __OFADD__(v51, v40);
            v52 = v51 + v40;
            if (v31)
            {
              goto LABEL_52;
            }

            *(v61 + 16) = v52;
          }

          goto LABEL_42;
        }
      }

      v49 = v64;
      v50 = v65;
      v6 = v66;
      if (v63 > 0)
      {
        goto LABEL_50;
      }

LABEL_42:

      v53 = v50[7];
      v54 = *(v53 + 8 * v62);
      *(v53 + 8 * v62) = v49;

      a2 = 1;
    }

    else
    {
      v22[(v13 >> 6) + 8] |= 1 << v13;
      v29 = (v22[6] + 16 * v13);
      *v29 = v9;
      v29[1] = v8;
      *(v22[7] + 8 * v13) = v21;
      v30 = v22[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_49;
      }

      v22[2] = v32;
      a2 = 1;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMd, &_ss17_NativeDictionaryVy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = *v4;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    type metadata accessor for Signal();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v14);
    *(v20 + 8 * v14) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a1, v19);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy25SiriLinkSuggestionsPlugin0cdE12FeatureFlagsOSbGMd, "F/");
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2 & 1);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = result;
LABEL_5:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + v14) = a1 & 1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v14, a2 & 1, a1 & 1, v19);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of CoreSignalTypes?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15CoreSignalTypesOSgMd, &_s18SiriSuggestionsKit15CoreSignalTypesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit19VersionedInvocationVGMd, "0<", &type metadata accessor for VersionedInvocation, &type metadata accessor for VersionedInvocation);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit14InvocationTypeOGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit14InvocationTypeOGMR, &type metadata accessor for InvocationType, &type metadata accessor for InvocationType);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit6SignalC_SayAC31CandidateSuggestionConfigurator_pGtGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit6SignalC_SayAC31CandidateSuggestionConfigurator_pGtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit6SignalC_SayAA31CandidateSuggestionConfigurator_pGtMd, &_s18SiriSuggestionsKit6SignalC_SayAA31CandidateSuggestionConfigurator_pGtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo25LNActionParameterMetadataC_18SiriSuggestionsKit0gH0O20DisplayRepresentable_pSgtGMd, &_ss23_ContiguousArrayStorageCySo25LNActionParameterMetadataC_18SiriSuggestionsKit0gH0O20DisplayRepresentable_pSgtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So16LNActionMetadataCtGMd, &_ss23_ContiguousArrayStorageCySS_So16LNActionMetadataCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So16LNActionMetadataCtMd, &_sSS_So16LNActionMetadataCtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit0dE0O20DisplayRepresentable_ptGMd, &_ss23_ContiguousArrayStorageCySS_18SiriSuggestionsKit0dE0O20DisplayRepresentable_ptGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_18SiriSuggestionsKit0aB0O20DisplayRepresentable_ptMd, &_sSS_18SiriSuggestionsKit0aB0O20DisplayRepresentable_ptMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestVtGMd, &_ss23_ContiguousArrayStorageCySS_25SiriLinkSuggestionsPlugin0E23SuggestedActionsRequestVtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_25SiriLinkSuggestionsPlugin0B23SuggestedActionsRequestVtMd, &_sSS_25SiriLinkSuggestionsPlugin0B23SuggestedActionsRequestVtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeya_SStGMd, &_ss23_ContiguousArrayStorageCySo35LNSuggestedActionDialogParameterKeya_SStGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo35LNSuggestedActionDialogParameterKeya_SStMd, &_sSo35LNSuggestedActionDialogParameterKeya_SStMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit31CandidateSuggestionConfigurator_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit31CandidateSuggestionConfigurator_pMd, ".<");
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
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin0E15SuggestedActionVGMd, &_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin0E15SuggestedActionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, ".<");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(a7(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(a7(0) - 8);
  if (v11)
  {
    v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v22, v14, v19 + v22, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t specialized _NativeSet.update(with:isUnique:)(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v49 = a3 & 0x100;
  v9 = *v4;
  v10 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v46 = a4;
    v14 = ~v12;
    v15 = *(v9 + 48);
    while (1)
    {
      v16 = v15 + 24 * v13;
      v17 = *(v16 + 16);
      v18 = *(v16 + 17);
      if (*v16 == a1 && *(v16 + 8) == a2)
      {
        if (((v17 ^ a3) & 1) == 0 && (((v49 != 0) ^ v18) & 1) == 0)
        {
LABEL_17:
          v21 = 0;
          v20 = 1;
          v5 = v4;
          a4 = v46;
          goto LABEL_18;
        }
      }

      else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v17 ^ a3) & 1) == 0 && (((v49 != 0) ^ v18) & 1) == 0)
      {
        goto LABEL_17;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 0;
        v5 = v4;
        a4 = v46;
        goto LABEL_16;
      }
    }
  }

  v20 = 0;
LABEL_16:
  v21 = 1;
LABEL_18:
  v22 = *(v9 + 16);
  v23 = v22 + v21;
  if (__OFADD__(v22, v21))
  {
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v24 = *(v9 + 24);
  if (v24 >= v23 && (a4 & 1) != 0)
  {
    if (v20)
    {
LABEL_22:
      v25 = 24 * v13;
      goto LABEL_47;
    }

    goto LABEL_43;
  }

  if (a4)
  {
    v47 = v20;
    specialized _NativeSet.resize(capacity:)(v23);
  }

  else
  {
    if (v24 >= v23)
    {
      specialized _NativeSet.copy()();
      if (v20)
      {
        goto LABEL_22;
      }

      goto LABEL_43;
    }

    v47 = v20;
    specialized _NativeSet.copyAndResize(capacity:)(v23);
  }

  v26 = *v5;
  v27 = *(*v5 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v28 = Hasher._finalize()();
  v29 = -1 << *(v26 + 32);
  v13 = v28 & ~v29;
  if (((*(v26 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_42:
    v5 = v4;
    if (v47)
    {
      goto LABEL_50;
    }

LABEL_43:
    v36 = *v5;
    *(*v5 + 8 * (v13 >> 6) + 56) |= 1 << v13;
    v37 = *(v36 + 48) + 24 * v13;
    *v37 = a1;
    *(v37 + 8) = a2;
    *(v37 + 16) = a3 & 1;
    *(v37 + 17) = BYTE1(v49);
    v38 = *(v36 + 16);
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (!v39)
    {
      result = 0;
      *(v36 + 16) = v40;
      return result;
    }

    goto LABEL_49;
  }

  v30 = ~v29;
  v31 = *(v26 + 48);
  while (1)
  {
    v32 = v31 + 24 * v13;
    v33 = *(v32 + 16);
    v34 = *(v32 + 17);
    if (*v32 == a1 && *(v32 + 8) == a2)
    {
      break;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && ((v33 ^ a3) & 1) == 0 && (((v49 != 0) ^ v34) & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_41:
    v13 = (v13 + 1) & v30;
    if (((*(v26 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  if ((v33 ^ a3) & 1) != 0 || (((v49 != 0) ^ v34))
  {
    goto LABEL_41;
  }

LABEL_45:
  v5 = v4;
  if ((v47 & 1) == 0)
  {
LABEL_50:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v25 = 24 * v13;
LABEL_47:
  v42 = *(*v5 + 48) + v25;
  result = *v42;
  v43 = *(v42 + 8);
  v44 = *(v42 + 16);
  v45 = *(v42 + 17);
  *v42 = a1;
  *(v42 + 8) = a2;
  *(v42 + 16) = a3 & 1;
  *(v42 + 17) = BYTE1(v49);
  return result;
}

unint64_t lazy protocol witness table accessor for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners()
{
  result = lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners;
  if (!lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners;
  if (!lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkSuggestionsOwners and conformance LinkSuggestionsOwners);
  }

  return result;
}

uint64_t outlined destroy of CoreSignalTypes?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_15(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t lazy protocol witness table accessor for type CoreSignalTypes and conformance CoreSignalTypes(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_11()
{
}

id OUTLINED_FUNCTION_16(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_17()
{
  v2 = v0[8];
  v3 = v0[6];
  v4 = *(*(v0[7] + 8) + 8);

  return dispatch thunk of Actor.unownedExecutor.getter();
}

void OUTLINED_FUNCTION_19(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t ToolParamSummary.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617268506C6F6F74 && a2 == 0xEA00000000006573;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61566D61726170 && a2 == 0xEB00000000736575)
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

Swift::Int DialogType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t ToolParamSummary.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6C61566D61726170;
  }

  else
  {
    return 0x617268506C6F6F74;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolParamSummary.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolParamSummary.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ToolParamSummary.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ToolParamSummary.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ToolParamSummary.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolParamSummary.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolParamSummary.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ToolParamSummary.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin16ToolParamSummaryV10CodingKeys33_4798BCE20D0F3642FE2DAC187424D220LLOGMd, &_ss22KeyedEncodingContainerVy25SiriLinkSuggestionsPlugin16ToolParamSummaryV10CodingKeys33_4798BCE20D0F3642FE2DAC187424D220LLOGMR);
  v7 = OUTLINED_FUNCTION_14_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v16[1] = v16[0];
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v13, v6);
}

unint64_t lazy protocol witness table accessor for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys);
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

uint64_t ToolParamSummary.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin16ToolParamSummaryV10CodingKeys33_4798BCE20D0F3642FE2DAC187424D220LLOGMd, &_ss22KeyedDecodingContainerVy25SiriLinkSuggestionsPlugin16ToolParamSummaryV10CodingKeys33_4798BCE20D0F3642FE2DAC187424D220LLOGMR);
  v4 = OUTLINED_FUNCTION_14_0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolParamSummary.CodingKeys and conformance ToolParamSummary.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = OUTLINED_FUNCTION_9_0();
    v10(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ToolParamSummary@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = ToolParamSummary.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t one-time initialization function for appIntentSuggestionsSignposter()
{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static DefaultToolClient.appIntentSuggestionsSignposter);
  __swift_project_value_buffer(v0, static DefaultToolClient.appIntentSuggestionsSignposter);
  return OSSignposter.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v0, static DefaultLinkClient.appIntentSuggestionsSignposter);
  __swift_project_value_buffer(v0, static DefaultLinkClient.appIntentSuggestionsSignposter);
  return OSSignposter.init(subsystem:category:)();
}

uint64_t DefaultToolClient.appIntentSuggestionsSignposter.unsafeMutableAddressor()
{
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v0 = type metadata accessor for OSSignposter();

  return __swift_project_value_buffer(v0, static DefaultToolClient.appIntentSuggestionsSignposter);
}

uint64_t static DefaultToolClient.appIntentSuggestionsSignposter.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v2 = type metadata accessor for OSSignposter();
  v3 = __swift_project_value_buffer(v2, static DefaultToolClient.appIntentSuggestionsSignposter);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask()
{
  OUTLINED_FUNCTION_8();
  v0[2] = v1;
  v2 = type metadata accessor for ToolExecutor.SessionOptions();
  v0[3] = v2;
  OUTLINED_FUNCTION_1_1(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 40);
  static ToolExecutor.SessionOptions.default.getter();
  v2 = async function pointer to static ToolExecutor.start(options:)[1];
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask;
  v4 = *(v0 + 40);

  return static ToolExecutor.start(options:)(v4);
}

{
  OUTLINED_FUNCTION_15_0();
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[2];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *v3 = v1;
  v3[1] = OpaqueTypeConformance2;

  OUTLINED_FUNCTION_10();

  return v5();
}

{
  OUTLINED_FUNCTION_8();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_10();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v7 = v4[6];
  *v6 = *v2;
  v5[7] = v1;

  v8 = v4[5];
  v9 = v4[4];
  v10 = v4[3];
  if (!v1)
  {
    v5[8] = a1;
  }

  (*(v9 + 8))(v8, v10);
  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)()
{
  OUTLINED_FUNCTION_8();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = type metadata accessor for ToolInvocationSummary.ParameterSummary.Value();
  v1[8] = v5;
  OUTLINED_FUNCTION_1_1(v5);
  v1[9] = v6;
  v8 = *(v7 + 64);
  v1[10] = OUTLINED_FUNCTION_11_0();
  v9 = type metadata accessor for ToolInvocationSummary.ParameterSummary();
  v1[11] = v9;
  OUTLINED_FUNCTION_1_1(v9);
  v1[12] = v10;
  v12 = *(v11 + 64);
  v1[13] = OUTLINED_FUNCTION_19_0();
  v1[14] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetSgMd, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetSgMR) - 8) + 64);
  v1[15] = OUTLINED_FUNCTION_19_0();
  v1[16] = swift_task_alloc();
  v14 = type metadata accessor for ToolInvocationSummary();
  v1[17] = v14;
  OUTLINED_FUNCTION_1_1(v14);
  v1[18] = v15;
  v17 = *(v16 + 64);
  v1[19] = OUTLINED_FUNCTION_19_0();
  v1[20] = swift_task_alloc();
  v18 = type metadata accessor for OSSignpostID();
  v1[21] = v18;
  OUTLINED_FUNCTION_1_1(v18);
  v1[22] = v19;
  v21 = *(v20 + 64);
  v1[23] = OUTLINED_FUNCTION_19_0();
  v1[24] = swift_task_alloc();
  v22 = type metadata accessor for OSSignposter();
  v1[25] = v22;
  OUTLINED_FUNCTION_1_1(v22);
  v1[26] = v23;
  v25 = *(v24 + 64);
  v1[27] = OUTLINED_FUNCTION_11_0();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A10InvocationVSgMd, &_s7ToolKit0A10InvocationVSgMR) - 8) + 64);
  v1[28] = OUTLINED_FUNCTION_11_0();
  v27 = type metadata accessor for ToolInvocation();
  v1[29] = v27;
  OUTLINED_FUNCTION_1_1(v27);
  v1[30] = v28;
  v30 = *(v29 + 64);
  v1[31] = OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v31, v32, v33);
}

{
  v1 = v0[28];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v2);
  ToolInvocation.init(localToolId:parameterValuesByKey:)();
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v7);
  (*(v6 + 32))(v5, v8, v7);
  if (one-time initialization token for appIntentSuggestionsSignposter != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v10 = v0[26];
  v9 = v0[27];
  v11 = v0[25];
  v12 = __swift_project_value_buffer(v11, static DefaultToolClient.appIntentSuggestionsSignposter);
  (*(v10 + 16))(v9, v12, v11);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v13 = OSSignposter.logHandle.getter();
  v14 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v15 = v0[24];
    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v13, v14, v17, "fetchToolInvocationSummary", "", v16, 2u);
    OUTLINED_FUNCTION_11();
  }

  v18 = v0[23];
  v19 = v0[24];
  v20 = v0[21];
  v21 = v0[22];
  v22 = v0[7];

  (*(v21 + 16))(v18, v19, v20);
  v23 = type metadata accessor for OSSignpostIntervalState();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  v0[32] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v21 + 8))(v19, v20);
  v26 = *(v22 + 16);
  v27 = async function pointer to Task.value.getter[1];
  v28 = swift_task_alloc();
  v0[33] = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A16ExecutionSession_pMd, &_s7ToolKit0A16ExecutionSession_pMR);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v28 = v0;
  v28[1] = DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:);

  return Task.value.getter(v0 + 2, v26, v29, v30, &protocol self-conformance witness table for Error);
}

{
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  v4 = v2[33];
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[34] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = v3[3];
    v3[35] = v3[2];
    ObjectType = swift_getObjectType();
    v12 = async function pointer to dispatch thunk of ToolExecutionSession.fetchToolInvocationSummary(for:)[1];
    v13 = swift_task_alloc();
    v3[36] = v13;
    *v13 = v5;
    v13[1] = DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:);
    v14 = v3[31];
    v15 = v3[20];

    return dispatch thunk of ToolExecutionSession.fetchToolInvocationSummary(for:)(v15, v14, ObjectType, v10);
  }
}

{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v3 = *(v2 + 288);
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_8_0();

  return _swift_task_switch(v7, v8, v9);
}

{
  v5 = *(v0 + 272);
  OUTLINED_FUNCTION_3_0();

  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_13_0();
  v8(v7);
  (*(v2 + 8))(v3, v4);

  OUTLINED_FUNCTION_10();

  return v9();
}

{
  v5 = *(v0 + 280);
  swift_unknownObjectRelease();
  v6 = *(v0 + 296);
  OUTLINED_FUNCTION_3_0();

  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_13_0();
  v9(v8);
  (*(v2 + 8))(v3, v4);

  OUTLINED_FUNCTION_10();

  return v10();
}

unint64_t DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)()
{
  v128 = v0;
  v1 = v0[35];
  v2 = v0[20];
  swift_unknownObjectRelease();
  v3 = ToolInvocationSummary.formatString.getter();
  v5 = v4;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[18];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.appIntentsSuggestions);
  v122 = v0;
  v11 = *(v9 + 16);
  v12 = OUTLINED_FUNCTION_13_0();
  v13(v12);
  v14 = v0;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v19 = v0[18];
  v18 = v0[19];
  v20 = v0[17];
  v113 = v5;
  v114 = v3;
  if (v17)
  {
    v21 = v0[11];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v127 = v23;
    *v22 = 136315138;
    ToolInvocationSummary.parameterSummaries.getter();
    v24 = Dictionary.description.getter();
    v26 = v25;

    v27 = OUTLINED_FUNCTION_16_0();
    v28(v27);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v127);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_0, v15, v16, "toolInvocationSummary.parameterSummaries - %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_11();
    v14 = v122;
    OUTLINED_FUNCTION_11();
  }

  else
  {

    v30 = OUTLINED_FUNCTION_16_0();
    v31(v30);
  }

  v32 = v14[20];
  v125 = v14[16];
  v120 = v14[15];
  v33 = v14[12];
  v34 = v14[9];
  v35 = ToolInvocationSummary.parameterSummaries.getter();
  v36 = 0;
  v37 = v35 + 64;
  v121 = v35;
  v38 = -1;
  v39 = -1 << *(v35 + 32);
  if (-v39 < 64)
  {
    v38 = ~(-1 << -v39);
  }

  v40 = v38 & *(v35 + 64);
  v41 = (63 - v39) >> 6;
  v126 = (v33 + 32);
  v124 = (v33 + 88);
  v123 = enum case for ToolInvocationSummary.ParameterSummary.value(_:);
  v119 = v33;
  v111 = (v34 + 32);
  v115 = &_swiftEmptyDictionarySingleton;
  v117 = v41;
  v118 = v35 + 64;
  while (v40)
  {
    v42 = v36;
LABEL_15:
    v43 = v14[14];
    v44 = v14[15];
    v45 = v14[11];
    v46 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v47 = v46 | (v42 << 6);
    v48 = (*(v121 + 48) + 16 * v47);
    v49 = *v48;
    v50 = v48[1];
    (*(v119 + 16))(v43, *(v121 + 56) + *(v119 + 72) * v47, v45);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMd, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMR);
    v52 = *(v51 + 48);
    *v44 = v49;
    v14 = v122;
    *(v120 + 8) = v50;
    (*(v119 + 32))(&v44[v52], v43, v45);
    __swift_storeEnumTagSinglePayload(v44, 0, 1, v51);

    v37 = v118;
    v41 = v117;
LABEL_16:
    v53 = v14[16];
    outlined init with take of (key: String, value: ToolInvocationSummary.ParameterSummary)?(v14[15], v53, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetSgMd, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetSgMR);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMd, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMR);
    if (__swift_getEnumTagSinglePayload(v53, 1, v54) == 1)
    {
      v97 = v14[31];
      v98 = v14[32];
      v99 = v14[29];
      v100 = v14[30];
      v102 = v14[26];
      v101 = v14[27];
      v103 = v14;
      v104 = v14[25];
      v105 = v103[18] + 8;
      v112(v103[20], v103[17]);

      $defer #1 () in DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)();

      (*(v102 + 8))(v101, v104);
      (*(v100 + 8))(v97, v99);
      OUTLINED_FUNCTION_6_0();

      v106 = v103[1];

      return v106(v114, v113, v115);
    }

    v55 = v14[16];
    v56 = v14[13];
    v57 = v14[11];
    v58 = *v55;
    v59 = *(v125 + 8);
    (*v126)(v56, v55 + *(v54 + 48), v57);
    v60 = (*v124)(v56, v57);
    v61 = v14[13];
    v62 = v14[11];
    if (v60 == v123)
    {
      v67 = v14[10];
      v109 = v14[8];
      v68 = OUTLINED_FUNCTION_17_0();
      v69(v68, v62);
      (*v111)(v67, v61, v109);
      v108 = ToolInvocationSummary.ParameterSummary.Value.localizedLabel.getter();
      v110 = v70;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v127 = v115;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
      v107 = result;
      v74 = v115[2];
      v75 = (v73 & 1) == 0;
      v76 = v74 + v75;
      if (__OFADD__(v74, v75))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      v116 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v76))
      {
        v77 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
        v79 = v116;
        if ((v116 & 1) != (v78 & 1))
        {
          goto LABEL_33;
        }

        v80 = v77;
      }

      else
      {
        v80 = v107;
        v79 = v116;
      }

      v81 = v14[10];
      v82 = v14[8];
      if (v79)
      {
        v83 = v14[8];

        v115 = v127;
        v84 = (v127[7] + 16 * v80);
        v85 = v84[1];
        *v84 = v108;
        v84[1] = v110;

        v86 = OUTLINED_FUNCTION_17_0();
        v87(v86, v83);
      }

      else
      {
        v88 = v127;
        v127[(v80 >> 6) + 8] |= 1 << v80;
        v89 = (*(v88 + 48) + 16 * v80);
        *v89 = v58;
        v89[1] = v59;
        v90 = v88;
        v91 = (*(v88 + 56) + 16 * v80);
        *v91 = v108;
        v91[1] = v110;
        v92 = OUTLINED_FUNCTION_17_0();
        result = v93(v92);
        v94 = v90[2];
        v95 = __OFADD__(v94, 1);
        v96 = v94 + 1;
        if (v95)
        {
          goto LABEL_37;
        }

        v115 = v90;
        v90[2] = v96;
      }
    }

    else
    {

      v63 = OUTLINED_FUNCTION_17_0();
      v64(v63, v62);
    }
  }

  while (1)
  {
    v42 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v42 >= v41)
    {
      v65 = v14[15];
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMd, &_sSS3key_7ToolKit0B17InvocationSummaryV09ParameterE0O5valuetMR);
      __swift_storeEnumTagSinglePayload(v65, 1, 1, v66);
      v40 = 0;
      goto LABEL_16;
    }

    v40 = *(v37 + 8 * v42);
    ++v36;
    if (v40)
    {
      v36 = v42;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_33:

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_7ToolKit10TypedValueO5valuetMd, &_sSS3key_7ToolKit10TypedValueO5valuetMR);
  v2 = *(*(v46 - 8) + 64);
  v3 = __chkstk_darwin(v46);
  v45 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v44 = &v41 - v5;
  v47 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7ToolKit25TypedValueAsyncResolvable_pGMd, &_ss18_DictionaryStorageCySS7ToolKit25TypedValueAsyncResolvable_pGMR);
    v6 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v6 = &_swiftEmptyDictionarySingleton;
  }

  v7 = v47 + 64;
  v8 = 1 << *(v47 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v47 + 64);
  v11 = (v8 + 63) >> 6;
  v41 = v6 + 8;

  v13 = 0;
  v43 = v6;
  for (i = v7; v10; v7 = i)
  {
    v14 = v13;
LABEL_11:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(v47 + 56);
    v18 = (*(v47 + 48) + 16 * v16);
    v20 = *v18;
    v48 = v18[1];
    v19 = v48;
    v21 = type metadata accessor for TypedValue();
    v22 = *(v21 - 8);
    v23 = v17 + *(v22 + 72) * v16;
    v24 = v46;
    v25 = v44;
    (*(v22 + 16))(&v44[*(v46 + 48)], v23, v21);
    *v25 = v20;
    v25[1] = v19;
    v26 = v25;
    v27 = v45;
    outlined init with take of (key: String, value: ToolInvocationSummary.ParameterSummary)?(v26, v45, &_sSS3key_7ToolKit10TypedValueO5valuetMd, &_sSS3key_7ToolKit10TypedValueO5valuetMR);
    v28 = *(v24 + 48);
    v29 = *v27;
    v30 = v27[1];
    v50 = v21;
    v51 = &protocol witness table for TypedValue;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v49);
    (*(v22 + 32))(boxed_opaque_existential_1, v27 + v28, v21);
    outlined init with take of SiriSuggestions.DisplayRepresentable(&v49, v53);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v53, v54);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v54, &v52);

    v6 = v43;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
    v32 = result;
    if (v33)
    {
      v34 = (v6[6] + 16 * result);
      v35 = v34[1];
      *v34 = v29;
      v34[1] = v30;

      v36 = (v6[7] + 40 * v32);
      __swift_destroy_boxed_opaque_existential_1(v36);
      result = outlined init with take of SiriSuggestions.DisplayRepresentable(&v52, v36);
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_20;
      }

      *(v41 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v37 = (v6[6] + 16 * result);
      *v37 = v29;
      v37[1] = v30;
      result = outlined init with take of SiriSuggestions.DisplayRepresentable(&v52, v6[7] + 40 * result);
      v38 = v6[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_21;
      }

      v6[2] = v40;
    }

    v13 = v14;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t outlined destroy of ToolInvocation?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit0A10InvocationVSgMd, &_s7ToolKit0A10InvocationVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSE_pGMd, &_ss18_DictionaryStorageCySSSE_pGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = a1[8];
  OUTLINED_FUNCTION_5_0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  while (v6)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (a1[6] + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (a1[7] + v13);
    v18 = *v17;
    v19 = v17[1];
    v30 = &type metadata for String;
    v31 = &protocol witness table for String;
    *&v29 = v18;
    *(&v29 + 1) = v19;
    outlined init with take of SiriSuggestions.DisplayRepresentable(&v29, v33);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v33, v34);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v34, &v32);

    result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
    v20 = result;
    if (v21)
    {
      v22 = (v2[6] + 16 * result);
      v23 = v22[1];
      *v22 = v16;
      v22[1] = v15;

      v24 = (v2[7] + 40 * v20);
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = outlined init with take of SiriSuggestions.DisplayRepresentable(&v32, v24);
      v10 = v11;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v25 = (v2[6] + 16 * result);
      *v25 = v16;
      v25[1] = v15;
      result = outlined init with take of SiriSuggestions.DisplayRepresentable(&v32, v2[7] + 40 * result);
      v26 = v2[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_18;
      }

      v2[2] = v28;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v2;
    }

    v6 = a1[v11 + 8];
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = a1[8];
  OUTLINED_FUNCTION_5_0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  while (v6)
  {
    v11 = v10;
LABEL_10:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v11 << 10) | (16 * v12);
    v14 = (a1[6] + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (a1[7] + v13);
    v27 = *v17;
    v28 = v17[1];

    swift_dynamicCast();
    outlined init with take of Any(&v29, v31);
    outlined init with take of Any(v31, v32);
    outlined init with take of Any(v32, &v30);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
    v18 = result;
    if (v19)
    {
      v20 = (v2[6] + 16 * result);
      v21 = v20[1];
      *v20 = v16;
      v20[1] = v15;

      v22 = (v2[7] + 32 * v18);
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = outlined init with take of Any(&v30, v22);
      v10 = v11;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_17;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v2[6] + 16 * result);
      *v23 = v16;
      v23[1] = v15;
      result = outlined init with take of Any(&v30, (v2[7] + 32 * result));
      v24 = v2[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v2[2] = v26;
      v10 = v11;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return v2;
    }

    v6 = a1[v11 + 8];
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t $defer #1 () in DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)()
{
  v0 = type metadata accessor for OSSignpostError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v1 + 88))(v4, v0) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_0, v10, v11, v14, "fetchToolInvocationSummary", v12, v13, 2u);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t DefaultToolClient.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DefaultToolClient.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t DefaultToolClient.__allocating_init()()
{
  v0 = swift_allocObject();
  DefaultToolClient.init()();
  return v0;
}

uint64_t DefaultToolClient.init()()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v7 - v2;
  v4 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v0 + 16) = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC7ToolKit0E16ExecutionSession_p_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask, v5);
  return v0;
}

uint64_t protocol witness for ToolClient.fetchParamSummary(toolId:parameterValuesByKey:) in conformance DefaultToolClient()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for ToolClient.fetchParamSummary(toolId:parameterValuesByKey:) in conformance DefaultToolClient;

  return DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)();
}

{
  OUTLINED_FUNCTION_15_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_13();
  v9 = *(v8 + 16);
  v10 = *v1;
  OUTLINED_FUNCTION_7();
  *v11 = v10;

  v15 = *(v10 + 8);
  if (!v0)
  {
    v12 = v7;
    v13 = v5;
    v14 = v3;
  }

  return v15(v12, v13, v14);
}

uint64_t closure #1 in _globalStringTablePointerOfStaticString(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  type metadata accessor for Signal();
  lazy protocol witness table accessor for type Signal and conformance Signal(&lazy protocol witness table cache variable for type Signal and conformance Signal);
  v4 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v4);
}

uint64_t sub_B04C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _s25SiriLinkSuggestionsPlugin17DefaultToolClientC20toolSessionSetupTask33_4798BCE20D0F3642FE2DAC187424D220LLScTy0F3Kit0f9ExecutionI0_ps5Error_pGvpfiAfG_pyYaKcfU_TA_0()
{
  OUTLINED_FUNCTION_15_0();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator;

  return closure #1 in variable initialization expression of DefaultToolClient.toolSessionSetupTask();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ToolParamSummary(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ToolParamSummary(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolParamSummary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolParamSummary.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0xB358);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    type metadata accessor for Signal();
    v6 = *(*(v2 + 48) + 8 * i);
    lazy protocol witness table accessor for type Signal and conformance Signal(&lazy protocol witness table cache variable for type Signal and conformance Signal);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }
  }

  return i;
}

{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {

      return i;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Signal and conformance Signal(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Signal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with take of (key: String, value: ToolInvocationSummary.ParameterSummary)?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 32);
  v6 = OUTLINED_FUNCTION_13_0();
  v7(v6);
  return a2;
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

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_0()
{
  v3 = v0[31];
  v2 = v0[32];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[27];
  v7 = v0[28];
  v8 = v0[25];
  v9 = v0[26];
  v10 = v0[24];
  v12 = v0[23];
  v13 = v0[20];
  v14 = v0[19];
  v15 = v0[16];
  v16 = v0[15];
  v17 = v0[14];
  v18 = v0[13];
  v19 = v0[10];

  return $defer #1 () in DefaultToolClient.fetchParamSummary(toolId:parameterValuesByKey:)();
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_0()
{
  result = v0[31];
  v2 = v0[27];
  v3 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[19];
  v6 = v0[20];
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[10];
  return result;
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_19_0()
{

  return swift_task_alloc();
}

uint64_t LinkInvocationActionProvider.getInvocationAction(dialogProperties:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = dispatch thunk of DialogProperties.getParameters()();
  specialized Dictionary.subscript.getter(0xD00000000000001FLL, 0x80000000000424E0, v5, v24);

  if (v25)
  {
    if (swift_dynamicCast())
    {
      v26[0] = v23[0];
      v26[1] = v23[1];
      v26[2] = v23[2];
      LinkInvocationActionProvider.invocationPayload(for:)(v26);
      v18 = type metadata accessor for DirectInvocationAction();
      v19 = *(v18 + 48);
      v20 = *(v18 + 52);
      swift_allocObject();
      v21 = DirectInvocationAction.init(siriKitIdentifier:payload:suggestionId:)();
      a2[3] = v18;
      a2[4] = lazy protocol witness table accessor for type UtteranceAction and conformance UtteranceAction(&lazy protocol witness table cache variable for type DirectInvocationAction and conformance DirectInvocationAction, &type metadata accessor for DirectInvocationAction);
      result = outlined destroy of LinkSuggestedAction(v26);
      goto LABEL_11;
    }
  }

  else
  {
    outlined destroy of Any?(v24);
  }

  if (one-time initialization token for linkSuggestions != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.linkSuggestions);
  outlined init with copy of LinkClient(a1, v26);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136315138;
    outlined init with copy of LinkClient(v26, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit16DialogProperties_pMd, &_s18SiriSuggestionsKit16DialogProperties_pMR);
    v11 = String.init<A>(describing:)();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1(v26);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v24);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_0, v7, v8, "LinkInvocationActionProvider Link action retrieval failed: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v15 = type metadata accessor for UtteranceAction();
  v21 = UtteranceAction.__allocating_init()();
  a2[3] = v15;
  OUTLINED_FUNCTION_0_2();
  result = lazy protocol witness table accessor for type UtteranceAction and conformance UtteranceAction(v16, v17);
  a2[4] = result;
LABEL_11:
  *a2 = v21;
  return result;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    outlined init with copy of LinkClient(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t specialized Dictionary.subscript.getter(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 2;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1 & 1);
  if (v4)
  {
    return *(*(a2 + 56) + v3);
  }

  else
  {
    return 2;
  }
}

uint64_t LinkInvocationActionProvider.invocationPayload(for:)(__int128 *a1)
{
  v2 = objc_opt_self();
  v3 = *(a1 + 3);
  v22[0] = 0;
  v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v22];
  v5 = v22[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = *(a1 + 4);
    v22[0] = 0;
    v10 = [v2 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v22];
    v11 = v22[0];
    if (v10)
    {
      v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Se_SEptGMd, ".;");
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3FB80;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x8000000000042590;
      v24 = *(a1 + 8);
      v23 = *a1;
      v16 = v23;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = &protocol witness table for String;
      *(inited + 48) = v16;
      *(inited + 88) = &protocol witness table for String;
      strcpy((inited + 96), "archivedAction");
      *(inited + 111) = -18;
      *(inited + 136) = &type metadata for Data;
      v17 = lazy protocol witness table accessor for type Data and conformance Data();
      *(inited + 144) = v17;
      v18 = lazy protocol witness table accessor for type Data and conformance Data();
      *(inited + 112) = v6;
      *(inited + 120) = v8;
      *(inited + 152) = v18;
      strcpy((inited + 160), "systemProtocol");
      *(inited + 200) = &type metadata for Data;
      *(inited + 208) = v17;
      *(inited + 216) = v18;
      *(inited + 175) = -18;
      *(inited + 176) = v12;
      *(inited + 184) = v14;
      outlined init with copy of LinkSuggestedActionsRequest(&v23, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
      return Dictionary.init(dictionaryLiteral:)();
    }

    else
    {
      v21 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return outlined consume of Data._Representation(v6, v8);
    }
  }

  else
  {
    v20 = v5;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t lazy protocol witness table accessor for type UtteranceAction and conformance UtteranceAction(unint64_t *a1, void (*a2)(uint64_t))
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

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo25LNActionParameterMetadataCG_AG_18SiriSuggestionsKit0gH0O20DisplayRepresentable_pSgts5NeverOTg5(void (*a1)(_OWORD *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v20 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v8 = 0;
    v9 = v20;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v11 = *(a3 + 8 * v8 + 32);
      }

      v4 = v11;
      v18 = v11;
      a1(v19, &v18);
      if (v5)
      {
        goto LABEL_20;
      }

      v5 = 0;

      v20 = v9;
      v13 = v9[2];
      v12 = v9[3];
      v4 = (v13 + 1);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v9 = v20;
      }

      v9[2] = v4;
      v14 = &v9[6 * v13];
      v15 = v19[0];
      v16 = v19[2];
      v14[3] = v19[1];
      v14[4] = v16;
      v14[2] = v15;
      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void *LinkClientResolver.getMetaData(for:for:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 16))(v23, a4, a5);
  v8 = v24;
  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_3EFC0;
  v22 = a1;
  v11 = [a1 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v15 = v26;
  v16 = (*(v9 + 40))(a2, a3, v10, v8, v9);

  if (!v15)
  {
    v17 = [v22 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v14 = specialized Dictionary.subscript.getter(v18, v20, v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v14;
}

uint64_t LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[6] = a7;
  v8[7] = v7;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return OUTLINED_FUNCTION_6();
}

uint64_t LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:)()
{
  v1 = [*(v0 + 16) identifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 64) = v2;
  *(v0 + 72) = v4;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);

  return LinkClientResolver.getParameters(for:withParameters:andSalientEntities:)(v11, v10, v8, v9, v6);
}

{
  v27 = v0;
  if (v0[11])
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v1 = v0[9];
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.appIntentsSuggestions);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = v0[8];
      v5 = v0[9];
      v7 = OUTLINED_FUNCTION_46();
      v26 = swift_slowAlloc();
      *v7 = 136315394;
      v8 = Dictionary.description.getter();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v26);

      *(v7 + 4) = v10;
      *(v7 + 12) = 2080;
      *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v26);
      _os_log_impl(&dword_0, v3, v4, "Got parameters: %s for %s", v7, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    v11 = v0[11];
    v12 = v0[8];
    v13 = v0[9];
  }

  else
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v14 = v0[9];
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.appIntentsSuggestions);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[9];
    if (v18)
    {
      v20 = v0[8];
      v21 = swift_slowAlloc();
      v22 = OUTLINED_FUNCTION_47();
      v26 = v22;
      *v21 = 136315138;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v26);

      *(v21 + 4) = v23;
      _os_log_impl(&dword_0, v16, v17, "Not all mandatory parameters for: %s could be determined", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_11();
    }

    else
    {
    }

    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

  v24 = v0[1];

  return v24(v12, v13, v11);
}

{
  v18 = v0;
  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v1 = v0[12];
  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.appIntentsSuggestions);

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[12];
  v8 = v0[9];
  if (v6)
  {
    v9 = v0[8];
    v10 = OUTLINED_FUNCTION_46();
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_47();
    v17 = v12;
    *v10 = 138412546;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2080;
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v17);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_0, v4, v5, "Unable to fetch parameter info: %@ for: %s", v10, 0x16u);
    outlined destroy of CoreSignalTypes?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_11();
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  else
  {
  }

  v15 = v0[1];

  return v15(0, 0, 0);
}

uint64_t LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:);
  }

  else
  {
    v5 = LinkClientResolver.getAppIntentAction(from:for:withParameters:andSalientEntities:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t LinkClientResolver.getParameters(for:withParameters:andSalientEntities:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[42] = a5;
  v6[43] = v5;
  v6[40] = a3;
  v6[41] = a4;
  v6[38] = a1;
  v6[39] = a2;
  return OUTLINED_FUNCTION_6();
}

uint64_t LinkClientResolver.getParameters(for:withParameters:andSalientEntities:)()
{
  v86 = v0;
  v1 = *(v0 + 344);
  v75 = *(v0 + 328);
  v78 = *(v0 + 312);
  v2 = [*(v0 + 304) parameters];
  type metadata accessor for LNActionParameterMetadata();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = swift_task_alloc();
  *(v4 + 16) = v75;
  *(v4 + 32) = v1;
  *(v4 + 40) = v78;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySo25LNActionParameterMetadataCG_AG_18SiriSuggestionsKit0gH0O20DisplayRepresentable_pSgts5NeverOTg5(partial apply for closure #1 in LinkClientResolver.getParameters(for:withParameters:andSalientEntities:), v4, v3);
  v6 = v5;

  v7 = 0;
  v8 = v6 + 32;
  v9 = &_swiftEmptyArrayStorage;
  v79 = v6;
  v10 = *(v6 + 16);
  v11 = v6 + 32;
  v76 = v6 + 32;
  while (1)
  {
    if (v10 == v7)
    {
      if (v9[2])
      {

        if (one-time initialization token for appIntentsSuggestions != -1)
        {
          goto LABEL_54;
        }

        goto LABEL_15;
      }

      if (!v10)
      {

        v49 = &_swiftEmptyArrayStorage;
LABEL_46:
        OUTLINED_FUNCTION_35();
        v67 = _sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_25SiriLinkSuggestionsPlugin15ActionParameterVSaySS_AGtGTt0g5Tm(v49, v64, v65, v66);
        goto LABEL_50;
      }

      v49 = &_swiftEmptyArrayStorage;
      while (1)
      {
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v8, v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 88, v0 + 224, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
        if (*(v0 + 248))
        {
          outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 224), v0 + 264);
          outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 80, v0 + 128, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
          v50 = outlined bridged method (ob) of @objc LNActionParameterMetadata.name.getter(*(v0 + 128));
          if (v51)
          {
            *(v0 + 16) = v50;
            *(v0 + 24) = v51;
            outlined init with take of SiriSuggestions.DisplayRepresentable((v0 + 264), v0 + 32);
            v52 = *(v0 + 96);
            *(v0 + 176) = *(v0 + 80);
            *(v0 + 192) = v52;
            *(v0 + 208) = *(v0 + 112);
            *(v0 + 72) = *(v0 + 176);
            outlined destroy of CoreSignalTypes?(v0 + 184, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1((v0 + 264));
            outlined destroy of CoreSignalTypes?(v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
            *(v0 + 16) = 0u;
            *(v0 + 32) = 0u;
            *(v0 + 48) = 0u;
            *(v0 + 64) = 0u;
          }

          outlined destroy of CoreSignalTypes?(v0 + 136, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
          if (*(v0 + 24))
          {
            v53 = *(v0 + 32);
            v82 = *(v0 + 16);
            v83 = v53;
            v54 = *(v0 + 64);
            v84 = *(v0 + 48);
            v85 = v54;
            v55 = v8;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v61 = v49[2];
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v49 = v62;
            }

            v56 = v49[2];
            if (v56 >= v49[3] >> 1)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
              v49 = v63;
            }

            v49[2] = v56 + 1;
            v57 = &v49[8 * v56];
            v58 = v82;
            v59 = v83;
            v60 = v85;
            v57[4] = v84;
            v57[5] = v60;
            v57[2] = v58;
            v57[3] = v59;
            v8 = v55;
            goto LABEL_42;
          }
        }

        else
        {
          outlined destroy of CoreSignalTypes?(v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
          *(v0 + 16) = 0u;
          *(v0 + 32) = 0u;
          *(v0 + 48) = 0u;
          *(v0 + 64) = 0u;
        }

        outlined destroy of CoreSignalTypes?(v0 + 16, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtSgMd, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtSgMR);
LABEL_42:
        v8 += 48;
        if (!--v10)
        {

          goto LABEL_46;
        }
      }
    }

    if (v7 >= *(v79 + 16))
    {
      break;
    }

    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v11, v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 16, v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    v12 = *(v0 + 80);
    v13 = [v12 isOptional];

    outlined destroy of CoreSignalTypes?(v0 + 88, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
    if ((v13 & 1) != 0 || *(v0 + 48))
    {
      outlined destroy of CoreSignalTypes?(v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
    }

    else
    {
      v14 = *(v0 + 32);
      v82 = *(v0 + 16);
      v83 = v14;
      v84 = *(v0 + 48);
      v81 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1);
        v9 = v81;
      }

      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        v20 = OUTLINED_FUNCTION_40(v15);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20, v21, v22);
        v9 = v81;
      }

      v9[2] = v16 + 1;
      v17 = &v9[6 * v16];
      v18 = v82;
      v19 = v84;
      *(v17 + 3) = v83;
      *(v17 + 4) = v19;
      *(v17 + 2) = v18;
      v8 = v76;
    }

    v11 += 48;
    ++v7;
  }

  __break(1u);
LABEL_54:
  OUTLINED_FUNCTION_4_0();
LABEL_15:
  v23 = *(v0 + 304);
  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.appIntentsSuggestions);
  v25 = v23;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 304);
    v29 = OUTLINED_FUNCTION_46();
    v80 = swift_slowAlloc();
    *v29 = 136315394;
    v30 = [v28 identifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v80);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = v9[2];
    if (v35)
    {
      v74 = v29;
      v77 = v26;
      v81 = &_swiftEmptyArrayStorage;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35, 0);
      v36 = (v9 + 4);
      v37 = v81;
      do
      {
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v36, v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        *&v82 = 0;
        *(&v82 + 1) = 0xE000000000000000;
        outlined init with copy of (LNActionParameterMetadata, SiriSuggestions.DisplayRepresentable?)(v0 + 16, v0 + 80, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        v38 = outlined bridged method (ob) of @objc LNActionParameterMetadata.name.getter(*(v0 + 80));
        if (v39)
        {
          v40 = v38;
        }

        else
        {
          v40 = 0x656D616E5F6F6E3CLL;
        }

        if (v39)
        {
          v41 = v39;
        }

        else
        {
          v41 = 0xE90000000000003ELL;
        }

        outlined destroy of CoreSignalTypes?(v0 + 88, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
        v42._countAndFlagsBits = v40;
        v42._object = v41;
        String.append(_:)(v42);

        v43 = v82;
        outlined destroy of CoreSignalTypes?(v0 + 16, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMd, &_sSo25LNActionParameterMetadataC_18SiriSuggestionsKit0dE0O20DisplayRepresentable_pSgtMR);
        v81 = v37;
        v45 = v37[2];
        v44 = v37[3];
        if (v45 >= v44 >> 1)
        {
          v46 = OUTLINED_FUNCTION_40(v44);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v46, v47, v48);
          v37 = v81;
        }

        v37[2] = v45 + 1;
        *&v37[2 * v45 + 4] = v43;
        v36 += 48;
        --v35;
      }

      while (v35);

      v26 = v77;
      v29 = v74;
    }

    else
    {

      v37 = &_swiftEmptyArrayStorage;
    }

    *(v0 + 16) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v68 = BidirectionalCollection<>.joined(separator:)();
    v70 = v69;

    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v80);

    *(v29 + 14) = v71;
    _os_log_impl(&dword_0, v26, v27, "We have not been able to set all mandatory parameters for action %s. Missing parameters:\n %s", v29, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  else
  {
  }

  v67 = 0;
LABEL_50:
  v72 = *(v0 + 8);

  return v72(v67);
}

void closure #1 in LinkClientResolver.getParameters(for:withParameters:andSalientEntities:)(void **a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, void **a4@<X8>)
{
  v5 = *a1;
  *a4 = *a1;
  LinkClientResolver.getParameter(for:withParameters:andSalientEntities:)(v5, a2, a3, (a4 + 1));
}

void LinkClientResolver.getParameter(for:withParameters:andSalientEntities:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22IntelligenceFlowShared16RetrievedContextVSgMd, &_s22IntelligenceFlowShared16RetrievedContextVSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v73 - v10;
  v12 = type metadata accessor for RetrievedContext();
  v13 = OUTLINED_FUNCTION_14_0(v12);
  v83 = v14;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v13);
  v81 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v73 - v20;
  __chkstk_darwin(v19);
  v23 = &v73 - v22;
  v24 = [a1 name];
  v82 = v21;
  if (v24)
  {
    v25 = v24;
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v84 = 0;
    v27 = 0;
  }

  v85 = [a1 valueType];
  if (!v27)
  {
    if (one-time initialization token for appIntentsSuggestions != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.appIntentsSuggestions);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_23;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "Unknown parameter name", v32, 2u);
    goto LABEL_21;
  }

  v28 = v84;
  specialized Dictionary.subscript.getter(v84, v27, a2, &v86);
  if (v87)
  {

    outlined init with take of SiriSuggestions.DisplayRepresentable(&v86, v88);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v88, a4);
    return;
  }

  outlined destroy of CoreSignalTypes?(&v86, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMd, &_s18SiriSuggestionsKit0aB0O20DisplayRepresentable_pSgMR);
  v33 = [v85 description];
  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if (one-time initialization token for appIntentsSuggestions != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v36 = type metadata accessor for Logger();
  v37 = __swift_project_value_buffer(v36, static Logger.appIntentsSuggestions);

  v78 = v37;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();

  LODWORD(v76) = v39;
  v40 = os_log_type_enabled(v38, v39);
  v79 = a3;
  if (v40)
  {
    v41 = OUTLINED_FUNCTION_47();
    v77 = v35;
    v42 = v41;
    v74 = swift_slowAlloc();
    *&v88[0] = v74;
    *v42 = 136315650;
    *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v88);
    v75 = v12;
    *(v42 + 12) = 2080;
    v43 = v80;
    *(v42 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v77, v88);
    *(v42 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay22IntelligenceFlowShared16RetrievedContextVGMd, &_sSay22IntelligenceFlowShared16RetrievedContextVGMR);
    v44 = Dictionary.Keys.description.getter();
    v46 = a4;
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v88);
    v12 = v75;

    *(v42 + 24) = v47;
    a4 = v46;
    v28 = v84;
    _os_log_impl(&dword_0, v38, v76, "determining parater - %s paramType - %s from andSalientEntities Keys - %s", v42, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    v35 = v77;
    OUTLINED_FUNCTION_11();
  }

  else
  {

    v43 = v80;
  }

  v48 = specialized Dictionary.subscript.getter(v43, v35, v79);
  if (!v48)
  {
LABEL_19:

    v30 = Logger.logObject.getter();
    v49 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v30, v49))
    {

      goto LABEL_23;
    }

    v50 = OUTLINED_FUNCTION_46();
    *&v88[0] = swift_slowAlloc();
    *v50 = 136315394;
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, v88);
    v52 = v35;
    v53 = v51;

    *(v50 + 4) = v53;
    *(v50 + 12) = 2080;
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v52, v88);

    *(v50 + 14) = v54;
    _os_log_impl(&dword_0, v30, v49, "No parameter available to set for %s, of type: %s", v50, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
LABEL_21:
    OUTLINED_FUNCTION_11();
LABEL_23:

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  *&v88[0] = v48;
  specialized MutableCollection<>.shuffle<A>(using:)();
  specialized Collection.first.getter(*&v88[0], v11);

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of CoreSignalTypes?(v11, &_s22IntelligenceFlowShared16RetrievedContextVSgMd, &_s22IntelligenceFlowShared16RetrievedContextVSgMR);
    goto LABEL_19;
  }

  v79 = a4;
  v55 = v11;
  v56 = v83;
  v76 = *(v83 + 32);
  v76(v23, v55, v12);
  v57 = *(v56 + 16);
  v58 = v82;
  v77 = v23;
  v75 = v57;
  (v57)(v82);

  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = v56;
    v62 = OUTLINED_FUNCTION_47();
    v78 = swift_slowAlloc();
    *&v88[0] = v78;
    *v62 = 136315650;
    v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v27, v88);
    LODWORD(v84) = v60;
    v64 = v12;
    v65 = v63;

    *(v62 + 4) = v65;
    *(v62 + 12) = 2080;
    v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v35, v88);

    *(v62 + 14) = v66;
    *(v62 + 22) = 2080;
    v75(v81, v58, v64);
    v67 = String.init<A>(describing:)();
    v69 = v68;
    (*(v61 + 8))(v58, v64);
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, v88);

    *(v62 + 24) = v70;
    v12 = v64;
    _os_log_impl(&dword_0, v59, v84, "Setting parameter %s, of type: %s to %s using salient entities", v62, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  else
  {

    (*(v56 + 8))(v58, v12);
  }

  v71 = v79;
  v79[3] = v12;
  v71[4] = _s18SiriSuggestionsKit6SignalCACSHAAWlTm_0(&lazy protocol witness table cache variable for type RetrievedContext and conformance RetrievedContext, &type metadata accessor for RetrievedContext);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  v76(boxed_opaque_existential_1, v77, v12);
}

void *_sSD20uniqueKeysWithValuesSDyxq_Gqd__n_tcSTRd__x_q_t7ElementRtd__lufCSS_25SiriLinkSuggestionsPlugin15ActionParameterVSaySS_AGtGTt0g5Tm(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, void **))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = &_swiftEmptyDictionarySingleton;
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t RetrievedContext.getDisplay(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit10TypedValueOSgMd, &_s7ToolKit10TypedValueOSgMR);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7ToolKit21DisplayRepresentationVSgMd, _s7ToolKit21DisplayRepresentationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  RetrievedContext.typedValue.getter();
  v8 = type metadata accessor for TypedValue();
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
  {
    v9 = &_s7ToolKit10TypedValueOSgMd;
    v10 = &_s7ToolKit10TypedValueOSgMR;
    v11 = v3;
  }

  else
  {
    TypedValue.displayRepresentation.getter();
    OUTLINED_FUNCTION_15(v8);
    (*(v12 + 8))(v3, v8);
    v13 = type metadata accessor for DisplayRepresentation();
    if (__swift_getEnumTagSinglePayload(v7, 1, v13) != 1)
    {
      v14 = DisplayRepresentation.title.getter();
      OUTLINED_FUNCTION_15(v13);
      (*(v15 + 8))(v7, v13);
      return v14;
    }

    v9 = &_s7ToolKit21DisplayRepresentationVSgMd;
    v10 = _s7ToolKit21DisplayRepresentationVSgMR;
    v11 = v7;
  }

  outlined destroy of CoreSignalTypes?(v11, v9, v10);
  return 0;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_26();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_1(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
      v9 = OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_20_0(v9);
      OUTLINED_FUNCTION_25(v10 / 16);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v3 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v3 + 4, (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23();
  if (!v7)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_25SiriLinkSuggestionsPlugin15ActionParameterVtGMd, &_ss23_ContiguousArrayStorageCySS_25SiriLinkSuggestionsPlugin15ActionParameterVtGMR);
      v8 = swift_allocObject();
      OUTLINED_FUNCTION_20_0(v8);
      OUTLINED_FUNCTION_25(v9 / 64);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtMd, &_sSS_25SiriLinkSuggestionsPlugin15ActionParameterVtMR);
    OUTLINED_FUNCTION_21();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23();
  if (!v6)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v8 = OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_20_0(v8);
      OUTLINED_FUNCTION_25(v9 / 16);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23();
  if (!v6)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Say22IntelligenceFlowShared16RetrievedContextVGtGMd, &_ss23_ContiguousArrayStorageCySS_Say22IntelligenceFlowShared16RetrievedContextVGtGMR);
      v8 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_7_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_Say22IntelligenceFlowShared16RetrievedContextVGtMd, &_sSS_Say22IntelligenceFlowShared16RetrievedContextVGtMR);
    OUTLINED_FUNCTION_21();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23();
  if (!v6)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMd, &_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin16AppIntentDetailsVGMR);
      v8 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_7_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23();
  if (!v6)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin0E15SuggestedActionVGMd, &_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin0E15SuggestedActionVGMR);
      v8 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_7_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23();
  if (!v6)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySo14LNAutoShortcutCGtGMd, &_ss23_ContiguousArrayStorageCySS_SaySo14LNAutoShortcutCGtGMR);
      v8 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_7_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySo14LNAutoShortcutCGtMd, &_sSS_SaySo14LNAutoShortcutCGtMR);
    OUTLINED_FUNCTION_21();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23();
  if (!v6)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit6SignalC_SayAC31CandidateSuggestionConfigurator_pGtGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit6SignalC_SayAC31CandidateSuggestionConfigurator_pGtGMR);
      v8 = OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_20_0(v8);
      OUTLINED_FUNCTION_25(v9 / 16);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit6SignalC_SayAA31CandidateSuggestionConfigurator_pGtMd, &_s18SiriSuggestionsKit6SignalC_SayAA31CandidateSuggestionConfigurator_pGtMR);
    OUTLINED_FUNCTION_21();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23();
  if (!v6)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMd, &_ss23_ContiguousArrayStorageCy18SiriSuggestionsKit15OwnerDefinition_pGMR);
      v8 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_7_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s18SiriSuggestionsKit15OwnerDefinition_pMd, &_s18SiriSuggestionsKit15OwnerDefinition_pMR);
    OUTLINED_FUNCTION_21();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23();
  if (!v6)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_26();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_1();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_11_1(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseVGMd, &_ss23_ContiguousArrayStorageCy25SiriLinkSuggestionsPlugin013AutoShortcutsF22OwnerDefinitionFactoryC14ResolvedPhraseVGMR);
      v8 = OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_7_0(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_10_0();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_22();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_23();
  if (!v6)
  {
    OUTLINED_FUNCTION_8_1();
    goto LABEL_7;
  }

  __break(1u);
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC22IntelligenceFlowShared16RetrievedContextV_Tt1g5, &type metadata accessor for RetrievedContext, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC18SiriSuggestionsKit19VersionedInvocationV_Tt1g5, &type metadata accessor for VersionedInvocation, specialized UnsafeMutablePointer.moveInitialize(from:count:));
}

void specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_9_1();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_23();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_8_1();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

unint64_t type metadata accessor for LNActionParameterMetadata()
{
  result = lazy cache variable for type metadata for LNActionParameterMetadata;
  if (!lazy cache variable for type metadata for LNActionParameterMetadata)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNActionParameterMetadata);
  }

  return result;
}

void partial apply for closure #1 in LinkClientResolver.getParameters(for:withParameters:andSalientEntities:)(void **a1@<X0>, void **a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  closure #1 in LinkClientResolver.getParameters(for:withParameters:andSalientEntities:)(a1, *(v2 + 40), *(v2 + 48), a2);
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1)
{
  OUTLINED_FUNCTION_16_1(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMd, &_ss18_DictionaryStorageCy18SiriSuggestionsKit6SignalCSayAC31CandidateSuggestionConfigurator_pGGMR);
  OUTLINED_FUNCTION_37();
  v39 = v2;
  v4 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v3 + 16))
  {
LABEL_29:

LABEL_30:
    *v1 = v4;
    return;
  }

  v37 = v1;
  v38 = v3;
  v5 = 0;
  v6 = v3;
  OUTLINED_FUNCTION_0_3();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v12 = v4 + 8;
  if (!v9)
  {
LABEL_4:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v11)
      {
        break;
      }

      ++v14;
      if (*(v6 + 8 * v5))
      {
        OUTLINED_FUNCTION_12_0();
        v40 = v16 & v15;
        goto LABEL_9;
      }
    }

    if ((v39 & 1) == 0)
    {

      v1 = v37;
      goto LABEL_30;
    }

    v31 = *(v3 + 32);
    OUTLINED_FUNCTION_15_1();
    v1 = v37;
    if (v33 != v34)
    {
      OUTLINED_FUNCTION_18_0(v32);
    }

    else
    {
      v35 = OUTLINED_FUNCTION_14_1();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v35, v36, v6);
    }

    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v9));
    v40 = (v9 - 1) & v9;
LABEL_9:
    v17 = v13 | (v5 << 6);
    v18 = *(*(v3 + 48) + 8 * v17);
    v19 = *(*(v3 + 56) + 8 * v17);
    if ((v39 & 1) == 0)
    {
    }

    v20 = v4[5];
    type metadata accessor for Signal();
    _s18SiriSuggestionsKit6SignalCACSHAAWlTm_0(&lazy protocol witness table cache variable for type Signal and conformance Signal, &type metadata accessor for Signal);
    v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
    OUTLINED_FUNCTION_2_0(v21);
    v23 = v12[v22];
    OUTLINED_FUNCTION_32();
    if (v24)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_21:
    OUTLINED_FUNCTION_3_1();
    *(v12 + v28) |= v29;
    *(v4[6] + 8 * v30) = v18;
    *(v4[7] + 8 * v30) = v19;
    OUTLINED_FUNCTION_19_1();
    v3 = v38;
    v9 = v40;
    if (!v40)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v24)
    {
      if (v26)
      {
        break;
      }
    }

    if (v25 == v27)
    {
      v25 = 0;
    }

    if (v12[v25] != -1)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

{
  OUTLINED_FUNCTION_16_1(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  OUTLINED_FUNCTION_37();
  v35 = v2;
  v5 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v4 + 16))
  {
LABEL_29:

    *v1 = v5;
    return;
  }

  v34 = v4;
  v6 = 0;
  v7 = v4;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_44();
  if (!v2)
  {
LABEL_4:
    v9 = v6;
    while (1)
    {
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v7 + 8 * v6))
      {
        OUTLINED_FUNCTION_12_0();
        v2 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v35)
    {
      v28 = *(v4 + 32);
      OUTLINED_FUNCTION_15_1();
      if (v30 != v31)
      {
        OUTLINED_FUNCTION_18_0(v29);
      }

      else
      {
        v32 = OUTLINED_FUNCTION_14_1();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v32, v33, v7);
      }

      *(v4 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_27();
LABEL_9:
    OUTLINED_FUNCTION_43(v8);
    v14 = (v13 + 16 * v12);
    v15 = v14[1];
    v36 = *v14;
    if ((v35 & 1) == 0)
    {
    }

    v16 = *(v5 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();
    OUTLINED_FUNCTION_2_0(v17);
    v19 = *(v3 + 8 * v18);
    OUTLINED_FUNCTION_32();
    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_21:
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_34(v24);
    v27 = (v26 + 16 * v25);
    *v27 = v36;
    v27[1] = v15;
    OUTLINED_FUNCTION_19_1();
    v4 = v34;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v20)
    {
      if (v22)
      {
        break;
      }
    }

    if (v21 == v23)
    {
      v21 = 0;
    }

    if (*(v3 + 8 * v21) != -1)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

{
  OUTLINED_FUNCTION_17_1(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo16LNActionMetadataCGMd, &_ss18_DictionaryStorageCySSSo16LNActionMetadataCGMR);
  OUTLINED_FUNCTION_38();
  v35 = v3;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v2 + 16))
  {
LABEL_29:

    *v1 = v6;
    return;
  }

  v34 = v2;
  v7 = 0;
  v8 = v2;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_30();
  if (!v4)
  {
LABEL_4:
    v10 = v7;
    while (1)
    {
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v1)
      {
        break;
      }

      ++v10;
      if (*(v8 + 8 * v7))
      {
        OUTLINED_FUNCTION_12_0();
        v4 = v12 & v11;
        goto LABEL_9;
      }
    }

    if (v35)
    {
      v28 = *(v2 + 32);
      OUTLINED_FUNCTION_15_1();
      if (v30 != v31)
      {
        OUTLINED_FUNCTION_18_0(v29);
      }

      else
      {
        v32 = OUTLINED_FUNCTION_14_1();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v32, v33, v8);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29();
LABEL_9:
    OUTLINED_FUNCTION_28(v9);
    v15 = *(v14 + 8 * v13);
    if ((v35 & 1) == 0)
    {

      v16 = v15;
    }

    v17 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v18 = Hasher._finalize()();
    OUTLINED_FUNCTION_2_0(v18);
    v20 = *(v5 + 8 * v19);
    OUTLINED_FUNCTION_32();
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_21:
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_13_1(v25);
    *(v27 + 8 * v26) = v15;
    OUTLINED_FUNCTION_19_1();
    v2 = v34;
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v21)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    OUTLINED_FUNCTION_39(v22);
    if (!v21)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1);
}

{
  OUTLINED_FUNCTION_17_1(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMd, &_ss18_DictionaryStorageCySS18SiriSuggestionsKit0cD0O20DisplayRepresentable_pGMR);
  OUTLINED_FUNCTION_38();
  v32 = v3;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v2 + 16))
  {
LABEL_30:

    *v1 = v6;
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_30();
  if (!v4)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v2 + 8 * v7))
      {
        OUTLINED_FUNCTION_12_0();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v32)
    {
      v26 = *(v2 + 32);
      OUTLINED_FUNCTION_15_1();
      if (v28 != v29)
      {
        OUTLINED_FUNCTION_18_0(v27);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_14_1();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v30, v31, v2);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29();
LABEL_9:
    OUTLINED_FUNCTION_28(v8);
    v14 = (v13 + 40 * v12);
    if (v32)
    {
      outlined init with take of SiriSuggestions.DisplayRepresentable(v14, v33);
    }

    else
    {
      outlined init with copy of LinkClient(v14, v33);
    }

    v15 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v16 = Hasher._finalize()();
    OUTLINED_FUNCTION_2_0(v16);
    v18 = *(v5 + 8 * v17);
    OUTLINED_FUNCTION_32();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_22:
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_13_1(v23);
    outlined init with take of SiriSuggestions.DisplayRepresentable(v33, v25 + 40 * v24);
    OUTLINED_FUNCTION_19_1();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_39(v20);
    if (!v19)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

{
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1);
}

{
  OUTLINED_FUNCTION_16_1(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_37();
  v35 = v2;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v4 + 16))
  {
LABEL_29:

    *v1 = v7;
    return;
  }

  v34 = v4;
  v8 = 0;
  v9 = v4;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_44();
  if (!v2)
  {
LABEL_4:
    v11 = v8;
    while (1)
    {
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v8 >= v1)
      {
        break;
      }

      ++v11;
      if (*(v9 + 8 * v8))
      {
        OUTLINED_FUNCTION_12_0();
        v2 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (v35)
    {
      v28 = *(v4 + 32);
      OUTLINED_FUNCTION_15_1();
      if (v30 != v31)
      {
        OUTLINED_FUNCTION_18_0(v29);
      }

      else
      {
        v32 = OUTLINED_FUNCTION_14_1();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v32, v33, v9);
      }

      *(v4 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_27();
LABEL_9:
    OUTLINED_FUNCTION_43(v10);
    v16 = *(v15 + 8 * v14);
    if ((v35 & 1) == 0)
    {
    }

    v17 = *(v7 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v18 = Hasher._finalize()();
    OUTLINED_FUNCTION_2_0(v18);
    v20 = *(v3 + 8 * v19);
    OUTLINED_FUNCTION_32();
    if (v21)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_21:
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_34(v25);
    *(v27 + 8 * v26) = v16;
    OUTLINED_FUNCTION_19_1();
    v4 = v34;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v21)
    {
      if (v23)
      {
        break;
      }
    }

    if (v22 == v24)
    {
      v22 = 0;
    }

    if (*(v3 + 8 * v22) != -1)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

{
  OUTLINED_FUNCTION_17_1(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  OUTLINED_FUNCTION_38();
  v32 = v3;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  if (!*(v2 + 16))
  {
LABEL_30:

    *v1 = v6;
    return;
  }

  v7 = 0;
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_30();
  if (!v4)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v1)
      {
        break;
      }

      ++v9;
      if (*(v2 + 8 * v7))
      {
        OUTLINED_FUNCTION_12_0();
        v4 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v32)
    {
      v26 = *(v2 + 32);
      OUTLINED_FUNCTION_15_1();
      if (v28 != v29)
      {
        OUTLINED_FUNCTION_18_0(v27);
      }

      else
      {
        v30 = OUTLINED_FUNCTION_14_1();
        specialized UnsafeMutablePointer.assign(repeating:count:)(v30, v31, v2);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29();
LABEL_9:
    OUTLINED_FUNCTION_28(v8);
    v14 = (v13 + 32 * v12);
    if (v32)
    {
      outlined init with take of Any(v14, v33);
    }

    else
    {
      outlined init with copy of Any(v14, v33);
    }

    v15 = *(v6 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v16 = Hasher._finalize()();
    OUTLINED_FUNCTION_2_0(v16);
    v18 = *(v5 + 8 * v17);
    OUTLINED_FUNCTION_32();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_22:
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_13_1(v23);
    outlined init with take of Any(v33, (v25 + 32 * v24));
    OUTLINED_FUNCTION_19_1();
    if (!v4)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v19)
    {
      if (v21)
      {
        break;
      }
    }

    if (v20 == v22)
    {
      v20 = 0;
    }

    OUTLINED_FUNCTION_39(v20);
    if (!v19)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin15ActionParameterVGMd, &_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin15ActionParameterVGMR);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v8;
    return result;
  }

  v40 = v3;
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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_35;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v39 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = (*(v5 + 56) + 48 * v19);
    if (v41)
    {
      v24 = *v23;
      v25 = v23[2];
      v43 = v23[1];
      v44 = v25;
      v42 = v24;
    }

    else
    {
      outlined init with copy of ActionParameter(v23, &v42);
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
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v8 + 48) + 16 * v30);
    *v35 = v21;
    v35[1] = v22;
    v36 = (*(v8 + 56) + 48 * v30);
    v37 = v42;
    v38 = v44;
    v36[1] = v43;
    v36[2] = v38;
    *v36 = v37;
    ++*(v8 + 16);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMd, &_ss18_DictionaryStorageCySS25SiriLinkSuggestionsPlugin0D23SuggestedActionsRequestVGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v5 + 56) + 24 * v19;
    v24 = *(v23 + 8);
    v42 = *v23;
    v40 = *(v23 + 17);
    v41 = *(v23 + 16);
    if ((v39 & 1) == 0)
    {
    }

    v25 = *(v8 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    v35 = *(v8 + 56) + 24 * v29;
    *v35 = v42;
    *(v35 + 8) = v24;
    *(v35 + 16) = v41;
    *(v35 + 17) = v40;
    ++*(v8 + 16);
    v5 = v38;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo35LNSuggestedActionDialogParameterKeyaSSGMd, &_ss18_DictionaryStorageCySo35LNSuggestedActionDialogParameterKeyaSSGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

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
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v36 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v40 = (v13 - 1) & v13;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = *(v5 + 56);
    v21 = *(*(v5 + 48) + 8 * v19);
    v22 = (v20 + 16 * v19);
    v23 = v22[1];
    v41 = *v22;
    if ((v39 & 1) == 0)
    {
      v24 = v21;
    }

    v25 = *(v8 + 40);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v26 = Hasher._finalize()();

    v27 = -1 << *(v8 + 32);
    v28 = v26 & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
    {
      break;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    *(*(v8 + 48) + 8 * v30) = v21;
    v35 = (*(v8 + 56) + 16 * v30);
    v13 = v40;
    *v35 = v41;
    v35[1] = v23;
    ++*(v8 + 16);
    v5 = v38;
    if (!v40)
    {
      goto LABEL_9;
    }
  }

  v31 = 0;
  v32 = (63 - v27) >> 6;
  while (++v29 != v32 || (v31 & 1) == 0)
  {
    v33 = v29 == v32;
    if (v29 == v32)
    {
      v29 = 0;
    }

    v31 |= v33;
    v34 = *(v15 + 8 * v29);
    if (v34 != -1)
    {
      v30 = __clz(__rbit64(~v34)) + (v29 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v58 = type metadata accessor for TypedValue();
  v6 = OUTLINED_FUNCTION_14_0(v58);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v57 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v13 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS7ToolKit10TypedValueOGMd, &_ss18_DictionaryStorageCySS7ToolKit10TypedValueOGMR);
  v55 = a2;
  v14 = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = v14;
  if (!*(v12 + 16))
  {
LABEL_35:

LABEL_36:
    *v3 = v15;
    return;
  }

  v51 = v2;
  v16 = 0;
  v17 = (v12 + 64);
  v18 = 1 << *(v12 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v12 + 64);
  v21 = (v18 + 63) >> 6;
  v52 = (v8 + 16);
  v53 = v12;
  v54 = v8;
  v56 = (v8 + 32);
  v22 = v14 + 64;
  if (!v20)
  {
LABEL_9:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      ++v24;
      if (v17[v16])
      {
        OUTLINED_FUNCTION_12_0();
        v20 = v26 & v25;
        goto LABEL_14;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v51;
      goto LABEL_36;
    }

    v44 = *(v12 + 32);
    OUTLINED_FUNCTION_15_1();
    v3 = v51;
    if (v46 != v47)
    {
      *v17 = -1 << v45;
    }

    else
    {
      v48 = OUTLINED_FUNCTION_14_1();
      specialized UnsafeMutablePointer.assign(repeating:count:)(v48, v49, v17);
    }

    *(v12 + 16) = 0;
    goto LABEL_35;
  }

  while (1)
  {
    OUTLINED_FUNCTION_27();
LABEL_14:
    v27 = v23 | (v16 << 6);
    v28 = *(v12 + 56);
    v29 = (*(v12 + 48) + 16 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = *(v54 + 72);
    v33 = v28 + v32 * v27;
    if (v55)
    {
      (*v56)(v57, v33, v58);
    }

    else
    {
      (*v52)(v57, v33, v58);
    }

    v34 = *(v15 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();
    v35 = *(v22 + 8 * ((Hasher._finalize()() & ~(-1 << *(v15 + 32))) >> 6));
    OUTLINED_FUNCTION_32();
    if (v36)
    {
      break;
    }

    OUTLINED_FUNCTION_6_1();
LABEL_27:
    OUTLINED_FUNCTION_3_1();
    *(v22 + v40) |= v41;
    v43 = (*(v15 + 48) + 16 * v42);
    *v43 = v31;
    v43[1] = v30;
    (*v56)((*(v15 + 56) + v32 * v42), v57, v58);
    ++*(v15 + 16);
    v12 = v53;
    if (!v20)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_5_1();
  while (1)
  {
    OUTLINED_FUNCTION_33();
    if (v36)
    {
      if (v38)
      {
        break;
      }
    }

    if (v37 == v39)
    {
      v37 = 0;
    }

    if (*(v22 + 8 * v37) != -1)
    {
      OUTLINED_FUNCTION_4_1();
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_3FC20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}